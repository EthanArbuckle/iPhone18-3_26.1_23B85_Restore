uint64_t sub_274C9AC88()
{
  v0 = sub_274C9B4E4();
  __swift_allocate_value_buffer(v0, qword_280E20B68);
  __swift_project_value_buffer(v0, qword_280E20B68);
  return sub_274C9B4D4();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_274C9ADD0(uint64_t a1)
{
  v2 = sub_274C9B444();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  result = (*(v3 + 88))(v6, v2);
  v8 = result == *MEMORY[0x277D0DFA8];
  if (result != *MEMORY[0x277D0DFA8] && (result != *MEMORY[0x277D0DFB0] ? (v9 = result == *MEMORY[0x277D0E278]) : (v9 = 0), v9))
  {
    v8 = 1;
  }

  else
  {
    result = (*(v3 + 8))(v6, v2);
  }

  byte_280E20B58 = v8;
  return result;
}

uint64_t sub_274C9AF14()
{
  v0 = sub_274C9B444();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  v2 = (MEMORY[0x28223BE20])();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - v5;
  v7 = sub_274C9B484();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_274C9B464();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_274C9B4B4();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = byte_280E20B58;
  if (byte_280E20B58 == 2)
  {
    v28 = v20;
    v29 = v19;
    (*(v8 + 104))(v11, *MEMORY[0x277D0E2D8], v7);
    sub_274C9B454();
    sub_274C9B494();
    (*(v13 + 8))(v16, v12);
    qword_280E20B60 = sub_274C9B4A4();

    sub_274C9B474();
    v25 = v30;
    v24 = v31;
    (*(v30 + 32))(v4, v6, v31);
    v26 = (*(v25 + 88))(v4, v24);
    v23 = v26 == *MEMORY[0x277D0DFA8];
    if (v26 == *MEMORY[0x277D0DFA8] || v26 == *MEMORY[0x277D0DFB0] || v26 != *MEMORY[0x277D0E278])
    {
      (*(v25 + 8))(v4, v24);
    }

    else
    {
      v23 = 1;
    }

    byte_280E20B58 = v23;
    (*(v28 + 8))(v22, v29);
  }

  return v23 & 1;
}

uint64_t sub_274C9B2DC()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isWritingToolsAllowed];

    v3 = sub_274C9AF14();
    v4 = v3;
    v5 = v2 & v3;
    if (byte_280E20B48 == 2 || ((v5 ^ byte_280E20B48) & 1) != 0)
    {
      byte_280E20B48 = v2 & v3;
      if (qword_280E20B50 != -1)
      {
        swift_once();
      }

      v6 = sub_274C9B4E4();
      __swift_project_value_buffer(v6, qword_280E20B68);
      v7 = sub_274C9B4C4();
      v8 = sub_274C9B4F4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109376;
        *(v9 + 4) = v2;
        *(v9 + 8) = 1024;
        *(v9 + 10) = v4 & 1;
        _os_log_impl(&dword_274C98000, v7, v8, "isAvailable value changed: isMDMAllowed = %{BOOL}d, gmAvailable (current) = %{BOOL}d", v9, 0xEu);
        MEMORY[0x277C68060](v9, -1, -1);
      }
    }

    return v5;
  }

  else
  {
    __break(1u);
    return sub_274C9B444();
  }
}