BOOL _s17SiriAudioInternal0C14SignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_266266988();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v43 = off_280069B00;
  v10 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, static Logger.default);
  swift_beginAccess();
  v40 = v4[2];
  v40(v9, v11, v3);
  v12 = sub_266266968();
  v13 = sub_266266D78();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_266219000, v12, v13, "InternalSignalsManager#doesIntent#have (lock aquired)", v14, 2u);
    MEMORY[0x266780880](v14, -1, -1);
  }

  v15 = v4[1];
  v45 = v4 + 1;
  v46 = v3;
  v41 = v15;
  v15(v9, v3);
  v16 = _s17SiriAudioInternal0C14SignalsManagerC08internalD03forSaySSGSo8INIntentC_tFZ_0();
  v17 = v16;
  v18 = *(a2 + 16);
  v42 = a2;
  v19 = (a2 + 40);
  v20 = v18 + 1;
  do
  {
    if (!--v20)
    {
      break;
    }

    v21 = v19 + 2;
    v22 = *v19;
    v47[0] = *(v19 - 1);
    v47[1] = v22;
    MEMORY[0x28223BE20](v16);
    *(&v39 - 2) = v47;

    v23 = sub_266248E28(sub_26622F998, (&v39 - 4), v17);

    v19 = v21;
  }

  while ((v23 & 1) == 0);

  v24 = v44;
  v25 = v46;
  v40(v44, v11, v46);
  v26 = v42;

  v27 = sub_266266968();
  v28 = sub_266266D78();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v47[0] = v30;
    *v29 = 136315394;
    v31 = MEMORY[0x26677FD90](v26, MEMORY[0x277D837D0]);
    v33 = sub_26621EAF0(v31, v32, v47);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    if (v20)
    {
      v34 = 0;
    }

    else
    {
      v34 = 7630702;
    }

    if (v20)
    {
      v35 = 0xE000000000000000;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    v36 = sub_26621EAF0(v34, v35, v47);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_266219000, v27, v28, "InternalSignalsManager#doesIntent signals: %s %s present in intent. (unlock)", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266780880](v30, -1, -1);
    MEMORY[0x266780880](v29, -1, -1);
  }

  v41(v24, v25);
  v37 = v43[2];

  sub_266265E88();

  return v20 != 0;
}

unint64_t sub_26624B1DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_266266AD8();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_266266B68();
}

uint64_t sub_26624B28C(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v47 = a1;
  v48 = a3;
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v46 = a2;
  v49 = off_280069B00;
  v14 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  v16 = v5[2];
  v16(v13, v15, v4);
  v17 = sub_266266968();
  v18 = sub_266266D78();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v11;
    v20 = v5;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_266219000, v17, v18, "InternalSignalsManager#add#fromAddMediaIntent (lock aquired)", v21, 2u);
    v22 = v21;
    v5 = v20;
    v11 = v19;
    MEMORY[0x266780880](v22, -1, -1);
  }

  v23 = v5[1];
  v23(v13, v4);
  v24 = [v48 backingStore];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v48 = v23;
    v27 = [v25 privateAddMediaIntentData];
    if (!v27)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277CD4378]) init];
      [v26 setPrivateAddMediaIntentData_];
      v27 = v28;
    }

    v29 = [v26 privateAddMediaIntentData];
    v30 = v46;
    if (v29)
    {
      v31 = v29;
      v32 = sub_266266A48();
      [v31 addInternalSignal_];
    }

    v16(v11, v15, v4);

    v33 = sub_266266968();
    v34 = sub_266266D78();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_26621EAF0(v47, v30, &v50);
      _os_log_impl(&dword_266219000, v33, v34, "InternalSignalsManager#add#fromAddMediaIntent added %s to addMediaIntent. (unlock)", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266780880](v36, -1, -1);
      MEMORY[0x266780880](v35, -1, -1);
    }

    v48(v11, v4);
    v42 = v49[2];

    sub_266265E88();
  }

  else
  {

    v37 = v45;
    v16(v45, v15, v4);
    v38 = sub_266266968();
    v39 = sub_266266D68();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266219000, v38, v39, "InternalSignalsManager#add#fromAddMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266780880](v40, -1, -1);
    }

    v23(v37, v4);
    v41 = v49[2];

    sub_266265E88();
  }
}

uint64_t sub_26624B7EC(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v47 = a1;
  v48 = a3;
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v46 = a2;
  v49 = off_280069B00;
  v14 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  v16 = v5[2];
  v16(v13, v15, v4);
  v17 = sub_266266968();
  v18 = sub_266266D78();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v11;
    v20 = v5;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_266219000, v17, v18, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent (lock aquired)", v21, 2u);
    v22 = v21;
    v5 = v20;
    v11 = v19;
    MEMORY[0x266780880](v22, -1, -1);
  }

  v23 = v5[1];
  v23(v13, v4);
  v24 = [v48 backingStore];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v48 = v23;
    v27 = [v25 privateUpdateMediaAffinityIntentData];
    if (!v27)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277CD43A0]) init];
      [v26 setPrivateUpdateMediaAffinityIntentData_];
      v27 = v28;
    }

    v29 = [v26 privateUpdateMediaAffinityIntentData];
    v30 = v46;
    if (v29)
    {
      v31 = v29;
      v32 = sub_266266A48();
      [v31 addInternalSignal_];
    }

    v16(v11, v15, v4);

    v33 = sub_266266968();
    v34 = sub_266266D78();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_26621EAF0(v47, v30, &v50);
      _os_log_impl(&dword_266219000, v33, v34, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent added %s to updateMediaIntent. (unlock)", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266780880](v36, -1, -1);
      MEMORY[0x266780880](v35, -1, -1);
    }

    v48(v11, v4);
    v42 = v49[2];

    sub_266265E88();
  }

  else
  {

    v37 = v45;
    v16(v45, v15, v4);
    v38 = sub_266266968();
    v39 = sub_266266D68();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266219000, v38, v39, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent Unexpected backing store error while adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266780880](v40, -1, -1);
    }

    v23(v37, v4);
    v41 = v49[2];

    sub_266265E88();
  }
}

uint64_t sub_26624BD4C(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  v47 = a1;
  v48 = a3;
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v46 = a2;
  v49 = off_280069B00;
  v14 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  v16 = v5[2];
  v16(v13, v15, v4);
  v17 = sub_266266968();
  v18 = sub_266266D78();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v11;
    v20 = v5;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_266219000, v17, v18, "InternalSignalsManager#add#fromSearchMediaIntent (lock aquired)", v21, 2u);
    v22 = v21;
    v5 = v20;
    v11 = v19;
    MEMORY[0x266780880](v22, -1, -1);
  }

  v23 = v5[1];
  v23(v13, v4);
  v24 = [v48 backingStore];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v48 = v23;
    v27 = [v25 privateSearchForMediaIntentData];
    if (!v27)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277CD4398]) init];
      [v26 setPrivateSearchForMediaIntentData_];
      v27 = v28;
    }

    v29 = [v26 privateSearchForMediaIntentData];
    v30 = v46;
    if (v29)
    {
      v31 = v29;
      v32 = sub_266266A48();
      [v31 addInternalSignal_];
    }

    v16(v11, v15, v4);

    v33 = sub_266266968();
    v34 = sub_266266D78();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_26621EAF0(v47, v30, &v50);
      _os_log_impl(&dword_266219000, v33, v34, "InternalSignalsManager#add#fromSearchMediaIntent added %s to searchMediaIntent. (unlock)", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266780880](v36, -1, -1);
      MEMORY[0x266780880](v35, -1, -1);
    }

    v48(v11, v4);
    v42 = v49[2];

    sub_266265E88();
  }

  else
  {

    v37 = v45;
    v16(v45, v15, v4);
    v38 = sub_266266968();
    v39 = sub_266266D68();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266219000, v38, v39, "InternalSignalsManager#add#fromSearchMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266780880](v40, -1, -1);
    }

    v23(v37, v4);
    v41 = v49[2];

    sub_266265E88();
  }
}

uint64_t sub_26624C2AC(uint64_t a1, unint64_t a2, void *a3)
{
  v62 = a1;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v61 = off_280069B00;
  v15 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v59 = v6[2];
  v59(v14, v16, v5);
  v17 = sub_266266968();
  v18 = sub_266266D78();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = (v6 + 2);
    v20 = a2;
    v21 = v10;
    v22 = v5;
    v23 = v16;
    v24 = v6;
    v25 = a3;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_266219000, v17, v18, "InternalSignalsManager#remove#fromPlayMediaIntent (lock aquired)", v19, 2u);
    v27 = v26;
    a3 = v25;
    v6 = v24;
    v16 = v23;
    v5 = v22;
    v10 = v21;
    a2 = v20;
    MEMORY[0x266780880](v27, -1, -1);
  }

  v60 = v6[1];
  v60(v14, v5);
  v28 = [a3 backingStore];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v57 = v29;
    v30 = [v29 privatePlayMediaIntentData];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 internalSignals];

      if (v32)
      {
        v33 = sub_266266BB8();

        v34 = *(v33 + 16);
        v35 = v62;
        if (v34)
        {
          v36 = 0;
          v37 = (v33 + 40);
          while (*(v37 - 1) != v35 || *v37 != a2)
          {
            v39 = sub_2662670D8();
            v35 = v62;
            if (v39)
            {
              break;
            }

            ++v36;
            v37 += 2;
            if (v34 == v36)
            {
              goto LABEL_18;
            }
          }

          v44 = [v57 privatePlayMediaIntentData];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 internalSignals];
            if (v46)
            {
              v47 = v46;
              v48 = sub_266266BB8();

              v63 = v48;
              sub_26624AAC4(v36);

              if (v63)
              {
                v49 = sub_266266B98();
              }

              else
              {
                v49 = 0;
              }

              [v45 setInternalSignals_];
            }

            else
            {
              [v45 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v50 = v58;
    v59(v58, v16, v5);

    v51 = sub_266266968();
    v52 = sub_266266D78();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_26621EAF0(v62, a2, &v63);
      _os_log_impl(&dword_266219000, v51, v52, "InternalSignalsManager#remove#fromPlayMediaIntent removed %s from playMediaIntent. (unlock)", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266780880](v54, -1, -1);
      MEMORY[0x266780880](v53, -1, -1);
    }

    v60(v50, v5);
    v55 = v61[2];

    sub_266265E88();
  }

  else
  {

    v59(v10, v16, v5);
    v40 = sub_266266968();
    v41 = sub_266266D68();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_266219000, v40, v41, "InternalSignalsManager#remove#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v42, 2u);
      MEMORY[0x266780880](v42, -1, -1);
    }

    v60(v10, v5);
    v43 = v61[2];

    sub_266265E88();
  }
}

uint64_t sub_26624C8E0(uint64_t a1, unint64_t a2, void *a3)
{
  v62 = a1;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v61 = off_280069B00;
  v15 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v59 = v6[2];
  v59(v14, v16, v5);
  v17 = sub_266266968();
  v18 = sub_266266D78();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = (v6 + 2);
    v20 = a2;
    v21 = v10;
    v22 = v5;
    v23 = v16;
    v24 = v6;
    v25 = a3;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_266219000, v17, v18, "InternalSignalsManager#remove#fromAddMediaIntent (lock aquired)", v19, 2u);
    v27 = v26;
    a3 = v25;
    v6 = v24;
    v16 = v23;
    v5 = v22;
    v10 = v21;
    a2 = v20;
    MEMORY[0x266780880](v27, -1, -1);
  }

  v60 = v6[1];
  v60(v14, v5);
  v28 = [a3 backingStore];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v57 = v29;
    v30 = [v29 privateAddMediaIntentData];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 internalSignals];

      if (v32)
      {
        v33 = sub_266266BB8();

        v34 = *(v33 + 16);
        v35 = v62;
        if (v34)
        {
          v36 = 0;
          v37 = (v33 + 40);
          while (*(v37 - 1) != v35 || *v37 != a2)
          {
            v39 = sub_2662670D8();
            v35 = v62;
            if (v39)
            {
              break;
            }

            ++v36;
            v37 += 2;
            if (v34 == v36)
            {
              goto LABEL_18;
            }
          }

          v44 = [v57 privateAddMediaIntentData];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 internalSignals];
            if (v46)
            {
              v47 = v46;
              v48 = sub_266266BB8();

              v63 = v48;
              sub_26624AAC4(v36);

              if (v63)
              {
                v49 = sub_266266B98();
              }

              else
              {
                v49 = 0;
              }

              [v45 setInternalSignals_];
            }

            else
            {
              [v45 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v50 = v58;
    v59(v58, v16, v5);

    v51 = sub_266266968();
    v52 = sub_266266D78();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_26621EAF0(v62, a2, &v63);
      _os_log_impl(&dword_266219000, v51, v52, "InternalSignalsManager#remove#fromAddMediaIntent removed %s from addMediaIntent. (unlock)", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266780880](v54, -1, -1);
      MEMORY[0x266780880](v53, -1, -1);
    }

    v60(v50, v5);
    v55 = v61[2];

    sub_266265E88();
  }

  else
  {

    v59(v10, v16, v5);
    v40 = sub_266266968();
    v41 = sub_266266D68();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_266219000, v40, v41, "InternalSignalsManager#remove#fromAddMediaIntent Unexpected backing store error adding internal signal. (unlock)", v42, 2u);
      MEMORY[0x266780880](v42, -1, -1);
    }

    v60(v10, v5);
    v43 = v61[2];

    sub_266265E88();
  }
}

uint64_t sub_26624CF14(uint64_t a1, unint64_t a2, void *a3)
{
  v62 = a1;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v61 = off_280069B00;
  v15 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v59 = v6[2];
  v59(v14, v16, v5);
  v17 = sub_266266968();
  v18 = sub_266266D78();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = (v6 + 2);
    v20 = a2;
    v21 = v10;
    v22 = v5;
    v23 = v16;
    v24 = v6;
    v25 = a3;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_266219000, v17, v18, "InternalSignalsManager#remove#fromUpdateMediaIntent (lock aquired)", v19, 2u);
    v27 = v26;
    a3 = v25;
    v6 = v24;
    v16 = v23;
    v5 = v22;
    v10 = v21;
    a2 = v20;
    MEMORY[0x266780880](v27, -1, -1);
  }

  v60 = v6[1];
  v60(v14, v5);
  v28 = [a3 backingStore];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v57 = v29;
    v30 = [v29 privateUpdateMediaAffinityIntentData];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 internalSignals];

      if (v32)
      {
        v33 = sub_266266BB8();

        v34 = *(v33 + 16);
        v35 = v62;
        if (v34)
        {
          v36 = 0;
          v37 = (v33 + 40);
          while (*(v37 - 1) != v35 || *v37 != a2)
          {
            v39 = sub_2662670D8();
            v35 = v62;
            if (v39)
            {
              break;
            }

            ++v36;
            v37 += 2;
            if (v34 == v36)
            {
              goto LABEL_18;
            }
          }

          v44 = [v57 privateUpdateMediaAffinityIntentData];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 internalSignals];
            if (v46)
            {
              v47 = v46;
              v48 = sub_266266BB8();

              v63 = v48;
              sub_26624AAC4(v36);

              if (v63)
              {
                v49 = sub_266266B98();
              }

              else
              {
                v49 = 0;
              }

              [v45 setInternalSignals_];
            }

            else
            {
              [v45 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v50 = v58;
    v59(v58, v16, v5);

    v51 = sub_266266968();
    v52 = sub_266266D78();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_26621EAF0(v62, a2, &v63);
      _os_log_impl(&dword_266219000, v51, v52, "InternalSignalsManager#remove#fromUpdateMediaIntent removed %s from updateMediaIntent. (unlock)", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266780880](v54, -1, -1);
      MEMORY[0x266780880](v53, -1, -1);
    }

    v60(v50, v5);
    v55 = v61[2];

    sub_266265E88();
  }

  else
  {

    v59(v10, v16, v5);
    v40 = sub_266266968();
    v41 = sub_266266D68();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_266219000, v40, v41, "InternalSignalsManager#remove#fromUpdateMediaIntent Unexpected backing store error adding internal signal. (unlock)", v42, 2u);
      MEMORY[0x266780880](v42, -1, -1);
    }

    v60(v10, v5);
    v43 = v61[2];

    sub_266265E88();
  }
}

uint64_t sub_26624D548(uint64_t a1, unint64_t a2, void *a3)
{
  v62 = a1;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v61 = off_280069B00;
  v15 = *(off_280069B00 + 2);

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v59 = v6[2];
  v59(v14, v16, v5);
  v17 = sub_266266968();
  v18 = sub_266266D78();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v60 = (v6 + 2);
    v20 = a2;
    v21 = v10;
    v22 = v5;
    v23 = v16;
    v24 = v6;
    v25 = a3;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_266219000, v17, v18, "InternalSignalsManager#remove#fromSearchMediaIntent (lock aquired)", v19, 2u);
    v27 = v26;
    a3 = v25;
    v6 = v24;
    v16 = v23;
    v5 = v22;
    v10 = v21;
    a2 = v20;
    MEMORY[0x266780880](v27, -1, -1);
  }

  v60 = v6[1];
  v60(v14, v5);
  v28 = [a3 backingStore];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v57 = v29;
    v30 = [v29 privateSearchForMediaIntentData];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 internalSignals];

      if (v32)
      {
        v33 = sub_266266BB8();

        v34 = *(v33 + 16);
        v35 = v62;
        if (v34)
        {
          v36 = 0;
          v37 = (v33 + 40);
          while (*(v37 - 1) != v35 || *v37 != a2)
          {
            v39 = sub_2662670D8();
            v35 = v62;
            if (v39)
            {
              break;
            }

            ++v36;
            v37 += 2;
            if (v34 == v36)
            {
              goto LABEL_18;
            }
          }

          v44 = [v57 privateSearchForMediaIntentData];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 internalSignals];
            if (v46)
            {
              v47 = v46;
              v48 = sub_266266BB8();

              v63 = v48;
              sub_26624AAC4(v36);

              if (v63)
              {
                v49 = sub_266266B98();
              }

              else
              {
                v49 = 0;
              }

              [v45 setInternalSignals_];
            }

            else
            {
              [v45 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v50 = v58;
    v59(v58, v16, v5);

    v51 = sub_266266968();
    v52 = sub_266266D78();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_26621EAF0(v62, a2, &v63);
      _os_log_impl(&dword_266219000, v51, v52, "InternalSignalsManager#remove#fromSearchMediaIntent removed %s from searchMediaIntent. (unlock)", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266780880](v54, -1, -1);
      MEMORY[0x266780880](v53, -1, -1);
    }

    v60(v50, v5);
    v55 = v61[2];

    sub_266265E88();
  }

  else
  {

    v59(v10, v16, v5);
    v40 = sub_266266968();
    v41 = sub_266266D68();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_266219000, v40, v41, "InternalSignalsManager#remove#fromSearchMediaIntent Unexpected backing store error adding internal signal. (unlock)", v42, 2u);
      MEMORY[0x266780880](v42, -1, -1);
    }

    v60(v10, v5);
    v43 = v61[2];

    sub_266265E88();
  }
}

uint64_t *logObject.unsafeMutableAddressor()
{
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  return &logObject;
}

uint64_t sub_26624DBF0()
{
  sub_26624DC58();
  result = sub_266266FA8();
  logObject = result;
  return result;
}

unint64_t sub_26624DC58()
{
  result = qword_280069B08;
  if (!qword_280069B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280069B08);
  }

  return result;
}

uint64_t sub_26624DCA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x4E74736163646F70;
  v5 = 0xEB00000000656D61;
  v6 = 0xEC000000656D614ELL;
  if (a1 != 4)
  {
    v6 = 0xEC00000065707954;
  }

  if (a1 != 3)
  {
    v4 = 0x7473696C79616C70;
    v5 = v6;
  }

  v7 = 0x614E747369747261;
  v8 = 0xEA0000000000656DLL;
  if (a1 != 1)
  {
    v7 = 0x6D614E6F69646172;
    v8 = 0xE900000000000065;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x656D614E676E6F73;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEB00000000656D61;
      if (v9 != 0x4E74736163646F70)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 1701667150;
      }

      else
      {
        v12 = 1701869908;
      }

      v11 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v9 != 0x7473696C79616C70)
      {
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xEA0000000000656DLL;
      if (v9 != 0x614E747369747261)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE900000000000065;
      if (v9 != 0x6D614E6F69646172)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x656D614E676E6F73)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
LABEL_34:
    v13 = sub_2662670D8();
    goto LABEL_35;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_26624DEB0()
{
  sub_266267158();
  sub_266266AB8();

  return sub_266267178();
}

uint64_t sub_26624DFD8()
{
  sub_266267158();
  sub_266266AB8();

  return sub_266267178();
}

unint64_t sub_26624E0FC(char a1)
{
  result = 0x7974696E69666661;
  switch(a1)
  {
    case 1:
      result = 0x6E69666661736964;
      break;
    case 2:
      result = 2036427888;
      break;
    case 3:
      result = 0x646F504179616C70;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6973754D79616C70;
      break;
    case 6:
      result = 0x5979425879616C70;
      break;
    case 7:
      result = 0x6974724179616C70;
      break;
    case 8:
      result = 0x6964615279616C70;
      break;
    case 9:
      result = 0x79616C5079616C70;
      break;
    case 10:
      result = 0x4E65685479616C70;
      break;
    case 11:
      result = 0x6572616873;
      break;
    case 12:
      result = 0x656C6666756873;
      break;
    case 13:
      result = 0x676E6F5374616877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26624E2DC()
{
  v1 = *v0;
  sub_266267158();
  sub_26624E0FC(v1);
  sub_266266AB8();

  return sub_266267178();
}

uint64_t sub_26624E340()
{
  sub_26624E0FC(*v0);
  sub_266266AB8();
}

uint64_t sub_26624E394()
{
  v1 = *v0;
  sub_266267158();
  sub_26624E0FC(v1);
  sub_266266AB8();

  return sub_266267178();
}

uint64_t sub_26624E3F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266250B14();
  *a2 = result;
  return result;
}

unint64_t sub_26624E424@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26624E0FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26624E450(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_26624E0FC(*a1);
  v5 = v4;
  if (v3 == sub_26624E0FC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2662670D8();
  }

  return v8 & 1;
}

uint64_t sub_26624E4E0()
{
  *v0;
  *v0;
  *v0;
  sub_266266AB8();
}

uint64_t sub_26624E5F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266250B60();
  *a2 = result;
  return result;
}

void sub_26624E628(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D614E676E6F73;
  v5 = 0xEB00000000656D61;
  v6 = 0x4E74736163646F70;
  v7 = 0xEC000000656D614ELL;
  if (v2 != 4)
  {
    v7 = 0xEC00000065707954;
  }

  if (v2 != 3)
  {
    v6 = 0x7473696C79616C70;
    v5 = v7;
  }

  v8 = 0xEA0000000000656DLL;
  v9 = 0x614E747369747261;
  if (v2 != 1)
  {
    v9 = 0x6D614E6F69646172;
    v8 = 0xE900000000000065;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_26624E714()
{
  v0 = sub_2662667A8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800694B0 != -1)
  {
    swift_once();
  }

  v5 = qword_2800694B8;
  v34 = qword_28006A4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  v32 = 0x8000000266269680;
  v33 = 0x80000002662696A0;
  v31 = qword_28006A4C8;
  v6 = v1[13];
  v6(v4, *MEMORY[0x277D60B98], v0);

  v29 = sub_266235BCC(0, v4);
  v8 = v1[1];
  v7 = v1 + 1;
  v8(v4, v0);
  v30 = 0x8000000266269700;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B18, &qword_266268808);
  v9 = *(sub_266266808() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v35 = xmmword_266267DB0;
  *(v12 + 16) = xmmword_266267DB0;
  sub_266266828();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B20, &qword_266268810);
  v13 = v7[8];
  v14 = (*(v7 + 72) + 32) & ~*(v7 + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = v35;
  v16 = *MEMORY[0x277D607E8];
  v17 = sub_266266728();
  (*(*(v17 - 8) + 104))(v15 + v14, v16, v17);
  v6((v15 + v14), *MEMORY[0x277D60BA0], v0);
  qword_28006A5F0 = 0;
  unk_28006A5E0 = 0u;
  unk_28006A5D0 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B28, &qword_266268818);
  v18 = (type metadata accessor for SignalDefinition() - 8);
  v19 = *(*v18 + 72);
  v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v35;
  v22 = (v21 + v20);
  v23 = v18[7];
  *(v21 + v20 + v23) = v15;
  v24 = *MEMORY[0x277D61060];
  v25 = sub_266266838();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v22 + v23, v24, v25);
  (*(v26 + 56))(v22 + v23, 0, 1, v25);
  v27 = v22 + v18[8];
  *(v27 + 4) = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *v22 = v29;
  qword_28006A538 = 0xD000000000000019;
  qword_28006A540 = v32;
  unk_28006A548 = 0xD000000000000056;
  qword_28006A550 = v33;
  unk_28006A558 = v34;
  qword_28006A560 = v31;
  unk_28006A568 = v21;
  qword_28006A570 = 0x7974696E69666661;
  qword_28006A578 = 0xE800000000000000;
  unk_28006A580 = 0xD000000000000010;
  qword_28006A588 = v30;
  word_28006A590 = 256;
  qword_28006A598 = 0;
  unk_28006A5A0 = 0;
  qword_28006A5A8 = &unk_2877D9790;
  unk_28006A5B0 = v12;
  qword_28006A5B8 = v15;
  unk_28006A5C0 = sub_26624EC00;
  qword_28006A5C8 = 0;
  qword_28006A5F8 = MEMORY[0x277D84F90];
  unk_28006A600 = MEMORY[0x277D84F90];
}

uint64_t sub_26624EC00(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (v1 != 2 && (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *a1;
  if (v3 == 2 || (v3 & 1) == 0)
  {
    return a1[33];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26624EC38()
{
  if (qword_2800694B0 != -1)
  {
    swift_once();
  }

  v0 = qword_2800694B8;
  v25 = qword_28006A4C0;

  if (v0 != -1)
  {
    swift_once();
  }

  v24 = qword_28006A4C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B18, &qword_266268808);
  v1 = *(sub_266266808() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266267DB0;

  sub_266266828();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B20, &qword_266268810);
  v5 = sub_2662667A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_266267DB0;
  v10 = *MEMORY[0x277D607E8];
  v11 = sub_266266728();
  (*(*(v11 - 8) + 104))(v9 + v8, v10, v11);
  (*(v6 + 104))(v9 + v8, *MEMORY[0x277D60BA0], v5);
  qword_28006A6C0 = 0;
  *&algn_28006A6A0[16] = 0u;
  *algn_28006A6A0 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B28, &qword_266268818);
  v12 = (type metadata accessor for SignalDefinition() - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_266267DB0;
  v16 = (v15 + v14);
  v17 = v12[7];
  *(v15 + v14 + v17) = v9;
  v18 = *MEMORY[0x277D61060];
  v19 = sub_266266838();
  v20 = *(v19 - 8);
  (*(v20 + 104))(&v16[v17], v18, v19);
  (*(v20 + 56))(&v16[v17], 0, 1, v19);
  v21 = &v16[v12[8]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = MEMORY[0x277D84F90];
  *v16 = MEMORY[0x277D84F90];
  qword_28006A608 = 0xD00000000000001CLL;
  unk_28006A610 = 0x8000000266269720;
  qword_28006A618 = 0xD000000000000056;
  qword_28006A620 = 0x80000002662696A0;
  unk_28006A628 = v25;
  qword_28006A630 = v24;
  unk_28006A638 = v15;
  qword_28006A640 = 0x6E69666661736964;
  qword_28006A648 = 0xEB00000000797469;
  unk_28006A650 = 0xD000000000000010;
  qword_28006A658 = 0x8000000266269700;
  word_28006A660 = 257;
  qword_28006A668 = 0;
  unk_28006A670 = 0;
  qword_28006A678 = &unk_2877D97E8;
  unk_28006A680 = v4;
  qword_28006A688 = v9;
  unk_28006A690 = sub_266226A7C;
  qword_28006A698 = 0;
  qword_28006A6C8 = v22;
  unk_28006A6D0 = v22;
}

double sub_26624F0C4()
{
  v0 = sub_266266478();
  v74 = *(v0 - 8);
  v75 = v0;
  v1 = *(v74 + 64);
  MEMORY[0x28223BE20](v0);
  v73 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069980, &qword_266268820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = (&v67 - v5);
  v71 = sub_2662667A8();
  v69 = *(v71 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v68 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266266768();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  *&v85 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  if (qword_2800694B0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v18 = qword_2800694B8;
    v72 = qword_28006A4C0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = *(qword_28006A4C8 + 16);

    v84 = v19;
    if (!v19)
    {
      break;
    }

    v21 = 0;
    v82 = v9 + 16;
    LODWORD(v81) = *MEMORY[0x277D60988];
    v79 = (v9 + 32);
    v80 = v9 + 104;
    v86 = MEMORY[0x277D84F90];
    v77 = v17;
    v78 = v15;
    v83 = v20;
    v76 = v9 + 8;
    while (v21 < *(v20 + 16))
    {
      v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v23 = *(v9 + 72);
      (*(v9 + 16))(v17, v20 + v22 + v23 * v21, v8);
      (*(v9 + 104))(v15, v81, v8);
      sub_266250C1C(&qword_280069B30, MEMORY[0x277D609D0]);
      v24 = sub_266266A38();
      v25 = *(v9 + 8);
      v25(v15, v8);
      if (v24)
      {
        v25(v17, v8);
      }

      else
      {
        v26 = *v79;
        (*v79)(v85, v17, v8);
        v27 = v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_266261BE8(0, *(v27 + 16) + 1, 1);
          v27 = v87;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_266261BE8(v29 > 1, v30 + 1, 1);
          v27 = v87;
        }

        v86 = v27;
        *(v27 + 16) = v30 + 1;
        v26(v27 + v22 + v30 * v23, v85, v8);
        v17 = v77;
        v15 = v78;
      }

      ++v21;
      v20 = v83;
      if (v84 == v21)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v86 = MEMORY[0x277D84F90];
LABEL_16:

  v83 = 0x8000000266269740;
  v84 = 0x80000002662696A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B28, &qword_266268818);
  v31 = (type metadata accessor for SignalDefinition() - 8);
  v32 = *(*v31 + 72);
  v33 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
  v34 = swift_allocObject();
  v85 = xmmword_266267DB0;
  v82 = v34;
  *(v34 + 16) = xmmword_266267DB0;
  v35 = (v34 + v33);
  v37 = v69;
  v38 = *(v69 + 104);
  v39 = v68;
  LODWORD(v80) = *MEMORY[0x277D60B78];
  v36 = v80;
  v40 = v71;
  (v38)(v68, v80, v71);
  v79 = v38;
  v81 = sub_266235BCC(4, v39);
  v41 = *(v37 + 8);
  v37 += 8;
  v41(v39, v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B20, &qword_266268810);
  v77 = *(v37 + 64);
  v78 = v42;
  v43 = (*(v37 + 72) + 32) & ~*(v37 + 72);
  v44 = swift_allocObject();
  *(v44 + 16) = v85;
  (v38)(v44 + v43, v36, v40);
  v45 = v70;
  *v70 = v44;
  v46 = *MEMORY[0x277D61060];
  v47 = sub_266266838();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v45, v46, v47);
  (*(v48 + 56))(v45, 0, 1, v47);
  v49 = v35 + v31[8];
  *(v49 + 4) = 0;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  *v35 = v81;
  sub_266250BAC(v45, v35 + v31[7]);
  v81 = 0x8000000266268C20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B18, &qword_266268808);
  v50 = *(sub_266266808() - 8);
  v51 = *(v50 + 72);
  v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = v85;
  sub_266266828();
  v54 = v77;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_266268250;
  v56 = *MEMORY[0x277D607E8];
  v57 = sub_266266728();
  (*(*(v57 - 8) + 104))(v55 + v43, v56, v57);
  v58 = v79;
  (v79)(v55 + v43, *MEMORY[0x277D60BA0], v40);
  (v58)(&v54[v55 + v43], v80, v40);
  sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  *(&v88 + 1) = sub_266266748();
  v89 = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_1(&v87);
  sub_266266738();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B38, &qword_266268828);
  v59 = swift_allocObject();
  *(v59 + 16) = v85;
  v60 = v73;
  sub_266266458();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v62 = swift_allocObject();
  v63 = MEMORY[0x277D556E8];
  v64 = v75;
  v62[5] = v75;
  v62[6] = v63;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62 + 2);
  (*(v74 + 32))(boxed_opaque_existential_1, v60, v64);
  *(v59 + 56) = PartyMusicSubscriber;
  *(v59 + 64) = sub_266250C1C(&qword_280069B40, type metadata accessor for FirstPartyMusicSubscriber);
  *(v59 + 32) = v62;
  qword_28006A6D8 = 0xD000000000000021;
  unk_28006A6E0 = v83;
  qword_28006A6E8 = 0xD000000000000056;
  qword_28006A6F0 = v84;
  unk_28006A6F8 = v72;
  qword_28006A700 = v86;
  unk_28006A708 = v82;
  qword_28006A710 = 0xD000000000000010;
  unk_28006A718 = v81;
  qword_28006A720 = 0xD000000000000010;
  unk_28006A728 = 0x8000000266269700;
  word_28006A730 = 260;
  qword_28006A738 = 0;
  unk_28006A740 = 0;
  qword_28006A748 = &unk_2877D9820;
  unk_28006A750 = v53;
  result = *&v88;
  unk_28006A780 = v88;
  qword_28006A758 = v55;
  unk_28006A760 = sub_2662257D4;
  qword_28006A768 = 0;
  unk_28006A770 = v87;
  qword_28006A790 = v89;
  qword_28006A798 = MEMORY[0x277D84F90];
  unk_28006A7A0 = v59;
  return result;
}

uint64_t sub_26624FB30()
{
  v0 = sub_2662667A8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800694B0 != -1)
  {
    swift_once();
  }

  v5 = qword_28006A4C0;
  v6 = qword_2800694B8;

  if (v6 != -1)
  {
    swift_once();
  }

  v30 = 0x8000000266269790;
  v31 = 0x80000002662696A0;
  v7 = qword_28006A4C8;
  v8 = *MEMORY[0x277D60B98];
  v9 = v1[13];
  v9(v4, v8, v0);

  v27 = sub_266235BCC(5, v4);
  v11 = v1[1];
  v10 = v1 + 1;
  v11(v4, v0);
  v28 = 0x8000000266269700;
  v29 = 0x80000002662697B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B20, &qword_266268810);
  v12 = v10[8];
  v13 = (*(v10 + 72) + 32) & ~*(v10 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_266268250;
  v15 = v14 + v13;
  v9(v15, v8, v0);
  v9((v15 + v12), *MEMORY[0x277D60B80], v0);
  sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  *(&v33 + 1) = sub_266266748();
  v34 = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_266266738();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B28, &qword_266268818);
  v16 = (type metadata accessor for SignalDefinition() - 8);
  v17 = *(*v16 + 72);
  v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_266267DB0;
  v20 = (v19 + v18);
  v21 = v16[7];
  *(v19 + v18 + v21) = v14;
  v22 = *MEMORY[0x277D61060];
  v23 = sub_266266838();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v20 + v21, v22, v23);
  (*(v24 + 56))(v20 + v21, 0, 1, v23);
  v25 = v20 + v16[8];
  *(v25 + 4) = 0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *v20 = v27;
  qword_28006A7A8 = 0xD00000000000001ALL;
  qword_28006A7B0 = v30;
  unk_28006A7B8 = 0xD000000000000056;
  qword_28006A7C0 = v31;
  unk_28006A7C8 = v5;
  qword_28006A7D0 = v7;
  unk_28006A7D8 = v19;
  qword_28006A7E0 = 0x6973754D79616C70;
  qword_28006A7E8 = 0xE900000000000063;
  unk_28006A7F0 = 0xD000000000000010;
  qword_28006A7F8 = v28;
  word_28006A800 = 261;
  qword_28006A808 = 0xD000000000000011;
  unk_28006A810 = v29;
  qword_28006A818 = 0;
  unk_28006A820 = 0;
  unk_28006A850 = v33;
  qword_28006A828 = v14;
  unk_28006A830 = sub_2662257D4;
  qword_28006A838 = 0;
  unk_28006A840 = v32;
  qword_28006A860 = v34;
  unk_28006A868 = MEMORY[0x277D84F90];
  qword_28006A870 = MEMORY[0x277D84F90];
}

uint64_t sub_26624FFD8(void *a1)
{
  v2 = [a1 mediaItems];
  if (v2)
  {
    v3 = v2;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v4 = sub_266266BB8();

    v5 = v4 >> 62 ? sub_266267078() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v5)
    {
      return 0;
    }
  }

  v6 = [a1 mediaContainer];
  if (v6)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_2662500A8()
{
  v0 = sub_2662667A8();
  v45 = *(v0 - 8);
  v46 = v0;
  v1 = *(v45 + 64);
  MEMORY[0x28223BE20](v0);
  v44 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_266265BC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  if (qword_2800694B0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v10 = *(qword_28006A4C0 + 16);

    v12 = MEMORY[0x277D84F90];
    v53 = v10;
    if (!v10)
    {
      break;
    }

    v13 = 0;
    v50 = (v4 + 32);
    v51 = v4 + 16;
    v47 = (v4 + 8);
    v48 = v4;
    v49 = v3;
    v52 = v11;
    while (v13 < *(v11 + 16))
    {
      v56 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v57 = v12;
      v55 = *(v4 + 72);
      (*(v4 + 16))(v9, v11 + v56 + v55 * v13, v3);
      *&v58 = sub_266265BB8();
      *(&v58 + 1) = v14;
      MEMORY[0x28223BE20](v58);
      *(&v44 - 2) = &v58;
      v15 = v3;
      v16 = sub_266248E28(sub_26622F998, (&v44 - 4), &unk_2877D9870);
      swift_arrayDestroy();

      if (v16)
      {
        (*v47)(v9, v15);
        v12 = v57;
        v3 = v15;
      }

      else
      {
        v17 = *v50;
        (*v50)(v54, v9, v15);
        v12 = v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_266261C2C(0, *(v12 + 16) + 1, 1);
          v12 = v61;
        }

        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_266261C2C(v19 > 1, v20 + 1, 1);
          v12 = v61;
        }

        *(v12 + 16) = v20 + 1;
        v3 = v49;
        v17((v12 + v56 + v20 * v55), v54, v49);
        v4 = v48;
      }

      ++v13;
      v11 = v52;
      if (v53 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_13:
  v57 = v12;

  if (qword_2800694B8 != -1)
  {
    swift_once();
  }

  v55 = 0x8000000266269770;
  v56 = 0x80000002662696A0;
  v21 = qword_28006A4C8;
  v22 = *MEMORY[0x277D60B98];
  v24 = v44;
  v23 = v45;
  v25 = *(v45 + 104);
  v26 = v46;
  v25(v44, v22, v46);

  v27 = sub_266235BCC(10, v24);
  v28 = *(v23 + 8);
  v23 += 8;
  v28(v24, v26);
  v54 = 0x8000000266269700;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B20, &qword_266268810);
  v29 = *(v23 + 64);
  v30 = (*(v23 + 72) + 32) & ~*(v23 + 72);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_266268250;
  v32 = v31 + v30;
  v25(v32, v22, v26);
  v25((v32 + v29), *MEMORY[0x277D60B80], v26);
  sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  *(&v59 + 1) = sub_266266748();
  v60 = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_1(&v58);
  sub_266266738();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B28, &qword_266268818);
  v33 = (type metadata accessor for SignalDefinition() - 8);
  v34 = *(*v33 + 72);
  v35 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_266267DB0;
  v37 = (v36 + v35);
  v38 = v33[7];
  *(v37 + v38) = v31;
  v39 = *MEMORY[0x277D61060];
  v40 = sub_266266838();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v37 + v38, v39, v40);
  (*(v41 + 56))(v37 + v38, 0, 1, v40);
  v42 = v37 + v33[8];
  *(v42 + 4) = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *v37 = v27;
  qword_28006A878 = 0xD00000000000001CLL;
  unk_28006A880 = v55;
  qword_28006A888 = 0xD000000000000056;
  qword_28006A890 = v56;
  unk_28006A898 = v57;
  qword_28006A8A0 = v21;
  unk_28006A8A8 = v36;
  qword_28006A8B0 = 0x4E65685479616C70;
  qword_28006A8B8 = 0xEB00000000737765;
  unk_28006A8C0 = 0xD000000000000010;
  qword_28006A8C8 = v54;
  word_28006A8D0 = 266;
  xmmword_28006A8D8 = 0u;
  unk_28006A8E8 = 0u;
  qword_28006A8F8 = v31;
  unk_28006A900 = sub_2662257D4;
  qword_28006A908 = 0;
  unk_28006A920 = v59;
  unk_28006A910 = v58;
  qword_28006A930 = v60;
  qword_28006A938 = MEMORY[0x277D84F90];
  unk_28006A940 = MEMORY[0x277D84F90];
}

unint64_t sub_2662507DC()
{
  if (sub_2662365D8(&unk_2877D9918))
  {
    return sub_2662363F0() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit0aB0O15IntentMatchable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_266250894(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_2662508DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioSuggestion.ParameterName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSuggestion.ParameterName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_266250AC0()
{
  result = qword_280069B10;
  if (!qword_280069B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069B10);
  }

  return result;
}

uint64_t sub_266250B14()
{
  v0 = sub_2662670A8();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266250B60()
{
  v0 = sub_2662670A8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266250BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069980, &qword_266268820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266250C1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AudioSuggestion.SuggestionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioSuggestion.SuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266250DC8()
{
  result = qword_280069B48;
  if (!qword_280069B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069B48);
  }

  return result;
}

uint64_t PodcastLibraryProvider.createLibraryController(completion:)()
{
  v0 = sub_266266958();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v5 = logObject;
  sub_266266938();
  sub_266266F38();
  sub_266266928();
  sub_266265C88();
  sub_266265C78();
  sub_266266F28();
  sub_266266928();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_266250FB0()
{
  v0 = sub_266266958();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v5 = logObject;
  sub_266266938();
  sub_266266F38();
  sub_266266928();
  sub_266265C88();
  sub_266265C78();
  sub_266266F28();
  sub_266266928();
  return (*(v1 + 8))(v4, v0);
}

Swift::String __swiftcall INPlayMediaMediaItemResolutionResult.getAndClearExtraErrorInfo()()
{
  v0 = qword_280069B50;
  v1 = qword_280069B58;
  qword_280069B50 = 0;
  qword_280069B58 = 0xE000000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall INPlayMediaMediaItemResolutionResult.setExtraErrorInfo(extraErrorInfo:)(Swift::String extraErrorInfo)
{
  xmmword_280069B50 = extraErrorInfo;
}

uint64_t sub_2662511A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069D00, &qword_266268A40);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266266138();
  qword_280069B60 = result;
  return result;
}

uint64_t sub_26625120C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069D08, &qword_266268A48);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_266265DF8();
  qword_280069B68 = result;
  return result;
}

uint64_t sub_266251288(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_2662665E8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a1(v5);
  return sub_26622858C(v5, &unk_280069D10, &qword_266268600);
}

uint64_t sub_266251370()
{
  v0 = sub_266266A18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266266A08();
  v5 = sub_266265FA8();
  result = (*(v1 + 8))(v4, v0);
  qword_280069B70 = v5;
  return result;
}

id INPlayMediaIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INPlayMediaIntentHandler.init()()
{
  v0 = sub_266266548();
  v1 = *(v0 - 8);
  v61 = v0;
  v62 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_266266378();
  v55 = v4;
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2662662D8();
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_266265F98();
  v66 = *(v63 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662660F8();
  v59 = sub_2662660E8();
  v14 = sub_2662664D8();
  v15 = sub_2662664C8();
  v82[3] = v14;
  v82[4] = MEMORY[0x277D55728];
  v82[0] = v15;
  v54 = v13;
  sub_266265F88();
  sub_2662662C8();
  v16 = sub_266266218();
  v56 = sub_266266208();
  sub_266266368();
  v80 = v4;
  v81 = MEMORY[0x277D556B0];
  __swift_allocate_boxed_opaque_existential_1(v79);
  sub_266266368();
  v17 = sub_266265D38();
  v18 = sub_266265D28();
  v19 = MEMORY[0x277D55568];
  v77 = v17;
  v78 = MEMORY[0x277D55568];
  v76[0] = v18;
  v20 = sub_2662665B8();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v53 = sub_2662665A8();
  v23 = sub_2662662B8();
  v52 = sub_2662662A8();
  v24 = sub_2662668C8();
  v25 = sub_2662668B8();
  v80 = v24;
  v81 = MEMORY[0x277D5FDD8];
  v79[0] = v25;
  v26 = sub_266265D58();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_266265D48();
  v77 = v26;
  v78 = MEMORY[0x277D55570];
  v76[0] = v29;
  sub_266266538();
  v30 = sub_266266088();
  v31 = sub_266266078();
  v80 = v30;
  v81 = MEMORY[0x277D55660];
  v79[0] = v31;
  v32 = sub_266265D28();
  v77 = v17;
  v78 = v19;
  v76[0] = v32;
  v33 = type metadata accessor for INPlayMediaIntentHandler();
  v34 = objc_allocWithZone(v33);
  v75[3] = &type metadata for INLocalSearchProvider;
  v75[4] = &protocol witness table for INLocalSearchProvider;
  v75[0] = swift_allocObject();
  sub_266252478(v82, v75[0] + 16);
  v35 = v63;
  v74[3] = v63;
  v74[4] = MEMORY[0x277D55638];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  (*(v66 + 16))(boxed_opaque_existential_1, v13, v35);
  v37 = v64;
  v73[3] = v64;
  v73[4] = MEMORY[0x277D55698];
  v38 = __swift_allocate_boxed_opaque_existential_1(v73);
  v39 = v57;
  (*(v65 + 16))(v38, v57, v37);
  v72[3] = v16;
  v72[4] = MEMORY[0x277D55678];
  v40 = v55;
  v72[0] = v56;
  v71[3] = v55;
  v71[4] = MEMORY[0x277D556B0];
  v41 = __swift_allocate_boxed_opaque_existential_1(v71);
  v42 = v60;
  v43 = v58;
  (*(v60 + 16))(v41, v58, v40);
  v70[3] = v20;
  v70[4] = MEMORY[0x277D557A0];
  v70[0] = v53;
  v69[3] = v23;
  v69[4] = MEMORY[0x277D55690];
  v69[0] = v52;
  v44 = v61;
  v68[3] = v61;
  v68[4] = MEMORY[0x277D55760];
  v45 = __swift_allocate_boxed_opaque_existential_1(v68);
  v46 = v62;
  v47 = v51;
  (*(v62 + 16))(v45, v51, v44);
  *&v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_playbackService] = v59;
  sub_266220C24(v75, &v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_localSearch]);
  sub_266220C24(v74, &v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_deviceProvider]);
  sub_266220C24(v73, &v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nowPlaying]);
  sub_266220C24(v72, &v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider]);
  sub_266220C24(v70, &v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider]);
  sub_266220C24(v79, &v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_accountProvider]);
  sub_266220C24(v71, &v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_featureFlagProvider]);
  sub_266220C24(v69, &v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nearDeviceProvider]);
  sub_266220C24(v76, &v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_siriKitTaskLoggingProvider]);
  sub_266220C24(v68, &v34[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_onscreenEntityProvider]);
  v67.receiver = v34;
  v67.super_class = v33;
  v48 = objc_msgSendSuper2(&v67, sel_init);
  (*(v46 + 8))(v47, v44);
  (*(v42 + 8))(v43, v40);
  (*(v65 + 8))(v39, v64);
  (*(v66 + 8))(v54, v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  sub_2662524D4(v82);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v48;
}

id INPlayMediaIntentHandler.__allocating_init(playbackService:localSearch:deviceProvider:nowPlaying:seDeviceProvider:accountProvider:featureFlagProvider:appleMediaServicesProvider:nearDeviceProvider:siriKitTaskLoggingProvider:onscreenEntityProvider:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v42 = a2[4];
  v43 = a2[3];
  v46 = __swift_mutable_project_boxed_opaque_existential_1(a2, v43);
  v52 = a3;
  v41 = *(a3 + 24);
  v39 = *(a3 + 32);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(a3, v41);
  v50 = a4;
  v36 = *(a4 + 24);
  v34 = *(a4 + 32);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(a4, v36);
  v47 = a5;
  v16 = *(a5 + 24);
  v33 = *(a5 + 32);
  v37 = __swift_mutable_project_boxed_opaque_existential_1(a5, v16);
  v45 = a7;
  v17 = *(a7 + 24);
  v31 = *(a7 + 32);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(a7, v17);
  v38 = a8;
  v18 = *(a8 + 24);
  v30 = *(a8 + 32);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(a8, v18);
  v19 = a9[3];
  v20 = a9[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a9, v19);
  v23 = a11[3];
  v22 = a11[4];
  v24 = __swift_mutable_project_boxed_opaque_existential_1(a11, v23);
  *(&v29 + 1) = v20;
  *(&v28 + 1) = v31;
  *&v29 = v42;
  *&v28 = v33;
  *&v27 = v30;
  *(&v27 + 1) = v39;
  v25 = sub_266262570(a1, v46, v44, v40, v37, a6, v35, v32, v21, a10, v24, v49, v18, v41, v16, v17, v43, v19, v36, v23, v27, v28, v29, v34, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v25;
}

id INPlayMediaIntentHandler.init(playbackService:localSearch:deviceProvider:nowPlaying:seDeviceProvider:accountProvider:featureFlagProvider:appleMediaServicesProvider:nearDeviceProvider:siriKitTaskLoggingProvider:onscreenEntityProvider:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v88 = a6;
  v89 = a2;
  v90 = a11;
  v85 = a10;
  v86 = a1;
  v16 = a2[3];
  v83 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v80 = v16;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v82 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))();
  v21 = a3;
  v84 = a3;
  v22 = a3[3];
  v79 = *(v21 + 32);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v77 = v22;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v78 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))();
  v81 = a4;
  v27 = a4[3];
  v75 = a4[4];
  v28 = __swift_mutable_project_boxed_opaque_existential_1(a4, v27);
  v73 = v27;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v74 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))();
  v76 = a5;
  v32 = a5[3];
  v71 = a5[4];
  v33 = __swift_mutable_project_boxed_opaque_existential_1(a5, v32);
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v70 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))();
  v72 = a7;
  v37 = a7[3];
  v69 = a7[4];
  v38 = __swift_mutable_project_boxed_opaque_existential_1(a7, v37);
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v64 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41);
  v68 = a8;
  v43 = a8[3];
  v67 = a8[4];
  v44 = __swift_mutable_project_boxed_opaque_existential_1(a8, v43);
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v64 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v48 + 16))(v47);
  v66 = a9;
  v49 = a9[3];
  v65 = a9[4];
  v50 = __swift_mutable_project_boxed_opaque_existential_1(a9, v49);
  v51 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v64 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v54 + 16))(v53);
  v55 = v90[3];
  v56 = v90[4];
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v90, v55);
  v58 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v64 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v61 + 16))(v60);
  v62 = sub_26626215C(v86, v82, v78, v74, v70, v88, v41, v47, v53, v85, v60, v87, v43, v77, v32, v37, v80, v49, v73, v55, v67, v79, v71, v69, v83, v65, v75, v56);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  return v62;
}

uint64_t sub_266252440()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t static INPlayMediaIntentHandler.removeContinuation(for:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  if (a2)
  {
    if (qword_280069568 != -1)
    {
      swift_once();
    }

    v31[1] = a1;
    v31[2] = a2;
    v15 = sub_266266128();
    if (v15)
    {
      v16 = v15;
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v4, static Logger.default);
      swift_beginAccess();
      (*(v5 + 16))(v14, v17, v4);

      v18 = sub_266266968();
      v19 = sub_266266D58();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v31[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_26621EAF0(a1, a2, v31);
        _os_log_impl(&dword_266219000, v18, v19, "INPlayMediaIntentHandler#removeContinuation retrieved continuation for identifier: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x266780880](v21, -1, -1);
        MEMORY[0x266780880](v20, -1, -1);
      }

      (*(v5 + 8))(v14, v4);
      return v16;
    }

    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v12, v26, v4);
    v27 = sub_266266968();
    v28 = sub_266266D58();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_266219000, v27, v28, "INPlayMediaIntentHandler#removeContinuation no continuation for identifier, returning no-op continuation", v29, 2u);
      MEMORY[0x266780880](v29, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v9, v22, v4);
    v23 = sub_266266968();
    v24 = sub_266266D58();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_266219000, v23, v24, "INPlayMediaIntentHandler#removeContinuation no identifier, returning no-op continuation", v25, 2u);
      MEMORY[0x266780880](v25, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }

  if (qword_280069570 != -1)
  {
    swift_once();
  }

  v16 = qword_280069B68;

  return v16;
}

uint64_t INPlayMediaIntentHandler.resolveMediaItems(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v4 = sub_2662669E8();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_266266A18();
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266266988();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v15 = a1;
  v16 = sub_266266968();
  v17 = sub_266266D68();

  if (os_log_type_enabled(v16, v17))
  {
    v35 = v4;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    v20 = [v15 privatePlayMediaIntentData];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 audioSearchResults];

      if (v22)
      {
        sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
        v21 = sub_266266BB8();
      }

      else
      {
        v21 = 0;
      }
    }

    v43 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069BE8, qword_266268988);
    v23 = sub_266266A68();
    v25 = sub_26621EAF0(v23, v24, aBlock);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_266219000, v16, v17, "INPlayMediaIntentHandler#resolveMediaItems looking at search results: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266780880](v19, -1, -1);
    MEMORY[0x266780880](v18, -1, -1);

    (*(v10 + 8))(v13, v9);
    v4 = v35;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  if (qword_280069578 != -1)
  {
    swift_once();
  }

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v28 = v36;
  v29 = v37;
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v29;
  v27[5] = v15;
  aBlock[4] = sub_266262C60;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266259D78;
  aBlock[3] = &block_descriptor_1;
  v30 = _Block_copy(aBlock);
  v31 = v15;

  v32 = v38;
  sub_2662669F8();
  v43 = MEMORY[0x277D84F90];
  sub_2662630A0(&qword_280069BD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069BD8, &qword_266268980);
  sub_266262C84();
  v33 = v40;
  sub_266266FD8();
  MEMORY[0x2667800E0](0, v32, v33, v30);
  _Block_release(v30);
  (*(v42 + 8))(v33, v4);
  (*(v39 + 8))(v32, v41);
}

uint64_t sub_266252FC8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v5 = sub_266266958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = sub_266266988();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v41 = a4;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v20 = v5;
    v21 = __swift_project_value_buffer(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v16, v21, v11);
    v22 = sub_266266968();
    v23 = sub_266266D78();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_266219000, v22, v23, "INPlayMediaIntentHandler#resolveMediaItems...", v24, 2u);
      MEMORY[0x266780880](v24, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
    v25 = swift_allocObject();
    *(v25 + 16) = v43;
    *(v25 + 24) = v44;
    v26 = qword_280069538;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = logObject;
    sub_266266938();
    v28 = v42;
    (*(v6 + 16))(v42, v10, v20);
    v29 = (*(v6 + 80) + 33) & ~*(v6 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = "playMediaIntentHandlerResolveMediaItems";
    *(v30 + 24) = 39;
    *(v30 + 32) = 2;
    (*(v6 + 32))(v30 + v29, v28, v20);
    v31 = (v30 + ((v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_266241F94;
    v31[1] = v25;

    sub_266266F38();
    sub_266266918();
    v32 = swift_allocObject();
    *(v32 + 16) = sub_266262CEC;
    *(v32 + 24) = v30;
    MEMORY[0x28223BE20](v32);
    v33 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CC8, &qword_266268A20);
    sub_266265E08();

    return (*(v6 + 8))(v10, v20);
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v18, v35, v11);
    v36 = sub_266266968();
    v37 = sub_266266D68();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266219000, v36, v37, "INPlayMediaIntentHandler#resolveMediaItems self deallocated", v38, 2u);
      MEMORY[0x266780880](v38, -1, -1);
    }

    (*(v12 + 8))(v18, v11);
    return v43(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2662535EC(id a1, uint64_t a2, void *a3, void *a4)
{
  v119 = a4;
  v7 = sub_266266988();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v126 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v111 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v118 = &v111 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v120 = &v111 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v111 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v123 = v21;
  v129[1] = a3;
  sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  v121 = a2;

  if (sub_266266328())
  {
    sub_266266688();
    sub_266266678();
    sub_266266668();
  }

  v22 = [a3 privatePlayMediaIntentData];
  if (v22 && (v23 = v22, v24 = [v22 internalSignals], v23, v24))
  {
    v25 = sub_266266BB8();
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v125 = a3;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v7, static Logger.default);
  swift_beginAccess();
  v27 = v8 + 16;
  v124 = *(v8 + 16);
  v124(v20, v26, v7);

  v28 = sub_266266968();
  v29 = sub_266266D78();

  v30 = os_log_type_enabled(v28, v29);
  v122 = v25;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v116 = v26;
    v117 = v7;
    v115 = a1;
    v32 = v31;
    v33 = v8 + 16;
    v34 = swift_slowAlloc();
    v128[0] = v34;
    *v32 = 136315138;
    v35 = MEMORY[0x26677FD90](v25, MEMORY[0x277D837D0]);
    v37 = v8;
    v38 = sub_26621EAF0(v35, v36, v128);

    *(v32 + 4) = v38;
    v8 = v37;
    _os_log_impl(&dword_266219000, v28, v29, "INPlayMediaIntentHandler#resolveMediaItems sees private intent signals: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    v39 = v34;
    v27 = v33;
    MEMORY[0x266780880](v39, -1, -1);
    v40 = v32;
    a1 = v115;
    v26 = v116;
    v7 = v117;
    MEMORY[0x266780880](v40, -1, -1);

    v41 = v37;
  }

  else
  {

    v41 = v8;
  }

  v42 = *(v41 + 8);
  v42(v20, v7);
  v43 = v125;
  v44 = sub_266266DF8();
  v45 = v126;
  if (v44)
  {

    v124(v45, v26, v7);
    v46 = v122;

    v47 = sub_266266968();
    v48 = sub_266266D68();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = a1;
      v51 = v42;
      v52 = swift_slowAlloc();
      v128[0] = v52;
      *v49 = 136315138;
      v53 = MEMORY[0x26677FD90](v46, MEMORY[0x277D837D0]);
      v55 = v54;

      v56 = sub_26621EAF0(v53, v55, v128);

      *(v49 + 4) = v56;
      _os_log_impl(&dword_266219000, v47, v48, "INPlayMediaIntentHandler#resolveMediaItems got signal to immediately error as this is a follow up request that did not succeed, internal signals: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x266780880](v52, -1, -1);
      MEMORY[0x266780880](v49, -1, -1);

      v51(v126, v7);
      a1 = v50;
    }

    else
    {

      v42(v45, v7);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
    *(v74 + 32) = [swift_getObjCClassFromMetadata() unsupported];
    v128[0] = v74;
    (a1)(v128);
  }

  v57 = swift_allocObject();
  v126 = v57;
  *(v57 + 16) = 0;
  v58 = (v57 + 16);
  if ((sub_266266EA8() & 1) == 0)
  {
    goto LABEL_52;
  }

  v59 = [v43 backingStore];
  objc_opt_self();
  v116 = swift_dynamicCastObjCClass();
  if (v116)
  {
    v117 = v42;
    v124(v120, v26, v7);
    v60 = sub_266266968();
    v61 = sub_266266D78();
    v62 = os_log_type_enabled(v60, v61);
    v115 = v59;
    if (v62)
    {
      v63 = v27;
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_266219000, v60, v61, "INPlayMediaIntentHandler#resolveMediaItems fallback: implicit recommendation signal detected", v64, 2u);
      v65 = v64;
      v27 = v63;
      MEMORY[0x266780880](v65, -1, -1);
    }

    v66 = v120;
    v120 = (v8 + 8);
    v117(v66, v7);
    v67 = v116;
    v68 = [v116 privatePlayMediaIntentData];
    v114 = v27;
    if (v68)
    {
      v69 = v68;
      v70 = [v68 audioSearchResults];

      if (v70)
      {
        sub_266228130(0, &qword_280069AF8, 0x277CD4360);
        v71 = sub_266266BB8();

        if (v71 >> 62)
        {
          result = sub_266267078();
        }

        else
        {
          result = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result)
        {
          if ((v71 & 0xC000000000000001) != 0)
          {
            v73 = MEMORY[0x266780220](0, v71);
          }

          else
          {
            if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v73 = *(v71 + 32);
          }

          v70 = v73;
        }

        else
        {

          v70 = 0;
        }

        v67 = v116;
      }
    }

    else
    {
      v70 = 0;
    }

    v75 = *v58;
    *v58 = v70;

    v76 = [v67 privatePlayMediaIntentData];
    if (v76)
    {
      v77 = v76;
      sub_266228130(0, &qword_280069AF8, 0x277CD4360);
      v78 = sub_266266B98();
      [v77 setAudioSearchResults_];
    }

    v79 = v118;
    v124(v118, v26, v7);

    v80 = sub_266266968();
    v81 = sub_266266D78();

    v113 = v81;
    v116 = v80;
    v82 = os_log_type_enabled(v80, v81);
    v43 = v125;
    v42 = v117;
    if (v82)
    {
      v112 = v14;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v129[0] = v84;
      *v83 = 136446466;
      swift_beginAccess();
      if (*v58)
      {
        v85 = a1;
        v86 = [*v58 identifier];
        if (v86)
        {
          v87 = v86;
          v88 = sub_266266A58();
          v90 = v89;
        }

        else
        {
          v88 = 0;
          v90 = 0;
        }
      }

      else
      {
        v85 = a1;
        v88 = 0;
        v90 = 0;
      }

      v127[0] = v88;
      v127[1] = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
      v91 = sub_266266A68();
      v93 = sub_26621EAF0(v91, v92, v129);

      *(v83 + 4) = v93;
      *(v83 + 12) = 2080;
      if (*v58)
      {
        v94 = [*v58 privateMediaItemValueData];
        a1 = v85;
        if (v94)
        {
          v95 = v94;
          v96 = [v94 internalSignals];

          v14 = v112;
          if (v96)
          {
            v97 = sub_266266BB8();
          }

          else
          {
            v97 = 0;
          }

          goto LABEL_51;
        }

        v97 = 0;
      }

      else
      {
        v97 = 0;
        a1 = v85;
      }

      v14 = v112;
LABEL_51:
      v127[0] = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CE0, &qword_266268A28);
      v98 = sub_266266A68();
      v100 = sub_26621EAF0(v98, v99, v129);

      *(v83 + 14) = v100;
      v101 = v116;
      _os_log_impl(&dword_266219000, v116, v113, "INPlayMediaIntentHandler#resolveMediaItems fallback: found fallback media item: %{public}s with internal signals: %s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v84, -1, -1);
      MEMORY[0x266780880](v83, -1, -1);

      v42 = v117;
      v117(v118, v7);
      v43 = v125;
      goto LABEL_52;
    }

    v42(v79, v7);
  }

  else
  {
  }

LABEL_52:
  if (_s17SiriAudioInternal0C14SignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v43, &unk_2877D9BB0))
  {

    v124(v14, v26, v7);
    v102 = sub_266266968();
    v103 = sub_266266D58();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_266219000, v102, v103, "INPlayMediaIntentHandler#resolveMediaItems received audio search direct action intent requiring prompt for value", v104, 2u);
      MEMORY[0x266780880](v104, -1, -1);
    }

    v42(v14, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
    *(v105 + 32) = [swift_getObjCClassFromMetadata() needsValue];
    v127[0] = v105;
    (a1)(v127);
  }

  v106 = v122;

  v107 = v126;

  v108 = v119;
  v109 = v43;
  v110 = v123;

  sub_2662651E0(v109, v108, v108, v109, sub_2662489AC, v110, v106, v107);

  swift_bridgeObjectRelease_n();
}

uint64_t sub_266254360(unint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v14 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    result = sub_266267078();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:
    v23 = *&a2[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], *&a2[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24]);
    v24 = swift_allocObject();
    v24[2] = a3;
    v24[3] = a4;
    v24[4] = a5;
    v25 = a3;

    sub_266266618();
    goto LABEL_10;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x266780220](0, a1);
  }

  else
  {
    if (!*(v14 + 16))
    {
      __break(1u);
      return result;
    }

    v16 = *(a1 + 32);

    v17 = v16;
  }

  v18 = v17;
  v26 = *&a2[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
  __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], *&a2[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24]);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = v18;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a1;
  v19[7] = a2;
  v19[8] = a6;
  v19[9] = a7;
  v20 = v18;
  v21 = a3;

  v22 = a2;

  sub_266266608();

LABEL_10:
}

uint64_t sub_266254580(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v52[1] = a4;
  v53 = a3;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v52 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v52 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v52 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v52 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v52 - v23;
  if (a1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v10, v25, v5);
    v26 = sub_266266968();
    v27 = sub_266266D58();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266219000, v26, v27, "INPlayMediaIntentHandler#resolveMediaItems User needs to sign GDPR, returning unsupported to allow for the GDPR dialog", v28, 2u);
      MEMORY[0x266780880](v28, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    sub_266266DD8();
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
    v30 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_14;
  }

  if (sub_266266D98())
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v13, v31, v5);
    v32 = sub_266266968();
    v33 = sub_266266D58();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266219000, v32, v33, "INPlayMediaIntentHandler#resolveMediaItems No search results from remote or local and meets criteria for prompting for value", v34, 2u);
      MEMORY[0x266780880](v34, -1, -1);
    }

    (*(v6 + 8))(v13, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
    v30 = [swift_getObjCClassFromMetadata() needsValue];
  }

  else if (sub_266266DB8())
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v16, v36, v5);
    v37 = sub_266266968();
    v38 = sub_266266D78();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_266219000, v37, v38, "INPlayMediaIntentHandler#resolveMediaItems No search results from remote or local, have AmpError", v39, 2u);
      MEMORY[0x266780880](v39, -1, -1);
    }

    (*(v6 + 8))(v16, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_266267E70;
    v30 = [objc_opt_self() unsupportedForReason_];
  }

  else
  {
    if ((sub_266266E28() & 1) == 0)
    {
      if (sub_266266E18())
      {
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v44 = __swift_project_value_buffer(v5, static Logger.default);
        swift_beginAccess();
        (*(v6 + 16))(v22, v44, v5);
        v45 = sub_266266968();
        v46 = sub_266266D48();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_266219000, v45, v46, "INPlayMediaIntentHandler#resolveMediaItems No search results from remote or local, have unsafe self harm signal. Return unsupported.", v47, 2u);
          MEMORY[0x266780880](v47, -1, -1);
        }

        (*(v6 + 8))(v22, v5);
      }

      else
      {
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v48 = __swift_project_value_buffer(v5, static Logger.default);
        swift_beginAccess();
        (*(v6 + 16))(v24, v48, v5);
        v49 = sub_266266968();
        v50 = sub_266266D68();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_266219000, v49, v50, "INPlayMediaIntentHandler#resolveMediaItems No search results from remote or local, returning unsupported", v51, 2u);
          MEMORY[0x266780880](v51, -1, -1);
        }

        (*(v6 + 8))(v24, v5);
      }

      goto LABEL_7;
    }

    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v19, v40, v5);
    v41 = sub_266266968();
    v42 = sub_266266D68();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_266219000, v41, v42, "INPlayMediaIntentHandler#resolveMediaItems No search results from remote or local, have invalid AMP token", v43, 2u);
      MEMORY[0x266780880](v43, -1, -1);
    }

    (*(v6 + 8))(v19, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_266267E70;
    v30 = [objc_opt_self() unsupportedForReason_];
  }

LABEL_14:
  *(v29 + 32) = v30;
  v53(v29);
}

uint64_t sub_266254E64(char a1, id a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, NSObject *a7, uint64_t a8, uint64_t a9)
{
  v148 = a8;
  v149 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069CB8, &qword_2662689F8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v145 = (&v132 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
  v143 = *(v18 - 8);
  v144 = v18;
  v19 = *(v143 + 64);
  MEMORY[0x28223BE20](v18);
  v142 = (&v132 - v20);
  v21 = sub_266266988();
  v150 = *(v21 - 8);
  v22 = *(v150 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v23);
  v27 = MEMORY[0x28223BE20](v26);
  v28 = MEMORY[0x28223BE20](v27);
  v147 = &v132 - v29;
  MEMORY[0x28223BE20](v28);
  v33 = &v132 - v32;
  if (a1)
  {
    if (qword_280069528 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_101;
  }

  v133 = v31;
  v134 = v30;
  v140 = a4;
  v141 = a5;
  v154[3] = sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  v154[4] = MEMORY[0x277D557D0];
  v154[0] = a2;
  a2 = a2;
  sub_266266CE8();
  __swift_destroy_boxed_opaque_existential_1Tm(v154);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v21, static Logger.default);
  swift_beginAccess();
  v44 = v150;
  v45 = *(v150 + 16);
  v138 = v150 + 16;
  v139 = v43;
  v137 = v45;
  v45(v33, v43, v21);
  v46 = a3;
  v25 = sub_266266968();
  LOBYTE(a4) = sub_266266D78();
  v47 = os_log_type_enabled(v25, a4);
  v136 = v46;
  if (!v47)
  {

    v54 = v44;
    goto LABEL_38;
  }

  v48 = swift_slowAlloc();
  v146 = swift_slowAlloc();
  v153 = v146;
  *v48 = 136446466;
  v49 = [v46 identifier];
  if (v49)
  {
    v50 = v49;
    v51 = sub_266266A58();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v151 = v51;
  v152 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
  v62 = sub_266266A68();
  v64 = sub_26621EAF0(v62, v63, &v153);

  *(v48 + 4) = v64;
  *(v48 + 12) = 2050;
  a3 = v136;
  v65 = [v136 privateMediaItemValueData];
  if (!v65)
  {

    i = 0;
    goto LABEL_37;
  }

  v66 = v65;
  i = [v65 mediaSubItems];

  if (!i)
  {

    goto LABEL_37;
  }

  sub_266228130(0, &qword_280069C88, 0x277CD3DD0);
  v68 = sub_266266BB8();

  if (v68 >> 62)
  {
    goto LABEL_104;
  }

  for (i = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_266267078())
  {

LABEL_37:
    *(v48 + 14) = i;

    _os_log_impl(&dword_266219000, v25, a4, "INPlayMediaIntentHandler#resolveMediaItems resolved item with identifier: %{public}s and sub items: %{public}ld", v48, 0x16u);
    v69 = v146;
    __swift_destroy_boxed_opaque_existential_1Tm(v146);
    MEMORY[0x266780880](v69, -1, -1);
    MEMORY[0x266780880](v48, -1, -1);

    v54 = v150;
LABEL_38:
    a4 = *(v54 + 8);
    (a4)(v33, v21);
    v70 = &off_279BCA000;
    v71 = [a2 privatePlayMediaIntentData];
    v72 = [v71 entityConfidenceSignalsEnabled];

    v73 = [a2 privatePlayMediaIntentData];
    v74 = [v73 entityConfidenceSignalsFrequencyDenominatorProd];

    v75 = [a2 privatePlayMediaIntentData];
    v146 = [v75 entityConfidenceSignalsFrequencyDenominatorInternal];

    v33 = (a6 >> 62);
    if (a6 >> 62)
    {
      v76 = sub_266267078();
    }

    else
    {
      v76 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v149;
    if (v76 == 1 || (v25 = v149, (sub_266260290(v72, v146, v74) & 1) == 0))
    {
      if (sub_266266E78() & 1) != 0 || (sub_266266E98())
      {
        v135 = v72;
        v82 = a4;
        v83 = v147;
        v137(v147, v139, v21);
        v84 = v148;

        v85 = sub_266266968();
        v86 = sub_266266D68();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v151 = v88;
          *v87 = 136315138;
          v89 = MEMORY[0x26677FD90](v84, MEMORY[0x277D837D0]);
          v91 = v74;
          v92 = sub_26621EAF0(v89, v90, &v151);

          *(v87 + 4) = v92;
          v74 = v91;
          _os_log_impl(&dword_266219000, v85, v86, "INPlayMediaIntentHandler#resolveMediaItems got signal to immediately error as UnsupportedNonSubscriber or AcousticIdFollowUpSubscriptionNotActive present, internal signals: %s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v88);
          MEMORY[0x266780880](v88, -1, -1);
          MEMORY[0x266780880](v87, -1, -1);
        }

        v82(v83, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_266267E70;
        *(v93 + 32) = [objc_opt_self() unsupportedForReason_];
        v140(v93);
      }

      else
      {
        v95 = v145;
        sub_26625E210(v136, a2, v145);
        v96 = v144;
        if ((*(v143 + 48))(v95, 1, v144) != 1)
        {
          v125 = v142;
          sub_266263128(v95, v142);
          v126 = *(&v77->isa + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_playbackService);
          v149 = *v125;
          v150 = v126;
          v147 = *(v96 + 48);
          v127 = swift_allocObject();
          v127[2] = a2;
          v127[3] = a6;
          v128 = v74;
          v129 = v141;
          v127[4] = v140;
          v127[5] = v129;
          v127[6] = v148;
          v127[7] = a9;
          v127[8] = v77;
          v130 = a2;

          v131 = v77;
          sub_2662660D8();

          return sub_26622858C(v125, &qword_280069C70, &qword_2662689D0);
        }

        sub_26622858C(v95, &unk_280069CB8, &qword_2662689F8);
        v137(v133, v139, v21);
        v97 = sub_266266968();
        v98 = sub_266266D48();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_266219000, v97, v98, "INPlayMediaIntentHandler#resolveMediaItems Problem converting intent to Playback objects", v99, 2u);
          MEMORY[0x266780880](v99, -1, -1);
        }

        (a4)(v133, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_266267E70;
        sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
        *(v100 + 32) = [swift_getObjCClassFromMetadata() unsupported];
        v140(v100);
      }
    }

    v78 = [a2 privatePlayMediaIntentData];
    v135 = v72;
    if (!v78)
    {
      goto LABEL_45;
    }

    v25 = v78;
    v79 = [v78 entityConfidenceSignalsMaxItemsToDisambiguate];

    if (v79 && (v151 = 0, LOBYTE(v152) = 1, sub_266266C78(), v79, (v152 & 1) == 0))
    {
      a3 = v151;
      if (v151 < 0)
      {
        __break(1u);
LABEL_101:
        swift_once();
LABEL_3:
        v34 = __swift_project_value_buffer(v21, static Logger.default);
        swift_beginAccess();
        v35 = v150;
        (*(v150 + 16))(v25, v34, v21);
        v36 = sub_266266968();
        v37 = sub_266266D58();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_266219000, v36, v37, "INPlayMediaIntentHandler#resolveMediaItems User needs to sign GDPR, returning unsupported to allow for the GDPR dialog", v38, 2u);
          MEMORY[0x266780880](v38, -1, -1);
        }

        (*(v35 + 8))(v25, v21);
        v151 = a2;
        sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
        v39 = sub_266266658();
        if (v40)
        {
          v39 = sub_266266A78();
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }

        v55 = [a3 privateMediaItemValueData];
        if (v55)
        {
          v56 = v55;
          v57 = [v55 sharedUserIdFromPlayableMusicAccount];

          if (v57)
          {
            sub_266266A58();

            v58 = sub_266266A78();
            v57 = v59;

            if (!v42)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v58 = 0;
            if (!v42)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          v58 = 0;
          v57 = 0;
          if (!v42)
          {
            goto LABEL_25;
          }
        }

        if (v57)
        {
          if (v39 != v58 || v42 != v57)
          {
            v61 = sub_2662670D8();

            if ((v61 & 1) == 0)
            {
              sub_266266DA8();
            }

            goto LABEL_26;
          }
        }

LABEL_25:

LABEL_26:
        sub_266266DD8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_266267E70;
        sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
        *(v60 + 32) = [swift_getObjCClassFromMetadata() unsupported];
        a4(v60);
      }
    }

    else
    {
LABEL_45:
      a3 = 5;
    }

    if (v33)
    {
      if (a6 < 0)
      {
        v25 = a6;
      }

      else
      {
        v25 = (a6 & 0xFFFFFFFFFFFFFF8);
      }

      v101 = sub_266267078();
      if (sub_266267078() < 0)
      {
        __break(1u);
        goto LABEL_106;
      }

      if (v101 >= a3)
      {
        v102 = a3;
      }

      else
      {
        v102 = v101;
      }

      if (v101 < 0)
      {
        v102 = a3;
      }

      v48 = a3 ? v102 : 0;
      v80 = sub_266267078();
    }

    else
    {
      v80 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v81 = v80 >= a3 ? a3 : *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v48 = a3 ? v81 : 0;
    }

    if (v80 >= v48)
    {
      break;
    }

    __break(1u);
LABEL_104:
    ;
  }

  if ((a6 & 0xC000000000000001) == 0 || !v48)
  {

    if (!v33)
    {
      goto LABEL_83;
    }

LABEL_86:

    v25 = sub_266267088();
    a2 = v106;
    v101 = v107;
    if (v107)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);

  v103 = 0;
  do
  {
    v104 = v103 + 1;
    sub_266267048();
    v103 = v104;
  }

  while (v48 != v104);
  if (v33)
  {
    goto LABEL_86;
  }

LABEL_83:
  a2 = 0;
  v25 = (a6 & 0xFFFFFFFFFFFFFF8);
  v105 = (a6 & 0xFFFFFFFFFFFFFF8) + 32;
  v101 = (2 * v48) | 1;
  if ((v101 & 1) == 0)
  {
LABEL_87:
    sub_266261AB0(v25, v105, a2, v101);
    v109 = v108;
    goto LABEL_94;
  }

LABEL_88:
  v70 = v74;
  v149 = v105;
  sub_2662670E8();
  swift_unknownObjectRetain_n();
  v110 = swift_dynamicCastClass();
  if (!v110)
  {
    swift_unknownObjectRelease();
    v110 = MEMORY[0x277D84F90];
  }

  v111 = *(v110 + 16);

  if (__OFSUB__(v101 >> 1, a2))
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v111 != (v101 >> 1) - a2)
  {
LABEL_107:
    swift_unknownObjectRelease();
    v105 = v149;
    v74 = v70;
    goto LABEL_87;
  }

  v109 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v74 = v70;
  if (!v109)
  {
    v109 = MEMORY[0x277D84F90];
LABEL_94:
    swift_unknownObjectRelease();
  }

  v112 = v134;
  v137(v134, v139, v21);
  v113 = sub_266266968();
  v114 = sub_266266D58();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v149 = v74;
    v117 = v116;
    v151 = v116;
    *v115 = 136446210;
    v153 = a3;
    v118 = sub_2662670C8();
    v120 = sub_26621EAF0(v118, v119, &v151);

    *(v115 + 4) = v120;
    _os_log_impl(&dword_266219000, v113, v114, "INPlayMediaIntentHandler#resolveMediaItems Disambiguating with %{public}s results", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    v121 = v117;
    v74 = v149;
    MEMORY[0x266780880](v121, -1, -1);
    MEMORY[0x266780880](v115, -1, -1);
  }

  (a4)(v112, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_266267E70;
  sub_266255FF8(v109);

  v123 = sub_266266B98();

  v124 = [objc_opt_self() resolutionResultDisambiguationWithItemsToDisambiguate_];

  *(v122 + 32) = v124;
  v140(v122);
}

char *sub_266255FF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_266267078();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_266261C70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x266780220](i, a1);
        sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_266261C70((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_26622FB80(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_266261C70((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_26622FB80(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2662561F4(void (*a1)(char *, uint64_t), void *a2, char *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v490 = a8;
  v491 = a7;
  v507 = a6;
  v530 = a5;
  v531 = a4;
  v522 = a3;
  v523 = a2;
  v532 = a1;
  v527 = sub_266265EB8();
  v526 = *(v527 - 8);
  v8 = *(v526 + 64);
  v9 = MEMORY[0x28223BE20](v527);
  v495 = &v487 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v520 = &v487 - v12;
  MEMORY[0x28223BE20](v11);
  v528 = &v487 - v13;
  v539 = sub_2662665E8();
  v536 = *(v539 - 8);
  v14 = *(v536 + 64);
  v15 = MEMORY[0x28223BE20](v539);
  v519 = &v487 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v494 = &v487 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v487 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v500 = &v487 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v509 = &v487 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v515 = &v487 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v513 = &v487 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v511 = &v487 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v503 = &v487 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v506 = &v487 - v35;
  MEMORY[0x28223BE20](v34);
  v529 = &v487 - v36;
  v37 = sub_266266958();
  v534 = *(v37 - 8);
  v535 = v37;
  v38 = *(v534 + 8);
  MEMORY[0x28223BE20](v37);
  v533 = (&v487 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CA8, &unk_2662689E8);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = (&v487 - v42);
  v44 = sub_266266988();
  v45 = *(v44 - 8);
  v46 = v45[8];
  v47 = MEMORY[0x28223BE20](v44);
  v518 = &v487 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v497 = &v487 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v496 = &v487 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v501 = &v487 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v510 = &v487 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v517 = &v487 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v514 = &v487 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v512 = &v487 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v489 = &v487 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v488 = &v487 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v487 = &v487 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v504 = &v487 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v493 = &v487 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v499 = &v487 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v505 = &v487 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v492 = &v487 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v498 = &v487 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v502 = &v487 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v508 = &v487 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v525 = &v487 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v521 = &v487 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v516 = &v487 - v90;
  MEMORY[0x28223BE20](v89);
  v92 = &v487 - v91;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v93 = __swift_project_value_buffer(v44, static Logger.default);
  swift_beginAccess();
  v537 = v45[2];
  v538 = v45 + 2;
  (v537)(v92, v93, v44);
  v94 = sub_266266968();
  v95 = sub_266266D48();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = v44;
    v97 = v21;
    v98 = v93;
    v99 = v45;
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_266219000, v94, v95, "INPlayMediaIntentHandler#resolveMediaItems completed for INPlayMediaIntent (possibly success or failure)", v100, 2u);
    v101 = v100;
    v45 = v99;
    v93 = v98;
    v21 = v97;
    v44 = v96;
    MEMORY[0x266780880](v101, -1, -1);
  }

  v102 = v45[1];
  v540 = v45 + 1;
  (v102)(v92, v44);
  sub_266228524(v532, v43, &qword_280069CA8, &unk_2662689E8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v104 = 0x280069000uLL;
  v105 = MEMORY[0x277D837D0];
  if (EnumCaseMultiPayload == 1)
  {
    v522 = v21;
    v524 = v44;
    v525 = v93;
    v532 = v102;
    v106 = v529;
    (*(v536 + 32))(v529, v43, v539);
    v107 = v528;
    sub_2662665C8();
    v108 = sub_266265EA8();
    v110 = v109;
    v111 = (v526 + 8);
    v112 = *(v526 + 8);
    v113 = v527;
    v112(v107, v527);
    sub_266266F48();
    if (qword_280069538 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CF0, &qword_266268A38);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_266267DB0;
    *(v114 + 56) = MEMORY[0x277D837D0];
    *(v114 + 64) = sub_2662658EC();
    *(v114 + 32) = v108;
    *(v114 + 40) = v110;
    v115 = v533;
    sub_266266948();
    sub_266266918();

    (*(v534 + 1))(v115, v535);
    sub_266265E28();
    sub_2662665C8();
    v116 = sub_266265E18();
    v112(v107, v113);
    v117 = v113;
    v118 = v106;
    if (v116)
    {
      v534 = v112;
      v535 = v111;
      v119 = v113;
      v120 = v518;
      v121 = v524;
      (v537)(v518, v525, v524);
      v122 = v536;
      v123 = v519;
      (*(v536 + 16))(v519, v118, v539);
      v124 = sub_266266968();
      v125 = sub_266266D68();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v543 = v127;
        *v126 = 136446210;
        sub_2662665C8();
        v537 = sub_266265EA8();
        v129 = v128;
        v130 = v534;
        v534(v528, v527);
        v538 = *(v122 + 8);
        v131 = v123;
        v132 = v539;
        (v538)(v131, v539);
        v133 = v130;
        v134 = sub_26621EAF0(v537, v129, &v543);
        v107 = v528;

        *(v126 + 4) = v134;
        _os_log_impl(&dword_266219000, v124, v125, "INPlayMediaIntentHandler#resolveMediaItems identified PFSQ terminating error warming content with code: %{public}s", v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
        v135 = v127;
        v136 = v132;
        v137 = v527;
        MEMORY[0x266780880](v135, -1, -1);
        MEMORY[0x266780880](v126, -1, -1);

        v532(v120, v524);
      }

      else
      {
        v187 = v121;

        v538 = *(v122 + 8);
        v136 = v539;
        (v538)(v123, v539);
        v532(v120, v187);
        v133 = v534;
        v137 = v119;
      }

      sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
      v188 = [swift_getObjCClassFromMetadata() unsupported];
      v189 = v529;
      sub_2662665C8();
      v190 = sub_266265EA8();
      v192 = v191;
      v133(v107, v137);
      *&xmmword_280069B50 = v190;
      *(&xmmword_280069B50 + 1) = v192;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v193 = swift_allocObject();
      *(v193 + 16) = xmmword_266267E70;
      *(v193 + 32) = v188;
      v194 = v188;
      v531(v193);

      return (v538)(v189, v136);
    }

    v151 = v524;
    v152 = v520;
    sub_2662665C8();
    v153 = (*(v526 + 88))(v152, v113);
    v154 = v539;
    if (v153 == *MEMORY[0x277D55580])
    {
      (v537)(v517, v525, v151);
      v155 = v536;
      v156 = v515;
      (*(v536 + 16))(v515, v118, v154);
      v157 = sub_266266968();
      v158 = sub_266266D68();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v537 = v159;
        v538 = swift_slowAlloc();
        v543 = v538;
        *v159 = 136446210;
        v160 = v528;
        sub_2662665C8();
        v161 = sub_266265EA8();
        v162 = v112;
        v163 = v154;
        v165 = v164;
        v162(v160, v113);
        v166 = *(v155 + 8);
        v166(v156, v163);
        v167 = sub_26621EAF0(v161, v165, &v543);
        v154 = v163;

        v168 = v537;
        *(v537 + 4) = v167;
        v169 = v168;
        _os_log_impl(&dword_266219000, v157, v158, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, unsupported playback queue location", v168, 0xCu);
        v170 = v538;
        __swift_destroy_boxed_opaque_existential_1Tm(v538);
        MEMORY[0x266780880](v170, -1, -1);
        MEMORY[0x266780880](v169, -1, -1);
      }

      else
      {

        v166 = *(v155 + 8);
        v166(v156, v154);
      }

      v532(v517, v524);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v212 = swift_allocObject();
      *(v212 + 16) = xmmword_266267E70;
      v213 = [objc_opt_self() unsupportedForReason_];
LABEL_69:
      *(v212 + 32) = v213;
      v531(v212);

      return (v166)(v529, v154);
    }

    v535 = v111;
    v196 = v536;
    if (v153 == *MEMORY[0x277D555A0])
    {
      (v537)(v514, v525, v151);
      v197 = v513;
      (*(v196 + 16))(v513, v118, v154);
      v198 = sub_266266968();
      v199 = sub_266266D68();
      if (os_log_type_enabled(v198, v199))
      {
        v200 = swift_slowAlloc();
        v537 = v200;
        v538 = swift_slowAlloc();
        v543 = v538;
        *v200 = 136446210;
        v201 = v112;
        v202 = v528;
        sub_2662665C8();
        v203 = sub_266265EA8();
        v204 = v196;
        v205 = v154;
        v207 = v206;
        v201(v202, v113);
        v166 = *(v204 + 8);
        v166(v197, v205);
        v208 = sub_26621EAF0(v203, v207, &v543);
        v154 = v205;

        v209 = v537;
        *(v537 + 4) = v208;
        v210 = v209;
        _os_log_impl(&dword_266219000, v198, v199, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, create radio failed", v209, 0xCu);
        v211 = v538;
        __swift_destroy_boxed_opaque_existential_1Tm(v538);
        MEMORY[0x266780880](v211, -1, -1);
        MEMORY[0x266780880](v210, -1, -1);
      }

      else
      {

        v166 = *(v196 + 8);
        v166(v197, v154);
      }

      v532(v514, v524);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v212 = swift_allocObject();
      *(v212 + 16) = xmmword_266267E70;
      v213 = [objc_opt_self() unsupportedForReason_];
      goto LABEL_69;
    }

    if (v153 == *MEMORY[0x277D555A8])
    {
      (v537)(v512, v525, v151);
      v214 = v511;
      (*(v196 + 16))(v511, v118, v154);
      v215 = sub_266266968();
      v216 = sub_266266D68();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        v537 = v217;
        v538 = swift_slowAlloc();
        v543 = v538;
        *v217 = 136446210;
        v218 = v112;
        v219 = v528;
        sub_2662665C8();
        v220 = sub_266265EA8();
        v221 = v196;
        v222 = v154;
        v224 = v223;
        v218(v219, v113);
        v166 = *(v221 + 8);
        v166(v214, v222);
        v225 = sub_26621EAF0(v220, v224, &v543);
        v154 = v222;

        v226 = v537;
        *(v537 + 4) = v225;
        v227 = v226;
        _os_log_impl(&dword_266219000, v215, v216, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, playback device not found", v226, 0xCu);
        v228 = v538;
        __swift_destroy_boxed_opaque_existential_1Tm(v538);
        MEMORY[0x266780880](v228, -1, -1);
        MEMORY[0x266780880](v227, -1, -1);
      }

      else
      {

        v166 = *(v196 + 8);
        v166(v214, v154);
      }

      v532(v512, v524);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v212 = swift_allocObject();
      *(v212 + 16) = xmmword_266267E70;
      v213 = [objc_opt_self() unsupportedForReason_];
      goto LABEL_69;
    }

    if (v153 == *MEMORY[0x277D555B0])
    {
      v247 = v510;
      v248 = v151;
      (v537)(v510, v525, v151);
      v249 = v509;
      (*(v196 + 16))(v509, v118, v154);
      v250 = sub_266266968();
      v251 = sub_266266D68();
      if (os_log_type_enabled(v250, v251))
      {
        v252 = swift_slowAlloc();
        v538 = swift_slowAlloc();
        v543 = v538;
        *v252 = 136446210;
        v253 = v112;
        v254 = v528;
        sub_2662665C8();
        v537 = sub_266265EA8();
        v255 = v249;
        v256 = v196;
        v257 = v154;
        v259 = v258;
        v253(v254, v113);
        v166 = *(v256 + 8);
        v166(v255, v257);
        v260 = sub_26621EAF0(v537, v259, &v543);
        v154 = v257;

        *(v252 + 4) = v260;
        _os_log_impl(&dword_266219000, v250, v251, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, explicit content disabled", v252, 0xCu);
        v261 = v538;
        __swift_destroy_boxed_opaque_existential_1Tm(v538);
        MEMORY[0x266780880](v261, -1, -1);
        MEMORY[0x266780880](v252, -1, -1);

        v262 = v510;
        v263 = v524;
      }

      else
      {

        v278 = v249;
        v166 = *(v196 + 8);
        v166(v278, v154);
        v262 = v247;
        v263 = v248;
      }

      v532(v262, v263);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v212 = swift_allocObject();
      *(v212 + 16) = xmmword_266267E70;
      v213 = [objc_opt_self() unsupportedForReason_];
      goto LABEL_69;
    }

    if (v153 == *MEMORY[0x277D555B8])
    {
      (v537)(v508);
      v264 = v506;
      (*(v196 + 16))(v506, v118, v154);
      v265 = sub_266266968();
      v266 = sub_266266D68();
      if (os_log_type_enabled(v265, v266))
      {
        v267 = v264;
        v268 = swift_slowAlloc();
        v269 = swift_slowAlloc();
        v543 = v269;
        *v268 = 136446210;
        v270 = v528;
        LODWORD(v534) = v266;
        sub_2662665C8();
        v271 = sub_266265EA8();
        v272 = v112;
        v273 = v196;
        v274 = v154;
        v276 = v275;
        v272(v270, v527);
        v535 = *(v273 + 8);
        v535(v267, v274);
        v277 = sub_26621EAF0(v271, v276, &v543);
        v154 = v274;

        *(v268 + 4) = v277;
        _os_log_impl(&dword_266219000, v265, v534, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, requested content not found", v268, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v269);
        MEMORY[0x266780880](v269, -1, -1);
        v118 = v529;
        MEMORY[0x266780880](v268, -1, -1);
      }

      else
      {

        v535 = *(v196 + 8);
        v535(v264, v154);
      }

      v532(v508, v524);
      if (sub_266266E28())
      {
        v297 = v502;
        v298 = v151;
        (v537)();
        v299 = v507;

        v300 = sub_266266968();
        v301 = sub_266266D68();

        if (os_log_type_enabled(v300, v301))
        {
          v302 = swift_slowAlloc();
          v303 = swift_slowAlloc();
          v543 = v303;
          *v302 = 136315138;
          v304 = MEMORY[0x26677FD90](v299, MEMORY[0x277D837D0]);
          v306 = v154;
          v307 = sub_26621EAF0(v304, v305, &v543);

          *(v302 + 4) = v307;
          v154 = v306;
          _os_log_impl(&dword_266219000, v300, v301, "INPlayMediaIntentHandler#resolveMediaItems (notFound) got signal indicating invalid AMP token for user(s) - %s", v302, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v303);
          MEMORY[0x266780880](v303, -1, -1);
          v118 = v529;
          MEMORY[0x266780880](v302, -1, -1);
        }

        v532(v297, v298);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v351 = swift_allocObject();
        *(v351 + 16) = xmmword_266267E70;
        v352 = [objc_opt_self() unsupportedForReason_];
      }

      else if (sub_266266DB8())
      {
        v325 = v498;
        v326 = v151;
        (v537)();
        v327 = v507;

        v328 = sub_266266968();
        v329 = sub_266266D68();

        if (os_log_type_enabled(v328, v329))
        {
          v330 = swift_slowAlloc();
          v331 = swift_slowAlloc();
          v543 = v331;
          *v330 = 136315138;
          v332 = MEMORY[0x26677FD90](v327, MEMORY[0x277D837D0]);
          v334 = v154;
          v335 = sub_26621EAF0(v332, v333, &v543);

          *(v330 + 4) = v335;
          v154 = v334;
          _os_log_impl(&dword_266219000, v328, v329, "INPlayMediaIntentHandler#resolveMediaItems (notFound) got signal indicating have AmpError for user(s) - %s", v330, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v331);
          MEMORY[0x266780880](v331, -1, -1);
          v118 = v529;
          MEMORY[0x266780880](v330, -1, -1);
        }

        v532(v325, v326);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v351 = swift_allocObject();
        *(v351 + 16) = xmmword_266267E70;
        v352 = [objc_opt_self() unsupportedForReason_];
      }

      else
      {
        if (sub_266266E18())
        {
          v371 = v492;
          v372 = v151;
          (v537)();
          v373 = v507;

          v374 = sub_266266968();
          v375 = sub_266266D48();

          if (os_log_type_enabled(v374, v375))
          {
            v376 = swift_slowAlloc();
            v377 = swift_slowAlloc();
            v543 = v377;
            *v376 = 136315138;
            v378 = MEMORY[0x26677FD90](v373, MEMORY[0x277D837D0]);
            v380 = v154;
            v381 = sub_26621EAF0(v378, v379, &v543);

            *(v376 + 4) = v381;
            v154 = v380;
            _os_log_impl(&dword_266219000, v374, v375, "INPlayMediaIntentHandler#resolveMediaItems (notFound) got signal indicating unsafe self harm query - %s", v376, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v377);
            MEMORY[0x266780880](v377, -1, -1);
            v118 = v529;
            MEMORY[0x266780880](v376, -1, -1);
          }

          v532(v371, v372);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v351 = swift_allocObject();
        *(v351 + 16) = xmmword_266267E70;
        sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
        v352 = [swift_getObjCClassFromMetadata() unsupported];
      }

      *(v351 + 32) = v352;
      v531(v351);

      v428 = v118;
      return (v535)(v428, v154);
    }

    if (v153 == *MEMORY[0x277D55588])
    {
      v534 = v112;
      v279 = v525;
      (v537)(v505);
      v280 = v503;
      (*(v196 + 16))(v503, v106, v154);
      v281 = sub_266266968();
      v282 = sub_266266D68();
      if (os_log_type_enabled(v281, v282))
      {
        v283 = swift_slowAlloc();
        v533 = swift_slowAlloc();
        v543 = v533;
        *v283 = 136446210;
        v284 = v280;
        v285 = v528;
        sub_2662665C8();
        v286 = sub_266265EA8();
        v287 = v196;
        v288 = v154;
        v290 = v289;
        v534(v285, v527);
        v291 = *(v287 + 8);
        v291(v284, v288);
        v292 = sub_26621EAF0(v286, v290, &v543);
        v154 = v288;
        v279 = v525;

        *(v283 + 4) = v292;
        v293 = v282;
        v294 = v291;
        _os_log_impl(&dword_266219000, v281, v293, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, empty library", v283, 0xCu);
        v295 = v533;
        __swift_destroy_boxed_opaque_existential_1Tm(v533);
        MEMORY[0x266780880](v295, -1, -1);
        v296 = v283;
        v118 = v529;
        MEMORY[0x266780880](v296, -1, -1);
      }

      else
      {

        v294 = *(v196 + 8);
        v294(v280, v154);
      }

      v532(v505, v524);
      v336 = v504;
      if (sub_266266E28())
      {
        v337 = v499;
        v338 = v279;
        v339 = v151;
        (v537)(v499, v338, v151);
        v340 = v507;

        v341 = sub_266266968();
        v342 = sub_266266D68();

        if (os_log_type_enabled(v341, v342))
        {
          v343 = swift_slowAlloc();
          v535 = v294;
          v344 = v343;
          v345 = swift_slowAlloc();
          v543 = v345;
          *v344 = 136315138;
          v346 = MEMORY[0x26677FD90](v340, MEMORY[0x277D837D0]);
          v348 = v154;
          v349 = sub_26621EAF0(v346, v347, &v543);

          *(v344 + 4) = v349;
          v154 = v348;
          _os_log_impl(&dword_266219000, v341, v342, "INPlayMediaIntentHandler#resolveMediaItems (emptyLibrary) got signal indicating invalid AMP token for user(s) - %s", v344, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v345);
          MEMORY[0x266780880](v345, -1, -1);
          v350 = v344;
          v118 = v529;
          v294 = v535;
          MEMORY[0x266780880](v350, -1, -1);
        }

        v532(v337, v339);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v397 = swift_allocObject();
        *(v397 + 16) = xmmword_266267E70;
        v398 = [objc_opt_self() unsupportedForReason_];
        goto LABEL_124;
      }

      if (sub_266266DB8())
      {
        v382 = v493;
        v383 = v151;
        (v537)(v493, v279, v151);
        v384 = v507;

        v385 = sub_266266968();
        v386 = sub_266266D68();

        if (os_log_type_enabled(v385, v386))
        {
          v387 = swift_slowAlloc();
          v535 = v294;
          v388 = v118;
          v389 = v387;
          v390 = swift_slowAlloc();
          v543 = v390;
          *v389 = 136315138;
          v391 = MEMORY[0x26677FD90](v384, MEMORY[0x277D837D0]);
          v393 = v154;
          v394 = sub_26621EAF0(v391, v392, &v543);

          *(v389 + 4) = v394;
          v154 = v393;
          _os_log_impl(&dword_266219000, v385, v386, "INPlayMediaIntentHandler#resolveMediaItems (emptyLibrary) got signal indicating have AmpError for user(s) - %s", v389, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v390);
          MEMORY[0x266780880](v390, -1, -1);
          v395 = v389;
          v118 = v388;
          v294 = v535;
          MEMORY[0x266780880](v395, -1, -1);

          v532(v382, v524);
        }

        else
        {

          v532(v382, v383);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v397 = swift_allocObject();
        *(v397 + 16) = xmmword_266267E70;
        v398 = [objc_opt_self() unsupportedForReason_];
LABEL_124:
        *(v397 + 32) = v398;
        v531(v397);

        return (v294)(v118, v154);
      }

      if (sub_266266E18())
      {
        v414 = v151;
        (v537)(v336, v279, v151);
        v415 = v507;

        v416 = sub_266266968();
        v417 = sub_266266D48();

        if (os_log_type_enabled(v416, v417))
        {
          v418 = swift_slowAlloc();
          v535 = v294;
          v419 = v118;
          v420 = v418;
          v421 = swift_slowAlloc();
          v543 = v421;
          *v420 = 136315138;
          v422 = MEMORY[0x26677FD90](v415, MEMORY[0x277D837D0]);
          v424 = v154;
          v425 = sub_26621EAF0(v422, v423, &v543);

          *(v420 + 4) = v425;
          v154 = v424;
          _os_log_impl(&dword_266219000, v416, v417, "INPlayMediaIntentHandler#resolveMediaItems (emptyLibrary) got signal indicating unsafe self harm query - %s", v420, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v421);
          MEMORY[0x266780880](v421, -1, -1);
          v426 = v420;
          v118 = v419;
          v294 = v535;
          MEMORY[0x266780880](v426, -1, -1);

          v532(v336, v524);
        }

        else
        {

          v532(v336, v414);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v397 = swift_allocObject();
        *(v397 + 16) = xmmword_266267E70;
        sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
        v398 = [swift_getObjCClassFromMetadata() unsupported];
        goto LABEL_124;
      }

      v437 = v491;
      swift_beginAccess();
      v438 = *(v437 + 16);
      if (v438)
      {
        v535 = v294;
        v439 = v488;
        (v537)(v488, v279, v151);
        v440 = v438;
        v441 = v439;
        v442 = v440;
        v443 = sub_266266968();
        v444 = sub_266266D78();

        v445 = os_log_type_enabled(v443, v444);
        v534 = v442;
        if (v445)
        {
          v446 = v154;
          v447 = swift_slowAlloc();
          v448 = swift_slowAlloc();
          v542 = v448;
          *v447 = 136446210;
          v449 = [v442 identifier];
          if (v449)
          {
            v450 = v449;
            v451 = sub_266266A58();
            v453 = v452;
          }

          else
          {
            v451 = 0;
            v453 = 0;
          }

          v541[0] = v451;
          v541[1] = v453;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
          v461 = sub_266266A68();
          v463 = sub_26621EAF0(v461, v462, &v542);

          *(v447 + 4) = v463;
          _os_log_impl(&dword_266219000, v443, v444, "INPlayMediaIntentHandler#resolveMediaItems fallback item available for implicit recommendation: %{public}s", v447, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v448);
          MEMORY[0x266780880](v448, -1, -1);
          MEMORY[0x266780880](v447, -1, -1);

          v532(v441, v151);
          v154 = v446;
          v279 = v525;
        }

        else
        {

          v532(v441, v151);
        }

        v464 = [v523 backingStore];
        objc_opt_self();
        v465 = swift_dynamicCastObjCClass();
        if (v465)
        {
          v466 = v465;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
          v467 = swift_allocObject();
          *(v467 + 16) = xmmword_266267E70;
          v468 = v534;
          *(v467 + 32) = v534;
          sub_266228130(0, &qword_280069AF8, 0x277CD4360);
          v469 = v468;
          v470 = sub_266266B98();

          [v466 setMediaItems_];

          v464 = v470;
        }

        v471 = v523;
        sub_266266EB8();
        v472 = v489;
        v473 = v279;
        v474 = v151;
        (v537)(v489, v473, v151);
        v475 = v471;
        v476 = sub_266266968();
        v477 = sub_266266D78();

        if (os_log_type_enabled(v476, v477))
        {
          v478 = v154;
          v479 = swift_slowAlloc();
          v480 = swift_slowAlloc();
          v541[0] = v480;
          *v479 = 136446210;
          v481 = sub_266266DE8();
          v483 = sub_26621EAF0(v481, v482, v541);

          *(v479 + 4) = v483;
          v484 = v529;
          _os_log_impl(&dword_266219000, v476, v477, "INPlayMediaIntentHandler#resolveMediaItems restarting resolveMediaItems with intent: %{public}s", v479, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v480);
          MEMORY[0x266780880](v480, -1, -1);
          v485 = v479;
          v154 = v478;
          MEMORY[0x266780880](v485, -1, -1);

          v532(v472, v474);
        }

        else
        {

          v532(v472, v151);
          v484 = v529;
        }

        v486 = v534;
        INPlayMediaIntentHandler.resolveMediaItems(for:with:)(v475, v531, v530);

        v428 = v484;
        return (v535)(v428, v154);
      }

      v454 = v294;
      v455 = v487;
      (v537)(v487, v279, v151);
      v456 = sub_266266968();
      v457 = sub_266266D68();
      if (os_log_type_enabled(v456, v457))
      {
        v458 = swift_slowAlloc();
        *v458 = 0;
        _os_log_impl(&dword_266219000, v456, v457, "INPlayMediaIntentHandler#resolveMediaItems no fallback search item available for empty library result", v458, 2u);
        v459 = v458;
        v455 = v487;
        MEMORY[0x266780880](v459, -1, -1);
      }

      v532(v455, v151);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v460 = swift_allocObject();
      *(v460 + 16) = xmmword_266267E70;
      *(v460 + 32) = [objc_opt_self() unsupportedForReason_];
      v531(v460);

      return v454(v118, v154);
    }

    else
    {
      if (v153 == *MEMORY[0x277D55590])
      {
        v308 = v501;
        v309 = v151;
        (v537)(v501, v525, v151);
        v310 = v500;
        (*(v196 + 16))(v500, v118, v154);
        v311 = sub_266266968();
        v312 = sub_266266D68();
        if (os_log_type_enabled(v311, v312))
        {
          v313 = swift_slowAlloc();
          v538 = swift_slowAlloc();
          v543 = v538;
          *v313 = 136446210;
          v314 = v112;
          v315 = v528;
          sub_2662665C8();
          v537 = sub_266265EA8();
          v316 = v310;
          v317 = v196;
          v318 = v154;
          v320 = v319;
          v314(v315, v113);
          v166 = *(v317 + 8);
          v166(v316, v318);
          v321 = sub_26621EAF0(v537, v320, &v543);
          v154 = v318;

          *(v313 + 4) = v321;
          _os_log_impl(&dword_266219000, v311, v312, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, need network to play content", v313, 0xCu);
          v322 = v538;
          __swift_destroy_boxed_opaque_existential_1Tm(v538);
          MEMORY[0x266780880](v322, -1, -1);
          MEMORY[0x266780880](v313, -1, -1);

          v323 = v501;
          v324 = v524;
        }

        else
        {

          v396 = v310;
          v166 = *(v196 + 8);
          v166(v396, v154);
          v323 = v308;
          v324 = v309;
        }

        v532(v323, v324);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v212 = swift_allocObject();
        *(v212 + 16) = xmmword_266267E70;
        v213 = [objc_opt_self() unsupportedForReason_];
        goto LABEL_69;
      }

      v353 = (v536 + 16);
      if (v153 == *MEMORY[0x277D55598])
      {
        v354 = v496;
        v355 = v151;
        (v537)(v496, v525, v151);
        v356 = v522;
        (*v353)(v522, v118, v154);
        v357 = sub_266266968();
        v358 = sub_266266D68();
        if (os_log_type_enabled(v357, v358))
        {
          v359 = swift_slowAlloc();
          v538 = swift_slowAlloc();
          v543 = v538;
          *v359 = 136446210;
          v360 = v112;
          v361 = v528;
          sub_2662665C8();
          v537 = sub_266265EA8();
          v362 = v356;
          v363 = v196;
          v364 = v154;
          v366 = v365;
          v360(v361, v113);
          v166 = *(v363 + 8);
          v166(v362, v364);
          v367 = sub_26621EAF0(v537, v366, &v543);
          v154 = v364;

          *(v359 + 4) = v367;
          _os_log_impl(&dword_266219000, v357, v358, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, need subscription to play podcast content", v359, 0xCu);
          v368 = v538;
          __swift_destroy_boxed_opaque_existential_1Tm(v538);
          MEMORY[0x266780880](v368, -1, -1);
          MEMORY[0x266780880](v359, -1, -1);

          v369 = v496;
          v370 = v524;
        }

        else
        {

          v427 = v356;
          v166 = *(v196 + 8);
          v166(v427, v154);
          v369 = v354;
          v370 = v355;
        }

        v532(v369, v370);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v212 = swift_allocObject();
        *(v212 + 16) = xmmword_266267E70;
        v213 = [objc_opt_self() unsupportedForReason_];
        goto LABEL_69;
      }

      v534 = v112;
      v399 = v497;
      v400 = v151;
      (v537)(v497, v525, v151);
      v401 = v494;
      (*v353)(v494, v118, v154);
      v402 = sub_266266968();
      v403 = sub_266266D68();
      if (os_log_type_enabled(v402, v403))
      {
        v404 = v154;
        v405 = swift_slowAlloc();
        v406 = swift_slowAlloc();
        v543 = v406;
        *v405 = 136446210;
        v407 = v528;
        sub_2662665C8();
        v408 = sub_266265EA8();
        v410 = v409;
        v534(v407, v527);
        v411 = *(v196 + 8);
        v537 = ((v196 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v538 = v411;
        (v411)(v401, v404);
        v412 = sub_26621EAF0(v408, v410, &v543);

        *(v405 + 4) = v412;
        _os_log_impl(&dword_266219000, v402, v403, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, returning temporary failure type: restrictedContent", v405, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v406);
        v413 = v406;
        v117 = v527;
        MEMORY[0x266780880](v413, -1, -1);
        MEMORY[0x266780880](v405, -1, -1);

        v532(v497, v524);
      }

      else
      {

        v429 = *(v196 + 8);
        v537 = ((v196 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v538 = v429;
        (v429)(v401, v154);
        v532(v399, v400);
        v407 = v528;
      }

      sub_266266348();
      sub_2662665C8();
      sub_266265EA8();
      v430 = v534;
      v534(v407, v117);
      v543 = 0;
      v544 = 0xE000000000000000;
      sub_266267038();
      MEMORY[0x26677FCB0](0xD00000000000003ALL, 0x8000000266269A50);
      v431 = v495;
      sub_2662665C8();
      v432 = v117;
      v433 = sub_266265EA8();
      v435 = v434;
      v430(v431, v432);
      MEMORY[0x26677FCB0](v433, v435);

      sub_266266338();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v436 = swift_allocObject();
      *(v436 + 16) = xmmword_266267E70;
      *(v436 + 32) = [objc_opt_self() unsupportedForReason_];
      v531(v436);

      (v538)(v529, v539);
      return (v430)(v520, v432);
    }
  }

  else
  {
    v539 = *v43;
    sub_266266F48();
    if (qword_280069538 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CF0, &qword_266268A38);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_266267DB0;
    *(v138 + 56) = v105;
    *(v138 + 64) = sub_2662658EC();
    *(v138 + 32) = 0x73736563637573;
    *(v138 + 40) = 0xE700000000000000;
    v139 = v533;
    sub_266266948();
    sub_266266918();

    (*(v534 + 1))(v139, v535);
    v140 = sub_266266F78();
    if (!v141)
    {
      v171 = v516;
      v144 = v44;
      v145 = v537;
      (v537)(v516, v93, v44);
      v172 = sub_266266968();
      v173 = sub_266266D68();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        *v174 = 0;
        _os_log_impl(&dword_266219000, v172, v173, "INPlayMediaIntentHandler#resolveMediaItems NO intentId for intent - not tracking continuation", v174, 2u);
        MEMORY[0x266780880](v174, -1, -1);
      }

      (v102)(v171, v44);
      goto LABEL_28;
    }

    v142 = v140;
    v104 = v141;
    v143 = v521;
    v144 = v44;
    v145 = v537;
    (v537)(v521, v93, v44);
    v146 = sub_266266968();
    v147 = sub_266266D48();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      _os_log_impl(&dword_266219000, v146, v147, "INPlayMediaIntentHandler#resolveMediaItems FOUND intentId for intent - tracking continuation", v148, 2u);
      v149 = v148;
      v143 = v521;
      MEMORY[0x266780880](v149, -1, -1);
    }

    (v102)(v143, v44);
    v150 = v539;
    if (qword_280069568 != -1)
    {
      swift_once();
    }

    if (v150)
    {
      goto LABEL_21;
    }

    if (qword_280069570 != -1)
    {
      goto LABEL_131;
    }

    while (1)
    {

LABEL_21:
      v543 = v142;
      v544 = v104;

      sub_266266148();
LABEL_28:
      v175 = v525;
      (v145)(v525, v93, v144);
      v93 = v522;

      v142 = sub_266266968();
      v176 = sub_266266D78();

      if (!os_log_type_enabled(v142, v176))
      {

        (v102)(v175, v144);
        goto LABEL_56;
      }

      v532 = v102;
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v543 = v178;
      *v177 = 136446210;
      v537 = v178;
      v102 = v93 >> 62 ? sub_266267078() : *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v145 = MEMORY[0x277D84F90];
      v538 = v177;
      if (!v102)
      {
        break;
      }

      v541[0] = MEMORY[0x277D84F90];
      sub_266261C90(0, v102 & ~(v102 >> 63), 0);
      if ((v102 & 0x8000000000000000) == 0)
      {
        LODWORD(v536) = v176;
        v524 = v144;
        v145 = v541[0];
        if ((v93 & 0xC000000000000001) != 0)
        {
          v179 = v93;
          v180 = 0;
          do
          {
            MEMORY[0x266780220](v180, v179);
            v181 = sub_266266CD8();
            v183 = v182;
            swift_unknownObjectRelease();
            v541[0] = v145;
            v185 = v145[2];
            v184 = v145[3];
            if (v185 >= v184 >> 1)
            {
              sub_266261C90((v184 > 1), v185 + 1, 1);
              v145 = v541[0];
            }

            ++v180;
            v145[2] = v185 + 1;
            v186 = &v145[2 * v185];
            v186[4] = v181;
            v186[5] = v183;
          }

          while (v102 != v180);
        }

        else
        {
          v229 = (v93 + 32);
          do
          {
            v230 = *v229;
            v231 = sub_266266CD8();
            v233 = v232;

            v541[0] = v145;
            v235 = v145[2];
            v234 = v145[3];
            if (v235 >= v234 >> 1)
            {
              sub_266261C90((v234 > 1), v235 + 1, 1);
              v145 = v541[0];
            }

            v145[2] = v235 + 1;
            v236 = &v145[2 * v235];
            v236[4] = v231;
            v236[5] = v233;
            ++v229;
            --v102;
          }

          while (v102);
        }

        v144 = v524;
        LOBYTE(v176) = v536;
        break;
      }

      __break(1u);
LABEL_131:
      swift_once();
    }

    v237 = MEMORY[0x26677FD90](v145, MEMORY[0x277D837D0]);
    v239 = v238;

    v240 = sub_26621EAF0(v237, v239, &v543);

    v241 = v538;
    *(v538 + 4) = v240;
    _os_log_impl(&dword_266219000, v142, v176, "INPlayMediaIntentHandler#resolveMediaItems completed successfully with items: %{public}s", v241, 0xCu);
    v242 = v537;
    __swift_destroy_boxed_opaque_existential_1Tm(v537);
    MEMORY[0x266780880](v242, -1, -1);
    MEMORY[0x266780880](v241, -1, -1);

    v532(v525, v144);
LABEL_56:
    v243 = objc_opt_self();
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v244 = sub_266266B98();
    v245 = [v243 successesWithResolvedMediaItems_];

    sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
    v246 = sub_266266BB8();

    v531(v246);
  }
}

uint64_t sub_266259D78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_266259DF0(uint64_t a1, uint64_t a2)
{
  sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
  v3 = sub_266266B98();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_266259E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266266988();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280069528;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v13, v6);
  v14 = sub_266266968();
  v15 = sub_266266D58();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266219000, v14, v15, "INPlayMediaIntentHandler: resolveNowPlayingItem resolving...", v16, 2u);
    MEMORY[0x266780880](v16, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v17 = *(a3 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nowPlaying + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nowPlaying), *(a3 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nowPlaying + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2662489AC;
  *(v18 + 24) = v11;
  sub_2662663B8();
}

uint64_t sub_26625A0BC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v76 = a3;
  v77 = a2;
  v75 = a1;
  v3 = sub_266266038();
  v71 = *(v3 - 8);
  v4 = *(v71 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v70 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v72 = &v70 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - v9;
  v11 = sub_266266988();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v73 = &v70 - v15;
  v16 = sub_266266398();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069700, qword_266268010);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v70 - v26;
  sub_266228524(v75, &v70 - v26, &unk_280069700, qword_266268010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v17 + 32))(v23, v27, v16);
    v28 = v23;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v29 = v79;
    v30 = __swift_project_value_buffer(v79, static Logger.default);
    swift_beginAccess();
    v31 = v78;
    v32 = v73;
    (*(v78 + 16))(v73, v30, v29);
    v33 = *(v17 + 16);
    v75 = v28;
    v33(v21, v28, v16);
    v34 = sub_266266968();
    v35 = sub_266266D68();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v80 = v74;
      *v36 = 136446210;
      sub_2662630A0(&unk_280069720, MEMORY[0x277D556C8]);
      LODWORD(v72) = v35;
      v37 = sub_266267108();
      v39 = v38;
      v40 = *(v17 + 8);
      v40(v21, v16);
      v41 = sub_26621EAF0(v37, v39, &v80);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_266219000, v34, v72, "INPlayMediaIntentHandler: resolveNowPlayingMediaItem nowPlaying item error: %{public}s", v36, 0xCu);
      v42 = v74;
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x266780880](v42, -1, -1);
      MEMORY[0x266780880](v36, -1, -1);

      (*(v31 + 8))(v73, v79);
    }

    else
    {

      v40 = *(v17 + 8);
      v40(v21, v16);
      (*(v31 + 8))(v32, v29);
    }

    v77(0);
    return (v40)(v75, v16);
  }

  else
  {
    v43 = v71;
    (*(v71 + 32))(v10, v27, v3);
    v44 = v10;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v45 = v79;
    v46 = __swift_project_value_buffer(v79, static Logger.default);
    swift_beginAccess();
    v47 = v78;
    v48 = v74;
    (*(v78 + 16))(v74, v46, v45);
    v49 = *(v43 + 16);
    v50 = v72;
    v49(v72, v10, v3);
    v51 = sub_266266968();
    v52 = sub_266266D78();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v73 = v44;
      v54 = v3;
      v55 = v53;
      v56 = swift_slowAlloc();
      v80 = v56;
      *v55 = 136446210;
      v49(v70, v50, v54);
      v57 = sub_266266A68();
      v59 = v58;
      v60 = *(v43 + 8);
      v75 = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = v50;
      v62 = v60;
      v60(v61, v54);
      v63 = sub_26621EAF0(v57, v59, &v80);

      *(v55 + 4) = v63;
      _os_log_impl(&dword_266219000, v51, v52, "INPlayMediaIntentHandler: resolveNowPlayingMediaItem now playing: %{public}s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x266780880](v56, -1, -1);
      v64 = v55;
      v3 = v54;
      v44 = v73;
      MEMORY[0x266780880](v64, -1, -1);

      (*(v78 + 8))(v74, v79);
    }

    else
    {

      v66 = *(v43 + 8);
      v75 = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v67 = v50;
      v62 = v66;
      v66(v67, v3);
      (*(v47 + 8))(v48, v79);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    sub_266265FF8();
    sub_266265FC8();
    v69 = sub_266266CB8();

    *(v68 + 32) = v69;
    v77(v68);

    return v62(v44, v3);
  }
}

uint64_t INPlayMediaIntentHandler.handle(intent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = sub_266266958();
  v33 = *(v35 - 8);
  v5 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](v35);
  MEMORY[0x28223BE20](v6);
  v32 = &v32 - v7;
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_266266968();
  v15 = sub_266266D78();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a3;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_266219000, v14, v15, "INPlayMediaIntentHandler#handle...", v17, 2u);
    v18 = v17;
    a3 = v16;
    MEMORY[0x266780880](v18, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = qword_280069538;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = logObject;
  v22 = v32;
  sub_266266938();
  v23 = v33;
  v24 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v35;
  (*(v33 + 16))(v24, v22);
  v26 = (*(v23 + 80) + 33) & ~*(v23 + 80);
  v27 = (v5 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = "playMediaIntentHandlerHandle";
  *(v28 + 24) = 28;
  *(v28 + 32) = 2;
  (*(v23 + 32))(v28 + v26, v24, v25);
  v29 = (v28 + v27);
  *v29 = sub_266245390;
  v29[1] = v19;

  sub_266266F38();
  sub_266266918();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_266262CEC;
  *(v30 + 24) = v28;
  MEMORY[0x28223BE20](v30);
  sub_266228130(0, &unk_280069BF8, 0x277CD3EC8);

  sub_266265E08();

  return (*(v23 + 8))(v22, v35);
}

void sub_26625ADDC(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v83 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069CB8, &qword_2662689F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v77 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v77 - v14);
  v16 = sub_266266988();
  v84 = *(v16 - 8);
  v85 = v16;
  v17 = *(v84 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v78 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v81 = &v77 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v86 = a2;

  v25 = [a3 mediaItems];
  if (!v25)
  {

    if (qword_280069528 == -1)
    {
LABEL_15:
      v43 = v85;
      v44 = __swift_project_value_buffer(v85, static Logger.default);
      swift_beginAccess();
      v45 = v84;
      (*(v84 + 16))(v23, v44, v43);
      v46 = sub_266266968();
      v47 = sub_266266D68();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_266219000, v46, v47, "INPlayMediaIntentHandler#handle Unexpected nil or empty items in handle", v48, 2u);
        MEMORY[0x266780880](v48, -1, -1);
      }

      (*(v45 + 8))(v23, v43);
      v49 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v50 = sub_266266A48();
      v51 = [v49 initWithActivityType_];

      v42 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:v51];
      v87 = v42;
      (a1)(&v87);
      goto LABEL_29;
    }

LABEL_33:
    swift_once();
    goto LABEL_15;
  }

  v26 = v25;
  v79 = a1;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  a1 = sub_266266BB8();

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_23:

    v53 = 0;
    goto LABEL_24;
  }

  if (!sub_266267078())
  {
    goto LABEL_23;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_33;
  }

  v27 = MEMORY[0x266780220](0, a1);
LABEL_7:
  v28 = v27;
  v29 = [v27 type];

  if (v29 == 18 && (sub_266266E48() & 1) != 0)
  {

    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v30 = v85;
    v31 = __swift_project_value_buffer(v85, static Logger.default);
    swift_beginAccess();
    v32 = v84;
    v33 = v78;
    (*(v84 + 16))(v78, v31, v30);
    v34 = sub_266266968();
    v35 = sub_266266D68();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v79;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266219000, v34, v35, "INPlayMediaIntentHandler#convert Unexpected music result for news podcast request", v38, 2u);
      MEMORY[0x266780880](v38, -1, -1);
    }

    (*(v32 + 8))(v33, v30);
    v39 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v40 = sub_266266A48();
    v41 = [v39 initWithActivityType_];

    v42 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:v41];
    v87 = v42;
    v37(&v87);
LABEL_29:

    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v52 = MEMORY[0x266780220](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v52 = *(a1 + 32);
  }

  v53 = v52;

LABEL_24:
  v54 = v83;
  sub_26625E210(v53, a3, v10);

  v55 = v82;
  v56 = (*(v82 + 48))(v10, 1, v11);
  v29 = v79;
  if (v56 == 1)
  {

    sub_26622858C(v10, &unk_280069CB8, &qword_2662689F8);
    if (qword_280069528 == -1)
    {
LABEL_26:
      v57 = v85;
      v58 = __swift_project_value_buffer(v85, static Logger.default);
      swift_beginAccess();
      v59 = v84;
      v60 = v81;
      (*(v84 + 16))(v81, v58, v57);
      v61 = sub_266266968();
      v62 = sub_266266D48();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_266219000, v61, v62, "INPlayMediaIntentHandler#handle Problem converting intent to Playback objects", v63, 2u);
        MEMORY[0x266780880](v63, -1, -1);
      }

      (*(v59 + 8))(v60, v57);
      v64 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v65 = sub_266266A48();
      v66 = [v64 initWithActivityType_];

      v42 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:v66];
      v87 = v42;
      v29(&v87);
      goto LABEL_29;
    }

LABEL_36:
    swift_once();
    goto LABEL_26;
  }

  sub_266263128(v10, v15);
  v67 = sub_266266F78();
  v69 = v68;
  v85 = *v15;
  v86 = v67;
  v70 = *(v11 + 48);
  v71 = v80;
  sub_266228524(v15, v80, &qword_280069C70, &qword_2662689D0);
  v72 = (*(v55 + 80) + 40) & ~*(v55 + 80);
  v73 = (v12 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v74[2] = sub_2662489AC;
  v74[3] = v24;
  v74[4] = a3;
  sub_266263128(v71, v74 + v72);
  *(v74 + v73) = v54;
  v75 = a3;
  v76 = v54;
  sub_26625DD88(v86, v69, v85, (v15 + v70), sub_2662632B0, v74);

  sub_26622858C(v15, &qword_280069C70, &qword_2662689D0);
}

void sub_26625B754(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4, uint64_t a5, char *a6)
{
  v104 = a6;
  v109 = a5;
  v112 = a2;
  v113 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = &v102 - v10;
  v114 = sub_266266988();
  v110 = *(v114 - 8);
  v11 = *(v110 + 64);
  v12 = MEMORY[0x28223BE20](v114);
  v111 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v102 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v106 = &v102 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v102 - v20;
  MEMORY[0x28223BE20](v19);
  v103 = &v102 - v21;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
  v22 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v24 = &v102 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CA8, &unk_2662689E8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v102 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = (&v102 - v33);
  sub_266228524(a1, &v102 - v33, &qword_280069CA8, &unk_2662689E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26622858C(v34, &qword_280069CA8, &unk_2662689E8);
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v35 = v114;
    v36 = __swift_project_value_buffer(v114, static Logger.default);
    swift_beginAccess();
    v37 = v110;
    (*(v110 + 16))(v111, v36, v35);
    sub_266228524(a1, v32, &qword_280069CA8, &unk_2662689E8);
    v38 = sub_266266968();
    v39 = sub_266266D68();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v115[0] = v41;
      *v40 = 136315138;
      sub_266228524(v32, v29, &qword_280069CA8, &unk_2662689E8);
      v42 = sub_266266A68();
      v44 = v43;
      sub_26622858C(v32, &qword_280069CA8, &unk_2662689E8);
      v45 = sub_26621EAF0(v42, v44, v115);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_266219000, v38, v39, "INPlayMediaIntentHandler#handle Error ensureWarm for content, returning temporary failure type: restrictedContent: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266780880](v41, -1, -1);
      MEMORY[0x266780880](v40, -1, -1);

      (*(v37 + 8))(v111, v114);
    }

    else
    {

      sub_26622858C(v32, &qword_280069CA8, &unk_2662689E8);
      (*(v37 + 8))(v111, v35);
    }

    v57 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v58 = sub_266266A48();
    v59 = [v57 initWithActivityType_];

    v60 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:10 userActivity:v59];
    v112(v60);
  }

  else
  {
    v46 = *v34;
    if (sub_266266DC8())
    {
      v47 = v114;
      v48 = v110;
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v49 = __swift_project_value_buffer(v47, static Logger.default);
      swift_beginAccess();
      (*(v48 + 16))(v16, v49, v47);
      v50 = sub_266266968();
      v51 = sub_266266D48();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_266219000, v50, v51, "INPlayMediaIntentHandler#resolveMediaItems GDPR needed, not immediately starting playback", v52, 2u);
        MEMORY[0x266780880](v52, -1, -1);
      }

      (*(v48 + 8))(v16, v47);
      v53 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v54 = sub_266266A48();
      v55 = [v53 initWithActivityType_];

      v56 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:2 userActivity:v55];
      v112(v56);
    }

    else
    {
      v61 = v109;
      sub_266228524(v109, v24, &qword_280069C70, &qword_2662689D0);
      v62 = *v24;

      v63 = v107;
      v64 = *(v107 + 48);
      v65 = sub_2662662E8();
      v66 = sub_266266308();
      (*(*(v66 - 8) + 8))(&v24[v64], v66);
      v67 = v114;
      v68 = v110;
      if (v65)
      {
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v69 = __swift_project_value_buffer(v67, static Logger.default);
        swift_beginAccess();
        v70 = *(v68 + 16);
        v70(v108, v69, v67);

        v71 = sub_266266968();
        v72 = sub_266266D48();
        v73 = os_log_type_enabled(v71, v72);
        v111 = v46;
        if (v73)
        {
          v74 = swift_slowAlloc();
          *v74 = 67109120;
          *(v74 + 4) = v46 != 0;

          _os_log_impl(&dword_266219000, v71, v72, "INPlayMediaIntentHandler#handle Playback was started during 'warm' phase, skipping specific-play, continuation? %{BOOL}d", v74, 8u);
          MEMORY[0x266780880](v74, -1, -1);
        }

        else
        {
        }

        v88 = *(v68 + 8);
        v88(v108, v67);
        v89 = sub_266266F78();
        if (v90)
        {
          v91 = v89;
          v92 = v90;
          v70(v106, v69, v67);
          v93 = sub_266266968();
          v94 = sub_266266D48();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            *v95 = 0;
            _os_log_impl(&dword_266219000, v93, v94, "INPlayMediaIntentHandler#handle FOUND identifier for intent - tracking continuation for wrapper flow frame", v95, 2u);
            MEMORY[0x266780880](v95, -1, -1);
          }

          v88(v106, v67);
          if (qword_280069568 != -1)
          {
            swift_once();
          }

          if (!v111)
          {
            if (qword_280069570 != -1)
            {
              swift_once();
            }
          }

          v115[0] = v91;
          v115[1] = v92;

          sub_266266148();
        }

        v96 = swift_allocObject();
        v97 = v113;
        *(v96 + 16) = v112;
        *(v96 + 24) = v97;
        v98 = sub_266266C58();
        v99 = v105;
        (*(*(v98 - 8) + 56))(v105, 1, 1, v98);
        v100 = swift_allocObject();
        v100[2] = 0;
        v100[3] = 0;
        v100[4] = a4;
        v100[5] = sub_266265B50;
        v100[6] = v96;
        v101 = a4;

        sub_266224324(0, 0, v99, &unk_266268A10, v100);
      }

      else
      {
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v75 = __swift_project_value_buffer(v67, static Logger.default);
        swift_beginAccess();
        v76 = v103;
        (*(v68 + 16))(v103, v75, v67);
        v77 = sub_266266968();
        v78 = sub_266266D48();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_266219000, v77, v78, "INPlayMediaIntentHandler#play ensureWarm complete - moving to play", v79, 2u);
          MEMORY[0x266780880](v79, -1, -1);
        }

        (*(v68 + 8))(v76, v67);
        v80 = v104;
        v81 = *&v104[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_playbackService];
        v82 = *v61;
        v83 = *(v63 + 48);
        v84 = swift_allocObject();
        v84[2] = a4;
        v84[3] = v80;
        v85 = v113;
        v84[4] = v112;
        v84[5] = v85;
        v86 = a4;
        v87 = v80;

        sub_2662660C8();
      }
    }
  }
}

uint64_t sub_26625C394(uint64_t a1, char *a2, uint64_t a3, void (*a4)(id), uint64_t a5)
{
  v89 = a4;
  v90 = a5;
  v88 = a2;
  v6 = sub_2662665E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v84 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = &v84 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v84 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v87 = (&v84 - v17);
  v18 = sub_266266988();
  v91 = *(v18 - 8);
  v92 = v18;
  v19 = *(v91 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v85 = &v84 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v84 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CA8, &unk_2662689E8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v84 - v29);
  sub_266228524(a1, &v84 - v29, &qword_280069CA8, &unk_2662689E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v14, v30, v6);
    v31 = v6;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v32 = v92;
    v33 = __swift_project_value_buffer(v92, static Logger.default);
    swift_beginAccess();
    v34 = v91;
    (*(v91 + 16))(v22, v33, v32);
    v35 = *(v7 + 16);
    v36 = v86;
    v88 = v14;
    v35(v86, v14, v31);
    v37 = sub_266266968();
    v38 = sub_266266D68();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v93[0] = v87;
      *v39 = 136315138;
      LODWORD(v85) = v38;
      v35(v84, v36, v31);
      v40 = sub_266266A68();
      v42 = v41;
      v43 = *(v7 + 8);
      v43(v36, v31);
      v44 = sub_26621EAF0(v40, v42, v93);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_266219000, v37, v85, "INPlayMediaIntentHandler#play Unexpected error playing content, code: %s", v39, 0xCu);
      v45 = v87;
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      MEMORY[0x266780880](v45, -1, -1);
      MEMORY[0x266780880](v39, -1, -1);

      (*(v91 + 8))(v22, v92);
    }

    else
    {

      v43 = *(v7 + 8);
      v43(v36, v31);
      (*(v34 + 8))(v22, v32);
    }

    v56 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v57 = sub_266266A48();
    v58 = [v56 initWithActivityType_];

    v59 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:v58];
    v89(v59);

    return (v43)(v88, v31);
  }

  else
  {
    v46 = *v30;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v47 = v92;
    v48 = __swift_project_value_buffer(v92, static Logger.default);
    swift_beginAccess();
    v49 = v91;
    v50 = *(v91 + 16);
    v50(v26, v48, v47);

    v51 = sub_266266968();
    v52 = sub_266266D48();
    v53 = os_log_type_enabled(v51, v52);
    v86 = v46;
    if (v53)
    {
      v54 = swift_slowAlloc();
      *v54 = 67109120;
      *(v54 + 4) = v46 != 0;

      _os_log_impl(&dword_266219000, v51, v52, " Successfully played content, continuation? %{BOOL}d", v54, 8u);
      v55 = v54;
      v47 = v92;
      MEMORY[0x266780880](v55, -1, -1);
    }

    else
    {
    }

    v61 = *(v49 + 8);
    v61(v26, v47);
    v62 = v88;
    v63 = sub_266266F78();
    if (v64)
    {
      v65 = v63;
      v66 = v64;
      v67 = v85;
      v50(v85, v48, v47);
      v68 = v67;

      v69 = sub_266266968();
      v70 = sub_266266D48();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = v47;
        v73 = swift_slowAlloc();
        v93[0] = v73;
        *v71 = 136446210;
        *(v71 + 4) = sub_26621EAF0(v65, v66, v93);
        _os_log_impl(&dword_266219000, v69, v70, "INPlayMediaIntentHandler#play FOUND intentId for intent: %{public}s - tracking continuation for wrapper flow frame", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        MEMORY[0x266780880](v73, -1, -1);
        v74 = v71;
        v62 = v88;
        MEMORY[0x266780880](v74, -1, -1);

        v75 = v68;
        v76 = v72;
      }

      else
      {

        v75 = v68;
        v76 = v47;
      }

      v61(v75, v76);
      v77 = v86;
      if (qword_280069568 != -1)
      {
        swift_once();
      }

      if (!v77)
      {
        if (qword_280069570 != -1)
        {
          swift_once();
        }
      }

      v93[0] = v65;
      v93[1] = v66;

      sub_266266148();
    }

    v78 = swift_allocObject();
    v79 = v90;
    *(v78 + 16) = v89;
    *(v78 + 24) = v79;
    v80 = sub_266266C58();
    v81 = v87;
    (*(*(v80 - 8) + 56))(v87, 1, 1, v80);
    v82 = swift_allocObject();
    v82[2] = 0;
    v82[3] = 0;
    v82[4] = v62;
    v82[5] = sub_266263480;
    v82[6] = v78;

    v83 = v62;
    sub_266224324(0, 0, v81, &unk_266268A18, v82);
  }
}

uint64_t sub_26625CCE4(void (*a1)(id))
{
  v2 = sub_266266988();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v8 = sub_266266A48();
  v9 = [v7 initWithActivityType_];

  v10 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:4 userActivity:v9];
  a1(v10);

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v11, v2);
  v12 = sub_266266968();
  v13 = sub_266266D48();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_266219000, v12, v13, "INPlayMediaIntentHandler#play completion called", v14, 2u);
    MEMORY[0x266780880](v14, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26625CF50(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_26625CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_266266378();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26625D0BC, 0, 0);
}

uint64_t sub_26625D0BC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_266266368();
  v4 = sub_266266358();
  v5 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_26625D1DC;
    v7 = *(v0 + 16);

    return static SuggestionsDonationProvider.donatePlayMediaIntentForSuggestions(intent:)(v7);
  }

  else
  {
    v9 = *(v0 + 56);
    v10 = *(v0 + 32);
    (*(v0 + 24))(v5);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_26625D1DC()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26625D2D8, 0, 0);
}

uint64_t sub_26625D2D8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  (*(v0 + 24))();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26625D348(void *a1, void (*a2)(unint64_t), uint64_t a3)
{
  v98 = a2;
  v99 = a3;
  v102 = a1;
  v3 = sub_266266988();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v95 = (&v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v97 = &v92 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v101 = (&v92 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v92 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v94 = &v92 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v92 - v17;
  if (qword_280069528 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v19 = __swift_project_value_buffer(v3, static Logger.default);
    swift_beginAccess();
    v20 = v4[2];
    v20(v18, v19, v3);
    v21 = sub_266266968();
    v22 = sub_266266D58();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v19;
      v24 = v20;
      v25 = v3;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_266219000, v21, v22, "INPlayMediaIntentHandler#item looking in private audiosearch results...", v26, 2u);
      v27 = v26;
      v3 = v25;
      v20 = v24;
      v19 = v23;
      MEMORY[0x266780880](v27, -1, -1);
    }

    v28 = v4[1];
    v100 = v4 + 1;
    v103 = v28;
    v28(v18, v3);
    v29 = [v102 privatePlayMediaIntentData];
    if (!v29)
    {
      goto LABEL_34;
    }

    v30 = v29;
    v31 = [v29 audioSearchResults];

    if (!v31)
    {
      goto LABEL_34;
    }

    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v32 = sub_266266BB8();

    if (v32 >> 62)
    {
      break;
    }

    if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_8:
    v33 = sub_266266CF8();

    v34 = v94;
    v20(v94, v19, v3);

    v35 = sub_266266968();
    v4 = sub_266266D78();

    if (!os_log_type_enabled(v35, v4))
    {

      v49 = v34;
      v50 = v3;
      goto LABEL_28;
    }

    v36 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v104 = v95;
    v96 = v36;
    *v36 = 136315138;
    if (v33 >> 62)
    {
      v18 = sub_266267078();
    }

    else
    {
      v18 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    LODWORD(v97) = v4;
    v101 = v35;
    v93 = v3;
    if (!v18)
    {
      v38 = MEMORY[0x277D84F90];
LABEL_27:
      v51 = MEMORY[0x26677FD90](v38, MEMORY[0x277D837D0]);
      v53 = v52;

      v54 = sub_26621EAF0(v51, v53, &v104);

      v55 = v96;
      *(v96 + 1) = v54;
      v56 = v101;
      _os_log_impl(&dword_266219000, v101, v97, "INPlayMediaIntentHandler#item using unique private server search results: %s", v55, 0xCu);
      v57 = v95;
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x266780880](v57, -1, -1);
      MEMORY[0x266780880](v55, -1, -1);

      v50 = v93;
      v49 = v94;
LABEL_28:
      v103(v49, v50);
      v98(v33);
    }

    v37 = 0;
    v102 = (v33 & 0xC000000000000001);
    v3 = v33 & 0xFFFFFFFFFFFFFF8;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v102)
      {
        v14 = v33;
        v39 = MEMORY[0x266780220](v37, v33);
      }

      else
      {
        if (v37 >= *(v3 + 16))
        {
          goto LABEL_30;
        }

        v14 = v33;
        v39 = *(v33 + 8 * v37 + 32);
      }

      v40 = v39;
      v41 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v4 = v18;
      v42 = sub_266266CD8();
      v44 = v43;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2662616F4(0, *(v38 + 2) + 1, 1, v38);
      }

      v46 = *(v38 + 2);
      v45 = *(v38 + 3);
      if (v46 >= v45 >> 1)
      {
        v38 = sub_2662616F4((v45 > 1), v46 + 1, 1, v38);
      }

      *(v38 + 2) = v46 + 1;
      v47 = &v38[16 * v46];
      *(v47 + 4) = v42;
      *(v47 + 5) = v44;
      ++v37;
      v18 = v4;
      v48 = v41 == v4;
      v33 = v14;
      if (v48)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  if (sub_266267078())
  {
    goto LABEL_8;
  }

LABEL_33:

LABEL_34:
  v20(v14, v19, v3);
  v58 = sub_266266968();
  v59 = sub_266266D68();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v93 = v3;
    v62 = v61;
    v104 = v61;
    *v60 = 136446210;
    v63 = sub_2662666D8();
    v94 = v14;
    v65 = v19;
    v66 = sub_26621EAF0(v63, v64, &v104);

    *(v60 + 4) = v66;
    v19 = v65;
    _os_log_impl(&dword_266219000, v58, v59, "INPlayMediaIntentHandler#item %{public}s Intent has missing or invalid audioSearchResults (possibly expected for createRadio or wholeLibrary queries)", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    v67 = v62;
    v3 = v93;
    MEMORY[0x266780880](v67, -1, -1);
    MEMORY[0x266780880](v60, -1, -1);

    v68 = v94;
  }

  else
  {

    v68 = v14;
  }

  v103(v68, v3);
  v69 = v19;
  v70 = v19;
  v71 = v20;
  v20(v101, v70, v3);
  v72 = sub_266266968();
  v73 = sub_266266D58();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v102;
  if (v74)
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_266219000, v72, v73, "INPlayMediaIntentHandler#item evaluating if create radio...", v76, 2u);
    MEMORY[0x266780880](v76, -1, -1);
  }

  v103(v101, v3);
  v77 = sub_266266EC8();
  if (sub_266266EE8())
  {
    v78 = sub_266266E68();
    if ((v77 & 1) == 0)
    {
      if ((v78 & 1) != 0 && (sub_266266EA8() & 1) == 0)
      {
        return sub_266262DC4(v98, v99);
      }

      goto LABEL_47;
    }

LABEL_45:
    v80 = v95;
    v71(v95, v69, v3);
    v81 = sub_266266968();
    v82 = sub_266266D78();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v104 = v84;
      *v83 = 136446210;
      v85 = sub_2662666D8();
      v87 = sub_26621EAF0(v85, v86, &v104);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_266219000, v81, v82, "INPlayMediaIntentHandler#item %{public}s Creating radio station from currently playing item", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x266780880](v84, -1, -1);
      MEMORY[0x266780880](v83, -1, -1);
    }

    v103(v80, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    *(v91 + 32) = sub_266266CB8();
    v98(v91);
  }

  if (v77)
  {
    goto LABEL_45;
  }

LABEL_47:
  v71(v97, v69, v3);
  v88 = sub_266266968();
  v89 = sub_266266D78();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_266219000, v88, v89, "INPlayMediaIntentHandler#item not create radio, trying local search as fallback", v90, 2u);
    MEMORY[0x266780880](v90, -1, -1);
  }

  v103(v97, v3);
  return sub_266260BB0(v75, 0, 0, v98, v99);
}

uint64_t sub_26625DD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CA8, &unk_2662689E8);
  v8 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v10 = (&v35 - v9);
  v11 = sub_266266988();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  if (!a2)
  {
    goto LABEL_10;
  }

  if (qword_280069568 != -1)
  {
    swift_once();
  }

  v43[1] = a1;
  v43[2] = a2;
  v19 = sub_266266128();
  if (v19)
  {
    v20 = v19;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v16, v21, v11);

    v22 = sub_266266968();
    v23 = sub_266266D48();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = a2;
      v43[0] = v38;
      *v24 = 136446210;
      v41 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
      v25 = sub_266266A68();
      v27 = sub_26621EAF0(v25, v26, v43);

      *(v24 + 4) = v27;
      _os_log_impl(&dword_266219000, v22, v23, "INPlayMediaIntentHandler#ensureWarm Found continuation from previous 'resolve' for intentId: %{public}s", v24, 0xCu);
      v28 = v38;
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266780880](v28, -1, -1);
      MEMORY[0x266780880](v24, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
    *v10 = v20;
    swift_storeEnumTagMultiPayload();

    v39(v10);

    return sub_26622858C(v10, &qword_280069CA8, &unk_2662689E8);
  }

  else
  {
LABEL_10:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v18, v30, v11);
    v31 = sub_266266968();
    v32 = sub_266266D48();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266219000, v31, v32, "INPlayMediaIntentHandler#ensureWarm No result present from previous call to warm, ensuring warmup before handle...", v33, 2u);
      MEMORY[0x266780880](v33, -1, -1);
    }

    (*(v12 + 8))(v18, v11);
    v34 = *(v37 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_playbackService);
    return sub_2662660D8();
  }
}

uint64_t sub_26625E210@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v182 = a2;
  v171 = sub_266266308();
  v177 = *(v171 - 8);
  v6 = *(v177 + 64);
  v7 = MEMORY[0x28223BE20](v171);
  v170 = v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v176 = v162 - v9;
  v175 = sub_266266318();
  v174 = *(v175 - 8);
  v10 = *(v174 + 64);
  v11 = MEMORY[0x28223BE20](v175);
  v13 = v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v181 = v162 - v14;
  v179 = sub_2662664E8();
  v178 = *(v179 - 8);
  v15 = *(v178 + 64);
  v16 = MEMORY[0x28223BE20](v179);
  v173 = v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v180 = v162 - v18;
  v19 = sub_266266988();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v167 = v162 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v162 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v169 = v162 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = v162 - v34;
  MEMORY[0x28223BE20](v33);
  v38 = (v162 - v37);
  if (!a1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v19, static Logger.default);
    swift_beginAccess();
    (*(v20 + 16))(v24, v60, v19);
    v61 = sub_266266968();
    v62 = sub_266266D68();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = a3;
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_266219000, v61, v62, "INPlayMediaIntentHandler#convert Unexpected missing item to convert", v64, 2u);
      v65 = v64;
      a3 = v63;
      MEMORY[0x266780880](v65, -1, -1);
    }

    (*(v20 + 8))(v24, v19);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
    v67 = *(*(v66 - 8) + 56);
    v68 = a3;
    goto LABEL_54;
  }

  v162[0] = v36;
  v164 = v3;
  v165 = v13;
  v168 = a3;
  v39 = qword_280069528;
  v40 = a1;
  if (v39 != -1)
  {
LABEL_75:
    swift_once();
  }

  v41 = __swift_project_value_buffer(v19, static Logger.default);
  swift_beginAccess();
  v42 = *(v20 + 16);
  v188 = v20 + 16;
  v189 = v41;
  v187 = v42;
  v42(v38, v41, v19);
  v43 = v40;
  v40 = v38;
  v44 = sub_266266968();
  v45 = sub_266266D58();

  v46 = os_log_type_enabled(v44, v45);
  v184 = v19;
  v166 = v29;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v197 = v48;
    *v47 = 136446466;
    v49 = sub_2662666C8();
    v51 = sub_26621EAF0(v49, v50, &v197);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2082;
    v52 = sub_266266CD8();
    v40 = v53;
    v54 = sub_26621EAF0(v52, v53, &v197);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_266219000, v44, v45, "INPlayMediaIntentHandler#convert %{public}s converting mediaItem: %{public}s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266780880](v48, -1, -1);
    v55 = v47;
    v19 = v184;
    MEMORY[0x266780880](v55, -1, -1);
  }

  v190 = *(v20 + 8);
  v190(v38, v19);
  v56 = [v43 privateMediaItemValueData];
  v58 = MEMORY[0x277D84F90];
  if (v56)
  {
    v40 = v56;
    v59 = [v56 mediaSubItems];

    if (v59)
    {
      sub_266228130(0, &qword_280069C88, 0x277CD3DD0);
      v29 = sub_266266BB8();
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v197 = v58;
  v195 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 >> 62)
  {
    v69 = sub_266267078();
  }

  else
  {
    v69 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v172 = v43;
  v70 = v20 + 8;
  if (!v69)
  {
    v38 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v71 = 0;
  v194 = v29 & 0xC000000000000001;
  v38 = MEMORY[0x277D84F90];
  *&v57 = 136446210;
  v183 = v57;
  v191 = v29;
  v192 = v35;
  v193 = v69;
  do
  {
    v163 = v38;
    v20 = v71;
    while (1)
    {
      if (v194)
      {
        v76 = MEMORY[0x266780220](v20, v29);
      }

      else
      {
        if (v20 >= *(v195 + 16))
        {
          goto LABEL_74;
        }

        v76 = *(v29 + 8 * v20 + 32);
      }

      v77 = v76;
      v71 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v78 = [v76 identifier];
      if (v78)
      {
        break;
      }

      v187(v35, v189, v19);
      v38 = v77;
      v40 = sub_266266968();
      v81 = sub_266266D68();

      if (os_log_type_enabled(v40, v81))
      {
        v82 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        v196 = v186;
        *v82 = v183;
        v83 = v38;
        v185 = v83;
        v84 = [v83 description];
        v85 = v70;
        v86 = sub_266266A58();
        v88 = v87;

        v89 = v86;
        v70 = v85;
        v90 = sub_26621EAF0(v89, v88, &v196);
        v19 = v184;

        *(v82 + 4) = v90;
        v69 = v193;
        _os_log_impl(&dword_266219000, v40, v81, "INPlayMediaIntentHandler#convert identifier nil for mediaSubItem: %{public}s", v82, 0xCu);
        v38 = v186;
        __swift_destroy_boxed_opaque_existential_1Tm(v186);
        v35 = v192;
        MEMORY[0x266780880](v38, -1, -1);
        v91 = v82;
        v29 = v191;
        MEMORY[0x266780880](v91, -1, -1);

        v190(v35, v19);
      }

      else
      {

        v190(v35, v19);
      }

LABEL_22:
      ++v20;
      if (v71 == v69)
      {
        v38 = v163;
        goto LABEL_40;
      }
    }

    v79 = v78;
    sub_266266A58();

    v80 = [v77 assetInfo];
    if (v80)
    {
      v72 = v80;
      sub_266266A58();
    }

    v69 = v193;
    v73 = sub_266265F68();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    v40 = swift_allocObject();
    v38 = sub_266265F78();

    v29 = v191;
    v35 = v192;
    if (!v38)
    {
      goto LABEL_22;
    }

    v40 = &v197;
    MEMORY[0x26677FD50]();
    if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v92 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_266266BD8();
      v69 = v193;
    }

    sub_266266BF8();
    v38 = v197;
  }

  while (v71 != v69);
LABEL_40:

  v93 = v172;
  v94 = sub_26625F6C0(v172, v38);

  if (!v94)
  {
    v98 = v167;
    v187(v167, v189, v19);
    v99 = sub_266266968();
    v100 = sub_266266D68();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_266219000, v99, v100, "INPlayMediaIntentHandler#convert Unexpected nil PlaybackItem transforming from INMediaItem for container", v101, 2u);
      MEMORY[0x266780880](v101, -1, -1);
      v102 = v93;
    }

    else
    {
      v102 = v99;
      v99 = v93;
    }

    v109 = v168;

    v190(v98, v19);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
    v67 = *(*(v66 - 8) + 56);
    v68 = v109;
LABEL_54:
    v110 = 1;
    return v67(v68, v110, 1, v66);
  }

  v95 = v182;
  v96 = [v182 playShuffled];
  if (v96)
  {
    v97 = v96;
    [v96 BOOLValue];

    if ((sub_266266EC8() & 1) == 0)
    {
LABEL_56:
      v111 = [v95 playbackQueueLocation];
      sub_266236A4C(v111, v180);
      goto LABEL_57;
    }
  }

  else if ((sub_266266EC8() & 1) == 0)
  {
    goto LABEL_56;
  }

  if (sub_266266E68())
  {
    goto LABEL_56;
  }

  v103 = [v95 backingStore];
  objc_opt_self();
  v104 = swift_dynamicCastObjCClass();
  if (!v104)
  {

    v95 = v182;
    goto LABEL_56;
  }

  v105 = v104;
  v187(v162[0], v189, v19);
  v106 = sub_266266968();
  v107 = sub_266266D58();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_266219000, v106, v107, "INPlayMediaIntentHandler#convert User is asking to create station from currently playing and we received a station from server. Add that to up next", v108, 2u);
    MEMORY[0x266780880](v108, -1, -1);
  }

  v190(v162[0], v19);
  (*(v178 + 104))(v180, *MEMORY[0x277D55740], v179);
  [v105 setPlaybackQueueLocation_];

  v95 = v182;
LABEL_57:
  [v95 playbackRepeatMode];
  sub_266266F58();
  v112 = (v164 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider);
  v113 = *(v164 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider + 32);
  __swift_project_boxed_opaque_existential_1((v164 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider), *(v164 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider + 24));
  if (sub_266266288())
  {
    v114 = v112[4];
    __swift_project_boxed_opaque_existential_1(v112, v112[3]);
    sub_266266298();
  }

  v115 = [v182 privatePlayMediaIntentData];
  if (v115)
  {
    v116 = v115;
    v117 = [v115 privateMediaIntentData];

    if (v117)
    {
      v118 = [v117 speakerIDInfo];

      if (v118)
      {
        v119 = [v118 sharedUserID];

        if (v119)
        {
          sub_266266A58();

          sub_266266A78();
        }
      }
    }
  }

  v195 = v94;
  (*(v178 + 16))(v173, v180, v179);
  v120 = v182;
  sub_266266E38();
  v121 = [v120 hashedRouteUIDs];
  if (v121)
  {
    v122 = v121;
    sub_266266BB8();
  }

  sub_266266E58();
  (*(v174 + 16))(v165, v181, v175);
  v123 = v176;
  sub_2662662F8();
  v124 = v169;
  v125 = v184;
  v187(v169, v189, v184);
  v126 = v195;

  v127 = sub_266266968();
  v128 = sub_266266D58();

  v129 = os_log_type_enabled(v127, v128);
  v162[1] = v70;
  if (v129)
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v197 = v131;
    *v130 = 136446466;
    v132 = sub_2662666C8();
    v134 = sub_26621EAF0(v132, v133, &v197);

    *(v130 + 4) = v134;
    *(v130 + 12) = 2082;
    v196 = v126;
    sub_2662664A8();
    sub_2662630A0(&qword_280069C80, MEMORY[0x277D55720]);
    v135 = sub_2662670C8();
    v137 = sub_26621EAF0(v135, v136, &v197);

    *(v130 + 14) = v137;
    _os_log_impl(&dword_266219000, v127, v128, "INPlayMediaIntentHandler#convert %{public}s PlaybackItem: %{public}s", v130, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266780880](v131, -1, -1);
    v138 = v130;
    v123 = v176;
    MEMORY[0x266780880](v138, -1, -1);
  }

  v190(v124, v125);
  v139 = v125;
  v140 = v171;
  v141 = v177;
  v142 = v166;
  v187(v166, v189, v125);
  v143 = v170;
  (*(v141 + 16))(v170, v123, v140);
  v144 = sub_266266968();
  v145 = sub_266266D58();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = v143;
    v148 = swift_slowAlloc();
    v197 = v148;
    *v146 = 136446466;
    v149 = sub_2662666C8();
    v151 = sub_26621EAF0(v149, v150, &v197);

    *(v146 + 4) = v151;
    *(v146 + 12) = 2082;
    sub_2662630A0(&qword_280069C78, MEMORY[0x277D556A0]);
    v152 = sub_2662670C8();
    v154 = v153;
    v155 = v147;
    v126 = v195;
    (*(v177 + 8))(v155, v140);
    v156 = sub_26621EAF0(v152, v154, &v197);
    v141 = v177;

    *(v146 + 14) = v156;
    _os_log_impl(&dword_266219000, v144, v145, "INPlayMediaIntentHandler#convert %{public}s PlaybackAttributes: %{public}s", v146, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266780880](v148, -1, -1);
    v157 = v146;
    v123 = v176;
    MEMORY[0x266780880](v157, -1, -1);
  }

  else
  {

    (*(v141 + 8))(v143, v140);
  }

  v190(v142, v139);
  (*(v174 + 8))(v181, v175);
  (*(v178 + 8))(v180, v179);
  v158 = v168;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
  v160 = *(v159 + 48);
  *v158 = v126;
  (*(v141 + 32))(v158 + v160, v123, v140);
  v67 = *(*(v159 - 8) + 56);
  v68 = v158;
  v110 = 0;
  v66 = v159;
  return v67(v68, v110, 1, v66);
}

uint64_t sub_26625F6C0(void *a1, unint64_t a2)
{
  v104 = a2;
  v105 = sub_266266988();
  v102 = *(v105 - 8);
  v3 = *(v102 + 64);
  v4 = MEMORY[0x28223BE20](v105);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v99 = &v96 - v7;
  v8 = sub_266265F58();
  v106 = *(v8 - 8);
  v9 = *(v106 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C90, &qword_2662689D8);
  v12 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v14 = &v96 - v13;
  v15 = sub_266265F08();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C98, &qword_2662689E0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v100 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v96 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v96 - v27;
  v107 = a1;
  v29 = [a1 identifier];
  if (!v29)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v39 = v105;
    v40 = __swift_project_value_buffer(v105, static Logger.default);
    swift_beginAccess();
    v41 = v102;
    (*(v102 + 16))(v6, v40, v39);
    v42 = v107;
    v43 = sub_266266968();
    v44 = sub_266266D68();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v108 = v46;
      *v45 = 136446210;
      v47 = v42;
      v48 = [v47 description];
      v49 = sub_266266A58();
      v51 = v50;

      v52 = sub_26621EAF0(v49, v51, &v108);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_266219000, v43, v44, "INPlayMediaIntentHandler#convert identifier nil for mediaItem: %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266780880](v46, -1, -1);
      MEMORY[0x266780880](v45, -1, -1);

      (*(v41 + 8))(v6, v105);
    }

    else
    {

      (*(v41 + 8))(v6, v39);
    }

    return 0;
  }

  v30 = v29;
  v97 = v11;
  v31 = sub_266266A58();
  v33 = v32;

  v34 = sub_266265F68();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  v98 = v31;
  v101 = v33;
  if (sub_266265F78())
  {
    sub_266265F18();

    sub_266265EF8();
    (*(v16 + 8))(v19, v15);
    v37 = v106;
    v38 = *(v106 + 56);
    v38(v28, 0, 1, v8);
  }

  else
  {
    v37 = v106;
    v38 = *(v106 + 56);
    v38(v28, 1, 1, v8);
  }

  (*(v37 + 104))(v26, *MEMORY[0x277D555F8], v8);
  v38(v26, 0, 1, v8);
  v53 = *(v103 + 48);
  sub_266228524(v28, v14, &qword_280069C98, &qword_2662689E0);
  sub_266228524(v26, &v14[v53], &qword_280069C98, &qword_2662689E0);
  v54 = *(v37 + 48);
  if (v54(v14, 1, v8) == 1)
  {
    sub_26622858C(v26, &qword_280069C98, &qword_2662689E0);
    sub_26622858C(v28, &qword_280069C98, &qword_2662689E0);
    v55 = v54(&v14[v53], 1, v8);
    v56 = v107;
    if (v55 == 1)
    {
      sub_26622858C(v14, &qword_280069C98, &qword_2662689E0);
      v57 = v104;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v58 = v100;
  sub_266228524(v14, v100, &qword_280069C98, &qword_2662689E0);
  if (v54(&v14[v53], 1, v8) == 1)
  {
    sub_26622858C(v26, &qword_280069C98, &qword_2662689E0);
    sub_26622858C(v28, &qword_280069C98, &qword_2662689E0);
    (*(v106 + 8))(v58, v8);
    v56 = v107;
LABEL_14:
    sub_26622858C(v14, &qword_280069C90, &qword_2662689D8);
    goto LABEL_26;
  }

  v60 = v106;
  v61 = &v14[v53];
  v62 = v97;
  (*(v106 + 32))(v97, v61, v8);
  sub_2662630A0(&qword_280069CA0, MEMORY[0x277D55618]);
  v63 = sub_266266A38();
  v64 = *(v60 + 8);
  v64(v62, v8);
  sub_26622858C(v26, &qword_280069C98, &qword_2662689E0);
  sub_26622858C(v28, &qword_280069C98, &qword_2662689E0);
  v64(v58, v8);
  sub_26622858C(v14, &qword_280069C98, &qword_2662689E0);
  v57 = v104;
  v56 = v107;
  if (v63)
  {
LABEL_19:

    if (v57 >> 62)
    {
      v65 = sub_266267078();
    }

    else
    {
      v65 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = v105;
    v67 = v102;
    if (v65)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266780220](0, v57);
        goto LABEL_25;
      }

      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v68 = *(v57 + 32);

LABEL_25:
        sub_266265F38();
        v101 = v69;

        goto LABEL_26;
      }

      __break(1u);
    }

    else if (qword_280069528 == -1)
    {
      goto LABEL_37;
    }

    swift_once();
LABEL_37:
    v82 = __swift_project_value_buffer(v66, static Logger.default);
    swift_beginAccess();
    v83 = v99;
    (*(v67 + 16))(v99, v82, v66);
    v84 = v56;
    v85 = sub_266266968();
    v86 = sub_266266D68();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = v67;
      v89 = swift_slowAlloc();
      v108 = v89;
      *v87 = 136446210;
      v90 = v84;
      v91 = [v90 description];
      v92 = sub_266266A58();
      v94 = v93;

      v95 = sub_26621EAF0(v92, v94, &v108);

      *(v87 + 4) = v95;
      _os_log_impl(&dword_266219000, v85, v86, "INPlayMediaIntentHandler#convert subItems empty for classicalRecording mediaItem: %{public}s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x266780880](v89, -1, -1);
      MEMORY[0x266780880](v87, -1, -1);

      (*(v88 + 8))(v99, v66);
    }

    else
    {

      (*(v67 + 8))(v83, v66);
    }

    return 0;
  }

LABEL_26:
  v70 = [v56 privateMediaItemValueData];
  if (v70)
  {
    v71 = v70;
    v72 = [v70 assetInfo];

    if (v72)
    {
      sub_266266A58();
    }
  }

  v73 = [v56 privateMediaItemValueData];
  if (v73)
  {
    v74 = v73;
    v75 = [v73 recommendationId];

    if (v75)
    {
      sub_266266A58();
    }
  }

  v76 = [v56 privateMediaItemValueData];
  if (v76)
  {
    v77 = v76;
    v78 = [v76 sharedUserIdFromPlayableMusicAccount];

    if (v78)
    {
      sub_266266A58();

      sub_266266A78();
    }
  }

  v79 = sub_2662664A8();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();

  return sub_2662664B8();
}

uint64_t sub_266260290(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_266266988();
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v88 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v92 = &v88 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v88 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v88 - v21;
  sub_266228130(0, &qword_2800696C8, 0x277CCABB0);
  v23 = sub_266266F88();
  v24 = v23;
  if (!a1)
  {

    goto LABEL_12;
  }

  v25 = a1;
  v26 = sub_266266F98();

  if ((v26 & 1) == 0)
  {
LABEL_12:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v49 = v94;
    v50 = __swift_project_value_buffer(v94, static Logger.default);
    swift_beginAccess();
    v51 = v93;
    (*(v93 + 16))(v12, v50, v49);
    v52 = sub_266266968();
    v53 = sub_266266D58();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_266219000, v52, v53, "INPlayMediaIntentHandler#shouldDisambiguate Entity confidence disabled", v54, 2u);
      MEMORY[0x266780880](v54, -1, -1);
    }

    (*(v51 + 8))(v12, v49);
    return 0;
  }

  if (!a2 || !a3)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v55 = v94;
    v56 = __swift_project_value_buffer(v94, static Logger.default);
    swift_beginAccess();
    v57 = v93;
    (*(v93 + 16))(v15, v56, v55);
    v58 = sub_266266968();
    v59 = sub_266266D68();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_266219000, v58, v59, "INPlayMediaIntentHandler#shouldDisambiguate No ratios for internal / production", v60, 2u);
      MEMORY[0x266780880](v60, -1, -1);
    }

    (*(v57 + 8))(v15, v55);
    return 0;
  }

  v27 = *(v4 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_deviceProvider + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_deviceProvider), *(v4 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_deviceProvider + 24));
  v28 = a2;
  v29 = a3;
  v30 = sub_266266098();
  v31 = 0x280069000uLL;
  v90 = v29;
  v91 = v28;
  if (v30)
  {
    v32 = v94;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v32, static Logger.default);
    swift_beginAccess();
    v34 = v93;
    v89 = *(v93 + 16);
    v89(v22, v33, v32);
    v35 = v28;
    v36 = sub_266266968();
    v37 = sub_266266D58();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v96[0] = v39;
      *v38 = 136315138;
      v40 = v35;
      v41 = [v40 description];
      v42 = sub_266266A58();
      v44 = v43;

      v45 = v42;
      v32 = v94;
      v46 = sub_26621EAF0(v45, v44, v96);

      *(v38 + 4) = v46;
      _os_log_impl(&dword_266219000, v36, v37, "INPlayMediaIntentHandler#shouldDisambiguate On internal build with ratio 1/%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      v47 = v39;
      v31 = 0x280069000;
      MEMORY[0x266780880](v47, -1, -1);
      MEMORY[0x266780880](v38, -1, -1);
    }

    v48 = *(v34 + 8);
    v48(v22, v32);
  }

  else
  {
    v32 = v94;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v32, static Logger.default);
    swift_beginAccess();
    v63 = v93;
    v89 = *(v93 + 16);
    v89(v20, v62, v32);
    v64 = v29;
    v65 = sub_266266968();
    v66 = sub_266266D58();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v96[0] = v68;
      *v67 = 136315138;
      v69 = v64;
      v70 = [v69 description];
      v71 = sub_266266A58();
      v73 = v72;

      v74 = sub_26621EAF0(v71, v73, v96);
      v32 = v94;

      *(v67 + 4) = v74;
      _os_log_impl(&dword_266219000, v65, v66, "INPlayMediaIntentHandler#shouldDisambiguate On prod build with ratio 1/%s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      v75 = v68;
      v31 = 0x280069000uLL;
      MEMORY[0x266780880](v75, -1, -1);
      MEMORY[0x266780880](v67, -1, -1);
    }

    v48 = *(v63 + 8);
    v48(v20, v32);
  }

  v76 = v92;
  sub_266266C68();
  v78 = 1.0 / v77;
  v79 = vcvtd_n_f64_u64(sub_2662620D0(0x20000000000001uLL), 0x35uLL);
  LODWORD(v94) = v79 < v78;
  if (*(v31 + 1320) != -1)
  {
    swift_once();
  }

  v80 = __swift_project_value_buffer(v32, static Logger.default);
  swift_beginAccess();
  v89(v76, v80, v32);
  v81 = sub_266266968();
  v82 = sub_266266D58();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v95 = v84;
    *v83 = 134218498;
    *(v83 + 4) = v79 + 0.0;
    *(v83 + 12) = 2048;
    *(v83 + 14) = v78;
    *(v83 + 22) = 2080;
    if (v79 >= v78)
    {
      v85 = 0x65736C6166;
    }

    else
    {
      v85 = 1702195828;
    }

    if (v79 >= v78)
    {
      v86 = 0xE500000000000000;
    }

    else
    {
      v86 = 0xE400000000000000;
    }

    v87 = sub_26621EAF0(v85, v86, &v95);

    *(v83 + 24) = v87;
    _os_log_impl(&dword_266219000, v81, v82, "INPlayMediaIntentHandler#shouldDisambiguate Random number: %f Chance: %f Should disambiguate? %s", v83, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x266780880](v84, -1, -1);
    MEMORY[0x266780880](v83, -1, -1);
  }

  else
  {
  }

  v48(v76, v32);
  return v94;
}

uint64_t sub_266260BB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v44 = a5;
  v45 = a2;
  v46 = a3;
  v9 = sub_266266988();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 privatePlayMediaIntentData];
  if (v14 && (v15 = v14, v16 = [v14 privateMediaIntentData], v15, v16) && (v17 = objc_msgSend(v16, sel_speakerIDInfo), v16, v17) && (v18 = objc_msgSend(v17, sel_sharedUserID), v17, v18))
  {
    sub_266266A58();

    v42 = sub_266266A78();
    v43 = v19;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v20, v9);
  v21 = a1;
  v22 = sub_266266968();
  v23 = sub_266266D78();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = a4;
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = sub_266266E08() & 1;

    _os_log_impl(&dword_266219000, v22, v23, "INPlayMediaIntentHandler#searchSpotlight executing local spotlight search, isPommesResponse=%{BOOL}d", v25, 8u);
    v26 = v25;
    a4 = v24;
    MEMORY[0x266780880](v26, -1, -1);
  }

  else
  {

    v22 = v21;
  }

  (*(v10 + 8))(v13, v9);
  v27 = *(v6 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_localSearch + 32);
  v40 = *(v6 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_localSearch + 24);
  v41 = __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_localSearch), v40);
  v28 = [v21 mediaSearch];
  v39 = MEMORY[0x26677F410](v21);
  v30 = v29;
  v31 = swift_allocObject();
  v33 = v45;
  v32 = v46;
  v31[2] = v45;
  v31[3] = v32;
  v34 = v44;
  v31[4] = a4;
  v31[5] = v34;
  v31[6] = v21;
  v35 = *(v27 + 8);
  v36 = v21;
  sub_266262DA4(v33);

  v35(v28, v42, v43, v39, v30, v36, sub_266262D94, v31, v40, v27);
}

uint64_t sub_266260F78(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void), void (*a5)(char *, uint64_t), uint64_t a6)
{
  v12 = sub_266266988();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v72 - v17;
  MEMORY[0x28223BE20](v16);
  v21 = &v72 - v20;
  if (a1)
  {
    v22 = qword_280069528;
    v23 = a1;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v21, v24, v12);
    v25 = v12;
    v26 = v23;
    v27 = sub_266266968();
    v28 = sub_266266D48();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v79 = a5;
      v30 = v29;
      v76 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80 = v78;
      *v30 = 136446466;
      v31 = sub_2662666D8();
      v77 = v25;
      v33 = a4;
      v34 = sub_26621EAF0(v31, v32, &v80);

      *(v30 + 4) = v34;
      a4 = v33;
      *(v30 + 12) = 2114;
      *(v30 + 14) = v26;
      v35 = v76;
      *v76 = a1;
      v36 = v26;
      _os_log_impl(&dword_266219000, v27, v28, "INPlayMediaIntentHandler#item %{public}s Successful search result: %{public}@", v30, 0x16u);
      sub_26622858C(v35, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v35, -1, -1);
      v37 = v78;
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266780880](v37, -1, -1);
      MEMORY[0x266780880](v30, -1, -1);

      (*(v13 + 8))(v21, v77);
    }

    else
    {

      (*(v13 + 8))(v21, v25);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_266267E70;
    *(v68 + 32) = v26;
    v69 = v26;
    a4(v68);
  }

  else
  {
    v76 = v19;
    v74 = a6;
    v78 = a2;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v12, static Logger.default);
    swift_beginAccess();
    v39 = *(v13 + 16);
    v77 = v13 + 16;
    v73 = v39;
    v39(v18, v38, v12);
    v40 = sub_266266968();
    v41 = sub_266266D68();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v75 = a3;
      v43 = v42;
      v44 = swift_slowAlloc();
      v72 = a4;
      v45 = v44;
      v80 = v44;
      *v43 = 136446210;
      v46 = sub_2662666D8();
      v79 = a5;
      v48 = v38;
      v49 = v13;
      v50 = v12;
      v51 = sub_26621EAF0(v46, v47, &v80);
      a5 = v79;

      *(v43 + 4) = v51;
      v12 = v50;
      v13 = v49;
      v38 = v48;
      _os_log_impl(&dword_266219000, v40, v41, "INPlayMediaIntentHandler#searchSpotlight %{public}s No results from local search", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      v52 = v45;
      a4 = v72;
      MEMORY[0x266780880](v52, -1, -1);
      v53 = v43;
      a3 = v75;
      MEMORY[0x266780880](v53, -1, -1);
    }

    v54 = *(v13 + 8);
    v54(v18, v12);
    v55 = v76;
    if (v78)
    {
      v73(v76, v38, v12);

      v56 = sub_266266968();
      v57 = sub_266266D68();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v75 = a3;
        v59 = v58;
        v60 = swift_slowAlloc();
        v79 = v54;
        v80 = v60;
        v61 = a4;
        v62 = v60;
        *v59 = 136446210;
        v63 = sub_2662666D8();
        v77 = v12;
        v65 = a5;
        v66 = sub_26621EAF0(v63, v64, &v80);

        *(v59 + 4) = v66;
        a5 = v65;
        _os_log_impl(&dword_266219000, v56, v57, "INPlayMediaIntentHandler#searchSpotlight %{public}s Local search using fallback completion due to nil result", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        v67 = v62;
        a4 = v61;
        MEMORY[0x266780880](v67, -1, -1);
        MEMORY[0x266780880](v59, -1, -1);

        v79(v55, v77);
      }

      else
      {

        v54(v55, v12);
      }

      v71 = v78;
      (v78)(v74, a4, a5);
      return sub_266262DB4(v71);
    }

    else
    {
      return (a4)(0);
    }
  }
}

id INPlayMediaIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INPlayMediaIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2662616F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695D8, &qword_266267E40);
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

size_t sub_266261850(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_266261A80@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_266261AB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

size_t sub_266261BA4(size_t a1, int64_t a2, char a3)
{
  result = sub_266261CD8(a1, a2, a3, *v3, &unk_280069D30, &qword_266268A50, MEMORY[0x277D55578]);
  *v3 = result;
  return result;
}

size_t sub_266261BE8(size_t a1, int64_t a2, char a3)
{
  result = sub_266261CD8(a1, a2, a3, *v3, &unk_280069D20, &qword_266267D80, MEMORY[0x277D609D0]);
  *v3 = result;
  return result;
}

size_t sub_266261C2C(size_t a1, int64_t a2, char a3)
{
  result = sub_266261CD8(a1, a2, a3, *v3, &qword_2800695A8, &qword_266267D88, MEMORY[0x277CC9788]);
  *v3 = result;
  return result;
}

char *sub_266261C70(char *a1, int64_t a2, char a3)
{
  result = sub_266261EB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266261C90(char *a1, int64_t a2, char a3)
{
  result = sub_266261FC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_266261CD8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_266261EB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CE8, &qword_266268A30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266261FC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695D8, &qword_266267E40);
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

unint64_t sub_2662620D0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x266780890](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x266780890](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_26626215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v54[3] = a17;
  v54[4] = a25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(a17 - 8) + 32))(boxed_opaque_existential_1, a2, a17);
  v53[3] = a14;
  v53[4] = a22;
  v30 = __swift_allocate_boxed_opaque_existential_1(v53);
  (*(*(a14 - 8) + 32))(v30, a3, a14);
  v52[3] = a19;
  v52[4] = a27;
  v31 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a19 - 8) + 32))(v31, a4, a19);
  v51[3] = a15;
  v51[4] = a23;
  v32 = __swift_allocate_boxed_opaque_existential_1(v51);
  (*(*(a15 - 8) + 32))(v32, a5, a15);
  v50[3] = a16;
  v50[4] = a24;
  v33 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(a16 - 8) + 32))(v33, a7, a16);
  v49[3] = a13;
  v49[4] = a21;
  v34 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a13 - 8) + 32))(v34, a8, a13);
  v48[3] = a18;
  v48[4] = a26;
  v35 = __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(a18 - 8) + 32))(v35, a9, a18);
  v47[3] = a20;
  v47[4] = a28;
  v36 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a20 - 8) + 32))(v36, a11, a20);
  *&a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_playbackService] = a1;
  sub_266220C24(v54, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_localSearch]);
  sub_266220C24(v53, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_deviceProvider]);
  sub_266220C24(v52, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nowPlaying]);
  sub_266220C24(v51, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider]);
  sub_266220C24(v49, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider]);
  sub_266220C24(a6, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_accountProvider]);
  sub_266220C24(v50, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_featureFlagProvider]);
  sub_266220C24(v48, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nearDeviceProvider]);
  sub_266220C24(a10, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_siriKitTaskLoggingProvider]);
  sub_266220C24(v47, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_onscreenEntityProvider]);
  v46.receiver = a12;
  v46.super_class = type metadata accessor for INPlayMediaIntentHandler();
  v37 = objc_msgSendSuper2(&v46, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return v37;
}

id sub_266262570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24, uint64_t a25)
{
  v96 = a8;
  v94 = a7;
  v105 = a6;
  v92 = a5;
  v90 = a4;
  v88 = a3;
  v85 = a2;
  v101 = a22;
  v102 = a21;
  v100 = a23;
  v98 = a25;
  v99 = a24;
  v97 = a11;
  v103 = a10;
  v104 = a1;
  v95 = a9;
  v78 = a15;
  v80 = a16;
  v72 = a14;
  v83 = a13;
  v93 = a20;
  v91 = *(a20 - 8);
  v25 = *(v91 + 64);
  v87 = a18;
  v26 = MEMORY[0x28223BE20](a13);
  v89 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(v28 - 8);
  v29 = *(v86 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v84 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v30 - 8);
  v32 = *(v82 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v81 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(v35 - 8);
  v36 = *(v79 + 64);
  v37 = MEMORY[0x28223BE20](v33);
  v106 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v37);
  v44 = &v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v44;
  v71 = a19;
  v45 = *(a19 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v42);
  v49 = &v70 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v49;
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v47);
  v55 = &v70 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v55;
  v75 = a17;
  v56 = *(a17 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  v59 = &v70 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = objc_allocWithZone(type metadata accessor for INPlayMediaIntentHandler());
  (*(v56 + 16))(v59, v85, a17);
  v60 = v72;
  (*(v51 + 16))(v55, v88, v72);
  (*(v45 + 16))(v49, v90, a19);
  v61 = v78;
  (*(v40 + 16))(v44, v92, v78);
  v62 = v80;
  (*(v79 + 16))(v106, v94, v80);
  v63 = v81;
  v64 = v83;
  (*(v82 + 16))(v81, v96, v83);
  v65 = v84;
  v66 = v87;
  (*(v86 + 16))(v84, v95, v87);
  v67 = v89;
  v68 = v93;
  (*(v91 + 16))(v89, v97, v93);
  return sub_26626215C(v104, v59, v76, v74, v73, v105, v106, v63, v65, v103, v67, v77, v64, v60, v61, v62, v75, v66, v71, v68, v102, *(&v102 + 1), v101, *(&v101 + 1), v100, *(&v100 + 1), v99, v98);
}