uint64_t sub_19A353CCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A353D4C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 704) = v4;
  *(v5 + 696) = a4;
  *(v5 + 688) = a3;
  *(v5 + 776) = a2;
  *(v5 + 712) = *a1;
  *(v5 + 780) = *(a1 + 8);
  return MEMORY[0x1EEE6DFA0](sub_19A353D88, 0, 0);
}

uint64_t sub_19A353D88()
{
  v60 = v0;
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A57236C();
  __swift_project_value_buffer(v1, qword_1ED82BD30);
  v2 = sub_19A57231C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "checkImage", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v9 = *(v0 + 704);

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  *(v0 + 720) = sub_19A5723AC();
  (*(v3 + 8))(v4, v2);

  v10 = *(v9 + 16);
  os_unfair_lock_lock((v10 + 80));
  sub_19A352ED4((v10 + 16), (v0 + 80));
  os_unfair_lock_unlock((v10 + 80));
  v11 = *(v0 + 96);
  *(v0 + 144) = *(v0 + 80);
  *(v0 + 160) = v11;
  v12 = *(v0 + 128);
  *(v0 + 176) = *(v0 + 112);
  *(v0 + 192) = v12;
  v13 = *(v0 + 144);
  *(v0 + 728) = v13;
  v14 = v13;
  sub_19A3555A8(v0 + 144);
  os_unfair_lock_lock((v10 + 80));
  sub_19A352ED4((v10 + 16), (v0 + 208));
  os_unfair_lock_unlock((v10 + 80));
  v15 = *(v0 + 224);
  *(v0 + 272) = *(v0 + 208);
  *(v0 + 288) = v15;
  v16 = *(v0 + 256);
  *(v0 + 304) = *(v0 + 240);
  *(v0 + 320) = v16;
  sub_19A3555A8(v0 + 272);
  v17 = *(v0 + 280);
  os_unfair_lock_lock((v10 + 80));
  sub_19A352ED4((v10 + 16), (v0 + 336));
  os_unfair_lock_unlock((v10 + 80));
  v18 = *(v0 + 352);
  *(v0 + 400) = *(v0 + 336);
  *(v0 + 416) = v18;
  v19 = *(v0 + 384);
  *(v0 + 432) = *(v0 + 368);
  *(v0 + 448) = v19;
  v20 = *(v0 + 448);
  v21 = *(v0 + 456);
  *(v0 + 736) = v20;
  *(v0 + 744) = v21;
  sub_19A2E0A50(v20);
  sub_19A3555A8(v0 + 400);
  os_unfair_lock_lock((v10 + 80));
  sub_19A352ED4((v10 + 16), (v0 + 464));
  os_unfair_lock_unlock((v10 + 80));
  v22 = *(v0 + 512);
  *(v0 + 560) = *(v0 + 496);
  *(v0 + 576) = v22;
  v23 = *(v0 + 480);
  *(v0 + 528) = *(v0 + 464);
  *(v0 + 544) = v23;
  if (*(v0 + 536))
  {
    sub_19A3555A8(v0 + 528);
  }

  else
  {
    v24 = *(v0 + 576);
    sub_19A3555A8(v0 + 528);
    if (!v24)
    {
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v25 = sub_19A5723FC();
      __swift_project_value_buffer(v25, qword_1ED82BCF0);
      sub_19A2E0A50(v20);
      v26 = sub_19A5723DC();
      v27 = sub_19A57355C();
      sub_19A2E0A60(v20);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v58 = v29;
        *v28 = 136446466;
        *(v0 + 672) = v17;
        v30 = sub_19A572DAC();
        v32 = sub_19A31F114(v30, v31, &v58);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2082;
        if (v20)
        {
          v33 = swift_allocObject();
          *(v33 + 16) = v20;
          *(v33 + 24) = v21;
          v34 = sub_19A3558EC;
        }

        else
        {
          v34 = 0;
          v33 = 0;
        }

        *(v0 + 656) = v34;
        *(v0 + 664) = v33;
        sub_19A2E0A50(v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0530);
        v54 = sub_19A572DAC();
        v56 = sub_19A31F114(v54, v55, &v58);

        *(v28 + 14) = v56;
        _os_log_impl(&dword_19A2DE000, v26, v27, "checkImage called but skipped due to configuration %{public}s, %{public}s.", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A902C50](v29, -1, -1);
        MEMORY[0x19A902C50](v28, -1, -1);

        sub_19A2E0A60(v20);
      }

      else
      {

        sub_19A2E0A60(v20);
      }

      sub_19A354CE0("checkImage", 10, 2);

      v57 = *(v0 + 8);

      return v57(0);
    }
  }

  if (v13)
  {
    v35 = *(v0 + 780);
    v58 = *(v0 + 712);
    LOBYTE(v59) = v35;
    sub_19A387F80();
    *(v0 + 752) = v36;
    v44 = *(v0 + 688);
    v45 = *(v0 + 776);
    v46 = [objc_allocWithZone(MEMORY[0x1E69CA740]) initWithPixelBuffer_];
    *(v0 + 760) = v46;
    [v46 setKeepGoing_];
    [v46 setStyle_];
    [v46 setIsChildPresent_];
    [v46 setIsPersonalized_];
    v47 = sub_19A570FEC();
    [v46 setUserRequestID_];

    v48 = [v46 isChildPresent];
    if (v48 && ([v46 isPersonalized] & 1) == 0)
    {
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v49 = sub_19A5723FC();
      __swift_project_value_buffer(v49, qword_1ED82BCF0);
      v50 = sub_19A5723DC();
      v51 = sub_19A57355C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_19A2DE000, v50, v51, "Unexpected personalization state: isChildPresent is set, but not isPersonalized.", v52, 2u);
        MEMORY[0x19A902C50](v52, -1, -1);
      }
    }

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 680;
    *(v0 + 24) = sub_19A3548B8;
    v53 = swift_continuation_init();
    *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0538);
    *(v0 + 624) = v53;
    *(v0 + 592) = MEMORY[0x1E69E9820];
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_19A354FC8;
    *(v0 + 616) = &block_descriptor_0;
    [v14 sanitizeRequestAsynchronously:v46 completionHandler:v0 + 592];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v37 = sub_19A5723FC();
    __swift_project_value_buffer(v37, qword_1ED82BCF0);
    v38 = sub_19A5723DC();
    v39 = sub_19A57355C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_19A2DE000, v38, v39, "Image sanitizer missing; can't check images without an image sanitizer.", v40, 2u);
      MEMORY[0x19A902C50](v40, -1, -1);
    }

    sub_19A355134();
    swift_allocError();
    *v41 = 0;
    v41[1] = 0;
    v41[2] = 0;
    v41[3] = 0x8000000;
    swift_willThrow();
    sub_19A2E0A60(v20);

    sub_19A354CE0("checkImage", 10, 2);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_19A3548B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 768) = v1;
  if (v1)
  {
    v2 = sub_19A354A7C;
  }

  else
  {
    v2 = sub_19A3549C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3549C8()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[91];
  sub_19A2E0A60(v0[92]);

  v4 = v0[85];
  sub_19A354CE0("checkImage", 10, 2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_19A354A7C()
{
  v1 = v0[95];
  v2 = v0[94];
  swift_willThrow();

  v3 = v0[96];
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1ED82BCF0);
  v5 = v3;
  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_19A2DE000, v6, v7, "Unexpected error trying to run image sanitization: %@", v8, 0xCu);
    sub_19A2F3FA0(v9, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  v12 = v0[92];
  v13 = v0[91];

  sub_19A355134();
  swift_allocError();
  *v14 = v3;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0;
  swift_willThrow();
  v15 = v3;
  sub_19A2E0A60(v12);

  sub_19A354CE0("checkImage", 10, 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_19A354CA4@<X0>(uint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  if ((result & 2) != 0)
  {
    *a3 = 7;
  }

  else if ((a2 - 1) > 8)
  {
    *a3 = 8;
  }

  else
  {
    *a3 = byte_19A57AF32[a2 - 1];
  }

  return result;
}

uint64_t sub_19A354CE0(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A354FC8(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_19A3550A0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_19A3550DC()
{
  result = qword_1EAFA0510;
  if (!qword_1EAFA0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0510);
  }

  return result;
}

unint64_t sub_19A355134()
{
  result = qword_1EAF9F680;
  if (!qword_1EAF9F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F680);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16VisualGeneration15RejectionReasonO(_DWORD *a1)
{
  v1 = a1[4];
  if (v1 >= 0)
  {
    return v1 >> 29;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t get_enum_tag_for_layout_string_16VisualGeneration17ImageCheckerErrorO(_DWORD *a1)
{
  v1 = (a1[6] >> 27) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_19A3551C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFFFFD && *(a1 + 32))
  {
    return (*a1 + 67108861);
  }

  v3 = ((*(a1 + 24) >> 27) & 3 | (4 * ((*(a1 + 24) >> 2) & 0x3F80 | (*(a1 + 24) >> 1) | (*(a1 + 24) >> 3) & 0xFFC000))) ^ 0x3FFFFFF;
  if (v3 >= 0x3FFFFFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_19A355238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFFFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 67108861;
    *(result + 8) = 0;
    if (a3 >= 0x3FFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFFFFF) - (a2 << 24);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F)) | (((v3 >> 14) & 0xFFF) << 17);
    }
  }

  return result;
}

void *sub_19A3552C4(void *result, unsigned int a2)
{
  if (a2 < 3)
  {
    result[3] = result[3] & 0xFFFFFFFFE0010101 | (a2 << 27);
  }

  else
  {
    *result = a2 - 3;
    result[1] = 0;
    result[2] = 0;
    result[3] = 402653184;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageCheckerError.RejectionCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageCheckerError.RejectionCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16VisualGeneration15ForensicsReportVIeghn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19A3554AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_19A3554F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A355554()
{
  result = qword_1EAFA0520;
  if (!qword_1EAFA0520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFA0520);
  }

  return result;
}

uint64_t sub_19A35563C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 > 3)
  {
    if (*a1 > 5u)
    {
      if (v1 != 6)
      {
        return 0;
      }
    }

    else if (v1 != 4)
    {
      return 9;
    }

    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v5 = sub_19A5723FC();
    __swift_project_value_buffer(v5, qword_1ED82BCF0);
    v6 = sub_19A5723DC();
    v7 = sub_19A57355C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19A2DE000, v6, v7, "encountered unexpected image style.", v8, 2u);
      MEMORY[0x19A902C50](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    if (*a1)
    {
      v3 = 4;
    }

    else
    {
      v3 = 3;
    }

    if (*a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_19A355790()
{
  result = qword_1EAFA0540;
  if (!qword_1EAFA0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0540);
  }

  return result;
}

unint64_t sub_19A3557E8()
{
  result = qword_1EAFA0548;
  if (!qword_1EAFA0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0548);
  }

  return result;
}

unint64_t sub_19A355840()
{
  result = qword_1EAFA0550;
  if (!qword_1EAFA0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0550);
  }

  return result;
}

unint64_t sub_19A355898()
{
  result = qword_1EAFA0558;
  if (!qword_1EAFA0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0558);
  }

  return result;
}

uint64_t sub_19A355910()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A355988()
{
  sub_19A572E4C();
}

uint64_t sub_19A3559EC()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A355A60@<X0>(char *a1@<X8>)
{
  v2 = sub_19A573C2C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_19A355AC0(uint64_t *a1@<X8>)
{
  v2 = 1701601645;
  if (*v1)
  {
    v2 = 0x656C616D6566;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_19A355B04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C616D6566;
  }

  else
  {
    v3 = 1701601645;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C616D6566;
  }

  else
  {
    v5 = 1701601645;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

unint64_t sub_19A355C54()
{
  result = qword_1EAFA0560;
  if (!qword_1EAFA0560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0560);
  }

  return result;
}

unint64_t sub_19A355CBC()
{
  result = qword_1EAFA0570;
  if (!qword_1EAFA0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0570);
  }

  return result;
}

unint64_t sub_19A355D10()
{
  result = qword_1EAFA0578;
  if (!qword_1EAFA0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0578);
  }

  return result;
}

double sub_19A355D64@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  Width = CVPixelBufferGetWidth(v3);
  Height = CVPixelBufferGetHeight(v3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v3);

  *a2 = Width;
  *(a2 + 8) = Height;
  *(a2 + 16) = PixelFormatType;
  *(a2 + 24) = v3;
  type metadata accessor for ResolvedImage.HiddenBufferData();
  v7 = swift_allocObject();
  result = 0.0;
  *(v7 + 16) = xmmword_19A5770A0;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_19A355DEC()
{
  sub_19A33EFB0(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
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

uint64_t sub_19A355E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A355EA4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

int64_t sub_19A355EFC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v2;
  if (v3 >> 60 != 15)
  {
    goto LABEL_5;
  }

  v5 = *(v0 + 24);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v5);
  result = CVPixelBufferGetHeight(v5);
  v8 = BytesPerRow * result;
  if ((BytesPerRow * result) >> 64 == (BytesPerRow * result) >> 63)
  {
    CVPixelBufferLockBaseAddress(v5, 1uLL);
    result = CVPixelBufferGetBaseAddress(v5);
    if (result)
    {
      v4 = sub_19A356E18(result, v8);
      v9 = *(v1 + 16);
      v10 = *(v1 + 24);
      *(v1 + 16) = v4;
      *(v1 + 24) = v11;
      sub_19A356EC8(v4, v11);
      sub_19A33EFB0(v9, v10);
      CVPixelBufferUnlockBaseAddress(v5, 1uLL);
LABEL_5:
      sub_19A356F1C(v2, v3);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A355FDC()
{
  v1 = 0x6144726566667562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265666552637078;
  }
}

uint64_t sub_19A356048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A357118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A356070(uint64_t a1)
{
  v2 = sub_19A356C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A3560AC(uint64_t a1)
{
  v2 = sub_19A356C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A3560E8(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA05E8);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v23 - v3;
  v5 = *v1;
  v6 = v1[1];
  v35 = *(v1 + 4);
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A356C44();
  v25 = v4;
  sub_19A5741AC();
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (sub_19A4B44F0(v9, v10))
  {
    v30 = v5;
    v31 = v6;
    v32 = v35;
    v33 = v7;
    v34 = v8;
    LOBYTE(v28) = 0;
    v11 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA05D8);
    sub_19A2F12E4(&qword_1EAFA05F8, &qword_1EAFA05D8);
    v12 = v27;
    v13 = v25;
    sub_19A573E7C();
    v14 = v33;

    return (*(v24 + 8))(v13, v12);
  }

  else
  {
    v16 = v24;
    v17 = v5;
    v30 = v5;
    v31 = v6;
    v18 = v35;
    v32 = v35;
    v33 = v7;
    v34 = v8;
    v28 = sub_19A355EFC();
    v29 = v19;
    v36 = 1;
    sub_19A343668();
    v20 = v26;
    v21 = v27;
    v22 = v25;
    sub_19A573E7C();
    sub_19A33EFC4(v28, v29);
    if (!v20)
    {
      v30 = v17;
      v31 = v6;
      v32 = v18;
      LOBYTE(v28) = 2;
      sub_19A356CEC();
      sub_19A573E7C();
    }

    return (*(v16 + 8))(v22, v21);
  }
}

uint64_t sub_19A35639C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA05C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A356C44();
  sub_19A57417C();
  if (!v2)
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    if (sub_19A4B4508(v10, v11))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA05D8);
      v25 = 0;
      sub_19A2F12E4(&qword_1EAFA05E0, &qword_1EAFA05D8);
      sub_19A573D4C();
      (*(v6 + 8))(v8, v5);
      v12 = v21;
      v13 = v22;
      v15 = v23;
      v14 = v24;
    }

    else
    {
      v25 = 1;
      sub_19A343940();
      sub_19A573D4C();
      v17 = *(&v21 + 1);
      v16 = v21;
      v25 = 2;
      sub_19A356C98();
      sub_19A573D4C();
      v18 = v16;
      v20 = v16;
      v13 = v22;
      v19 = v21;
      v15 = sub_19A3944F8(v18, v17, &v21);
      (*(v6 + 8))(v8, v5);
      sub_19A33EFC4(v20, v17);
      type metadata accessor for ResolvedImage.HiddenBufferData();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_19A5770A0;
      v12 = v19;
    }

    *a2 = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A356788(uint64_t a1)
{
  v2 = sub_19A356BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A3567C4(uint64_t a1)
{
  v2 = sub_19A356BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A356800(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA05B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A356BF0();
  sub_19A5741AC();
  return (*(v3 + 8))(v5, v2);
}

void sub_19A356914(__IOSurface *a1@<X1>, uint64_t a2@<X8>)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v3 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], a1, 0, v5);
  if (v3 || !v5[0])
  {
    sub_19A336E90();
    swift_allocError();
    *v4 = v3;
    *(v4 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    sub_19A355D64(v5[0], a2);
  }
}

unint64_t sub_19A3569E0(uint64_t a1)
{
  *(a1 + 8) = sub_19A356A10();
  result = sub_19A356A64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_19A356A10()
{
  result = qword_1EAF9ED58;
  if (!qword_1EAF9ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ED58);
  }

  return result;
}

unint64_t sub_19A356A64()
{
  result = qword_1EAF9F828;
  if (!qword_1EAF9F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F828);
  }

  return result;
}

unint64_t sub_19A356ABC()
{
  result = qword_1EAFA0598;
  if (!qword_1EAFA0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0598);
  }

  return result;
}

unint64_t sub_19A356B14()
{
  result = qword_1EAFA05A0;
  if (!qword_1EAFA05A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA05A0);
  }

  return result;
}

unint64_t sub_19A356B74(uint64_t a1)
{
  result = sub_19A356B9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19A356B9C()
{
  result = qword_1EAFA05A8;
  if (!qword_1EAFA05A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA05A8);
  }

  return result;
}

unint64_t sub_19A356BF0()
{
  result = qword_1EAFA05B8;
  if (!qword_1EAFA05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA05B8);
  }

  return result;
}

unint64_t sub_19A356C44()
{
  result = qword_1EAFA05C8;
  if (!qword_1EAFA05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA05C8);
  }

  return result;
}

unint64_t sub_19A356C98()
{
  result = qword_1EAFA05D0;
  if (!qword_1EAFA05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA05D0);
  }

  return result;
}

unint64_t sub_19A356CEC()
{
  result = qword_1EAFA05F0;
  if (!qword_1EAFA05F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA05F0);
  }

  return result;
}

unint64_t sub_19A356D40(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A356D60(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_19A356E18(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_19A356D60(a1, &a1[a2]);
  }

  sub_19A5709BC();
  swift_allocObject();
  sub_19A57095C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_19A570EDC();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_19A356EC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_19A356F1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19A356EC8(a1, a2);
  }

  return a1;
}

unint64_t sub_19A356F64()
{
  result = qword_1EAFA0600;
  if (!qword_1EAFA0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0600);
  }

  return result;
}

unint64_t sub_19A356FBC()
{
  result = qword_1EAFA0608;
  if (!qword_1EAFA0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0608);
  }

  return result;
}

unint64_t sub_19A357014()
{
  result = qword_1EAFA0610;
  if (!qword_1EAFA0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0610);
  }

  return result;
}

unint64_t sub_19A35706C()
{
  result = qword_1EAFA0618;
  if (!qword_1EAFA0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0618);
  }

  return result;
}

unint64_t sub_19A3570C4()
{
  result = qword_1EAFA0620;
  if (!qword_1EAFA0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0620);
  }

  return result;
}

uint64_t sub_19A357118(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265666552637078 && a2 == 0xEC00000065636E65;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726566667562 && a2 == 0xEA00000000006174 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000019A596FA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t sub_19A357244()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = 0xE000000000000000;
  sub_19A57395C();
  MEMORY[0x19A900A50](0xD000000000000011, 0x800000019A596FC0);
  if (v1 == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1F0DB36C0();
    v6 = v8;
  }

  MEMORY[0x19A900A50](v7, v6);

  MEMORY[0x19A900A50](0xD000000000000015, 0x800000019A596FE0);
  if (v2 == 3)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v9 = sub_19A572DAC();
    v10 = v11;
  }

  MEMORY[0x19A900A50](v9, v10);

  MEMORY[0x19A900A50](0xD000000000000018, 0x800000019A597000);
  if (v3 == 10)
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    v12 = off_1F0DB1100();
    v13 = v14;
  }

  MEMORY[0x19A900A50](v12, v13);

  MEMORY[0x19A900A50](0xD00000000000001ALL, 0x800000019A597020);
  if (v5)
  {
    MEMORY[0x19A900A50](v4, v5);
    MEMORY[0x19A900A50](34, 0xE100000000000000);
    v15 = 34;
    v16 = 0xE100000000000000;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  MEMORY[0x19A900A50](v15, v16);

  return 0;
}

uint64_t sub_19A357484()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0628);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13[-v4];
  sub_19A571C2C();
  v6 = sub_19A5724AC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_19A357794(v5);
    sub_19A3577FC();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 4;
    return swift_willThrow();
  }

  v10 = sub_19A57248C();
  (*(v7 + 8))(v5, v6);
  v11 = MEMORY[0x19A902F60](v10);
  if (v11 == sub_19A57243C())
  {
    token = 0;
    if (!task_create_identity_token(*MEMORY[0x1E69E9A60], &token))
    {
      sub_19A572DEC();
      xpc_dictionary_set_mach_send();

      sub_19A571C4C();
      swift_unknownObjectRetain();
      sub_19A57249C();
      (*(v7 + 56))(v3, 0, 1, v6);
      sub_19A571C3C();
      mach_port_deallocate(*MEMORY[0x1E69E9A60], token);
      return swift_unknownObjectRelease();
    }

    sub_19A3577FC();
    swift_allocError();
    *v12 = xmmword_19A57B400;
  }

  else
  {
    sub_19A3577FC();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
  }

  *(v12 + 16) = 4;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_19A357794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A3577FC()
{
  result = qword_1EAF9F300;
  if (!qword_1EAF9F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F300);
  }

  return result;
}

uint64_t sub_19A357850(void *a1, xpc_object_t value)
{
  xpc_dictionary_set_value(a1, "DATA", value);
  swift_unknownObjectRetain();
  return sub_19A57249C();
}

uint64_t sub_19A3578A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0628);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  sub_19A571C2C();
  v3 = sub_19A5724AC();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_19A357794(v2);
    sub_19A3577FC();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 4;
    return swift_willThrow();
  }

  v7 = sub_19A57248C();
  (*(v4 + 8))(v2, v3);
  v8 = MEMORY[0x19A902F60](v7);
  if (v8 == sub_19A57243C())
  {
    sub_19A572DEC();
    v10 = xpc_dictionary_copy_mach_send();

    if (v10)
    {
      sub_19A57276C();
      return swift_unknownObjectRelease();
    }

    sub_19A3577FC();
    swift_allocError();
    *v9 = xmmword_19A57B410;
  }

  else
  {
    sub_19A3577FC();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
  }

  *(v9 + 16) = 4;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_19A357AE0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  sub_19A5727CC();
  *(v6 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0630);
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  sub_19A5727DC();
  *(v6 + 104) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0638);
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  sub_19A57280C();
  *(v6 + 136) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0640);
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();
  v10 = sub_19A57288C();
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0648);
  *(v6 + 192) = swift_task_alloc();
  v11 = sub_19A57283C();
  *(v6 + 200) = v11;
  *(v6 + 208) = *(v11 - 8);
  *(v6 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC90);
  *(v6 + 224) = swift_task_alloc();
  sub_19A5727BC();
  *(v6 + 232) = swift_task_alloc();
  v12 = sub_19A57290C();
  *(v6 + 240) = v12;
  *(v6 + 248) = *(v12 - 8);
  *(v6 + 256) = swift_task_alloc();
  v13 = sub_19A57292C();
  *(v6 + 264) = v13;
  *(v6 + 272) = *(v13 - 8);
  *(v6 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A357F14, 0, 0);
}

uint64_t sub_19A357F14()
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A57236C();
  __swift_project_value_buffer(v1, qword_1ED82BD30);
  v2 = sub_19A57231C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "fetchFaceAttributes.vision", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v9 = *(v0 + 248);
  v10 = *(v0 + 256);
  v22 = *(v0 + 240);
  v23 = *(v0 + 224);
  v11 = *(v0 + 176);

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  *(v0 + 288) = sub_19A5723AC();
  (*(v3 + 8))(v4, v2);

  (*(v9 + 104))(v10, *MEMORY[0x1E69843B8], v22);
  sub_19A57291C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA04C0);
  *(v0 + 320) = *(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_19A576E10;
  sub_19A57278C();
  v12 = *MEMORY[0x1E6984398];
  v13 = sub_19A5728CC();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v23, v12, v13);
  (*(v14 + 56))(v23, 0, 1, v13);
  sub_19A57285C();
  sub_19A5728FC();
  v15 = *(*(sub_19A44F978() + 16) + 16);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);
  *(v0 + 296) = v16;

  os_unfair_lock_unlock((v15 + 24));

  v17 = swift_task_alloc();
  *(v0 + 304) = v17;
  v18 = sub_19A359C48(&qword_1EAFA0650, MEMORY[0x1E69843D0]);
  *v17 = v0;
  v17[1] = sub_19A3585E0;
  v19 = *(v0 + 264);
  v20 = *(v0 + 32);

  return MEMORY[0x1EEDE7308](v0 + 16, v20, 0x100000000, v16, v19, v18);
}

uint64_t sub_19A3585E0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_19A358AFC;
  }

  else
  {

    v2 = sub_19A3586FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3586FC()
{
  v37 = v0;

  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    v10 = *(v0 + 192);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    (*(v9 + 56))(v10, 1, 1, v8);
    goto LABEL_5;
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  (*(v7 + 16))(v5, v1 + ((*(v0 + 320) + 32) & ~*(v0 + 320)), v6);

  sub_19A57284C();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_5:
    v11 = *(v0 + 32);
    sub_19A2F3FA0(*(v0 + 192), &qword_1EAFA0648);
    sub_19A358D98("fetchFaceAttributes.vision", 26, 2);

    v12 = 3;
    goto LABEL_7;
  }

  v35 = *(v0 + 280);
  v32 = *(v0 + 272);
  v34 = *(v0 + 264);
  v13 = *(v0 + 216);
  v30 = *(v0 + 200);
  v31 = *(v0 + 208);
  v14 = *(v0 + 152);
  v15 = *(v0 + 160);
  v16 = *(v0 + 136);
  v17 = *(v0 + 144);
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v25 = *(v0 + 104);
  v26 = *(v0 + 112);
  v20 = *(v0 + 96);
  v28 = *(v0 + 80);
  v29 = *(v0 + 88);
  v27 = *(v0 + 72);
  v33 = *(v0 + 32);
  (*(v31 + 32))(v13, *(v0 + 192));
  sub_19A57281C();
  sub_19A57282C();
  (*(v14 + 8))(v15, v17);
  LOBYTE(v15) = sub_19A3594CC(v16);
  sub_19A5727FC();
  sub_19A57282C();
  (*(v19 + 8))(v18, v26);
  LOBYTE(v16) = sub_19A3598D8(v25);
  sub_19A5727EC();
  sub_19A57282C();
  (*(v29 + 8))(v20, v28);
  sub_19A359080(v27, &v36);
  (*(v31 + 8))(v13, v30);
  (*(v32 + 8))(v35, v34);
  v21 = v36;
  sub_19A358D98("fetchFaceAttributes.vision", 26, 2);

  v12 = v16 | (v15 << 8) | (v21 << 16);
LABEL_7:
  v22 = *(v0 + 24);
  *(v22 + 2) = BYTE2(v12);
  *v22 = v12;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_19A358AFC()
{

  v1 = v0[39];
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BCF0);
  v3 = v1;
  v4 = sub_19A5723DC();
  v5 = sub_19A57355C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_19A2DE000, v4, v5, "Unexpected error requesting FaceAttributes from pixelBuffer: %@", v6, 0xCu);
    sub_19A2F3FA0(v7, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[4];
  (*(v0[34] + 8))(v0[35], v0[33]);
  sub_19A358D98("fetchFaceAttributes.vision", 26, 2);

  v11 = v0[3];
  *(v11 + 2) = 0;
  *v11 = 3;

  v12 = v0[1];

  return v12();
}

uint64_t sub_19A358D98(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A359080@<X0>(_BYTE *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_19A5727CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29[-v9];
  v11 = *(v5 + 16);
  v11(&v29[-v9], a1, v4);
  v12 = (*(v5 + 88))(v10, v4);
  if (v12 == *MEMORY[0x1E69842F0])
  {
    result = (*(v5 + 8))(a1, v4);
    v14 = 2;
  }

  else if (v12 == *MEMORY[0x1E69842E8])
  {
    result = (*(v5 + 8))(a1, v4);
    v14 = 3;
  }

  else if (v12 == *MEMORY[0x1E69842C8])
  {
    result = (*(v5 + 8))(a1, v4);
    v14 = 4;
  }

  else if (v12 == *MEMORY[0x1E69842D8])
  {
    result = (*(v5 + 8))(a1, v4);
    v14 = 5;
  }

  else if (v12 == *MEMORY[0x1E69842D0])
  {
    result = (*(v5 + 8))(a1, v4);
    v14 = 8;
  }

  else if (v12 == *MEMORY[0x1E69842E0])
  {
    result = (*(v5 + 8))(a1, v4);
    v14 = 9;
  }

  else
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v15 = sub_19A5723FC();
    __swift_project_value_buffer(v15, qword_1ED82BCF0);
    v11(v8, a1, v4);
    v16 = sub_19A5723DC();
    v17 = sub_19A57355C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = v18;
      v33 = swift_slowAlloc();
      v34 = v33;
      *v18 = 136315138;
      sub_19A359C48(&qword_1EAFA0658, MEMORY[0x1E69842F8]);
      v31 = v16;
      v19 = sub_19A573EDC();
      v21 = v20;
      v22 = *(v5 + 8);
      v30 = v17;
      v22(v8, v4);
      v23 = sub_19A31F114(v19, v21, &v34);

      v25 = v31;
      v24 = v32;
      *(v32 + 1) = v23;
      v26 = v24;
      _os_log_impl(&dword_19A2DE000, v25, v30, "Unexpected label for skin tone from Vision: %s", v24, 0xCu);
      v27 = v33;
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x19A902C50](v27, -1, -1);
      MEMORY[0x19A902C50](v26, -1, -1);

      v28 = a1;
    }

    else
    {

      v22 = *(v5 + 8);
      v22(a1, v4);
      v28 = v8;
    }

    v22(v28, v4);
    result = (v22)(v10, v4);
    v14 = 10;
  }

  *a2 = v14;
  return result;
}

uint64_t sub_19A3594CC(_BYTE *a1)
{
  v2 = sub_19A57280C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-v7];
  v9 = *(v3 + 16);
  v9(&v25[-v7], a1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == *MEMORY[0x1E6984330])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  else if (v10 == *MEMORY[0x1E6984340])
  {
    (*(v3 + 8))(a1, v2);
    return 1;
  }

  else if (v10 == *MEMORY[0x1E6984328])
  {
    (*(v3 + 8))(a1, v2);
    return 2;
  }

  else if (v10 == *MEMORY[0x1E6984338])
  {
    (*(v3 + 8))(a1, v2);
    return 3;
  }

  else if (v10 == *MEMORY[0x1E6984348])
  {
    (*(v3 + 8))(a1, v2);
    return 4;
  }

  else
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v12 = sub_19A5723FC();
    __swift_project_value_buffer(v12, qword_1ED82BCF0);
    v9(v6, a1, v2);
    v13 = sub_19A5723DC();
    v14 = sub_19A57355C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = v15;
      v28 = swift_slowAlloc();
      v29 = v28;
      *v15 = 136315138;
      sub_19A359C48(&qword_1EAFA0668, MEMORY[0x1E6984350]);
      v26 = v14;
      v16 = sub_19A573EDC();
      v18 = v17;
      v19 = *(v3 + 8);
      v19(v6, v2);
      v20 = sub_19A31F114(v16, v18, &v29);

      v21 = v27;
      *(v27 + 1) = v20;
      v22 = v21;
      _os_log_impl(&dword_19A2DE000, v13, v26, "Unexpected label for age from Vision: %s", v21, 0xCu);
      v23 = v28;
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x19A902C50](v23, -1, -1);
      MEMORY[0x19A902C50](v22, -1, -1);

      v24 = a1;
    }

    else
    {

      v19 = *(v3 + 8);
      v19(a1, v2);
      v24 = v6;
    }

    v19(v24, v2);
    v19(v8, v2);
    return 5;
  }
}

uint64_t sub_19A3598D8(_BYTE *a1)
{
  v2 = sub_19A5727DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-v7];
  v9 = *(v3 + 16);
  v9(&v25[-v7], a1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == *MEMORY[0x1E6984308])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  else if (v10 == *MEMORY[0x1E6984310])
  {
    (*(v3 + 8))(a1, v2);
    return 1;
  }

  else
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v12 = sub_19A5723FC();
    __swift_project_value_buffer(v12, qword_1ED82BCF0);
    v9(v6, a1, v2);
    v13 = sub_19A5723DC();
    v14 = sub_19A57355C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = v15;
      v28 = swift_slowAlloc();
      v29 = v28;
      *v15 = 136315138;
      sub_19A359C48(&qword_1EAFA0660, MEMORY[0x1E6984318]);
      v26 = v14;
      v16 = sub_19A573EDC();
      v18 = v17;
      v19 = *(v3 + 8);
      v19(v6, v2);
      v20 = sub_19A31F114(v16, v18, &v29);

      v21 = v27;
      *(v27 + 1) = v20;
      v22 = v21;
      _os_log_impl(&dword_19A2DE000, v13, v26, "Unexpected label for sex from Vision: %s", v21, 0xCu);
      v23 = v28;
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x19A902C50](v23, -1, -1);
      MEMORY[0x19A902C50](v22, -1, -1);

      v24 = a1;
    }

    else
    {

      v19 = *(v3 + 8);
      v19(a1, v2);
      v24 = v6;
    }

    v19(v24, v2);
    v19(v8, v2);
    return 2;
  }
}

uint64_t sub_19A359C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A359C98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A359CE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19A359D74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_19A359DBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_19A359E1C(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 16);
  v8 = v7 + 1;
  v9 = a2;
  while (--v8)
  {
    v4 = *(v9 + 48);
    v9 += 32;
    if (v4 >= a1)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = *(a2 + 32 * v7 + 16);
LABEL_7:

  if (qword_1EAF9ECC0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EAFCA140;

  v3 = sub_19A35A4A4(v10);

  if (v2)
  {

    return v4;
  }

  v5 = &off_1E7517000;
  [v3 extent];
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_21;
  }

  if (v4 != v11)
  {

    sub_19A35A450();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();

    return v4;
  }

  if (v4 == a1)
  {
    v4 = v3;
    goto LABEL_24;
  }

  v20[0] = a1;
  v20[1] = a1;
  v13 = sub_19A404874(v20);
  v15 = qword_1ED824050;
  v4 = v13;
  if (v15 != -1)
  {
    goto LABEL_29;
  }

LABEL_21:
  v16 = sub_19A5723FC();
  __swift_project_value_buffer(v16, qword_1ED82BCF0);
  v17 = sub_19A5723DC();
  v18 = sub_19A57355C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_19A2DE000, v17, v18, "input emoji image dimensions don't match frame image dimensions, resizing frame to match desired dimensions.", v19, 2u);
    MEMORY[0x19A902C50](v19, -1, -1);
  }

LABEL_24:
  [v4 v5[436]];
  [v3 v5[436]];
  CGRectGetWidth(v21);

  return v4;
}

char *sub_19A35A114(__CVBuffer *a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  Width = CVPixelBufferGetWidth(a1);
  if (Width != CVPixelBufferGetHeight(a1))
  {
    sub_19A35A450();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v8 = CVPixelBufferGetWidth(a1);
  result = sub_19A359E1C(v8, a2);
  if (v2)
  {
LABEL_8:

    return v3;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < 9.22337204e18)
  {
    v11 = result;
    v12 = v10;
    *&v31.a = v10;
    *&v31.b = v10;
    v14 = sub_19A404874(&v31);
    CGAffineTransformMakeTranslation(&v31, (v8 - v12) * 0.5, (v8 - v12) * 0.5);
    v15 = [v14 imageByApplyingTransform_];
    v16 = [v11 imageByPremultiplyingAlpha];
    v17 = [v16 imageByCompositingOverImage_];

    [v17 extent];
    [v17 extent];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_19A39AAB4(&v31, v22, v24);
    a = v31.a;
    b = v31.b;
    v31.a = 1.0;
    v31.b = 0.0;
    v31.c = 0.0;
    v31.d = 1.0;
    v31.tx = 0.0;
    v31.ty = 0.0;
    CGAffineTransformTranslate(&v30, &v31, -v19, -v21);
    v31 = v30;
    CGAffineTransformScale(&v30, &v31, *&a / v23, *&b / v25);
    v31 = v30;
    v28 = [v17 imageByApplyingTransform_];
    v31.a = a;
    v31.b = b;
    v3 = sub_19A3941B4(&v31, 0x42475241u);
    v29 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    [v29 render:v28 toCVPixelBuffer:v3];

    return v3;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_19A35A450()
{
  result = qword_1EAFA0670;
  if (!qword_1EAFA0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0670);
  }

  return result;
}

char *sub_19A35A4A4(void *a1)
{
  v2 = sub_19A570EAC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  v9 = sub_19A572CCC();
  v10 = sub_19A572CCC();
  v11 = [a1 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    sub_19A570E3C();

    (*(v3 + 32))(v8, v6, v2);
    v12 = objc_allocWithZone(MEMORY[0x1E695F658]);
    v13 = sub_19A570DEC();
    v6 = [v12 initWithContentsOfURL_];

    if (!v6)
    {
      sub_19A35A450();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_19A35A450();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_19A35A6F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_19A35A738(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A35A78C()
{
  result = qword_1EAFA0678;
  if (!qword_1EAFA0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0678);
  }

  return result;
}

uint64_t sub_19A35A7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DetectedPersonsPolicy()
{
  result = qword_1EAF9F4C8;
  if (!qword_1EAF9F4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetectedPersonsPolicy.personsBounds.getter()
{
  type metadata accessor for DetectedPersonsPolicy();
}

uint64_t DetectedPersonsPolicy.detectedFaces.getter()
{
  type metadata accessor for DetectedPersonsPolicy();
}

uint64_t DetectedPersonsPolicy.detectedHumanHeads.getter()
{
  type metadata accessor for DetectedPersonsPolicy();
}

uint64_t DetectedPersonsPolicy.description.getter()
{
  sub_19A57395C();
  type metadata accessor for DetectedPersonsPolicy();
  v0 = sub_19A573EDC();

  MEMORY[0x19A900A50](0xD000000000000013, 0x800000019A597060);
  sub_19A573ACC();
  MEMORY[0x19A900A50](3943982, 0xE300000000000000);
  sub_19A573ACC();
  MEMORY[0x19A900A50](0, 0xE000000000000000);

  MEMORY[0x19A900A50](0x6465776F6C6C6120, 0xE800000000000000);
  return v0;
}

uint64_t sub_19A35AAD4(uint64_t a1)
{
  result = sub_19A35AB5C(&qword_1EAFA0680);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A35AB18(uint64_t a1)
{
  result = sub_19A35AB5C(&qword_1EAFA0688);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A35AB5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DetectedPersonsPolicy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A35ABA4()
{
  v1 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_19A572C8C();
  sub_19A572C7C();
  v4 = type metadata accessor for DetectedPersonsPolicy();
  sub_19A572C5C();
  sub_19A572C7C();
  sub_19A4D8E7C(*(v0 + *(v4 + 20)), *(v0 + *(v4 + 20) + 8));
  sub_19A572C6C();

  sub_19A572C7C();
  sub_19A572CAC();
  sub_19A5710EC();
  return sub_19A572D7C();
}

void sub_19A35ADE8()
{
  type metadata accessor for GeneratedImage();
  if (v0 <= 0x3F)
  {
    sub_19A35AF08();
    if (v1 <= 0x3F)
    {
      sub_19A35AF60(319, &qword_1EAF9F0E0, MEMORY[0x1E69842C0]);
      if (v2 <= 0x3F)
      {
        sub_19A35AF60(319, &qword_1EAF9F0D8, MEMORY[0x1E6984360]);
        if (v3 <= 0x3F)
        {
          sub_19A35AF60(319, &qword_1EAF9F0D0, MEMORY[0x1E6984390]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_19A35AF08()
{
  if (!qword_1EAF9F0B0)
  {
    v0 = sub_19A57349C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F0B0);
    }
  }
}

void sub_19A35AF60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19A57312C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s17AssignmentOptionsVMa()
{
  result = qword_1EAF9F6A0;
  if (!qword_1EAF9F6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A35B03C()
{
  sub_19A35B140();
  if (v0 <= 0x3F)
  {
    sub_19A3330B0(319, &qword_1ED825598);
    if (v1 <= 0x3F)
    {
      sub_19A3330B0(319, &qword_1ED825360);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19A35B140()
{
  if (!qword_1ED825580)
  {
    sub_19A57102C();
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED825580);
    }
  }
}

uint64_t sub_19A35B198(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = _s17AssignmentOptionsVMa();
  v5 = a1;
  v6 = a1[*(v4 + 36)];
  v7 = a1[*(v4 + 28)];
  if (v2 == 1)
  {
    v8 = v6 == 0;
    if (v3)
    {
      if (v6)
      {
        v9 = 15;
      }

      else
      {
        v9 = 11;
      }

      v10 = 3;
      if (!v8)
      {
        v10 = 7;
      }

      if (v7)
      {
        goto LABEL_26;
      }

LABEL_25:
      v9 = v10;
      goto LABEL_26;
    }

    if (v6)
    {
      v9 = 13;
    }

    else
    {
      v9 = 9;
    }

    v10 = 5;
    if (v8)
    {
      v10 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v11 = v6 == 0;
    if (v3)
    {
      if (v6)
      {
        v9 = 14;
      }

      else
      {
        v9 = 10;
      }

      v10 = 2;
      if (!v11)
      {
        v10 = 6;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v6)
      {
        v9 = 12;
      }

      else
      {
        v9 = 8;
      }

      v10 = 4;
      if (v11)
      {
        v10 = 0;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  sub_19A35B280(v5);
  return v9;
}

uint64_t sub_19A35B280(uint64_t a1)
{
  v2 = _s17AssignmentOptionsVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A35B2DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v65);
  v64[1] = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15AssembledPromptV12PromptInputsVMa(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v64 - v11;
  v13 = type metadata accessor for AugmentedPrompt();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v74 = v64 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v73 = v64 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v64 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v71 = v64 - v23;
  v72 = type metadata accessor for GenerationRecipe(0);
  v24 = MEMORY[0x1EEE9AC00](v72);
  v69 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v77 = v64 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v81 = v64 - v28;
  v80 = type metadata accessor for GeneratedImage();
  v29 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v82 = v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v66 = v22;
    v67 = v12;
    v68 = v10;
    v83 = MEMORY[0x1E69E7CC0];
    v33 = v31;
    sub_19A3227E0(0, v31, 0);
    v34 = v83;
    v76 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v35 = a1 + v76;
    v79 = *(type metadata accessor for GenerationState() + 28);
    v36 = v35;
    v75 = *(v29 + 72);
    v37 = v72;
    v38 = v82;
    while (1)
    {
      v78 = v36;
      sub_19A368A64(v36, v38, type metadata accessor for GeneratedImage);
      v39 = v81;
      sub_19A368A64(a2 + v79, v81, type metadata accessor for GenerationRecipe);
      if (*(*(v39 + *(v37 + 76)) + 16))
      {
        type metadata accessor for ResolvedTextPrompt(0);

        v41 = sub_19A386EC4(v40);
        v43 = v42;
        v37 = v72;
      }

      else
      {
        v41 = 0;
        v43 = 0xE000000000000000;
      }

      sub_19A368ACC(v81, type metadata accessor for GenerationRecipe);
      v44 = &v82[*(v80 + 32)];

      *v44 = v41;
      v44[1] = v43;
      v45 = v77;
      sub_19A368A64(a2 + v79, v77, type metadata accessor for GenerationRecipe);
      if (*(v45 + *(v37 + 68)) == 1)
      {
        v46 = v3;
        sub_19A36CA0C(v73);
        if (!v3)
        {
          v47 = v69;
          sub_19A368A64(v45, v69, type metadata accessor for GenerationRecipe);
          v48 = v70;
          sub_19A368A64(v73, v70, type metadata accessor for AugmentedPrompt);
          v49 = v67;
          sub_19A36D454(v47, v48, v67);
          v50 = v66;
          sub_19A36D724(v49, 0, v66);
          v3 = 0;
          sub_19A368ACC(v49, _s15AssembledPromptV12PromptInputsVMa);
          sub_19A368ACC(v73, type metadata accessor for AugmentedPrompt);
          sub_19A4463EC(v71);
          v61 = v50;
LABEL_16:
          sub_19A368ACC(v61, type metadata accessor for AugmentedPrompt);
          sub_19A368ACC(v77, type metadata accessor for GenerationRecipe);
          v62 = v71;
          sub_19A570A4C();
          sub_19A368B2C(&qword_1ED825330, MEMORY[0x1E6968678]);
          v54 = sub_19A572F7C();
          v55 = v63;
          sub_19A368ACC(v62, type metadata accessor for AugmentedPrompt);
          goto LABEL_12;
        }
      }

      else
      {
        v46 = v3;
        sub_19A36CA0C(v74);
        if (!v3)
        {
          v51 = v69;
          sub_19A368A64(v45, v69, type metadata accessor for GenerationRecipe);
          v52 = v70;
          sub_19A368A64(v74, v70, type metadata accessor for AugmentedPrompt);
          v53 = v68;
          sub_19A36D454(v51, v52, v68);
          sub_19A36D724(v53, 0, v71);
          v3 = 0;
          sub_19A368ACC(v53, _s15AssembledPromptV12PromptInputsVMa);
          v61 = v74;
          goto LABEL_16;
        }
      }

      v3 = 0;

      sub_19A368ACC(v45, type metadata accessor for GenerationRecipe);
      v54 = 0;
      v55 = 0xE000000000000000;
LABEL_12:
      v38 = v82;
      v56 = &v82[*(v80 + 36)];

      *v56 = v54;
      v56[1] = v55;
      v57 = v34;
      v83 = v34;
      v59 = *(v34 + 16);
      v58 = *(v34 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_19A3227E0(v58 > 1, v59 + 1, 1);
        v57 = v83;
      }

      *(v57 + 16) = v59 + 1;
      v34 = v57;
      v60 = v75;
      sub_19A368A00(v38, v57 + v76 + v59 * v75);
      v36 = v78 + v60;
      if (!--v33)
      {
        return v34;
      }
    }
  }

  return result;
}

uint64_t sub_19A35BAEC(void **a1)
{
  v2 = *(type metadata accessor for GeneratedImage() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_19A34DFF4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_19A367034(v6);
  *a1 = v3;
  return result;
}

uint64_t KeyboardEmojiGenerator.GenerationTask.Error.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_19A35BBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000019A597150 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_19A573F1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_19A35BC74(uint64_t a1)
{
  v2 = sub_19A35C074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A35BCB0(uint64_t a1)
{
  v2 = sub_19A35C074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A35BCEC()
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](0);
  return sub_19A57410C();
}

uint64_t sub_19A35BD30()
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](0);
  return sub_19A57410C();
}

uint64_t sub_19A35BD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19A35BDFC(uint64_t a1)
{
  v2 = sub_19A35C0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A35BE38(uint64_t a1)
{
  v2 = sub_19A35C0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KeyboardEmojiGenerator.GenerationTask.Error.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0690);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0698);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v10 = *v1;
  v13[1] = v1[1];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A35C074();
  sub_19A5741AC();
  sub_19A35C0C8();
  sub_19A573DAC();
  v11 = v14;
  sub_19A573E2C();
  (*(v3 + 8))(v5, v11);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_19A35C074()
{
  result = qword_1EAFA06A0;
  if (!qword_1EAFA06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA06A0);
  }

  return result;
}

unint64_t sub_19A35C0C8()
{
  result = qword_1EAFA06A8;
  if (!qword_1EAFA06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA06A8);
  }

  return result;
}

uint64_t KeyboardEmojiGenerator.GenerationTask.Error.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA06B0);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA06B8);
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A35C074();
  sub_19A57417C();
  if (v2)
  {
    goto LABEL_6;
  }

  v26 = a1;
  v10 = v33;
  v11 = v28;
  v12 = sub_19A573D7C();
  v13 = (2 * *(v12 + 16)) | 1;
  v29 = v12;
  v30 = v12 + 32;
  v31 = 0;
  v32 = v13;
  v14 = v9;
  if ((sub_19A34418C() & 1) != 0 || v31 != v32 >> 1)
  {
    v15 = sub_19A5739FC();
    swift_allocError();
    v16 = v7;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
    *v18 = &type metadata for KeyboardEmojiGenerator.GenerationTask.Error;
    sub_19A573C7C();
    sub_19A5739DC();
    (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    (*(v11 + 8))(v9, v16);
    swift_unknownObjectRelease();
    a1 = v26;
LABEL_6:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  sub_19A35C0C8();
  sub_19A573C5C();
  v20 = sub_19A573CFC();
  v22 = v21;
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v14, v7);
  swift_unknownObjectRelease();
  v23 = v26;
  v24 = v27;
  *v27 = v20;
  v24[1] = v22;
  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

uint64_t sub_19A35C4AC()
{
  v1 = *v0;

  return v1;
}

unint64_t KeyboardEmojiGenerator.GenerationTask.Progress.completionPercentage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16) | (v1 < 1);
  if (*(v0 + 16) & 1 | (v1 < 1))
  {
    v3 = 0;
  }

  else
  {
    v4 = *v0 / v1;
    if (v4 > 1.0)
    {
      v4 = 1.0;
    }

    v3 = LODWORD(v4);
  }

  return v3 | ((v2 & 1) << 32);
}

uint64_t KeyboardEmojiGenerator.GenerationTask.Progress.description.getter()
{
  v1 = *(v0 + 16);
  result = sub_19A573EDC();
  v4 = result;
  if ((v1 & 1) == 0)
  {
    v3 = sub_19A573EDC();
    MEMORY[0x19A900A50](v3);

    MEMORY[0x19A900A50](543584032, 0xE400000000000000);

    return v4;
  }

  return result;
}

uint64_t sub_19A35C640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v5[18] = type metadata accessor for GeneratorError(0);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = type metadata accessor for KeyboardEmojiGenerator.GenerationEvent(0);
  v5[22] = swift_task_alloc();
  v5[23] = type metadata accessor for GenerationState();
  v5[24] = swift_task_alloc();
  v6 = sub_19A57102C();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = type metadata accessor for GenerationRecipe(0);
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A35C824, 0, 0);
}

uint64_t sub_19A35C824()
{
  v101 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 136) + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState;
  v6 = v5 + *(v4 + 28);
  sub_19A368A64(v6, *(v0 + 256), type metadata accessor for GenerationRecipe);
  v7 = *(v4 + 20);
  sub_19A33546C(v5 + v7, v1, &qword_1EAF9FD80);
  v8 = *(v3 + 48);
  v9 = v8(v1, 1, v2);
  if (v9 == 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v17 = *(v0 + 256);
  v18 = *(v0 + 240);
  v19 = *(v0 + 200);
  v20 = *(v0 + 208);
  sub_19A3B4DCC(v17, v18, v0 + 56);
  sub_19A368ACC(v17, type metadata accessor for GenerationRecipe);
  v21 = *(v20 + 8);
  *(v0 + 264) = v21;
  *(v0 + 272) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v18, v19);
  if (*(v0 + 80))
  {
    v96 = v21;
    v22 = *(v0 + 232);
    v23 = *(v0 + 200);
    sub_19A2EA460((v0 + 56), v0 + 16);
    sub_19A33546C(v5 + v7, v22, &qword_1EAF9FD80);
    v9 = v8(v22, 1, v23);
    if (v9 != 1)
    {
      v95 = v5;
      (*(*(v0 + 208) + 32))(*(v0 + 224), *(v0 + 232), *(v0 + 200));
      v100[0] = 0x206B736154;
      v100[1] = 0xE500000000000000;
      sub_19A368B2C(&qword_1ED8252D8, MEMORY[0x1E69695A8]);
      v24 = sub_19A573EDC();
      MEMORY[0x19A900A50](v24);

      MEMORY[0x19A900A50](58, 0xE100000000000000);
      *(v0 + 280) = 0x206B736154;
      *(v0 + 288) = 0xE500000000000000;
      v25 = sub_19A45AE64();
      v27 = v26;
      *(v0 + 296) = v25;
      *(v0 + 304) = v26;
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v97 = sub_19A573EDC();
      v29 = v28;
      *(v0 + 312) = v28;
      if (qword_1EAF9F200 != -1)
      {
        swift_once();
      }

      v30 = sub_19A5723FC();
      *(v0 + 320) = v30;
      v94 = v30;
      *(v0 + 328) = __swift_project_value_buffer(v30, qword_1EAFCA1D0);

      v31 = sub_19A5723DC();
      v32 = sub_19A57356C();

      v98 = v27;
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v100[0] = swift_slowAlloc();
        v34 = v100[0];
        *v33 = 136446722;
        *(v33 + 4) = sub_19A31F114(0x206B736154, 0xE500000000000000, v100);
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_19A31F114(v97, v29, v100);
        *(v33 + 22) = 2082;
        *(v33 + 24) = sub_19A31F114(v25, v27, v100);
        _os_log_impl(&dword_19A2DE000, v31, v32, "%{public}s generating emoji with %s%{public}s", v33, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x19A902C50](v34, -1, -1);
        MEMORY[0x19A902C50](v33, -1, -1);
      }

      v99 = v29;
      v35 = sub_19A57231C();
      *(v0 + 336) = v35;
      v36 = *(v35 - 8);
      *(v0 + 344) = v36;
      *(v0 + 352) = swift_task_alloc();
      if (qword_1ED824BA8 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 216);
      v37 = *(v0 + 224);
      v40 = *(v0 + 200);
      v39 = *(v0 + 208);
      v41 = sub_19A57236C();
      __swift_project_value_buffer(v41, qword_1ED82BD30);
      sub_19A57234C();
      sub_19A5722EC();
      (*(v39 + 16))(v38, v37, v40);

      v42 = sub_19A57234C();
      v93 = sub_19A57361C();

      v43 = sub_19A57376C();
      v44 = *(v0 + 216);
      v45 = *(v0 + 200);
      if (v43)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v100[0] = v47;
        *v46 = 136446722;
        v48 = sub_19A573EDC();
        v50 = v49;
        v96(v44, v45);
        v51 = sub_19A31F114(v48, v50, v100);

        *(v46 + 4) = v51;
        *(v46 + 12) = 2082;
        *(v46 + 14) = sub_19A31F114(v97, v99, v100);
        *(v46 + 22) = 2082;
        *(v46 + 24) = sub_19A31F114(v25, v98, v100);
        v52 = sub_19A5722FC();
        _os_signpost_emit_with_name_impl(&dword_19A2DE000, v42, v93, v52, "generateEmojiTask", "%{public}s %{public}s%{public}s", v46, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x19A902C50](v47, -1, -1);
        MEMORY[0x19A902C50](v46, -1, -1);
      }

      else
      {

        v96(v44, v45);
      }

      v58 = *(v0 + 192);
      v59 = *(v0 + 112);
      swift_task_alloc();
      (*(v36 + 16))();
      sub_19A5723BC();
      swift_allocObject();
      *(v0 + 360) = sub_19A5723AC();

      sub_19A368A64(v95, v58, type metadata accessor for GenerationState);
      if (v59)
      {
        v60 = *(v0 + 112);
        v61 = *(v0 + 120);
        v62 = qword_1ED824050;

        if (v62 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v94, qword_1ED82BCF0);
        v63 = sub_19A5723DC();
        v64 = sub_19A57356C();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v100[0] = v66;
          *v65 = 136446210;
          *(v65 + 4) = sub_19A31F114(0xD00000000000002DLL, 0x800000019A597190, v100);
          _os_log_impl(&dword_19A2DE000, v63, v64, "%{public}s: eventsHandler != nil", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v66);
          MEMORY[0x19A902C50](v66, -1, -1);
          MEMORY[0x19A902C50](v65, -1, -1);
        }

        v67 = *(v0 + 136);
        v68 = *(v0 + 112);
        v69 = swift_allocObject();
        v69[2] = v60;
        v69[3] = v61;
        v69[4] = v67;
        sub_19A2E0A50(v68);

        v70 = sub_19A5723DC();
        v71 = sub_19A57356C();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v100[0] = v73;
          *v72 = 136446210;
          *(v72 + 4) = sub_19A31F114(0xD00000000000002DLL, 0x800000019A597190, v100);
          _os_log_impl(&dword_19A2DE000, v70, v71, "%{public}s: before 'eventsHandler(self, .starting)'", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v73);
          MEMORY[0x19A902C50](v73, -1, -1);
          MEMORY[0x19A902C50](v72, -1, -1);
        }

        v74 = *(v0 + 192);
        v75 = *(v0 + 176);
        v76 = *(v0 + 136);
        v77 = *(v0 + 112);
        swift_storeEnumTagMultiPayload();
        v60(v76, v75);
        sub_19A368ACC(v75, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
        sub_19A368A64(v74, v75, type metadata accessor for GenerationState);
        swift_storeEnumTagMultiPayload();
        v60(v76, v75);
        sub_19A368ACC(v75, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
        *v75 = 0;
        *(v75 + 8) = 0;
        *(v75 + 16) = 1;
        *(v75 + 24) = 0;
        swift_storeEnumTagMultiPayload();
        v60(v76, v75);
        sub_19A2E0A60(v77);
        sub_19A368ACC(v75, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
        v78 = sub_19A368920;
      }

      else
      {
        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v94, qword_1ED82BCF0);
        v79 = sub_19A5723DC();
        v80 = sub_19A57356C();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v100[0] = v82;
          *v81 = 136446210;
          *(v81 + 4) = sub_19A31F114(0xD00000000000002DLL, 0x800000019A597190, v100);
          _os_log_impl(&dword_19A2DE000, v79, v80, "%{public}s: eventsHandler == nil", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v82);
          MEMORY[0x19A902C50](v82, -1, -1);
          MEMORY[0x19A902C50](v81, -1, -1);
        }

        v78 = 0;
        v69 = 0;
      }

      *(v0 + 368) = v78;
      *(v0 + 376) = v69;
      sub_19A432A68();
      v83 = *(v0 + 224);
      v84 = *(v0 + 192);
      v85 = *(v0 + 136);
      v87 = *(v0 + 112);
      v86 = *(v0 + 120);
      v88 = swift_task_alloc();
      *(v0 + 384) = v88;
      v88[2] = v97;
      v88[3] = v99;
      v88[4] = v85;
      v88[5] = v84;
      v88[6] = v83;
      v88[7] = v0 + 16;
      v88[8] = v87;
      v88[9] = v86;
      v88[10] = v78;
      v88[11] = v69;
      v88[12] = 0x206B736154;
      v88[13] = 0xE500000000000000;
      v89 = swift_task_alloc();
      *(v0 + 392) = v89;
      *(v89 + 16) = 0x206B736154;
      *(v89 + 24) = 0xE500000000000000;
      v90 = swift_task_alloc();
      *(v0 + 400) = v90;
      *v90 = v0;
      v90[1] = sub_19A35DD50;
      v9 = *(v0 + 104);
      v16 = &type metadata for KeyboardEmojiGenerator.GeneratedEmoji;
      v10 = &unk_19A57BC80;
      v12 = sub_19A368918;
      v11 = v88;
      v13 = v89;
      v14 = 0;
      v15 = 0;

      return MEMORY[0x1EEE6DE18](v9, v10, v11, v12, v13, v14, v15, v16);
    }

LABEL_34:
    __break(1u);
    return MEMORY[0x1EEE6DE18](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v53 = *(v0 + 248);
  sub_19A2F3FA0(v0 + 56, &qword_1EAFA0710);
  v54 = (v6 + *(v53 + 20));
  v55 = *v54;
  v56 = v54[1];
  sub_19A2F1130();
  swift_allocError();
  *v57 = v55;
  *(v57 + 8) = v56;
  *(v57 + 16) = 0;
  swift_willThrow();

  v91 = *(v0 + 8);

  return v91();
}

uint64_t sub_19A35DD50()
{
  *(*v1 + 408) = v0;

  if (v0)
  {

    v2 = sub_19A35E070;
  }

  else
  {

    v2 = sub_19A35DEE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A35DEE4()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[37];
  v5 = v0[38];
  v12 = v0[33];
  v7 = v0[28];
  v8 = v0[24];
  v9 = v0[25];
  sub_19A2E0A60(v0[46]);
  sub_19A368ACC(v8, type metadata accessor for GenerationState);
  sub_19A364E0C("generateEmojiTask", 17, 2, v2, v6, v5);

  (*(v4 + 8))(v1, v3);

  v12(v7, v9);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));

  v10 = v0[1];

  return v10();
}

uint64_t sub_19A35E070()
{
  v67 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 192);
  sub_19A2E0A60(*(v0 + 368));
  sub_19A368ACC(v2, type metadata accessor for GenerationState);
  *(v0 + 96) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  if (!swift_dynamicCast())
  {
LABEL_7:

    v18 = v1;
    v19 = sub_19A5723DC();
    v20 = sub_19A57355C();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 288);
    if (v21)
    {
      v23 = *(v0 + 280);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v66[0] = v26;
      *v24 = 136446466;
      v27 = sub_19A31F114(v23, v22, v66);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2112;
      v28 = v1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v29;
      *v25 = v29;
      _os_log_impl(&dword_19A2DE000, v19, v20, "%{public}s emoji generation failed - %@", v24, 0x16u);
      sub_19A2F3FA0(v25, &qword_1EAF9FD28);
      MEMORY[0x19A902C50](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x19A902C50](v26, -1, -1);
      MEMORY[0x19A902C50](v24, -1, -1);

      v30 = *(v0 + 112);
      if (!v30)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v30 = *(v0 + 112);
      if (!v30)
      {
LABEL_12:
        v35 = *(v0 + 352);
        v34 = *(v0 + 360);
        v37 = *(v0 + 336);
        v36 = *(v0 + 344);
        v39 = *(v0 + 296);
        v38 = *(v0 + 304);
        v65 = *(v0 + 264);
        v63 = *(v0 + 224);
        v40 = *(v0 + 200);
        swift_willThrow();
        sub_19A364E0C("generateEmojiTask", 17, 2, v34, v39, v38);

        (*(v36 + 8))(v35, v37);

        v41 = v63;
        v42 = v40;
        goto LABEL_18;
      }
    }

    v31 = *(v0 + 176);
    v32 = *(v0 + 136);
    *v31 = v1;
    swift_storeEnumTagMultiPayload();
    v33 = v1;
    v30(v32, v31);
    sub_19A368ACC(v31, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
    goto LABEL_12;
  }

  v4 = *(v0 + 160);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_19A368ACC(v4, type metadata accessor for GeneratorError);
    goto LABEL_7;
  }

  v5 = *v4;

  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 288);
  if (v8)
  {
    v10 = *(v0 + 280);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v66[0] = v12;
    *v11 = 136446466;
    v13 = sub_19A31F114(v10, v9, v66);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = MEMORY[0x19A900C10](v5, &type metadata for GeneratorError.VersionTriple);
    v16 = sub_19A31F114(v14, v15, v66);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_19A2DE000, v6, v7, "%{public}s emoji generation failed due to asset version mismatch - %s, resetting resources", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v12, -1, -1);
    MEMORY[0x19A902C50](v11, -1, -1);

    v17 = *(v0 + 128);
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v17 = *(v0 + 128);
  if (v17)
  {
LABEL_14:
    v43 = *(v17 + 96);
    os_unfair_lock_lock((v43 + 24));
    type metadata accessor for AppleDiffusionResourceFactory(0);
    v44 = static AppleDiffusionResourceFactory.shared(reset:)(1);

    *(v43 + 16) = v44;
    os_unfair_lock_unlock((v43 + 24));
  }

LABEL_15:
  v45 = *(v0 + 112);
  **(v0 + 152) = v5;
  swift_storeEnumTagMultiPayload();
  if (v45)
  {
    v46 = *(v0 + 176);
    v47 = *(v0 + 152);
    v48 = *(v0 + 136);
    v49 = *(v0 + 112);
    sub_19A368B2C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    v50 = swift_allocError();
    sub_19A368A64(v47, v51, type metadata accessor for GeneratorError);
    *v46 = v50;
    swift_storeEnumTagMultiPayload();
    v49(v48, v46);
    sub_19A368ACC(v46, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
  }

  v52 = *(v0 + 352);
  v53 = *(v0 + 360);
  v54 = *(v0 + 344);
  v56 = *(v0 + 296);
  v55 = *(v0 + 304);
  v65 = *(v0 + 264);
  v64 = *(v0 + 224);
  v61 = *(v0 + 336);
  v62 = *(v0 + 200);
  v57 = *(v0 + 152);
  sub_19A368B2C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
  swift_allocError();
  sub_19A368A64(v57, v58, type metadata accessor for GeneratorError);
  swift_willThrow();
  sub_19A368ACC(v57, type metadata accessor for GeneratorError);

  sub_19A364E0C("generateEmojiTask", 17, 2, v53, v56, v55);

  (*(v54 + 8))(v52, v61);

  v42 = v62;
  v41 = v64;
LABEL_18:
  v65(v41, v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t KeyboardEmojiGenerator.GenerationTask.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = v1 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState;
  v7 = type metadata accessor for GenerationState();
  sub_19A33546C(v6 + *(v7 + 20), v5, &qword_1EAF9FD80);
  v8 = sub_19A57102C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A35EA34(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, char *), uint64_t a5, uint64_t a6)
{
  v28 = a1;
  v27 = type metadata accessor for KeyboardEmojiGenerator.GenerationEvent(0);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v13 = sub_19A5723FC();
  __swift_project_value_buffer(v13, qword_1ED82BCF0);

  v14 = sub_19A5723DC();
  v15 = sub_19A57356C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    HIDWORD(v24) = v15;
    v17 = v16;
    v25 = swift_slowAlloc();
    v26 = a6;
    v31 = v25;
    *v17 = 136446466;
    *(v17 + 4) = sub_19A31F114(0xD00000000000002DLL, 0x800000019A597190, &v31);
    *(v17 + 12) = 2080;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    v29 = sub_19A33478C;
    v30 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0718);
    v19 = sub_19A572DAC();
    v21 = sub_19A31F114(v19, v20, &v31);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_19A2DE000, v14, BYTE4(v24), "%{public}s: progressHandler is called. eventsHandler=%s", v17, 0x16u);
    v22 = v25;
    swift_arrayDestroy();
    a6 = v26;
    MEMORY[0x19A902C50](v22, -1, -1);
    MEMORY[0x19A902C50](v17, -1, -1);
  }

  *v12 = v28;
  *(v12 + 1) = a2;
  v12[16] = a3 & 1;
  *(v12 + 3) = 0;
  swift_storeEnumTagMultiPayload();
  a4(a6, v12);
  return sub_19A368ACC(v12, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
}

uint64_t sub_19A35ED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 704) = v16;
  *(v8 + 672) = v14;
  *(v8 + 688) = v15;
  *(v8 + 664) = a8;
  *(v8 + 656) = a7;
  *(v8 + 648) = a6;
  *(v8 + 640) = a5;
  *(v8 + 632) = a4;
  *(v8 + 624) = a3;
  *(v8 + 616) = a2;
  *(v8 + 608) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0518);
  *(v8 + 712) = swift_task_alloc();
  v9 = sub_19A571FCC();
  *(v8 + 720) = v9;
  *(v8 + 728) = *(v9 - 8);
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  v10 = type metadata accessor for GeneratedImage();
  *(v8 + 752) = v10;
  *(v8 + 760) = *(v10 - 8);
  *(v8 + 768) = swift_task_alloc();
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters();
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = type metadata accessor for KeyboardEmojiGenerator.GenerationEvent(0);
  *(v8 + 832) = swift_task_alloc();
  v11 = sub_19A57102C();
  *(v8 + 840) = v11;
  *(v8 + 848) = *(v11 - 8);
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 880) = type metadata accessor for GenerationState();
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = type metadata accessor for GenerationRecipe(0);
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = swift_task_alloc();
  *(v8 + 944) = swift_task_alloc();
  *(v8 + 952) = swift_task_alloc();
  *(v8 + 960) = swift_task_alloc();
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A35F060, 0, 0);
}

uint64_t sub_19A35F060()
{
  v29 = v0;
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  *(v0 + 984) = v1;
  *(v0 + 992) = __swift_project_value_buffer(v1, qword_1EAFCA1E8);

  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 624);
    v5 = *(v0 + 616);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_19A31F114(v5, v4, &v28);
    _os_log_impl(&dword_19A2DE000, v2, v3, "unprepared generation recipe policy check for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  v8 = *(v0 + 976);
  v27 = *(v0 + 904);
  v9 = *(v0 + 640);
  v10 = *(v0 + 632);
  v11 = *(v10 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__mediaAnalysisService);
  v12 = *(v10 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__visionSession);
  v13 = *(*(v0 + 880) + 28);
  *(v0 + 516) = v13;
  sub_19A368A64(v9 + v13, v8, type metadata accessor for GenerationRecipe);
  v14 = v11;

  v15 = sub_19A39B8E4();
  v17 = v16;
  sub_19A368ACC(v8, type metadata accessor for GenerationRecipe);
  v18 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__client;
  *(v0 + 1000) = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__client;
  v19 = v10 + v18;
  v21 = *(v10 + v18);
  v20 = *(v10 + v18 + 8);
  v22 = type metadata accessor for KeyboardEmojiGenerator.GenerationTask();
  v23 = *(v19 + 16);
  *(v0 + 352) = v22;
  *(v0 + 360) = &off_1F0DABAF8;
  *(v0 + 328) = v10;
  *(v0 + 272) = v14;
  *(v0 + 280) = v12;
  *(v0 + 288) = v15;
  *(v0 + 296) = v17;
  *(v0 + 304) = v21;
  *(v0 + 312) = v20;
  *(v0 + 320) = v23;
  sub_19A368A64(v9, v27, type metadata accessor for GenerationState);

  v24 = swift_task_alloc();
  *(v0 + 1008) = v24;
  *v24 = v0;
  v24[1] = sub_19A35F350;
  v25 = *(v0 + 904);

  return sub_19A2F2B18(v25, v0 + 272);
}

uint64_t sub_19A35F350()
{
  v2 = *v1;
  *(*v1 + 1016) = v0;

  sub_19A368ACC(*(v2 + 904), type metadata accessor for GenerationState);
  if (v0)
  {
    v3 = sub_19A35FAB0;
  }

  else
  {
    v3 = sub_19A35F498;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A35F498()
{
  v42 = v0;
  v1 = *(v0 + 1016);
  sub_19A432A68();
  if (v1)
  {
    sub_19A368930(v0 + 272);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = sub_19A57231C();
    *(v0 + 1024) = v4;
    v5 = *(v4 - 8);
    v6 = v5;
    *(v0 + 1032) = v5;
    *(v0 + 1040) = *(v5 + 64);
    *(v0 + 1048) = swift_task_alloc();
    if (qword_1ED824BA8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 872);
    v8 = *(v0 + 848);
    v9 = *(v0 + 840);
    v10 = *(v0 + 648);
    v11 = sub_19A57236C();
    *(v0 + 1056) = __swift_project_value_buffer(v11, qword_1ED82BD30);
    sub_19A57234C();
    sub_19A5722EC();
    v12 = *(v8 + 16);
    *(v0 + 1064) = v12;
    *(v0 + 1072) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v7, v10, v9);
    v13 = sub_19A57234C();
    v14 = sub_19A57361C();
    v15 = sub_19A57376C();
    v16 = *(v0 + 872);
    v17 = *(v0 + 848);
    v18 = *(v0 + 840);
    if (v15)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v38 = 136446210;
      sub_19A368B2C(&qword_1ED8252D8, MEMORY[0x1E69695A8]);
      v19 = sub_19A573EDC();
      v21 = v20;
      v37 = v14;
      v22 = *(v17 + 8);
      v22(v16, v18);
      v23 = sub_19A31F114(v19, v21, &v41);

      *(v38 + 4) = v23;
      v24 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v13, v37, v24, "prepareRecipe", "%{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x19A902C50](v39, -1, -1);
      MEMORY[0x19A902C50](v38, -1, -1);
    }

    else
    {

      v22 = *(v17 + 8);
      v22(v16, v18);
    }

    *(v0 + 1080) = v22;
    v25 = *(v0 + 516);
    v26 = *(v0 + 960);
    v27 = *(v0 + 656);
    v28 = *(v0 + 640);
    v29 = *(v0 + 632);
    swift_task_alloc();
    v30 = *(v6 + 16);
    *(v0 + 1088) = v30;
    *(v0 + 1096) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30();
    *(v0 + 1104) = sub_19A5723BC();
    swift_allocObject();
    *(v0 + 1112) = sub_19A5723AC();

    v31 = v27[3];
    v32 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v31);
    sub_19A368A64(v28 + v25, v26, type metadata accessor for GenerationRecipe);
    v33 = OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__recipePreparer;
    v40 = (*(v32 + 32) + **(v32 + 32));
    v34 = swift_task_alloc();
    *(v0 + 1120) = v34;
    *v34 = v0;
    v34[1] = sub_19A35FC78;
    v35 = *(v0 + 968);
    v36 = *(v0 + 960);

    return v40(v35, v36, v29 + v33, v31, v32);
  }
}

uint64_t sub_19A35FAB0()
{
  sub_19A368930(v0 + 272);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A35FC78()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  sub_19A368ACC(*(v2 + 960), type metadata accessor for GenerationRecipe);
  if (v0)
  {
    v3 = sub_19A364778;
  }

  else
  {
    v3 = sub_19A35FDC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A35FDC0()
{
  v23 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  sub_19A368984(*(v0 + 968), *(v0 + 640) + *(v0 + 516));
  sub_19A365EBC("prepareRecipe", 13, 2);

  v5 = *(v3 + 8);
  *(v0 + 1136) = v5;
  *(v0 + 1144) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  sub_19A432A68();
  if (v1)
  {
    sub_19A368930(v0 + 272);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 664);
    if (v8)
    {
      v9 = *(v0 + 832);
      v10 = *(v0 + 632);
      sub_19A368A64(*(v0 + 640), v9, type metadata accessor for GenerationState);
      swift_storeEnumTagMultiPayload();

      v8(v10, v9);
      sub_19A2E0A60(v8);
      sub_19A368ACC(v9, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
    }

    v11 = sub_19A5723DC();
    v12 = sub_19A57356C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 624);
      v14 = *(v0 + 616);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_19A31F114(v14, v13, &v22);
      _os_log_impl(&dword_19A2DE000, v11, v12, "prepared recipe policy check for %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x19A902C50](v16, -1, -1);
      MEMORY[0x19A902C50](v15, -1, -1);
    }

    v17 = *(v0 + 896);
    v18 = *(v0 + 640);
    sub_19A368A64(v18 + *(v0 + 516), *(v0 + 952), type metadata accessor for GenerationRecipe);
    sub_19A368A64(v18, v17, type metadata accessor for GenerationState);
    v19 = swift_task_alloc();
    *(v0 + 1152) = v19;
    *v19 = v0;
    v19[1] = sub_19A360248;
    v20 = *(v0 + 952);
    v21 = *(v0 + 896);

    return (sub_19A2F2F2C)(v20, v0 + 272, v21);
  }
}

uint64_t sub_19A360248()
{
  v2 = *v1;
  *(*v1 + 1160) = v0;

  v3 = *(v2 + 952);
  sub_19A368ACC(*(v2 + 896), type metadata accessor for GenerationState);
  sub_19A368ACC(v3, type metadata accessor for GenerationRecipe);
  if (v0)
  {
    v4 = sub_19A361248;
  }

  else
  {
    v4 = sub_19A3603C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A3603C0()
{
  v108 = v0;
  v1 = v0;
  v2 = v0[145];
  sub_19A432A68();
  if (v2)
  {
    sub_19A368930((v0 + 34));

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = *(v0[79] + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__imageChecker);
    v0[146] = v5;
    v6 = *(v5 + 16);
    os_unfair_lock_lock((v6 + 80));
    v7 = *(v6 + 64);
    v8 = *(v6 + 72);
    if (v7)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v8;
      v10 = sub_19A3558EC;
    }

    else
    {
      v10 = 0;
    }

    sub_19A2E0A50(v7);
    os_unfair_lock_unlock((v6 + 80));
    if (v7)
    {
      v11 = *(v1 + 129);
      v12 = v1[114];
      v13 = v1[80];
      v107[0] = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_19A576E10;
      *(v14 + 32) = 0xD000000000000010;
      *(v14 + 40) = 0x800000019A5954D0;
      *(v14 + 72) = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 48));
      sub_19A368A64(v13 + v11, boxed_opaque_existential_1, type metadata accessor for GenerationRecipe);
      sub_19A2E0A50(v10);
      v16 = sub_19A330370(v14);
      swift_setDeallocating();
      sub_19A2F3FA0(v14 + 32, &qword_1EAFA2F00);
      swift_deallocClassInstance();
      sub_19A338028(v107, v16, &v104);
      (v10)(&v104);
      sub_19A2E0A60(v10);
      sub_19A2E0A60(v10);
    }

    v17 = v1[79] + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__generationOptions;
    v18 = *(v17 + 40);
    if (v18)
    {
      v19 = *(v17 + 48);
      v20 = *(v17 + 56);

      v21 = sub_19A5723DC();
      v22 = sub_19A57356C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v1[78];
        v24 = v1[77];
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v104 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_19A31F114(v24, v23, &v104);
        _os_log_impl(&dword_19A2DE000, v21, v22, "engineered prompt language check for %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x19A902C50](v26, -1, -1);
        MEMORY[0x19A902C50](v25, -1, -1);
      }

      v27 = *(v1 + 129);
      v28 = v1[118];
      v29 = v1[80];
      v104 = v18;
      v105 = v19;
      LODWORD(v106) = v20;
      sub_19A368A64(v29 + v27, v28, type metadata accessor for GenerationRecipe);
      sub_19A42FC48(v28);
      sub_19A368ACC(v1[118], type metadata accessor for GenerationRecipe);
    }

    sub_19A432A68();
    v30 = v1[82];
    v31 = sub_19A45AE64();
    v33 = v32;
    v1[147] = v31;
    v1[148] = v32;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v34 = sub_19A573EDC();
    v36 = v35;

    v37 = sub_19A5723DC();
    v38 = sub_19A57356C();

    v100 = v31;
    v102 = v34;
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v104 = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_19A31F114(v34, v36, &v104);
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_19A31F114(v31, v33, &v104);
      _os_log_impl(&dword_19A2DE000, v37, v38, "generating images with %s%{public}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v40, -1, -1);
      MEMORY[0x19A902C50](v39, -1, -1);
    }

    v41 = v1[133];
    v42 = v1[108];
    v43 = v1[105];
    v44 = v1[81];
    v1[149] = swift_task_alloc();
    sub_19A57234C();
    sub_19A5722EC();
    v41(v42, v44, v43);

    v45 = sub_19A57234C();
    v46 = sub_19A57361C();

    v47 = sub_19A57376C();
    v48 = v1[135];
    v49 = v1[108];
    v50 = v1[105];
    if (v47)
    {
      v99 = v1;
      v51 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v104 = v98;
      *v51 = 136446722;
      sub_19A368B2C(&qword_1ED8252D8, MEMORY[0x1E69695A8]);
      v96 = v46;
      v52 = v33;
      v53 = sub_19A573EDC();
      v55 = v54;
      v48(v49, v50);
      v56 = sub_19A31F114(v53, v55, &v104);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2082;
      v57 = sub_19A31F114(v102, v36, &v104);

      *(v51 + 14) = v57;
      *(v51 + 22) = 2082;
      *(v51 + 24) = sub_19A31F114(v100, v52, &v104);
      v58 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v45, v96, v58, "generateImages", "%{public}s%{public}s%{public}s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v98, -1, -1);
      v59 = v51;
      v1 = v99;
      MEMORY[0x19A902C50](v59, -1, -1);
    }

    else
    {

      v48(v49, v50);
    }

    v60 = v1[136];
    v61 = *(v1 + 129);
    v62 = v1[117];
    v63 = v1[80];
    v64 = v1;
    v65 = (v1[79] + v1[125]);
    swift_task_alloc();
    v60();
    swift_allocObject();
    v64[150] = sub_19A5723AC();

    sub_19A368A64(v63 + v61, v62, type metadata accessor for GenerationRecipe);
    v66 = *v65;
    v67 = v65[1];
    v68 = v65[2];

    sub_19A40FB04(v62, &v104);
    v69 = v104;
    v103 = v106;
    log = v105;
    v70 = AppleDiffusionAdapter.modelCatalogResourceBundleIdentifier.getter(v104);
    v71 = v64[117];
    v72 = v70;
    v74 = v73;
    v75 = AppleDiffusionAdapter.modelCatalogInferenceAssetIdentifier.getter(v69);
    v104 = v66;
    v105 = v67;
    v106 = v68;
    v77 = sub_19A40FD54(v72, v74, log, v103, v75, v76, &v104);
    sub_19A368ACC(v71, type metadata accessor for GenerationRecipe);

    v78 = v64;
    v64[151] = v77;
    v79 = *(v64 + 129);
    v80 = v64[116];
    v81 = v64[102];
    v82 = v64[86];
    v83 = v64[85];
    v84 = v78[82];
    v85 = v78[80];
    v86 = v78[79];
    v87 = (v86 + v78[125]);
    sub_19A33546C(v86 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__generativeModelsLocale, v81 + *(v78[101] + 24), &qword_1EAF9FDC8);
    *v81 = v77;
    v81[1] = v83;
    v81[2] = v82;
    v88 = v84[3];
    v89 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v88);
    sub_19A368A64(v85 + v79, v80, type metadata accessor for GenerationRecipe);
    v90 = v87[1];
    v91 = v87[2];
    v78[59] = *v87;
    v78[60] = v90;
    v78[61] = v91;
    v92 = *(v89 + 40);
    sub_19A2E0A50(v83);

    v101 = (v92 + *v92);
    v93 = swift_task_alloc();
    v78[152] = v93;
    *v93 = v78;
    v93[1] = sub_19A361410;
    v94 = v78[102];
    v95 = v78[116];

    return (v101)(v95, v78 + 59, v94, v88, v89);
  }
}

uint64_t sub_19A361248()
{
  sub_19A368930(v0 + 272);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A361410(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1224) = v1;

  if (v1)
  {
    v5 = *(v4 + 928);

    sub_19A368ACC(v5, type metadata accessor for GenerationRecipe);
    v6 = sub_19A364990;
  }

  else
  {
    v7 = *(v4 + 928);
    *(v4 + 1232) = a1;

    sub_19A368ACC(v7, type metadata accessor for GenerationRecipe);
    v6 = sub_19A361584;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_19A361584()
{
  v112 = v0;
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1176);
  v104 = *(v0 + 1024);
  v105 = *(v0 + 1136);
  v5 = *(v0 + 816);
  v103 = *(v0 + 1224);
  v108 = sub_19A35B2DC(*(v0 + 1232), *(v0 + 640));
  *(v0 + 1240) = v108;

  sub_19A368ACC(v5, type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters);
  sub_19A364E0C("generateImages", 14, 2, v1, v4, v3);

  v105(v2, v104);

  *(v0 + 1248) = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v6 = sub_19A57234C();
  v7 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v7, v9, "postProcessGeneratedImages", "KeyboardEmojiGenerator.GenerationTask", v8, 2u);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  v10 = *(v0 + 1088);
  v106 = *(v0 + 516);
  v11 = *(v0 + 976);
  v12 = *(v0 + 640);

  swift_task_alloc();
  v10();
  swift_allocObject();
  *(v0 + 1256) = sub_19A5723AC();

  sub_19A368A64(v12 + v106, v11, type metadata accessor for GenerationRecipe);
  *(v0 + 514) = sub_19A39BD48() & 1;
  sub_19A368ACC(v11, type metadata accessor for GenerationRecipe);
  sub_19A368A64(v12 + v106, v11, type metadata accessor for GenerationRecipe);
  sub_19A39C154(&v110);
  sub_19A368ACC(v11, type metadata accessor for GenerationRecipe);
  v13 = v110;

  result = sub_19A410B24(v13, &unk_1F0DA8210);
  *(v0 + 515) = result & 1;
  v15 = *(v108 + 16);
  *(v0 + 1264) = v15;
  if (v15)
  {
    v16 = *(v0 + 912);
    v17 = *(v0 + 800);
    v18 = *(v0 + 760);
    v19 = *(v0 + 752);
    *(v0 + 1280) = 0;
    *(v0 + 1272) = MEMORY[0x1E69E7CC0];
    v20 = *(v0 + 1240);
    if (!*(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = *(v0 + 1168);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 856);
    v24 = *(v0 + 840);
    v25 = *(v0 + 640) + *(v0 + 516);
    v26 = *(v18 + 80);
    *(v0 + 564) = v26;
    *(v0 + 1288) = *(v18 + 72);
    sub_19A368A64(v20 + ((v26 + 32) & ~v26), v17, type metadata accessor for GeneratedImage);
    v22(v23, v25 + *(v16 + 72), v24);
    LOBYTE(v110) = *(v17 + *(v19 + 24));
    v27 = sub_19A35563C(&v110);
    *(v0 + 580) = v27;
    v28 = *(v21 + 16);
    os_unfair_lock_lock((v28 + 80));
    v29 = *(v28 + 64);
    v30 = *(v28 + 72);
    if (v29)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      *(v31 + 24) = v30;
      v32 = sub_19A3558EC;
    }

    else
    {
      v32 = 0;
    }

    sub_19A2E0A50(v29);
    os_unfair_lock_unlock((v28 + 80));
    if (!v29 || (v36 = *(v0 + 800), sub_19A2E0A60(v32), v37 = *(v36 + 8), *(v0 + 568) = *v36, *(v0 + 576) = v37, v38 = sub_19A4CEB54(), v39 >> 60 == 15))
    {
      v40 = 0;
      v41 = 0;
LABEL_13:
      *(v0 + 1296) = v41;
      *(v0 + 561) = v40;
      v42 = *(v0 + 515);
      v43 = *(v0 + 514);
      v44 = *(v0 + 800);
      v45 = *v44;
      *(v0 + 1304) = *v44;
      v46 = *(v44 + 8);
      v47 = v45;
      *(v0 + 552) = v45;
      *(v0 + 560) = v46;
      v48 = swift_task_alloc();
      *(v0 + 1312) = v48;
      *v48 = v0;
      v48[1] = sub_19A3622A8;
      if (v42)
      {
        v49 = v43 | 2;
      }

      else
      {
        v49 = v43;
      }

      v50 = *(v0 + 856);

      return sub_19A353D4C(v0 + 552, v27, v49, v50);
    }

    v51 = *(v0 + 800);
    v52 = *(v0 + 752);
    v53 = v38;
    v54 = v39;
    v109 = sub_19A570F1C();
    v107 = v55;
    sub_19A33EFB0(v53, v54);
    *(v0 + 513) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E20;
    *(inited + 32) = 0x69746172656E6567;
    *(inited + 40) = 0xEA00000000006E6FLL;
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_19A576E20;
    *(v57 + 32) = 25705;
    *(v57 + 40) = 0xE200000000000000;
    v58 = v51 + *(v52 + 20);
    v59 = type metadata accessor for ImageProvenance();
    v60 = sub_19A570FDC();
    v61 = MEMORY[0x1E69E6158];
    *(v57 + 48) = v60;
    *(v57 + 56) = v62;
    *(v57 + 72) = v61;
    strcpy((v57 + 80), "representation");
    *(v57 + 95) = -18;
    v63 = *(v58 + *(v59 + 24));
    *(v57 + 120) = MEMORY[0x1E69E6530];
    *(v57 + 96) = v63;
    v64 = sub_19A330370(v57);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00);
    swift_arrayDestroy();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0210);
    *(inited + 48) = v64;
    *(inited + 72) = v65;
    strcpy((inited + 80), "pngImageData");
    *(inited + 120) = v61;
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = v109;
    *(inited + 104) = v107;
    v66 = sub_19A330370(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_19A338028((v0 + 513), v66, v0 + 536);
    if (!v103)
    {
      v40 = *(v0 + 536);
      v41 = *(v0 + 544);
      goto LABEL_13;
    }

    v67 = *(v0 + 1080);
    v68 = *(v0 + 856);
    v69 = *(v0 + 840);

    v67(v68, v69);

    v33 = *(v0 + 1248);
    v34 = *(v0 + 1136);
    v35 = *(v0 + 1024);
    sub_19A368ACC(*(v0 + 800), type metadata accessor for GeneratedImage);
    goto LABEL_21;
  }

  sub_19A432A68();
  if (v103)
  {
    v33 = *(v0 + 1248);
    v34 = *(v0 + 1136);
    v35 = *(v0 + 1024);

LABEL_21:
    sub_19A365EBC("postProcessGeneratedImages", 26, 2);

    v34(v33, v35);
LABEL_22:
    sub_19A368930(v0 + 272);

    v70 = *(v0 + 8);

    return v70();
  }

  v71 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v71 != 1)
  {

    v87 = *(v0 + 1248);
    v88 = *(v0 + 1136);
    v89 = *(v0 + 1024);
    if (v71)
    {
      v110 = 0;
      v111 = 0xE000000000000000;
      sub_19A57395C();
      *(v0 + 600) = v71;
      v90 = sub_19A573EDC();
      v92 = v91;

      v110 = v90;
      v111 = v92;
      MEMORY[0x19A900A50](0xD000000000000022, 0x800000019A597200);
      v93 = v110;
      v94 = v111;
      sub_19A366B6C();
      swift_allocError();
      *v95 = v93;
      v95[1] = v94;
    }

    else
    {
      sub_19A366B6C();
      swift_allocError();
      *v102 = 0xD000000000000015;
      v102[1] = 0x800000019A597230;
    }

    swift_willThrow();
    sub_19A365EBC("postProcessGeneratedImages", 26, 2);

    v88(v87, v89);
    goto LABEL_22;
  }

  v72 = *(v0 + 776);
  v73 = *(v0 + 768);
  v74 = *(*(v0 + 760) + 80);
  sub_19A368A64(MEMORY[0x1E69E7CC0] + ((v74 + 32) & ~v74), v72, type metadata accessor for GeneratedImage);

  sub_19A368A64(v72, v73, type metadata accessor for GeneratedImage);

  v75 = sub_19A5723DC();
  v76 = sub_19A57356C();

  v77 = os_log_type_enabled(v75, v76);
  v78 = *(v0 + 768);
  if (v77)
  {
    v79 = *(v0 + 624);
    v80 = *(v0 + 616);
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v110 = v82;
    *v81 = 136315394;
    v83 = GeneratedImage.description.getter();
    v85 = v84;
    sub_19A368ACC(v78, type metadata accessor for GeneratedImage);
    v86 = sub_19A31F114(v83, v85, &v110);

    *(v81 + 4) = v86;
    *(v81 + 12) = 2080;
    *(v81 + 14) = sub_19A31F114(v80, v79, &v110);
    _os_log_impl(&dword_19A2DE000, v75, v76, "%s policy check of %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v82, -1, -1);
    MEMORY[0x19A902C50](v81, -1, -1);
  }

  else
  {

    sub_19A368ACC(v78, type metadata accessor for GeneratedImage);
  }

  v96 = *(v0 + 888);
  v97 = *(v0 + 640);
  sub_19A368A64(v97 + *(v0 + 516), *(v0 + 920), type metadata accessor for GenerationRecipe);
  sub_19A368A64(v97, v96, type metadata accessor for GenerationState);
  v98 = swift_task_alloc();
  *(v0 + 1336) = v98;
  *v98 = v0;
  v98[1] = sub_19A363950;
  v99 = *(v0 + 920);
  v100 = *(v0 + 888);
  v101 = *(v0 + 776);

  return (sub_19A2F3274)(v101, v99, v0 + 272, v100);
}

uint64_t sub_19A3622A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1320) = a1;
  *(v3 + 1328) = v1;

  if (v1)
  {
    v4 = sub_19A3636DC;
  }

  else
  {
    v4 = sub_19A3623C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A3623C0()
{
  v166 = v0;
  v1 = *(v0 + 1320);
  if (!v1)
  {

    v161 = *(v0 + 1328);
    v7 = 3;
    goto LABEL_34;
  }

  v2 = *(*(v0 + 1168) + 16);
  os_unfair_lock_lock((v2 + 80));
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A3555A0;
  }

  else
  {
    v6 = 0;
  }

  sub_19A2E0A50(v3);
  os_unfair_lock_unlock((v2 + 80));
  if (v3)
  {
    if (*(v0 + 1296))
    {
      sub_19A2E0A50(v6);

      v8 = [v1 signals];
      if (v8)
      {
        v9 = v8;
        v163 = 0;
        sub_19A355554();
        sub_19A572AEC();

        sub_19A2E0A60(v6);
        sub_19A2E0A60(v6);

        goto LABEL_12;
      }

      sub_19A2E0A60(v6);
    }

    sub_19A2E0A60(v6);
  }

LABEL_12:
  v10 = *(v0 + 1328);
  v11 = *(v0 + 580);
  os_unfair_lock_lock((v2 + 80));
  v12 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 80));
  sub_19A354CA4(v12, v11, &v163);
  v13 = v163;
  os_unfair_lock_lock((v2 + 80));
  v14 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 80));
  if ((v14 & 1) != 0 && ([v1 safe] & 1) == 0)
  {
    if (qword_1ED824050 == -1)
    {
LABEL_19:
      __swift_project_value_buffer(*(v0 + 984), qword_1ED82BCF0);
      v31 = sub_19A5723DC();
      v32 = sub_19A57353C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v163 = v34;
        *v33 = 136315138;
        if (v13 <= 3)
        {
          v144 = 0x800000019A595530;
          v145 = 0xD000000000000014;
          if (v13 != 2)
          {
            v145 = 0xD000000000000012;
            v144 = 0x800000019A595550;
          }

          v146 = 0x800000019A5954F0;
          v147 = 0xD000000000000011;
          if (v13)
          {
            v146 = 0x800000019A595510;
          }

          else
          {
            v147 = 0xD000000000000017;
          }

          if (v13 <= 1)
          {
            v39 = v147;
          }

          else
          {
            v39 = v145;
          }

          if (v13 <= 1)
          {
            v40 = v146;
          }

          else
          {
            v40 = v144;
          }
        }

        else
        {
          v35 = 0xEE006567616D4974;
          v36 = 0x75706E4965636166;
          if (v13 != 7)
          {
            v36 = 0x6669636570736E75;
            v35 = 0xEB00000000646569;
          }

          if (v13 == 6)
          {
            v36 = 0xD000000000000020;
            v35 = 0x800000019A5955B0;
          }

          v37 = 0x800000019A595570;
          v38 = 0xD00000000000001DLL;
          if (v13 != 4)
          {
            v38 = 0xD000000000000012;
            v37 = 0x800000019A595590;
          }

          if (v13 <= 5)
          {
            v39 = v38;
          }

          else
          {
            v39 = v36;
          }

          if (v13 <= 5)
          {
            v40 = v37;
          }

          else
          {
            v40 = v35;
          }
        }

        v148 = sub_19A31F114(v39, v40, &v163);

        *(v33 + 4) = v148;
        _os_log_impl(&dword_19A2DE000, v31, v32, "An image was rejected by the image checker. Rejection category: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x19A902C50](v34, -1, -1);
        MEMORY[0x19A902C50](v33, -1, -1);
      }

      v149 = *(v0 + 1304);
      v150 = v1;
      sub_19A43A488(v150, &v163);
      v151 = v163;
      v152 = v164;
      v153 = v165 | 0x10000000;
      sub_19A355134();
      swift_allocError();
      *v154 = v13;
      v154[1] = v151;
      v154[2] = v152;
      v154[3] = v153;
      swift_willThrow();

      (*(v0 + 1080))(*(v0 + 856), *(v0 + 840));
      goto LABEL_79;
    }

LABEL_87:
    swift_once();
    goto LABEL_19;
  }

  v161 = v10;
  v15 = *(v0 + 728);
  v16 = *(v0 + 720);
  v17 = *(v0 + 712);
  sub_19A57368C();
  if ((*(v15 + 48))(v17, 1, v16) == 1)
  {
    v18 = *(v0 + 1304);
    v19 = *(v0 + 712);

    sub_19A2F3FA0(v19, &qword_1EAFA0518);

    v7 = 3;
  }

  else
  {
    v20 = *(v0 + 744);
    v21 = *(v0 + 736);
    v22 = *(v0 + 728);
    v23 = *(v0 + 720);
    (*(v22 + 32))(v20, *(v0 + 712), v23);
    (*(v22 + 16))(v21, v20, v23);
    v24 = sub_19A571FAC();
    v25 = *(v0 + 1304);
    v26 = *(v0 + 744);
    v27 = *(v0 + 736);
    v28 = *(v0 + 728);
    v29 = *(v0 + 720);
    if (v24)
    {

      v30 = *(v28 + 8);
      v30(v27, v29);
      v30(v26, v29);

      v7 = 2;
    }

    else
    {
      v41 = sub_19A571FBC();

      v42 = *(v28 + 8);
      v42(v27, v29);
      v42(v26, v29);

      v7 = v41 & 1;
    }
  }

LABEL_34:
  v43 = *(v0 + 800);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 752);
  (*(v0 + 1080))(*(v0 + 856), *(v0 + 840));
  sub_19A368A64(v43, v44, type metadata accessor for GeneratedImage);
  *(v44 + *(v46 + 40)) = v7;
  sub_19A368A64(v44, v45, type metadata accessor for GeneratedImage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v0 + 1272);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_19A31DA3C(0, v48[2] + 1, 1, v48);
  }

  v50 = v48[2];
  v49 = v48[3];
  if (v50 >= v49 >> 1)
  {
    v162 = sub_19A31DA3C(v49 > 1, v50 + 1, 1, v48);
  }

  else
  {
    v162 = v48;
  }

  v51 = *(v0 + 1288);
  v13 = *(v0 + 1264);
  v52 = *(v0 + 800);
  v53 = *(v0 + 784);
  v54 = *(v0 + 1280) + 1;
  v1 = ((*(v0 + 564) + 32) & ~*(v0 + 564));
  sub_19A368ACC(*(v0 + 792), type metadata accessor for GeneratedImage);
  sub_19A368ACC(v52, type metadata accessor for GeneratedImage);
  *(v162 + 16) = v50 + 1;
  sub_19A368A00(v53, v1 + v162 + v51 * v50);
  if (v54 != v13)
  {
    v58 = *(v0 + 1280) + 1;
    *(v0 + 1280) = v58;
    *(v0 + 1272) = v162;
    v59 = *(v0 + 1240);
    if (v58 < *(v59 + 16))
    {
      v60 = *(v0 + 1168);
      v61 = *(v0 + 1064);
      v62 = *(v0 + 912);
      v63 = *(v0 + 856);
      v64 = *(v0 + 840);
      v65 = *(v0 + 800);
      v66 = *(v0 + 760);
      v67 = *(v0 + 752);
      v68 = *(v0 + 640) + *(v0 + 516);
      v69 = *(v66 + 80);
      *(v0 + 564) = v69;
      v70 = *(v66 + 72);
      *(v0 + 1288) = v70;
      sub_19A368A64(v59 + ((v69 + 32) & ~v69) + v70 * v58, v65, type metadata accessor for GeneratedImage);
      v61(v63, v68 + *(v62 + 72), v64);
      LOBYTE(v163) = *(v65 + *(v67 + 24));
      v71 = sub_19A35563C(&v163);
      *(v0 + 580) = v71;
      v72 = *(v60 + 16);
      os_unfair_lock_lock((v72 + 80));
      v73 = *(v72 + 64);
      v74 = *(v72 + 72);
      if (v73)
      {
        v75 = swift_allocObject();
        *(v75 + 16) = v73;
        *(v75 + 24) = v74;
        v76 = sub_19A3558EC;
      }

      else
      {
        v76 = 0;
      }

      sub_19A2E0A50(v73);
      os_unfair_lock_unlock((v72 + 80));
      if (!v73 || (v93 = *(v0 + 800), sub_19A2E0A60(v76), v94 = *(v93 + 8), *(v0 + 568) = *v93, *(v0 + 576) = v94, v95 = sub_19A4CEB54(), v96 >> 60 == 15))
      {
        v97 = 0;
        v98 = 0;
LABEL_51:
        *(v0 + 1296) = v98;
        *(v0 + 561) = v97;
        v99 = *(v0 + 515);
        v100 = *(v0 + 514);
        v101 = *(v0 + 800);
        v102 = *v101;
        *(v0 + 1304) = *v101;
        v103 = *(v101 + 8);
        v104 = v102;
        *(v0 + 552) = v102;
        *(v0 + 560) = v103;
        v105 = swift_task_alloc();
        *(v0 + 1312) = v105;
        *v105 = v0;
        v105[1] = sub_19A3622A8;
        if (v99)
        {
          v106 = v100 | 2;
        }

        else
        {
          v106 = v100;
        }

        v107 = *(v0 + 856);

        return sub_19A353D4C(v0 + 552, v71, v106, v107);
      }

      v109 = *(v0 + 800);
      v110 = *(v0 + 752);
      v111 = v95;
      v112 = v96;
      v113 = sub_19A570F1C();
      v160 = v114;
      sub_19A33EFB0(v111, v112);
      *(v0 + 513) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19A576E20;
      *(inited + 32) = 0x69746172656E6567;
      *(inited + 40) = 0xEA00000000006E6FLL;
      v116 = swift_initStackObject();
      *(v116 + 16) = xmmword_19A576E20;
      *(v116 + 32) = 25705;
      *(v116 + 40) = 0xE200000000000000;
      v117 = v109 + *(v110 + 20);
      v118 = type metadata accessor for ImageProvenance();
      v119 = sub_19A570FDC();
      v120 = MEMORY[0x1E69E6158];
      *(v116 + 48) = v119;
      *(v116 + 56) = v121;
      *(v116 + 72) = v120;
      strcpy((v116 + 80), "representation");
      *(v116 + 95) = -18;
      v122 = *(v117 + *(v118 + 24));
      *(v116 + 120) = MEMORY[0x1E69E6530];
      *(v116 + 96) = v122;
      v123 = sub_19A330370(v116);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00);
      swift_arrayDestroy();
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0210);
      *(inited + 48) = v123;
      *(inited + 72) = v124;
      strcpy((inited + 80), "pngImageData");
      *(inited + 120) = MEMORY[0x1E69E6158];
      *(inited + 93) = 0;
      *(inited + 94) = -5120;
      *(inited + 96) = v113;
      *(inited + 104) = v160;
      v125 = sub_19A330370(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_19A338028((v0 + 513), v125, v0 + 536);
      if (!v161)
      {
        v97 = *(v0 + 536);
        v98 = *(v0 + 544);
        goto LABEL_51;
      }

      v126 = *(v0 + 1080);
      v127 = *(v0 + 856);
      v128 = *(v0 + 840);

      v126(v127, v128);
LABEL_79:

      v155 = *(v0 + 1248);
      v156 = *(v0 + 1136);
      v157 = *(v0 + 1024);
      sub_19A368ACC(*(v0 + 800), type metadata accessor for GeneratedImage);
      sub_19A365EBC("postProcessGeneratedImages", 26, 2);

      v156(v155, v157);
      goto LABEL_82;
    }

    __break(1u);
    goto LABEL_87;
  }

  sub_19A432A68();
  if (v161)
  {
    v55 = *(v0 + 1248);
    v56 = *(v0 + 1136);
    v57 = *(v0 + 1024);

    sub_19A365EBC("postProcessGeneratedImages", 26, 2);

    v56(v55, v57);
LABEL_82:
    sub_19A368930(v0 + 272);

    v159 = *(v0 + 8);

    return v159();
  }

  v77 = *(v162 + 16);
  if (v77 != 1)
  {

    v129 = *(v0 + 1248);
    v130 = *(v0 + 1136);
    v131 = *(v0 + 1024);
    if (v77)
    {
      v163 = 0;
      v164 = 0xE000000000000000;
      sub_19A57395C();
      *(v0 + 600) = v77;
      v132 = sub_19A573EDC();
      v134 = v133;

      v163 = v132;
      v164 = v134;
      MEMORY[0x19A900A50](0xD000000000000022, 0x800000019A597200);
      v135 = v163;
      v136 = v164;
      sub_19A366B6C();
      swift_allocError();
      *v137 = v135;
      v137[1] = v136;
    }

    else
    {
      sub_19A366B6C();
      swift_allocError();
      *v158 = 0xD000000000000015;
      v158[1] = 0x800000019A597230;
    }

    swift_willThrow();
    sub_19A365EBC("postProcessGeneratedImages", 26, 2);

    v130(v129, v131);
    goto LABEL_82;
  }

  v78 = *(v0 + 776);
  v79 = *(v0 + 768);
  v80 = *(*(v0 + 760) + 80);
  sub_19A368A64(v162 + ((v80 + 32) & ~v80), v78, type metadata accessor for GeneratedImage);

  sub_19A368A64(v78, v79, type metadata accessor for GeneratedImage);

  v81 = sub_19A5723DC();
  v82 = sub_19A57356C();

  v83 = os_log_type_enabled(v81, v82);
  v84 = *(v0 + 768);
  if (v83)
  {
    v85 = *(v0 + 624);
    v86 = *(v0 + 616);
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v163 = v88;
    *v87 = 136315394;
    v89 = GeneratedImage.description.getter();
    v91 = v90;
    sub_19A368ACC(v84, type metadata accessor for GeneratedImage);
    v92 = sub_19A31F114(v89, v91, &v163);

    *(v87 + 4) = v92;
    *(v87 + 12) = 2080;
    *(v87 + 14) = sub_19A31F114(v86, v85, &v163);
    _os_log_impl(&dword_19A2DE000, v81, v82, "%s policy check of %s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v88, -1, -1);
    MEMORY[0x19A902C50](v87, -1, -1);
  }

  else
  {

    sub_19A368ACC(v84, type metadata accessor for GeneratedImage);
  }

  v138 = *(v0 + 888);
  v139 = *(v0 + 640);
  sub_19A368A64(v139 + *(v0 + 516), *(v0 + 920), type metadata accessor for GenerationRecipe);
  sub_19A368A64(v139, v138, type metadata accessor for GenerationState);
  v140 = swift_task_alloc();
  *(v0 + 1336) = v140;
  *v140 = v0;
  v140[1] = sub_19A363950;
  v141 = *(v0 + 920);
  v142 = *(v0 + 888);
  v143 = *(v0 + 776);

  return (sub_19A2F3274)(v143, v141, v0 + 272, v142);
}

uint64_t sub_19A3636DC()
{
  v1 = *(v0 + 1304);

  (*(v0 + 1080))(*(v0 + 856), *(v0 + 840));

  v2 = *(v0 + 1248);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1024);
  sub_19A368ACC(*(v0 + 800), type metadata accessor for GeneratedImage);
  sub_19A365EBC("postProcessGeneratedImages", 26, 2);

  v3(v2, v4);
  sub_19A368930(v0 + 272);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_19A363950()
{
  v2 = *v1;
  *(*v1 + 1344) = v0;

  v3 = *(v2 + 920);
  sub_19A368ACC(*(v2 + 888), type metadata accessor for GenerationState);
  sub_19A368ACC(v3, type metadata accessor for GenerationRecipe);
  if (v0)
  {
    v4 = sub_19A363D80;
  }

  else
  {
    v4 = sub_19A363AC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A363AC8()
{
  v1 = v0[168];
  sub_19A432A68();
  if (v1)
  {
    v2 = v0[156];
    v3 = v0[142];
    v4 = v0[128];
    sub_19A368ACC(v0[97], type metadata accessor for GeneratedImage);
    sub_19A365EBC("postProcessGeneratedImages", 26, 2);

    v3(v2, v4);
    sub_19A368930((v0 + 34));

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[169] = v7;
    *v7 = v0;
    v7[1] = sub_19A363FAC;
    v8 = v0[97];

    return sub_19A365280(v8);
  }
}

uint64_t sub_19A363D80()
{
  v1 = v0[156];
  v2 = v0[142];
  v3 = v0[128];
  sub_19A368ACC(v0[97], type metadata accessor for GeneratedImage);
  sub_19A365EBC("postProcessGeneratedImages", 26, 2);

  v2(v1, v3);
  sub_19A368930((v0 + 34));

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A363FAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1360) = a1;
  *(v3 + 1368) = v1;

  if (v1)
  {
    v4 = sub_19A364BE0;
  }

  else
  {
    v4 = sub_19A3640C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A3640C4()
{
  v29 = v0;
  if (*(*(v0 + 1360) + 16))
  {
    v1 = *(v0 + 1368);
    v28[0] = *(v0 + 1360);

    sub_19A35BAEC(v28);
    if (v1)
    {
    }

    v9 = v28[0];
    if (qword_1EAF9F200 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 656);
    __swift_project_value_buffer(*(v0 + 984), qword_1EAFCA1D0);
    sub_19A2F3EF0(v10, v0 + 368);

    v11 = sub_19A5723DC();
    v12 = sub_19A57356C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 704);
      v14 = *(v0 + 696);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28[0] = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_19A31F114(v14, v13, v28);
      *(v15 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
      v17 = sub_19A573EDC();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 368);
      v20 = sub_19A31F114(v17, v19, v28);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_19A2DE000, v11, v12, "%{public}s generated emoji with %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v16, -1, -1);
      MEMORY[0x19A902C50](v15, -1, -1);

      v21 = *(v0 + 664);
      if (!v21)
      {
        goto LABEL_14;
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 368);
      v21 = *(v0 + 664);
      if (!v21)
      {
LABEL_14:
        v24 = *(v0 + 1248);
        v25 = *(v0 + 1136);
        v26 = *(v0 + 1024);
        v27 = *(v0 + 608);
        sub_19A368ACC(*(v0 + 776), type metadata accessor for GeneratedImage);
        *v27 = v9;
        sub_19A365EBC("postProcessGeneratedImages", 26, 2);

        v25(v24, v26);
        sub_19A368930(v0 + 272);

        v8 = *(v0 + 8);
        goto LABEL_15;
      }
    }

    v22 = *(v0 + 832);
    v23 = *(v0 + 632);
    *v22 = v9;
    swift_storeEnumTagMultiPayload();

    v21(v23, v22);
    sub_19A368ACC(v22, type metadata accessor for KeyboardEmojiGenerator.GenerationEvent);
    goto LABEL_14;
  }

  v3 = *(v0 + 1248);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 776);

  sub_19A366B6C();
  swift_allocError();
  *v7 = 0xD000000000000027;
  v7[1] = 0x800000019A597250;
  swift_willThrow();
  sub_19A368ACC(v6, type metadata accessor for GeneratedImage);
  sub_19A365EBC("postProcessGeneratedImages", 26, 2);

  v4(v3, v5);
  sub_19A368930(v0 + 272);

  v8 = *(v0 + 8);
LABEL_15:

  return v8();
}

uint64_t sub_19A364778()
{
  v1 = v0[131];
  v2 = v0[129];
  v3 = v0[128];
  sub_19A365EBC("prepareRecipe", 13, 2);

  (*(v2 + 8))(v1, v3);
  sub_19A368930((v0 + 34));

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A364990()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[148];
  v4 = v0[147];
  v5 = v0[142];
  v6 = v0[128];
  v7 = v0[102];

  sub_19A368ACC(v7, type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters);
  sub_19A364E0C("generateImages", 14, 2, v1, v4, v3);

  v5(v2, v6);
  sub_19A368930((v0 + 34));

  v8 = v0[1];

  return v8();
}

uint64_t sub_19A364BE0()
{
  v1 = v0[156];
  v2 = v0[142];
  v3 = v0[128];
  sub_19A368ACC(v0[97], type metadata accessor for GeneratedImage);
  sub_19A365EBC("postProcessGeneratedImages", 26, 2);

  v2(v1, v3);
  sub_19A368930((v0 + 34));

  v4 = v0[1];

  return v4();
}

void sub_19A364E0C(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v36 = a1;
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v9 = sub_19A57236C();
  __swift_project_value_buffer(v9, qword_1ED82BD30);
  v10 = sub_19A57234C();
  v11 = sub_19A57231C();
  v12 = v32;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57239C();
  v35 = sub_19A57360C();
  if ((sub_19A57376C() & 1) == 0)
  {
LABEL_16:

    (*(v13 + 8))(v15, v11);
    v24 = sub_19A45AE64();
    v12 = v25;
    if (v24 == a5 && v25 == a6 || (v10 = v24, (sub_19A573F1C() & 1) != 0))
    {

      return;
    }

    if (qword_1EAF9F208 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v32[0] = v11;
  v32[1] = v32;
  v33 = a5;
  v34 = a6;
  if ((a3 & 1) == 0)
  {
    v12 = v36;
    if (v36)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!(v36 >> 32))
  {
    if ((v36 & 0xFFFFF800) != 0xD800)
    {
      if (v36 >> 16 <= 0x10)
      {
        v12 = &v37;
LABEL_11:
        v16 = sub_19A57237C();
        v17 = *(v16 - 8);
        MEMORY[0x1EEE9AC00](v16);
        v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

        sub_19A5723CC();

        v20 = (*(v17 + 88))(v19, v16);
        if (MEMORY[0x1E69E93E0] && v20 == *MEMORY[0x1E69E93E0])
        {
          v21 = "[Error] Interval already ended";
        }

        else
        {
          (*(v17 + 8))(v19, v16);
          v21 = "";
        }

        a5 = v33;
        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = sub_19A5722FC();
        _os_signpost_emit_with_name_impl(&dword_19A2DE000, v10, v35, v23, v12, v21, v22, 2u);
        MEMORY[0x19A902C50](v22, -1, -1);
        a6 = v34;
        v11 = v32[0];
        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_21:
  v26 = sub_19A5723FC();
  __swift_project_value_buffer(v26, qword_1EAFCA1E8);

  v27 = sub_19A5723DC();
  v28 = sub_19A57356C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446210;
    v31 = sub_19A31F114(v10, v12, &v38);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_19A2DE000, v27, v28, "Thermal state changed after generation%{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x19A902C50](v30, -1, -1);
    MEMORY[0x19A902C50](v29, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_19A365280(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  v2[5] = swift_task_alloc();
  v3 = sub_19A57102C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A365378, 0, 0);
}

uint64_t sub_19A365378()
{
  v53 = v0;
  v1 = *(v0[4] + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__strikeSizes);
  if (v1)
  {
    sub_19A330944(MEMORY[0x1E69E7CC0]);

    v2 = sub_19A57231C();
    v0[9] = v2;
    v3 = *(v2 - 8);
    v0[10] = v3;
    v0[11] = swift_task_alloc();
    if (qword_1ED824BA8 != -1)
    {
      swift_once();
    }

    v4 = sub_19A57236C();
    __swift_project_value_buffer(v4, qword_1ED82BD30);
    sub_19A57234C();
    sub_19A5722EC();

    v5 = sub_19A57234C();
    v6 = sub_19A57361C();

    if (sub_19A57376C())
    {
      v50 = v6;
      v51 = v1;
      v7 = v0[6];
      v8 = v0[7];
      v10 = v0[4];
      v9 = v0[5];
      v11 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52[0] = v49;
      *v11 = 136446210;
      v12 = v10 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState;
      v13 = type metadata accessor for GenerationState();
      sub_19A33546C(v12 + *(v13 + 20), v9, &qword_1EAF9FD80);
      result = (*(v8 + 48))(v9, 1, v7);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v15 = v0[7];
      v16 = v0[8];
      v17 = v0[6];
      (*(v15 + 32))(v16, v0[5], v17);
      sub_19A368B2C(&qword_1ED8252D8, MEMORY[0x1E69695A8]);
      v18 = sub_19A573EDC();
      v20 = v19;
      (*(v15 + 8))(v16, v17);
      v21 = sub_19A31F114(v18, v20, v52);

      *(v11 + 4) = v21;
      v22 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v50, v22, "ProduceStrikeSizeTask", "%{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x19A902C50](v49, -1, -1);
      MEMORY[0x19A902C50](v11, -1, -1);

      v1 = v51;
    }

    else
    {
    }

    swift_task_alloc();
    (*(v3 + 16))();
    sub_19A5723BC();
    swift_allocObject();
    v0[12] = sub_19A5723AC();

    v28 = *(v1 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v52[0] = MEMORY[0x1E69E7CC0];
      sub_19A3227C0(0, v28, 0);
      v29 = v52[0];
      v30 = (v1 + 32);
      v31 = *(v52[0] + 16);
      do
      {
        v33 = *v30++;
        v32 = v33;
        v52[0] = v29;
        v34 = *(v29 + 3);
        if (v31 >= v34 >> 1)
        {
          sub_19A3227C0((v34 > 1), v31 + 1, 1);
          v29 = v52[0];
        }

        *(v29 + 2) = v31 + 1;
        *&v29[16 * v31++ + 32] = vdupq_n_s64(v32);
        --v28;
      }

      while (v28);
    }

    v35 = v0[3];
    v36 = *v35;
    v37 = *(v35 + 8);
    if (v37)
    {
      if (v37 == 1)
      {
        [v36 extent];
        sub_19A39AAB4(v52, v38, v39);
        Width = v52[0];
        v41 = v52[1];
        goto LABEL_22;
      }

      v42 = v36;
      Width = CVPixelBufferGetWidth(v42);
      Height = CVPixelBufferGetHeight(v42);
    }

    else
    {
      v42 = v36;
      Width = CGImageGetWidth(v42);
      Height = CGImageGetHeight(v42);
    }

    v41 = Height;

LABEL_22:
    v44 = *(v29 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[2] = v29;
    if (!isUniquelyReferenced_nonNull_native || v44 >= *(v29 + 3) >> 1)
    {
      v29 = sub_19A31D080(isUniquelyReferenced_nonNull_native, v44 + 1, 1, v29);
      v0[2] = v29;
    }

    v0[13] = v29;
    v46 = v0[4];
    sub_19A415608(0, 0, 1, Width, v41);
    LOBYTE(v52[0]) = *(v46 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__generationOptions + 24);
    v47 = sub_19A418CBC(v52, *(v46 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__mediaAnalysisService));
    v0[14] = v47;
    v48 = swift_task_alloc();
    v0[15] = v48;
    *v48 = v0;
    v48[1] = sub_19A3659F4;

    return sub_19A3E7D9C(v29, v47);
  }

  v23 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF00);
  v24 = *(type metadata accessor for GeneratedImage() - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_19A576E10;
  sub_19A368A64(v23, v26 + v25, type metadata accessor for GeneratedImage);

  v27 = v0[1];

  return v27(v26);
}

uint64_t sub_19A3659F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_19A365C80;
  }

  else
  {

    v4 = sub_19A365B18;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A365B18()
{
  v13 = v0;
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[10];
  sub_19A365EBC("ProduceStrikeSizeTask", 21, 2);

  (*(v4 + 8))(v2, v3);

  v5 = *(v1 + 16);
  v6 = v0[16];
  if (v5)
  {
    v7 = sub_19A31EFF0(*(v1 + 16), 0);
    v8 = *(type metadata accessor for GeneratedImage() - 8);
    v9 = sub_19A32EB2C(&v12, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v5, v6);
    sub_19A2EA480();
    if (v9 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_5:

  v10 = v0[1];

  return v10(v7);
}

uint64_t sub_19A365C80()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  sub_19A365EBC("ProduceStrikeSizeTask", 21, 2);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_19A365D64(uint64_t a1, unint64_t a2)
{
  if (qword_1EAF9F200 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1EAFCA1D0);

  oslog = sub_19A5723DC();
  v5 = sub_19A57356C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_19A31F114(a1, a2, &v9);
    _os_log_impl(&dword_19A2DE000, oslog, v5, "Task running %{public}s was cancelled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }
}

uint64_t sub_19A365EBC(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t KeyboardEmojiGenerator.GenerationTask.isCancelled.getter()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);

  v2 = sub_19A5723DC();
  v3 = sub_19A57354C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = KeyboardEmojiGenerator.GenerationTask.description.getter();
    v8 = sub_19A31F114(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_19A2DE000, v2, v3, "%s checking cancellation", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller + 24);
  v10 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller), v9);
  return (*(v10 + 8))(v9, v10) & 1;
}

Swift::Void __swiftcall KeyboardEmojiGenerator.GenerationTask.cancel()()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);

  v2 = sub_19A5723DC();
  v3 = sub_19A57354C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = KeyboardEmojiGenerator.GenerationTask.description.getter();
    v8 = sub_19A31F114(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_19A2DE000, v2, v3, "cancelling %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x19A902C50](v5, -1, -1);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller + 24);
  v10 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller), v9);
  (*(v10 + 16))(v9, v10);
}

uint64_t KeyboardEmojiGenerator.GenerationTask.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_19A57102C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = sub_19A5741FC();
  v13[1] = v8;
  MEMORY[0x19A900A50](32, 0xE100000000000000);
  v9 = v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState;
  v10 = type metadata accessor for GenerationState();
  sub_19A33546C(v9 + *(v10 + 20), v3, &qword_1EAF9FD80);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_19A368B2C(&qword_1ED8252D8, MEMORY[0x1E69695A8]);
    v12 = sub_19A573EDC();
    MEMORY[0x19A900A50](v12);

    (*(v5 + 8))(v7, v4);
    return v13[0];
  }

  return result;
}

uint64_t KeyboardEmojiGenerator.GenerationTask.deinit()
{
  sub_19A368ACC(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState, type metadata accessor for GenerationState);

  sub_19A2F3FA0(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__recipePreparer, &qword_1EAF9FDE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller);

  sub_19A2F3FA0(v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__generativeModelsLocale, &qword_1EAF9FDC8);

  return v0;
}

uint64_t KeyboardEmojiGenerator.GenerationTask.__deallocating_deinit()
{
  KeyboardEmojiGenerator.GenerationTask.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_19A36686C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *v1 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__initialGenerationState;
  v7 = type metadata accessor for GenerationState();
  sub_19A33546C(v6 + *(v7 + 20), v5, &qword_1EAF9FD80);
  v8 = sub_19A57102C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A366A10()
{
  if (*(*v0 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__generationOptions + 60) != 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0708);
  result = swift_allocObject();
  *(result + 16) = xmmword_19A576E10;
  *(result + 56) = &type metadata for GeneratedImageFaceDetectionPolicyEvaluator;
  *(result + 64) = &off_1F0DAD048;
  return result;
}

unint64_t sub_19A366A8C(void *a1)
{
  a1[1] = sub_19A366AC4();
  a1[2] = sub_19A366B18();
  result = sub_19A366B6C();
  a1[3] = result;
  return result;
}

unint64_t sub_19A366AC4()
{
  result = qword_1EAFA06C0;
  if (!qword_1EAFA06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA06C0);
  }

  return result;
}

unint64_t sub_19A366B18()
{
  result = qword_1EAFA06C8;
  if (!qword_1EAFA06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA06C8);
  }

  return result;
}

unint64_t sub_19A366B6C()
{
  result = qword_1EAFA06D0;
  if (!qword_1EAFA06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA06D0);
  }

  return result;
}

uint64_t type metadata accessor for KeyboardEmojiGenerator.GenerationTask()
{
  result = qword_1EAF9EAA0;
  if (!qword_1EAF9EAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A366C60()
{
  type metadata accessor for GenerationState();
  if (v0 <= 0x3F)
  {
    sub_19A366D8C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_19A366D8C()
{
  if (!qword_1EAF9F8C8)
  {
    sub_19A57112C();
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F8C8);
    }
  }
}

unint64_t sub_19A366E28()
{
  result = qword_1EAFA06D8;
  if (!qword_1EAFA06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA06D8);
  }

  return result;
}

unint64_t sub_19A366E80()
{
  result = qword_1EAFA06E0;
  if (!qword_1EAFA06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA06E0);
  }

  return result;
}

unint64_t sub_19A366ED8()
{
  result = qword_1EAFA06E8;
  if (!qword_1EAFA06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA06E8);
  }

  return result;
}

unint64_t sub_19A366F30()
{
  result = qword_1EAFA06F0;
  if (!qword_1EAFA06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA06F0);
  }

  return result;
}

unint64_t sub_19A366F88()
{
  result = qword_1EAFA06F8;
  if (!qword_1EAFA06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA06F8);
  }

  return result;
}

unint64_t sub_19A366FE0()
{
  result = qword_1EAFA0700;
  if (!qword_1EAFA0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0700);
  }

  return result;
}

uint64_t sub_19A367034(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19A573EBC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for GeneratedImage();
        v6 = sub_19A5730DC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for GeneratedImage() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_19A3673A4(v8, v9, a1, v4);
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
    return sub_19A367160(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_19A367160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for GeneratedImage();
  v9 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_19A368A64(v23, v17, type metadata accessor for GeneratedImage);
      sub_19A368A64(v20, v13, type metadata accessor for GeneratedImage);
      v24 = sub_19A3F42C0(v17, v13);
      sub_19A368ACC(v13, type metadata accessor for GeneratedImage);
      result = sub_19A368ACC(v17, type metadata accessor for GeneratedImage);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v33)
        {
          __break(1u);
          return result;
        }

        v25 = v34;
        sub_19A368A00(v23, v34);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_19A368A00(v25, v20);
        v20 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_19A3673A4(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v145 = a1;
  v161 = type metadata accessor for GeneratedImage();
  v153 = *(v161 - 8);
  v9 = MEMORY[0x1EEE9AC00](v161);
  v150 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v160 = &v140 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v158 = &v140 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v162 = &v140 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v157 = &v140 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v156 = &v140 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  result = MEMORY[0x1EEE9AC00](v21);
  v155 = a3;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_176:
    v5 = *v145;
    if (!*v145)
    {
      goto LABEL_236;
    }

    a3 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_230;
    }

    result = a3;
LABEL_179:
    v163 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v155)
      {
        v136 = *(result + 16 * a3);
        v137 = result;
        v138 = *(result + 16 * (a3 - 1) + 40);
        sub_19A3681B0(*v155 + *(v153 + 72) * v136, *v155 + *(v153 + 72) * *(result + 16 * (a3 - 1) + 32), *v155 + *(v153 + 72) * v138, v5);
        if (v6)
        {
        }

        if (v138 < v136)
        {
          goto LABEL_222;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_19A34DDAC(v137);
        }

        if (a3 - 2 >= *(v137 + 2))
        {
          goto LABEL_223;
        }

        v139 = &v137[16 * a3];
        *v139 = v136;
        *(v139 + 1) = v138;
        v163 = v137;
        sub_19A34DD20(a3 - 1);
        result = v163;
        a3 = *(v163 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_234;
    }
  }

  v141 = &v140 - v23;
  v142 = v24;
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v144 = a4;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    v151 = v27;
    if (v26 + 1 >= v25)
    {
      v25 = v26 + 1;
      goto LABEL_66;
    }

    v30 = *v155;
    v31 = *(v153 + 72);
    v5 = *v155 + v31 * v29;
    v32 = v141;
    sub_19A368A64(v5, v141, type metadata accessor for GeneratedImage);
    v33 = v30 + v31 * v28;
    v34 = v28;
    v35 = v142;
    sub_19A368A64(v33, v142, type metadata accessor for GeneratedImage);
    LODWORD(v152) = sub_19A3F42C0(v32, v35);
    if (v6)
    {
      sub_19A368ACC(v35, type metadata accessor for GeneratedImage);
      sub_19A368ACC(v32, type metadata accessor for GeneratedImage);
    }

    a3 = type metadata accessor for GeneratedImage;
    sub_19A368ACC(v35, type metadata accessor for GeneratedImage);
    result = sub_19A368ACC(v32, type metadata accessor for GeneratedImage);
    v143 = v34;
    v36 = v34 + 2;
    v37 = v30 + v31 * (v34 + 2);
    v154 = v25;
    v38 = v31;
    v159 = v31;
    while (v25 != v36)
    {
      a3 = type metadata accessor for GeneratedImage;
      v49 = v156;
      sub_19A368A64(v37, v156, type metadata accessor for GeneratedImage);
      sub_19A368A64(v5, v157, type metadata accessor for GeneratedImage);
      v50 = *v49;
      if (!*(v49 + 8))
      {
        a3 = v50;
        Width = CGImageGetWidth(a3);
        Height = CGImageGetHeight(a3);
LABEL_39:
        v54 = Height;

        goto LABEL_40;
      }

      if (*(v49 + 8) != 1)
      {
        a3 = v50;
        Width = CVPixelBufferGetWidth(a3);
        Height = CVPixelBufferGetHeight(a3);
        goto LABEL_39;
      }

      [v50 extent];
      if (v51 <= -9.22337204e18)
      {
        goto LABEL_212;
      }

      if (v51 >= 9.22337204e18)
      {
        goto LABEL_213;
      }

      if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_215;
      }

      if (v52 <= -9.22337204e18)
      {
        goto LABEL_217;
      }

      if (v52 >= 9.22337204e18)
      {
        goto LABEL_219;
      }

      Width = v51;
      v54 = v52;
LABEL_40:
      v56 = *v157;
      if (*(v157 + 8))
      {
        if (*(v157 + 8) == 1)
        {
          [v56 extent];
          if (v57 <= -9.22337204e18)
          {
            goto LABEL_214;
          }

          if (v57 >= 9.22337204e18)
          {
            goto LABEL_216;
          }

          if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_218;
          }

          if (v58 <= -9.22337204e18)
          {
            goto LABEL_220;
          }

          if (v58 >= 9.22337204e18)
          {
            goto LABEL_221;
          }

          v40 = v57;
          v42 = v58;
          goto LABEL_9;
        }

        v39 = v56;
        v40 = CVPixelBufferGetWidth(v39);
        v41 = CVPixelBufferGetHeight(v39);
      }

      else
      {
        v39 = v56;
        v40 = CGImageGetWidth(v39);
        v41 = CGImageGetHeight(v39);
      }

      v42 = v41;

LABEL_9:
      if (v42 >= v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = v42;
      }

      if (v54 >= Width)
      {
        v44 = Width;
      }

      else
      {
        v44 = v54;
      }

      if (v42 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v42;
      }

      if (v54 <= Width)
      {
        v46 = Width;
      }

      else
      {
        v46 = v54;
      }

      v47 = v45 < v46;
      if (v44 < v43)
      {
        v47 = 0;
      }

      v48 = v43 < v44 || v47;
      a3 = type metadata accessor for GeneratedImage;
      sub_19A368ACC(v157, type metadata accessor for GeneratedImage);
      result = sub_19A368ACC(v156, type metadata accessor for GeneratedImage);
      ++v36;
      v38 = v159;
      v37 += v159;
      v5 += v159;
      v25 = v154;
      if ((v152 ^ v48))
      {
        v25 = v36 - 1;
        break;
      }
    }

    v28 = v143;
    a4 = v144;
    if ((v152 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (v25 < v143)
    {
      goto LABEL_229;
    }

    if (v143 < v25)
    {
      v59 = v38 * (v25 - 1);
      v5 = v25 * v38;
      v60 = v25;
      v61 = v143;
      v62 = v143 * v38;
      do
      {
        if (v61 != --v60)
        {
          v63 = *v155;
          if (!*v155)
          {
            goto LABEL_233;
          }

          a3 = v63 + v62;
          sub_19A368A00(v63 + v62, v150);
          if (v62 < v59 || a3 >= v63 + v5)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v62 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_19A368A00(v150, v63 + v59);
          v38 = v159;
        }

        ++v61;
        v59 -= v38;
        v5 -= v38;
        v62 += v38;
      }

      while (v61 < v60);
      v6 = 0;
      v28 = v143;
      a4 = v144;
    }

LABEL_66:
    v64 = v155[1];
    if (v25 >= v64)
    {
LABEL_75:
      v5 = v25;
      if (v25 < v28)
      {
        goto LABEL_225;
      }

      goto LABEL_76;
    }

    if (__OFSUB__(v25, v28))
    {
      goto LABEL_226;
    }

    if (v25 - v28 >= a4)
    {
      goto LABEL_75;
    }

    if (__OFADD__(v28, a4))
    {
      goto LABEL_227;
    }

    if (v28 + a4 >= v64)
    {
      v5 = v155[1];
    }

    else
    {
      v5 = v28 + a4;
    }

    v65 = v158;
    if (v5 < v28)
    {
      goto LABEL_228;
    }

    if (v25 == v5)
    {
      goto LABEL_75;
    }

    v140 = v6;
    v111 = *v155;
    v112 = *(v153 + 72);
    v113 = *v155 + v112 * (v25 - 1);
    v6 = -v112;
    v143 = v28;
    v114 = v28 - v25;
    v159 = v111;
    v146 = v112;
    v147 = v5;
    v115 = v111 + v25 * v112;
LABEL_128:
    v154 = v25;
    v148 = v115;
    v149 = v114;
    v5 = v115;
    v152 = v113;
    v116 = v113;
LABEL_129:
    a3 = type metadata accessor for GeneratedImage;
    v117 = v162;
    sub_19A368A64(v5, v162, type metadata accessor for GeneratedImage);
    sub_19A368A64(v116, v65, type metadata accessor for GeneratedImage);
    v118 = *v117;
    if (!*(v117 + 8))
    {
      a3 = v118;
      v121 = CGImageGetWidth(a3);
      v123 = CGImageGetHeight(a3);
LABEL_140:
      v122 = v123;

      goto LABEL_141;
    }

    if (*(v117 + 8) != 1)
    {
      a3 = v118;
      v121 = CVPixelBufferGetWidth(a3);
      v123 = CVPixelBufferGetHeight(a3);
      goto LABEL_140;
    }

    [v118 extent];
    if (v119 <= -9.22337204e18)
    {
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      result = sub_19A34DDAC(a3);
      goto LABEL_179;
    }

    if (v119 >= 9.22337204e18)
    {
      goto LABEL_190;
    }

    if ((*&v119 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v120 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_192;
    }

    if (v120 <= -9.22337204e18)
    {
      goto LABEL_194;
    }

    if (v120 >= 9.22337204e18)
    {
      goto LABEL_196;
    }

    v121 = v119;
    v122 = v120;
LABEL_141:
    v124 = *v65;
    if (!*(v65 + 8))
    {
      v129 = v124;
      v127 = CGImageGetWidth(v129);
      v130 = CGImageGetHeight(v129);
LABEL_152:
      v128 = v130;

      v65 = v158;
      goto LABEL_153;
    }

    if (*(v65 + 8) != 1)
    {
      v129 = v124;
      v127 = CVPixelBufferGetWidth(v129);
      v130 = CVPixelBufferGetHeight(v129);
      goto LABEL_152;
    }

    [v124 extent];
    if (v125 <= -9.22337204e18)
    {
      goto LABEL_191;
    }

    if (v125 >= 9.22337204e18)
    {
      goto LABEL_193;
    }

    if ((*&v125 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v126 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_195;
    }

    if (v126 <= -9.22337204e18)
    {
      goto LABEL_197;
    }

    if (v126 >= 9.22337204e18)
    {
      goto LABEL_198;
    }

    v127 = v125;
    v128 = v126;
LABEL_153:
    v131 = v128 >= v127 ? v127 : v128;
    v132 = v122 >= v121 ? v121 : v122;
    if (v131 < v132)
    {
      break;
    }

    if (v132 >= v131)
    {
      v133 = v128 <= v127 ? v127 : v128;
      v134 = v122 <= v121 ? v121 : v122;
      if (v133 < v134)
      {
        break;
      }
    }

    a3 = type metadata accessor for GeneratedImage;
    sub_19A368ACC(v65, type metadata accessor for GeneratedImage);
    sub_19A368ACC(v162, type metadata accessor for GeneratedImage);
LABEL_127:
    v25 = v154 + 1;
    v5 = v147;
    v113 = v152 + v146;
    v114 = v149 - 1;
    v115 = v148 + v146;
    if (v154 + 1 != v147)
    {
      goto LABEL_128;
    }

    v6 = v140;
    v28 = v143;
    if (v147 < v143)
    {
      goto LABEL_225;
    }

LABEL_76:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v27 = v151;
    }

    else
    {
      result = sub_19A31CF2C(0, *(v151 + 2) + 1, 1, v151);
      v27 = result;
    }

    a3 = *(v27 + 2);
    v66 = *(v27 + 3);
    v67 = a3 + 1;
    if (a3 >= v66 >> 1)
    {
      result = sub_19A31CF2C((v66 > 1), a3 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 2) = v67;
    v68 = &v27[16 * a3];
    *(v68 + 4) = v28;
    *(v68 + 5) = v5;
    v26 = v5;
    v5 = *v145;
    if (!*v145)
    {
      goto LABEL_235;
    }

    if (a3)
    {
      while (1)
      {
        v69 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v27 + 4);
          v71 = *(v27 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_95:
          if (v73)
          {
            goto LABEL_204;
          }

          v86 = &v27[16 * v67];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_207;
          }

          v92 = &v27[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_210;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_211;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v67 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        v96 = &v27[16 * v67];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_109:
        if (v91)
        {
          goto LABEL_206;
        }

        v99 = &v27[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_209;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_116:
        a3 = v69 - 1;
        if (v69 - 1 >= v67)
        {
          goto LABEL_199;
        }

        if (!*v155)
        {
          goto LABEL_232;
        }

        v107 = v27;
        v108 = *&v27[16 * a3 + 32];
        v109 = *&v27[16 * v69 + 40];
        sub_19A3681B0(*v155 + *(v153 + 72) * v108, *v155 + *(v153 + 72) * *&v27[16 * v69 + 32], *v155 + *(v153 + 72) * v109, v5);
        if (v6)
        {
        }

        if (v109 < v108)
        {
          goto LABEL_200;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_19A34DDAC(v107);
        }

        if (a3 >= *(v107 + 2))
        {
          goto LABEL_201;
        }

        v110 = &v107[16 * a3];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        v163 = v107;
        result = sub_19A34DD20(v69);
        v27 = v163;
        v67 = *(v163 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v27[16 * v67 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_202;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_203;
      }

      v81 = &v27[16 * v67];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_205;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_208;
      }

      if (v85 >= v77)
      {
        v103 = &v27[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_224;
        }

        if (v72 < v106)
        {
          v69 = v67 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_95;
    }

LABEL_3:
    v25 = v155[1];
    a4 = v144;
    if (v26 >= v25)
    {
      goto LABEL_176;
    }
  }

  sub_19A368ACC(v65, type metadata accessor for GeneratedImage);
  result = sub_19A368ACC(v162, type metadata accessor for GeneratedImage);
  if (v159)
  {
    a3 = v160;
    sub_19A368A00(v5, v160);
    swift_arrayInitWithTakeFrontToBack();
    sub_19A368A00(a3, v116);
    v116 += v6;
    v5 += v6;
    if (__CFADD__(v114++, 1))
    {
      goto LABEL_127;
    }

    goto LABEL_129;
  }

  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
  return result;
}

uint64_t sub_19A3681B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for GeneratedImage();
  v9 = MEMORY[0x1EEE9AC00](v64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v53 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v53 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          sub_19A368A64(v39 + v38, v27, type metadata accessor for GeneratedImage);
          v43 = v27;
          v44 = v59;
          sub_19A368A64(v40, v59, type metadata accessor for GeneratedImage);
          v45 = sub_19A3F42C0(v43, v44);
          if (v37)
          {
            sub_19A368ACC(v44, type metadata accessor for GeneratedImage);
            sub_19A368ACC(v43, type metadata accessor for GeneratedImage);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          sub_19A368ACC(v44, type metadata accessor for GeneratedImage);
          sub_19A368ACC(v43, type metadata accessor for GeneratedImage);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        sub_19A368A64(a2, v19, type metadata accessor for GeneratedImage);
        sub_19A368A64(a4, v15, type metadata accessor for GeneratedImage);
        v31 = sub_19A3F42C0(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        sub_19A368ACC(v33, type metadata accessor for GeneratedImage);
        sub_19A368ACC(v19, type metadata accessor for GeneratedImage);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_19A368ACC(v15, type metadata accessor for GeneratedImage);
      sub_19A368ACC(v19, type metadata accessor for GeneratedImage);
    }
  }

LABEL_62:
  sub_19A37639C(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_19A36880C(uint64_t a1)
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
  v11[1] = sub_19A2F759C;

  return sub_19A35ED00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_19A368984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A3689E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_19A368A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A368A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A368ACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A368B2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A368B88()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

unint64_t ImageStyle.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F6974616D696E61;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x6C616E7265747865;
  }

  v4 = 0x686374656B73;
  if (v1 != 3)
  {
    v4 = 0x747241656E696CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x696A6F6D65;
  if (v1 != 1)
  {
    v5 = 0x61727473756C6C69;
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
    return v3;
  }
}

unint64_t ImageStyle.id.getter()
{
  v1 = *v0;
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F6974616D696E61;
  v4 = 0x800000019A595400;
  v5 = 0x6C616E7265747865;
  if (v1 == 5)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x686374656B73;
  if (v1 != 3)
  {
    v7 = 0x747241656E696CLL;
    v6 = 0xE700000000000000;
  }

  if (*v0 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x696A6F6D65;
  if (v1 != 1)
  {
    v9 = 0x61727473756C6C69;
    v8 = 0xEC0000006E6F6974;
  }

  if (*v0)
  {
    v3 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x19A900A50](v10, v11);

  return 0xD000000000000026;
}

uint64_t ImageStyle.name.getter()
{
  if (qword_1EAF9ECC0 != -1)
  {
    swift_once();
  }

  v0 = sub_19A570C5C();

  return v0;
}

void ImageStyle.representativeImage.getter()
{
  v1 = sub_19A570EAC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v31.i8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31.i8[-v6];
  v8 = *v0;
  v31.i8[0] = *v0;
  sub_19A36945C();
  if (qword_1EAF9ECC0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EAFCA140;
  v10 = sub_19A572CCC();
  v11 = [v9 URLForResource:v10 withExtension:0];

  if (v11)
  {
    sub_19A570E3C();

    (*(v2 + 32))(v7, v5, v1);
    v12 = sub_19A570DEC();
    v13 = CGImageSourceCreateWithURL(v12, 0);

    if (v13)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);

      (*(v2 + 8))(v7, v1);
      if (ImageAtIndex)
      {
LABEL_27:

        return;
      }
    }

    else
    {
      (*(v2 + 8))(v7, v1);
    }
  }

  v15 = 0xE90000000000006ELL;
  v16 = 0x6F6974616D696E61;
  v17 = 0x800000019A595400;
  v18 = 0xD000000000000013;
  if (v8 != 5)
  {
    v18 = 0x6C616E7265747865;
    v17 = 0xE800000000000000;
  }

  v19 = 0xE600000000000000;
  v20 = 0x686374656B73;
  if (v8 != 3)
  {
    v20 = 0x747241656E696CLL;
    v19 = 0xE700000000000000;
  }

  if (v8 <= 4)
  {
    v18 = v20;
    v17 = v19;
  }

  v21 = 0xE500000000000000;
  v22 = 0x696A6F6D65;
  if (v8 != 1)
  {
    v22 = 0x61727473756C6C69;
    v21 = 0xEC0000006E6F6974;
  }

  if (v8)
  {
    v16 = v22;
    v15 = v21;
  }

  if (v8 <= 2)
  {
    v23 = v16;
  }

  else
  {
    v23 = v18;
  }

  if (v8 <= 2)
  {
    v24 = v15;
  }

  else
  {
    v24 = v17;
  }

  v25 = MEMORY[0x19A900AD0](v23, v24);

  v31 = vdupq_n_s64(0x80uLL);
  sub_19A44F184(v31.i64, COERCE__INT64(vcvtd_n_f64_u64((v25 >> 24) & 0xFFF, 0xCuLL)), COERCE__INT64(vcvtd_n_f64_u64((v25 >> 12) & 0xFFF, 0xCuLL)), COERCE__INT64(vcvtd_n_f64_u64(v25 & 0xFFF, 0xCuLL)), 0, 1.0);
  if (v26)
  {
    v27 = v26;
    v31.i8[0] = v8;
    v28 = ImageStyle.name.getter();
    v30 = sub_19A44F31C(v28, v29, 0, 0, 0, 1, 4, 0, 0, 1);

    sub_19A44E9E0(v30, 0x3FE0000000000000, 0x3FE0000000000000, 1);

    if (CGBitmapContextCreateImage(*(v27 + 32)))
    {

      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_19A36945C()
{
  v1 = *v0;
  sub_19A57395C();

  v2 = 0xE90000000000006ELL;
  v3 = 0x6F6974616D696E61;
  v4 = 0x800000019A595400;
  v5 = 0xD000000000000013;
  if (v1 != 5)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x686374656B73;
  if (v1 != 3)
  {
    v7 = 0x747241656E696CLL;
    v6 = 0xE700000000000000;
  }

  if (v1 <= 4)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x696A6F6D65;
  if (v1 != 1)
  {
    v9 = 0x61727473756C6C69;
    v8 = 0xEC0000006E6F6974;
  }

  if (v1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (v1 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (v1 <= 2)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x19A900A50](v10, v11);

  MEMORY[0x19A900A50](1735290926, 0xE400000000000000);
  return 0x7974536567616D49;
}

VisualGeneration::ImageStyle_optional __swiftcall ImageStyle.init(id:)(Swift::String id)
{
  object = id._object;
  countAndFlagsBits = id._countAndFlagsBits;
  v4 = v1;
  if (sub_19A572F4C())
  {
    v5 = sub_19A572E7C();
    v6 = sub_19A369A20(v5, countAndFlagsBits, object);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = MEMORY[0x19A900970](v6, v8, v10, v12);
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    result.value = ImageStyle.init(rawValue:)(v16).value;
    v18 = v19;
  }

  else
  {

    v18 = 7;
  }

  *v4 = v18;
  return result;
}

VisualGeneration::ImageStyle_optional __swiftcall ImageStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19A573C2C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_19A369724()
{
  sub_19A572E4C();
}

void sub_19A369850(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 0x6F6974616D696E61;
  v5 = 0x800000019A595400;
  v6 = 0xD000000000000013;
  if (v2 != 5)
  {
    v6 = 0x6C616E7265747865;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x686374656B73;
  if (v2 != 3)
  {
    v8 = 0x747241656E696CLL;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x696A6F6D65;
  if (v2 != 1)
  {
    v10 = 0x61727473756C6C69;
    v9 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_19A369938@<X0>(unint64_t *a1@<X8>)
{
  result = ImageStyle.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_19A369A20(unint64_t result, uint64_t a2, unint64_t a3)
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
  result = sub_19A572EAC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_19A572F9C();
}

unint64_t sub_19A369AD4()
{
  result = qword_1EAFA0720;
  if (!qword_1EAFA0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0720);
  }

  return result;
}

unint64_t sub_19A369B38()
{
  result = qword_1EAFA0728;
  if (!qword_1EAFA0728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0728);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19A369CEC()
{
  result = qword_1ED824BD8;
  if (!qword_1ED824BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824BD8);
  }

  return result;
}

uint64_t sub_19A369D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_19A57102C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A369E10, 0, 0);
}

uint64_t sub_19A369E10()
{
  v39 = v0;
  v1 = *(v0[7] + 16);
  v1(v0[9], v0[5] + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask_id, v0[6]);
  v38[0] = 0x206B736154;
  v38[1] = 0xE500000000000000;
  sub_19A36BC14(&qword_1ED8252D8);
  v2 = sub_19A573EDC();
  MEMORY[0x19A900A50](v2);

  MEMORY[0x19A900A50](58, 0xE100000000000000);
  v0[10] = 0x206B736154;
  v0[11] = 0xE500000000000000;
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v3 = sub_19A5723FC();
  v0[12] = __swift_project_value_buffer(v3, qword_1EAFCA1E8);

  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_19A31F114(0x206B736154, 0xE500000000000000, v38);
    _os_log_impl(&dword_19A2DE000, v4, v5, "%{public}s assigning prompt guidance sketch", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  v8 = sub_19A57231C();
  v0[13] = v8;
  v37 = *(v8 - 8);
  v0[14] = v37;
  v0[15] = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[6];
  v12 = sub_19A57236C();
  __swift_project_value_buffer(v12, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v1(v10, v9, v11);
  v13 = sub_19A57234C();
  v14 = sub_19A57361C();
  v15 = sub_19A57376C();
  v17 = v0[7];
  v16 = v0[8];
  v18 = v0[6];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38[0] = v35;
    *v19 = 136446210;
    v20 = sub_19A573EDC();
    v36 = v14;
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v16, v18);
    v24 = sub_19A31F114(v20, v22, v38);

    *(v19 + 4) = v24;
    v25 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v13, v36, v25, "promptGuidanceSketchAssignment", "%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x19A902C50](v35, -1, -1);
    MEMORY[0x19A902C50](v19, -1, -1);
  }

  else
  {

    v23 = *(v17 + 8);
    v23(v16, v18);
  }

  v0[16] = v23;
  v27 = v0[4];
  v26 = v0[5];
  v28 = v0[3];
  swift_task_alloc();
  (*(v37 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[17] = sub_19A5723AC();

  v29 = swift_task_alloc();
  v0[18] = v29;
  v29[2] = v26;
  v29[3] = v28;
  v29[4] = v27;
  v29[5] = 0x206B736154;
  v29[6] = 0xE500000000000000;
  v30 = swift_task_alloc();
  v0[19] = v30;
  *(v30 + 16) = 0x206B736154;
  *(v30 + 24) = 0xE500000000000000;
  v31 = swift_task_alloc();
  v0[20] = v31;
  v32 = type metadata accessor for DefinitionSession();
  *v31 = v0;
  v31[1] = sub_19A36A37C;
  v33 = v0[2];

  return MEMORY[0x1EEE6DE18](v33, &unk_19A57BF80, v29, sub_19A36C078, v30, 0, 0, v32);
}

uint64_t sub_19A36A37C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_19A36A5AC;
  }

  else
  {

    v2 = sub_19A36A4B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A36A4B4()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[6];
  sub_19A36AA8C("promptGuidanceSketchAssignment", 30, 2);

  (*(v3 + 8))(v2, v4);
  v1(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_19A36A5AC()
{
  v27 = v0;
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_19A36AA8C("promptGuidanceSketchAssignment", 30, 2);

  (*(v3 + 8))(v2, v4);

  v5 = v1;
  v6 = sub_19A5723DC();
  v7 = sub_19A57355C();

  if (!os_log_type_enabled(v6, v7))
  {

    v17 = v0[3];
    if (!v17)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = v0[21];
  v10 = v0[10];
  v9 = v0[11];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v25 = v13;
  *v11 = 136446466;
  v14 = sub_19A31F114(v10, v9, &v25);

  *(v11 + 4) = v14;
  *(v11 + 12) = 2112;
  v15 = v8;
  v16 = _swift_stdlib_bridgeErrorToNSError();
  *(v11 + 14) = v16;
  *v12 = v16;
  _os_log_impl(&dword_19A2DE000, v6, v7, "%{public}s prompt guidance sketch rejected - %@", v11, 0x16u);
  sub_19A2F3FA0(v12, &qword_1EAF9FD28);
  MEMORY[0x19A902C50](v12, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  MEMORY[0x19A902C50](v13, -1, -1);
  MEMORY[0x19A902C50](v11, -1, -1);

  v17 = v0[3];
  if (v17)
  {
LABEL_5:
    v18 = v0[5];
    v25 = v0[21];
    v26 = 64;
    v19 = v25;
    v17(v18, &v25);
    sub_19A36C080(v25, v26);
  }

LABEL_6:
  v20 = v0[16];
  v21 = v0[9];
  v22 = v0[6];
  swift_willThrow();
  v20(v21, v22);

  v23 = v0[1];

  return v23();
}

id GenerativePlayground.PromptGuidanceSketchAssignmentTask.promptGuidanceSketch.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t GenerativePlayground.PromptGuidanceSketchAssignmentTask.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask_id;
  v4 = sub_19A57102C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenerativePlayground.PromptGuidanceSketchAssignmentTask.isCancelled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

Swift::Void __swiftcall GenerativePlayground.PromptGuidanceSketchAssignmentTask.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller), v1);
  (*(v2 + 16))(v1, v2);
}

unint64_t GenerativePlayground.PromptGuidanceSketchAssignmentTask.description.getter()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return 0xD000000000000023;
}

uint64_t sub_19A36AA8C(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A36AD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v7 = sub_19A57102C();
  v6[35] = v7;
  v6[36] = *(v7 - 8);
  v6[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A36AE3C, 0, 0);
}

uint64_t sub_19A36AE3C()
{
  v53 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v2 + 16);
  *(v0 + 304) = v3;
  v4 = *(v2 + 24);
  *(v0 + 226) = v4;
  v49 = v4;
  if (v1)
  {
    v50 = v3;
    LOBYTE(v51) = v4;
    v5 = v3;
    v1(v2, &v50);
    sub_19A36C080(v50, v51);
    v2 = *(v0 + 240);
  }

  v6 = 0xD000000000000025;
  v7 = *(v0 + 232);
  sub_19A36C0A8(v2 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__definitionSession, v7);
  v8 = type metadata accessor for DefinitionSession();
  *(v0 + 312) = v8;
  v9 = v8[22];
  *(v0 + 228) = v9;
  v10 = (v7 + v9);
  v11 = type metadata accessor for GenerationRecipe(0);
  v12 = v11[21];
  *(v0 + 352) = v12;
  v13 = &v10[v12];
  sub_19A331C90(*&v10[v12], *&v10[v12 + 8], *&v10[v12 + 16], *&v10[v12 + 24]);
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = v11[11];
  *(v0 + 356) = v14;
  v15 = &v10[v14];
  *v15 = 0;
  v15[4] = 1;
  v16 = &v10[v11[23]];
  v17 = *v16;
  v18 = *(v16 + 2);
  *(v0 + 32) = *(v16 + 1);
  *(v0 + 48) = v18;
  *(v0 + 16) = v17;
  v19 = *(v16 + 3);
  v20 = *(v16 + 4);
  v21 = *(v16 + 5);
  *(v0 + 112) = *(v16 + 12);
  *(v0 + 80) = v20;
  *(v0 + 96) = v21;
  *(v0 + 64) = v19;
  sub_19A2F3FA0(v0 + 16, &qword_1EAFA0198);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  *(v16 + 4) = 0u;
  *(v16 + 5) = 0u;
  *(v16 + 12) = 0;
  v22 = &v10[v11[22]];
  sub_19A331C90(*v22, *(v22 + 1), *(v22 + 2), *(v22 + 3));
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = v7 + v8[14];
  sub_19A335400(*v23, *(v23 + 8), *(v23 + 16), *(v23 + 24), *(v23 + 32));
  *v23 = xmmword_19A577080;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 16) = 0;
  *(v23 + 40) = 0;
  v24 = sub_19A4CB924();
  *(v0 + 320) = v24;
  if (*v10 > 1u)
  {
    if (*v10 == 2)
    {
      v25 = "Generation.AppleDiffusion";
    }

    else
    {
      v25 = "promptGuidanceSketchAssignment";
      v6 = 0xD000000000000010;
    }
  }

  else if (*v10)
  {
    v25 = ".KeyboardEmojiGenerator";
  }

  else
  {
    v25 = ".PhotosGenerativeEdit";
    v6 = 0xD000000000000027;
  }

  *(v0 + 328) = v25;
  v48 = *(*(v0 + 232) + v8[5] + 20);
  (*(*(v0 + 288) + 16))(*(v0 + 296), &v10[v11[18]], *(v0 + 280));
  v26 = *(v24 + 16);

  os_unfair_lock_lock((v26 + 80));
  v27 = *(v26 + 64);
  v28 = *(v26 + 72);
  if (v27)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;
    v30 = sub_19A3555A0;
  }

  else
  {
    v30 = 0;
  }

  sub_19A3558F8(v27);
  os_unfair_lock_unlock((v26 + 80));
  if (v27)
  {
    sub_19A3558FC(v30);
    v50 = v3;
    v31 = v49;
    LOBYTE(v51) = v49;
    v32 = sub_19A4CEB54();
    v34 = v6;
    if (v33 >> 60 == 15)
    {
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v37 = v32;
      v38 = v33;
      v39 = sub_19A570F1C();
      v41 = v40;
      sub_19A33EFB0(v37, v38);
      v52 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19A576E10;
      *(inited + 32) = 0x6567616D49676E70;
      v43 = inited + 32;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xEC00000061746144;
      *(inited + 48) = v39;
      *(inited + 56) = v41;
      v44 = sub_19A330370(inited);
      swift_setDeallocating();
      sub_19A2F3FA0(v43, &qword_1EAFA2F00);
      sub_19A338028(&v52, v44, &v50);
      v35 = v50;
      v36 = v51;
      v31 = v49;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v34 = v6;
    v31 = v49;
  }

  *(v0 + 216) = v3;
  *(v0 + 224) = v31;
  *(v0 + 200) = v35;
  *(v0 + 208) = v36;
  v45 = swift_task_alloc();
  *(v0 + 336) = v45;
  *v45 = v0;
  v45[1] = sub_19A36B384;
  v46 = *(v0 + 296);
  v55 = v0 + 200;

  return sub_19A353318(v0 + 225, (v0 + 216), 5, 0, v34, v25 | 0x8000000000000000, v48, v46);
}

uint64_t sub_19A36B384()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_19A36B844;
  }

  else
  {
    v2 = sub_19A36B4C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A36B4C8()
{
  v39 = v0;
  v1 = *(v0 + 344);
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  sub_19A432E78();
  if (v1)
  {
    v15 = *(v0 + 232);

    sub_19A36BAC0(v15);

    v16 = *(v0 + 8);
  }

  else
  {
    sub_19A4C6648(&v34);
    v2 = *(v0 + 226);
    v37 = *(v0 + 304);
    v38 = v2;
    sub_19A41ED10(v36, &v34, 2);
    v33 = *(v0 + 226);
    v3 = *(v0 + 304);
    v4 = *(v0 + 232);
    v32 = *(v0 + 312);
    v5 = v4 + *(v0 + 228) + *(v0 + 352);
    v7 = v6;
    Width = CVPixelBufferGetWidth(v6);
    Height = CVPixelBufferGetHeight(v7);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v7);
    type metadata accessor for ResolvedImage.HiddenBufferData();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_19A5770A0;
    sub_19A331C90(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
    *v5 = Width;
    *(v5 + 8) = Height;
    *(v5 + 16) = PixelFormatType;
    *(v5 + 24) = v7;
    *(v5 + 32) = v11;
    v12 = v4 + *(v32 + 48);
    v13 = *v12;
    LOBYTE(Height) = *(v12 + 8);
    v14 = v3;
    sub_19A335458(v13, Height);
    *v12 = v3;
    *(v12 + 8) = v33;
    sub_19A432E78();
    v18 = *(v0 + 240);
    v19 = *(v0 + 232) + *(v0 + 228) + *(v0 + 356);
    v20 = *(v18 + 28);
    LOBYTE(v18) = *(v18 + 32);
    *v19 = v20;
    *(v19 + 4) = v18;
    if (qword_1EAF9F208 != -1)
    {
      swift_once();
    }

    v21 = sub_19A5723FC();
    __swift_project_value_buffer(v21, qword_1EAFCA1E8);

    v22 = sub_19A5723DC();
    v23 = sub_19A57356C();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = *(v0 + 264);
      v24 = *(v0 + 272);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_19A31F114(v25, v24, &v34);
      _os_log_impl(&dword_19A2DE000, v22, v23, "%{public}s accepted prompt guidance sketch", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x19A902C50](v27, -1, -1);
      MEMORY[0x19A902C50](v26, -1, -1);
    }

    v28 = *(v0 + 248);
    if (v28)
    {
      v29 = *(v0 + 240);
      v30 = *(v0 + 226) | 0x80;
      v34 = *(v0 + 304);
      v35 = v30;
      v31 = v14;
      v28(v29, &v34);

      sub_19A36C080(v34, v35);
    }

    else
    {
    }

    v16 = *(v0 + 8);
  }

  return v16();
}