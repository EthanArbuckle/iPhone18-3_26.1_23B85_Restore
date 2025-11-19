uint64_t sub_265A0BD44(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_265A1EA30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265A1E9F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v12 = sub_265A1EA20();
  __swift_project_value_buffer(v12, qword_28156B4E8);
  v13 = sub_265A1EA10();
  sub_265A1EA40();
  v14 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v13, v14, v17, v20, v15, v16, 2u);
    MEMORY[0x266766110](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_265A0BFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v8 = a1 + 16;
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = (v8 + 32);
  v14 = *(v8 + 32);
  v15 = *(v8 + 40);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = *(v8 + 48);
  v21 = v14;
  v22 = v15;
  v23 = *(v8 + 48);
  if (v20 == 255)
  {
    v38 = v10;
    v39 = v9;
    swift_beginAccess();
    v34 = *(a1 + 24);
    v35 = *(a1 + 16);
    v32 = *(a1 + 40);
    v33 = *(a1 + 32);
    v30 = *(a1 + 56);
    v31 = *(a1 + 48);
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
    *(a1 + 32) = a4;
    v19 = a5;
    *(a1 + 40) = a5;
    *v13 = 0;
    v13[1] = 0;
    v29 = *(a1 + 64);
    v23 = 3;
    *(a1 + 64) = 3;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_2659E0A0C(v35, v34, v33, v32, v31, v30, v29);
    v10 = v38;
    v9 = v39;
    v21 = 0;
    v22 = 0;
    v18 = a4;
    v16 = a2;
    v17 = a3;
  }

  *a6 = v16;
  *(a6 + 8) = v17;
  *(a6 + 16) = v18;
  *(a6 + 24) = v19;
  *(a6 + 32) = v21;
  *(a6 + 40) = v22;
  *(a6 + 48) = v23;
  return sub_2659E0A20(v9, v10, v11, v12, v14, v15, v20);
}

void sub_265A0C130(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B708, &unk_265A22660);
    sub_265A1ED90();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B708, &unk_265A22660);
    sub_265A1EDA0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_265A0C1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = a1 + 16;
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
  v19 = *(v16 + 32);
  v20 = *(v16 + 40);
  v21 = v14;
  v22 = v15;
  v23 = v17;
  v24 = v18;
  v25 = *(v16 + 48);
  v26 = v19;
  v27 = v20;
  v28 = *(v16 + 48);
  if (v25 == 255)
  {
    v48 = v15;
    v49 = v14;
    v46 = *(v16 + 24);
    v47 = *(v16 + 16);
    v44 = a3;
    v45 = *(v16 + 32);
    v30 = a4;
    v41 = a4;
    v43 = a2;

    v31 = [a6 identifier];
    v42 = a5;
    v32 = [v31 instanceIdentifier];

    v26 = sub_265A1EBA0();
    v27 = v33;

    swift_beginAccess();
    v39 = *(a1 + 24);
    v40 = *(a1 + 16);
    v37 = *(a1 + 40);
    v38 = *(a1 + 32);
    v35 = *(a1 + 56);
    v36 = *(a1 + 48);
    *(a1 + 16) = v43;
    *(a1 + 24) = v44;
    *(a1 + 32) = v30;
    *(a1 + 40) = v42;
    *(a1 + 48) = v26;
    *(a1 + 56) = v27;
    LOBYTE(v31) = *(a1 + 64);
    v28 = 4;
    *(a1 + 64) = 4;

    sub_2659E0A0C(v40, v39, v38, v37, v36, v35, v31);
    v19 = v45;
    v18 = v46;
    v17 = v47;
    v15 = v48;
    v14 = v49;
    v21 = v43;
    v22 = v44;
    v23 = v41;
    v24 = v42;
  }

  *a7 = v21;
  *(a7 + 8) = v22;
  *(a7 + 16) = v23;
  *(a7 + 24) = v24;
  *(a7 + 32) = v26;
  *(a7 + 40) = v27;
  *(a7 + 48) = v28;
  return sub_2659E0A20(v14, v15, v17, v18, v19, v20, v25);
}

void sub_265A0C3A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v16[1] = a3;
    v13 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F8, &qword_265A22650);
    sub_265A1ED90();
  }

  else
  {
    if (a2)
    {
      sub_265A1E730();
      v14 = sub_265A1E770();
      (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
    }

    else
    {
      v15 = sub_265A1E770();
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    }

    sub_265A0CB24(v10, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F8, &qword_265A22650);
    sub_265A1EDA0();
  }
}

uint64_t sub_265A0C54C()
{
  v0 = sub_265A1E6C0();
  v43 = *(v0 - 8);
  v1 = *(v43 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v41 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v42 = &v41 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  if (v10 >> 62)
  {
    v39 = v10;
    v40 = sub_265A1F1E0();
    v10 = v39;
    v13 = v40;
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v15 = v4;
  v16 = v10;
  v46 = MEMORY[0x277D84F90];
  sub_265A1D304(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = v46;
    v17 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      v19 = (v43 + 32);
      while (1)
      {
        v20 = v17;
        v21 = [MEMORY[0x2667656F0](v18) localizedStringResource];
        if (!v21)
        {
          break;
        }

        v22 = v21;
        v45 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
        v44 = v22;
        v23 = v42;
        sub_265A1E6A0();
        v24 = *v19;
        (*v19)(v12, v23, v0);
        swift_unknownObjectRelease();
        v46 = v14;
        v25 = v0;
        v27 = *(v14 + 16);
        v26 = *(v14 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_265A1D304(v26 > 1, v27 + 1, 1);
          v14 = v46;
        }

        ++v18;
        *(v14 + 16) = v27 + 1;
        v24((v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v27), v12, v25);
        v0 = v25;
        v17 = v20;
        if (v13 == v18)
        {
          return v14;
        }
      }
    }

    else
    {
      v28 = (v16 + 32);
      v29 = (v43 + 32);
      v30 = v15;
      while (1)
      {
        v31 = *v28;
        v32 = [v31 localizedStringResource];
        if (!v32)
        {
          break;
        }

        v33 = v32;
        v45 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
        v44 = v33;
        sub_265A1E6A0();
        v34 = *v29;
        (*v29)(v7, v30, v0);

        v46 = v14;
        v35 = v0;
        v37 = *(v14 + 16);
        v36 = *(v14 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_265A1D304(v36 > 1, v37 + 1, 1);
          v14 = v46;
        }

        *(v14 + 16) = v37 + 1;
        v34((v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37), v7, v35);
        ++v28;
        --v13;
        v0 = v35;
        if (!v13)
        {
          return v14;
        }
      }
    }
  }

  result = sub_265A1F1C0();
  __break(1u);
  return result;
}

unint64_t sub_265A0C954()
{
  result = qword_28156A830;
  if (!qword_28156A830)
  {
    type metadata accessor for LNSystemEntityProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A830);
  }

  return result;
}

unint64_t sub_265A0C9AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_265A1F3D0();
  sub_265A1EBF0();
  v6 = sub_265A1F400();

  return sub_265A0CCF8(a1, a2, v6);
}

unint64_t sub_265A0CA28(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_265A1EBA0();
  sub_265A1F3D0();
  sub_265A1EBF0();
  v4 = sub_265A1F400();

  return sub_265A0CDB0(a1, v4);
}

unint64_t sub_265A0CAD0()
{
  result = qword_28156B000;
  if (!qword_28156B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156B000);
  }

  return result;
}

uint64_t sub_265A0CB24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A0CB94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_265A0CBE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_265A0CC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchIndexableItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_265A0CCB4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_265A1F040();

  return sub_265A0CEB4(a1, v5);
}

unint64_t sub_265A0CCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_265A1F340())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_265A0CDB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_265A1EBA0();
      v9 = v8;
      if (v7 == sub_265A1EBA0() && v9 == v10)
      {
        break;
      }

      v12 = sub_265A1F340();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_265A0CEB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_265A0CF7C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266765660](v9, a1);
      sub_265A0CFD8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_265A0D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = sub_265A1E6C0();
  v5[36] = v6;
  v7 = *(v6 - 8);
  v5[37] = v7;
  v8 = *(v7 + 64) + 15;
  v5[38] = swift_task_alloc();
  v9 = type metadata accessor for SettingsSearchIndexableItem();
  v5[39] = v9;
  v10 = *(v9 - 8);
  v5[40] = v10;
  v11 = *(v10 + 64) + 15;
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658) - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v14 = sub_265A1E770();
  v5[50] = v14;
  v15 = *(v14 - 8);
  v5[51] = v15;
  v16 = *(v15 + 64) + 15;
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B720, &qword_265A226A8);
  v5[56] = v17;
  v18 = *(v17 - 8);
  v5[57] = v18;
  v19 = *(v18 + 64) + 15;
  v5[58] = swift_task_alloc();
  v20 = sub_265A1E9F0();
  v5[59] = v20;
  v21 = *(v20 - 8);
  v5[60] = v21;
  v22 = *(v21 + 64) + 15;
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v23 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_265A0D39C, 0, 0);
}

uint64_t sub_265A0D39C()
{
  v154 = v0;
  v153 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 280) identifier];
  if (!v1)
  {
    sub_265A1EBA0();
    v1 = sub_265A1EB70();
  }

  v139 = v1;
  *(v0 + 504) = v1;
  v2 = sub_265A1EBA0();
  v4 = v3;
  *(v0 + 512) = v2;
  *(v0 + 520) = v3;
  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 496);
  v6 = *(v0 + 264);
  v7 = sub_265A1EA20();
  __swift_project_value_buffer(v7, qword_28156B4E8);

  sub_265A1E9E0();
  v8 = sub_265A1EA10();
  v9 = sub_265A1EF50();

  v144 = v2;
  if (sub_265A1EFA0())
  {
    v10 = *(v0 + 496);
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v148 = v14;
    *v13 = 136446466;
    v15 = v12;
    v2 = v144;
    *(v13 + 4) = sub_2659D9320(v15, v11, &v148);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_2659D9320(v144, v4, &v148);
    v16 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v8, v9, v16, "Search Items From AppEnum", "AppIntent: '%{public}s', Enum: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v14, -1, -1);
    MEMORY[0x266766110](v13, -1, -1);
  }

  v17 = *(v0 + 496);
  v19 = *(v0 + 472);
  v18 = *(v0 + 480);
  v20 = *(v0 + 280);
  (*(v18 + 16))(*(v0 + 488), v17, v19);
  v21 = sub_265A1EA60();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v0 + 528) = sub_265A1EA50();
  (*(v18 + 8))(v17, v19);
  v24 = swift_allocObject();
  *(v0 + 536) = v24;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = -1;
  v25 = [objc_opt_self() policyWithEnumMetadata_];
  *(v0 + 544) = v25;
  if (qword_28156A978 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 264);
  v27 = sub_265A1EAA0();
  *(v0 + 552) = __swift_project_value_buffer(v27, qword_28156B518);

  v28 = sub_265A1EA80();
  v29 = sub_265A1EF30();

  if (os_log_type_enabled(v28, v29))
  {
    v136 = *(v0 + 264);
    v30 = v4;
    v31 = v24;
    v32 = v25;
    v33 = *(v0 + 256);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v148 = v35;
    *v34 = 136446466;
    v36 = v33;
    v25 = v32;
    v24 = v31;
    v4 = v30;
    v2 = v144;
    *(v34 + 4) = sub_2659D9320(v36, v136, &v148);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_2659D9320(v144, v4, &v148);
    _os_log_impl(&dword_2659CA000, v28, v29, "Making Link Connection to AppExtension for AppIntent: %{public}s, AppEnum %{public}s…", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v35, -1, -1);
    MEMORY[0x266766110](v34, -1, -1);
  }

  *(v0 + 192) = 0;
  v37 = [v25 connectionWithError_];
  *(v0 + 560) = v37;
  v38 = *(v0 + 192);
  if (v37)
  {
    v133 = v37;
    v39 = *(v0 + 264);

    v40 = v38;
    v41 = sub_265A1EA80();
    v42 = sub_265A1EF30();

    if (os_log_type_enabled(v41, v42))
    {
      v44 = *(v0 + 256);
      v43 = *(v0 + 264);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v148 = v46;
      *v45 = 136446466;
      *(v45 + 4) = sub_2659D9320(v44, v43, &v148);
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_2659D9320(v144, v4, &v148);
      _os_log_impl(&dword_2659CA000, v41, v42, "Successfully established Link Connection to AppExtension for AppIntent: %{public}s, AppEnum %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v46, -1, -1);
      MEMORY[0x266766110](v45, -1, -1);
    }

    v67 = *(v0 + 264);

    v68 = sub_265A1EA80();
    v69 = sub_265A1EF30();

    if (os_log_type_enabled(v68, v69))
    {
      v71 = *(v0 + 256);
      v70 = *(v0 + 264);
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v148 = v73;
      *v72 = 136446466;
      *(v72 + 4) = sub_2659D9320(v71, v70, &v148);
      *(v72 + 12) = 2082;
      *(v72 + 14) = sub_2659D9320(v144, v4, &v148);
      _os_log_impl(&dword_2659CA000, v68, v69, "Retrieving URLs for AppIntent: %{public}s, AppEnum %{public}s…", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v73, -1, -1);
      MEMORY[0x266766110](v72, -1, -1);
    }

    v75 = *(v0 + 456);
    v74 = *(v0 + 464);
    v76 = *(v0 + 448);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 224;
    *(v0 + 24) = sub_265A0E2B8;
    swift_continuation_init();
    *(v0 + 136) = v76;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B728, &qword_265A226B0);
    *(v0 + 568) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    sub_265A1ED80();
    (*(v75 + 32))(boxed_opaque_existential_1, v74, v76);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_265A10E8C;
    *(v0 + 104) = &block_descriptor_1;
    [v133 fetchURLsForEnumWithIdentifier:v139 completionHandler:v0 + 80];
    (*(v75 + 8))(boxed_opaque_existential_1, v76);
    v78 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }

  v137 = v25;
  v47 = v38;

  v48 = sub_265A1E690();
  swift_willThrow();
  *(v0 + 200) = v48;
  v49 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_27;
  }

  v50 = *(v0 + 208);
  if ([v50 code] != -10814)
  {

LABEL_27:
    v79 = *(v0 + 264);

    v80 = v48;
    v81 = sub_265A1EA80();
    v82 = sub_265A1EF20();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = *(v0 + 256);
      v141 = *(v0 + 264);
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v148 = v86;
      *v84 = 136446722;
      *(v84 + 4) = sub_2659D9320(v144, v4, &v148);
      *(v84 + 12) = 2082;
      *(v84 + 14) = sub_2659D9320(v83, v141, &v148);
      *(v84 + 22) = 2114;
      v87 = v48;
      v88 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 24) = v88;
      *v85 = v88;
      _os_log_impl(&dword_2659CA000, v81, v82, "Unable to form connection for AppEnum '%{public}s', AppIntent '%{public}s': %{public}@", v84, 0x20u);
      sub_2659DA270(v85, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v85, -1, -1);
      swift_arrayDestroy();
      v89 = v86;
      v2 = v144;
      MEMORY[0x266766110](v89, -1, -1);
      MEMORY[0x266766110](v84, -1, -1);
    }

    v91 = *(v0 + 256);
    v90 = *(v0 + 264);
    v92 = sub_265A1E680();
    sub_265A10D30(v24, v91, v90, v2, v4, &v148);
    v142 = v149;
    v146 = v148;
    v131 = v151;
    v134 = v150;
    v129 = v152;
    v93 = [v92 domain];
    v127 = sub_265A1EBA0();
    v95 = v94;

    v96 = [v92 code];
    swift_getErrorValue();
    v98 = *(v0 + 144);
    v97 = *(v0 + 152);
    v99 = *(v0 + 160);
    v100 = sub_265A1F380();
    v102 = v101;
    Current = CFAbsoluteTimeGetCurrent();
    v63 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
    v105 = *(v63 + 2);
    v104 = *(v63 + 3);
    if (v105 >= v104 >> 1)
    {
      v63 = sub_2659E0698((v104 > 1), v105 + 1, 1, v63);
    }

    *(v63 + 2) = v105 + 1;
    v106 = &v63[120 * v105];
    v106[32] = 2;
    *(v106 + 56) = v142;
    *(v106 + 40) = v146;
    *(v106 + 9) = v134;
    *(v106 + 10) = v131;
    v106[88] = v129;
    *(v106 + 12) = 1;
    *(v106 + 13) = v127;
    *(v106 + 14) = v95;
    *(v106 + 15) = v96;
    *(v106 + 16) = v100;
    *(v106 + 17) = v102;
    *(v106 + 18) = Current;
    goto LABEL_32;
  }

  v51 = *(v0 + 264);

  v52 = sub_265A1EA80();
  v53 = sub_265A1EF30();

  if (os_log_type_enabled(v52, v53))
  {
    v55 = *(v0 + 256);
    v54 = *(v0 + 264);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v148 = v57;
    *v56 = 136446210;
    *(v56 + 4) = sub_2659D9320(v55, v54, &v148);
    _os_log_impl(&dword_2659CA000, v52, v53, "AppIntent '%{public}s' is from a bundle that is in an offloaded state, skipping (enum).", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v58 = v57;
    v2 = v144;
    MEMORY[0x266766110](v58, -1, -1);
    MEMORY[0x266766110](v56, -1, -1);
  }

  sub_265A10D30(v24, *(v0 + 256), *(v0 + 264), v2, v4, &v148);
  v140 = v149;
  v145 = v148;
  v59 = v150;
  v60 = v151;
  v61 = v152;
  v62 = CFAbsoluteTimeGetCurrent();
  v63 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
  v65 = *(v63 + 2);
  v64 = *(v63 + 3);
  if (v65 >= v64 >> 1)
  {
    v63 = sub_2659E0698((v64 > 1), v65 + 1, 1, v63);
  }

  *(v63 + 2) = v65 + 1;
  v66 = &v63[120 * v65];
  v66[32] = 0;
  *(v66 + 56) = v140;
  *(v66 + 40) = v145;
  *(v66 + 9) = v59;
  *(v66 + 10) = v60;
  v66[88] = v61;
  *(v66 + 12) = 0x8000000000000000;
  *(v66 + 104) = 0u;
  *(v66 + 120) = 0u;
  *(v66 + 17) = 0;
  *(v66 + 18) = v62;

LABEL_32:
  v107 = *(v0 + 536);
  v108 = *(v0 + 528);
  v109 = *(v0 + 520);
  v110 = *(v0 + 512);
  v111 = *(v0 + 496);
  v118 = *(v0 + 488);
  v119 = *(v0 + 464);
  v120 = *(v0 + 440);
  v121 = *(v0 + 432);
  v122 = *(v0 + 424);
  v123 = *(v0 + 416);
  v124 = *(v0 + 392);
  v125 = *(v0 + 384);
  v126 = *(v0 + 376);
  v128 = *(v0 + 368);
  v130 = *(v0 + 360);
  v132 = *(v0 + 352);
  v135 = *(v0 + 344);
  v138 = *(v0 + 336);
  v143 = *(v0 + 328);
  v147 = *(v0 + 304);
  v113 = *(v0 + 256);
  v112 = *(v0 + 264);
  v114 = *(v0 + 248);

  *v114 = v113;
  v114[1] = v112;
  v114[2] = v110;
  v114[3] = v109;
  v114[4] = MEMORY[0x277D84F90];
  v114[5] = v63;
  sub_265A10AA4();

  v115 = *(v0 + 8);
  v116 = *MEMORY[0x277D85DE8];

  return v115();
}

uint64_t sub_265A0E2B8()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 576) = v2;
  if (v2)
  {
    v3 = sub_265A1032C;
  }

  else
  {
    v3 = sub_265A0E3F4;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265A0E3F4()
{
  v409 = v0;
  v408 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);

  if (!v1)
  {
LABEL_6:
    sub_265A0CAD0();
    v15 = swift_allocError();
    *v16 = 3;
    swift_willThrow();
    v17 = *(v0 + 568);
    *(v0 + 232) = v15;
    v18 = v15;
    v19 = swift_dynamicCast();
    v20 = *(v0 + 552);
    v21 = *(v0 + 280);
    v22 = *(v0 + 264);
    if (v19)
    {
      v23 = *(v0 + 584) == 3;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {

      v60 = v21;
      v61 = sub_265A1EA80();
      v62 = sub_265A1EF20();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = *(v0 + 280);
        v65 = *(v0 + 256);
        v64 = *(v0 + 264);
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v403 = v67;
        *v66 = 136446466;
        v68 = [v63 identifier];
        v69 = sub_265A1EBA0();
        v71 = v70;

        v72 = sub_2659D9320(v69, v71, &v403);

        *(v66 + 4) = v72;
        *(v66 + 12) = 2082;
        *(v66 + 14) = sub_2659D9320(v65, v64, &v403);
        _os_log_impl(&dword_2659CA000, v61, v62, "No URLs returned for AppEnum (id: %{public}s), AppIntent: %{public}s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266766110](v67, -1, -1);
        MEMORY[0x266766110](v66, -1, -1);
      }

      sub_265A10D30(*(v0 + 536), *(v0 + 256), *(v0 + 264), *(v0 + 512), *(v0 + 520), &v403);
      v390 = v404;
      v395 = v403;
      v73 = v405;
      v74 = v406;
      v75 = v407;
      Current = CFAbsoluteTimeGetCurrent();
      v77 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
      v79 = *(v77 + 2);
      v78 = *(v77 + 3);
      if (v79 >= v78 >> 1)
      {
        v77 = sub_2659E0698((v78 > 1), v79 + 1, 1, v77);
      }

      v379 = v77;
      v80 = *(v0 + 560);

      *(v77 + 2) = v79 + 1;
      v81 = &v77[120 * v79];
      v81[32] = 2;
      *(v81 + 56) = v390;
      *(v81 + 40) = v395;
      *(v81 + 9) = v73;
      *(v81 + 10) = v74;
      v81[88] = v75;
      *(v81 + 6) = xmmword_265A22690;
      *(v81 + 7) = 0u;
      *(v81 + 8) = 0u;
      *(v81 + 18) = Current;
    }

    else
    {

      v24 = v21;
      v25 = v15;
      v26 = sub_265A1EA80();
      v27 = sub_265A1EF20();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(v0 + 280);
        v388 = *(v0 + 264);
        v374 = *(v0 + 256);
        v29 = swift_slowAlloc();
        v378 = swift_slowAlloc();
        v393 = swift_slowAlloc();
        *&v403 = v393;
        *v29 = 136446722;
        v30 = [v28 identifier];
        v31 = sub_265A1EBA0();
        v33 = v32;

        v34 = sub_2659D9320(v31, v33, &v403);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2082;
        *(v29 + 14) = sub_2659D9320(v374, v388, &v403);
        *(v29 + 22) = 2114;
        v35 = v15;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 24) = v36;
        *v378 = v36;
        _os_log_impl(&dword_2659CA000, v26, v27, "Failed to fetch URLs for AppEnum (id: %{public}s), AppIntent: %{public}s, error: %{public}@", v29, 0x20u);
        sub_2659DA270(v378, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v378, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v393, -1, -1);
        MEMORY[0x266766110](v29, -1, -1);
      }

      v37 = *(v0 + 536);
      v38 = *(v0 + 520);
      v39 = *(v0 + 512);
      v41 = *(v0 + 256);
      v40 = *(v0 + 264);
      v42 = sub_265A1E680();
      sub_265A10D30(v37, v41, v40, v39, v38, &v403);
      v389 = v404;
      v394 = v403;
      v43 = v405;
      v375 = v406;
      v368 = v407;
      v44 = [v42 domain];
      v45 = sub_265A1EBA0();
      v363 = v46;
      v366 = v45;

      v360 = [v42 code];
      swift_getErrorValue();
      v48 = *(v0 + 168);
      v47 = *(v0 + 176);
      v49 = *(v0 + 184);
      v50 = sub_265A1F380();
      v52 = v51;
      v53 = CFAbsoluteTimeGetCurrent();
      v54 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      v57 = v54;
      if (v56 >= v55 >> 1)
      {
        v57 = sub_2659E0698((v55 > 1), v56 + 1, 1, v54);
      }

      v58 = *(v0 + 560);

      *(v57 + 2) = v56 + 1;
      v379 = v57;
      v59 = &v57[120 * v56];
      v59[32] = 2;
      *(v59 + 56) = v389;
      *(v59 + 40) = v394;
      *(v59 + 9) = v43;
      *(v59 + 10) = v375;
      v59[88] = v368;
      *(v59 + 12) = 3;
      *(v59 + 13) = v366;
      *(v59 + 14) = v363;
      *(v59 + 15) = v360;
      *(v59 + 16) = v50;
      *(v59 + 17) = v52;
      *(v59 + 18) = v53;
    }

    v364 = MEMORY[0x277D84F90];
    goto LABEL_107;
  }

  if (!*(v1 + 16))
  {

    goto LABEL_6;
  }

  v2 = *(v0 + 552);
  v3 = *(v0 + 520);
  v4 = *(v0 + 264);

  v5 = sub_265A1EA80();
  v6 = sub_265A1EF30();

  v365 = v1;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 520);
    v8 = *(v0 + 512);
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v403 = v12;
    *v11 = 134218498;
    *(v11 + 4) = *(v365 + 16);

    *(v11 + 12) = 2082;
    v13 = v9;
    v14 = v365;
    *(v11 + 14) = sub_2659D9320(v10, v13, &v403);
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2659D9320(v8, v7, &v403);
    _os_log_impl(&dword_2659CA000, v5, v6, "…retrieved %ld URLs for AppIntent: %{public}s, AppEnum %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v12, -1, -1);
    MEMORY[0x266766110](v11, -1, -1);
  }

  else
  {
    v14 = v1;
  }

  v82 = *(v0 + 552);
  v83 = *(v0 + 520);
  v84 = *(v0 + 264);
  v85 = *(v0 + 280);

  v86 = v85;
  v87 = sub_265A1EA80();
  v88 = sub_265A1EF30();

  v89 = os_log_type_enabled(v87, v88);
  v90 = *(v0 + 280);
  v91 = 0x279BB1000uLL;
  if (v89)
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v403 = v93;
    *v92 = 134349570;
    v94 = [v90 cases];
    sub_2659F3D98(0, &qword_28156A8C8, 0x277D23830);
    v95 = sub_265A1ECC0();

    v396 = v93;
    if (v95 >> 62)
    {
      v96 = sub_265A1F1E0();
    }

    else
    {
      v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v97 = *(v0 + 520);
    v98 = *(v0 + 512);
    v99 = *(v0 + 280);
    v101 = *(v0 + 256);
    v100 = *(v0 + 264);

    *(v92 + 4) = v96;
    *(v92 + 12) = 2082;
    *(v92 + 14) = sub_2659D9320(v101, v100, &v403);
    *(v92 + 22) = 2082;
    *(v92 + 24) = sub_2659D9320(v98, v97, &v403);
    _os_log_impl(&dword_2659CA000, v87, v88, "Begin processing %{public}ld Enum Cases for AppIntent: %{public}s, AppEnum %{public}s…", v92, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v396, -1, -1);
    MEMORY[0x266766110](v92, -1, -1);

    v102 = v365;
    v91 = 0x279BB1000;
  }

  else
  {

    v102 = v14;
  }

  v103 = [*(v0 + 280) *(v91 + 3024)];
  sub_2659F3D98(0, &qword_28156A8C8, 0x277D23830);
  v104 = sub_265A1ECC0();

  if (v104 >> 62)
  {
    goto LABEL_101;
  }

  v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &unk_265A21000; v105; i = &unk_265A21000)
  {
    v107 = 0;
    v108 = *(v0 + 408);
    v333 = v104 & 0xFFFFFFFFFFFFFF8;
    v332 = v104 + 32;
    v319 = *(v0 + 336);
    v361 = v104 & 0xC000000000000001;
    v342 = (v108 + 48);
    v109 = *(v0 + 296);
    v323 = (v108 + 8);
    v324 = v108;
    v320 = (v108 + 32);
    v321 = (v108 + 56);
    v322 = *(v0 + 272);
    v344 = (v109 + 56);
    v318 = (v109 + 32);
    v316 = *(v0 + 312);
    v317 = *(v0 + 320);
    v325 = i[330];
    v110 = MEMORY[0x277D84F90];
    v364 = MEMORY[0x277D84F90];
    v355 = v105;
    v357 = v104;
    while (1)
    {
      if (v361)
      {
        v117 = MEMORY[0x2667656F0](v107, v104);
      }

      else
      {
        if (v107 >= *(v333 + 16))
        {
          goto LABEL_100;
        }

        v117 = *(v332 + 8 * v107);
      }

      v118 = v117;
      v119 = __OFADD__(v107, 1);
      v120 = v107 + 1;
      if (v119)
      {
        break;
      }

      v376 = v120;
      v121 = swift_allocObject();
      *(v121 + 16) = 0u;
      *(v121 + 32) = 0u;
      *(v121 + 48) = 0u;
      v397 = v121;
      *(v121 + 64) = -1;
      v391 = [v118 displayRepresentation];
      v122 = [v118 identifier];
      v123 = sub_265A1EBA0();
      v125 = v124;

      if (!*(v102 + 16))
      {

LABEL_46:
        v146 = *(v0 + 552);
        v147 = *(v0 + 280);
        v148 = v118;
        v149 = sub_265A1EA80();
        v150 = sub_265A1EF30();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = *(v0 + 280);
          v152 = swift_slowAlloc();
          v381 = v110;
          v153 = swift_slowAlloc();
          *&v403 = v153;
          *v152 = v325;
          v154 = [v151 identifier];
          v155 = sub_265A1EBA0();
          v157 = v156;

          v158 = sub_2659D9320(v155, v157, &v403);

          *(v152 + 4) = v158;
          *(v152 + 12) = 2082;
          v159 = [v148 identifier];
          v160 = sub_265A1EBA0();
          v162 = v161;

          v163 = sub_2659D9320(v160, v162, &v403);

          *(v152 + 14) = v163;
          _os_log_impl(&dword_2659CA000, v149, v150, "Could not resolve URL for AppEnum '%{public}s', case '%{public}s'.", v152, 0x16u);
          swift_arrayDestroy();
          v164 = v153;
          v110 = v381;
          v104 = v357;
          MEMORY[0x266766110](v164, -1, -1);
          v165 = v152;
          v105 = v355;
          MEMORY[0x266766110](v165, -1, -1);
        }

        sub_265A10F58(v397, *(v0 + 256), *(v0 + 264), *(v0 + 512), *(v0 + 520), v148, &v403);
        v370 = v404;
        v382 = v403;
        v166 = v405;
        v167 = v406;
        v168 = v407;
        v169 = CFAbsoluteTimeGetCurrent();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_2659E0698(0, *(v110 + 2) + 1, 1, v110);
        }

        v171 = *(v110 + 2);
        v170 = *(v110 + 3);
        if (v171 >= v170 >> 1)
        {
          v110 = sub_2659E0698((v170 > 1), v171 + 1, 1, v110);
        }

        *(v110 + 2) = v171 + 1;
        v172 = &v110[120 * v171];
        v172[32] = 2;
        v173 = *(&v400 + 3);
        *(v172 + 33) = v400;
        *(v172 + 9) = v173;
        *(v172 + 56) = v370;
        *(v172 + 40) = v382;
        *(v172 + 9) = v166;
        *(v172 + 10) = v167;
        v172[88] = v168;
        v174 = *(&v403 + 3);
        *(v172 + 89) = v403;
        *(v172 + 23) = v174;
        *(v172 + 12) = 0x8000000000000003;
        *(v172 + 104) = 0u;
        *(v172 + 120) = 0u;
        *(v172 + 17) = 0;
        *(v172 + 18) = v169;

        v102 = v365;
        goto LABEL_32;
      }

      v126 = sub_265A0C9AC(v123, v125);
      v128 = v127;

      if ((v128 & 1) == 0)
      {
        goto LABEL_46;
      }

      v369 = v118;
      v380 = v110;
      v129 = *(v0 + 440);
      v131 = *(v0 + 416);
      v130 = *(v0 + 424);
      v132 = *(v0 + 400);
      v133 = *(v0 + 272);
      v134 = *(v324 + 16);
      v134(v129, *(v102 + 56) + *(v324 + 72) * v126, v132);
      v134(v130, v129, v132);
      v352 = v134;
      v134(v131, v129, v132);
      v135 = *(v322 + 16);

      v136 = v342;
      if (v135)
      {
        v137 = (v322 + 40);
        while (1)
        {
          v138 = *(v0 + 416);
          v139 = *(v0 + 400);
          v140 = *(v0 + 384);
          v142 = *(v137 - 1);
          v141 = *v137;

          v142(v138);

          v143 = *v342;
          if ((*v342)(v140, 1, v139) != 1)
          {
            break;
          }

          sub_2659DA270(*(v0 + 384), &qword_28002B700, &qword_265A22658);
          v137 += 2;
          if (!--v135)
          {
            goto LABEL_44;
          }
        }

        v175 = *(v0 + 424);
        v176 = *(v0 + 400);
        v177 = *(v0 + 376);
        v178 = *(v0 + 368);
        sub_2659DA270(*(v0 + 384), &qword_28002B700, &qword_265A22658);
        v180 = *(v137 - 1);
        v179 = *v137;

        v180(v175);
        v144 = *v323;
        (*v323)(v175, v176);

        sub_265A0CBE8(v177, v178, &qword_28002B700, &qword_265A22658);
        v181 = v178;
        v136 = v342;
        v110 = v380;
        if (v143(v181, 1, v176) == 1)
        {
          result = (v144)(*(v0 + 416), *(v0 + 400));
          __break(1u);
          return result;
        }

        v182 = *(v0 + 376);
        (*v320)(*(v0 + 392), *(v0 + 368), *(v0 + 400));
        sub_2659DA270(v182, &qword_28002B700, &qword_265A22658);
        v145 = 0;
      }

      else
      {
LABEL_44:
        v144 = *v323;
        (*v323)(*(v0 + 424), *(v0 + 400));
        v145 = 1;
        v110 = v380;
      }

      v350 = v144;
      v183 = *(v0 + 416);
      v185 = *(v0 + 392);
      v184 = *(v0 + 400);
      v186 = *(v0 + 272);
      (*v321)(v185, v145, 1, v184);

      v144(v183, v184);
      if ((*v136)(v185, 1, v184) == 1)
      {
        v187 = *(v0 + 432);
        v188 = *(v0 + 440);
        v189 = *(v0 + 400);
        sub_2659DA270(*(v0 + 392), &qword_28002B700, &qword_265A22658);
        v352(v187, v188, v189);
        v190 = v369;
        v191 = v391;
      }

      else
      {
        v192 = *(v0 + 520);
        v193 = *(v0 + 512);
        v195 = *(v0 + 256);
        v194 = *(v0 + 264);
        (*v320)(*(v0 + 432), *(v0 + 392), *(v0 + 400));
        sub_265A10F58(v397, v195, v194, v193, v192, v369, &v403);
        v346 = v404;
        v383 = v403;
        v196 = v405;
        v197 = v406;
        v198 = v407;
        v199 = CFAbsoluteTimeGetCurrent();
        v191 = v391;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_2659E0698(0, *(v110 + 2) + 1, 1, v110);
        }

        v201 = *(v110 + 2);
        v200 = *(v110 + 3);
        if (v201 >= v200 >> 1)
        {
          v110 = sub_2659E0698((v200 > 1), v201 + 1, 1, v110);
        }

        *(v110 + 2) = v201 + 1;
        v202 = &v110[120 * v201];
        v202[32] = 1;
        v203 = *(&v400 + 3);
        *(v202 + 33) = v400;
        *(v202 + 9) = v203;
        *(v202 + 56) = v346;
        *(v202 + 40) = v383;
        *(v202 + 9) = v196;
        *(v202 + 10) = v197;
        v202[88] = v198;
        v204 = v403;
        *(v202 + 23) = *(&v403 + 3);
        *(v202 + 89) = v204;
        *(v202 + 7) = 0u;
        *(v202 + 8) = 0u;
        *(v202 + 6) = xmmword_265A22600;
        *(v202 + 18) = v199;
        v190 = v369;
      }

      v205 = [v191 image];
      if (v205)
      {
        v206 = v205;
        objc_opt_self();
        v207 = swift_dynamicCastObjCClass();
        if (v207)
        {
          v208 = v207;
          v209 = v206;
          v210 = [v208 iconType];
          if (v210 == 1)
          {
            v213 = [v208 identifier];
            v340 = sub_265A1EBA0();
            v341 = v214;

            LOBYTE(v347) = 0;
            LOBYTE(v339) = 0;
            goto LABEL_76;
          }

          if (!v210)
          {
            v211 = [v208 identifier];
            v340 = sub_265A1EBA0();
            v341 = v212;

            LOBYTE(v347) = 0;
            LOBYTE(v339) = 1;
LABEL_76:
            v225 = [v191 subtitle];
            if (v225)
            {
              v226 = v225;
              v227 = [v225 localizedStringResource];
              if (!v227)
              {
                goto LABEL_98;
              }

              v228 = v227;
              v229 = *(v0 + 360);
              *(&v404 + 1) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
              *&v403 = v228;
              v230 = v228;
              sub_265A1E6A0();

              v231 = 0;
            }

            else
            {
              v231 = 1;
            }

            v260 = *v344;
            (*v344)(*(v0 + 360), v231, 1, *(v0 + 288));
            v261 = [v190 identifier];
            v262 = sub_265A1EBA0();
            v338 = v263;

            v264 = [v191 title];
            v265 = [v264 localizedStringResource];
            if (!v265)
            {
LABEL_98:
              result = sub_265A1F1C0();
              v293 = *MEMORY[0x277D85DE8];
              return result;
            }

            v266 = v265;
            v387 = v110;
            v268 = *(v0 + 352);
            v267 = *(v0 + 360);
            v269 = *(v0 + 304);
            v270 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
            *(&v404 + 1) = v270;
            *&v403 = v266;
            v271 = v266;
            sub_265A1E6A0();

            sub_265A0CBE8(v267, v268, &qword_28002B6F0, &qword_265A21110);
            v272 = [v191 synonyms];
            if (v272)
            {
              v273 = v272;
              sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
              sub_265A1ECC0();

              v274 = sub_265A0C54C();
            }

            else
            {
              v274 = MEMORY[0x277D84F90];
            }

            v275 = [v191 descriptionText];
            v335 = v262;
            v336 = v260;
            v334 = v274;
            if (v275)
            {
              v276 = v275;
              v277 = [v275 localizedStringResource];
              if (!v277)
              {
                goto LABEL_98;
              }

              v278 = *(v0 + 344);
              *(&v404 + 1) = v270;
              *&v403 = v277;
              v279 = v277;
              sub_265A1E6A0();
            }

            v280 = *(v0 + 520);
            v281 = *(v0 + 432);
            v282 = *(v0 + 400);
            v328 = v280;
            v329 = *(v0 + 344);
            v283 = *(v0 + 336);
            v330 = *(v0 + 352);
            v331 = *(v0 + 328);
            v326 = *(v0 + 512);
            v327 = *(v0 + 304);
            v284 = *(v0 + 288);
            v285 = *(v0 + 256);
            v286 = *(v0 + 264);
            v336();
            v352(&v283[v316[11]], v281, v282);
            v287 = v316[8];
            (v336)(&v283[v287], 1, 1, v284);
            v288 = v316[10];
            (v336)(&v283[v288], 1, 1, v284);
            *v283 = v285;
            v319[1] = v286;
            v319[2] = v326;
            v319[3] = v328;
            v319[4] = v335;
            v319[5] = v338;
            (*v318)(&v283[v316[7]], v327, v284);

            sub_2659D9AD0(v330, &v283[v287]);
            *&v283[v316[9]] = v334;
            sub_2659D9AD0(v329, &v283[v288]);
            v289 = &v283[v316[12]];
            *v289 = v340;
            *(v289 + 1) = v341;
            v289[16] = v347 & 1;
            v289[17] = v339;
            sub_2659DE470(v283, v331);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v364 = sub_2659E0670(0, v364[2] + 1, 1, v364);
            }

            v110 = v387;
            v291 = v364[2];
            v290 = v364[3];
            if (v291 >= v290 >> 1)
            {
              v364 = sub_2659E0670(v290 > 1, v291 + 1, 1, v364);
            }

            v112 = *(v0 + 432);
            v111 = *(v0 + 440);
            v113 = *(v0 + 400);
            v114 = *(v0 + 360);
            v116 = *(v0 + 328);
            v115 = *(v0 + 336);

            sub_2659DA270(v114, &qword_28002B6F0, &qword_265A21110);
            v350(v112, v113);
            v350(v111, v113);
            v364[2] = v291 + 1;
            sub_265A0CC50(v116, v364 + ((*(v317 + 80) + 32) & ~*(v317 + 80)) + *(v317 + 72) * v291);
            sub_2659DCF64(v115);
            goto LABEL_31;
          }
        }
      }

      v215 = *(v0 + 432);
      sub_265A1CF6C(&v400);
      v216 = v401;
      if (v401)
      {
        v340 = v400;
        v347 = v402;
        sub_265A10F58(v397, *(v0 + 256), *(v0 + 264), *(v0 + 512), *(v0 + 520), v190, &v403);
        v337 = v404;
        v384 = v403;
        v217 = v405;
        v218 = v406;
        v219 = v407;
        v220 = CFAbsoluteTimeGetCurrent();
        v341 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_2659E0698(0, *(v110 + 2) + 1, 1, v110);
        }

        v222 = *(v110 + 2);
        v221 = *(v110 + 3);
        if (v222 >= v221 >> 1)
        {
          v110 = sub_2659E0698((v221 > 1), v222 + 1, 1, v110);
        }

        v339 = (v347 >> 8) & 1;
        *(v110 + 2) = v222 + 1;
        v223 = &v110[120 * v222];
        v223[32] = 1;
        *(v223 + 33) = *v399;
        *(v223 + 9) = *&v399[3];
        *(v223 + 56) = v337;
        *(v223 + 40) = v384;
        *(v223 + 9) = v217;
        *(v223 + 10) = v218;
        v223[88] = v219;
        v224 = v403;
        *(v223 + 23) = *(&v403 + 3);
        *(v223 + 89) = v224;
        *(v223 + 7) = 0u;
        *(v223 + 8) = 0u;
        *(v223 + 6) = xmmword_265A22610;
        *(v223 + 18) = v220;
        v190 = v369;
        goto LABEL_76;
      }

      v232 = *(v0 + 552);
      v233 = *(v0 + 520);
      v234 = *(v0 + 264);

      v235 = v190;
      v236 = sub_265A1EA80();
      v237 = sub_265A1EF30();

      if (os_log_type_enabled(v236, v237))
      {
        v238 = *(v0 + 520);
        v239 = *(v0 + 512);
        v371 = *(v0 + 264);
        v353 = *(v0 + 256);
        v240 = swift_slowAlloc();
        v385 = v110;
        v241 = swift_slowAlloc();
        *&v403 = v241;
        *v240 = 136446722;
        *(v240 + 4) = sub_2659D9320(v239, v238, &v403);
        *(v240 + 12) = 2082;
        v242 = [v235 identifier];
        v243 = sub_265A1EBA0();
        v245 = v244;

        v246 = sub_2659D9320(v243, v245, &v403);

        *(v240 + 14) = v246;
        *(v240 + 22) = 2082;
        *(v240 + 24) = sub_2659D9320(v353, v371, &v403);
        _os_log_impl(&dword_2659CA000, v236, v237, "Could not resolve Icon for AppEnum '%{public}s', case '%{public}s', AppIntent '%{public}s'.", v240, 0x20u);
        swift_arrayDestroy();
        v247 = v241;
        v110 = v385;
        MEMORY[0x266766110](v247, -1, -1);
        MEMORY[0x266766110](v240, -1, -1);
      }

      sub_265A10F58(v397, *(v0 + 256), *(v0 + 264), *(v0 + 512), *(v0 + 520), v235, &v403);
      v372 = v404;
      v386 = v403;
      v248 = v405;
      v249 = v406;
      v250 = v407;
      v251 = CFAbsoluteTimeGetCurrent();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_2659E0698(0, *(v110 + 2) + 1, 1, v110);
      }

      v253 = *(v110 + 2);
      v252 = *(v110 + 3);
      if (v253 >= v252 >> 1)
      {
        v110 = sub_2659E0698((v252 > 1), v253 + 1, 1, v110);
      }

      v255 = *(v0 + 432);
      v254 = *(v0 + 440);
      v256 = *(v0 + 400);

      v350(v255, v256);
      v350(v254, v256);
      *(v110 + 2) = v253 + 1;
      v257 = &v110[120 * v253];
      v257[32] = 2;
      v258 = *(&v400 + 3);
      *(v257 + 33) = v400;
      *(v257 + 9) = v258;
      *(v257 + 56) = v372;
      *(v257 + 40) = v386;
      *(v257 + 9) = v248;
      *(v257 + 10) = v249;
      v257[88] = v250;
      v259 = *(&v403 + 3);
      *(v257 + 89) = v403;
      *(v257 + 23) = v259;
      *(v257 + 6) = xmmword_265A22620;
      *(v257 + 7) = 0u;
      *(v257 + 8) = 0u;
      *(v257 + 18) = v251;
LABEL_31:

      v102 = v365;
      v105 = v355;
      v104 = v357;
LABEL_32:
      v107 = v376;
      if (v376 == v105)
      {
        goto LABEL_103;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    v105 = sub_265A1F1E0();
  }

  v110 = MEMORY[0x277D84F90];
  v364 = MEMORY[0x277D84F90];
LABEL_103:
  v294 = *(v0 + 552);
  v295 = *(v0 + 264);

  v296 = sub_265A1EA80();
  v297 = sub_265A1EF30();

  v298 = os_log_type_enabled(v296, v297);
  v299 = *(v0 + 560);
  v300 = *(v0 + 544);
  v379 = v110;
  if (v298)
  {
    v302 = *(v0 + 256);
    v301 = *(v0 + 264);
    v303 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    *&v403 = v304;
    *v303 = 136446466;
    *(v303 + 4) = sub_2659D9320(v302, v301, &v403);
    *(v303 + 12) = 2050;
    *(v303 + 14) = v364[2];

    _os_log_impl(&dword_2659CA000, v296, v297, "…finished processing Enum Cases for AppIntent '%{public}s', retrieved %{public}ld items.", v303, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v304);
    MEMORY[0x266766110](v304, -1, -1);
    MEMORY[0x266766110](v303, -1, -1);
  }

  else
  {
  }

LABEL_107:
  v305 = *(v0 + 536);
  v306 = *(v0 + 528);
  v307 = *(v0 + 520);
  v308 = *(v0 + 512);
  v310 = *(v0 + 488);
  v309 = *(v0 + 496);
  v343 = *(v0 + 464);
  v345 = *(v0 + 440);
  v348 = *(v0 + 432);
  v349 = *(v0 + 424);
  v351 = *(v0 + 416);
  v354 = *(v0 + 392);
  v356 = *(v0 + 384);
  v358 = *(v0 + 376);
  v359 = *(v0 + 368);
  v362 = *(v0 + 360);
  v367 = *(v0 + 352);
  v373 = *(v0 + 344);
  v377 = *(v0 + 336);
  v392 = *(v0 + 328);
  v398 = *(v0 + 304);
  v312 = *(v0 + 256);
  v311 = *(v0 + 264);
  v313 = *(v0 + 248);

  *v313 = v312;
  v313[1] = v311;
  v313[2] = v308;
  v313[3] = v307;
  v313[4] = v364;
  v313[5] = v379;
  sub_265A10AA4();

  v314 = *(v0 + 8);
  v315 = *MEMORY[0x277D85DE8];

  return v314();
}

uint64_t sub_265A1032C()
{
  v113 = v0;
  v112 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 576);
  v2 = *(v0 + 504);
  swift_willThrow();

  v3 = *(v0 + 576);
  *(v0 + 232) = v3;
  v4 = *(v0 + 568);
  v5 = v3;
  v6 = swift_dynamicCast();
  v7 = *(v0 + 552);
  v8 = *(v0 + 280);
  v9 = *(v0 + 264);
  if (v6)
  {
    v10 = *(v0 + 584) == 3;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {

    v47 = v8;
    v48 = sub_265A1EA80();
    v49 = sub_265A1EF20();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 280);
      v52 = *(v0 + 256);
      v51 = *(v0 + 264);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v107 = v54;
      *v53 = 136446466;
      v55 = [v50 identifier];
      v56 = sub_265A1EBA0();
      v58 = v57;

      v59 = sub_2659D9320(v56, v58, &v107);

      *(v53 + 4) = v59;
      *(v53 + 12) = 2082;
      *(v53 + 14) = sub_2659D9320(v52, v51, &v107);
      _os_log_impl(&dword_2659CA000, v48, v49, "No URLs returned for AppEnum (id: %{public}s), AppIntent: %{public}s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v54, -1, -1);
      MEMORY[0x266766110](v53, -1, -1);
    }

    sub_265A10D30(*(v0 + 536), *(v0 + 256), *(v0 + 264), *(v0 + 512), *(v0 + 520), &v107);
    v102 = v108;
    v105 = v107;
    v60 = v109;
    v61 = v110;
    v62 = v111;
    Current = CFAbsoluteTimeGetCurrent();
    v42 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
    v65 = *(v42 + 2);
    v64 = *(v42 + 3);
    if (v65 >= v64 >> 1)
    {
      v42 = sub_2659E0698((v64 > 1), v65 + 1, 1, v42);
    }

    v66 = *(v0 + 560);

    *(v42 + 2) = v65 + 1;
    v67 = &v42[120 * v65];
    v67[32] = 2;
    *(v67 + 56) = v102;
    *(v67 + 40) = v105;
    *(v67 + 9) = v60;
    *(v67 + 10) = v61;
    v67[88] = v62;
    *(v67 + 6) = xmmword_265A22690;
    *(v67 + 7) = 0u;
    *(v67 + 8) = 0u;
    *(v67 + 18) = Current;
  }

  else
  {

    v11 = v8;
    v12 = v3;
    v13 = sub_265A1EA80();
    v14 = sub_265A1EF20();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 280);
      v94 = *(v0 + 256);
      v97 = *(v0 + 264);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v107 = v100;
      *v16 = 136446722;
      v18 = [v15 identifier];
      v19 = sub_265A1EBA0();
      v21 = v20;

      v22 = sub_2659D9320(v19, v21, &v107);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_2659D9320(v94, v97, &v107);
      *(v16 + 22) = 2114;
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v24;
      *v17 = v24;
      _os_log_impl(&dword_2659CA000, v13, v14, "Failed to fetch URLs for AppEnum (id: %{public}s), AppIntent: %{public}s, error: %{public}@", v16, 0x20u);
      sub_2659DA270(v17, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v100, -1, -1);
      MEMORY[0x266766110](v16, -1, -1);
    }

    v25 = *(v0 + 536);
    v26 = *(v0 + 520);
    v27 = *(v0 + 512);
    v29 = *(v0 + 256);
    v28 = *(v0 + 264);
    v30 = sub_265A1E680();
    sub_265A10D30(v25, v29, v28, v27, v26, &v107);
    v101 = v108;
    v104 = v107;
    v95 = v110;
    v98 = v109;
    v92 = v111;
    v31 = [v30 domain];
    v32 = sub_265A1EBA0();
    v88 = v33;
    v90 = v32;

    v34 = [v30 code];
    swift_getErrorValue();
    v36 = *(v0 + 168);
    v35 = *(v0 + 176);
    v37 = *(v0 + 184);
    v38 = sub_265A1F380();
    v40 = v39;
    v41 = CFAbsoluteTimeGetCurrent();
    v42 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_2659E0698((v43 > 1), v44 + 1, 1, v42);
    }

    v45 = *(v0 + 560);

    *(v42 + 2) = v44 + 1;
    v46 = &v42[120 * v44];
    v46[32] = 2;
    *(v46 + 56) = v101;
    *(v46 + 40) = v104;
    *(v46 + 9) = v98;
    *(v46 + 10) = v95;
    v46[88] = v92;
    *(v46 + 12) = 3;
    *(v46 + 13) = v90;
    *(v46 + 14) = v88;
    *(v46 + 15) = v34;
    *(v46 + 16) = v38;
    *(v46 + 17) = v40;
    *(v46 + 18) = v41;
  }

  v68 = *(v0 + 536);
  v69 = *(v0 + 528);
  v70 = *(v0 + 520);
  v71 = *(v0 + 512);
  v72 = *(v0 + 496);
  v79 = *(v0 + 488);
  v80 = *(v0 + 464);
  v81 = *(v0 + 440);
  v82 = *(v0 + 432);
  v83 = *(v0 + 424);
  v84 = *(v0 + 416);
  v85 = *(v0 + 392);
  v86 = *(v0 + 384);
  v87 = *(v0 + 376);
  v89 = *(v0 + 368);
  v91 = *(v0 + 360);
  v93 = *(v0 + 352);
  v96 = *(v0 + 344);
  v99 = *(v0 + 336);
  v103 = *(v0 + 328);
  v106 = *(v0 + 304);
  v74 = *(v0 + 256);
  v73 = *(v0 + 264);
  v75 = *(v0 + 248);

  *v75 = v74;
  v75[1] = v73;
  v75[2] = v71;
  v75[3] = v70;
  v75[4] = MEMORY[0x277D84F90];
  v75[5] = v42;
  sub_265A10AA4();

  v76 = *(v0 + 8);
  v77 = *MEMORY[0x277D85DE8];

  return v76();
}

uint64_t sub_265A10AA4()
{
  v0 = sub_265A1EA30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265A1E9F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v10 = sub_265A1EA20();
  __swift_project_value_buffer(v10, qword_28156B4E8);
  v11 = sub_265A1EA10();
  sub_265A1EA40();
  v12 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v11, v12, v15, "Search Items From AppEnum", v13, v14, 2u);
    MEMORY[0x266766110](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_265A10D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v8 = a1 + 16;
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = (v8 + 32);
  v14 = *(v8 + 32);
  v15 = *(v8 + 40);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = *(v8 + 48);
  v21 = v14;
  v22 = v15;
  v23 = *(v8 + 48);
  if (v20 == 255)
  {
    v23 = 1;
    v36 = *(v8 + 16);
    v18 = a4;
    v37 = v10;
    v38 = v9;
    swift_beginAccess();
    v33 = *(a1 + 24);
    v34 = *(a1 + 16);
    v31 = *(a1 + 40);
    v32 = *(a1 + 32);
    v29 = *(a1 + 56);
    v30 = *(a1 + 48);
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
    v19 = a5;
    *(a1 + 32) = v18;
    *(a1 + 40) = a5;
    *v13 = 0;
    v13[1] = 0;
    v28 = *(a1 + 64);
    *(a1 + 64) = 1;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_2659E0A0C(v34, v33, v32, v31, v30, v29, v28);
    v11 = v36;
    v10 = v37;
    v9 = v38;
    v21 = 0;
    v22 = 0;
    v16 = a2;
    v17 = a3;
  }

  *a6 = v16;
  *(a6 + 8) = v17;
  *(a6 + 16) = v18;
  *(a6 + 24) = v19;
  *(a6 + 32) = v21;
  *(a6 + 40) = v22;
  *(a6 + 48) = v23;
  return sub_2659E0A20(v9, v10, v11, v12, v14, v15, v20);
}

void sub_265A10E8C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B720, &qword_265A226A8);
    sub_265A1ED90();
  }

  else
  {
    if (a2)
    {
      sub_265A1E770();
      sub_265A1EAD0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B720, &qword_265A226A8);
    sub_265A1EDA0();
  }
}

uint64_t sub_265A10F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = a1 + 16;
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  v19 = *(v15 + 32);
  v18 = *(v15 + 40);
  v20 = v13;
  v21 = v14;
  v22 = v16;
  v23 = v17;
  v24 = *(v15 + 48);
  v25 = v19;
  v26 = v18;
  v27 = *(v15 + 48);
  if (v24 == 255)
  {
    v46 = v14;
    v47 = v13;
    v44 = *(v15 + 24);
    v45 = *(v15 + 16);
    v43 = a3;
    v29 = a4;
    v40 = a4;
    v41 = a2;

    v30 = [a6 identifier];
    v25 = sub_265A1EBA0();
    v26 = v31;

    swift_beginAccess();
    v38 = *(a1 + 24);
    v39 = *(a1 + 16);
    v36 = *(a1 + 40);
    v37 = *(a1 + 32);
    v34 = *(a1 + 56);
    v35 = *(a1 + 48);
    *(a1 + 16) = v41;
    *(a1 + 24) = v43;
    *(a1 + 32) = v29;
    *(a1 + 40) = a5;
    *(a1 + 48) = v25;
    *(a1 + 56) = v26;
    v33 = *(a1 + 64);
    v27 = 2;
    *(a1 + 64) = 2;

    sub_2659E0A0C(v39, v38, v37, v36, v35, v34, v33);
    v17 = v44;
    v16 = v45;
    v14 = v46;
    v13 = v47;
    v20 = v41;
    v21 = v43;
    v22 = v40;
    v23 = a5;
  }

  *a7 = v20;
  *(a7 + 8) = v21;
  *(a7 + 16) = v22;
  *(a7 + 24) = v23;
  *(a7 + 32) = v25;
  *(a7 + 40) = v26;
  *(a7 + 48) = v27;
  return sub_2659E0A20(v13, v14, v16, v17, v19, v18, v24);
}

void sub_265A1110C(uint64_t a1@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
LABEL_7:
    *a1 = 0;
    *(a1 + 8) = 0;
    goto LABEL_8;
  }

  v4 = v3;
  v5 = v1;
  v6 = [v4 iconType];
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = [v4 identifier];
      v8 = sub_265A1EBA0();
      v10 = v9;

      *a1 = v8;
      *(a1 + 8) = v10;
      *(a1 + 16) = 256;
      return;
    }

    goto LABEL_7;
  }

  v11 = [v4 identifier];
  v12 = sub_265A1EBA0();
  v14 = v13;

  *a1 = v12;
  *(a1 + 8) = v14;
LABEL_8:
  *(a1 + 16) = 0;
}

unint64_t sub_265A11204()
{
  v2 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = sub_265A1E9F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - v9;
  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v11 = sub_265A1EA20();
  __swift_project_value_buffer(v11, qword_28156B4E8);
  sub_265A1E9E0();
  v12 = sub_265A1EA10();
  v13 = sub_265A1EF50();
  if (sub_265A1EFA0())
  {
    v14 = swift_slowAlloc();
    v34[1] = v1;
    v15 = v14;
    *v14 = 0;
    v16 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v12, v13, v16, "OpenIntent Resolution", "", v15, 2u);
    v17 = v15;
    v2 = v0;
    MEMORY[0x266766110](v17, -1, -1);
  }

  (*(v4 + 16))(v8, v10, v3);
  v18 = sub_265A1EA60();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_265A1EA50();
  (*(v4 + 8))(v10, v3);
  if (qword_28156A978 != -1)
  {
    swift_once();
  }

  v21 = sub_265A1EAA0();
  __swift_project_value_buffer(v21, qword_28156B518);
  v22 = sub_265A1EA80();
  v23 = sub_265A1EF30();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2659CA000, v22, v23, "Retrieving all OpenIntents…", v24, 2u);
    MEMORY[0x266766110](v24, -1, -1);
  }

  v25 = [objc_opt_self() openEntitySystemProtocol];
  v26 = sub_265A11970(MEMORY[0x277D84F90]);
  sub_265A11A74();
  v27 = sub_265A1EAC0();

  v35[0] = 0;
  v28 = [v2 actionsConformingToSystemProtocol:v25 withParametersOfTypes:v27 bundleIdentifier:0 error:v35];

  v29 = v35[0];
  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B730, &qword_265A226B8);
    v26 = sub_265A1EAD0();
    v30 = v29;
  }

  else
  {
    v31 = v35[0];
    sub_265A1E690();

    swift_willThrow();
  }

  sub_265A11630();

  v32 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t sub_265A11630()
{
  v0 = sub_265A1EA30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265A1E9F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156A978 != -1)
  {
    swift_once();
  }

  v10 = sub_265A1EAA0();
  __swift_project_value_buffer(v10, qword_28156B518);
  v11 = sub_265A1EA80();
  v12 = sub_265A1EF30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2659CA000, v11, v12, "…completed retriving all OpenIntents.", v13, 2u);
    MEMORY[0x266766110](v13, -1, -1);
  }

  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v14 = sub_265A1EA20();
  __swift_project_value_buffer(v14, qword_28156B4E8);
  v15 = sub_265A1EA10();
  sub_265A1EA40();
  v16 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v15, v16, v19, "OpenIntent Resolution", v17, v18, 2u);
    MEMORY[0x266766110](v18, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_265A11970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B738, &qword_265A226C0);
    v3 = sub_265A1F210();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_265A0C9AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265A11A74()
{
  result = qword_28156A8F8;
  if (!qword_28156A8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156A8F8);
  }

  return result;
}

void static CSUserQuery.prepareForSearch()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B740, &qword_265A226C8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_265A225E0;
  v2 = *MEMORY[0x277CCA190];
  v3 = *MEMORY[0x277CCA1A0];
  *(v1 + 32) = *MEMORY[0x277CCA190];
  *(v1 + 40) = v3;
  type metadata accessor for FileProtectionType(0);
  v4 = v2;
  v5 = v3;
  v6 = sub_265A1ECB0();

  [ObjCClassFromMetadata prepareProtectionClasses_];
}

id static CSUserQuery.searchQuery(with:in:disableSemanticSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_265A12CD0(a4);
  v5 = objc_allocWithZone(MEMORY[0x277CC3500]);
  v6 = sub_265A1EB70();
  v7 = [v5 initWithUserQueryString:v6 userQueryContext:v4];

  v8 = v7;
  v9 = sub_265A1ECB0();
  [v8 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B740, &qword_265A226C8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_265A225E0;
  v11 = *MEMORY[0x277CCA190];
  v12 = *MEMORY[0x277CCA1A0];
  *(v10 + 32) = *MEMORY[0x277CCA190];
  *(v10 + 40) = v12;
  type metadata accessor for FileProtectionType(0);
  v13 = v11;
  v14 = v12;
  v15 = sub_265A1ECB0();

  [v8 setProtectionClasses_];

  return v8;
}

uint64_t static CSUserQuery.settingsSearchResult(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SettingsSearchResultItem();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B748, &qword_265A226D8) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B750, &qword_265A226E0);
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_265A1EEF0();
  v4[13] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B758, &qword_265A226E8);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265A11EFC, 0, 0);
}

uint64_t sub_265A11EFC()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v24 = v0[13];
  v25 = v0[17];
  v26 = v0[12];
  v5 = v0[5];
  v23 = v0[6];
  v6 = sub_265A12CD0(1);
  v0[19] = v6;
  [v6 setMaxResultCount_];
  [v6 setMaxRankedResultCount_];
  v7 = [objc_allocWithZone(MEMORY[0x277CC3500]) initWithUserQueryString:0 userQueryContext:v6];
  v0[20] = v7;
  v8 = v7;
  v9 = sub_265A1ECB0();
  [v8 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B740, &qword_265A226C8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_265A225E0;
  v11 = *MEMORY[0x277CCA190];
  v12 = *MEMORY[0x277CCA1A0];
  *(v10 + 32) = *MEMORY[0x277CCA190];
  *(v10 + 40) = v12;
  type metadata accessor for FileProtectionType(0);
  v13 = v11;
  v14 = v12;
  v15 = sub_265A1ECB0();

  [v8 setProtectionClasses_];

  sub_265A1EF00();
  sub_265A12BB8();
  sub_265A1F300();
  (*(v3 + 16))(v25, v1, v2);
  sub_2659F3ABC(&qword_28002B768, &qword_28002B758, &qword_265A226E8);
  sub_265A1EE10();
  v16 = sub_2659F3ABC(&qword_28002B770, &qword_28002B750, &qword_265A226E0);
  v17 = *(MEMORY[0x277D856D0] + 4);
  v18 = swift_task_alloc();
  v0[21] = v18;
  *v18 = v0;
  v18[1] = sub_265A121C8;
  v19 = v0[12];
  v20 = v0[9];
  v21 = v0[10];

  return MEMORY[0x282200308](v20, v21, v16);
}

uint64_t sub_265A121C8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v4 = sub_265A1257C;
  }

  else
  {
    v4 = sub_265A122F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265A122F4()
{
  v1 = v0[9];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[18];
    v3 = v0[15];
    v4 = v0[16];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v4 + 8))(v2, v3);
    v5 = 1;
LABEL_9:
    v18 = v0[19];
    v17 = v0[20];
    v19 = v0[17];
    v20 = v0[18];
    v21 = v0[14];
    v22 = v0[12];
    v24 = v0[8];
    v23 = v0[9];
    (*(v0[7] + 56))(v0[2], v5, 1, v0[6]);

    v25 = v0[1];

    return v25();
  }

  v6 = v0[8];
  v8 = v0[3];
  v7 = v0[4];
  sub_265A12C10(v1, v6);
  v9 = *v6 == v8 && v6[1] == v7;
  if (v9 || (v10 = v0[3], v11 = v0[4], (sub_265A1F340() & 1) != 0))
  {
    v12 = v0[18];
    v13 = v0[15];
    v14 = v0[16];
    v15 = v0[8];
    v16 = v0[2];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v14 + 8))(v12, v13);
    sub_265A12C10(v15, v16);
    v5 = 0;
    goto LABEL_9;
  }

  sub_265A12C74(v0[8]);
  v27 = sub_2659F3ABC(&qword_28002B770, &qword_28002B750, &qword_265A226E0);
  v28 = *(MEMORY[0x277D856D0] + 4);
  v29 = swift_task_alloc();
  v0[21] = v29;
  *v29 = v0;
  v29[1] = sub_265A121C8;
  v30 = v0[12];
  v31 = v0[9];
  v32 = v0[10];

  return MEMORY[0x282200308](v31, v32, v27);
}

uint64_t sub_265A1257C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  (*(v0[16] + 8))(v0[18], v0[15]);

  v8 = v0[1];
  v9 = v0[22];

  return v8();
}

uint64_t CSUserQuery.settingsSearchResults.getter()
{
  v0 = sub_265A1EEF0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_265A1EF00();
  type metadata accessor for SettingsSearchResultItem();
  sub_265A12BB8();
  return sub_265A1F300();
}

uint64_t sub_265A12714(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_265A1EEE0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_265A1EEB0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265A12830, 0, 0);
}

uint64_t sub_265A12830()
{
  v17 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277CC21D8])
  {
    v5 = v0[8];
    v4 = v0[9];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[2];
    (*(v0[5] + 96))(v7, v0[4]);
    (*(v5 + 32))(v4, v7, v6);
    v9 = sub_265A1EEA0();
    v16 = v9;
    sub_265A14730(&v16, v8);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v10 = v0[2];
    (*(v0[5] + 8))(v0[6], v0[4]);
    v11 = type metadata accessor for SettingsSearchResultItem();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  v12 = v0[9];
  v13 = v0[6];

  v14 = v0[1];

  return v14();
}

id sub_265A129D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265A21A40;
  v1 = *MEMORY[0x277CC2770];
  *(v0 + 32) = sub_265A1EBA0();
  *(v0 + 40) = v2;
  v3 = [objc_allocWithZone(MEMORY[0x277CC3508]) init];
  v4 = sub_265A1ECB0();

  [v3 setFetchAttributes_];

  [v3 setEnableRankedResults_];
  [v3 setDisableSemanticSearch_];
  v5 = [objc_allocWithZone(MEMORY[0x277CC3500]) initWithUserQueryString:0 userQueryContext:v3];
  v6 = sub_265A1ECB0();
  [v5 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B740, &qword_265A226C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_265A225E0;
  v8 = *MEMORY[0x277CCA190];
  v9 = *MEMORY[0x277CCA1A0];
  *(v7 + 32) = *MEMORY[0x277CCA190];
  *(v7 + 40) = v9;
  type metadata accessor for FileProtectionType(0);
  v10 = v8;
  v11 = v9;
  v12 = sub_265A1ECB0();

  [v5 setProtectionClasses_];

  return v5;
}

unint64_t sub_265A12BB8()
{
  result = qword_28002B760;
  if (!qword_28002B760)
  {
    sub_265A1EEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B760);
  }

  return result;
}

uint64_t sub_265A12C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchResultItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A12C74(uint64_t a1)
{
  v2 = type metadata accessor for SettingsSearchResultItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_265A12CD0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_265A22710;
  v3 = *MEMORY[0x277CC31F0];
  *(v2 + 32) = sub_265A1EBA0();
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x277CC3148];
  *(v2 + 48) = sub_265A1EBA0();
  *(v2 + 56) = v6;
  v7 = *MEMORY[0x277CC2CE8];
  *(v2 + 64) = sub_265A1EBA0();
  *(v2 + 72) = v8;
  v9 = *MEMORY[0x277CC31B8];
  *(v2 + 80) = sub_265A1EBA0();
  *(v2 + 88) = v10;
  v11 = *MEMORY[0x277CC31C0];
  *(v2 + 96) = sub_265A1EBA0();
  *(v2 + 104) = v12;
  v13 = *MEMORY[0x277CC31F8];
  *(v2 + 112) = sub_265A1EBA0();
  *(v2 + 120) = v14;
  v15 = *MEMORY[0x277CC31A0];
  *(v2 + 128) = sub_265A1EBA0();
  *(v2 + 136) = v16;
  v17 = *MEMORY[0x277CC2FF0];
  *(v2 + 144) = sub_265A1EBA0();
  *(v2 + 152) = v18;
  v19 = *MEMORY[0x277CC3140];
  *(v2 + 160) = sub_265A1EBA0();
  *(v2 + 168) = v20;
  v21 = *MEMORY[0x277CC2750];
  *(v2 + 176) = sub_265A1EBA0();
  *(v2 + 184) = v22;
  v23 = *MEMORY[0x277CC2760];
  *(v2 + 192) = sub_265A1EBA0();
  *(v2 + 200) = v24;
  v25 = [objc_allocWithZone(MEMORY[0x277CC3508]) init];
  [v25 setMaxResultCount_];
  [v25 setMaxRankedResultCount_];
  v26 = v25;
  sub_265A1E7F0();
  v27 = sub_265A1ECB0();

  [v26 setPreferredLanguages_];

  v28 = sub_265A1ECB0();

  [v26 setFetchAttributes_];

  [v26 setEnableRankedResults_];
  [v26 setDisableSemanticSearch_];
  return v26;
}

uint64_t SettingsSearchResultItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SettingsSearchResultItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SettingsSearchResultItem.domainIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SettingsSearchResultItem.domainIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SettingsSearchResultItem.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 49);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t SettingsSearchResultItem.icon.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 49) = v5;
  return result;
}

uint64_t SettingsSearchResultItem.localizedTitle.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t SettingsSearchResultItem.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t SettingsSearchResultItem.localizedSubtitle.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t SettingsSearchResultItem.localizedSubtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t SettingsSearchResultItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsSearchResultItem() + 36);
  v4 = sub_265A1E770();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SettingsSearchResultItem()
{
  result = qword_28156AB50;
  if (!qword_28156AB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsSearchResultItem.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsSearchResultItem() + 36);
  v4 = sub_265A1E770();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_265A13324()
{
  v1 = *v0;
  v2 = 1852793705;
  v3 = 0x657A696C61636F6CLL;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 7107189;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_265A133EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265A14500(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265A1342C(uint64_t a1)
{
  v2 = sub_265A13F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A13468(uint64_t a1)
{
  v2 = sub_265A13F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265A134A4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SettingsSearchResultItem.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_265A1EBF0();
  v4 = v0[2];
  v5 = v0[3];
  sub_265A1EBF0();
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 48);
  v9 = *(v1 + 49);
  sub_265A1EBF0();
  sub_265A1F3F0();
  MEMORY[0x2667659F0](v9);
  v10 = v1[7];
  v11 = v1[8];
  sub_265A1EBF0();
  if (v1[10])
  {
    v12 = v1[9];
    sub_265A1F3F0();
    sub_265A1EBF0();
  }

  else
  {
    sub_265A1F3F0();
  }

  v13 = *(type metadata accessor for SettingsSearchResultItem() + 36);
  sub_265A1E770();
  sub_265A14148(&qword_28002B778, MEMORY[0x277CC9260]);
  return sub_265A1EB40();
}

uint64_t SettingsSearchResultItem.hashValue.getter()
{
  sub_265A1F3D0();
  SettingsSearchResultItem.hash(into:)();
  return sub_265A1F400();
}

uint64_t sub_265A13608()
{
  sub_265A1F3D0();
  SettingsSearchResultItem.hash(into:)();
  return sub_265A1F400();
}

uint64_t sub_265A1364C()
{
  sub_265A1F3D0();
  SettingsSearchResultItem.hash(into:)();
  return sub_265A1F400();
}

uint64_t SettingsSearchResultItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B780, &qword_265A22720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A13F94();
  sub_265A1F420();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v25) = 0;
  sub_265A1F2D0();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v25) = 1;
    sub_265A1F2D0();
    v15 = v3[5];
    v16 = *(v3 + 48);
    v17 = *(v3 + 49);
    v25 = v3[4];
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v24[7] = 2;
    sub_265A13FE8();

    sub_265A1F2F0();

    v18 = v3[7];
    v19 = v3[8];
    LOBYTE(v25) = 3;
    sub_265A1F2D0();
    v20 = v3[9];
    v21 = v3[10];
    LOBYTE(v25) = 4;
    sub_265A1F2C0();
    v22 = *(type metadata accessor for SettingsSearchResultItem() + 36);
    LOBYTE(v25) = 5;
    sub_265A1E770();
    sub_265A14148(&qword_28002B798, MEMORY[0x277CC9260]);
    sub_265A1F2F0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SettingsSearchResultItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_265A1E770();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B7A0, &qword_265A22728);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - v9;
  v11 = type metadata accessor for SettingsSearchResultItem();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_265A13F94();
  v17 = v37;
  sub_265A1F410();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    v32 = v6;
    v37 = v3;
    v18 = v35;
    LOBYTE(v39) = 0;
    v19 = v14;
    *v14 = sub_265A1F270();
    *(v14 + 1) = v20;
    LOBYTE(v39) = 1;
    *(v14 + 2) = sub_265A1F270();
    *(v14 + 3) = v21;
    v43 = 2;
    sub_265A1403C();
    sub_265A1F290();
    v22 = v40;
    v23 = v41;
    v24 = v42;
    *(v14 + 4) = v39;
    *(v14 + 5) = v22;
    v14[48] = v23;
    v14[49] = v24;
    LOBYTE(v39) = 3;
    *(v14 + 7) = sub_265A1F270();
    *(v14 + 8) = v25;
    LOBYTE(v39) = 4;
    v26 = sub_265A1F260();
    v31[1] = 0;
    *(v14 + 9) = v26;
    *(v14 + 10) = v27;
    LOBYTE(v39) = 5;
    sub_265A14148(&qword_28002B7B0, MEMORY[0x277CC9260]);
    v28 = v32;
    v29 = v37;
    sub_265A1F290();
    (*(v18 + 8))(v10, v36);
    (*(v33 + 32))(v19 + *(v11 + 36), v28, v29);
    sub_265A14090(v19, v34);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_265A12C74(v19);
  }
}

uint64_t _s12SettingsHost0A16SearchResultItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_265A1F340() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_265A1F340() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  v8 = *(a2 + 48);
  v9 = *(a2 + 49);
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (v6 != v8)
    {
      return 0;
    }
  }

  else if (sub_265A1F340() & 1) == 0 || ((v6 ^ v8))
  {
    return 0;
  }

  if (((v7 ^ v9) & 1) != 0 || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_265A1F340() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 80);
  if (v10)
  {
    if (!v11 || (*(a1 + 72) != *(a2 + 72) || v10 != v11) && (sub_265A1F340() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(type metadata accessor for SettingsSearchResultItem() + 36);

  return MEMORY[0x28211D040](a1 + v12, a2 + v12);
}

unint64_t sub_265A13F94()
{
  result = qword_28002B788;
  if (!qword_28002B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B788);
  }

  return result;
}

unint64_t sub_265A13FE8()
{
  result = qword_28002B790;
  if (!qword_28002B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B790);
  }

  return result;
}

unint64_t sub_265A1403C()
{
  result = qword_28002B7A8;
  if (!qword_28002B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7A8);
  }

  return result;
}

uint64_t sub_265A14090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchResultItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A14148(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_265A141B8()
{
  sub_265A14258();
  if (v0 <= 0x3F)
  {
    sub_265A1E770();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265A14258()
{
  if (!qword_28156A920)
  {
    v0 = sub_265A1EFB0();
    if (!v1)
    {
      atomic_store(v0, &qword_28156A920);
    }
  }
}

uint64_t getEnumTagSinglePayload for SettingsSearchResultItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SettingsSearchResultItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_265A143FC()
{
  result = qword_28002B7C0;
  if (!qword_28002B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7C0);
  }

  return result;
}

unint64_t sub_265A14454()
{
  result = qword_28002B7C8;
  if (!qword_28002B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7C8);
  }

  return result;
}

unint64_t sub_265A144AC()
{
  result = qword_28002B7D0;
  if (!qword_28002B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7D0);
  }

  return result;
}

uint64_t sub_265A14500(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000265A240B0 == a2 || (sub_265A1F340() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000265A240D0 == a2 || (sub_265A1F340() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_265A1F340() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_265A1F340() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000265A240F0 == a2 || (sub_265A1F340() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_265A1F340();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_265A14730@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265A1E770();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = *a1;
  v13 = [*a1 attributeSet];
  v14 = [v13 title];

  if (!v14)
  {
    goto LABEL_9;
  }

  v54 = sub_265A1EBA0();
  v16 = v15;

  v17 = [v12 attributeSet];
  v18 = [v17 URL];

  if (!v18)
  {
LABEL_8:

LABEL_9:
    v27 = type metadata accessor for SettingsSearchResultItem();
    return (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
  }

  v53 = v16;
  sub_265A1E730();

  v19 = *(v5 + 32);
  v19(v11, v9, v4);
  v20 = [v12 domainIdentifier];
  if (!v20)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_8;
  }

  v21 = v20;
  v51 = sub_265A1EBA0();
  v52 = v22;

  v23 = [v12 attributeSet];
  v50 = sub_2659DCB00();

  v24 = [v12 attributeSet];
  v25 = [v24 thumbnailContentType];

  v49 = v25;
  if (!v25)
  {
    v29 = [v12 attributeSet];
    v26 = [v29 thumbnailBundleID];

    if (v26)
    {
      v48 = v19;
      goto LABEL_12;
    }

    (*(v5 + 8))(v11, v4);

    goto LABEL_8;
  }

  v48 = v19;
  v26 = v25;
LABEL_12:
  v46 = sub_265A1EBA0();
  v47 = v30;

  v31 = [v12 uniqueIdentifier];
  v32 = sub_265A1EBA0();
  v34 = v33;

  v35 = [v12 attributeSet];
  v36 = [v35 subtitle];

  if (v36)
  {
    v37 = sub_265A1EBA0();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = v49 == 0;
  v41 = type metadata accessor for SettingsSearchResultItem();
  v48((a2 + *(v41 + 36)), v11, v4);
  *a2 = v32;
  *(a2 + 8) = v34;
  v42 = v52;
  *(a2 + 16) = v51;
  *(a2 + 24) = v42;
  v43 = v47;
  *(a2 + 32) = v46;
  *(a2 + 40) = v43;
  *(a2 + 48) = v50 & 1;
  *(a2 + 49) = v40;
  v44 = v53;
  *(a2 + 56) = v54;
  *(a2 + 64) = v44;
  *(a2 + 72) = v37;
  *(a2 + 80) = v39;
  return (*(*(v41 - 8) + 56))(a2, 0, 1, v41);
}

uint64_t sub_265A14B84(uint64_t a1)
{
  v2 = sub_265A15114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A14BC0(uint64_t a1)
{
  v2 = sub_265A15114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265A14C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000265A24140 == a2 || (sub_265A1F340() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000265A24160 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_265A1F340();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_265A14D20(uint64_t a1)
{
  v2 = sub_265A150C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A14D5C(uint64_t a1)
{
  v2 = sub_265A150C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265A14D98(uint64_t a1)
{
  v2 = sub_265A15168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A14DD4(uint64_t a1)
{
  v2 = sub_265A15168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SettingsSearchItemIcon.IconType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B7D8, &qword_265A22980);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B7E0, &qword_265A22988);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B7E8, &qword_265A22990);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A150C0();
  sub_265A1F420();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_265A15114();
    v18 = v22;
    sub_265A1F2B0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_265A15168();
    sub_265A1F2B0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_265A150C0()
{
  result = qword_28002B7F0;
  if (!qword_28002B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7F0);
  }

  return result;
}

unint64_t sub_265A15114()
{
  result = qword_28002B7F8;
  if (!qword_28002B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7F8);
  }

  return result;
}

unint64_t sub_265A15168()
{
  result = qword_28002B800;
  if (!qword_28002B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B800);
  }

  return result;
}

uint64_t SettingsSearchItemIcon.IconType.hashValue.getter()
{
  v1 = *v0;
  sub_265A1F3D0();
  MEMORY[0x2667659F0](v1);
  return sub_265A1F400();
}

uint64_t SettingsSearchItemIcon.IconType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B808, &qword_265A22998);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B810, &qword_265A229A0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B818, &qword_265A229A8);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A150C0();
  v17 = v37;
  sub_265A1F410();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_265A1F2A0();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_265A1F100();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B820, &qword_265A229B0) + 48);
    *v25 = &type metadata for SettingsSearchItemIcon.IconType;
    sub_265A1F250();
    sub_265A1F0F0();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_265A15114();
    sub_265A1F240();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_265A15168();
    sub_265A1F240();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t SettingsSearchItemIcon.iconIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SettingsSearchItemIcon.iconIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_265A157A4()
{
  v1 = 0x6465766C6F736572;
  if (*v0 != 1)
  {
    v1 = 0x657079546E6F6369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564496E6F6369;
  }
}

uint64_t sub_265A15818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265A16670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265A1584C(uint64_t a1)
{
  v2 = sub_265A15DE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A15888(uint64_t a1)
{
  v2 = sub_265A15DE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static SettingsSearchItemIcon.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_265A1F340();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t SettingsSearchItemIcon.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_265A1EBF0();
  sub_265A1F3F0();
  return MEMORY[0x2667659F0](v4);
}

uint64_t SettingsSearchItemIcon.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_265A1F3D0();
  sub_265A1EBF0();
  sub_265A1F3F0();
  MEMORY[0x2667659F0](v4);
  return sub_265A1F400();
}

uint64_t sub_265A15A18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_265A1F3D0();
  sub_265A1EBF0();
  sub_265A1F3F0();
  MEMORY[0x2667659F0](v4);
  return sub_265A1F400();
}

uint64_t sub_265A15A94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_265A1EBF0();
  sub_265A1F3F0();
  return MEMORY[0x2667659F0](v4);
}

uint64_t sub_265A15AE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_265A1F3D0();
  sub_265A1EBF0();
  sub_265A1F3F0();
  MEMORY[0x2667659F0](v4);
  return sub_265A1F400();
}

uint64_t sub_265A15B58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_265A1F340();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t SettingsSearchItemIcon.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B828, &qword_265A229B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 16);
  HIDWORD(v14) = *(v1 + 17);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A15DE0();
  sub_265A1F420();
  v20 = 0;
  v11 = v15;
  sub_265A1F2D0();
  if (!v11)
  {
    v13 = BYTE4(v14);
    v19 = 1;
    sub_265A1F2E0();
    v18 = v13;
    v17 = 2;
    sub_265A15E34();
    sub_265A1F2F0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_265A15DE0()
{
  result = qword_28002B830;
  if (!qword_28002B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B830);
  }

  return result;
}

unint64_t sub_265A15E34()
{
  result = qword_28002B838;
  if (!qword_28002B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B838);
  }

  return result;
}

uint64_t SettingsSearchItemIcon.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B840, &qword_265A229C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A15DE0();
  sub_265A1F410();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v11 = sub_265A1F270();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  v19 = sub_265A1F280();
  v20 = 2;
  sub_265A160D0();
  sub_265A1F290();
  v15 = v19 & 1;
  (*(v6 + 8))(v9, v5);
  v16 = v21;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 17) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_265A160D0()
{
  result = qword_28002B848;
  if (!qword_28002B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B848);
  }

  return result;
}

unint64_t sub_265A16128()
{
  result = qword_28002B850;
  if (!qword_28002B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B850);
  }

  return result;
}

unint64_t sub_265A16180()
{
  result = qword_28002B858;
  if (!qword_28002B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B858);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_265A16218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_265A16260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_265A16304()
{
  result = qword_28002B860;
  if (!qword_28002B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B860);
  }

  return result;
}

unint64_t sub_265A1635C()
{
  result = qword_28002B868;
  if (!qword_28002B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B868);
  }

  return result;
}

unint64_t sub_265A163B4()
{
  result = qword_28002B870;
  if (!qword_28002B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B870);
  }

  return result;
}

unint64_t sub_265A1640C()
{
  result = qword_28002B878;
  if (!qword_28002B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B878);
  }

  return result;
}

unint64_t sub_265A16464()
{
  result = qword_28002B880;
  if (!qword_28002B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B880);
  }

  return result;
}

unint64_t sub_265A164BC()
{
  result = qword_28002B888;
  if (!qword_28002B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B888);
  }

  return result;
}

unint64_t sub_265A16514()
{
  result = qword_28002B890;
  if (!qword_28002B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B890);
  }

  return result;
}

unint64_t sub_265A1656C()
{
  result = qword_28002B898;
  if (!qword_28002B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B898);
  }

  return result;
}

unint64_t sub_265A165C4()
{
  result = qword_28002B8A0;
  if (!qword_28002B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B8A0);
  }

  return result;
}

unint64_t sub_265A1661C()
{
  result = qword_28002B8A8;
  if (!qword_28002B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B8A8);
  }

  return result;
}

uint64_t sub_265A16670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564496E6F6369 && a2 == 0xEE00726569666974;
  if (v4 || (sub_265A1F340() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766C6F736572 && a2 == 0xEF4C52556D6F7246 || (sub_265A1F340() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657079546E6F6369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_265A1F340();

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

uint64_t sub_265A167A0@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "com.apple.Settings.AirplaneMode";
  switch(result)
  {
    case 1:
      v6 = "com.apple.Settings.MultitaskingAndGestures";
      goto LABEL_27;
    case 2:
    case 3:
      v7 = "com.apple.Settings.AppleAccount";
      goto LABEL_45;
    case 4:
      v9 = "com.apple.Settings.Family";
      goto LABEL_48;
    case 5:
      v4 = "com.apple.Settings.WiFi";
      goto LABEL_3;
    case 6:
      v5 = "com.apple.Settings.Ethernet";
      goto LABEL_35;
    case 7:
      v11 = "com.apple.Settings.Bluetooth";
      goto LABEL_50;
    case 8:
      v5 = "com.apple.Settings.Cellular";
      goto LABEL_35;
    case 9:
      v3 = "com.apple.Settings.VPN";
      v2 = 0xD000000000000022;
      break;
    case 10:
      v13 = "com.apple.Settings.VPN";
      goto LABEL_33;
    case 11:
      v11 = "com.apple.Settings.Classroom";
      goto LABEL_50;
    case 12:
      v12 = "com.apple.Settings.Notifications";
      goto LABEL_40;
    case 13:
      v9 = "com.apple.Settings.Sounds";
      goto LABEL_48;
    case 14:
      v3 = "com.apple.Settings.ScreenTime";
      v2 = 0xD000000000000018;
      break;
    case 15:
      v10 = "com.apple.Settings.ScreenTime";
      goto LABEL_25;
    case 16:
    case 68:
      v8 = "com.apple.Settings.General";
      goto LABEL_38;
    case 17:
      v12 = "com.apple.Settings.ControlCenter";
      goto LABEL_40;
    case 18:
      v7 = "com.apple.Settings.ActionButton";
      goto LABEL_45;
    case 19:
      v8 = "com.apple.Settings.StandBy";
      goto LABEL_38;
    case 20:
      v8 = "com.apple.Settings.Display";
      goto LABEL_38;
    case 21:
    case 22:
      v6 = "com.apple.Settings.HomeScreenAndAppLibrary";
LABEL_27:
      v3 = v6 - 32;
      v2 = 0xD00000000000002ALL;
      break;
    case 23:
      v12 = "com.apple.Settings.Accessibility";
LABEL_40:
      v3 = v12 - 32;
      v2 = 0xD000000000000020;
      break;
    case 24:
      v11 = "com.apple.Settings.Wallpaper";
      goto LABEL_50;
    case 25:
      v4 = "com.apple.Settings.Siri";
      goto LABEL_3;
    case 26:
      v9 = "com.apple.Settings.Pencil";
      goto LABEL_48;
    case 27:
    case 28:
    case 29:
      v5 = "com.apple.Settings.Passcode";
      goto LABEL_35;
    case 30:
      v13 = "com.apple.Settings.SOS";
LABEL_33:
      v3 = v13 - 32;
      v2 = 0xD000000000000016;
      break;
    case 31:
      v3 = "com.apple.Settings.Battery";
      v2 = 0xD000000000000028;
      break;
    case 32:
      v8 = "com.apple.Settings.Battery";
      goto LABEL_38;
    case 33:
    case 72:
      v3 = "com.apple.Settings.Apps";
      v2 = 0xD000000000000025;
      break;
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
      v4 = "com.apple.Settings.Apps";
LABEL_3:
      v3 = v4 - 32;
      v2 = 0xD000000000000017;
      break;
    case 36:
      v9 = "com.apple.Settings.Wallet";
      goto LABEL_48;
    case 59:
      v5 = "com.apple.Settings.ClassKit";
LABEL_35:
      v3 = v5 - 32;
      v2 = 0xD00000000000001BLL;
      break;
    case 64:
      v9 = "com.apple.Settings.Camera";
LABEL_48:
      v3 = v9 - 32;
      v2 = 0xD000000000000019;
      break;
    case 67:
      v10 = "com.apple.Settings.GameCenter";
LABEL_25:
      v3 = v10 - 32;
      v2 = 0xD00000000000001DLL;
      break;
    case 69:
      v11 = "com.apple.Settings.Developer";
LABEL_50:
      v3 = v11 - 32;
      v2 = 0xD00000000000001CLL;
      break;
    case 70:
      v8 = "com.apple.Settings.Carrier";
LABEL_38:
      v3 = v8 - 32;
      v2 = 0xD00000000000001ALL;
      break;
    case 71:
      v3 = "com.apple.Settings.StandBy";
      v2 = 0xD000000000000023;
      break;
    case 73:
      v7 = "com.apple.Settings.AirplaneMode";
LABEL_45:
      v3 = v7 - 32;
      v2 = 0xD00000000000001FLL;
      break;
    default:
      break;
  }

  *a2 = v2;
  a2[1] = v3 | 0x8000000000000000;
  return result;
}

unint64_t sub_265A16A28(char a1)
{
  result = 0;
  switch(a1)
  {
    case '""':
    case '*':
    case '.':
    case 'B':
      result = 0xD000000000000012;
      break;
    case '%':
    case '+':
      result = 0xD000000000000014;
      break;
    case '&':
      result = 0xD00000000000001BLL;
      break;
    case '\'':
    case ')':
    case '-':
    case '2':
    case '7':
      result = 0xD000000000000013;
      break;
    case '(':
    case ',':
      result = 0xD000000000000015;
      break;
    case '/':
      result = 0xD000000000000016;
      break;
    case '0':
    case '3':
    case ':':
    case '=':
    case '>':
      result = 0x6C7070612E6D6F63;
      break;
    case '1':
    case '8':
    case 'A':
      result = 0xD000000000000010;
      break;
    case '4':
      result = 0xD000000000000011;
      break;
    case '5':
      result = 0xD000000000000011;
      break;
    case '6':
      result = 0xD000000000000011;
      break;
    case '9':
      result = 0xD000000000000011;
      break;
    case '<':
      result = 0xD000000000000011;
      break;
    case '?':
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_265A16CB8(char a1)
{
  result = 1414483794;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0x454C54534143;
      break;
    case 3:
      result = 0x43415F454C505041;
      break;
    case 4:
      result = 0x796C696D6146;
      break;
    case 5:
      result = 1229343063;
      break;
    case 6:
      result = 0x54454E5245485445;
      break;
    case 7:
      result = 0x746F6F7465756C42;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
    case 69:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 5132374;
      break;
    case 11:
      result = 0x4F4F525353414C43;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x73646E756F53;
      break;
    case 14:
      result = 0x445F544F4E5F4F44;
      break;
    case 15:
      result = 0x545F4E4545524353;
      break;
    case 16:
      result = 0x6C6172656E6547;
      break;
    case 17:
      result = 0x436C6F72746E6F43;
      break;
    case 18:
      result = 0x425F4E4F49544341;
      break;
    case 19:
      result = 0x544E4549424D41;
      break;
    case 20:
      result = 0x59414C50534944;
      break;
    case 21:
      result = 0x5243535F454D4F48;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x4249535345434341;
      break;
    case 24:
      result = 0x657061706C6C6157;
      break;
    case 25:
      result = 1230129491;
      break;
    case 26:
      result = 0x6C69636E6550;
      break;
    case 27:
      result = 0x45444F4353534150;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    case 29:
      result = 0x6C72616550;
      break;
    case 30:
      result = 0x434E454752454D45;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    case 32:
      result = 0x5F59524554544142;
      break;
    case 33:
      result = 0x79636176697250;
      break;
    case 34:
      result = 0x45524F5453;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0x4B4F4F4253534150;
      break;
    case 37:
      result = 1279869261;
      break;
    case 38:
      result = 0x53544341544E4F43;
      break;
    case 39:
      result = 0x5241444E454C4143;
      break;
    case 40:
      result = 0x5345544F4ELL;
      break;
    case 41:
      result = 0x5245444E494D4552;
      break;
    case 42:
      result = 0x4D524F4645455246;
      break;
    case 43:
      result = 0x454D5F4543494F56;
      break;
    case 44:
      result = 0x656E6F6850;
      break;
    case 45:
      result = 0x534547415353454DLL;
      break;
    case 46:
      result = 0x454D495445434146;
      break;
    case 47:
      result = 0x495241464153;
      break;
    case 48:
      result = 1398228302;
      break;
    case 49:
      result = 0x534B434F5453;
      break;
    case 50:
      result = 0x54414C534E415254;
      break;
    case 51:
      result = 1397768525;
      break;
    case 52:
      result = 0x52454854414557;
      break;
    case 53:
      result = 0x535341504D4F43;
      break;
    case 54:
      result = 0x4552555341454DLL;
      break;
    case 55:
      result = 0x54554354524F4853;
      break;
    case 56:
      result = 0x48544C414548;
      break;
    case 57:
      result = 0x5353454E544946;
      break;
    case 58:
      result = 0x54494B454D4F48;
      break;
    case 59:
      result = 0x54494B5353414C43;
      break;
    case 60:
      result = 0x4C414E52554F4ALL;
      break;
    case 61:
      result = 0x434953554DLL;
      break;
    case 62:
      result = 0x5050415654;
      break;
    case 63:
      result = 0x736F746F6850;
      break;
    case 64:
      result = 0x4152454D4143;
      break;
    case 65:
      result = 0x534B4F4F4249;
      break;
    case 66:
      result = 0x5354534143444F50;
      break;
    case 67:
      result = 0x544E4543454D4147;
      break;
    case 68:
      result = 0xD000000000000010;
      break;
    case 70:
      result = 0xD000000000000010;
      break;
    case 71:
    case 72:
      result = 0xD000000000000011;
      break;
    case 73:
      result = 0x454E414C50524941;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_265A173E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_265A16CB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_265A1740C()
{
  v0 = sub_265A1F350();

  if (v0 >= 0x4A)
  {
    return 74;
  }

  else
  {
    return v0;
  }
}

uint64_t SettingsNavigationHost.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_265A17A58(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001CLL;
  v5 = *v1;
  v4 = v1[1];
  v6 = *v1 == 0xD00000000000001FLL && 0x8000000265A249B0 == v4;
  if (v6 || (sub_265A1F340() & 1) != 0)
  {
    v7 = "com.apple.graphic-icon.airplane-mode";
LABEL_7:
    v8 = (v7 - 32) | 0x8000000000000000;
    v3 = 0xD000000000000024;
LABEL_8:
    v9 = 1;
LABEL_9:
    *a1 = v3;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    return;
  }

  if (v5 == 0xD00000000000001FLL && 0x8000000265A24960 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v10 = "com.apple.graphic-icon.account";
LABEL_14:
    v8 = (v10 - 32) | 0x8000000000000000;
    v3 = 0xD00000000000001ELL;
    goto LABEL_8;
  }

  if (v5 == 0xD000000000000019 && 0x8000000265A24940 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24CF0;
    v3 = 0xD000000000000021;
    goto LABEL_8;
  }

  if (v5 == 0xD00000000000001CLL && 0x8000000265A248C0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24CC0;
    v3 = 0xD000000000000020;
    goto LABEL_8;
  }

  if (v5 == 0xD000000000000022 && 0x8000000265A24870 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24C90;
    v3 = 0xD000000000000027;
    goto LABEL_8;
  }

  if (v5 == 0xD00000000000001BLL && 0x8000000265A248E0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24C70;
    v3 = 0xD00000000000001FLL;
    goto LABEL_8;
  }

  if (v5 == 0xD00000000000001CLL && 0x8000000265A24830 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v7 = "com.apple.application-icon.classroom";
    goto LABEL_7;
  }

  if (v5 == 0xD00000000000001BLL && 0x8000000265A245C0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24C10;
    v3 = 0xD000000000000023;
    goto LABEL_8;
  }

  if (v5 == 0xD00000000000001ALL && 0x8000000265A24560 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24BF0;
    v9 = 1;
    v3 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  if (v5 == 0xD000000000000020 && 0x8000000265A24800 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v7 = "com.apple.graphic-icon.notifications";
    goto LABEL_7;
  }

  if (v5 == 0xD000000000000018 && 0x8000000265A247C0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24BA0;
    goto LABEL_8;
  }

  if (v5 == 0xD00000000000001DLL && 0x8000000265A24580 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24B80;
    v9 = 257;
    goto LABEL_9;
  }

  v8 = 0xEE00697269732E65;
  if (v5 == 0xD000000000000017 && 0x8000000265A246B0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v9 = 257;
    v3 = 0x6C7070612E6D6F63;
    goto LABEL_9;
  }

  if (v5 == 0xD00000000000001ELL && 0x8000000265A24AA0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24B50;
    v3 = 0xD00000000000002ELL;
    goto LABEL_8;
  }

  if ((v5 != 0xD000000000000019 || 0x8000000265A245E0 != v4) && (sub_265A1F340() & 1) == 0 && (sub_265A1F340() & 1) == 0)
  {
    if ((v5 != 0xD000000000000025 || 0x8000000265A244A0 != v4) && (sub_265A1F340() & 1) == 0)
    {
      v3 = 0;
      v8 = 0;
      v9 = 0;
      goto LABEL_9;
    }

    v10 = "com.apple.graphic-icon.privacy";
    goto LABEL_14;
  }

  v11 = MobileGestalt_get_current_device();
  if (v11)
  {
    v12 = v11;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber == 1)
    {
      v8 = 0x8000000265A24B30;
      v3 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x8000000265A24B10;
      v3 = 0xD000000000000016;
    }

    v9 = 257;
    goto LABEL_9;
  }

  __break(1u);
}

void *sub_265A18020@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_265A18030()
{
  result = qword_28002B8B0;
  if (!qword_28002B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B8B0);
  }

  return result;
}

uint64_t sub_265A18084()
{
  v1 = *v0;
  v2 = v0[1];
  sub_265A1F3D0();
  sub_265A1EBF0();
  return sub_265A1F400();
}

uint64_t sub_265A180D0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_265A1EBF0();
}

uint64_t sub_265A180D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_265A1F3D0();
  sub_265A1EBF0();
  return sub_265A1F400();
}

uint64_t sub_265A18120(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_265A1F340();
  }
}

uint64_t sub_265A18150(uint64_t a1, int a2)
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

uint64_t sub_265A18198(uint64_t result, int a2, int a3)
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

uint64_t sub_265A181F8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_265A1E770();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1);
  sub_265A1D860(&qword_28156B030);
  if (sub_265A1EB60())
  {
    (*(v7 + 8))(v10, v6);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(a3, v10, v6);
    v11 = 0;
  }

  return (*(v7 + 56))(a3, v11, 1, v6);
}

uint64_t sub_265A1837C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265A1E770();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_265A18400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8D0, &qword_265A23070);
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  sub_265A1E750();
  if (!v18)
  {
    goto LABEL_18;
  }

  v41 = a2;
  v19 = sub_265A1EBC0();
  v21 = v20;

  if (v19 == 0x7366657270 && v21 == 0xE500000000000000 || (sub_265A1F340() & 1) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8D8, &qword_265A23078);
    sub_2659F3ABC(&qword_28156A980, &qword_28002B8D0, &qword_265A23070);
    sub_265A1E950();
    v45 = sub_265A1E6E0();
    v46 = v22;
    sub_265A1D764();
    sub_265A1D7B8();
    sub_265A1EE90();

    sub_265A1E760();

    (*(v42 + 8))(v17, v11);
    v23 = sub_265A1E770();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (v25(v10, 1, v23) != 1)
    {
      return (*(v24 + 32))(v41, v10, v23);
    }

    (*(v24 + 16))(v41, a1, v23);
    result = (v25)(v10, 1, v23);
    if (result != 1)
    {
      return sub_2659DA270(v10, &qword_28002B700, &qword_265A22658);
    }

    return result;
  }

  if (v19 == 0x666572702D707061 && v21 == 0xE900000000000073)
  {

    a2 = v41;
  }

  else
  {
    v27 = sub_265A1F340();

    a2 = v41;
    if ((v27 & 1) == 0)
    {
LABEL_18:
      v30 = sub_265A1E770();
      v31 = *(*(v30 - 8) + 16);

      return v31(a2, a1, v30);
    }
  }

  if (sub_265A1E6E0() == 0x666572702D707061 && v28 == 0xEA00000000003A73)
  {

    goto LABEL_18;
  }

  v29 = sub_265A1F340();

  if (v29)
  {
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8D8, &qword_265A23078);
  sub_2659F3ABC(&qword_28156A980, &qword_28002B8D0, &qword_265A23070);
  sub_265A1E950();
  v45 = sub_265A1E6E0();
  v46 = v32;
  sub_265A1D764();
  sub_265A1D7B8();
  sub_265A1EE90();

  v45 = 38;
  v46 = 0xE100000000000000;
  v43 = 63;
  v44 = 0xE100000000000000;
  sub_265A1D80C();
  sub_265A1EE80();
  v33 = sub_265A198E8(v47, v48);
  if (v34)
  {
    if (v33 == 63 && v34 == 0xE100000000000000)
    {

LABEL_26:
      sub_265A19968(v35);

      goto LABEL_27;
    }

    v36 = sub_265A1F340();

    if (v36)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  sub_265A1E760();
  (*(v42 + 8))(v15, v11);
  v37 = sub_265A1E770();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v8, 1, v37) == 1)
  {
    (*(v38 + 16))(v41, a1, v37);
    if (v39(v8, 1, v37) != 1)
    {
      sub_2659DA270(v8, &qword_28002B700, &qword_265A22658);
    }
  }

  else
  {
    (*(v38 + 32))(v41, v8, v37);
  }
}

uint64_t sub_265A18BDC@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v92 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8E8, &qword_265A23088);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = &v81 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8F0, &qword_265A23090);
  v6 = *(v5 - 8);
  v110 = v5;
  v111 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v93 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v109 = &v81 - v11;
  MEMORY[0x28223BE20](v10);
  v107 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8F8, &qword_265A23098);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v81 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v81 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v81 - v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8D0, &qword_265A23070);
  v91 = *(v98 - 8);
  v27 = *(v91 + 64);
  v28 = MEMORY[0x28223BE20](v98);
  v90 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v106 = &v81 - v31;
  MEMORY[0x28223BE20](v30);
  v103 = &v81 - v32;
  v33 = sub_265A1E930();
  v112 = *(v33 - 8);
  v113 = v33;
  v34 = *(v112 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B900, &qword_265A230A0);
  v104 = *(v37 - 8);
  v105 = v37;
  v38 = *(v104 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v81 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v97 = &v81 - v42;
  sub_265A1E8D0();
  sub_265A1EBE0();
  sub_265A1E960();
  v43 = *(v14 + 8);
  v43(v18, v13);
  v87 = MEMORY[0x277D85AC0];
  v44 = sub_2659F3ABC(qword_28156A988, &qword_28002B8F8, &qword_265A23098);
  v85 = v24;
  MEMORY[0x266764EB0](v21, v13, v44);
  v43(v21, v13);
  v100 = v44;
  sub_265A1E8B0();
  v43(v24, v13);
  v101 = v43;
  v102 = v14 + 8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8D8, &qword_265A23078);
  v46 = v103;
  v96 = v45;
  sub_265A1E920();
  v43(v26, v13);
  v47 = *(v112 + 8);
  v112 += 8;
  v108 = v47;
  v47(v36, v113);
  MEMORY[0x266764EF0](v46, v45);
  v86 = sub_2659F3ABC(&qword_28156B020, &qword_28002B900, &qword_265A230A0);
  v48 = v105;
  MEMORY[0x266764EB0](v41, v105, v86);
  v49 = *(v104 + 8);
  v104 += 8;
  v89 = v49;
  v49(v41, v48);
  v116 = 58;
  v117 = 0xE100000000000000;
  v50 = sub_265A1D80C();
  v51 = MEMORY[0x277D837D0];
  MEMORY[0x266764EB0](v118, &v116, MEMORY[0x277D837D0], v50);
  v83 = sub_265A1E940();
  v52 = *(v83 - 8);
  v82 = *(v52 + 56);
  v84 = v52 + 56;
  v53 = v88;
  v82(v88, 1, 1, v83);
  v54 = v36;
  sub_265A1E8D0();
  v114 = 47;
  v115 = 0xE100000000000000;
  MEMORY[0x266764EB0](&v116, &v114, v51, v50);
  v114 = v116;
  v115 = v117;
  v55 = v85;
  sub_265A1E8B0();

  v56 = MEMORY[0x277D83E40];
  v99 = v13;
  sub_265A1E900();
  v57 = v101;
  v101(v55, v13);
  v108(v54, v113);
  sub_2659DA270(v53, &qword_28002B8E8, &qword_265A23088);
  v58 = v109;
  MEMORY[0x266764ED0](v26, v56);
  v94 = sub_2659F3ABC(&qword_28156B028, &qword_28002B8F0, &qword_265A23090);
  v59 = v58;
  v60 = v58;
  v61 = v110;
  MEMORY[0x266764EB0](v59, v110, v94);
  v62 = *(v111 + 8);
  v111 += 8;
  v95 = v62;
  v62(v60, v61);
  v82(v53, 1, 1, v83);
  sub_265A1E8D0();
  v114 = 63;
  v115 = 0xE100000000000000;
  v81 = v50;
  MEMORY[0x266764EB0](&v116, &v114, MEMORY[0x277D837D0], v50);
  v114 = v116;
  v115 = v117;
  sub_265A1E8B0();

  v63 = v99;
  sub_265A1E900();
  v57(v55, v63);
  v108(v54, v113);
  sub_2659DA270(v53, &qword_28002B8E8, &qword_265A23088);
  v64 = v93;
  MEMORY[0x266764ED0](v26, MEMORY[0x277D83E40]);
  v65 = v110;
  MEMORY[0x266764EB0](v64, v110, v94);
  v95(v64, v65);
  sub_265A1E8B0();
  v66 = v118[0];
  v67 = v118[1];
  sub_265A1E8D0();
  v116 = v66;
  v117 = v67;
  v68 = v54;
  sub_265A1E910();

  v93 = sub_2659F3ABC(&qword_28156A980, &qword_28002B8D0, &qword_265A23070);
  v69 = v99;
  sub_265A1E8F0();
  v70 = v101;
  v101(v26, v69);
  v71 = v113;
  v108(v68, v113);
  sub_265A1E8D0();
  v72 = v26;
  sub_265A1E910();
  v73 = v90;
  v74 = v99;
  sub_265A1E8F0();
  v70(v26, v74);
  v75 = v108;
  v108(v68, v71);
  sub_265A1E8D0();
  v76 = v110;
  sub_265A1E910();
  v77 = v98;
  sub_265A1E8F0();
  v101(v72, v74);
  v75(v68, v113);
  v78 = *(v91 + 8);
  v78(v73, v77);
  v78(v106, v77);
  v78(v103, v77);
  v79 = v95;
  v95(v109, v76);
  v79(v107, v76);
  return v89(v97, v105);
}

uint64_t sub_265A19824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8E0, &qword_265A23080);
  sub_265A1E970();

  v6 = sub_265A1EFC0();
  v8 = v7;

  MEMORY[0x266765220](a1, a2);

  *a3 = v6;
  a3[1] = v8;
  return result;
}

uint64_t sub_265A198E8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_265A1EC00();
  return sub_265A1EC60();
}

uint64_t sub_265A19968(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_265A1EC00();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t sub_265A199E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  sub_265A1E750();
  if (v8)
  {
    v9 = sub_265A1EBC0();
    v11 = v10;

    if (v9 == 0x72702D7366657270 && v11 == 0xEE00796464756265)
    {

      goto LABEL_6;
    }

    v12 = sub_265A1F340();

    if (v12)
    {
LABEL_6:
      sub_265A1E760();
      v13 = sub_265A1E770();
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      if (v15(v7, 1, v13) != 1)
      {
        return (*(v14 + 32))(a2, v7, v13);
      }

      (*(v14 + 16))(a2, a1, v13);
      result = (v15)(v7, 1, v13);
      if (result != 1)
      {
        return sub_2659DA270(v7, &qword_28002B700, &qword_265A22658);
      }

      return result;
    }
  }

  v17 = sub_265A1E770();
  v18 = *(*(v17 - 8) + 16);

  return v18(a2, a1, v17);
}

uint64_t sub_265A19C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  sub_265A1E750();
  if (v8)
  {
    v9 = sub_265A1EBC0();
    v11 = v10;

    if (v9 == 0xD000000000000010 && 0x8000000265A24F20 == v11)
    {

      goto LABEL_6;
    }

    v12 = sub_265A1F340();

    if (v12)
    {
LABEL_6:
      sub_265A1E760();
      v13 = sub_265A1E770();
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      if (v15(v7, 1, v13) != 1)
      {
        return (*(v14 + 32))(a2, v7, v13);
      }

      (*(v14 + 16))(a2, a1, v13);
      result = (v15)(v7, 1, v13);
      if (result != 1)
      {
        return sub_2659DA270(v7, &qword_28002B700, &qword_265A22658);
      }

      return result;
    }
  }

  v17 = sub_265A1E770();
  v18 = *(*(v17 - 8) + 16);

  return v18(a2, a1, v17);
}

uint64_t sub_265A19ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  sub_265A1E750();
  if (v8)
  {
    v9 = sub_265A1EBC0();
    v11 = v10;

    if (v9 == 0xD000000000000014 && 0x8000000265A24E10 == v11)
    {

      goto LABEL_6;
    }

    v12 = sub_265A1F340();

    if (v12)
    {
LABEL_6:
      sub_265A1E760();
      v13 = sub_265A1E770();
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      if (v15(v7, 1, v13) != 1)
      {
        return (*(v14 + 32))(a2, v7, v13);
      }

      (*(v14 + 16))(a2, a1, v13);
      result = (v15)(v7, 1, v13);
      if (result != 1)
      {
        return sub_2659DA270(v7, &qword_28002B700, &qword_265A22658);
      }

      return result;
    }
  }

  v17 = sub_265A1E770();
  v18 = *(*(v17 - 8) + 16);

  return v18(a2, a1, v17);
}

uint64_t sub_265A1A144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  sub_265A1E750();
  if (v8)
  {
    v9 = sub_265A1EBC0();
    v11 = v10;

    if (v9 == 0x2D617465622D736FLL && v11 == 0xEF73657461647075)
    {

      goto LABEL_6;
    }

    v12 = sub_265A1F340();

    if (v12)
    {
LABEL_6:
      sub_265A1E760();
      v13 = sub_265A1E770();
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      if (v15(v7, 1, v13) != 1)
      {
        return (*(v14 + 32))(a2, v7, v13);
      }

      (*(v14 + 16))(a2, a1, v13);
      result = (v15)(v7, 1, v13);
      if (result != 1)
      {
        return sub_2659DA270(v7, &qword_28002B700, &qword_265A22658);
      }

      return result;
    }
  }

  v17 = sub_265A1E770();
  v18 = *(*(v17 - 8) + 16);

  return v18(a2, a1, v17);
}

uint64_t sub_265A1A3C0@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v71 - v6;
  v7 = sub_265A1E5A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B910, &qword_265A230B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v71 - v16;
  v18 = sub_265A1E670();
  v82 = *(v18 - 8);
  v83 = v18;
  v19 = *(v82 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v79 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v78 = &v71 - v22;
  v23 = sub_265A1E770();
  v84 = *(v23 - 8);
  v24 = *(v84 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265A18400(a1, v26);
  sub_265A1E750();
  if (!v27)
  {
    goto LABEL_7;
  }

  v80 = v23;
  v81 = a2;
  v77 = a1;
  v28 = sub_265A1EBC0();
  v30 = v29;

  if (v28 == 0x666572702D707061 && v30 == 0xE900000000000073)
  {

    v23 = v80;
    a2 = v81;
    a1 = v77;
  }

  else
  {
    v32 = sub_265A1F340();

    v23 = v80;
    a2 = v81;
    a1 = v77;
    if ((v32 & 1) == 0)
    {
LABEL_7:
      v33 = v84;
      (*(v84 + 8))(v26, v23);
      return (*(v33 + 16))(a2, a1, v23);
    }
  }

  sub_265A1E5D0();
  v35 = v82;
  v34 = v83;
  if ((*(v82 + 48))(v17, 1, v83) == 1)
  {
    v33 = v84;
    (*(v84 + 8))(v26, v23);
    sub_2659DA270(v17, &qword_28002B910, &qword_265A230B0);
    return (*(v33 + 16))(a2, a1, v23);
  }

  v36 = v78;
  (*(v35 + 32))(v78, v17, v34);
  v37 = sub_265A1E5F0();
  if (!v38)
  {
    (*(v35 + 8))(v36, v34);
    v33 = v84;
    (*(v84 + 8))(v26, v23);
    a2 = v81;
    return (*(v33 + 16))(a2, a1, v23);
  }

  v71 = v37;
  v72 = v38;
  v39 = v36;
  v40 = sub_265A1E5B0();
  v41 = v40;
  if (v40)
  {
    v73 = *(v40 + 16);
    if (v73)
    {
      v42 = 0;
      a1 = 0x746567726174;
      v74 = v8 + 16;
      v43 = (v8 + 8);
      while (1)
      {
        v44 = *(v41 + 16);
        if (v42 >= v44)
        {
          break;
        }

        (*(v8 + 2))(v12, v41 + ((v8[80] + 32) & ~v8[80]) + *(v8 + 9) * v42, v7);
        v45 = sub_265A1E580();
        v39 = v46;
        if (v45 == a1 && v46 == 0xE600000000000000)
        {

LABEL_25:

          v51 = v75;
          (*(v8 + 4))(v75, v12, v7);
          v41 = sub_265A1E590();
          v49 = v52;
          (*(v8 + 1))(v51, v7);
          goto LABEL_26;
        }

        v47 = a1;
        v48 = sub_265A1F340();

        if (v48)
        {
          goto LABEL_25;
        }

        ++v42;
        (*v43)(v12, v7);
        a1 = v47;
        if (v73 == v42)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

LABEL_20:

    v41 = 0;
    v49 = 0;
LABEL_26:
    v23 = v80;
    v43 = v81;
    a1 = v77;
  }

  else
  {
    v49 = 0;
    v43 = v81;
  }

  sub_265A1E660();
  sub_265A1E630();
  v7 = v84;
  if (!v49)
  {
    v53 = HIBYTE(v72) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v53 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      MEMORY[0x266764C10](0xD000000000000017, 0x8000000265A24480);
      v8 = sub_2659E0AC0(0, 1, 1, MEMORY[0x277D84F90]);
      v41 = *(v8 + 2);
      v54 = *(v8 + 3);
      v39 = v41 + 1;
      if (v41 >= v54 >> 1)
      {
        v8 = sub_2659E0AC0((v54 > 1), v41 + 1, 1, v8);
      }

      goto LABEL_38;
    }

    goto LABEL_51;
  }

  if ((v41 != 0xD000000000000020 || 0x8000000265A24EF0 != v49) && (sub_265A1F340() & 1) == 0)
  {
    if (v41 == 0xD000000000000027 && 0x8000000265A24E90 == v49)
    {

LABEL_48:
      MEMORY[0x266764C10](0xD000000000000017, 0x8000000265A24480);
      v8 = sub_2659E0AC0(0, 1, 1, MEMORY[0x277D84F90]);
      v41 = *(v8 + 2);
      v68 = *(v8 + 3);
      v39 = v41 + 1;
      if (v41 >= v68 >> 1)
      {
        v8 = sub_2659E0AC0((v68 > 1), v41 + 1, 1, v8);
      }

      v55 = 0x8000000265A24EC0;
      v56 = 0xD000000000000023;
      goto LABEL_39;
    }

    v67 = sub_265A1F340();

    if (v67)
    {
      goto LABEL_48;
    }

LABEL_51:

    v69 = v83;
    v70 = *(v82 + 8);
    v70(v79, v83);
    v70(v78, v69);
    (*(v7 + 8))(v26, v23);
    return (*(v7 + 16))(v43, a1, v23);
  }

  MEMORY[0x266764C10](0xD000000000000020, 0x8000000265A24800);
  v8 = sub_2659E0AC0(0, 1, 1, MEMORY[0x277D84F90]);
  v41 = *(v8 + 2);
  v44 = *(v8 + 3);
  v39 = v41 + 1;
  if (v41 >= v44 >> 1)
  {
LABEL_53:
    v8 = sub_2659E0AC0((v44 > 1), v39, 1, v8);
  }

LABEL_38:
  v56 = v71;
  v55 = v72;
LABEL_39:
  *(v8 + 2) = v39;
  v57 = &v8[16 * v41];
  *(v57 + 4) = v56;
  *(v57 + 5) = v55;
  v85 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B3E8, &unk_265A21020);
  sub_2659F3ABC(&qword_28156A910, qword_28002B3E8, &unk_265A21020);
  v58 = sub_265A1EB50();
  v60 = v59;

  v85 = 47;
  v86 = 0xE100000000000000;
  MEMORY[0x266765220](v58, v60);

  v61 = v79;
  MEMORY[0x266764C20](v85, v86);
  v62 = v76;
  sub_265A1E5E0();
  v63 = v83;
  v64 = *(v82 + 8);
  v64(v61, v83);
  v64(v78, v63);
  v65 = v80;
  (*(v7 + 8))(v26, v80);
  v66 = *(v7 + 48);
  if (v66(v62, 1, v65) == 1)
  {
    (*(v7 + 16))(v43, a1, v65);
    if (v66(v62, 1, v65) != 1)
    {
      sub_2659DA270(v62, &qword_28002B700, &qword_265A22658);
    }
  }

  else
  {
    (*(v7 + 32))(v43, v62, v65);
  }
}

uint64_t sub_265A1AE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v199 = &v185 - v6;
  v7 = sub_265A1E5A0();
  v201 = *(v7 - 8);
  v8 = *(v201 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v197 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v196 = &v185 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v204 = &v185 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v200 = (&v185 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v203 = &v185 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v195 = &v185 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v185 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = (&v185 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B910, &qword_265A230B0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v185 - v28;
  v30 = sub_265A1E670();
  v31 = *(v30 - 8);
  v207 = v30;
  v208 = v31;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v185 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v205 = &v185 - v36;
  v37 = sub_265A1E770();
  v212 = *(v37 - 8);
  v38 = v212[8];
  v39 = MEMORY[0x28223BE20](v37);
  v202 = (&v185 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v39);
  v198 = &v185 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v185 - v43;
  sub_265A18400(a1, &v185 - v43);
  v214 = v44;
  v45 = sub_265A1E750();
  if (!v46)
  {
    goto LABEL_8;
  }

  if (v45 != 0x7366657270 || v46 != 0xE500000000000000)
  {
    v47 = sub_265A1F340();

    if (v47)
    {
      goto LABEL_6;
    }

LABEL_8:
    v51 = v212;
    (v212[1])(v214, v37);
    return (v51[2])(a2, a1, v37);
  }

LABEL_6:
  v192 = v35;
  v48 = v214;
  sub_265A1E5D0();
  v49 = v207;
  v50 = v208;
  if ((*(v208 + 48))(v29, 1, v207) == 1)
  {
    v51 = v212;
    (v212[1])(v48, v37);
    sub_2659DA270(v29, &qword_28002B910, &qword_265A230B0);
    return (v51[2])(a2, a1, v37);
  }

  v194 = v37;
  v193 = a1;
  v191 = a2;
  (*(v50 + 32))(v205, v29, v49);
  v53 = sub_265A1E5B0();
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  v55 = *(v54 + 16);

  if (!v55)
  {
    goto LABEL_27;
  }

  v56 = 0;
  v57 = v201;
  v210 = (v201 + 16);
  v213 = (v201 + 8);
  while (1)
  {
    if (v56 >= *(v54 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    v206 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v211 = v57[9];
    v209 = v57[2];
    v209(v23, v54 + v206 + v211 * v56, v7);
    if (sub_265A1E580() == 1953460082 && v58 == 0xE400000000000000)
    {
      break;
    }

    v59 = sub_265A1F340();

    if (v59)
    {
      goto LABEL_22;
    }

    ++v56;
    (*v213)(v23, v7);
    if (v55 == v56)
    {
      goto LABEL_27;
    }
  }

LABEL_22:

  v61 = v57[4];
  v57 += 4;
  v60 = v61;
  v61(v25, v23, v7);
  v62 = sub_265A1E590();
  v64 = v63;
  v190 = *(v57 - 3);
  v190(v25, v7);
  if (!v64)
  {
LABEL_28:

    v68 = v212;
    if (qword_28002B008 != -1)
    {
      swift_once();
    }

    v69 = sub_265A1EAA0();
    __swift_project_value_buffer(v69, qword_28002E8A0);
    v70 = v68[2];
    v71 = v202;
    v72 = v193;
    v73 = v194;
    (v70)(v202, v193, v194);
    v74 = sub_265A1EA80();
    v75 = sub_265A1EF20();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v213 = v70;
      v77 = v76;
      v78 = swift_slowAlloc();
      v219 = v78;
      *v77 = 141558275;
      *(v77 + 4) = 1752392040;
      *(v77 + 12) = 2081;
      sub_265A1D860(&qword_28002B918);
      v79 = sub_265A1F310();
      v81 = v80;
      v82 = v68[1];
      v82(v71, v194);
      v83 = sub_2659D9320(v79, v81, &v219);

      *(v77 + 14) = v83;
      _os_log_impl(&dword_2659CA000, v74, v75, "Failed to resolve specifier identifier to transform URL %{private,mask.hash}s into a settings-navigation URL.", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x266766110](v78, -1, -1);
      v84 = v77;
      v85 = v213;
      MEMORY[0x266766110](v84, -1, -1);

      (*(v208 + 8))(v205, v207);
      v82(v214, v194);
      return (v85)(v191, v193, v194);
    }

    else
    {

      v86 = v68[1];
      v86(v71, v73);
      (*(v208 + 8))(v205, v207);
      v86(v214, v73);
      return (v70)(v191, v72, v73);
    }
  }

  v65 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v65 = v62 & 0xFFFFFFFFFFFFLL;
  }

  if (!v65 || (sub_265A1C808(), , v66 = sub_265A1740C(), v67 = v66, v66 == 74))
  {
LABEL_27:

    goto LABEL_28;
  }

  v87 = v66;
  v185 = v60;
  v202 = v54;
  sub_265A1C808();
  v187 = v88;
  v186 = v89;
  v91 = v90;

  sub_265A167A0(v87, &v219);
  v92 = v219;
  v93 = v220;
  sub_265A1E660();
  sub_265A1E630();
  MEMORY[0x266764C10](v92, v93);
  if (v67 > 67)
  {
    v23 = v190;
    if (v67 == 72)
    {
      v94 = &unk_28774DAA8;
      goto LABEL_43;
    }

    if (v67 == 68)
    {
      v94 = &unk_28774DA78;
      goto LABEL_43;
    }

LABEL_40:
    v94 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v23 = v190;
  if (v67 == 2)
  {
    v94 = &unk_28774DA48;
    goto LABEL_43;
  }

  if (v67 != 35)
  {
    goto LABEL_40;
  }

  v94 = &unk_28774DAD8;
LABEL_43:
  v219 = &unk_28774E218;
  sub_2659DE8A4(v94);
  v25 = v219;
  sub_265A167A0(v87, &v219);
  v188 = v91;
  if (v219 == 0xD000000000000017 && 0x8000000265A24480 == v220)
  {

    goto LABEL_47;
  }

  v95 = sub_265A1F340();

  if (v95)
  {
LABEL_47:
    v96 = sub_265A16A28(v87);
    if (v97)
    {
      v98 = v96;
      v99 = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_2659E0AC0(0, v25[2] + 1, 1, v25);
      }

      v101 = v25[2];
      v100 = v25[3];
      v102 = v25;
      if (v101 >= v100 >> 1)
      {
        v102 = sub_2659E0AC0((v100 > 1), v101 + 1, 1, v25);
      }

      *(v102 + 2) = v101 + 1;
      v25 = v102;
      v103 = &v102[16 * v101];
      *(v103 + 4) = v98;
      *(v103 + 5) = v99;
    }
  }

  v104 = v202[2];
  if (!v104)
  {
    v57 = v200;
    goto LABEL_88;
  }

  v189 = v25;
  LODWORD(v25) = v87;
  v105 = 0;
  v54 = v202 + v206;
  while (1)
  {
    if (v105 >= v202[2])
    {
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
      swift_once();
LABEL_163:
      v163 = sub_265A1EAA0();
      __swift_project_value_buffer(v163, qword_28002E8A0);
      v164 = v57;
      v165 = v57[2];
      v166 = v194;
      (v165)(v23, v193, v194);
      v167 = sub_265A1EA80();
      v168 = sub_265A1EF20();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v219 = v212;
        *v169 = 141558275;
        *(v169 + 4) = 1752392040;
        *(v169 + 12) = 2081;
        sub_265A1D860(&qword_28002B918);
        v170 = sub_265A1F310();
        v213 = v165;
        v172 = v171;
        v173 = v164[1];
        v173(v23, v166);
        v174 = sub_2659D9320(v170, v172, &v219);
        v165 = v213;

        *(v169 + 14) = v174;
        _os_log_impl(&dword_2659CA000, v167, v168, "Failed to transform URL %{private,mask.hash}s into a settings-navigation URL.", v169, 0x16u);
        v175 = v212;
        __swift_destroy_boxed_opaque_existential_1(v212);
        MEMORY[0x266766110](v175, -1, -1);
        MEMORY[0x266766110](v169, -1, -1);

        v176 = v207;
        v177 = *(v208 + 8);
        v177(v192, v207);
        v177(v205, v176);
        v173(v214, v166);
      }

      else
      {

        v181 = v164[1];
        v181(v23, v166);
        v182 = *(v208 + 8);
        v183 = v54;
        v184 = v207;
        v182(v183, v207);
        v182(v205, v184);
        v181(v214, v166);
      }

      return (v165)(v191, v193, v166);
    }

    v209(v203, v54, v7);
    if (sub_265A1E580() == 1752457584 && v106 == 0xE400000000000000)
    {
      break;
    }

    v107 = sub_265A1F340();

    if (v107)
    {
      goto LABEL_63;
    }

    ++v105;
    (v23)(v203, v7);
    v54 += v211;
    if (v104 == v105)
    {
      LODWORD(v87) = v25;
      goto LABEL_71;
    }
  }

LABEL_63:
  v108 = v195;
  v185(v195, v203, v7);
  v54 = sub_265A1E590();
  v56 = v109;
  (v23)(v108, v7);
  if (!v56)
  {
    LODWORD(v87) = v25;
LABEL_71:
    v57 = v200;
    goto LABEL_73;
  }

  v110 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v110 = v54 & 0xFFFFFFFFFFFFLL;
  }

  LODWORD(v87) = v25;
  v57 = v200;
  if (!v110)
  {

LABEL_73:
    v25 = v189;
    goto LABEL_88;
  }

  if (sub_265A16CB8(v25) == 0x6C6172656E6547 && v111 == 0xE700000000000000)
  {

    goto LABEL_75;
  }

  v112 = sub_265A1F340();

  if ((v112 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_75:
  if ((sub_265A1EC40() & 1) == 0)
  {
LABEL_80:
    v118 = v56;
    goto LABEL_84;
  }

  v203 = 0x8000000265A24FD0;
  if (qword_28002B008 != -1)
  {
    swift_once();
  }

  v113 = sub_265A1EAA0();
  __swift_project_value_buffer(v113, qword_28002E8A0);

  v114 = sub_265A1EA80();
  v115 = sub_265A1EF30();

  v55 = v114;
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v219 = v117;
    *v116 = 141558275;
    *(v116 + 4) = 1752392040;
    *(v116 + 12) = 2081;
    *(v116 + 14) = sub_2659D9320(v54, v56, &v219);
    _os_log_impl(&dword_2659CA000, v55, v115, "Replaced About/WARRANTY_COVERAGE with COVERAGE in path: %{private,mask.hash}s", v116, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v117);
    MEMORY[0x266766110](v117, -1, -1);
    MEMORY[0x266766110](v116, -1, -1);

    goto LABEL_83;
  }

LABEL_82:

LABEL_83:
  v219 = v54;
  v220 = v56;
  v217 = 0xD000000000000017;
  v218 = v203;
  v215 = 0x4547415245564F43;
  v216 = 0xE800000000000000;
  sub_265A1DA00();
  v54 = sub_265A1EFF0();
  v118 = v119;

  LODWORD(v87) = v25;
LABEL_84:
  v25 = v189;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_179:
    v25 = sub_2659E0AC0(0, v25[2] + 1, 1, v25);
  }

  v121 = v25[2];
  v120 = v25[3];
  if (v121 >= v120 >> 1)
  {
    v25 = sub_2659E0AC0((v120 > 1), v121 + 1, 1, v25);
  }

  v25[2] = v121 + 1;
  v122 = &v25[2 * v121];
  v122[4] = v54;
  v122[5] = v118;
LABEL_88:
  v219 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B3E8, &unk_265A21020);
  sub_2659F3ABC(&qword_28156A910, qword_28002B3E8, &unk_265A21020);
  v123 = sub_265A1EB50();
  v54 = v124;
  v189 = v25;

  MEMORY[0x266764C20](v123, v54);
  v125 = v202;
  v126 = v202[2];
  if (!v126)
  {
    v54 = 0;
    v127 = 0;
    v57 = v212;
    v132 = v208;
    v133 = v188;
    goto LABEL_126;
  }

  LODWORD(v203) = v87;
  v127 = 0;
  v128 = v206;
  while (1)
  {
    if (v127 >= v125[2])
    {
      goto LABEL_170;
    }

    v209(v57, v125 + v128, v7);
    if (sub_265A1E580() == 1953460082 && v129 == 0xE400000000000000)
    {
      break;
    }

    v130 = sub_265A1F340();

    if (v130)
    {
      goto LABEL_101;
    }

    if (sub_265A1E580() == 1752457584 && v131 == 0xE400000000000000)
    {
      break;
    }

    v54 = sub_265A1F340();

    (v23)(v57, v7);
    if (v54)
    {
      goto LABEL_102;
    }

    ++v127;
    v128 += v211;
    v125 = v202;
    if (v126 == v127)
    {
      v54 = v202[2];
      v127 = v54;
      goto LABEL_103;
    }
  }

LABEL_101:
  (v23)(v57, v7);
LABEL_102:
  v54 = v127 + 1;
  v134 = v202[2];
  if (v134 - 1 == v127)
  {
LABEL_103:
    v57 = v212;
    v132 = v208;
    v133 = v188;
    LOBYTE(v87) = v203;
    goto LABEL_126;
  }

  v25 = (v211 + v128);
  v201 += 40;
  v57 = 0xE400000000000000;
  v87 = v209;
  while (2)
  {
    if (v54 >= v134)
    {
      __break(1u);
      goto LABEL_169;
    }

    v87(v204, v25 + v202, v7);
    if (sub_265A1E580() == 1953460082 && v135 == 0xE400000000000000)
    {
      goto LABEL_105;
    }

    v136 = sub_265A1F340();

    if (v136)
    {
      goto LABEL_106;
    }

    if (sub_265A1E580() == 1752457584 && v137 == 0xE400000000000000)
    {
LABEL_105:

LABEL_106:
      (v23)(v204, v7);
      goto LABEL_107;
    }

    v118 = v137;
    v138 = sub_265A1F340();

    (v23)(v204, v7);
    if ((v138 & 1) == 0)
    {
      if (v54 != v127)
      {
        if (v127 < 0)
        {
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v139 = v202;
        v140 = v202[2];
        if (v127 >= v140)
        {
          goto LABEL_176;
        }

        v23 = v210;
        v118 = v127 * v211;
        v87 = v209;
        v209(v196, v202 + v206 + v127 * v211, v7);
        if (v54 >= v140)
        {
          goto LABEL_177;
        }

        v87(v197, v25 + v139, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v202 = sub_265A1D8A4(v202);
        }

        v23 = v190;
        v141 = v202;
        v142 = *v201;
        v143 = v202 + v206 + v118;
        v118 = v201;
        (*v201)(v143, v197, v7);
        if (v54 >= v141[2])
        {
          goto LABEL_178;
        }

        v142(v25 + v141, v196, v7);
      }

      ++v127;
    }

LABEL_107:
    ++v54;
    v134 = v202[2];
    v25 = (v25 + v211);
    if (v54 != v134)
    {
      continue;
    }

    break;
  }

  v57 = v212;
  v132 = v208;
  v133 = v188;
  LOBYTE(v87) = v203;
  if (v54 < v127)
  {
    goto LABEL_171;
  }

  if (v127 < 0)
  {
    goto LABEL_172;
  }

LABEL_126:
  if (__OFADD__(v54, v127 - v54))
  {
    goto LABEL_173;
  }

  v144 = v202;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v221 = v144;
  if (!isUniquelyReferenced_nonNull_native || v127 > v144[3] >> 1)
  {
    if (v54 <= v127)
    {
      v146 = v127;
    }

    else
    {
      v146 = v54;
    }

    v144 = sub_2659E0BCC(isUniquelyReferenced_nonNull_native, v146, 1, v144);
    v221 = v144;
  }

  sub_265A1D8B8(v127, v54, 0);

  if (v144[2])
  {
    v54 = v192;
    sub_265A1E5C0();
  }

  else
  {

    v54 = v192;
  }

  v147 = v199;
  v148 = v186;
  v149 = sub_265A1E640();
  if (v150)
  {
    v151 = HIBYTE(v150) & 0xF;
    if ((v150 & 0x2000000000000000) == 0)
    {
      v151 = v149 & 0xFFFFFFFFFFFFLL;
    }

    if (v151)
    {

      if (sub_265A16CB8(v87) == 1414483794 && v152 == 0xE400000000000000)
      {

        v54 = v192;
        goto LABEL_152;
      }

      v155 = sub_265A1F340();

      v54 = v192;
      if (v155)
      {
LABEL_152:

        v156 = sub_265A1740C();
        if (v156 == 74)
        {
          goto LABEL_160;
        }

        v160 = v156;

        v159 = v160;
LABEL_158:
        sub_265A167A0(v159, &v219);
      }

LABEL_160:
      sub_265A1E650();
      goto LABEL_161;
    }
  }

  v153 = HIBYTE(v133) & 0xF;
  if ((v133 & 0x2000000000000000) == 0)
  {
    v153 = v148 & 0xFFFFFFFFFFFFLL;
  }

  if (v153)
  {
    if (sub_265A16CB8(v87) == 1414483794 && v154 == 0xE400000000000000)
    {
    }

    else
    {
      v157 = sub_265A1F340();

      if ((v157 & 1) == 0)
      {

        goto LABEL_160;
      }
    }

    v158 = sub_265A1740C();

    if (v158 == 74)
    {
      goto LABEL_160;
    }

    v159 = v158;
    goto LABEL_158;
  }

LABEL_161:
  sub_265A1E5E0();
  v161 = v194;
  v162 = (v57[6])(v147, 1, v194);
  v23 = v198;
  if (v162 == 1)
  {
    sub_2659DA270(v147, &qword_28002B700, &qword_265A22658);
    if (qword_28002B008 == -1)
    {
      goto LABEL_163;
    }

    goto LABEL_174;
  }

  v178 = *(v132 + 8);
  v179 = v54;
  v180 = v207;
  v178(v179, v207);
  v178(v205, v180);
  (v57[1])(v214, v161);
  return (v57[4])(v191, v147, v161);
}

void *sub_265A1C808()
{
  sub_265A1DA00();
  result = sub_265A1EFE0();
  v1 = result[2];
  if (v1)
  {
    v2 = result[4];
    v3 = result[5];
    if (v1 == 2)
    {
      v4 = result[6];
      v5 = result[7];
      v6 = result[5];
    }

    else
    {
      v7 = result[5];
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Transforming<>.toSettingsNavigation.getter()
{
  v35 = MEMORY[0x277D84F90];
  sub_265A1D324(0, 6, 0);
  v0 = v35;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_265A1AE20;
  *(v1 + 24) = 0;
  v3 = *(v35 + 16);
  v2 = *(v35 + 24);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    v29 = v1;
    sub_265A1D324((v2 > 1), v3 + 1, 1);
    v1 = v29;
    v0 = v35;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = sub_265A1D344;
  *(v5 + 40) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_265A199E8;
  *(v6 + 24) = 0;
  v7 = *(v0 + 24);
  v8 = v3 + 2;
  if (v4 >= v7 >> 1)
  {
    v30 = v6;
    sub_265A1D324((v7 > 1), v8, 1);
    v6 = v30;
    v0 = v35;
  }

  *(v0 + 16) = v8;
  v9 = v0 + 16 * v4;
  *(v9 + 32) = sub_265A1DA54;
  *(v9 + 40) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_265A19C64;
  *(v10 + 24) = 0;
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v31 = v10;
    sub_265A1D324((v11 > 1), v12 + 1, 1);
    v10 = v31;
  }

  v14 = v35;
  *(v35 + 16) = v13;
  v15 = v35 + 16 * v12;
  *(v15 + 32) = sub_265A1DA54;
  *(v15 + 40) = v10;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_265A1A3C0;
  *(v16 + 24) = 0;
  v17 = *(v35 + 24);
  v18 = v12 + 2;
  if (v13 >= v17 >> 1)
  {
    v32 = v16;
    sub_265A1D324((v17 > 1), v18, 1);
    v16 = v32;
    v14 = v35;
  }

  *(v14 + 16) = v18;
  v19 = v14 + 16 * v13;
  *(v19 + 32) = sub_265A1DA54;
  *(v19 + 40) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_265A19ED4;
  *(v20 + 24) = 0;
  v22 = *(v14 + 16);
  v21 = *(v14 + 24);
  if (v22 >= v21 >> 1)
  {
    v33 = v20;
    sub_265A1D324((v21 > 1), v22 + 1, 1);
    v20 = v33;
    v14 = v35;
  }

  *(v14 + 16) = v22 + 1;
  v23 = v14 + 16 * v22;
  *(v23 + 32) = sub_265A1DA54;
  *(v23 + 40) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_265A1A144;
  *(v24 + 24) = 0;
  v26 = *(v14 + 16);
  v25 = *(v14 + 24);
  if (v26 >= v25 >> 1)
  {
    v34 = v24;
    sub_265A1D324((v25 > 1), v26 + 1, 1);
    v24 = v34;
  }

  *(v35 + 16) = v26 + 1;
  v27 = v35 + 16 * v26;
  *(v27 + 32) = sub_265A1DA54;
  *(v27 + 40) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8B8, &qword_265A23050);
  swift_arrayDestroy();
  return v35;
}

uint64_t sub_265A1CC44@<X0>(void *a1@<X8>)
{
  result = sub_265A1E750();
  if (!v3)
  {
    goto LABEL_14;
  }

  if (result == 0xD000000000000013 && v3 == 0x8000000265A24D70)
  {
  }

  else
  {
    v4 = sub_265A1F340();

    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  result = sub_265A1E740();
  if (!v5)
  {
    goto LABEL_14;
  }

  if (result != 0xD000000000000017 || v5 != 0x8000000265A24480)
  {
    v6 = sub_265A1F340();

    if (v6)
    {
      goto LABEL_11;
    }

LABEL_14:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

LABEL_11:
  v7 = sub_265A1E6F0();
  if (v7[2] <= 1uLL || (v9 = v7[6], v8 = v7[7], , , result = sub_265A1EC40(), (result & 1) != 0))
  {

    goto LABEL_14;
  }

  *a1 = v9;
  a1[1] = v8;
  return result;
}

uint64_t sub_265A1CD90@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B910, &qword_265A230B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_265A1E670();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(sub_265A1E6F0() + 16);

  sub_265A1E5D0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_2659DA270(v5, &qword_28002B910, &qword_265A230B0);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = sub_265A1E5B0();
    result = (*(v7 + 8))(v10, v6);
    if (v13)
    {
      v14 = *(v13 + 16);

      if (v14)
      {
        v15 = 100 - v11 - v14;
        if (!__OFSUB__(100 - v11, v14))
        {
          goto LABEL_9;
        }

        __break(1u);
      }
    }
  }

  v15 = 100 - v11;
LABEL_9:
  *a1 = v15;
  return result;
}

uint64_t sub_265A1CF6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B910, &qword_265A230B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - v4;
  v6 = sub_265A1E670();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265A1E5D0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_2659DA270(v5, &qword_28002B910, &qword_265A230B0);
    goto LABEL_27;
  }

  (*(v7 + 32))(v10, v5, v6);
  v12 = sub_265A1E620();
  if (!v13)
  {
LABEL_26:
    result = (*(v7 + 8))(v10, v6);
    goto LABEL_27;
  }

  if (v12 == 0xD000000000000013 && v13 == 0x8000000265A24D70)
  {
  }

  else
  {
    v15 = sub_265A1F340();

    if ((v15 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v16 = sub_265A1E5F0();
  if (!v17)
  {
    v24 = sub_265A1E640();
    if (v25)
    {
      v35 = v24;
      v36 = v25;
      sub_265A17A58(&v32);
      (*(v7 + 8))(v10, v6);
      v26 = v33;
      if (v33)
      {
        v27 = v34;
        v28 = v32;

        *a1 = v28;
        *(a1 + 8) = v26;
        *(a1 + 16) = v27;
        return result;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = v17;
  if (v16 == 0xD000000000000017 && v17 == 0x8000000265A24480)
  {
  }

  else
  {
    v20 = v16;
    if ((sub_265A1F340() & 1) == 0)
    {
      v35 = v20;
      v36 = v18;
      sub_265A17A58(&v32);
      v21 = v33;
      if (v33)
      {
        v22 = v34;
        v23 = v32;
        (*(v7 + 8))(v10, v6);

        *a1 = v23;
        *(a1 + 8) = v21;
        *(a1 + 16) = v22;
        return result;
      }
    }

    v29 = sub_265A1F340();

    if ((v29 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  sub_265A1CC44(&v32);
  result = (*(v7 + 8))(v10, v6);
  v30 = v33;
  if (v33)
  {
    *a1 = v32;
    *(a1 + 8) = v30;
    *(a1 + 16) = 257;
    return result;
  }

LABEL_27:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

char *sub_265A1D2E4(char *a1, int64_t a2, char a3)
{
  result = sub_265A1D34C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_265A1D304(size_t a1, int64_t a2, char a3)
{
  result = sub_265A1D458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265A1D324(void *a1, int64_t a2, char a3)
{
  result = sub_265A1D630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265A1D34C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
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

size_t sub_265A1D458(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B908, &qword_265A230A8);
  v10 = *(sub_265A1E6C0() - 8);
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
  v15 = *(sub_265A1E6C0() - 8);
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

void *sub_265A1D630(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8C0, &qword_265A23060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8C8, &qword_265A23068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_265A1D764()
{
  result = qword_28156A930;
  if (!qword_28156A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A930);
  }

  return result;
}

unint64_t sub_265A1D7B8()
{
  result = qword_28156A938;
  if (!qword_28156A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A938);
  }

  return result;
}

unint64_t sub_265A1D80C()
{
  result = qword_28156A940;
  if (!qword_28156A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A940);
  }

  return result;
}

uint64_t sub_265A1D860(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_265A1E770();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_265A1D8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_265A1E5A0();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_265A1DA00()
{
  result = qword_28156A928;
  if (!qword_28156A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A928);
  }

  return result;
}

uint64_t URLComponents.init(settingsNavigationHost:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_265A1E660();
  sub_265A1E630();
  return MEMORY[0x266764C10](v1, v2);
}

uint64_t sub_265A1DAB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v77 = a1;
  v3 = sub_265A1E6C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v76 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - v8;
  v75 = sub_265A1E810();
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B920, qword_265A230B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v62 - v15;
  v81 = sub_265A1E830();
  v17 = *(v81 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v81);
  v73 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v62 - v21;
  v22 = *(sub_265A1E7F0() + 16);

  v23 = MEMORY[0x266765100](v22, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v24 = sub_265A1E7F0();
  v72 = *(v24 + 16);
  if (!v72)
  {

LABEL_22:
    *a2 = v23;
    return result;
  }

  v63 = a2;
  v64 = v24;
  v25 = 0;
  v70 = (v4 + 16);
  v71 = (v10 + 8);
  v68 = (v4 + 8);
  v69 = (v17 + 16);
  v66 = v9;
  v67 = (v17 + 8);
  v26 = (v24 + 40);
  v65 = v16;
  v27 = v78;
  while (v25 < *(v24 + 16))
  {
    v79 = v26;
    v80 = v25;
    v31 = *(v26 - 1);
    v30 = *v26;

    sub_265A1E7C0();
    v32 = v74;
    sub_265A1E820();
    sub_265A1E800();
    (*v71)(v32, v75);
    v33 = sub_265A1E7E0();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v16, 1, v33) == 1)
    {
      sub_265A1E0D8(v16);
      v35 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      v35 = sub_265A1E7D0();
      v37 = v16;
      v36 = v38;
      (*(v34 + 8))(v37, v33);
    }

    v39 = *v70;
    (*v70)(v9, v77, v3);
    (*v69)(v73, v27, v81);
    sub_265A1E6B0();
    v40 = v3;
    v39(v76, v9, v3);
    v41 = sub_265A1EBB0();
    v43 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v23;
    v45 = v35;
    v46 = v35;
    v47 = v36;
    v49 = sub_265A0C9AC(v46, v36);
    v50 = v23[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_24;
    }

    v53 = v48;
    if (v23[3] >= v52)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v3 = v40;
        if (v48)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_2659F7BF8();
        v3 = v40;
        if (v53)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_2659F751C(v52, isUniquelyReferenced_nonNull_native);
      v54 = sub_265A0C9AC(v45, v47);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_26;
      }

      v49 = v54;
      v3 = v40;
      if (v53)
      {
LABEL_3:

        v23 = v82;
        v28 = (v82[7] + 16 * v49);
        v29 = v28[1];
        *v28 = v41;
        v28[1] = v43;

        v9 = v66;
        (*v68)(v66, v3);
        v27 = v78;
        (*v67)(v78, v81);
        goto LABEL_4;
      }
    }

    v23 = v82;
    v82[(v49 >> 6) + 8] |= 1 << v49;
    v56 = (v23[6] + 16 * v49);
    *v56 = v45;
    v56[1] = v47;
    v57 = (v23[7] + 16 * v49);
    *v57 = v41;
    v57[1] = v43;
    v9 = v66;
    (*v68)(v66, v3);
    v27 = v78;
    (*v67)(v78, v81);
    v58 = v23[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_25;
    }

    v23[2] = v60;
LABEL_4:
    v25 = v80 + 1;
    v26 = v79 + 2;
    v24 = v64;
    v16 = v65;
    if (v72 == v80 + 1)
    {

      a2 = v63;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_265A1F370();
  __break(1u);
  return result;
}

uint64_t sub_265A1E0D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B920, qword_265A230B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_265A1E2A4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_265A1EAA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265A1EA20();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v11, v13, v7);
  return sub_265A1EA00();
}

uint64_t sub_265A1E3F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_265A1EAA0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_265A1EA90();
}

uint64_t sub_265A1E484(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_265A1E4D4(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}