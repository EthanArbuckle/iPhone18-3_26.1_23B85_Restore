uint64_t sub_22709F68C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA308, &qword_227678B60);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A74FC;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_22709FA68(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA370, &qword_227678B90);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9550, &qword_22767B2D0);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7618;
  *(v35 + 24) = v33;

  v34(sub_226E9F880, v35);
}

uint64_t sub_22709FE44(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3F0, &qword_227678BE0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9348, &qword_227673B30);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7800;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_2270A0220(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2C0, &qword_227678B40);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A73EC;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_2270A05FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA398, &qword_227678BA8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A0, &unk_227683B80);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7668;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_2270A09D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA280, &qword_227678B18);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA288, &qword_22768D8D0);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7220;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_2270A0DB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA298, &qword_227678B28);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A72E0;
  *(v35 + 24) = v33;

  v34(sub_2270A7374, v35);
}

uint64_t sub_2270A1190(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA358, &qword_227678B88);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A75F0;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_2270A156C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA348, &qword_227678B80);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7560;
  *(v35 + 24) = v33;

  v34(sub_226EC29B0, v35);
}

uint64_t sub_2270A1948(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2F0, &qword_227678B58);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A743C;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_2270A1D24(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA420, &qword_227678BF0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7850;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_2270A2100(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA258, &qword_227678B08);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A71C8;
  *(v35 + 24) = v33;

  v34(sub_2270A71F0, v35);
}

uint64_t sub_2270A24DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C8, &qword_227678BC8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A772C;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_2270A28B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E0, &qword_227678BD8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7754;
  *(v35 + 24) = v33;

  v34(sub_2270A71F0, v35);
}

uint64_t sub_2270A2C94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA408, &qword_227678BE8);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7828;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_2270A3070(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA380, &qword_227678B98);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7640;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_2270A344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_227665AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA268, &qword_227678B10);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA268, &qword_227678B10);
    return sub_22766C450();
  }
}

uint64_t sub_2270A37C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v29 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = a7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = a1;
    v20 = v19;
    *&v32[0] = v19;
    *v18 = 134218498;
    *(v18 + 4) = a2;
    *(v18 + 12) = 2080;
    v21 = sub_22766CE50();
    v23 = sub_226E97AE8(v21, v22, v32);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v30;
    _os_log_impl(&dword_226E8E000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v24 = v20;
    a1 = v27;
    MEMORY[0x22AA9A450](v24, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  sub_226E93170(a1, v32, &qword_27D7BA2B8, &qword_227678B38);
  if (v33)
  {
    v31[0] = *&v32[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A8, &qword_227678B30);
    return sub_22766C440();
  }

  else
  {
    sub_226E92AB8(v32, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A8, &qword_227678B30);
    return sub_22766C450();
  }
}

uint64_t sub_2270A3A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_2276666A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD560, &unk_227684C50);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &qword_27D7BD560, &unk_227684C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D8, &qword_227678B50);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D8, &qword_227678B50);
    return sub_22766C450();
  }
}

uint64_t sub_2270A3DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_227664420();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA330, &qword_227678B70);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &qword_27D7BA330, &qword_227678B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA320, &qword_227678B68);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA320, &qword_227678B68);
    return sub_22766C450();
  }
}

uint64_t sub_2270A411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_2276676E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6C0, &unk_22768B740);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &qword_27D7BD6C0, &unk_22768B740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA308, &qword_227678B60);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA308, &qword_227678B60);
    return sub_22766C450();
  }
}

uint64_t sub_2270A4490(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  LODWORD(v10) = a2;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v28) = v10;
    v10 = v21;
    v33 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v22 = sub_22766CE50();
    v24 = sub_226E97AE8(v22, v23, &v33);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v32;
    _os_log_impl(&dword_226E8E000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    v25 = v10;
    LOBYTE(v10) = BYTE4(v28);
    MEMORY[0x22AA9A450](v25, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v33 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA370, &qword_227678B90);
  if (v10)
  {
    return sub_22766C440();
  }

  else
  {
    return sub_22766C450();
  }
}

uint64_t sub_2270A46E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_227667A70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA400, &unk_227684C10);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &qword_27D7BA400, &unk_227684C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3F0, &qword_227678BE0);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3F0, &qword_227678BE0);
    return sub_22766C450();
  }
}

uint64_t sub_2270A4A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_227666C80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D0, &qword_227678B48);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &qword_27D7BA2D0, &qword_227678B48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2C0, &qword_227678B40);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2C0, &qword_227678B40);
    return sub_22766C450();
  }
}

uint64_t sub_2270A4DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3B0, &qword_227678BB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v34 - v17);
  v19 = sub_22766B390();
  v41 = *(v19 - 8);
  v42 = v19;
  v20 = *(v41 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v23 = sub_22766B380();
  v24 = sub_22766C8B0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = a6;
    v26 = v25;
    v36 = swift_slowAlloc();
    v37 = a7;
    v43 = v36;
    *v26 = 134218498;
    *(v26 + 4) = a2;
    *(v26 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = a1;
    v30 = v14;
    v31 = sub_226E97AE8(v27, v28, &v43);

    *(v26 + 14) = v31;
    v14 = v30;
    a1 = v29;
    *(v26 + 22) = 2048;
    *(v26 + 24) = v35;
    _os_log_impl(&dword_226E8E000, v23, v24, "Finished P->A conversion: %ld:%s:%lu", v26, 0x20u);
    v32 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v26, -1, -1);
  }

  (*(v41 + 8))(v22, v42);
  sub_226E93170(a1, v18, &qword_27D7BA3B0, &qword_227678BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA398, &qword_227678BA8);
    return sub_22766C440();
  }

  else
  {
    sub_2270A7690(v18, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA398, &qword_227678BA8);
    return sub_22766C450();
  }
}

uint64_t sub_2270A5100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_2276655F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA290, &qword_227678B20);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &qword_27D7BA290, &qword_227678B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA280, &qword_227678B18);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA280, &qword_227678B18);
    return sub_22766C450();
  }
}

uint64_t sub_2270A5474(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v34 = a8;
  v33 = a7;
  v36 = a4;
  v35 = a2;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v30 = a9;
    v20 = swift_slowAlloc();
    v32 = a10;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31 = a3;
    v23 = v22;
    v37[0] = v22;
    *v21 = 134218498;
    *(v21 + 4) = a5;
    *(v21 + 12) = 2080;
    v24 = sub_22766CE50();
    v26 = sub_226E97AE8(v24, v25, v37);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v30;
    _os_log_impl(&dword_226E8E000, v18, v19, "Finished P->A conversion: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v27 = v23;
    a3 = v31;
    MEMORY[0x22AA9A450](v27, -1, -1);
    MEMORY[0x22AA9A450](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v37[0] = a1;
  if (v36)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA298, &qword_227678B28);
    return sub_22766C440();
  }

  else
  {
    v37[1] = v35;
    v37[2] = a3;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA298, &qword_227678B28);
    return sub_22766C450();
  }
}

uint64_t sub_2270A56E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_227666190();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD740, &unk_22768B770);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &unk_27D7BD740, &unk_22768B770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA358, &qword_227678B88);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA358, &qword_227678B88);
    return sub_22766C450();
  }
}

uint64_t sub_2270A5A5C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v30 = a8;
  v29 = a7;
  v31 = a3;
  v32 = a1;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[0] = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[1] = a9;
    v21 = v20;
    v33[0] = v20;
    *v19 = 134218498;
    *(v19 + 4) = a4;
    *(v19 + 12) = 2080;
    v22 = sub_22766CE50();
    v24 = sub_226E97AE8(v22, v23, v33);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_226E8E000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AA9A450](v21, -1, -1);
    v25 = v19;
    a2 = v28[0];
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v33[0] = v32;
  if (v31)
  {
    v26 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA348, &qword_227678B80);
    return sub_22766C440();
  }

  else
  {
    v33[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA348, &qword_227678B80);
    return sub_22766C450();
  }
}

uint64_t sub_2270A5CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v29 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = a7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = a1;
    v20 = v19;
    *&v32[0] = v19;
    *v18 = 134218498;
    *(v18 + 4) = a2;
    *(v18 + 12) = 2080;
    v21 = sub_22766CE50();
    v23 = sub_226E97AE8(v21, v22, v32);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v30;
    _os_log_impl(&dword_226E8E000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v24 = v20;
    a1 = v27;
    MEMORY[0x22AA9A450](v24, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  sub_226E93170(a1, v32, &qword_27D7BA300, &unk_227684C90);
  if (v33)
  {
    v31[0] = *&v32[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2F0, &qword_227678B58);
    return sub_22766C440();
  }

  else
  {
    sub_226E92AB8(v32, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2F0, &qword_227678B58);
    return sub_22766C450();
  }
}

uint64_t sub_2270A5F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_227664900();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA430, &qword_227678BF8);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &unk_27D7BA430, &qword_227678BF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA420, &qword_227678BF0);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA420, &qword_227678BF0);
    return sub_22766C450();
  }
}

uint64_t sub_2270A62AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v29 = a6;
  v31 = a2;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[0] = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[1] = a8;
    v21 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v22 = sub_22766CE50();
    v24 = sub_226E97AE8(v22, v23, &v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_226E8E000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AA9A450](v21, -1, -1);
    v25 = v19;
    a1 = v28[0];
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (v31)
  {
    v32 = a1;
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA258, &qword_227678B08);
    return sub_22766C440();
  }

  else
  {
    LOBYTE(v32) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA258, &qword_227678B08);
    return sub_22766C450();
  }
}

uint64_t sub_2270A6508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_2276685B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD800, &qword_227678BD0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &unk_27D7BD800, &qword_227678BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C8, &qword_227678BC8);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C8, &qword_227678BC8);
    return sub_22766C450();
  }
}

uint64_t sub_2270A687C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v33 = a7;
  v32 = a6;
  v31[2] = a5;
  v34 = a2;
  v13 = a10;
  v35 = a9;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31[1] = a8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31[0] = a10;
    v24 = v23;
    v36 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a3;
    *(v22 + 12) = 2080;
    v25 = sub_22766CE50();
    v27 = sub_226E97AE8(v25, v26, &v36);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v33;
    _os_log_impl(&dword_226E8E000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v28 = v24;
    v13 = v31[0];
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v36 = a1;
  if (v34)
  {
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_22766C440();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_22766C450();
  }
}

uint64_t sub_2270A6AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_227668CE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &unk_27D7BEB60, &unk_227684DD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA408, &qword_227678BE8);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA408, &qword_227678BE8);
    return sub_22766C450();
  }
}

uint64_t sub_2270A6E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_227665030();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA390, &qword_227678BA0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v17 = (&v37 - v16);
  v18 = sub_22766B390();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_22766CE50();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_226E97AE8(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_226E8E000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_226E93170(a1, v17, &qword_27D7BA390, &qword_227678BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA380, &qword_227678B98);
    return sub_22766C440();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA380, &qword_227678B98);
    return sub_22766C450();
  }
}

uint64_t sub_2270A7248(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_2270A7374(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *result;
  v7 = v4;
  v8 = v5;
  if (v2)
  {
    return v2(&v6);
  }

  return result;
}

uint64_t sub_2270A7464(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_2270A7690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2270A7880(void *a1)
{
  v2 = a1;
  v3 = [a1 identifier];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [v2 name];
  if (!v5)
  {
LABEL_9:

LABEL_10:
    v13 = sub_227664DD0();
    sub_2270A83AC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51028], v13);
    swift_willThrow();
LABEL_11:

    return;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [v2 role];
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = v7;
  sub_22766C000();

  v9 = [v2 socialMediaHandles];
  if (!v9)
  {
    v15 = sub_227664DD0();
    sub_2270A83AC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();

    goto LABEL_13;
  }

  v10 = v9;
  v11 = MEMORY[0x22AA99A00]();
  v12 = sub_227154CD0(v10);
  if (!v1)
  {
    v17 = v12;
    objc_autoreleasePoolPop(v11);
    sub_226F3EB50(v17);

    v18 = [v2 bio];
    if (v18)
    {
      v19 = v18;
      sub_22766C000();
    }

    sub_2270A82C0();
    sub_227663AE0();
    sub_2276635C0();
    goto LABEL_11;
  }

  objc_autoreleasePoolPop(v11);

  v2 = v10;
LABEL_13:
}

void sub_2270A7BF0(void *a1, uint64_t a2)
{
  sub_2276635A0();
  v5 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276635E0();
  v6 = sub_22766BFD0();

  [a1 setName_];

  v7 = sub_2276635F0();
  v9 = v8;
  v11 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA480, &qword_227678C58);
  sub_227663AD0();
  v12 = sub_22766BFD0();
  sub_226EB2DFC(v7, v9, v11);

  [a1 setRole_];

  sub_2276635D0();
  if (v13)
  {
    v14 = sub_22766BFD0();
  }

  else
  {
    v14 = 0;
  }

  [a1 setBio_];

  v15 = sub_2276635B0();
  v16 = sub_227646F00(a2, v15);

  if (!v2)
  {
    [a1 setSocialMediaHandles_];
  }
}

size_t static Contributor.representativeSamples()()
{
  v31 = sub_227663610();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766CB70();
  v4 = sub_22766C090();
  v5 = sub_22766C090();
  sub_2270A826C();
  sub_2270A82C0();
  v6 = sub_227663B50();
  sub_2276653A0();
  v7 = MEMORY[0x277D51610];
  sub_2270A83AC(&qword_27D7B9450, MEMORY[0x277D51610]);
  sub_2270A83AC(&qword_27D7B88B8, v7);
  v8 = sub_22766C590();
  v49 = v4;
  v50[0] = v3;
  v50[1] = v50;
  v50[2] = &v49;
  v47 = v6;
  v48 = v5;
  v50[3] = &v48;
  v50[4] = &v47;
  v46 = v8;
  v50[5] = &v46;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v43 = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA450, &qword_227678C00);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA458, &qword_227678C08);
  v36 = sub_226F5BF60(&qword_27D7BA460, &qword_27D7B8470, qword_227677CA0);
  v37 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v38 = v37;
  v39 = sub_226F5BF60(&qword_27D7BA468, &qword_27D7BA450, &qword_227678C00);
  v40 = sub_226F5BF60(&qword_27D7BA470, &qword_27D7BA458, &qword_227678C08);
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_226F1F3C8(0, v10, 0);
    v12 = 0;
    v13 = 0;
    v14 = v35;
    v26[1] = v0 + 32;
    v29 = v0;
    v28 = v9;
    v27 = v10;
    while (v13 < *(v9 + 16))
    {
      v15 = v9 + v12;
      v16 = *(v9 + v12 + 40);
      v34 = *(v9 + v12 + 32);
      v17 = *(v9 + v12 + 56);
      v33 = *(v9 + v12 + 48);
      v18 = *(v9 + v12 + 72);
      v32 = *(v9 + v12 + 64);
      v20 = *(v9 + v12 + 80);
      v19 = *(v9 + v12 + 88);
      v21 = *(v15 + 96);
      v22 = *(v15 + 104);

      sub_226EB396C(v20, v19, v21);

      v23 = v30;
      sub_2276635C0();
      v35 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F3C8(v24 > 1, v25 + 1, 1);
        v14 = v35;
      }

      ++v13;
      *(v14 + 16) = v25 + 1;
      result = (*(v29 + 32))(v14 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, v23, v31);
      v12 += 80;
      v9 = v28;
      if (v27 == v13)
      {

        return v14;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2270A826C()
{
  result = qword_27D7BA440;
  if (!qword_27D7BA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA440);
  }

  return result;
}

unint64_t sub_2270A82C0()
{
  result = qword_27D7BA448;
  if (!qword_27D7BA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA448);
  }

  return result;
}

uint64_t sub_2270A8354(uint64_t a1)
{
  result = sub_2270A83AC(&qword_27D7BA478, MEMORY[0x277D4FFF0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2270A83AC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2270A83F4(void (*a1)(double *__return_ptr, double *, void *), double a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a4 + 16);
  if (v7)
  {
    for (i = (a4 + 64); ; i += 40)
    {
      v10 = *i;
      v12 = *(i - 2);
      v11 = *(i - 1);
      v13 = *(i - 3);
      v22[0] = *(i - 4);
      v22[1] = v13;
      v23 = v12;
      v24 = v11;
      v25 = v10;

      sub_226EB396C(v12, v11, v10);
      a1(&v21, &v26, v22);
      if (v5)
      {
        break;
      }

      v14 = v23;
      v15 = v24;
      v16 = v25;

      sub_226EB2DFC(v14, v15, v16);
      a2 = v21;
      v26 = v21;
      if (!--v7)
      {
        return a2;
      }
    }

    v17 = v23;
    v18 = v24;
    v19 = v25;

    sub_226EB2DFC(v17, v18, v19);
  }

  return a2;
}

uint64_t sub_2270A8500(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v15 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    v10 = (a4 + 32);
    while (1)
    {
      v11 = *v10++;
      v14 = v11;
      a2(&v13, &v15, &v14);
      if (v5)
      {
        break;
      }

      v8 = v13;
      v15 = v13;
      if (!--v9)
      {
        return v8;
      }
    }
  }

  return v8;
}

uint64_t sub_2270A85DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16 = a1;
  v9 = a1;
  v10 = *(a4 + 16);

  if (v10)
  {
    v11 = *(a5(0) - 8);
    v12 = a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      a2(&v15, &v16, v12);
      if (v5)
      {
        break;
      }

      v9 = v15;
      v16 = v15;
      v12 += v13;
      if (!--v10)
      {
        return v9;
      }
    }
  }

  return v9;
}

uint64_t sub_2270A86E8(uint64_t a1)
{
  v46 = sub_2276639B0();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2276624A0();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x277D84F90];
    v36 = a1;
    sub_226F1F548(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      sub_2276639A0();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F548(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
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
  }

  return result;
}

uint64_t sub_2270A8AAC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_2270A8B30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v88 = a3;
  v94 = sub_22766B390();
  v92 = *(v94 - 8);
  v7 = *(v92 + 8);
  v8 = MEMORY[0x28223BE20](v94);
  v10 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v80 - v11;
  v13 = sub_227663CD0();
  v14 = *(v13 - 8);
  v85 = v13;
  v86 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v84 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = v80 - v18;
  v19 = sub_2276624A0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_227665780();
  v93 = *(v24 - 8);
  v25 = *(v93 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v95 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v87 = v80 - v29;
  MEMORY[0x28223BE20](v28);
  v82 = v80 - v30;
  v31 = *(v3 + 16);
  sub_227669690();
  swift_beginAccess();
  v96 = v4;
  v32 = *(v4 + 40);
  if (!*(v32 + 16))
  {
    goto LABEL_15;
  }

  v33 = *(v4 + 40);

  v34 = sub_226E92000(a1, a2);
  if ((v35 & 1) == 0)
  {

LABEL_15:
    v68 = v24;
    sub_22766A6C0();

    v69 = sub_22766B380();
    v70 = sub_22766C890();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v98 = v72;
      *v71 = 141558274;
      *(v71 + 4) = 1752392040;
      *(v71 + 12) = 2080;
      *(v71 + 14) = sub_226E97AE8(a1, a2, &v98);
      _os_log_impl(&dword_226E8E000, v69, v70, "Expected progress update for bundle %{mask.hash}s, but bundle is not associated with URLs", v71, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x22AA9A450](v72, -1, -1);
      MEMORY[0x22AA9A450](v71, -1, -1);
    }

    (*(v92 + 1))(v10, v94);
    return (*(v93 + 56))(v88, 1, 1, v68);
  }

  v81 = *(*(v32 + 56) + 8 * v34);

  v36 = v96;
  swift_beginAccess();
  v37 = *(v36 + 32);
  if (!*(v37 + 16))
  {
LABEL_19:
    v74 = v24;

    sub_22766A6C0();

    v75 = sub_22766B380();
    v76 = sub_22766C890();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v97 = v78;
      *v77 = 141558274;
      *(v77 + 4) = 1752392040;
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_226E97AE8(a1, a2, &v97);
      _os_log_impl(&dword_226E8E000, v75, v76, "Progress tracker has no item identifier for bundle %{mask.hash}s", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x22AA9A450](v78, -1, -1);
      MEMORY[0x22AA9A450](v77, -1, -1);
    }

    (*(v92 + 1))(v12, v94);
    return (*(v93 + 56))(v88, 1, 1, v74);
  }

  v38 = sub_226E92000(a1, a2);
  if ((v39 & 1) == 0)
  {

    goto LABEL_19;
  }

  v40 = (*(v37 + 56) + 16 * v38);
  v41 = *v40;
  v42 = v40[1];

  sub_2276697B0();
  v43 = v82;
  sub_227665770();
  v44 = v93;
  v45 = v87;
  (*(v93 + 16))(v87, v43, v24);
  v46 = *(v81 + 16);
  if (v46)
  {
    v94 = v24;
    v47 = v81 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    swift_beginAccess();
    v49 = *(v20 + 16);
    v48 = v20 + 16;
    v91 = *(v48 + 56);
    v92 = v49;
    v80[3] = v86 + 16;
    v80[2] = v86 + 32;
    v80[1] = v86 + 8;
    v50 = (v48 - 8);
    v80[0] = v44 + 8;
    v90 = (v44 + 32);
    v89 = (v44 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v51 = v95;
    v49(v23, v47, v19);
    while (1)
    {
      v54 = *(v96 + 56);
      if (!*(v54 + 16))
      {
        goto LABEL_8;
      }

      v55 = *(v96 + 56);

      v56 = sub_226F3B058(v23);
      if ((v57 & 1) == 0)
      {
        break;
      }

      v58 = v85;
      v59 = v86;
      v60 = v23;
      v61 = v48;
      v62 = v19;
      v63 = v84;
      (*(v86 + 16))(v84, *(v54 + 56) + *(v86 + 72) * v56, v85);

      v64 = v83;
      v65 = v63;
      v19 = v62;
      v48 = v61;
      v23 = v60;
      v45 = v87;
      (*(v59 + 32))(v83, v65, v58);
      sub_227665760();
      v66 = *(v59 + 8);
      v51 = v95;
      v66(v64, v58);
      (*v50)(v23, v19);
      v67 = v94;
      (*v80[0])(v45, v94);
      (*v90)(v45, v51, v67);
LABEL_9:
      v47 += v91;
      if (!--v46)
      {

        v79 = v88;
        v44 = v93;
        v24 = v94;
        goto LABEL_24;
      }

      v92(v23, v47, v19);
    }

LABEL_8:
    (*v50)(v23, v19);
    v52 = *v90;
    v53 = v94;
    (*v90)(v51, v45, v94);
    v52(v45, v51, v53);
    goto LABEL_9;
  }

  v79 = v88;
LABEL_24:
  (*(v44 + 8))(v82, v24);
  (*(v44 + 32))(v79, v87, v24);
  return (*(v44 + 56))(v79, 0, 1, v24);
}

uint64_t sub_2270A944C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  v27 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;

  *(inited + 32) = sub_2276633E0();
  *(inited + 40) = v9;
  *(inited + 48) = sub_227663410();
  *(inited + 56) = v10;
  v11 = sub_227148E68(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &unk_27D7BE670, &unk_227674260);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = v7;
  sub_226FC91B0(v11, sub_2270ABE5C, 0, isUniquelyReferenced_nonNull_native, v29);

  if (v3)
  {

    __break(1u);

    __break(1u);
  }

  else
  {
    v13 = a1[4];
    a1[4] = v29[0];

    swift_beginAccess();
    v14 = a1[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA490, &qword_227678D00);
    v15 = swift_initStackObject();
    *(v15 + 16) = v27;

    *(v15 + 32) = sub_2276633E0();
    *(v15 + 40) = v16;
    *(v15 + 48) = a3;

    v17 = sub_227149DB0(v15);
    swift_setDeallocating();
    sub_226E97D1C(v15 + 32, &qword_27D7BA498, &unk_227678D08);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = v14;
    sub_2270ABEEC(v17, sub_2270ABEA4, 0, v18, v28);

    v19 = a1[5];
    a1[5] = v28[0];

    v20 = swift_beginAccess();
    v21 = a1[6];
    MEMORY[0x28223BE20](v20);
    v26[2] = a2;

    v23 = sub_2270A85DC(v22, sub_2270AC178, v26, a3, MEMORY[0x277CC9260]);

    v24 = a1[6];
    a1[6] = v23;
  }

  return result;
}

uint64_t sub_2270A9750@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_226F3B058(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_2276633E0();
  *(inited + 40) = v10;
  v23 = v8;
  sub_22745F204(inited);
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A0, &qword_227678D18);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A8, &qword_227678D20) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_227670CD0;
  v16 = v15 + v14;
  v17 = v12[14];
  v18 = sub_2276624A0();
  (*(*(v18 - 8) + 16))(v16, a2, v18);
  *(v16 + v17) = v11;

  v19 = sub_227149DC4(v15);
  swift_setDeallocating();
  sub_226E97D1C(v16, &qword_27D7BA4A8, &qword_227678D20);
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v5;
  sub_2270AC194(v19, sub_2270ABDA8, 0, isUniquelyReferenced_nonNull_native, &v23);
  if (v3)
  {

    __break(1u);
  }

  else
  {

    *a3 = v23;
  }

  return result;
}

uint64_t sub_2270A99BC(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = v57 - v7;
  v63 = sub_2276624A0();
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v63);
  v58 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276633E0();
  v13 = v12;
  swift_beginAccess();
  v14 = a1[5];
  if (*(v14 + 16))
  {
    v15 = a1[5];

    v16 = sub_226E92000(v11, v13);
    v18 = v17;

    if (v18)
    {
      v19 = *(*(v14 + 56) + 8 * v16);

      v20 = *(v19 + 16);
      if (v20)
      {
        v57[2] = a2;
        v57[3] = v2;
        v21 = v8 + 16;
        v61 = *(v8 + 16);
        v62 = v8 + 16;
        v22 = *(v8 + 80);
        v57[1] = v19;
        v23 = v19 + ((v22 + 32) & ~v22);
        v24 = *(v21 + 56);
        v25 = (v21 - 8);
        v26 = v58;
        v27 = v59;
        v61(v58, v23, v63);
        while (1)
        {
          swift_beginAccess();
          v29 = a1[6];
          v30 = sub_226F3B058(v26);
          if (v31)
          {
            v32 = v30;
            v33 = a1[6];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v35 = a1[6];
            v64 = v35;
            a1[6] = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_226FF3618();
              v35 = v64;
            }

            (*v25)(*(v35 + 48) + v32 * v24, v63);
            v36 = *(*(v35 + 56) + 8 * v32);

            sub_227368558(v32, v35);
            a1[6] = v35;
          }

          swift_endAccess();
          swift_beginAccess();
          v37 = a1[7];
          v38 = sub_226F3B058(v26);
          if (v39)
          {
            v40 = v38;
            v60 = v20;
            v41 = a1[7];
            v42 = swift_isUniquelyReferenced_nonNull_native();
            v43 = a1[7];
            v64 = v43;
            a1[7] = 0x8000000000000000;
            v44 = a1;
            if (!v42)
            {
              sub_226FF3640();
              v43 = v64;
            }

            (*v25)(*(v43 + 48) + v40 * v24, v63);
            v45 = *(v43 + 56);
            v46 = sub_227663CD0();
            v47 = *(v46 - 8);
            v48 = v45 + *(v47 + 72) * v40;
            v27 = v59;
            (*(v47 + 32))(v59, v48, v46);
            sub_227368214(v40, v43);
            v49 = v44[7];
            v44[7] = v43;

            (*(v47 + 56))(v27, 0, 1, v46);
            v26 = v58;
            a1 = v44;
            v20 = v60;
          }

          else
          {
            v28 = sub_227663CD0();
            (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
          }

          sub_226E97D1C(v27, &qword_27D7B9648, &unk_227674880);
          swift_endAccess();
          (*v25)(v26, v63);
          v23 += v24;
          if (!--v20)
          {
            break;
          }

          v61(v26, v23, v63);
        }
      }
    }
  }

  v50 = sub_2276633E0();
  v52 = v51;
  swift_beginAccess();
  sub_22736380C(0, v50, v52);
  swift_endAccess();
  v53 = sub_2276633E0();
  v55 = v54;
  swift_beginAccess();
  sub_22736384C(0, 0, v53, v55);
  return swift_endAccess();
}

uint64_t sub_2270A9EA8(void *a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v282 = a3;
  v5 = sub_22766A240();
  v261 = *(v5 - 8);
  v6 = *(v261 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v251 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v273 = &v251 - v11;
  v271 = sub_227665780();
  v272 = *(v271 - 8);
  v12 = *(v272 + 64);
  v13 = MEMORY[0x28223BE20](v271);
  v15 = &v251 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v260 = &v251 - v17;
  MEMORY[0x28223BE20](v16);
  v268 = &v251 - v18;
  v285 = sub_227663CD0();
  v277 = *(v285 - 1);
  v19 = *(v277 + 64);
  v20 = MEMORY[0x28223BE20](v285);
  v267 = &v251 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v266 = &v251 - v22;
  v23 = sub_2276624A0();
  v265 = *(v23 - 8);
  v24 = *(v265 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v279 = &v251 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v269 = &v251 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v262 = &v251 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v251 - v32;
  MEMORY[0x28223BE20](v31);
  v278 = (&v251 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v280 = &v251 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v274 = &v251 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v251 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v270 = &v251 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v251 - v46;
  result = swift_beginAccess();
  v286 = a1;
  if (!*(a1[6] + 16))
  {
    return result;
  }

  v253 = v15;
  v254 = v8;

  sub_226F3B058(a2);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
    return result;
  }

  v51 = v286;
  swift_beginAccess();
  v52 = v51[7];
  v53 = *(v52 + 16);
  v259 = a2;
  v264 = v5;
  if (v53)
  {

    v54 = sub_226F3B058(a2);
    v56 = v55;
    if (v55)
    {
      (*(v277 + 16))(v47, *(v52 + 56) + *(v277 + 72) * v54, v285);
      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    LODWORD(v263) = v56 ^ 1;
  }

  else
  {
    v57 = 1;
    LODWORD(v263) = 1;
  }

  v58 = v277;
  v59 = (v277 + 56);
  v60 = *(v277 + 56);
  v61 = v285;
  v60(v47, v57, 1, v285);
  sub_226E97D1C(v47, &qword_27D7B9648, &unk_227674880);
  v62 = *(v265 + 16);
  v63 = v278;
  v284 = v265 + 16;
  v283 = v62;
  (v62)(v278, v259, v23);
  v64 = *(v58 + 16);
  v65 = v270;
  v276 = v58 + 16;
  v275 = v64;
  v64(v270, v282, v61);
  v282 = v59;
  v281 = v60;
  v60(v65, 0, 1, v61);
  v66 = v286;
  swift_beginAccess();
  sub_227363954(v65, v63);
  result = swift_endAccess();
  if ((v263 & 1) == 0)
  {
    v68 = v66;
    goto LABEL_110;
  }

  v67 = v66[6];
  v68 = v66;
  if (!*(v67 + 16))
  {
    v70 = v259;
LABEL_51:
    v72 = v269;
    goto LABEL_52;
  }

  v69 = v66[6];

  v70 = v259;
  v71 = sub_226F3B058(v259);
  v72 = v269;
  if (v73)
  {
    v74 = *(*(v67 + 56) + 8 * v71);

    v75 = *(v74 + 2);
    result = swift_beginAccess();
    v263 = v75;
    if (v75)
    {
      v76 = 0;
      v258 = v74 + 32;
      v77 = (v265 + 8);
      v270 = MEMORY[0x277D84F90];
      v252 = v74;
      v251 = v43;
      while (1)
      {
        if (v76 >= *(v74 + 2))
        {
          goto LABEL_174;
        }

        v78 = v74;
        v79 = &v258[16 * v76];
        v80 = *v79;
        v81 = v79[1];
        ++v76;
        v82 = v68[2];

        sub_227669690();
        v83 = v68[5];
        if (!*(v83 + 16))
        {
          v74 = v78;
          goto LABEL_15;
        }

        v84 = v68[5];

        v257 = v80;
        v278 = v81;
        v85 = sub_226E92000(v80, v81);
        if ((v86 & 1) == 0)
        {
          v74 = v78;
          goto LABEL_33;
        }

        v87 = *(*(v83 + 56) + 8 * v85);

        v88 = *(v87 + 16);
        if (!v88)
        {
          v74 = v252;
LABEL_33:

LABEL_15:
          v68 = v286;
          goto LABEL_16;
        }

        v256 = v76;
        v89 = 0;
        v90 = (*(v265 + 80) + 32) & ~*(v265 + 80);
        v255 = v87;
        v91 = v87 + v90;
        v92 = *(v265 + 72);
        v93 = v251;
        do
        {
          (v283)(v33, v91, v23);
          v94 = v286[7];
          if (*(v94 + 16))
          {
            v95 = v286[7];

            v96 = sub_226F3B058(v33);
            if (v97)
            {
              v275(v93, *(v94 + 56) + *(v277 + 72) * v96, v285);
              (*v77)(v33, v23);

              v98 = 0;
              v99 = 1;
              goto LABEL_27;
            }
          }

          (*v77)(v33, v23);
          v99 = 0;
          v98 = 1;
LABEL_27:
          v281(v93, v98, 1, v285);
          result = sub_226E97D1C(v93, &qword_27D7B9648, &unk_227674880);
          v100 = __OFADD__(v89, v99);
          v89 += v99;
          if (v100)
          {
            goto LABEL_168;
          }

          v91 += v92;
          --v88;
        }

        while (v88);

        if (v89 == 1)
        {
          v101 = v270;
          result = swift_isUniquelyReferenced_nonNull_native();
          v102 = v101;
          v287 = v101;
          v74 = v252;
          if ((result & 1) == 0)
          {
            result = sub_226F1EF90(0, *(v101 + 2) + 1, 1);
            v102 = v287;
          }

          v103 = v278;
          v104 = v257;
          v106 = *(v102 + 2);
          v105 = *(v102 + 3);
          if (v106 >= v105 >> 1)
          {
            result = sub_226F1EF90(v105 > 1, v106 + 1, 1);
            v103 = v278;
            v102 = v287;
          }

          *(v102 + 2) = v106 + 1;
          v270 = v102;
          v107 = &v102[16 * v106];
          *(v107 + 4) = v104;
          *(v107 + 5) = v103;
          v76 = v256;
          v68 = v286;
          if (v256 == v263)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v68 = v286;
          v74 = v252;
          v76 = v256;
LABEL_16:

          if (v76 == v263)
          {
            goto LABEL_44;
          }
        }
      }
    }

    v270 = MEMORY[0x277D84F90];
LABEL_44:

    result = v270;
    v108 = *(v270 + 2);
    if (v108)
    {
      v109 = 0;
      v110 = (v270 + 40);
      v70 = v259;
      do
      {
        if (v109 >= *(result + 16))
        {
          goto LABEL_173;
        }

        ++v109;
        v111 = *v110;
        v112 = v286[3];
        v287 = *(v110 - 1);
        v288 = v111;
        sub_2270ABD18();

        sub_22766A8C0();

        v110 += 2;
        result = v270;
      }

      while (v108 != v109);
    }

    else
    {
      v70 = v259;
    }

    v68 = v286;
    goto LABEL_51;
  }

LABEL_52:
  v113 = v68[6];
  v114 = v262;
  if (!*(v113 + 16))
  {
    goto LABEL_111;
  }

  v115 = v68[6];

  v116 = sub_226F3B058(v70);
  if ((v117 & 1) == 0)
  {

    goto LABEL_111;
  }

  v118 = *(*(v113 + 56) + 8 * v116);

  v119 = *(v118 + 2);
  result = swift_beginAccess();
  v278 = (v265 + 8);
  v257 = v119;
  if (v119)
  {
    v120 = 0;
    v256 = v118 + 32;
    v258 = MEMORY[0x277D84F90];
    v255 = v118;
    while (1)
    {
      if (v120 >= *(v118 + 2))
      {
        goto LABEL_175;
      }

      v270 = v120;
      v121 = &v256[16 * v120];
      v122 = *v121;
      v123 = v121[1];
      v124 = v68[2];

      sub_227669690();
      v125 = v68[5];
      v126 = *(v125 + 16);
      v263 = v122;
      if (v126)
      {

        v127 = sub_226E92000(v122, v123);
        if (v128)
        {
          v129 = *(*(v125 + 56) + 8 * v127);

          v130 = *(v129 + 2);
          if (v130)
          {
            v131 = 0;
            v132 = (*(v265 + 80) + 32) & ~*(v265 + 80);
            v252 = v129;
            v133 = &v129[v132];
            v134 = *(v265 + 72);
            while (1)
            {
              (v283)(v114, v133, v23);
              v135 = v286[7];
              if (!*(v135 + 16))
              {
                goto LABEL_67;
              }

              v136 = v286[7];

              v137 = sub_226F3B058(v114);
              if ((v138 & 1) == 0)
              {
                break;
              }

              v275(v274, *(v135 + 56) + *(v277 + 72) * v137, v285);
              (*v278)(v114, v23);

              v139 = 0;
              v140 = 1;
LABEL_68:
              v141 = v274;
              v281(v274, v139, 1, v285);
              result = sub_226E97D1C(v141, &qword_27D7B9648, &unk_227674880);
              v100 = __OFADD__(v131, v140);
              v131 += v140;
              if (v100)
              {
                goto LABEL_169;
              }

              v133 += v134;
              if (!--v130)
              {

                goto LABEL_74;
              }
            }

LABEL_67:
            (*v278)(v114, v23);
            v140 = 0;
            v139 = 1;
            goto LABEL_68;
          }

          v131 = 0;
LABEL_74:
          v68 = v286;
          v72 = v269;
          goto LABEL_75;
        }
      }

      v131 = 0;
LABEL_75:
      ++v270;
      v142 = v68[5];
      if (*(v142 + 16))
      {
        v143 = v68[5];

        v144 = sub_226E92000(v263, v123);
        if ((v145 & 1) == 0)
        {

          goto LABEL_56;
        }

        v146 = *(*(v142 + 56) + 8 * v144);

        v147 = *(v146 + 16);

        if (v131 != v147)
        {

          v68 = v286;
          v72 = v269;
          goto LABEL_57;
        }

        v148 = v258;
        result = swift_isUniquelyReferenced_nonNull_native();
        v287 = v148;
        v118 = v255;
        if ((result & 1) == 0)
        {
          result = sub_226F1EF90(0, *(v148 + 2) + 1, 1);
          v148 = v287;
        }

        v150 = *(v148 + 2);
        v149 = *(v148 + 3);
        if (v150 >= v149 >> 1)
        {
          result = sub_226F1EF90(v149 > 1, v150 + 1, 1);
          v148 = v287;
        }

        *(v148 + 2) = v150 + 1;
        v258 = v148;
        v151 = &v148[16 * v150];
        *(v151 + 4) = v263;
        *(v151 + 5) = v123;
        v120 = v270;
        v68 = v286;
        v72 = v269;
        if (v270 == v257)
        {
          goto LABEL_88;
        }
      }

      else
      {
LABEL_56:

LABEL_57:
        v118 = v255;
        v120 = v270;
        if (v270 == v257)
        {
          goto LABEL_88;
        }
      }
    }
  }

  v258 = MEMORY[0x277D84F90];
LABEL_88:

  v152 = v258;
  v153 = *(v258 + 2);
  result = swift_beginAccess();
  if (v153)
  {
    v154 = 0;
    v155 = v152 + 32;
    v263 = v277 + 32;
    v262 = (v277 + 8);
    v252 = v153;
    v255 = v152 + 32;
    while (1)
    {
      if (v154 >= *(v258 + 2))
      {
        goto LABEL_176;
      }

      v158 = &v155[16 * v154];
      v160 = *v158;
      v159 = v158[1];
      v161 = v68[2];

      sub_227669690();
      v162 = v68[5];
      v163 = *(v162 + 16);
      v274 = v159;
      v270 = v160;
      if (!v163)
      {
        goto LABEL_91;
      }

      v164 = sub_226E92000(v160, v159);
      if ((v165 & 1) == 0)
      {
        break;
      }

      v166 = *(*(v162 + 56) + 8 * v164);

      v167 = *(v166 + 2);
      if (v167)
      {
        v257 = v154;
        v156 = 0;
        v168 = (*(v265 + 80) + 32) & ~*(v265 + 80);
        v256 = v166;
        v169 = &v166[v168];
        v170 = *(v265 + 72);
        while (1)
        {
          (v283)(v72, v169, v23);
          v171 = v286[7];
          if (*(v171 + 16))
          {
            v172 = v286[7];

            v173 = sub_226F3B058(v72);
            if (v174)
            {
              v175 = v277;
              v176 = v23;
              v177 = v267;
              v178 = v285;
              v275(v267, *(v171 + 56) + *(v277 + 72) * v173, v285);

              v179 = v266;
              v180 = v177;
              v23 = v176;
              (*(v175 + 32))(v266, v180, v178);
              v181 = sub_227663CC0();
              v182 = v178;
              v72 = v269;
              (*(v175 + 8))(v179, v182);
              result = (*v278)(v72, v23);
              v100 = __OFADD__(v156, v181);
              v156 += v181;
              if (v100)
              {
                goto LABEL_172;
              }

              goto LABEL_100;
            }
          }

          (*v278)(v72, v23);
LABEL_100:
          v169 += v170;
          if (!--v167)
          {

            v153 = v252;
            v154 = v257;
            goto LABEL_108;
          }
        }
      }

      v156 = 0;
LABEL_108:
      v155 = v255;
LABEL_92:
      ++v154;
      v157 = v286[3];
      v287 = v270;
      v288 = v274;
      v289 = v156;
      v68 = v286;
      sub_2270ABCC4();

      sub_22766A8C0();
      result = swift_bridgeObjectRelease_n();
      if (v154 == v153)
      {
        goto LABEL_109;
      }
    }

LABEL_91:
    v156 = 0;
    goto LABEL_92;
  }

LABEL_109:

LABEL_110:
  v70 = v259;
LABEL_111:
  v183 = v68[6];
  if (!*(v183 + 16))
  {
    return result;
  }

  v184 = v68[6];

  v185 = sub_226F3B058(v70);
  if ((v186 & 1) == 0)
  {
  }

  v187 = *(*(v183 + 56) + 8 * v185);

  v188 = *(v187 + 16);
  result = swift_beginAccess();
  v270 = v188;
  if (!v188)
  {
    v274 = MEMORY[0x277D84F90];
    v222 = v273;
    v224 = v271;
LABEL_149:

    v230 = *(v274 + 2);
    if (v230)
    {
      v231 = 0;
      v232 = (v272 + 48);
      v233 = (v272 + 32);
      result = v274;
      v234 = (v274 + 40);
      v285 = MEMORY[0x277D84F90];
      while (v231 < *(result + 16))
      {
        v235 = *(v234 - 1);
        v236 = *v234;

        sub_2270A8B30(v235, v236, v222);
        v222 = v273;

        if ((*v232)(v222, 1, v224) == 1)
        {
          sub_226E97D1C(v222, &qword_27D7BA488, &unk_227678CE0);
        }

        else
        {
          v237 = *v233;
          (*v233)(v268, v222, v224);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v238 = v285;
          }

          else
          {
            v238 = sub_2273A6624(0, v285[2] + 1, 1, v285);
          }

          v240 = v238[2];
          v239 = v238[3];
          if (v240 >= v239 >> 1)
          {
            v238 = sub_2273A6624(v239 > 1, v240 + 1, 1, v238);
          }

          v238[2] = v240 + 1;
          v241 = (*(v272 + 80) + 32) & ~*(v272 + 80);
          v285 = v238;
          v242 = v238 + v241 + *(v272 + 72) * v240;
          v224 = v271;
          v237(v242, v268, v271);
          v222 = v273;
        }

        ++v231;
        v234 += 2;
        result = v274;
        if (v230 == v231)
        {
          goto LABEL_162;
        }
      }

      goto LABEL_170;
    }

    v285 = MEMORY[0x277D84F90];
LABEL_162:

    v243 = v285[2];
    if (v243)
    {
      v244 = v68[3];
      v286 = *(v272 + 16);
      v245 = v285 + ((*(v272 + 80) + 32) & ~*(v272 + 80));
      v284 = *(v272 + 72);
      v283 = (v261 + 8);
      v272 += 16;
      v282 = (v272 - 8);
      v246 = v254;
      v247 = v253;
      v248 = v260;
      do
      {
        v249 = v286;
        (v286)(v248, v245, v224);
        v249(v247, v248, v224);
        sub_22766A230();
        v250 = v264;
        sub_22766A8C0();
        (*v283)(v246, v250);
        (*v282)(v248, v224);
        v245 += v284;
        --v243;
      }

      while (v243);
    }
  }

  v189 = 0;
  v190 = (v265 + 8);
  v274 = MEMORY[0x277D84F90];
  v191 = (v187 + 32);
  v267 = (v187 + 32);
  v263 = v187;
  while (1)
  {
    if (v189 >= *(v187 + 16))
    {
      goto LABEL_171;
    }

    v192 = v187;
    v193 = &v191[16 * v189];
    v195 = *v193;
    v194 = *(v193 + 1);
    v196 = v68[2];

    sub_227669690();
    v197 = v68[5];
    v198 = *(v197 + 16);
    v278 = v195;
    if (!v198)
    {
      goto LABEL_129;
    }

    v199 = sub_226E92000(v195, v194);
    if ((v200 & 1) == 0)
    {

LABEL_129:
      v203 = 0;
      goto LABEL_130;
    }

    v269 = v189;
    v201 = *(*(v197 + 56) + 8 * v199);

    v202 = *(v201 + 2);
    if (v202)
    {
      break;
    }

    v203 = 0;
    v189 = v269;
LABEL_130:
    ++v189;
    v215 = v286[5];
    if (!*(v215 + 16))
    {
      goto LABEL_136;
    }

    v216 = v286[5];

    v217 = sub_226E92000(v278, v194);
    if ((v218 & 1) == 0)
    {

LABEL_136:

      v68 = v286;
      v222 = v273;
      goto LABEL_137;
    }

    v219 = v189;
    v220 = *(*(v215 + 56) + 8 * v217);

    v221 = *(v220 + 16);

    if (v203 == v221)
    {
      v225 = v274;
      result = swift_isUniquelyReferenced_nonNull_native();
      v226 = v225;
      v290 = v225;
      if ((result & 1) == 0)
      {
        result = sub_226F1EF90(0, *(v225 + 2) + 1, 1);
        v226 = v290;
      }

      v222 = v273;
      v228 = *(v226 + 2);
      v227 = *(v226 + 3);
      if (v228 >= v227 >> 1)
      {
        result = sub_226F1EF90(v227 > 1, v228 + 1, 1);
        v222 = v273;
        v226 = v290;
      }

      *(v226 + 2) = v228 + 1;
      v274 = v226;
      v229 = &v226[16 * v228];
      *(v229 + 4) = v278;
      *(v229 + 5) = v194;
      v189 = v219;
      v223 = v219 == v270;
      v68 = v286;
      v191 = v267;
      goto LABEL_138;
    }

    v68 = v286;
    v222 = v273;
    v189 = v219;
    v191 = v267;
LABEL_137:
    v223 = v189 == v270;
LABEL_138:
    v187 = v192;
    v224 = v271;
    if (v223)
    {
      goto LABEL_149;
    }
  }

  v203 = 0;
  v204 = (*(v265 + 80) + 32) & ~*(v265 + 80);
  v266 = v201;
  v205 = &v201[v204];
  v206 = *(v265 + 72);
  while (1)
  {
    v207 = v279;
    (v283)(v279, v205, v23);
    v208 = v286[7];
    if (*(v208 + 16))
    {
      v209 = v286[7];

      v210 = sub_226F3B058(v207);
      if (v211)
      {
        v275(v280, *(v208 + 56) + *(v277 + 72) * v210, v285);
        (*v190)(v207, v23);

        v212 = 0;
        v213 = 1;
        goto LABEL_125;
      }
    }

    (*v190)(v207, v23);
    v213 = 0;
    v212 = 1;
LABEL_125:
    v214 = v280;
    v281(v280, v212, 1, v285);
    result = sub_226E97D1C(v214, &qword_27D7B9648, &unk_227674880);
    v100 = __OFADD__(v203, v213);
    v203 += v213;
    if (v100)
    {
      break;
    }

    v205 += v206;
    if (!--v202)
    {

      v192 = v263;
      v189 = v269;
      v191 = v267;
      goto LABEL_130;
    }
  }

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
  return result;
}

uint64_t sub_2270AB914()
{
  v1 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  return sub_2276696A0();
}

uint64_t sub_2270AB990(uint64_t a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v2;
  sub_22766A6C0();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v11 = sub_2270A86E8(a1);
  v12 = *(v10 + 16);
  v15 = v10;
  v16 = a2;
  v17 = v11;
  sub_2276696A0();
}

uint64_t sub_2270ABAF8(uint64_t a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v1;
  sub_22766A6C0();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v9 = *(v8 + 16);
  v12 = v8;
  v13 = a1;
  return sub_2276696A0();
}

unint64_t sub_2270ABCC4()
{
  result = qword_2813A0180;
  if (!qword_2813A0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A0180);
  }

  return result;
}

unint64_t sub_2270ABD18()
{
  result = qword_2813A5490;
  if (!qword_2813A5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A5490);
  }

  return result;
}

uint64_t sub_2270ABDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4B8, &unk_227678D30) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A8, &qword_227678D20) + 48);
  v6 = *(a1 + v4);
  v7 = sub_2276624A0();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
}

uint64_t sub_2270ABE5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_2270ABEA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_2270ABEEC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v40 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v6;
  while (v9)
  {
    v44 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v48[0] = *v17;
    v48[1] = v18;
    v48[2] = v19;

    a2(&v45, v48);

    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = *v49;
    v25 = sub_226E92000(v45, v46);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((v44 & 1) == 0)
      {
        sub_226FF3604();
      }
    }

    else
    {
      v30 = v49;
      sub_226FE8F60(v28, v44 & 1);
      v31 = *v30;
      v32 = sub_226E92000(v20, v21);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v25 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v49;
    if (v29)
    {

      v12 = v34[7];
      v13 = *(v12 + 8 * v25);
      *(v12 + 8 * v25) = v22;
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      v35 = (v34[6] + 16 * v25);
      *v35 = v20;
      v35[1] = v21;
      *(v34[7] + 8 * v25) = v22;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v14;
    v6 = v41;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_226EBB21C();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2270AC194(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v48 = sub_2276624A0();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v48);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4B0, &qword_227678D28);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v49 = a1;
  v50 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v51 = v18;
  v52 = 0;
  v53 = v21 & v19;
  v54 = a2;
  v55 = a3;
  v22 = (v9 + 32);
  v46 = (v9 + 8);
  v47 = v9;

  v45 = a3;

  while (1)
  {
    sub_2274E86FC(v16);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A8, &qword_227678D20);
    if ((*(*(v25 - 8) + 48))(v16, 1, v25) == 1)
    {
      sub_226EBB21C();
    }

    v26 = *(v25 + 48);
    v27 = *v22;
    (*v22)(v12, v16, v48);
    v28 = *&v16[v26];
    v29 = *v56;
    v31 = sub_226F3B058(v12);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_226FF3618();
      }
    }

    else
    {
      v36 = v56;
      sub_226FE8F74(v34, a4 & 1);
      v37 = *v36;
      v38 = sub_226F3B058(v12);
      if ((v35 & 1) != (v39 & 1))
      {
        goto LABEL_19;
      }

      v31 = v38;
    }

    v40 = *v56;
    if (v35)
    {
      (*v46)(v12, v48);
      v23 = v40[7];
      v24 = *(v23 + 8 * v31);
      *(v23 + 8 * v31) = v28;

      a4 = 1;
    }

    else
    {
      v40[(v31 >> 6) + 8] |= 1 << v31;
      v27((v40[6] + *(v47 + 72) * v31), v12, v48);
      *(v40[7] + 8 * v31) = v28;
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2270AC4D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_2270A8B30(v2, v3, a1);
}

void sub_2270AC50C(void *a1)
{
  v3 = [a1 sessionIdentifier];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [a1 workoutIdentifier];
  if (!v5)
  {

LABEL_6:
    v9 = sub_227664DD0();
    sub_226EB99C8(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51028], v9);
    swift_willThrow();
LABEL_7:

    return;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [a1 scores];
  if (v7)
  {
    v8 = v7;
    sub_227662590();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA928, &qword_22767A150);
  sub_2271058F4();
  sub_2276683D0();
  if (!v1)
  {
    [a1 workoutDuration];
    [a1 activityType];
    sub_227664060();
    goto LABEL_7;
  }
}

size_t static SessionScores.representativeSamples()()
{
  v62 = sub_2276640A0();
  v71 = *(v62 - 8);
  v0 = *(v71 + 64);
  MEMORY[0x28223BE20](v62);
  v70 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4C0, &qword_227678D60);
  v81 = *(v2 - 8);
  v4 = v81;
  v3 = v81;
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v58 - v6;
  v80 = sub_227669140();
  v83 = *(v80 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  v69 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v68 = &v58 - v13;
  v61 = sub_22766C090();
  v60 = sub_22766C090();
  sub_226F05E24();
  v59 = sub_22766CFA0();
  v73 = v105;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4C8, &qword_227678D68);
  v14 = *(v3 + 72);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v78 = (2 * v14);
  *(swift_allocObject() + 16) = xmmword_2276728D0;
  v100 = 0;
  LODWORD(v90) = 0;
  sub_2270AD31C();
  sub_227669100();
  v100 = 60;
  LODWORD(v90) = 1120403456;
  sub_227669100();
  v100 = 1;
  v82 = sub_2270AD370();
  v16 = sub_2276638F0();

  v105[0] = v16;
  *(swift_allocObject() + 16) = xmmword_227675BD0;
  v66 = v15;
  v100 = 0;
  LODWORD(v90) = 0;
  sub_227669100();
  v100 = 20;
  LODWORD(v90) = 1128792064;
  v79 = v14;
  sub_227669100();
  v100 = 60;
  LODWORD(v90) = 1101004800;
  sub_227669100();
  v100 = 1;
  v17 = sub_2276638F0();

  v105[1] = v17;
  v100 = MEMORY[0x277D84F90];
  sub_226F1FFC8(0, 2, 0);
  v18 = 0;
  v19 = 0;
  v20 = v100;
  v82 = (v81 + 16);
  v78 = (v81 + 8);
  v77 = v83 + 32;
  v21 = (v83 + 8);
  v22 = v72;
  v67 = v2;
  v65 = v83 + 16;
  v64 = v7;
  v63 = (v83 + 8);
  do
  {
    v75 = v18;
    v23 = v73[v19];
    v24 = *(v23 + 16);
    v76 = v20;
    v74 = v23;
    if (v24)
    {
      v90 = MEMORY[0x277D84F90];

      sub_226F1FFE8(0, v24, 0);
      v25 = v90;
      v26 = v23 + v66;
      v27 = *v82;
      do
      {
        v27(v7, v26, v2);
        sub_227669110();
        sub_227669120();
        sub_227669130();
        (*v78)(v7, v2);
        v90 = v25;
        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_226F1FFE8(v28 > 1, v29 + 1, 1);
          v25 = v90;
        }

        *(v25 + 16) = v29 + 1;
        v30 = v25 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v29;
        v31 = v80;
        (*(v83 + 32))(v30, v22, v80);
        v26 += v79;
        --v24;
      }

      while (v24);
      v21 = v63;
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
      v31 = v80;
    }

    v32 = *(v25 + 16);
    v33 = sub_226EB99C8(&qword_27D7BA4D8, MEMORY[0x277D53A28]);
    v90 = MEMORY[0x22AA98980](v32, v31, v33);
    v34 = *(v25 + 16);
    if (v34)
    {
      v35 = v25 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v81 = *(v83 + 72);
      v36 = *(v83 + 16);
      v37 = v69;
      v38 = v68;
      do
      {
        v36(v38, v35, v31);
        sub_2270BA524(v37, v38);
        (*v21)(v37, v31);
        v35 += v81;
        --v34;
      }

      while (v34);

      v22 = v72;
      v2 = v67;
      v7 = v64;
    }

    else
    {
    }

    v39 = v90;
    v20 = v76;
    v100 = v76;
    v41 = *(v76 + 16);
    v40 = *(v76 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_226F1FFC8((v40 > 1), v41 + 1, 1);
      v20 = v100;
    }

    *(v20 + 16) = v41 + 1;
    *(v20 + 8 * v41 + 32) = v39;
    v18 = 1;
    v19 = 1;
  }

  while ((v75 & 1) == 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4E0, &qword_227678D70);
  swift_arrayDestroy();
  sub_226F5D220();
  v42 = sub_22766CFA0();
  v98 = v60;
  v99 = v61;
  v100 = &v99;
  v101 = &v98;
  v96 = v20;
  v97 = v59;
  v102 = &v97;
  v103 = &v96;
  v95 = v42;
  v104 = &v95;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v91 = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4E8, &qword_227678D78);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v85 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v86 = v85;
  v87 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v88 = sub_226F5BF60(&qword_27D7BA4F0, &qword_27D7BA4E8, &qword_227678D78);
  v89 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v43 = sub_2276638E0();

  v44 = *(v43 + 16);
  if (v44)
  {
    v84 = MEMORY[0x277D84F90];
    result = sub_226F1F7C8(0, v44, 0);
    v46 = 0;
    v47 = v84;
    v80 = v71 + 32;
    v48 = (v43 + 80);
    v82 = v43;
    v81 = v44;
    while (v46 < *(v43 + 16))
    {
      v49 = *(v48 - 6);
      v50 = *(v48 - 5);
      v83 = v47;
      v51 = *(v48 - 4);
      v52 = *(v48 - 3);
      v53 = *(v48 - 2);
      v54 = *(v48 - 1);
      v55 = *v48;

      v47 = v83;
      sub_227664060();
      v84 = v47;
      v57 = *(v47 + 16);
      v56 = *(v47 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_226F1F7C8(v56 > 1, v57 + 1, 1);
        v47 = v84;
      }

      ++v46;
      *(v47 + 16) = v57 + 1;
      result = (*(v71 + 32))(v47 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v57, v70, v62);
      v48 += 7;
      v43 = v82;
      if (v81 == v46)
      {

        return v47;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2270AD31C()
{
  result = qword_27D7BA4D0;
  if (!qword_27D7BA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA4D0);
  }

  return result;
}

unint64_t sub_2270AD370()
{
  result = qword_281399190;
  if (!qword_281399190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399190);
  }

  return result;
}

uint64_t sub_2270AD7F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_22766D370();
  sub_22766C100();
  v13 = sub_22766D3F0();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v11 + 48) + 16 * v15);
      v18 = *v17 == a2 && v17[1] == a3;
      if (v18 || (sub_22766D190() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v22 = (*(v11 + 48) + 16 * v15);
    v23 = v22[1];
    *a1 = *v22;
    a1[1] = v23;

    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;

    sub_2270D9DCC(a2, a3, v15, isUniquelyReferenced_nonNull_native, a4, a5);
    *v5 = v24;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2270ADB0C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_2813A54C8, MEMORY[0x277D53DA0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270D9F68(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270ADDEC(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v68 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for SyncZoneChangeWindow();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v54 - v10;
  v55 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22766D370();
  v13 = sub_2276694E0();
  sub_226EB99C8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  v64 = v13;
  sub_22766BF60();
  v14 = (a2 + *(v4 + 20));
  v15 = *v14;
  v16 = v14[1];
  v60 = v14;
  sub_2276625A0();
  v17 = sub_22766D3F0();
  v65 = v11;
  v18 = -1 << *(v11 + 32);
  v19 = v17 & ~v18;
  v63 = v11 + 56;
  if (((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_62:
    v49 = v55;
    v50 = *v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v54;
    sub_226F48E08(a2, v54, type metadata accessor for SyncZoneChangeWindow);
    *&v67[0] = *v49;
    sub_2270DA608(v52, v19, isUniquelyReferenced_nonNull_native);
    *v49 = *&v67[0];
    sub_2271059DC(a2, v56, type metadata accessor for SyncZoneChangeWindow);
    result = 1;
    goto LABEL_63;
  }

  v59 = 0;
  v61 = ~v18;
  v62 = *(v5 + 72);
  v57 = a2;
  v58 = v4;
  while (1)
  {
    v20 = v62 * v19;
    sub_226F48E08(*(v65 + 48) + v62 * v19, v9, type metadata accessor for SyncZoneChangeWindow);
    sub_226EB99C8(&qword_28139B260, MEMORY[0x277D53DA0]);
    sub_22766C290();
    sub_22766C290();
    if (*&v67[0] == v66[0] && *(&v67[0] + 1) == v66[1])
    {
    }

    else
    {
      v22 = sub_22766D190();

      if ((v22 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v23 = &v9[*(v4 + 20)];
    v24 = *v23;
    v25 = v23[1];
    v26 = *v60;
    v27 = v60[1];
    v28 = v25 >> 62;
    v29 = v27 >> 62;
    if (v25 >> 62 == 3)
    {
      break;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        v31 = BYTE6(v25);
        if (v29 <= 1)
        {
          goto LABEL_35;
        }

        goto LABEL_40;
      }

      LODWORD(v31) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_67;
      }

      v31 = v31;
      goto LABEL_34;
    }

    if (v28 == 2)
    {
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      v35 = __OFSUB__(v33, v34);
      v31 = v33 - v34;
      if (v35)
      {
        goto LABEL_66;
      }

LABEL_34:
      if (v29 <= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }

    v31 = 0;
    if (v29 <= 1)
    {
LABEL_35:
      if (v29)
      {
        LODWORD(v36) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
        }

        v36 = v36;
      }

      else
      {
        v36 = BYTE6(v27);
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v29 != 2)
    {
      if (!v31)
      {
        goto LABEL_61;
      }

      goto LABEL_4;
    }

    v38 = *(v26 + 16);
    v37 = *(v26 + 24);
    v35 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v35)
    {
      goto LABEL_65;
    }

LABEL_42:
    if (v31 != v36)
    {
      goto LABEL_4;
    }

    if (v31 < 1)
    {
      goto LABEL_61;
    }

    if (v28 > 1)
    {
      if (v28 != 2)
      {
        *(v67 + 6) = 0;
        *&v67[0] = 0;
        goto LABEL_59;
      }

      v40 = *(v24 + 16);
      v39 = *(v24 + 24);
      v41 = sub_227662060();
      if (v41)
      {
        v42 = sub_227662090();
        if (__OFSUB__(v40, v42))
        {
          goto LABEL_70;
        }

        v41 += v40 - v42;
      }

      if (__OFSUB__(v39, v40))
      {
        goto LABEL_69;
      }

LABEL_57:
      sub_227662080();
      v45 = v59;
      sub_2275BA344(v41, v26, v27, v67);
      v59 = v45;
      v46 = v67[0];
      a2 = v57;
      goto LABEL_60;
    }

    if (v28)
    {
      v43 = v24;
      if (v24 >> 32 < v24)
      {
        goto LABEL_68;
      }

      v41 = sub_227662060();
      if (v41)
      {
        v44 = sub_227662090();
        if (__OFSUB__(v43, v44))
        {
          goto LABEL_71;
        }

        v41 += v43 - v44;
      }

      goto LABEL_57;
    }

    *&v67[0] = v24;
    WORD4(v67[0]) = v25;
    BYTE10(v67[0]) = BYTE2(v25);
    BYTE11(v67[0]) = BYTE3(v25);
    BYTE12(v67[0]) = BYTE4(v25);
    BYTE13(v67[0]) = BYTE5(v25);
LABEL_59:
    v47 = v59;
    sub_2275BA344(v67, v26, v27, v66);
    v59 = v47;
    v46 = v66[0];
LABEL_60:
    v4 = v58;
    if (v46)
    {
      goto LABEL_61;
    }

LABEL_4:
    sub_226F48E70(v9, type metadata accessor for SyncZoneChangeWindow);
    v19 = (v19 + 1) & v61;
    if (((*(v63 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  if (v24)
  {
    v30 = 0;
  }

  else
  {
    v30 = v25 == 0xC000000000000000;
  }

  v31 = 0;
  v32 = v30 && v27 >> 62 == 3;
  if (!v32 || v26 || v27 != 0xC000000000000000)
  {
    goto LABEL_34;
  }

LABEL_61:
  sub_226F48E70(v9, type metadata accessor for SyncZoneChangeWindow);
  sub_226F48E70(a2, type metadata accessor for SyncZoneChangeWindow);
  sub_226F48E08(*(v65 + 48) + v20, v56, type metadata accessor for SyncZoneChangeWindow);
  result = 0;
LABEL_63:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2270AE4A0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = type metadata accessor for DirtySyncZone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v28 = &v28 - v10;
  v29 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22766D370();
  sub_2276694E0();
  sub_226EB99C8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v32 = v4;
  v13 = *(v4 + 20);
  sub_227662750();
  sub_226EB99C8(&qword_2813A5820, MEMORY[0x277CC9578]);
  v31 = v13;
  sub_22766BF60();
  v14 = sub_22766D3F0();
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v14 & ~v15;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    do
    {
      sub_226F48E08(*(v34 + 48) + v18 * v16, v9, type metadata accessor for DirtySyncZone);
      sub_226EB99C8(&qword_28139B260, MEMORY[0x277D53DA0]);
      sub_22766C290();
      sub_22766C290();
      if (v37 == v35 && v38 == v36)
      {
      }

      else
      {
        v20 = sub_22766D190();

        if ((v20 & 1) == 0)
        {
          sub_226F48E70(v9, type metadata accessor for DirtySyncZone);
          goto LABEL_4;
        }
      }

      v21 = &v9[*(v32 + 20)];
      v22 = sub_227662700();
      sub_226F48E70(v9, type metadata accessor for DirtySyncZone);
      if (v22)
      {
        sub_226F48E70(a2, type metadata accessor for DirtySyncZone);
        sub_226F48E08(*(v34 + 48) + v18 * v16, v30, type metadata accessor for DirtySyncZone);
        return 0;
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  v24 = v29;
  v25 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v28;
  sub_226F48E08(a2, v28, type metadata accessor for DirtySyncZone);
  v37 = *v24;
  sub_2270DAE50(v27, v16, isUniquelyReferenced_nonNull_native);
  *v24 = v37;
  sub_2271059DC(a2, v30, type metadata accessor for DirtySyncZone);
  return 1;
}

uint64_t sub_2270AE890(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22766D370();
  sub_22766C100();
  v9 = sub_22766D3F0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22766D190() & 1) != 0)
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

    sub_2270DB254(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2270AEA04(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664140();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139B9C0, MEMORY[0x277D506C0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139B9B8, MEMORY[0x277D506C0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DB3D4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270AECE4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227668480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B84C8, MEMORY[0x277D534C8]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA730, MEMORY[0x277D534C8]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DB69C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270AEFC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_22766D370();
  v28 = a3;
  sub_227668BD0();
  v10 = sub_22766D3F0();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(v8 + 48) + 24 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_226EE2880(*v14, v16, *(v14 + 16));
      v18 = MEMORY[0x22AA94EE0](v15, v16, v17, a2, v28, a4);
      sub_226EE2898(v15, v16, v17);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EE2898(a2, v28, a4);
    v22 = *(v8 + 48) + 24 * v12;
    v23 = *v22;
    v24 = *(v22 + 8);
    *a1 = *v22;
    *(a1 + 8) = v24;
    v25 = *(v22 + 16);
    *(a1 + 16) = v25;
    sub_226EE2880(v23, v24, v25);
    return 0;
  }

  else
  {
LABEL_5:
    v19 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_226EE2880(a2, v28, a4);
    sub_2270DB964(a2, v28, a4, v12, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    *a1 = a2;
    *(a1 + 8) = v28;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t sub_2270AF194(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276653A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B88B8, MEMORY[0x277D51610]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA940, MEMORY[0x277D51610]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DBBA4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270AF474(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v8 = *(*v4 + 40);
  v21 = a4 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);
  sub_226F488B4();
  sub_227663B10();
  v9 = sub_22766D3F0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    sub_226F517D0();
    sub_226F51824();
    while (1)
    {
      v13 = *(v7 + 48) + 24 * v11;
      v25 = *v13;
      v27 = *(v13 + 16);
      if (sub_227663B20())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EB2DFC(a2, a3, a4 & 1);
    v17 = *(v7 + 48) + 24 * v11;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    *a1 = *v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    sub_226EB396C(v18, v19, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v22;
    sub_226EB396C(a2, a3, v21);
    sub_2270DBE6C(a2, a3, v21, v11, isUniquelyReferenced_nonNull_native);
    *v22 = v26;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v21;
    return 1;
  }
}

uint64_t sub_2270AF674(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663A30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139BC90, MEMORY[0x277D50278]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139BC88, MEMORY[0x277D50278]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DC0A4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270AF954(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v8 = *(*v4 + 40);
  v21 = a4 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
  sub_226F4364C();
  sub_227663B10();
  v9 = sub_22766D3F0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    sub_226F50DC8();
    sub_226F50E1C();
    while (1)
    {
      v13 = *(v7 + 48) + 24 * v11;
      v25 = *v13;
      v27 = *(v13 + 16);
      if (sub_227663B20())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EB2DFC(a2, a3, a4 & 1);
    v17 = *(v7 + 48) + 24 * v11;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    *a1 = *v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    sub_226EB396C(v18, v19, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v22;
    sub_226EB396C(a2, a3, v21);
    sub_2270DC36C(a2, a3, v21, v11, isUniquelyReferenced_nonNull_native);
    *v22 = v26;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v21;
    return 1;
  }
}

uint64_t sub_2270AFB54(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666BF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_2813A5660, MEMORY[0x277D528B8]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8AF8, MEMORY[0x277D528B8]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DC5A4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270AFE34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663AB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B89F0, MEMORY[0x277D502D0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BAB20, MEMORY[0x277D502D0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DC86C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B0114(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663E50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B8688, MEMORY[0x277D50520]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8BC8, MEMORY[0x277D50520]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DCB34(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B03F4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276655A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B8690, MEMORY[0x277D51730]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8B98, MEMORY[0x277D51730]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DCDFC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B06D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664650();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B8698, MEMORY[0x277D50A68]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8BB8, MEMORY[0x277D50A68]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DD0C4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B09B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663610();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B86A0, MEMORY[0x277D4FFF0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8BA8, MEMORY[0x277D4FFF0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DD38C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B0C94(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663680();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B86A8, MEMORY[0x277D50018]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8B88, MEMORY[0x277D50018]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DD654(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B0F74(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B86B0, MEMORY[0x277D4FEC8]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8B78, MEMORY[0x277D4FEC8]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DD91C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B1254(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663C90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B86B8, MEMORY[0x277D503E8]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8B68, MEMORY[0x277D503E8]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DDBE4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B1534(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664E20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_2813A5750, MEMORY[0x277D51068]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8AE0, MEMORY[0x277D51068]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DDEAC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B1814(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139BCA8, MEMORY[0x277D501C8]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8678, MEMORY[0x277D501C8]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DE174(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B1AF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276687D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139B498, MEMORY[0x277D535A0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA518, MEMORY[0x277D535A0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DE43C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B1DD4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276668A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139B620, MEMORY[0x277D526D0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA528, MEMORY[0x277D526D0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DE704(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B20B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666070();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139B6D0, MEMORY[0x277D52038]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA538, MEMORY[0x277D52038]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DE9CC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B2394(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663180();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139BD58, MEMORY[0x277D4FCA8]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139BD50, MEMORY[0x277D4FCA8]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DEC94(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B2674(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139BDE0, MEMORY[0x277CC9260]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139BDD8, MEMORY[0x277CC9260]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DEF5C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B2954(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_2813A5800, MEMORY[0x277D4FF88]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B89E0, MEMORY[0x277D4FF88]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DF224(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B2C34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227665490();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B8628, MEMORY[0x277D51680]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BAAD0, MEMORY[0x277D51680]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DF4EC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B2F14(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227665680();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139B7E8, MEMORY[0x277D51898]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8900, MEMORY[0x277D51898]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DF7B4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B31F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_22766D370();
  v34 = v4;
  if (a4)
  {
    if (a4 != 1)
    {
      MEMORY[0x22AA996B0](2);
      sub_22766C100();
      goto LABEL_7;
    }

    MEMORY[0x22AA996B0](1);
    sub_227664C10();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_227663FB0();
  }

  sub_22766C100();

LABEL_7:
  v35 = a3;
  v11 = sub_22766D3F0();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_29:
    v25 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v34;
    sub_226F04958(a2, v35, a4);
    sub_2270E5920(a2, v35, a4, v13, isUniquelyReferenced_nonNull_native, &qword_27D7BAA90, &qword_227679170, &type metadata for BookmarkCatalogFilterProperty, sub_226F04958);
    *v34 = v36;
    *a1 = a2;
    *(a1 + 8) = v35;
    *(a1 + 16) = a4;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(v9 + 48) + 24 * v13;
    if (!*(v15 + 16))
    {
      if (a4)
      {
        goto LABEL_10;
      }

      v16 = sub_227663FB0();
      v18 = v22;
      v19 = sub_227663FB0();
      goto LABEL_23;
    }

    if (*(v15 + 16) == 1)
    {
      if (a4 != 1)
      {
        goto LABEL_10;
      }

      v16 = sub_227664C10();
      v18 = v17;
      v19 = sub_227664C10();
LABEL_23:
      if (v16 == v19 && v18 == v20)
      {

        goto LABEL_33;
      }

      v24 = sub_22766D190();

      if (v24)
      {
        goto LABEL_33;
      }

      goto LABEL_10;
    }

    if (a4 != 2)
    {
      goto LABEL_10;
    }

    if (*v15 == a2 && *(v15 + 8) == v35)
    {
      break;
    }

    if (sub_22766D190())
    {
      v28 = a2;
      v29 = v35;
      goto LABEL_32;
    }

LABEL_10:
    v13 = (v13 + 1) & v14;
    if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v28 = a2;
  v29 = v35;
LABEL_32:
  sub_226EE28B0(v28, v29, 2);
LABEL_33:
  v30 = *(v9 + 48) + 24 * v13;
  v31 = *v30;
  v32 = *(v30 + 8);
  *a1 = *v30;
  *(a1 + 8) = v32;
  v33 = *(v30 + 16);
  *(a1 + 16) = v33;
  sub_226F04958(v31, v32, v33);
  return 0;
}

uint64_t sub_2270B34E8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276638D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_2813A57E8, MEMORY[0x277D50180]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8920, MEMORY[0x277D50180]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DFA7C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B37C8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227667780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_2813A55D0, MEMORY[0x277D52F78]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA630, MEMORY[0x277D52F78]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270DFD44(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B3AA8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664530();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_2813A57C0, MEMORY[0x277D50978]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8AC8, MEMORY[0x277D50978]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E000C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B3D88(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227665F20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8700, MEMORY[0x277D51FE0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E02D4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B4068(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227667C20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139B4E0, MEMORY[0x277D531E0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139B4D8, MEMORY[0x277D531E0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E059C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B4348(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666170();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_2813A56C0, MEMORY[0x277D520D0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BAA10, MEMORY[0x277D520D0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E0864(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B4628(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227669040();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_2813A5518, MEMORY[0x277D539C0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA620, MEMORY[0x277D539C0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E0B2C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B4908(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276646D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B8980, MEMORY[0x277D50B18]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BAA20, MEMORY[0x277D50B18]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E0DF4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B4BE8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276632A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139BD28, MEMORY[0x277D4FE80]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139BD20, MEMORY[0x277D4FE80]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E10BC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B4EC8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664EB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139B8B8, MEMORY[0x277D51130]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139B8B0, MEMORY[0x277D51130]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E1384(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B51F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276640A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139B9E0, MEMORY[0x277D50678]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA990, MEMORY[0x277D50678]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E187C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B54D8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664AA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_2813A5788, MEMORY[0x277D50CD0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA670, MEMORY[0x277D50CD0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E1B44(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B57B8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276650A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_2813A5738, MEMORY[0x277D51330]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7B8B10, MEMORY[0x277D51330]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E1E0C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B5A98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227669580();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139B208, MEMORY[0x277D53E88]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139B200, MEMORY[0x277D53E88]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E20D4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B5D78(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666330();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139B698, MEMORY[0x277D522A0]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA5D8, MEMORY[0x277D522A0]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E239C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B6058(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666980();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B86C8, MEMORY[0x277D52758]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA590, MEMORY[0x277D52758]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E2664(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B6338(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227664A10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B86C0, MEMORY[0x277D50C78]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA568, MEMORY[0x277D50C78]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E292C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B6618(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276633A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139BCF8, MEMORY[0x277D4FF18]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139BCF0, MEMORY[0x277D4FF18]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E2BF4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B68F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276664D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B8680, MEMORY[0x277D52300]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BA548, MEMORY[0x277D52300]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E2EBC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B6BD8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227665D70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139B708, MEMORY[0x277D51E30]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BAA30, MEMORY[0x277D51E30]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E3184(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B6EB8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227667B30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139B4F8, MEMORY[0x277D53128]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BAA40, MEMORY[0x277D53128]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E344C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B7198(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276645D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B8990, MEMORY[0x277D50A30]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BAA70, MEMORY[0x277D50A30]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E3714(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B7478(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2276692D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_27D7B8998, MEMORY[0x277D53B20]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_27D7BAA80, MEMORY[0x277D53B20]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2270E39DC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2270B7758(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_22766D370();
  sub_2276637A0();
  sub_22766C100();

  v8 = sub_22766D3F0();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + v10);
      v13 = sub_2276637A0();
      v15 = v14;
      if (v13 == sub_2276637A0() && v15 == v16)
      {
        break;
      }

      v18 = sub_22766D190();

      if (v18)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v10);
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_2270E3CA4(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    result = 1;
  }

  *a1 = a2;
  return result;
}