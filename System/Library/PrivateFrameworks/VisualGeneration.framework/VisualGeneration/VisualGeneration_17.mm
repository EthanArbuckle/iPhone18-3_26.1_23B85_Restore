uint64_t sub_19A45C170(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A45C190, 0, 0);
}

uint64_t sub_19A45C190()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  v0[4] = __swift_project_value_buffer(v1, qword_1ED82BCF0);
  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19A2DE000, v2, v3, "DiffusionAsyncStream.next(): started", v4, 2u);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C20);
  *v5 = v0;
  v5[1] = sub_19A45C334;
  v7 = v0[2];
  v8 = v0[3];

  return MEMORY[0x1EEE6DE18](v7, &unk_19A588890, v8, sub_19A46D6B0, v8, 0, 0, v6);
}

uint64_t sub_19A45C334()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_19A45C4B0;
  }

  else
  {
    v2 = sub_19A45C448;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A45C448()
{
  sub_19A467F28("DiffusionAsyncStream.next(): finished");
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A45C4B0()
{
  v1 = v0[6];
  swift_retain_n();
  v2 = v1;
  v3 = sub_19A5723DC();
  v4 = sub_19A57356C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412802;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    *(v7 + 12) = 2048;
    v11 = *(v6 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_iterations);

    *(v7 + 14) = v11;

    *(v7 + 22) = 1024;
    LOBYTE(v11) = sub_19A407920();

    *(v7 + 24) = v11 & 1;

    _os_log_impl(&dword_19A2DE000, v3, v4, "DiffusionAsyncStream.next(): catching exception: %@; iteration=%ld; wasCancelled=%{BOOL}d", v7, 0x1Cu);
    sub_19A2F3FA0(v8, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v8, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[3];
  v13 = *(v12 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_cancellationHandler);
  v0[7] = *(v12 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_streamCanceller);
  v14 = sub_19A407920();
  v17 = (v13 + *v13);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_19A45C738;

  return v17(v14 & 1);
}

uint64_t sub_19A45C738()
{

  return MEMORY[0x1EEE6DFA0](sub_19A45C834, 0, 0);
}

uint64_t sub_19A45C834()
{
  if (sub_19A407920())
  {
    sub_19A57317C();
    sub_19A46BC78(&qword_1ED823FC0, 255, MEMORY[0x1E69E8550]);
    v1 = swift_allocError();
    sub_19A572ACC();
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 48);
    v1 = v2;
  }

  sub_19A571CBC();
  sub_19A46BC78(&qword_1EAF9E958, 255, MEMORY[0x1E69B2638]);
  swift_allocError();
  sub_19A4B207C(v1, v4);
  swift_willThrow();

  sub_19A467F28("DiffusionAsyncStream.next(): finished");
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_19A45C9B4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C20);
  v2[10] = swift_task_alloc();
  type metadata accessor for ImageGenerator.Result(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A45CA88, 0, 0);
}

uint64_t sub_19A45CA88()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_iterations;
  v0[13] = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_iterations;
  v3 = *(v1 + v2);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v5;
    if (qword_1ED824050 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = sub_19A5723FC();
  v0[14] = __swift_project_value_buffer(v6, qword_1ED82BCF0);

  v7 = sub_19A5723DC();
  v8 = sub_19A57356C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v1 + v2);

    _os_log_impl(&dword_19A2DE000, v7, v8, "DiffusionAsyncStream.next(): iterations=%ld", v9, 0xCu);
    MEMORY[0x19A902C50](v9, -1, -1);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_19A45CC3C;

  return sub_19A45DEF0();
}

uint64_t sub_19A45CC3C(char a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A45CD3C, 0, 0);
}

void sub_19A45CD3C()
{
  if (*(v0 + 184))
  {
LABEL_2:
    v1 = *(v0 + 64);
    v2 = sub_19A571C6C();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = *(v0 + 72);
  v5 = *(v4 + *(v0 + 104));
  v6 = v5 - 1;
  if (v5 == 1)
  {
    v7 = sub_19A5723DC();
    v8 = sub_19A57356C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19A2DE000, v7, v8, "DiffusionAsyncStream.next(): before generateImagesHandler", v9, 2u);
      MEMORY[0x19A902C50](v9, -1, -1);
    }

    v10 = *(v0 + 72);

    v18 = (*(v10 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generateImagesHandler) + **(v10 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generateImagesHandler));
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_19A45D0D0;
    v12 = *(v0 + 96);

    v18(v12);
  }

  else
  {
    if (__OFSUB__(v5, 1))
    {
      __break(1u);
      return;
    }

    v13 = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generatedResult;
    *(v0 + 144) = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generatedResult;
    swift_beginAccess();
    if (v6 == *(*(v4 + v13) + 16))
    {

      v14 = sub_19A5723DC();
      v15 = sub_19A57356C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = *(*(v4 + v13) + 16);

        _os_log_impl(&dword_19A2DE000, v14, v15, "DiffusionAsyncStream.next(): finished image generation; terminating stream with nil; number of generated images=%ld", v16, 0xCu);
        MEMORY[0x19A902C50](v16, -1, -1);
      }

      else
      {
      }

      goto LABEL_2;
    }

    v17 = swift_task_alloc();
    *(v0 + 152) = v17;
    *v17 = v0;
    v17[1] = sub_19A45D55C;

    sub_19A45DEF0();
  }
}

uint64_t sub_19A45D0D0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_19A45DDF0;
  }

  else
  {
    v2 = sub_19A45D1E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_19A45D1E4()
{
  v26 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generatedResult;
  swift_beginAccess();
  sub_19A46D6B8(v1, v2 + v3);
  swift_endAccess();

  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v8 = type metadata accessor for GeneratedImage();

    v10 = MEMORY[0x19A900C10](v9, v8);
    v12 = v11;

    v13 = sub_19A31F114(v10, v12, &v25);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_19A2DE000, v4, v5, "DiffusionAsyncStream.next(): after generateImagesHandler: generatedImages=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  v14 = v0[9];
  v15 = *(v14 + v0[13]);
  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generatedResult;
    v0[18] = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generatedResult;
    swift_beginAccess();
    if (v16 == *(*(v14 + v17) + 16))
    {

      v18 = sub_19A5723DC();
      v19 = sub_19A57356C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        *(v20 + 4) = *(*(v14 + v17) + 16);

        _os_log_impl(&dword_19A2DE000, v18, v19, "DiffusionAsyncStream.next(): finished image generation; terminating stream with nil; number of generated images=%ld", v20, 0xCu);
        MEMORY[0x19A902C50](v20, -1, -1);
      }

      else
      {
      }

      v22 = v0[8];
      v23 = sub_19A571C6C();
      (*(*(v23 - 8) + 56))(v22, 1, 1, v23);

      v24 = v0[1];

      v24();
    }

    else
    {
      v21 = swift_task_alloc();
      v0[19] = v21;
      *v21 = v0;
      v21[1] = sub_19A45D55C;

      sub_19A45DEF0();
    }
  }
}

uint64_t sub_19A45D55C(char a1)
{
  *(*v1 + 185) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A45D65C, 0, 0);
}

uint64_t sub_19A45D65C()
{
  if (*(v0 + 185) == 1)
  {
    v1 = *(v0 + 64);
    v2 = sub_19A571C6C();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = sub_19A5723DC();
    v6 = sub_19A57356C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19A2DE000, v5, v6, "DiffusionAsyncStream.next(): before reportResultsHandler", v7, 2u);
      MEMORY[0x19A902C50](v7, -1, -1);
    }

    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);

    v12 = *(v11 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_reportResultsHandler);
    v13 = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_clientData;
    v14 = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_configuration;
    sub_19A46C33C(v11 + v8, v10, type metadata accessor for ImageGenerator.Result);
    v15 = *(v11 + v9);
    v16 = *(*(v11 + v8) + 16);
    v20 = (v12 + *v12);
    v17 = swift_task_alloc();
    *(v0 + 160) = v17;
    *v17 = v0;
    v17[1] = sub_19A45D8F0;
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);

    return v20(v18, v11 + v13, v11 + v14, v19, v15, v16);
  }
}

uint64_t sub_19A45D8F0()
{
  v2 = *(*v1 + 88);
  *(*v1 + 168) = v0;

  sub_19A46C2DC(v2, type metadata accessor for ImageGenerator.Result);
  if (v0)
  {
    v3 = sub_19A45DE70;
  }

  else
  {
    v3 = sub_19A45DA34;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A45DA34()
{
  v1 = sub_19A5723DC();
  v2 = sub_19A57356C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19A2DE000, v1, v2, "DiffusionAsyncStream.next(): after reportResultsHandler", v3, 2u);
    MEMORY[0x19A902C50](v3, -1, -1);
  }

  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_19A45DB3C;

  return sub_19A45DEF0();
}

uint64_t sub_19A45DB3C(char a1)
{
  *(*v1 + 186) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A45DC3C, 0, 0);
}

uint64_t sub_19A45DC3C()
{
  if (*(v0 + 186) == 1)
  {
    v1 = *(v0 + 64);
    sub_19A2F3FA0(*(v0 + 80), &qword_1EAFA0C20);
    v2 = sub_19A571C6C();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  }

  else
  {

    v3 = sub_19A5723DC();
    v4 = sub_19A57356C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 104);
      v6 = *(v0 + 72);
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(v6 + v5);

      _os_log_impl(&dword_19A2DE000, v3, v4, "DiffusionAsyncStream.next(): returning results for iteration: %ld", v7, 0xCu);
      MEMORY[0x19A902C50](v7, -1, -1);
    }

    else
    {
    }

    sub_19A3351B8(*(v0 + 80), *(v0 + 64), &qword_1EAFA0C20);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_19A45DDF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A45DE70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A45DF10()
{
  v1 = sub_19A407920();
  *(v0 + 40) = v1 & 1;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  *(v0 + 24) = __swift_project_value_buffer(v2, qword_1ED82BCF0);
  v3 = sub_19A5723DC();
  v4 = sub_19A57356C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 & 1;
    _os_log_impl(&dword_19A2DE000, v3, v4, "DiffusionAsyncStream.cancelIfNeeded(): isCancelled=%{BOOL}d", v5, 8u);
    MEMORY[0x19A902C50](v5, -1, -1);
  }

  if (v1)
  {
    v10 = (*(*(v0 + 16) + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_cancellationHandler) + **(*(v0 + 16) + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_cancellationHandler));
    v6 = swift_task_alloc();
    *(v0 + 32) = v6;
    *v6 = v0;
    v6[1] = sub_19A45E140;

    return v10(1);
  }

  else
  {
    v8 = *(v0 + 8);
    v9 = *(v0 + 40);

    return v8(v9);
  }
}

uint64_t sub_19A45E140()
{

  return MEMORY[0x1EEE6DFA0](sub_19A45E23C, 0, 0);
}

uint64_t sub_19A45E23C()
{
  v1 = sub_19A5723DC();
  v2 = sub_19A57356C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19A2DE000, v1, v2, "DiffusionAsyncStream.cancelIfNeeded(): DiffusionAsyncStream cancelled", v3, 2u);
    MEMORY[0x19A902C50](v3, -1, -1);
  }

  v4 = *(v0 + 8);
  v5 = *(v0 + 40);

  return v4(v5);
}

void sub_19A45E310(uint64_t a1)
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BCF0);

  v3 = sub_19A5723DC();
  v4 = sub_19A57356C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = sub_19A407920() & 1;
    *(v5 + 8) = 2048;
    *(v5 + 10) = *(a1 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_iterations);

    _os_log_impl(&dword_19A2DE000, v3, v4, "DiffusionAsyncStream.next(): onCancel: changing state of streamCanceller from %{BOOL}d to true; iteration=%ld", v5, 0x12u);
    MEMORY[0x19A902C50](v5, -1, -1);
  }

  else
  {
  }

  sub_19A407ACC();
}

uint64_t sub_19A45E458()
{
  v1 = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_clientData;
  v2 = sub_19A571C6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_configuration;
  v4 = sub_19A571DFC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_19A46C2DC(v0 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generatedResult, type metadata accessor for ImageGenerator.Result);

  return swift_deallocClassInstance();
}

uint64_t sub_19A45E5A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000024;
    if (a1 != 8)
    {
      v5 = 0x53676E697373696DLL;
    }

    if (a1 == 7)
    {
      v5 = 0xD00000000000001ELL;
    }

    v6 = 0xD00000000000001BLL;
    if (a1 != 5)
    {
      v6 = 0xD00000000000001ELL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x526E776F6E6B6E75;
    v2 = 0xD000000000000010;
    if (a1 == 3)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (a1)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_19A45E700(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A2F759C;

  return sub_19A45C170(a1);
}

uint64_t sub_19A45E79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  v7 = sub_19A571CBC();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v8 = sub_19A57314C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[9] = v8;
  v5[10] = v10;

  return MEMORY[0x1EEE6DFA0](sub_19A45E89C, v8, v10);
}

uint64_t sub_19A45E89C()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_19A45E938;
  v2 = *(v0 + 24);

  return sub_19A45C170(v2);
}

uint64_t sub_19A45E938()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_19A45EAD8;
  }

  else
  {
    v5 = sub_19A45EA74;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19A45EA74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A45EAD8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v0[2] = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  swift_dynamicCast();
  sub_19A46BC78(&qword_1EAF9E958, 255, MEMORY[0x1E69B2638]);
  swift_willThrowTypedImpl();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A45EBF0(uint64_t a1)
{
  v2 = sub_19A45FDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45EC2C(uint64_t a1)
{
  v2 = sub_19A45FDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A45EC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A46B0D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A45EC98(uint64_t a1)
{
  v2 = sub_19A45FC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45ECD4(uint64_t a1)
{
  v2 = sub_19A45FC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A45ED10(uint64_t a1)
{
  v2 = sub_19A45FD84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45ED4C(uint64_t a1)
{
  v2 = sub_19A45FD84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A45ED88(uint64_t a1)
{
  v2 = sub_19A45FE80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45EDC4(uint64_t a1)
{
  v2 = sub_19A45FE80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A45EE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F746172656E6567 && a2 == 0xED00006570795472)
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

uint64_t sub_19A45EEB4(uint64_t a1)
{
  v2 = sub_19A45FED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45EEF0(uint64_t a1)
{
  v2 = sub_19A45FED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A45EF2C(uint64_t a1)
{
  v2 = sub_19A45FCDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45EF68(uint64_t a1)
{
  v2 = sub_19A45FCDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A45EFA4(uint64_t a1)
{
  v2 = sub_19A45FE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45EFE0(uint64_t a1)
{
  v2 = sub_19A45FE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A45F01C(uint64_t a1)
{
  v2 = sub_19A45FD30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45F058(uint64_t a1)
{
  v2 = sub_19A45FD30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A45F094(uint64_t a1)
{
  v2 = sub_19A45FF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45F0D0(uint64_t a1)
{
  v2 = sub_19A45FF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A45F10C(uint64_t a1)
{
  v2 = sub_19A45FFD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45F148(uint64_t a1)
{
  v2 = sub_19A45FFD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A45F184(uint64_t a1)
{
  v2 = sub_19A45FF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A45F1C0(uint64_t a1)
{
  v2 = sub_19A45FF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelManagerInferenceProvider.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C48);
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C50);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v49 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C58);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v49 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C60);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v49 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C68);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v49 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C70);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C78);
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C80);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C88);
  v67 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C90);
  v74 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C98);
  v22 = *(v21 - 8);
  v76 = v21;
  v77 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - v23;
  v25 = *(v1 + 8);
  *&v78 = *v1;
  *(&v78 + 1) = v25;
  v26 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A45FC88();
  v75 = v24;
  sub_19A5741AC();
  if (v26 <= 1)
  {
    v31 = v74;
    if (!v26)
    {
      v79 = 0;
      sub_19A45FFD0();
      v33 = v75;
      v32 = v76;
      sub_19A573DAC();
      sub_19A573E2C();
      (*(v31 + 8))(v20, v18);
      return (*(v77 + 8))(v33, v32);
    }

    v80 = 1;
    sub_19A45FF7C();
    v29 = v75;
    v28 = v76;
    sub_19A573DAC();
    sub_19A573E2C();
    (*(v67 + 8))(v17, v15);
    return (*(v77 + 8))(v29, v28);
  }

  if (v26 == 2)
  {
    v82 = 2;
    sub_19A45FF28();
    v35 = v68;
    v29 = v75;
    v28 = v76;
    sub_19A573DAC();
    v36 = v70;
    sub_19A573E2C();
    (*(v69 + 8))(v35, v36);
    return (*(v77 + 8))(v29, v28);
  }

  if (v26 == 3)
  {
    v83 = 3;
    sub_19A45FED4();
    v27 = v71;
    v29 = v75;
    v28 = v76;
    sub_19A573DAC();
    v30 = v73;
    sub_19A573E2C();
    (*(v72 + 8))(v27, v30);
    return (*(v77 + 8))(v29, v28);
  }

  if (v78 > 2)
  {
    if (v78 ^ 3 | *(&v78 + 1))
    {
      if (v78 ^ 4 | *(&v78 + 1))
      {
        v89 = 9;
        sub_19A45FCDC();
        v43 = v64;
        v39 = v75;
        v38 = v76;
        sub_19A573DAC();
        v45 = v65;
        v44 = v66;
      }

      else
      {
        v88 = 8;
        sub_19A45FD30();
        v43 = v61;
        v39 = v75;
        v38 = v76;
        sub_19A573DAC();
        v45 = v62;
        v44 = v63;
      }

      v40 = *(v45 + 8);
      v41 = v43;
      goto LABEL_24;
    }

    v87 = 7;
    sub_19A45FD84();
    v47 = v58;
    v39 = v75;
    v38 = v76;
    sub_19A573DAC();
    v40 = *(v59 + 8);
    v41 = v47;
    v42 = &v92;
  }

  else if (v78 == 0)
  {
    v84 = 4;
    sub_19A45FE80();
    v46 = v49;
    v39 = v75;
    v38 = v76;
    sub_19A573DAC();
    v40 = *(v50 + 8);
    v41 = v46;
    v42 = &v81;
  }

  else if (v78 ^ 1 | *(&v78 + 1))
  {
    v86 = 6;
    sub_19A45FDD8();
    v48 = v55;
    v39 = v75;
    v38 = v76;
    sub_19A573DAC();
    v40 = *(v56 + 8);
    v41 = v48;
    v42 = &v91;
  }

  else
  {
    v85 = 5;
    sub_19A45FE2C();
    v37 = v52;
    v39 = v75;
    v38 = v76;
    sub_19A573DAC();
    v40 = *(v53 + 8);
    v41 = v37;
    v42 = &v90;
  }

  v44 = *(v42 - 32);
LABEL_24:
  v40(v41, v44);
  return (*(v77 + 8))(v39, v38);
}

unint64_t sub_19A45FC88()
{
  result = qword_1EAFA1CA0;
  if (!qword_1EAFA1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CA0);
  }

  return result;
}

unint64_t sub_19A45FCDC()
{
  result = qword_1EAFA1CA8;
  if (!qword_1EAFA1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CA8);
  }

  return result;
}

unint64_t sub_19A45FD30()
{
  result = qword_1EAFA1CB0;
  if (!qword_1EAFA1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CB0);
  }

  return result;
}

unint64_t sub_19A45FD84()
{
  result = qword_1EAFA1CB8;
  if (!qword_1EAFA1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CB8);
  }

  return result;
}

unint64_t sub_19A45FDD8()
{
  result = qword_1EAFA1CC0;
  if (!qword_1EAFA1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CC0);
  }

  return result;
}

unint64_t sub_19A45FE2C()
{
  result = qword_1EAFA1CC8;
  if (!qword_1EAFA1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CC8);
  }

  return result;
}

unint64_t sub_19A45FE80()
{
  result = qword_1EAFA1CD0;
  if (!qword_1EAFA1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CD0);
  }

  return result;
}

unint64_t sub_19A45FED4()
{
  result = qword_1EAFA1CD8;
  if (!qword_1EAFA1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CD8);
  }

  return result;
}

unint64_t sub_19A45FF28()
{
  result = qword_1EAFA1CE0;
  if (!qword_1EAFA1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CE0);
  }

  return result;
}

unint64_t sub_19A45FF7C()
{
  result = qword_1EAFA1CE8;
  if (!qword_1EAFA1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CE8);
  }

  return result;
}

unint64_t sub_19A45FFD0()
{
  result = qword_1EAFA1CF0;
  if (!qword_1EAFA1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1CF0);
  }

  return result;
}

uint64_t ModelManagerInferenceProvider.Error.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1CF8);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D00);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D08);
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v59 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D10);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v81 = &v59 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D18);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v87 = &v59 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D20);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v83 = &v59 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D28);
  v68 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v82 = &v59 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D30);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v86 = &v59 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D38);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D40);
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D48);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v59 - v21;
  v23 = a1[3];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_19A45FC88();
  v24 = v90;
  sub_19A57417C();
  v25 = v24;
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v91);
  }

  v61 = v18;
  v60 = v16;
  v26 = v86;
  v27 = v87;
  v90 = v20;
  v28 = v88;
  v29 = v89;
  v30 = sub_19A573D7C();
  v31 = (2 * *(v30 + 16)) | 1;
  v92 = v30;
  v93 = v30 + 32;
  v94 = 0;
  v95 = v31;
  v32 = sub_19A344194();
  if (v32 == 10 || v94 != v95 >> 1)
  {
    v36 = sub_19A5739FC();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
    *v38 = &type metadata for ModelManagerInferenceProvider.Error;
    sub_19A573C7C();
    sub_19A5739DC();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v90 + 8))(v22, v19);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v91);
  }

  if (v32 > 4u)
  {
    if (v32 <= 6u)
    {
      if (v32 == 5)
      {
        v96 = 5;
        sub_19A45FE2C();
        sub_19A573C5C();
        v59 = 0;
        (*(v72 + 8))(v27, v71);
        (*(v90 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v55 = 0;
        v56 = 4;
        v25 = 1;
      }

      else
      {
        v96 = 6;
        sub_19A45FDD8();
        v52 = v81;
        sub_19A573C5C();
        v59 = 0;
        (*(v73 + 8))(v52, v74);
        (*(v90 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v55 = 0;
        v56 = 4;
        v25 = 2;
      }
    }

    else if (v32 == 7)
    {
      v96 = 7;
      sub_19A45FD84();
      sub_19A573C5C();
      v59 = 0;
      (*(v75 + 8))(v28, v76);
      (*(v90 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 4;
      v25 = 3;
    }

    else if (v32 == 8)
    {
      v96 = 8;
      sub_19A45FD30();
      v40 = v85;
      sub_19A573C5C();
      v59 = 0;
      (*(v77 + 8))(v40, v78);
      (*(v90 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v55 = 0;
      v25 = 4;
      v56 = 4;
    }

    else
    {
      v96 = 9;
      sub_19A45FCDC();
      v48 = v84;
      sub_19A573C5C();
      v59 = 0;
      (*(v79 + 8))(v48, v80);
      (*(v90 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v55 = 0;
      v56 = 4;
      v25 = 5;
    }
  }

  else if (v32 <= 1u)
  {
    if (v32)
    {
      v96 = 1;
      sub_19A45FF7C();
      sub_19A573C5C();
      v49 = v64;
      v50 = sub_19A573CFC();
      v59 = 0;
      v51 = v90;
      v25 = v50;
      v55 = v58;
      (*(v63 + 8))(v15, v49);
      (*(v51 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v56 = 1;
    }

    else
    {
      v96 = 0;
      sub_19A45FFD0();
      v41 = v61;
      sub_19A573C5C();
      v42 = v60;
      v43 = sub_19A573CFC();
      v59 = 0;
      v25 = v43;
      v55 = v57;
      (*(v62 + 8))(v41, v42);
      (*(v90 + 8))(v22, v19);
      swift_unknownObjectRelease();
      v56 = 0;
    }
  }

  else if (v32 == 2)
  {
    v96 = 2;
    sub_19A45FF28();
    v44 = v26;
    sub_19A573C5C();
    v45 = v67;
    v46 = sub_19A573CFC();
    v59 = 0;
    v25 = v46;
    v55 = v53;
    (*(v66 + 8))(v44, v45);
    (*(v90 + 8))(v22, v19);
    swift_unknownObjectRelease();
    v56 = 2;
  }

  else if (v32 == 3)
  {
    v96 = 3;
    sub_19A45FED4();
    v33 = v82;
    sub_19A573C5C();
    v34 = v65;
    v35 = sub_19A573CFC();
    v59 = 0;
    v25 = v35;
    v55 = v54;
    (*(v68 + 8))(v33, v34);
    (*(v90 + 8))(v22, v19);
    swift_unknownObjectRelease();
    v56 = 3;
  }

  else
  {
    v96 = 4;
    sub_19A45FE80();
    v47 = v83;
    sub_19A573C5C();
    v59 = 0;
    (*(v69 + 8))(v47, v70);
    (*(v90 + 8))(v22, v19);
    swift_unknownObjectRelease();
    v55 = 0;
    v56 = 4;
  }

  *v29 = v25;
  *(v29 + 8) = v55;
  *(v29 + 16) = v56;
  return __swift_destroy_boxed_opaque_existential_0Tm(v91);
}

uint64_t ModelManagerInferenceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  ModelManagerInferenceProvider.init()();
  return v0;
}

uint64_t ModelManagerInferenceProvider.init()()
{
  type metadata accessor for AppleDiffusionImageGenerator();
  v1 = swift_allocObject();
  type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager(0);
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 112) = sub_19A32FDEC(MEMORY[0x1E69E7CC0]);
  v4 = OBJC_IVAR____TtCC16VisualGeneration28AppleDiffusionImageGeneratorP33_3979766E75150A4B5430B68E95E18AB625PipelineCollectionManager__cachedBasePipeline;
  v5 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  type metadata accessor for ModelManagerInferenceProvider.ImageGenerationRequestsQueue();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = v3;
  *(v0 + 24) = v6;
  return v0;
}

uint64_t sub_19A461088(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A46D71C();
  sub_19A5741AC();
  v14 = 0;
  sub_19A57102C();
  sub_19A46BC78(&qword_1ED8252E8, 255, MEMORY[0x1E69695A8]);
  sub_19A573E7C();
  if (!v2)
  {
    v9 = type metadata accessor for ModelManagerInferenceProvider.Input(0);
    v13 = 1;
    type metadata accessor for GenerationRecipe(0);
    sub_19A46BC78(&qword_1EAF9F868, 255, type metadata accessor for GenerationRecipe);
    sub_19A573E7C();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E50);
    sub_19A46D81C();
    sub_19A573E7C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A4612EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for GenerationRecipe(0);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A57102C();
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E48);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ModelManagerInferenceProvider.Input(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A46D71C();
  v23 = v8;
  v12 = v25;
  sub_19A57417C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = a1;
  v13 = v11;
  v29 = 0;
  sub_19A46BC78(&qword_1ED8252E0, 255, MEMORY[0x1E69695A8]);
  v14 = v21;
  sub_19A573D4C();
  (*(v19 + 32))(v13, v14, v5);
  v28 = 1;
  sub_19A46BC78(&qword_1EAF9ED78, 255, type metadata accessor for GenerationRecipe);
  sub_19A573D4C();
  sub_19A46C3C4(v4, v13 + *(v9 + 20), type metadata accessor for GenerationRecipe);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E50);
  v27 = 2;
  sub_19A46D770();
  v15 = v23;
  sub_19A573D4C();
  (*(v22 + 8))(v15, v24);
  *(v13 + *(v9 + 24)) = v26;
  sub_19A46C33C(v13, v18, type metadata accessor for ModelManagerInferenceProvider.Input);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  return sub_19A46C2DC(v13, type metadata accessor for ModelManagerInferenceProvider.Input);
}

uint64_t sub_19A4617A4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746172656E6567;
  }
}

uint64_t sub_19A46180C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A46B410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A461834(uint64_t a1)
{
  v2 = sub_19A46D71C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A461870(uint64_t a1)
{
  v2 = sub_19A46D71C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A4618DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A46D934();
  sub_19A5741AC();
  v8[15] = 0;
  sub_19A573E6C();
  if (!v1)
  {
    v8[14] = 1;
    sub_19A573E0C();
    v8[13] = 2;
    sub_19A573E3C();
    type metadata accessor for ModelManagerInferenceProvider.Output(0);
    v8[12] = 3;
    type metadata accessor for ImageGenerator.Result(0);
    sub_19A46BC78(&qword_1EAF9ED18, 255, type metadata accessor for ImageGenerator.Result);
    sub_19A573E1C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_19A461B20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E60);
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ModelManagerInferenceProvider.Output(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_19A46D934();
  sub_19A57417C();
  if (!v2)
  {
    v14 = v6;
    v15 = v22;
    v28 = 0;
    *v12 = sub_19A573D3C();
    v27 = 1;
    v16 = v7;
    *(v12 + 1) = sub_19A573CCC();
    v12[16] = v17 & 1;
    v26 = 2;
    v19 = v12;
    v12[17] = sub_19A573D0C() & 1;
    type metadata accessor for ImageGenerator.Result(0);
    v25 = 3;
    sub_19A46BC78(&qword_1EAF9F788, 255, type metadata accessor for ImageGenerator.Result);
    v20 = v23;
    sub_19A573CDC();
    (*(v16 + 8))(v9, v20);
    sub_19A3351B8(v14, v19 + *(v10 + 28), &qword_1EAFA0C28);
    sub_19A46C3C4(v19, v15, type metadata accessor for ModelManagerInferenceProvider.Output);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

unint64_t sub_19A461E78()
{
  v1 = 0x53746E6572727563;
  v2 = 0x536C616E69467369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6574536C61746F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A461F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A46B538(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A461F28(uint64_t a1)
{
  v2 = sub_19A46D934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A461F64(uint64_t a1)
{
  v2 = sub_19A46D934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A461FD0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A461FF4, 0, 0);
}

uint64_t sub_19A461FF4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest__recipe;
  v4 = OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest__generationID;
  v5 = OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest_uuid;
  v6 = type metadata accessor for ModelManagerInferenceProvider.ImageGenerationRequest(0);
  v0[2] = v2;
  v0[5] = v6;
  v0[6] = &off_1F0DB20E8;
  v0[10] = v6;
  v0[11] = &off_1F0DB2100;
  v0[7] = v2;
  v7 = *(*v1 + 152);
  swift_retain_n();
  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_19A462190;
  v9 = v0[12];

  return (v11)(v9, v2 + v3, v2 + v4, v2 + v5, v0 + 2, v0 + 7);
}

uint64_t sub_19A462190()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A4622E4, 0, 0);
  }

  else
  {
    sub_19A2F3FA0(v2 + 56, &qword_1EAFA0440);
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A4622E4()
{
  sub_19A2F3FA0(v0 + 56, &qword_1EAFA0440);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_19A462360()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v0 = sub_19A5723FC();
  __swift_project_value_buffer(v0, qword_1ED82BCF0);

  v1 = sub_19A5723DC();
  v2 = sub_19A57353C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446210;
    v5 = sub_19A4624CC();
    v7 = sub_19A31F114(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_19A2DE000, v1, v2, "ModelManagerInferenceProvider Cancelling image generation request for %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x19A902C50](v4, -1, -1);
    MEMORY[0x19A902C50](v3, -1, -1);
  }

  sub_19A407ACC();
}

uint64_t sub_19A4624CC()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A46BC78(&qword_1ED8252D8, 255, MEMORY[0x1E69695A8]);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  MEMORY[0x19A900A50](0x746172656E654720, 0xEF203A44496E6F69);
  v1 = sub_19A573EDC();
  MEMORY[0x19A900A50](v1);

  return 0x203A44495555;
}

uint64_t sub_19A462600()
{
  v1 = OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest_uuid;
  v2 = sub_19A57102C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_19A2F3FA0(v0 + OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest_continuation, &qword_1EAFA1E70);

  v3(v0 + OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest__generationID, v2);
  sub_19A46C2DC(v0 + OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest__recipe, type metadata accessor for GenerationRecipe);

  return swift_deallocClassInstance();
}

uint64_t sub_19A462720(uint64_t a1, void *a2)
{
  result = sub_19A407920();
  if (result)
  {
    v4 = a2[5];
    v5 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v4);
    return (*(v5 + 16))(v4, v5);
  }

  return result;
}

uint64_t sub_19A46280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_19A5731CC();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4628D4, v4, 0);
}

uint64_t sub_19A4628D4()
{
  v44 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  *(v0 + 168) = __swift_project_value_buffer(v1, qword_1ED82BCF0);
  swift_retain_n();

  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  if (v4)
  {
    v42 = *(v0 + 120);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 136446979;
    *(v6 + 4) = sub_19A31F114(0xD00000000000001CLL, 0x800000019A59A9E0, &v43);
    *(v6 + 12) = 2081;
    v8 = sub_19A4624CC();
    v10 = sub_19A31F114(v8, v9, &v43);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2081;
    *(v0 + 88) = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E98);
    v11 = sub_19A572DAC();
    v13 = sub_19A31F114(v11, v12, &v43);

    *(v6 + 24) = v13;
    *(v6 + 32) = 2048;
    swift_beginAccess();
    v14 = *(v5 + 112);
    if (v14 >> 62)
    {
      v15 = sub_19A573B4C();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 34) = v15;

    _os_log_impl(&dword_19A2DE000, v2, v3, "%{public}s: started: request=%{private}s; generator=%{private}s; requests count=%ld", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 136);
  swift_beginAccess();
  v18 = *(v16 + 112);
  if (v18 >> 62)
  {
    if (sub_19A573B4C())
    {
      goto LABEL_10;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    v19 = *(v0 + 136);
    v20 = *(v0 + 112);
    sub_19A46BC78(&qword_1EAFA1E88, v17, type metadata accessor for ModelManagerInferenceProvider.ImageGenerationRequestsQueue);
    v21 = swift_task_alloc();
    *(v0 + 176) = v21;
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    v22 = swift_task_alloc();
    *(v0 + 184) = v22;
    *v22 = v0;
    v22[1] = sub_19A462F30;

    return MEMORY[0x1EEE6DDE0]();
  }

  swift_beginAccess();

  MEMORY[0x19A900BE0](v23);
  if (*((*(v16 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v16 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_19A5730AC();
  }

  sub_19A5730FC();
  swift_endAccess();

  v24 = sub_19A5723DC();
  v25 = sub_19A57354C();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v28 = *(v0 + 144);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43 = v30;
    *v29 = 136446466;
    sub_19A57324C();
    sub_19A46BC78(&qword_1EAFA1E90, 255, MEMORY[0x1E69E85F0]);
    v31 = sub_19A573EDC();
    v33 = v32;
    (*(v27 + 8))(v26, v28);
    v34 = sub_19A31F114(v31, v33, &v43);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v35 = sub_19A4624CC();
    v37 = sub_19A31F114(v35, v36, &v43);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_19A2DE000, v24, v25, "ModelManagerInferenceProvider TaskPriority is %{public}s, fulfilling %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v30, -1, -1);
    MEMORY[0x19A902C50](v29, -1, -1);
  }

  v38 = swift_task_alloc();
  *(v0 + 192) = v38;
  *v38 = v0;
  v38[1] = sub_19A4632A4;
  v39 = *(v0 + 120);
  v40 = *(v0 + 104);

  return sub_19A461FD0(v40, v39);
}

uint64_t sub_19A462F30()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x1EEE6DFA0](sub_19A46305C, v1, 0);
}

uint64_t sub_19A46305C()
{
  v20 = v0;

  v1 = sub_19A5723DC();
  v2 = sub_19A57354C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446466;
    sub_19A57324C();
    sub_19A46BC78(&qword_1EAFA1E90, 255, MEMORY[0x1E69E85F0]);
    v8 = sub_19A573EDC();
    v10 = v9;
    (*(v4 + 8))(v3, v5);
    v11 = sub_19A31F114(v8, v10, &v19);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    v12 = sub_19A4624CC();
    v14 = sub_19A31F114(v12, v13, &v19);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_19A2DE000, v1, v2, "ModelManagerInferenceProvider TaskPriority is %{public}s, fulfilling %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_19A4632A4;
  v16 = v0[15];
  v17 = v0[13];

  return sub_19A461FD0(v17, v16);
}

uint64_t sub_19A4632A4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 136);

    return MEMORY[0x1EEE6DFA0](sub_19A4633F0, v6, 0);
  }
}

uint64_t sub_19A4633F0()
{
  sub_19A4636E8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A463460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D58);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest_continuation;
  swift_beginAccess();
  sub_19A46D9AC(v8, a2 + v11);
  swift_endAccess();
  swift_beginAccess();

  MEMORY[0x19A900BE0](v12);
  if (*((*(a3 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_19A5730AC();
  }

  sub_19A5730FC();
  return swift_endAccess();
}

void sub_19A463610()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_19A573B4C())
  {
    if (sub_19A573B4C())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x19A901520](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_19A573B4C();
LABEL_13:
      if (v3)
      {
        sub_19A46B6B8(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_19A4636E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D58);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  swift_beginAccess();
  v8 = *(v0 + 112);
  if (!(v8 >> 62))
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_19A573B4C())
  {
LABEL_3:
    swift_beginAccess();
    sub_19A463610();
    swift_endAccess();
  }

LABEL_4:
  v9 = *(v0 + 112);
  if (v9 >> 62)
  {
    result = sub_19A573B4C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x19A901520](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(v9 + 32);
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v12 = sub_19A5723FC();
  __swift_project_value_buffer(v12, qword_1ED82BCF0);

  v13 = sub_19A5723DC();
  v14 = sub_19A57354C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v16 = 136446210;

    v18 = sub_19A4624CC();
    v20 = v19;

    v21 = sub_19A31F114(v18, v20, v26);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_19A2DE000, v13, v14, "ModelManagerInferenceProvider resuming %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x19A902C50](v17, -1, -1);
    v22 = v16;
    v2 = v25;
    MEMORY[0x19A902C50](v22, -1, -1);
  }

  v23 = OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest_continuation;
  swift_beginAccess();
  sub_19A33546C(v11 + v23, v7, &qword_1EAFA1E70);
  if ((*(v2 + 48))(v7, 1, v1))
  {

    return sub_19A2F3FA0(v7, &qword_1EAFA1E70);
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_19A2F3FA0(v7, &qword_1EAFA1E70);
    sub_19A57316C();

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_19A463B0C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t _s16VisualGeneration29ModelManagerInferenceProviderC15transitionAsset_2toy0cD8Services0efH10DescriptorV_AF9LoadStateOtYaAF0E5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_19A571CBC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_19A571EAC();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A463C64, 0, 0);
}

uint64_t sub_19A463C64()
{
  v50 = v0;
  v47 = sub_19A571DCC();
  v48 = v1;
  v0[12] = v1;
  v2 = sub_19A57231C();
  v0[13] = v2;
  v3 = *(v2 - 8);
  v0[14] = v3;
  v4 = swift_task_alloc();
  v0[15] = v4;
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[3];
  v9 = sub_19A57236C();
  __swift_project_value_buffer(v9, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  (*(v6 + 16))(v5, v8, v7);
  v10 = (*(v6 + 88))(v5, v7);
  if (v10 == *MEMORY[0x1E69B26D8])
  {
    v11 = v48;

    v12 = sub_19A57234C();
    v13 = sub_19A57361C();

    if (sub_19A57376C())
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v49[0] = v15;
      *v14 = 136446210;
      v16 = v47;
      *(v14 + 4) = sub_19A31F114(v47, v48, v49);
      v17 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v12, v13, v17, "modelManagerLoadOut", "asset=%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x19A902C50](v15, -1, -1);
      v18 = v14;
      v11 = v48;
      MEMORY[0x19A902C50](v18, -1, -1);
    }

    else
    {

      v16 = v47;
    }

    swift_task_alloc();
    (*(v3 + 16))();
    sub_19A5723BC();
    swift_allocObject();
    v0[19] = sub_19A5723AC();

    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    v20[1] = sub_19A4645EC;

    return sub_19A4AB17C(v16, v11);
  }

  v19 = v48;
  if (v10 == *MEMORY[0x1E69B26C8])
  {
    sub_19A4B05C0(v47, v48);
    (*(v3 + 8))(v4, v2);

    v45 = v0[1];
LABEL_16:

    return v45();
  }

  if (v10 != *MEMORY[0x1E69B26D0])
  {
    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[9];
    v33 = v0[6];
    v34 = v0[7];

    sub_19A46BC78(&qword_1EAF9E958, 255, MEMORY[0x1E69B2638]);
    v35 = swift_allocError();
    v37 = v36;
    sub_19A330D28(MEMORY[0x1E69E7CC0]);
    sub_19A571C7C();
    (*(v34 + 104))(v37, *MEMORY[0x1E69B25F0], v33);
    swift_willThrow();
    (*(v31 + 8))(v30, v32);
    v39 = v0[14];
    v38 = v0[15];
    v40 = v0[13];
    v42 = v0[7];
    v41 = v0[8];
    v44 = v0[5];
    v43 = v0[6];
    sub_19A4B207C(v35, v41);
    sub_19A464DDC(v35, v41);
    (*(v42 + 16))(v44, v41, v43);
    sub_19A46BC78(&qword_1EAF9E958, 255, MEMORY[0x1E69B2638]);
    swift_willThrowTypedImpl();

    (*(v42 + 8))(v41, v43);
    (*(v39 + 8))(v38, v40);

    v45 = v0[1];
    goto LABEL_16;
  }

  v22 = sub_19A57234C();
  v23 = sub_19A57361C();

  if (sub_19A57376C())
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v49[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_19A31F114(v47, v48, v49);
    v26 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v22, v23, v26, "modelManagerLoadIn", "asset=%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    v27 = v25;
    v28 = v47;
    MEMORY[0x19A902C50](v27, -1, -1);
    v29 = v24;
    v19 = v48;
    MEMORY[0x19A902C50](v29, -1, -1);
  }

  else
  {

    v28 = v47;
  }

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[16] = sub_19A5723AC();

  v46 = swift_task_alloc();
  v0[17] = v46;
  *v46 = v0;
  v46[1] = sub_19A4643F8;

  return sub_19A4A99D4(v28, v19);
}

uint64_t sub_19A4643F8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_19A4647E4;
  }

  else
  {
    v2 = sub_19A464528;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A464528()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  sub_19A464AF4("modelManagerLoadIn", 18, 2);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4645EC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_19A46496C;
  }

  else
  {
    v2 = sub_19A46471C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A46471C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_19A464AF4("modelManagerLoadOut", 19, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A4647E4()
{
  sub_19A464AF4("modelManagerLoadIn", 18, 2);

  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  sub_19A4B207C(v1, v5);
  sub_19A464DDC(v1, v5);
  (*(v6 + 16))(v8, v5, v7);
  sub_19A46BC78(&qword_1EAF9E958, 255, MEMORY[0x1E69B2638]);
  swift_willThrowTypedImpl();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_19A46496C()
{
  sub_19A464AF4("modelManagerLoadOut", 19, 2);

  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  sub_19A4B207C(v1, v5);
  sub_19A464DDC(v1, v5);
  (*(v6 + 16))(v8, v5, v7);
  sub_19A46BC78(&qword_1EAF9E958, 255, MEMORY[0x1E69B2638]);
  swift_willThrowTypedImpl();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_19A464AF4(const char *a1, uint64_t a2, char a3)
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

void sub_19A464DDC(void *a1, uint64_t a2)
{
  v4 = sub_19A571CBC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v8 = sub_19A5723FC();
  __swift_project_value_buffer(v8, qword_1ED82BCF0);
  v9 = *(v5 + 16);
  v9(v7, a2, v4);
  v10 = a1;
  v11 = sub_19A5723DC();
  v12 = sub_19A57355C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543618;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    *(v13 + 12) = 2114;
    sub_19A46BC78(&qword_1EAF9E958, 255, MEMORY[0x1E69B2638]);
    swift_allocError();
    v9(v17, v7, v4);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    *(v13 + 14) = v18;
    v14[1] = v18;
    _os_log_impl(&dword_19A2DE000, v11, v12, "[ModelManagerInferenceProvider] caught %{public}@ / throwing %{public}@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD28);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v14, -1, -1);
    MEMORY[0x19A902C50](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t ModelManagerInferenceProvider.requestStream(clientData:configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v114 = a1;
  v103 = a3;
  v117 = sub_19A571DFC();
  v120 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v109 = v4;
  v118 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A571C6C();
  v115 = *(v5 - 8);
  v116 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v102 = v6;
  v111 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_19A57102C();
  v7 = *(v121 - 8);
  v8 = MEMORY[0x1EEE9AC00](v121);
  v108 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v107 = &v94 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v94 - v13;
  v101 = v15;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v94 - v16;
  v110 = a2;
  sub_19A571DDC();
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v18 = sub_19A5723FC();
  __swift_project_value_buffer(v18, qword_1ED82BCF0);
  v19 = *(v7 + 16);
  v106 = v7 + 16;
  v19(v14, v17, v121);
  v20 = sub_19A5723DC();
  v21 = sub_19A57354C();
  v22 = os_log_type_enabled(v20, v21);
  v119 = v7;
  v113 = v17;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v122[0] = v24;
    *v23 = 136446210;
    sub_19A46BC78(&qword_1ED8252D8, 255, MEMORY[0x1E69695A8]);
    v25 = v121;
    v26 = sub_19A573EDC();
    v27 = v19;
    v29 = v28;
    v105 = *(v7 + 8);
    v105(v14, v25);
    v30 = sub_19A31F114(v26, v29, v122);
    v19 = v27;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_19A2DE000, v20, v21, "ModelManagerInferenceProvider requestStream %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v17 = v113;
    MEMORY[0x19A902C50](v24, -1, -1);
    MEMORY[0x19A902C50](v23, -1, -1);
  }

  else
  {

    v105 = *(v7 + 8);
    v105(v14, v121);
  }

  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v31 = sub_19A57236C();
  __swift_project_value_buffer(v31, qword_1ED82BD30);
  v19(v107, v17, v121);
  v32 = sub_19A57231C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57230C();
  v36 = sub_19A57234C();
  v37 = sub_19A57362C();
  if (sub_19A57376C())
  {
    v38 = swift_slowAlloc();
    LODWORD(v98) = v37;
    v39 = v38;
    v40 = swift_slowAlloc();
    v104 = v19;
    v41 = v40;
    v122[0] = v40;
    *v39 = 136446210;
    sub_19A46BC78(&qword_1ED8252D8, 255, MEMORY[0x1E69695A8]);
    v99 = &v94;
    v42 = v32;
    v43 = v107;
    v44 = v121;
    v45 = sub_19A573EDC();
    v47 = v46;
    v100 = (v119 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v105(v43, v44);
    v48 = sub_19A31F114(v45, v47, v122);

    *(v39 + 4) = v48;
    v49 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v36, v98, v49, "requestStream", "UUID=%{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    v50 = v41;
    v19 = v104;
    MEMORY[0x19A902C50](v50, -1, -1);
    MEMORY[0x19A902C50](v39, -1, -1);

    (*(v33 + 8))(v35, v42);
  }

  else
  {

    (*(v33 + 8))(v35, v32);
    v100 = (v119 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v105(v107, v121);
  }

  v51 = v115;
  v104 = *(v115 + 16);
  v105 = (v115 + 16);
  v52 = v111;
  v53 = v116;
  v104(v111, v114, v116);
  v54 = v120;
  v55 = *(v120 + 16);
  v98 = v120 + 16;
  v99 = v55;
  (v55)(v118, v110, v117);
  v19(v108, v113, v121);
  v56 = *(v51 + 80);
  v97 = &v102[(v56 + 16) & ~v56];
  v57 = (v56 + 16) & ~v56;
  v95 = v57;
  v96 = v56 | 7;
  v58 = *(v54 + 80);
  v59 = &v97[v58] & ~v58;
  v60 = (v109 + *(v119 + 80) + v59) & ~*(v119 + 80);
  v61 = (v101 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v63 = *(v51 + 32);
  v63(v62 + v57, v52, v53);
  v102 = v63;
  v115 = v51 + 32;
  v64 = *(v120 + 32);
  v120 += 32;
  v107 = v64;
  (v64)(v62 + v59, v118, v117);
  v65 = *(v119 + 32);
  v119 += 32;
  v106 = v62;
  v65(v62 + v60, v108, v121);
  v66 = v112;
  *(v62 + v61) = v112;
  v67 = v66;
  v68 = v116;
  v104(v52, v114, v116);
  v69 = (v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v108 = v70;
  v63(v70 + v95, v52, v68);
  *(v70 + v69) = v67;
  v71 = v117;
  v72 = v118;
  v73 = v110;
  v74 = v99;
  (v99)(v118, v110, v117);
  v75 = (v58 + 16) & ~v58;
  v76 = (v109 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v109 = v77;
  (v107)(v77 + v75, v72, v71);
  *(v77 + v76) = v112;
  v104(v52, v114, v68);
  (v74)(v72, v73, v71);
  v78 = type metadata accessor for DiffusionAsyncStream(0);
  v79 = swift_allocObject();
  v80 = OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_streamCanceller;
  type metadata accessor for StatefulCanceller();
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  *(v79 + v80) = v81;
  *(v79 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_iterations) = 0;
  v82 = v79 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generatedResult;
  *(v79 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generatedResult) = MEMORY[0x1E69E7CC0];
  v83 = *(type metadata accessor for ImageGenerator.Result(0) + 20);
  v84 = type metadata accessor for InferenceDiagnosticsAccessor();
  v85 = *(*(v84 - 8) + 56);
  swift_retain_n();
  v85(v82 + v83, 1, 1, v84);
  (v102)(v79 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_clientData, v111, v116);
  (v107)(v79 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_configuration, v118, v71);
  v86 = (v79 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_generateImagesHandler);
  v87 = v106;
  *v86 = &unk_19A587868;
  v86[1] = v87;
  v88 = (v79 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_reportResultsHandler);
  v90 = v108;
  v89 = v109;
  *v88 = &unk_19A587878;
  v88[1] = v90;
  v91 = (v79 + OBJC_IVAR____TtC16VisualGeneration20DiffusionAsyncStream_cancellationHandler);
  *v91 = &unk_19A587888;
  v91[1] = v89;
  v92 = v103;
  v103[3] = v78;
  v92[4] = sub_19A46BC78(&qword_1EAF9EC08, 255, type metadata accessor for DiffusionAsyncStream);
  *v92 = v79;
  return (*(v119 - 24))(v113, v121);
}

uint64_t sub_19A465C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for ImageGenerator.Result(0);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v6 = sub_19A57102C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_19A5720EC();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for ResolvedTextPrompt(0);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = sub_19A570A9C();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for GenerationRecipe(0);
  v5[23] = swift_task_alloc();
  _s15AssembledPromptV12PromptInputsVMa(0);
  v5[24] = swift_task_alloc();
  type metadata accessor for AugmentedPrompt();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = type metadata accessor for ModelManagerInferenceProvider.Input(0);
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A465F24, 0, 0);
}

uint64_t sub_19A465F24()
{
  v48 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  v0[30] = __swift_project_value_buffer(v1, qword_1ED82BCF0);
  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19A2DE000, v2, v3, "generateImagesHandler: started", v4, 2u);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v5 = v0[29];

  sub_19A45B964(type metadata accessor for ModelManagerInferenceProvider.Input, &qword_1EAF9E9B8, type metadata accessor for ModelManagerInferenceProvider.Input, &unk_19A588378, v5);
  v6 = v0[29] + *(v0[28] + 20);
  sub_19A36CA0C(v0[26]);
  v7 = v0[26];
  v8 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[23];
  sub_19A46C33C(v6, v11, type metadata accessor for GenerationRecipe);
  sub_19A46C33C(v7, v9, type metadata accessor for AugmentedPrompt);
  sub_19A36D454(v11, v9, v10);
  sub_19A36D724(v10, 0, v8);
  v12 = v0[26];
  v13 = v0[27];
  sub_19A46C2DC(v0[24], _s15AssembledPromptV12PromptInputsVMa);
  sub_19A46C2DC(v12, type metadata accessor for AugmentedPrompt);
  sub_19A570A4C();
  sub_19A46BC78(&qword_1ED825330, 255, MEMORY[0x1E6968678]);
  sub_19A572F7C();
  sub_19A46C2DC(v13, type metadata accessor for AugmentedPrompt);
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v14 = static AppleDiffusionResourceFactory.shared(reset:)(0);
  v46 = v6;
  v15 = v0[16];
  sub_19A46C33C(v14 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs, v15, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

  v16 = *(v15 + 8);

  sub_19A46C2DC(v15, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);
  if (!v16)
  {
  }

  v44 = v0[29];
  v45 = v0[23];
  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[13];
  v20 = v0[10];
  v42 = v0[12];
  v43 = v0[11];
  v40 = v0[5];
  v41 = v0[9];
  sub_19A57242C();
  swift_allocObject();
  v0[31] = sub_19A57241C();
  sub_19A571DEC();
  (*(v18 + 104))(v17, *MEMORY[0x1E69AA398], v19);
  sub_19A57240C();

  (*(v18 + 8))(v17, v19);
  v21 = *(v20 + 16);
  v21(v42, v40, v41);
  v21(v43, v44, v41);
  sub_19A46C33C(v46, v45, type metadata accessor for GenerationRecipe);
  type metadata accessor for ModelManagerInferenceProvider.ImageGenerationRequest(0);
  v22 = swift_allocObject();
  v0[32] = v22;
  v23 = OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest_continuation;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D58);
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest__canceller;
  type metadata accessor for StatefulCanceller();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v22 + v25) = v26;
  v27 = *(v20 + 32);
  v27(v22 + OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest_uuid, v42, v41);
  v27(v22 + OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest__generationID, v43, v41);
  sub_19A46C3C4(v45, v22 + OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest__recipe, type metadata accessor for GenerationRecipe);

  v28 = sub_19A5723DC();
  v29 = sub_19A57356C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v47 = v31;
    *v30 = 136380675;

    v32 = sub_19A4624CC();
    v34 = v33;

    v35 = sub_19A31F114(v32, v34, &v47);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_19A2DE000, v28, v29, "generateImagesHandler: ImageGenerationRequest created: %{private}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x19A902C50](v31, -1, -1);
    MEMORY[0x19A902C50](v30, -1, -1);
  }

  v36 = *(v0[6] + 16);
  v37 = swift_task_alloc();
  v0[33] = v37;
  *v37 = v0;
  v37[1] = sub_19A46682C;
  v38 = v0[8];

  return sub_19A46280C(v38, v22, v36, &off_1F0DB3C58);
}

uint64_t sub_19A46682C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_19A466C2C;
  }

  else
  {
    v2 = sub_19A466940;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A466940()
{
  v19 = v0;
  sub_19A46C33C(v0[8], v0[7], type metadata accessor for ImageGenerator.Result);
  v1 = sub_19A5723DC();
  v2 = sub_19A57356C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  v5 = v0[7];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = *v5;
    v9 = type metadata accessor for GeneratedImage();
    v10 = MEMORY[0x19A900C10](v8, v9);
    v17 = v4;
    v12 = v11;
    sub_19A46C2DC(v5, type metadata accessor for ImageGenerator.Result);
    v13 = sub_19A31F114(v10, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_19A2DE000, v1, v2, "generateImagesHandler: images generated: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);

    v14 = v17;
  }

  else
  {

    sub_19A46C2DC(v5, type metadata accessor for ImageGenerator.Result);
    v14 = v4;
  }

  sub_19A46C2DC(v14, type metadata accessor for ModelManagerInferenceProvider.Input);
  sub_19A46C3C4(v0[8], v0[2], type metadata accessor for ImageGenerator.Result);
  sub_19A467F28("generateImagesHandler: finished");

  v15 = v0[1];

  return v15();
}

uint64_t sub_19A466C2C()
{
  v1 = *(v0 + 232);

  sub_19A46C2DC(v1, type metadata accessor for ModelManagerInferenceProvider.Input);
  sub_19A467F28("generateImagesHandler: finished");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A466D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = *(type metadata accessor for GeneratedImage() - 8);
  v7[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C28);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for ModelManagerInferenceProvider.Output(0);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D50);
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = type metadata accessor for ModelManagerInferenceProvider.Input(0);
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A466F68, 0, 0);
}

uint64_t sub_19A466F68()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);
  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19A2DE000, v2, v3, "reportResultsHandler: started", v4, 2u);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v5 = v0[18];

  sub_19A45B964(type metadata accessor for ModelManagerInferenceProvider.Input, &qword_1EAF9E9B8, type metadata accessor for ModelManagerInferenceProvider.Input, &unk_19A588378, v5);

  sub_19A46BD00(v6);

  sub_19A3578A4();
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[4];
  v11 = v0[3];
  v58 = *v11;
  v59 = v0[11];
  v12 = *(*v11 + 16);
  v13 = v12 == v0[5];
  sub_19A46C33C(v11, v9, type metadata accessor for ImageGenerator.Result);
  v14 = type metadata accessor for ImageGenerator.Result(0);
  v15 = *(v14 - 8);
  (*(v15 + 56))(v9, 0, 1, v14);
  *v7 = v10;
  *(v7 + 8) = v12;
  *(v7 + 16) = 0;
  *(v7 + 17) = v13;
  sub_19A33546C(v9, v7 + *(v59 + 28), &qword_1EAFA0C28);
  sub_19A33546C(v9, v8, &qword_1EAFA0C28);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    v16 = v0[9];
    sub_19A2F3FA0(v0[10], &qword_1EAFA0C28);
    sub_19A2F3FA0(v16, &qword_1EAFA0C28);
    goto LABEL_37;
  }

  v17 = v0[9];
  v18 = *v17;

  sub_19A46C2DC(v17, type metadata accessor for ImageGenerator.Result);
  v60 = MEMORY[0x1E69E7CC0];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v0[7];
    v21 = v0[8];
    v22 = v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v23 = *(v20 + 72);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_19A46C33C(v22, v0[8], type metadata accessor for GeneratedImage);
      v25 = v0[8];
      if (*(v21 + 8) == 2)
      {
        v26 = *v25;
        IOSurface = CVPixelBufferGetIOSurface(v26);
        v28 = v0[8];
        if (IOSurface)
        {
          v29 = IOSurface;

          v30 = sub_19A46C2DC(v28, type metadata accessor for GeneratedImage);
          MEMORY[0x19A900BE0](v30);
          if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19A5730AC();
          }

          sub_19A5730FC();
          v24 = v60;
        }

        else
        {
          sub_19A46C2DC(v0[8], type metadata accessor for GeneratedImage);
        }
      }

      else
      {
        sub_19A46C2DC(v25, type metadata accessor for GeneratedImage);
      }

      v22 += v23;
      --v19;
    }

    while (v19);
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  if (!(v24 >> 62))
  {
    v31 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_21;
    }

LABEL_36:
    sub_19A2F3FA0(v0[10], &qword_1EAFA0C28);

    goto LABEL_37;
  }

LABEL_35:
  v31 = sub_19A573B4C();
  if (!v31)
  {
    goto LABEL_36;
  }

LABEL_21:
  v32 = 0;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x19A901520](v32, v24);
    }

    else
    {
      if (v32 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v33 = *(v24 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_19A57277C();
    v36 = IOSurfaceSetOwnershipIdentity();
    if (v36)
    {
      break;
    }

    ++v32;
    if (v35 == v31)
    {
      goto LABEL_36;
    }
  }

  v37 = v36;

  v38 = sub_19A5723DC();
  v39 = sub_19A57355C();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[10];
  if (v40)
  {
    v42 = swift_slowAlloc();
    *v42 = 67240192;
    *(v42 + 4) = v37;
    _os_log_impl(&dword_19A2DE000, v38, v39, "ModelManagerInferenceProvider Unable to assign output surface ownership identity error: %{public}d", v42, 8u);
    MEMORY[0x19A902C50](v42, -1, -1);
  }

  sub_19A2F3FA0(v41, &qword_1EAFA0C28);
LABEL_37:
  sub_19A46C3C4(v0[12], v0[13], type metadata accessor for ModelManagerInferenceProvider.Output);

  v43 = sub_19A5723DC();
  v44 = sub_19A57356C();
  if (os_log_type_enabled(v43, v44))
  {
    v46 = v0[4];
    v45 = v0[5];
    v47 = swift_slowAlloc();
    *v47 = 134218496;
    *(v47 + 4) = v46;
    *(v47 + 12) = 2048;
    v48 = *(v58 + 16);
    *(v47 + 14) = v48;
    *(v47 + 22) = 1024;
    *(v47 + 24) = v48 == v45;

    _os_log_impl(&dword_19A2DE000, v43, v44, "reportResultsHandler: returning results; currentStep=%ld; totalSteps=%ld; isFinalStep=%{BOOL}d", v47, 0x1Cu);
    MEMORY[0x19A902C50](v47, -1, -1);
  }

  else
  {
  }

  v49 = v0[18];
  v50 = v0[13];
  sub_19A45B024(v50, type metadata accessor for ModelManagerInferenceProvider.Output, &qword_1EAF9E9B0, type metadata accessor for ModelManagerInferenceProvider.Output, &unk_19A588300, sub_19A46DC4C, v0[2]);
  sub_19A46C2DC(v50, type metadata accessor for ModelManagerInferenceProvider.Output);
  sub_19A46C2DC(v49, type metadata accessor for ModelManagerInferenceProvider.Input);
  v52 = v0[15];
  v53 = v0[16];
  v54 = v0[14];
  v55 = v0[2];
  v56 = sub_19A571C6C();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  (*(v52 + 8))(v53, v54);
  sub_19A467F28("reportResultsHandler: finished");

  v57 = v0[1];

  return v57();
}

uint64_t sub_19A467890(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  *(v3 + 144) = a1;
  v4 = sub_19A57102C();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_19A571DFC();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4679B0, 0, 0);
}

uint64_t sub_19A4679B0()
{
  v41 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  __swift_project_value_buffer(v1, qword_1ED82BCF0);
  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19A2DE000, v2, v3, "cancellationHandler: started", v4, 2u);
    MEMORY[0x19A902C50](v4, -1, -1);
  }

  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  v9 = *(v0 + 144);

  if (v9)
  {
    v10 = " when generating an image";
  }

  else
  {
    v10 = "enqueueAndWait(_:generator:)";
  }

  (*(v6 + 16))(v5, v8, v7);

  v11 = sub_19A5723DC();
  v12 = sub_19A57356C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);
  if (v13)
  {
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    if (*(v0 + 144))
    {
      v20 = 0xD00000000000001BLL;
    }

    else
    {
      v20 = 0xD000000000000029;
    }

    v35 = v20;
    v36 = *(v0 + 80);
    v38 = v12;
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v21 = 136446723;
    log = v11;
    sub_19A571DDC();
    sub_19A46BC78(&qword_1ED8252D8, 255, MEMORY[0x1E69695A8]);
    v34 = sub_19A573EDC();
    v22 = v16;
    v24 = v23;
    (*(v17 + 8))(v18, v19);
    (*(v14 + 8))(v15, v22);
    v25 = sub_19A31F114(v34, v24, &v40);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = sub_19A31F114(v35, v10 | 0x8000000000000000, &v40);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2081;
    *(v0 + 64) = *(v36 + 16);
    type metadata accessor for AppleDiffusionImageGenerator();

    v27 = sub_19A572DAC();
    v29 = sub_19A31F114(v27, v28, &v40);

    *(v21 + 24) = v29;
    _os_log_impl(&dword_19A2DE000, log, v38, "ModelManagerInferenceProvider %{public}s is cancelling current image generation request due to %s. Cancelling associated generator %{private}s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v39, -1, -1);
    MEMORY[0x19A902C50](v21, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
  }

  *(v0 + 56) = *(*(v0 + 80) + 16);
  type metadata accessor for AppleDiffusionImageGenerator();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1EA8);
  if (swift_dynamicCast())
  {
    v30 = *(v0 + 40);
    v31 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v30);
    (*(v31 + 16))(v30, v31);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_19A2F3FA0(v0 + 16, &qword_1EAFA1EB0);
  }

  v32 = *(*(v0 + 80) + 24);
  *(v0 + 136) = v32;

  return MEMORY[0x1EEE6DFA0](sub_19A467E44, v32, 0);
}

uint64_t sub_19A467E44()
{
  sub_19A4636E8();

  return MEMORY[0x1EEE6DFA0](sub_19A467EAC, 0, 0);
}

uint64_t sub_19A467EAC()
{
  sub_19A467F28("cancellationHandler: finished");

  v1 = *(v0 + 8);

  return v1();
}

void sub_19A467F28(const char *a1)
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BCF0);
  oslog = sub_19A5723DC();
  v3 = sub_19A57356C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19A2DE000, oslog, v3, a1, v4, 2u);
    MEMORY[0x19A902C50](v4, -1, -1);
  }
}

uint64_t _s16VisualGeneration29ModelManagerInferenceProviderC14requestOneShot10clientData13configuration0cD8Services06ClientK0VAI_AG0eF20RequestConfigurationVtYaAG0E5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_19A571CBC();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_19A571C6C();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = *(type metadata accessor for GeneratedImage() - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C28);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for ModelManagerInferenceProvider.Output(0);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = type metadata accessor for ImageGenerator.Result(0);
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v9 = sub_19A5720EC();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  v5[26] = swift_task_alloc();
  v10 = type metadata accessor for ResolvedTextPrompt(0);
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = sub_19A570A9C();
  v5[31] = swift_task_alloc();
  v5[32] = type metadata accessor for GenerationRecipe(0);
  v5[33] = swift_task_alloc();
  _s15AssembledPromptV12PromptInputsVMa(0);
  v5[34] = swift_task_alloc();
  type metadata accessor for AugmentedPrompt();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D50);
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = type metadata accessor for ModelManagerInferenceProvider.Input(0);
  v5[42] = swift_task_alloc();
  v12 = sub_19A57102C();
  v5[43] = v12;
  v5[44] = *(v12 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A468548, 0, 0);
}

uint64_t sub_19A468548()
{
  v73 = v0;
  sub_19A571DDC();
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[43];
  v4 = v0[44];
  v5 = sub_19A5723FC();
  v0[50] = __swift_project_value_buffer(v5, qword_1ED82BCF0);
  v71 = *(v4 + 16);
  v71(v1, v2, v3);
  v6 = sub_19A5723DC();
  v7 = sub_19A57354C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[48];
  v10 = v0[43];
  v11 = v0[44];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v72[0] = v13;
    *v12 = 136446210;
    sub_19A46BC78(&qword_1ED8252D8, 255, MEMORY[0x1E69695A8]);
    v14 = sub_19A573EDC();
    v16 = v15;
    v70 = *(v11 + 8);
    v70(v9, v10);
    v17 = sub_19A31F114(v14, v16, v72);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_19A2DE000, v6, v7, "ModelManagerInferenceProvider requestOneShot %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x19A902C50](v13, -1, -1);
    MEMORY[0x19A902C50](v12, -1, -1);
  }

  else
  {

    v70 = *(v11 + 8);
    v70(v9, v10);
  }

  v18 = sub_19A57231C();
  v0[51] = v18;
  v19 = *(v18 - 8);
  v0[52] = v19;
  v0[53] = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v20 = v0[49];
  v21 = v0[47];
  v22 = v0[43];
  v23 = sub_19A57236C();
  __swift_project_value_buffer(v23, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v71(v21, v20, v22);
  v24 = sub_19A57234C();
  v25 = sub_19A57361C();
  v26 = sub_19A57376C();
  v27 = v0[47];
  v28 = v0[43];
  if (v26)
  {
    v29 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v72[0] = v68;
    *v29 = 136446210;
    sub_19A46BC78(&qword_1ED8252D8, 255, MEMORY[0x1E69695A8]);
    v30 = sub_19A573EDC();
    v66 = v25;
    v32 = v31;
    v70(v27, v28);
    v33 = sub_19A31F114(v30, v32, v72);

    *(v29 + 4) = v33;
    v34 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v24, v66, v34, "requestOneShot", "UUID=%{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    MEMORY[0x19A902C50](v68, -1, -1);
    MEMORY[0x19A902C50](v29, -1, -1);
  }

  else
  {

    v70(v27, v28);
  }

  v35 = v0[42];
  swift_task_alloc();
  (*(v19 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[54] = sub_19A5723AC();

  sub_19A45B964(type metadata accessor for ModelManagerInferenceProvider.Input, &qword_1EAF9E9B8, type metadata accessor for ModelManagerInferenceProvider.Input, &unk_19A588378, v35);
  sub_19A46BD00(*(v0[42] + *(v0[41] + 24)));
  sub_19A3578A4();
  v36 = v0[42] + *(v0[41] + 20);
  sub_19A36CA0C(v0[36]);
  v37 = v0[36];
  v38 = v0[37];
  v40 = v0[34];
  v39 = v0[35];
  v41 = v0[33];
  sub_19A46C33C(v36, v41, type metadata accessor for GenerationRecipe);
  sub_19A46C33C(v37, v39, type metadata accessor for AugmentedPrompt);
  sub_19A36D454(v41, v39, v40);
  sub_19A36D724(v40, 0, v38);
  v42 = v0[36];
  v43 = v0[37];
  sub_19A46C2DC(v0[34], _s15AssembledPromptV12PromptInputsVMa);
  sub_19A46C2DC(v42, type metadata accessor for AugmentedPrompt);
  sub_19A570A4C();
  sub_19A46BC78(&qword_1ED825330, 255, MEMORY[0x1E6968678]);
  sub_19A572F7C();
  sub_19A46C2DC(v43, type metadata accessor for AugmentedPrompt);
  type metadata accessor for AppleDiffusionResourceFactory(0);
  v44 = static AppleDiffusionResourceFactory.shared(reset:)(0);
  v45 = v0[26];
  sub_19A46C33C(v44 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs, v45, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);

  v46 = *(v45 + 8);

  sub_19A46C2DC(v45, type metadata accessor for AppleDiffusionPipeline.ResourceURLs);
  if (!v46)
  {
  }

  v61 = v0[46];
  v62 = v0[49];
  v64 = v0[45];
  v47 = v0[43];
  v67 = v0[44];
  v63 = v0[42];
  v65 = v0[33];
  v48 = v0[24];
  v49 = v0[25];
  v50 = v0[23];
  v69 = v0[5];
  sub_19A57242C();
  swift_allocObject();
  v0[55] = sub_19A57241C();
  sub_19A571DEC();
  (*(v48 + 104))(v49, *MEMORY[0x1E69AA398], v50);
  sub_19A57240C();

  (*(v48 + 8))(v49, v50);
  v71(v61, v62, v47);
  v71(v64, v63, v47);
  sub_19A46C33C(v36, v65, type metadata accessor for GenerationRecipe);
  type metadata accessor for ModelManagerInferenceProvider.ImageGenerationRequest(0);
  v51 = swift_allocObject();
  v0[56] = v51;
  v52 = OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest_continuation;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1D58);
  (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
  v54 = OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest__canceller;
  type metadata accessor for StatefulCanceller();
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v51 + v54) = v55;
  v56 = *(v67 + 32);
  v56(v51 + OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest_uuid, v61, v47);
  v56(v51 + OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest__generationID, v64, v47);
  sub_19A46C3C4(v65, v51 + OBJC_IVAR____TtCC16VisualGeneration29ModelManagerInferenceProvider22ImageGenerationRequest__recipe, type metadata accessor for GenerationRecipe);
  v57 = *(v69 + 16);
  v58 = swift_task_alloc();
  v0[57] = v58;
  *v58 = v0;
  v58[1] = sub_19A469320;
  v59 = v0[22];

  return sub_19A46280C(v59, v51, v57, &off_1F0DB3C58);
}

uint64_t sub_19A469320()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_19A469DF4;
  }

  else
  {
    v2 = sub_19A469434;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_19A469434()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  sub_19A46C33C(v0[22], v5, type metadata accessor for ImageGenerator.Result);
  (*(v1 + 56))(v5, 0, 1, v2);
  *v4 = vdupq_n_s64(1uLL);
  v4[1].i16[0] = 256;
  sub_19A33546C(v5, v4->i64 + *(v3 + 28), &qword_1EAFA0C28);
  sub_19A33546C(v5, v6, &qword_1EAFA0C28);
  if ((*(v1 + 48))(v6, 1, v2) == 1)
  {
    v7 = v0[15];
    sub_19A2F3FA0(v0[16], &qword_1EAFA0C28);
    v8 = v7;
LABEL_30:
    sub_19A2F3FA0(v8, &qword_1EAFA0C28);
    goto LABEL_31;
  }

  v9 = v0[15];
  v10 = *v9;

  sub_19A46C2DC(v9, type metadata accessor for ImageGenerator.Result);
  v63 = MEMORY[0x1E69E7CC0];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v0[13];
    v13 = v0[14];
    v14 = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v12 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_19A46C33C(v14, v0[14], type metadata accessor for GeneratedImage);
      v17 = v0[14];
      if (*(v13 + 8) == 2)
      {
        v18 = *v17;
        IOSurface = CVPixelBufferGetIOSurface(v18);
        v20 = v0[14];
        if (IOSurface)
        {
          v21 = IOSurface;

          v22 = sub_19A46C2DC(v20, type metadata accessor for GeneratedImage);
          MEMORY[0x19A900BE0](v22);
          if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19A5730AC();
          }

          sub_19A5730FC();
          v16 = v63;
        }

        else
        {
          sub_19A46C2DC(v0[14], type metadata accessor for GeneratedImage);
        }
      }

      else
      {
        sub_19A46C2DC(v17, type metadata accessor for GeneratedImage);
      }

      v14 += v15;
      --v11;
    }

    while (v11);

    if (!(v16 >> 62))
    {
LABEL_14:
      v23 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_14;
    }
  }

  v23 = sub_19A573B4C();
  if (v23)
  {
LABEL_15:
    v24 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x19A901520](v24, v16);
      }

      else
      {
        if (v24 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v25 = *(v16 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      sub_19A57277C();
      v28 = IOSurfaceSetOwnershipIdentity();
      if (v28)
      {
        break;
      }

      ++v24;
      if (v27 == v23)
      {
        goto LABEL_26;
      }
    }

    v29 = v28;

    v30 = sub_19A5723DC();
    v31 = sub_19A57355C();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[16];
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 67240192;
      *(v34 + 4) = v29;
      _os_log_impl(&dword_19A2DE000, v30, v31, "ModelManagerInferenceProvider Unable to assign output surface ownership identity error: %{public}d", v34, 8u);
      MEMORY[0x19A902C50](v34, -1, -1);
    }

    v8 = v33;
    goto LABEL_30;
  }

LABEL_26:
  sub_19A2F3FA0(v0[16], &qword_1EAFA0C28);

LABEL_31:
  v35 = v0[58];
  v36 = v0[22];
  v37 = v0[19];
  v38 = v0[12];
  sub_19A46C3C4(v0[18], v37, type metadata accessor for ModelManagerInferenceProvider.Output);
  sub_19A45B024(v37, type metadata accessor for ModelManagerInferenceProvider.Output, &qword_1EAF9E9B0, type metadata accessor for ModelManagerInferenceProvider.Output, &unk_19A588300, sub_19A46DC4C, v38);

  sub_19A46C2DC(v37, type metadata accessor for ModelManagerInferenceProvider.Output);
  sub_19A46C2DC(v36, type metadata accessor for ImageGenerator.Result);
  if (v35)
  {
    v39 = v0[42];
    (*(v0[39] + 8))(v0[40], v0[38]);
    sub_19A46C2DC(v39, type metadata accessor for ModelManagerInferenceProvider.Input);
    v40 = v0[54];
    v41 = v0[52];
    v59 = v0[51];
    v60 = v0[53];
    v42 = v0[49];
    v43 = v0[44];
    v58 = v0[43];
    v44 = v0[8];
    v45 = v0[9];
    v47 = v0[6];
    v46 = v0[7];
    sub_19A4B207C(v35, v45);
    sub_19A464DDC(v35, v45);
    (*(v44 + 16))(v47, v45, v46);
    sub_19A46BC78(&qword_1EAF9E958, 255, MEMORY[0x1E69B2638]);
    swift_willThrowTypedImpl();

    (*(v44 + 8))(v45, v46);
    sub_19A46A108("requestOneShot", 14, 2, v40, v42);

    (*(v41 + 8))(v60, v59);
    (*(v43 + 8))(v42, v58);
  }

  else
  {
    v50 = v0[53];
    v49 = v0[54];
    v51 = v0[52];
    v52 = v0[49];
    v62 = v0[51];
    v53 = v0[44];
    v54 = v0[42];
    v61 = v0[43];
    v56 = v0[39];
    v55 = v0[40];
    v57 = v0[38];
    (*(v0[11] + 32))(v0[2]);
    (*(v56 + 8))(v55, v57);
    sub_19A46C2DC(v54, type metadata accessor for ModelManagerInferenceProvider.Input);
    sub_19A46A108("requestOneShot", 14, 2, v49, v52);

    (*(v51 + 8))(v50, v62);
    (*(v53 + 8))(v52, v61);
  }

  v48 = v0[1];

  v48();
}

uint64_t sub_19A469DF4()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  (*(v3 + 8))(v2, v4);
  sub_19A46C2DC(v1, type metadata accessor for ModelManagerInferenceProvider.Input);
  v5 = v0[58];
  v6 = v0[54];
  v7 = v0[52];
  v17 = v0[51];
  v18 = v0[53];
  v8 = v0[49];
  v9 = v0[44];
  v16 = v0[43];
  v11 = v0[8];
  v10 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  sub_19A4B207C(v5, v10);
  sub_19A464DDC(v5, v10);
  (*(v11 + 16))(v13, v10, v12);
  sub_19A46BC78(&qword_1EAF9E958, 255, MEMORY[0x1E69B2638]);
  swift_willThrowTypedImpl();

  (*(v11 + 8))(v10, v12);
  sub_19A46A108("requestOneShot", 14, 2, v6, v8);

  (*(v7 + 8))(v18, v17);
  (*(v9 + 8))(v8, v16);

  v14 = v0[1];

  return v14();
}

uint64_t sub_19A46A108(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v36) = a3;
  v7 = sub_19A57102C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v11 = sub_19A57236C();
  __swift_project_value_buffer(v11, qword_1ED82BD30);
  (*(v8 + 16))(v10, a5, v7);
  v12 = sub_19A57234C();
  v13 = sub_19A57231C();
  v37 = &v32;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57239C();
  v35 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {

    (*(v14 + 8))(v16, v13);
    return (*(v8 + 8))(v10, v7);
  }

  v34 = v13;
  if ((v36 & 1) == 0)
  {
    if (a1)
    {
      v36 = a1;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (a1 >> 32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (a1 >> 16 > 0x10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = &v39;
LABEL_12:
  v18 = sub_19A57237C();
  v32 = &v32;
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_19A5723CC();

  v22 = (*(v19 + 88))(v21, v18);
  if (MEMORY[0x1E69E93E0] && v22 == *MEMORY[0x1E69E93E0])
  {
    v23 = 0;
    v24 = 0;
    v33 = "[Error] Interval already ended";
  }

  else
  {
    (*(v19 + 8))(v21, v18);
    v33 = "UUID=%{public}s";
    v24 = 2;
    v23 = 1;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v38 = v26;
  *v25 = v24;
  *(v25 + 1) = v23;
  *(v25 + 2) = 2082;
  sub_19A46BC78(&qword_1ED8252D8, 255, MEMORY[0x1E69695A8]);
  v27 = sub_19A573EDC();
  v29 = v28;
  (*(v8 + 8))(v10, v7);
  v30 = sub_19A31F114(v27, v29, &v38);

  *(v25 + 4) = v30;
  v31 = sub_19A5722FC();
  _os_signpost_emit_with_name_impl(&dword_19A2DE000, v12, v35, v31, v36, v33, v25, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  MEMORY[0x19A902C50](v26, -1, -1);
  MEMORY[0x19A902C50](v25, -1, -1);

  return (*(v14 + 8))(v16, v34);
}

uint64_t ModelManagerInferenceProvider.deinit()
{

  return v0;
}

uint64_t ModelManagerInferenceProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A46A630@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = ModelManagerInferenceProvider.init()();
  *a1 = v2;
  return result;
}

uint64_t sub_19A46A66C()
{
  v1 = sub_19A571DAC();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_19A46A6D0()
{
  v1 = sub_19A571D7C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19A46A778()
{
  sub_19A571D8C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A46A7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v6 = sub_19A571CBC();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_19A46DC70;

  return _s16VisualGeneration29ModelManagerInferenceProviderC15transitionAsset_2toy0cD8Services0efH10DescriptorV_AF9LoadStateOtYaAF0E5ErrorOYKF(a1, a2, v7);
}

uint64_t sub_19A46A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_19A33558C;

  return MEMORY[0x1EEE1F3C8](a1, a2, a3, a4, a5);
}

void sub_19A46A9D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A33558C;

  JUMPOUT(0x19A8FF910);
}

uint64_t sub_19A46AA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = sub_19A571CBC();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_19A46ABA8;

  return _s16VisualGeneration29ModelManagerInferenceProviderC14requestOneShot10clientData13configuration0cD8Services06ClientK0VAI_AG0eF20RequestConfigurationVtYaAG0E5ErrorOYKF(a1, a2, a3, v9);
}

uint64_t sub_19A46ABA8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

unint64_t sub_19A46ACDC(unint64_t result, uint64_t a2, __int128 *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_19A31DC7C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_19A4154CC(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_19A46ADB0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_19A573B4C();
LABEL_9:
  result = sub_19A5739BC();
  *v1 = result;
  return result;
}

xpc_object_t sub_19A46AE74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_19A57096C();
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = sub_19A57099C();
  if (__OFSUB__(a1, v9))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_19A57098C();
    goto LABEL_18;
  }

  v10 = (a1 - v9 + v8);
  result = sub_19A57098C();
  if (v10)
  {
    v12 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v13 = 0;
        return xpc_data_create(v10, v13);
      }

      v15 = *(a3 + 16);
      v14 = *(a3 + 24);
      v13 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        return xpc_data_create(v10, v13);
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(a4);
      return xpc_data_create(v10, v13);
    }

    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v13 = HIDWORD(a3) - a3;
      return xpc_data_create(v10, v13);
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_19A46AF3C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_19A31DC7C(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_19A415CB0(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_19A46B010(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_19A31E384(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_19A415DD4(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_19A46B0D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x800000019A59A8D0 == a2;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000019A59A8F0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x526E776F6E6B6E75 && a2 == 0xEE00747365757165 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000019A59A910 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A59A930 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000019A59A950 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000019A59A970 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000019A59A990 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000024 && 0x800000019A59A9B0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x53676E697373696DLL && a2 == 0xEC000000656C7974)
  {

    return 9;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_19A46B410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746172656E6567 && a2 == 0xEC00000044496E6FLL;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A5954D0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019A59AA50 == a2)
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

uint64_t sub_19A46B538(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E6572727563 && a2 == 0xEB00000000706574;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574536C61746F74 && a2 == 0xEA00000000007370 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536C616E69467369 && a2 == 0xEB00000000706574 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A59AA70 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t sub_19A46B6B8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_19A573B4C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_19A573B4C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_19A46ADB0(result);

  return sub_19A416934(v4, v2, 0);
}

uint64_t sub_19A46B790(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_19A571C6C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_19A571DFC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_19A57102C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_19A33558C;

  return sub_19A465C34(a1, v1 + v6, v1 + v9, v1 + v12, v13);
}

uint64_t sub_19A46B960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(sub_19A571C6C() - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_19A33558C;

  return sub_19A466D8C(a1, a2, a3, a4, a5, a6, v6 + v15);
}

uint64_t objectdestroy_6Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 8, v4 | 7);
}

uint64_t sub_19A46BB50(char a1)
{
  v4 = *(sub_19A571DFC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A2F759C;

  return sub_19A467890(a1, v1 + v5, v6);
}

uint64_t sub_19A46BC78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A46BD00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1EA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v63 - v5;
  type metadata accessor for AppleDiffusionResourceFactory(0);
  result = static AppleDiffusionResourceFactory.shared(reset:)(0);
  v8 = v1;
  if (!v1)
  {
    v9 = result;
    v10 = (result + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs);
    v11 = *(result + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs + 8);
    v73 = v6;
    v74 = v3;
    if (v11)
    {
      v67 = *v10;
      v70 = v11;
    }

    else
    {
      v67 = 0;
      v70 = 0xE000000000000000;
    }

    v65 = v9;
    v12 = *(v9 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterVersions);
    v13 = a1 + 64;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 64);
    v17 = (v14 + 63) >> 6;
    v72 = (v4 + 8);

    v18 = 0;
    v66 = MEMORY[0x1E69E7CC0];
    v71 = v12;
    v68 = v17;
    v69 = a1 + 64;
    if (v16)
    {
      while (1)
      {
        v77 = v8;
LABEL_13:
        v20 = (v18 << 10) | (16 * __clz(__rbit64(v16)));
        v21 = a1;
        v22 = (*(a1 + 48) + v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = (*(a1 + 56) + v20);
        v26 = v25[1];
        v75 = *v25;
        v76 = v23;
        v27 = v26;

        v28 = v24;

        v29 = v73;
        sub_19A57119C();
        v30 = v74;
        v31 = sub_19A57147C();
        v33 = v32;
        (*v72)(v29, v30);
        v34 = v77;
        v35 = static ModelCatalogHelpers.localizedCatalogBundleIdentifier(nonLocalizedIdentifier:)(v31, v33);
        v77 = v34;
        if (v34)
        {
        }

        v37 = v36;
        if (v36)
        {
          v38 = v35;

          v31 = v38;
          v33 = v37;
        }

        v39 = v76;
        if (v76 == v31 && v28 == v33)
        {
          break;
        }

        v41 = sub_19A573F1C();

        a1 = v21;
        if (v41)
        {
          goto LABEL_28;
        }

        v42._countAndFlagsBits = v39;
        v42._object = v28;
        LOBYTE(v43) = AppleDiffusionAdapter.init(modelCatalogInferenceAssetIdentifier:)(v42);
        v44 = v71;
        if (v43 != 11)
        {
          if (*(v71 + 16))
          {
            v45 = sub_19A31FBD4(v43);
            if (v46)
            {
              v47 = *(*(v44 + 56) + 8 * v45);
              if (*(v47 + 16))
              {

                v48 = sub_19A31FDEC(0);
                if (v49)
                {
                  v50 = (*(v47 + 56) + 16 * v48);
                  v51 = *v50;
                  v52 = v50[1];

                  goto LABEL_31;
                }
              }
            }
          }
        }

        v51 = 0;
        v52 = 0;
LABEL_31:
        v16 &= v16 - 1;
        if (v27)
        {
          if (!v52 || (v75 != v51 || v27 != v52) && (sub_19A573F1C() & 1) == 0)
          {
LABEL_41:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_19A31EC14(0, *(v66 + 2) + 1, 1, v66);
              v66 = result;
            }

            v54 = *(v66 + 2);
            v53 = *(v66 + 3);
            v55 = v54 + 1;
            if (v54 >= v53 >> 1)
            {
              v64 = v54 + 1;
              result = sub_19A31EC14((v53 > 1), v54 + 1, 1, v66);
              v55 = v64;
              v66 = result;
            }

            v56 = v66;
            *(v66 + 2) = v55;
            v57 = &v56[48 * v54];
            v58 = v75;
            *(v57 + 4) = v76;
            *(v57 + 5) = v28;
            *(v57 + 6) = v58;
            *(v57 + 7) = v27;
            *(v57 + 8) = v51;
            *(v57 + 9) = v52;
            goto LABEL_39;
          }
        }

        else if (v52)
        {
          goto LABEL_41;
        }

LABEL_39:
        v8 = v77;
        v17 = v68;
        v13 = v69;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      a1 = v21;
LABEL_28:
      v52 = v70;

      v51 = v67;
      goto LABEL_31;
    }

    while (1)
    {
LABEL_9:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      if (v19 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        v77 = v8;
        v18 = v19;
        goto LABEL_13;
      }
    }

    v59 = v66;
    if (*(v66 + 2))
    {
      type metadata accessor for GeneratorError(0);
      sub_19A46BC78(&unk_1EAFA1A00, 255, type metadata accessor for GeneratorError);
      v60 = swift_allocError();
      *v61 = v59;
      swift_storeEnumTagMultiPayload();
      sub_19A571CBC();
      sub_19A46BC78(&qword_1EAF9E958, 255, MEMORY[0x1E69B2638]);
      swift_allocError();
      sub_19A4B207C(v60, v62);

      swift_willThrow();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_19A46C2DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A46C33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A46C3C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A46C42C(void *a1)
{
  a1[1] = sub_19A46C464();
  a1[2] = sub_19A46C4B8();
  result = sub_19A3577FC();
  a1[3] = result;
  return result;
}

unint64_t sub_19A46C464()
{
  result = qword_1EAFA1D60;
  if (!qword_1EAFA1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1D60);
  }

  return result;
}

unint64_t sub_19A46C4B8()
{
  result = qword_1EAFA1D68;
  if (!qword_1EAFA1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1D68);
  }

  return result;
}

uint64_t sub_19A46C514()
{
  result = sub_19A571C6C();
  if (v1 <= 0x3F)
  {
    result = sub_19A571DFC();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ImageGenerator.Result(319);
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16VisualGeneration29ModelManagerInferenceProviderC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_19A46C6B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19A46C6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_19A46C73C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

void sub_19A46C76C()
{
  sub_19A57102C();
  if (v0 <= 0x3F)
  {
    sub_19A46C880();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GenerationRecipe(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_19A46C880()
{
  if (!qword_1EAF9E830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1D58);
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9E830);
    }
  }
}

void sub_19A46C90C()
{
  sub_19A57102C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GenerationRecipe(319);
    if (v1 <= 0x3F)
    {
      sub_19A46C9A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19A46C9A8()
{
  if (!qword_1ED823F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2D40);
    v0 = sub_19A572B1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED823F80);
    }
  }
}

void sub_19A46CA44()
{
  sub_19A3C35A0();
  if (v0 <= 0x3F)
  {
    sub_19A46CAE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A46CAE0()
{
  if (!qword_1ED824B08[0])
  {
    type metadata accessor for ImageGenerator.Result(255);
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, qword_1ED824B08);
    }
  }
}

unint64_t sub_19A46CBEC()
{
  result = qword_1EAFA1D70;
  if (!qword_1EAFA1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1D70);
  }

  return result;
}

unint64_t sub_19A46CC44()
{
  result = qword_1EAFA1D78;
  if (!qword_1EAFA1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1D78);
  }

  return result;
}

unint64_t sub_19A46CC9C()
{
  result = qword_1EAFA1D80;
  if (!qword_1EAFA1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1D80);
  }

  return result;
}

unint64_t sub_19A46CCF4()
{
  result = qword_1EAFA1D88;
  if (!qword_1EAFA1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1D88);
  }

  return result;
}

unint64_t sub_19A46CD4C()
{
  result = qword_1EAFA1D90;
  if (!qword_1EAFA1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1D90);
  }

  return result;
}

unint64_t sub_19A46CE88()
{
  result = qword_1EAFA1D98;
  if (!qword_1EAFA1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1D98);
  }

  return result;
}

unint64_t sub_19A46CEE0()
{
  result = qword_1EAFA1DA0;
  if (!qword_1EAFA1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DA0);
  }

  return result;
}

unint64_t sub_19A46CF38()
{
  result = qword_1EAFA1DA8;
  if (!qword_1EAFA1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DA8);
  }

  return result;
}

unint64_t sub_19A46CF90()
{
  result = qword_1EAFA1DB0;
  if (!qword_1EAFA1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DB0);
  }

  return result;
}

unint64_t sub_19A46CFE8()
{
  result = qword_1EAFA1DB8;
  if (!qword_1EAFA1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DB8);
  }

  return result;
}

unint64_t sub_19A46D040()
{
  result = qword_1EAFA1DC0;
  if (!qword_1EAFA1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DC0);
  }

  return result;
}

unint64_t sub_19A46D098()
{
  result = qword_1EAFA1DC8;
  if (!qword_1EAFA1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DC8);
  }

  return result;
}

unint64_t sub_19A46D0F0()
{
  result = qword_1EAFA1DD0;
  if (!qword_1EAFA1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DD0);
  }

  return result;
}

unint64_t sub_19A46D148()
{
  result = qword_1EAFA1DD8;
  if (!qword_1EAFA1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DD8);
  }

  return result;
}

unint64_t sub_19A46D1A0()
{
  result = qword_1EAFA1DE0;
  if (!qword_1EAFA1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DE0);
  }

  return result;
}

unint64_t sub_19A46D1F8()
{
  result = qword_1EAFA1DE8;
  if (!qword_1EAFA1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DE8);
  }

  return result;
}

unint64_t sub_19A46D250()
{
  result = qword_1EAFA1DF0;
  if (!qword_1EAFA1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DF0);
  }

  return result;
}

unint64_t sub_19A46D2A8()
{
  result = qword_1EAFA1DF8;
  if (!qword_1EAFA1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1DF8);
  }

  return result;
}

unint64_t sub_19A46D300()
{
  result = qword_1EAFA1E00;
  if (!qword_1EAFA1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1E00);
  }

  return result;
}

unint64_t sub_19A46D358()
{
  result = qword_1EAFA1E08;
  if (!qword_1EAFA1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1E08);
  }

  return result;
}

unint64_t sub_19A46D3B0()
{
  result = qword_1EAFA1E10;
  if (!qword_1EAFA1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1E10);
  }

  return result;
}

unint64_t sub_19A46D408()
{
  result = qword_1EAFA1E18;
  if (!qword_1EAFA1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1E18);
  }

  return result;
}

unint64_t sub_19A46D460()
{
  result = qword_1EAFA1E20;
  if (!qword_1EAFA1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1E20);
  }

  return result;
}

unint64_t sub_19A46D4B8()
{
  result = qword_1EAFA1E28;
  if (!qword_1EAFA1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1E28);
  }

  return result;
}

unint64_t sub_19A46D510()
{
  result = qword_1EAFA1E30;
  if (!qword_1EAFA1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1E30);
  }

  return result;
}

unint64_t sub_19A46D568()
{
  result = qword_1EAFA1E38;
  if (!qword_1EAFA1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1E38);
  }

  return result;
}

unint64_t sub_19A46D5C0()
{
  result = qword_1EAFA1E40;
  if (!qword_1EAFA1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1E40);
  }

  return result;
}

uint64_t sub_19A46D614(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19A2F759C;

  return sub_19A45C9B4(a1, v1);
}

uint64_t sub_19A46D6B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerator.Result(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A46D71C()
{
  result = qword_1ED8242C8[0];
  if (!qword_1ED8242C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8242C8);
  }

  return result;
}

unint64_t sub_19A46D770()
{
  result = qword_1EAF9E910;
  if (!qword_1EAF9E910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1E50);
    sub_19A46D8C8(&qword_1EAF9E8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E910);
  }

  return result;
}

unint64_t sub_19A46D81C()
{
  result = qword_1EAF9F178;
  if (!qword_1EAF9F178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1E50);
    sub_19A46D8C8(&qword_1EAF9F140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F178);
  }

  return result;
}

uint64_t sub_19A46D8C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2D40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A46D934()
{
  result = qword_1ED824218[0];
  if (!qword_1ED824218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED824218);
  }

  return result;
}

uint64_t sub_19A46D9AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A46DA40()
{
  result = qword_1EAFA1EB8;
  if (!qword_1EAFA1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1EB8);
  }

  return result;
}

unint64_t sub_19A46DA98()
{
  result = qword_1EAFA1EC0;
  if (!qword_1EAFA1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1EC0);
  }

  return result;
}

unint64_t sub_19A46DAF0()
{
  result = qword_1ED824208;
  if (!qword_1ED824208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824208);
  }

  return result;
}

unint64_t sub_19A46DB48()
{
  result = qword_1ED824210;
  if (!qword_1ED824210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824210);
  }

  return result;
}

unint64_t sub_19A46DBA0()
{
  result = qword_1ED8242B8;
  if (!qword_1ED8242B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8242B8);
  }

  return result;
}

unint64_t sub_19A46DBF8()
{
  result = qword_1ED8242C0;
  if (!qword_1ED8242C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8242C0);
  }

  return result;
}

uint64_t sub_19A46DC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A46DC9C, 0, 0);
}

uint64_t sub_19A46DC9C()
{
  v1 = v0[12];
  v2 = type metadata accessor for TextSanitizer();
  v3 = (v1 + *(v2 + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v1 + *(v2 + 24) + 16);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_19A46DD7C;
  v8 = v0[11];
  v10 = v0[8];
  v9 = v0[9];

  return sub_19A41B4F0(v10, v9, v5, v4, v8, v6);
}

uint64_t sub_19A46DD7C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  *(v8 + 112) = a4;
  *(v8 + 120) = v4;

  if (v4)
  {
    v9 = sub_19A46E0F0;
  }

  else
  {
    *(v8 + 128) = a3;
    *(v8 + 33) = a1 & 1;
    v9 = sub_19A46DEB8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_19A46DEB8()
{
  v18 = v0;
  v1 = *(v0 + 33);
  v2 = *(v0 + 80);

  if (v2 & 1) == 0 || (v1)
  {
    v14 = *(v0 + 8);
    v15 = *(v0 + 112);

    return v14(v15);
  }

  else
  {

    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v3 = sub_19A5723FC();
    __swift_project_value_buffer(v3, qword_1ED82BCF0);

    v4 = sub_19A5723DC();
    v5 = sub_19A57354C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 64);
      v6 = *(v0 + 72);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136380675;
      *(v8 + 4) = sub_19A31F114(v7, v6, &v17);
      _os_log_impl(&dword_19A2DE000, v4, v5, "Text rejected during scrub: %{private}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x19A902C50](v9, -1, -1);
      MEMORY[0x19A902C50](v8, -1, -1);
    }

    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    sub_19A3E3D84();
    swift_allocError();
    *v12 = v11;
    v12[1] = v10;
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 2415919104;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_19A46E0F0()
{
  v1 = *(v0 + 120);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    if (v5 == 3 && v3 == 3 && v4 == 0)
    {

      sub_19A335164();
      swift_allocError();
      *v13 = xmmword_19A577090;
      *(v13 + 16) = 3;
      swift_willThrow();
      v12 = *(v0 + 40);
      goto LABEL_14;
    }

    sub_19A46FE3C(v3, v4, v5);
  }

  v8 = *(v0 + 120);

  *(v0 + 48) = v8;
  v9 = v8;
  sub_19A2F1600(0, &qword_1EAF9E768);
  if (!swift_dynamicCast())
  {

    goto LABEL_15;
  }

  v10 = *(v0 + 56);
  sub_19A3E3D84();
  swift_allocError();
  *v11 = 1;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = 0x8000000;
  swift_willThrow();
  v12 = *(v0 + 48);
LABEL_14:

LABEL_15:
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_19A46E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[26] = a6;
  v7[27] = v6;
  v7[24] = a4;
  v7[25] = a5;
  v7[22] = a2;
  v7[23] = a3;
  v7[21] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v7[28] = swift_task_alloc();
  v8 = sub_19A57112C();
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A46E3B4, 0, 0);
}

uint64_t sub_19A46E3B4()
{
  v27 = v0;
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = type metadata accessor for TextSanitizer();
  v6 = *(v4 + *(v5 + 20));
  v7 = objc_allocWithZone(MEMORY[0x1E69CA778]);
  v8 = sub_19A572CCC();
  v9 = [v7 initWithModelManagerServicesUseCaseID_];
  v0[32] = v9;

  [v9 setOnBehalfOfProcessID_];
  [v9 setGranularity_];
  [v9 setRegion_];
  sub_19A3B3F3C(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_19A2F3FA0(v0[28], &qword_1EAF9FDC8);
  }

  else
  {
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    (*(v11 + 32))(v10, v0[28], v12);
    v13 = sub_19A57109C();
    [v9 setLocale_];

    (*(v11 + 8))(v10, v12);
  }

  v14 = [objc_opt_self() processInfo];
  v15 = [v14 processIdentifier];

  v16 = *(*(sub_19A3A5C28(v15) + 16) + 16);
  *(swift_task_alloc() + 16) = v9;

  os_unfair_lock_lock((v16 + 24));
  sub_19A3A5D5C((v16 + 16), &v26);
  v0[33] = 0;
  v17 = v0[23];
  os_unfair_lock_unlock((v16 + 24));
  v18 = v26;
  v0[34] = v26;

  v19 = objc_allocWithZone(MEMORY[0x1E69CA780]);
  v20 = v18;
  v21 = [v19 init];
  v0[35] = v21;
  v22 = sub_19A572CCC();
  [v21 setText_];

  [v21 setKeepGoing_];
  [v21 setIsPersonalized_];
  [v21 setIsChildPresent_];
  v23 = sub_19A570FEC();
  [v21 setUserRequestID_];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_19A46E980;
  v24 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1ED0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19A354FC8;
  v0[13] = &block_descriptor_8;
  v0[14] = v24;
  [v20 sanitizeRequestAsynchronously:v21 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19A46E980()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_19A46EDFC;
  }

  else
  {
    v2 = sub_19A46EA90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A46EA90()
{
  v27 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 200);

  v3 = *(v0 + 144);
  if (v2)
  {

    v4 = [v3 signals];
    if (v4)
    {
      v5 = v4;
      v26[0] = 0;
      sub_19A2F1600(0, &unk_1EAF9E780);
      sub_19A572AEC();
    }

    sub_19A2E0A60(*(v0 + 200));
  }

  if ((*(v0 + 184) & 1) != 0 && ([v3 safe] & 1) == 0)
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v9 = sub_19A5723FC();
    __swift_project_value_buffer(v9, qword_1ED82BCF0);

    v10 = sub_19A5723DC();
    v11 = sub_19A57354C();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 168);
      v12 = *(v0 + 176);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[0] = v15;
      *v14 = 136380675;
      *(v14 + 4) = sub_19A31F114(v13, v12, v26);
      _os_log_impl(&dword_19A2DE000, v10, v11, "Text rejected during sanitize: %{private}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x19A902C50](v15, -1, -1);
      MEMORY[0x19A902C50](v14, -1, -1);
    }

    v16 = *(v0 + 272);
    v17 = *(v0 + 256);
    v19 = *(v0 + 168);
    v18 = *(v0 + 176);

    v20 = v3;
    sub_19A43A8A0(v20, v26);
    v21 = v26[0];
    v22 = v26[1];
    v23 = v26[2] | 0x10000000;
    sub_19A3E3D84();
    swift_allocError();
    *v24 = v19;
    v24[1] = v18;
    v24[2] = v21;
    v24[3] = v22;
    v24[4] = v23;
    swift_willThrow();

    v8 = *(v0 + 8);
  }

  else
  {
    v6 = *(v0 + 272);
    v7 = *(v0 + 256);

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_19A46EDFC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  swift_willThrow();

  *(v0 + 152) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  sub_19A2F1600(0, &qword_1EAF9E768);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 272);
    v6 = *(v0 + 256);

    v7 = *(v0 + 160);
    sub_19A3E3D84();
    swift_allocError();
    *v8 = 0;
    v8[1] = v7;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0x8000000;
    swift_willThrow();
  }

  else
  {
    v9 = *(v0 + 256);
  }

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_19A46EF68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF20);
    v2 = sub_19A573BEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_19A3355EC(&v22, v24);
        sub_19A3355EC(v24, v25);
        sub_19A3355EC(v25, &v23);
        result = sub_19A31F6BC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_19A3355EC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_19A3355EC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_19A46F1C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF20);
    v2 = sub_19A573BEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_19A2F1600(0, &unk_1EAF9E780);

        v19 = v18;
        swift_dynamicCast();
        sub_19A3355EC(&v25, v27);
        sub_19A3355EC(v27, v28);
        sub_19A3355EC(v28, &v26);
        result = sub_19A31F6BC(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_19A3355EC(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_19A3355EC(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_19A46F42C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1ED8);
    v1 = sub_19A573BEC();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_dynamicCast();
    sub_19A3355EC((v25 + 8), v23);
    sub_19A3355EC(v23, v25);
    sub_19A572CFC();
    sub_19A5740BC();
    sub_19A572E4C();
    v14 = sub_19A57410C();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_19A3355EC(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t TextSanitizerError.ExecutionFailureReason.hashValue.getter()
{
  v1 = *v0;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  return sub_19A57410C();
}

uint64_t TextSanitizerError.errorDescription.getter()
{
  v1 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_19A572C9C();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v6 = (v0[4] >> 27) & 3;
  if (v6)
  {
    v7 = v0[1];
    if (v6 == 1)
    {
      if (*v0)
      {
        sub_19A572C8C();
        sub_19A572C7C();
        if (v7)
        {
          v8 = [v7 localizedDescription];
          sub_19A572CFC();
        }
      }

      else
      {
        sub_19A572C8C();
        sub_19A572C7C();
        if (v7)
        {
          v9 = [v7 localizedDescription];
          sub_19A572CFC();
        }
      }

      sub_19A572C6C();

      sub_19A572C7C();
    }

    else
    {
      sub_19A572C8C();
      sub_19A572C7C();
      sub_19A572C6C();
      sub_19A572C7C();
      RejectionReason.description.getter();
      sub_19A572C6C();

      sub_19A572C7C();
    }

    sub_19A572CAC();
    sub_19A5710EC();
  }

  else
  {
    sub_19A572C8C();
    sub_19A572C7C();
    swift_getErrorValue();
    sub_19A57405C();
    sub_19A572C6C();

    sub_19A572C7C();
    sub_19A572CAC();
    sub_19A5710EC();
  }

  return sub_19A572D7C();
}

unint64_t sub_19A46FB6C()
{
  result = qword_1EAFA1EC8;
  if (!qword_1EAFA1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1EC8);
  }

  return result;
}

uint64_t sub_19A46FBD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFFFD && *(a1 + 40))
  {
    return (*a1 + 67108862);
  }

  if ((((*(a1 + 32) >> 27) & 3 | (4 * ((*(a1 + 32) >> 2) & 0x3F80 | (*(a1 + 32) >> 1) | (*(a1 + 32) >> 3) & 0xFFC000))) ^ 0x3FFFFFFu) >= 0x3FFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 32) >> 27) & 3 | (4 * ((*(a1 + 32) >> 2) & 0x3F80 | (*(a1 + 32) >> 1) | (*(a1 + 32) >> 3) & 0xFFC000))) ^ 0x3FFFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_19A46FC44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 67108862;
    if (a3 >= 0x3FFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFFFFF) - (a2 << 24);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F)) | (((v3 >> 14) & 0xFFF) << 17);
    }
  }

  return result;
}

uint64_t type metadata accessor for TextSanitizer()
{
  result = qword_1EAF9F810;
  if (!qword_1EAF9F810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A46FDA0()
{
  sub_19A366D8C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_19A46FE3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_19A46FE5C()
{
  sub_19A4703A8();
  if (v0 <= 0x3F)
  {
    sub_19A57378C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_19A46FEE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_19A47009C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 8) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = &a1[v11 + 8] & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

void sub_19A4703A8()
{
  if (!qword_1EAF9F1B0)
  {
    v0 = sub_19A57238C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F1B0);
    }
  }
}

void sub_19A4703FC(uint64_t a1)
{
  v2 = *v1;
  v4[2] = *(a1 + 16);
  v4[8] = sub_19A57378C();
  v4[9] = sub_19A470558;
  v4[10] = v4;
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v3));
  sub_19A470574();
  os_unfair_lock_unlock((v2 + v3));
}

uint64_t sub_19A4704CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for WriteOnceReadMany() + 28);
  v5 = sub_19A57378C();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_19A47059C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_19A31D080(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_19A470688(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_19A31CD00(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_19A470780(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_19A31D5B0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_19A470898(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_19A31DB70(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_19A4709B8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_19A470AFC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_19A31E7E4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_19A470BF0()
{
  result = sub_19A489348(0x7FFFFFFFFFFFFFFFuLL);
  qword_1EAFA1EE8 = result;
  return result;
}

unint64_t sub_19A470C14()
{
  v0[2] = 0;
  result = sub_19A32FCA8(MEMORY[0x1E69E7CC0]);
  v0[3] = result;
  if (qword_1EAF9F968 != -1)
  {
    result = swift_once();
  }

  v3 = qword_1EAFA1EE8;
  v0[4] = qword_1EAFA1EE8;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v3 + 0x14057B7EF767814FLL;
    sub_19A475DE8();
    v0[8] = &type metadata for SVD2LLDBTestPRNG;
    v0[9] = sub_19A471F5C();
    v0[5] = v4;
    sub_19A470CF8();
    if (v1)
    {
    }

    return v0;
  }

  return result;
}

uint64_t sub_19A470CF8()
{
  v2 = v0;
  v3 = sub_19A570EAC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  sub_19A571C0C();
  v10 = sub_19A571BEC();
  static CharacterFaces.resourceFileURL(faceEncoderVersion:)(v10, v11);
  if (!v1)
  {

    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v13 = sub_19A5723FC();
    __swift_project_value_buffer(v13, qword_1ED82BCF0);
    (*(v4 + 16))(v7, v9, v3);
    v14 = sub_19A5723DC();
    v15 = sub_19A57355C();
    v16 = os_log_type_enabled(v14, v15);
    v28 = v4;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v27 = v0;
      v18 = v17;
      v26 = swift_slowAlloc();
      v29 = v26;
      *v18 = 136315138;
      v25 = sub_19A570DDC();
      v20 = v19;
      v21 = *(v4 + 8);
      v21(v7, v3);
      v22 = sub_19A31F114(v25, v20, &v29);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_19A2DE000, v14, v15, "Loading character faces data file %s", v18, 0xCu);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x19A902C50](v23, -1, -1);
      v24 = v18;
      v2 = v27;
      MEMORY[0x19A902C50](v24, -1, -1);
    }

    else
    {

      v21 = *(v4 + 8);
      v21(v7, v3);
    }

    static CharacterFaces.load(from:)();
    v21(v9, v3);
    *(v2 + 16) = v29;
  }
}

void sub_19A471000(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v3 + 24);
  if (*(v8 + 16))
  {

    v9 = sub_19A31F734(a1);
    if (v10 & 1) != 0 && (v11 = *(*(v8 + 56) + 8 * v9), , , *(v11 + 16)) && (v12 = sub_19A31F7F8(v7), (v13))
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      v15 = *(v14 + 16);

      if (v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  LOBYTE(v78[0]) = v7;
  sub_19A471770(a1, v78);
LABEL_9:
  v16 = *(v4 + 24);
  if (!*(v16 + 16))
  {
LABEL_20:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v17 = sub_19A31F734(a1);
  if ((v18 & 1) == 0 || (v19 = *(*(v16 + 56) + 8 * v17), , , !*(v19 + 16)) || (v20 = sub_19A31F7F8(v7), (v21 & 1) == 0) || (v22 = *(*(v19 + 56) + 8 * v20), !*(v22 + 16)))
  {

    goto LABEL_20;
  }

  v23 = *(v22 + 32);
  if (!*(v4 + 16))
  {

    goto LABEL_22;
  }

  v78[0] = *(v4 + 16);
  LOBYTE(v77) = v7;

  v24 = CharacterFaces.characterFaces(for:skinTone:)(a1, &v77);

  if (!v24)
  {
LABEL_22:
    v75 = 0;
    v73 = 0;
    v74 = 0;
    goto LABEL_23;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v23 < *(v24 + 16))
  {
    v25 = (v24 + 24 * v23);
    v26 = v25[4];
    v73 = v25[6];
    v74 = v25[5];

    v75 = v26;

LABEL_23:
    v72 = v23;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v27 = sub_19A5723FC();
    __swift_project_value_buffer(v27, qword_1ED82BCF0);
    v28 = sub_19A5723DC();
    LOBYTE(v29) = sub_19A57354C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v78[0] = v70;
      *v30 = 136446722;
      LOBYTE(v77) = a1;
      v31 = sub_19A572DAC();
      v33 = sub_19A31F114(v31, v32, v78);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      LOBYTE(v77) = v7;
      v34 = sub_19A572DAC();
      v36 = sub_19A31F114(v34, v35, v78);

      *(v30 + 14) = v36;
      *(v30 + 22) = 2082;
      v77 = v72;
      v37 = sub_19A573EDC();
      v39 = sub_19A31F114(v37, v38, v78);

      *(v30 + 24) = v39;
      _os_log_impl(&dword_19A2DE000, v28, v29, "Selected next character face index for %{public}s %{public}s %{public}s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v70, -1, -1);
      MEMORY[0x19A902C50](v30, -1, -1);
    }

    if (!v75)
    {
      v40 = sub_19A5723DC();
      LOBYTE(v29) = sub_19A57353C();
      if (os_log_type_enabled(v40, v29))
      {
        v41 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v78[0] = v71;
        *v41 = 136315650;
        LOBYTE(v77) = a1;
        v42 = sub_19A572DAC();
        v44 = sub_19A31F114(v42, v43, v78);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        LOBYTE(v77) = v7;
        v45 = sub_19A572DAC();
        v47 = sub_19A31F114(v45, v46, v78);

        *(v41 + 14) = v47;
        *(v41 + 22) = 2080;
        v77 = v72;
        v48 = sub_19A573EDC();
        v50 = sub_19A31F114(v48, v49, v78);

        *(v41 + 24) = v50;
        _os_log_impl(&dword_19A2DE000, v40, v29, "Character face unexpectedly unavailable for gender: %s skinTone: %s index: %s", v41, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x19A902C50](v71, -1, -1);
        MEMORY[0x19A902C50](v41, -1, -1);
      }
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v4 + 24);
    v52 = v77;
    *(v4 + 24) = 0x8000000000000000;
    v54 = sub_19A31F734(a1);
    v55 = *(v52 + 16);
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      __break(1u);
      goto LABEL_54;
    }

    LOBYTE(v29) = v53;
    if (*(v52 + 24) >= v57)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_56;
      }

      if (v53)
      {
        goto LABEL_38;
      }

      goto LABEL_57;
    }

    sub_19A329874(v57, isUniquelyReferenced_nonNull_native);
    v58 = sub_19A31F734(a1);
    if ((v29 & 1) != (v59 & 1))
    {
      goto LABEL_62;
    }

    v54 = v58;
    if (v29)
    {
      goto LABEL_38;
    }

LABEL_57:
    while (1)
    {
      __break(1u);
LABEL_58:
      sub_19A32C5D0();
      if ((v29 & 1) == 0)
      {
        break;
      }

LABEL_45:
      v7 = v76;
      v29 = *(*(v76 + 56) + 8 * isUniquelyReferenced_nonNull_native);
      v68 = *(v29 + 2);
      if (v68)
      {
        v69 = swift_isUniquelyReferenced_nonNull_native();
        if (v69 && (v68 - 1) <= *(v29 + 3) >> 1)
        {
          sub_19A415F34(0, 1, 0);
          goto LABEL_50;
        }

        v29 = sub_19A31D5B0(v69, v68, 1, v29);
        sub_19A415F34(0, 1, 0);
        if (v29)
        {
LABEL_50:
          *(*(v76 + 56) + 8 * isUniquelyReferenced_nonNull_native) = v29;
        }

        else
        {
          sub_19A4ACBF8(isUniquelyReferenced_nonNull_native, v76);
        }

        *(*(a1 + 56) + 8 * v54) = v76;
        *(v4 + 24) = a1;
        swift_endAccess();

        *a3 = v75;
        a3[1] = v74;
        a3[2] = v73;
        return;
      }

      while (1)
      {
        __break(1u);
LABEL_56:
        sub_19A32C5E4();
        if ((v29 & 1) == 0)
        {
          break;
        }

LABEL_38:
        a1 = v77;
        v60 = *(*(v77 + 56) + 8 * v54);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v76 = v60;
        isUniquelyReferenced_nonNull_native = sub_19A31F7F8(v7);
        v63 = *(v60 + 16);
        v64 = (v62 & 1) == 0;
        v65 = v63 + v64;
        if (!__OFADD__(v63, v64))
        {
          LOBYTE(v29) = v62;
          if (*(v60 + 24) < v65)
          {
            sub_19A3294B0(v65, v61);
            v66 = sub_19A31F7F8(v7);
            if ((v29 & 1) != (v67 & 1))
            {
              goto LABEL_63;
            }

            isUniquelyReferenced_nonNull_native = v66;
            if (v29)
            {
              goto LABEL_45;
            }

            goto LABEL_59;
          }

          if ((v61 & 1) == 0)
          {
            goto LABEL_58;
          }

          if ((v62 & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_45;
        }

LABEL_54:
        __break(1u);
      }
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  sub_19A57404C();
  __break(1u);
LABEL_63:
  sub_19A57404C();
  __break(1u);
}

void sub_19A471770(uint64_t a1, unsigned __int8 *a2)
{
  if (!*(v2 + 16))
  {
    return;
  }

  v6 = v2;
  v7 = *a2;
  v64[3] = *(v2 + 16);
  LOBYTE(v64[0]) = v7;

  v8 = CharacterFaces.characterFaces(for:skinTone:)(a1, v64);

  if (!v8)
  {
    return;
  }

  v9 = *(v8 + 16);

  if (!v9)
  {
    return;
  }

  swift_beginAccess();
  if (!*(*(v6 + 24) + 16) || (, sub_19A31F734(a1), v11 = v10, , (v11 & 1) == 0))
  {
    v11 = sub_19A32FCD0(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v6 + 24);
    *(v6 + 24) = 0x8000000000000000;
    sub_19A33D2DC(v11, a1, isUniquelyReferenced_nonNull_native);
    *(v6 + 24) = v61;
    swift_endAccess();
  }

  v13 = *(v6 + 24);
  if (*(v13 + 16))
  {

    v14 = sub_19A31F734(a1);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      if (*(v16 + 16))
      {
        sub_19A31F7F8(v7);
        v18 = v17;

        if (v18)
        {
          while (1)
          {
            swift_beginAccess();
            __swift_mutable_project_boxed_opaque_existential_1(v6 + 40, *(v6 + 64));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1EF0);
            sub_19A471E7C();
            v11 = sub_19A572FCC();
            swift_endAccess();
            swift_beginAccess();
            LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
            v29 = *(v6 + 24);
            v62 = v29;
            *(v6 + 24) = 0x8000000000000000;
            v3 = sub_19A31F734(a1);
            v31 = *(v29 + 16);
            v32 = (v30 & 1) == 0;
            v33 = v31 + v32;
            if (__OFADD__(v31, v32))
            {
              goto LABEL_49;
            }

            v19 = v30;
            if (*(v29 + 24) >= v33)
            {
              if (v9)
              {
                if ((v30 & 1) == 0)
                {
                  goto LABEL_54;
                }
              }

              else
              {
LABEL_53:
                sub_19A32C5E4();
                if ((v19 & 1) == 0)
                {
                  goto LABEL_54;
                }
              }
            }

            else
            {
              sub_19A329874(v33, v9);
              v34 = sub_19A31F734(a1);
              if ((v19 & 1) != (v35 & 1))
              {
                goto LABEL_59;
              }

              v3 = v34;
              if ((v19 & 1) == 0)
              {
LABEL_54:
                __break(1u);
LABEL_55:
                sub_19A32C5D0();
                if (v9)
                {
                  goto LABEL_38;
                }

                goto LABEL_56;
              }
            }

            v4 = v62;
            v36 = *(*(v62 + 56) + 8 * v3);
            v37 = swift_isUniquelyReferenced_nonNull_native();
            v63 = v36;
            v19 = sub_19A31F7F8(v7);
            v39 = *(v36 + 16);
            v40 = (v38 & 1) == 0;
            v41 = v39 + v40;
            if (__OFADD__(v39, v40))
            {
              goto LABEL_50;
            }

            LOBYTE(v9) = v38;
            if (*(v36 + 24) >= v41)
            {
              if (v37)
              {
                if (v38)
                {
                  goto LABEL_38;
                }

                goto LABEL_56;
              }

              goto LABEL_55;
            }

            sub_19A3294B0(v41, v37);
            v42 = sub_19A31F7F8(v7);
            if ((v9 & 1) != (v43 & 1))
            {
              goto LABEL_60;
            }

            v19 = v42;
            if (v9)
            {
LABEL_38:
              v60 = *(*(v63 + 56) + 8 * v19);

              sub_19A470780(v44);
              if (v60)
              {
                *(*(v63 + 56) + 8 * v19) = v60;
              }

              else
              {
                sub_19A4ACBF8(v19, v63);
              }

              *(*(v4 + 56) + 8 * v3) = v63;
              *(v6 + 24) = v4;
              swift_endAccess();
              if (qword_1ED824050 != -1)
              {
                goto LABEL_51;
              }

              goto LABEL_42;
            }

LABEL_56:
            __break(1u);
LABEL_57:
            sub_19A32C5E4();
            if ((v3 & 1) == 0)
            {
              goto LABEL_58;
            }

LABEL_20:
            v27 = *(*(v62 + 56) + 8 * v11);
            v28 = swift_isUniquelyReferenced_nonNull_native();
            v63 = v27;
            sub_19A33D1B8(MEMORY[0x1E69E7CC0], v7, v28);
            if (v27)
            {
              *(*(v62 + 56) + 8 * v11) = v27;
            }

            else
            {
              sub_19A4ACED8(v11, v62);
            }

            *(v6 + 24) = v62;
            swift_endAccess();
          }
        }
      }

      else
      {
      }

      swift_beginAccess();
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v6 + 24);
      v62 = v20;
      *(v6 + 24) = 0x8000000000000000;
      v11 = sub_19A31F734(a1);
      v22 = *(v20 + 16);
      v23 = (v21 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        __break(1u);
        goto LABEL_53;
      }

      LOBYTE(v3) = v21;
      if (*(v20 + 24) >= v24)
      {
        if ((v19 & 1) == 0)
        {
          goto LABEL_57;
        }

        if (v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_19A329874(v24, v19);
        v25 = sub_19A31F734(a1);
        if ((v3 & 1) != (v26 & 1))
        {
          goto LABEL_59;
        }

        v11 = v25;
        if (v3)
        {
          goto LABEL_20;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      sub_19A57404C();
      __break(1u);
LABEL_60:
      sub_19A57404C();
      __break(1u);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_42:
  v45 = sub_19A5723FC();
  __swift_project_value_buffer(v45, qword_1ED82BCF0);

  v46 = sub_19A5723DC();
  v47 = sub_19A57354C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v64[0] = v49;
    *v48 = 136446722;
    v50 = sub_19A572DAC();
    v52 = sub_19A31F114(v50, v51, v64);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2082;
    v53 = sub_19A572DAC();
    v55 = sub_19A31F114(v53, v54, v64);

    *(v48 + 14) = v55;
    *(v48 + 22) = 2082;
    v56 = MEMORY[0x19A900C10](v11, MEMORY[0x1E69E6530]);
    v58 = v57;

    v59 = sub_19A31F114(v56, v58, v64);

    *(v48 + 24) = v59;
    _os_log_impl(&dword_19A2DE000, v46, v47, "Adding next character face indices for %{public}s %{public}s %{public}s", v48, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v49, -1, -1);
    MEMORY[0x19A902C50](v48, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_19A471E10()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_19A471E7C()
{
  result = qword_1EAFA1EF8;
  if (!qword_1EAFA1EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1EF0);
    sub_19A471F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1EF8);
  }

  return result;
}

unint64_t sub_19A471F08()
{
  result = qword_1EAFA1F00;
  if (!qword_1EAFA1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1F00);
  }

  return result;
}

unint64_t sub_19A471F5C()
{
  result = qword_1EAFA1F08[0];
  if (!qword_1EAFA1F08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAFA1F08);
  }

  return result;
}

uint64_t sub_19A471FC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for GenerationRecipe(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A472054, 0, 0);
}

uint64_t sub_19A472054()
{
  v24 = v0;
  v1 = *(v0[3] + *(v0[4] + 40));
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      goto LABEL_26;
    }

    if (sub_19A39BD48())
    {
      goto LABEL_26;
    }
  }

  else
  {
    v2 = sub_19A573F1C() & 1;

    v3 = sub_19A39BD48();
    if (v2 == (v3 & 1))
    {
      goto LABEL_26;
    }
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_19A5723FC();
  __swift_project_value_buffer(v6, qword_1ED82BCF0);
  sub_19A39AA50(v5, v4);
  v7 = sub_19A5723DC();
  v8 = sub_19A57355C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315394;
    if (v1 > 1)
    {

      v13 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
      v12 = sub_19A573F1C();

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 2125678;
      }

      if (v12)
      {
        v14 = 0xE000000000000000;
      }

      else
      {
        v14 = 0xE300000000000000;
      }
    }

    v15 = v0[5];
    v16 = sub_19A31F114(v13, v14, &v23);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    v17 = sub_19A39BD48();
    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2125678;
    }

    if (v17)
    {
      v19 = 0xE000000000000000;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    sub_19A3B5E10(v15);
    v20 = sub_19A31F114(v18, v19, &v23);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_19A2DE000, v7, v8, "Prompt rewriting configured for %spersonalization but generation recipe configured for %spersonalization.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v10, -1, -1);
    MEMORY[0x19A902C50](v9, -1, -1);
  }

  else
  {
    v11 = v0[5];

    sub_19A3B5E10(v11);
  }

LABEL_26:
  sub_19A39AA50(v0[3], v0[2]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_19A4723D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return sub_19A471FC0(a1, a2);
}

uint64_t sub_19A472478()
{
  result = sub_19A57378C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19A472514(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_19A57093C();
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19A572D6C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (qword_1EAF9ECC0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EAFCA140;
  v11 = sub_19A572CCC();
  v12 = [v10 pathForResource:v11 ofType:0];

  if (v12)
  {
    sub_19A572CFC();

    sub_19A572D4C();
    v13 = sub_19A572C3C();
    if (!v2)
    {
      v17 = v13;
      v18 = v14;

      v20 = v17;
      v21 = v18;
      sub_19A57090C();
      sub_19A2F4450();
      v3 = sub_19A5737EC();
      (*(v22 + 8))(v8, v6);
    }
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_19A57395C();

    v20 = 0xD000000000000021;
    v21 = 0x800000019A59AC30;
    MEMORY[0x19A900A50](a1, a2);
    MEMORY[0x19A900A50](34, 0xE100000000000000);
    v15 = v20;
    v3 = v21;
    sub_19A2F1130();
    swift_allocError();
    *v16 = v15;
    *(v16 + 8) = v3;
    *(v16 + 16) = 1;
    swift_willThrow();
  }

  return v3;
}

unint64_t sub_19A4727CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EAF9ECC0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAFCA140;
  v7 = sub_19A572CCC();
  v8 = [v6 pathForResource:v7 ofType:0];

  if (v8)
  {
    sub_19A572CFC();

    v9 = sub_19A4753F0();
    if (!v2)
    {
      v3 = v9;
    }
  }

  else
  {
    sub_19A57395C();

    MEMORY[0x19A900A50](a1, a2);
    MEMORY[0x19A900A50](34, 0xE100000000000000);
    v3 = 0xD000000000000021;
    sub_19A2F1130();
    swift_allocError();
    *v10 = 0xD000000000000021;
    *(v10 + 8) = 0x800000019A59AC30;
    *(v10 + 16) = 1;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_19A472960(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A34DEFC(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_19A573EBC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >> 14 >= *(v13 - 1) >> 14)
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = *(v13 + 4);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 1) = v11;
          *v13 = v14;
          *(v13 + 1) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_19A5730DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_19A47616C(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_19A472AC0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A34DF10(v2);
  }

  v3 = *(v2 + 2);
  v28[0] = (v2 + 32);
  v28[1] = v3;
  result = sub_19A573EBC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 80;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 8) >> 14 >= *v12 >> 14)
          {
            break;
          }

          v13 = v12 - 48;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v26 = *(v12 + 3);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 2);
          *(v12 + 1) = *(v12 - 3);
          *(v12 + 2) = v17;
          v18 = *v12;
          *(v12 + 3) = *(v12 - 1);
          *(v12 + 4) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v13 + 2) = v26;
          *v12 = v19;
          *v13 = v20;
          *(v13 + 1) = v21;
          v12 -= 64;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 64;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_19A5730DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_19A47673C(&v24, v23, v28, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_19A472C2C(void **a1)
{
  v2 = *(type metadata accessor for PromptEdit(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_19A34DF24(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_19A475E4C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_19A472CD4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A34DF70(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_19A573EBC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for _NSRange(0);
      v7 = sub_19A5730DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_19A477514(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_19A472E1C(uint64_t a1, void *a2)
{
  v4 = sub_19A570D4C();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v7 = sub_19A572D8C();
  v14 = v7;
  v15 = v8;
  v9 = sub_19A475CC8(a2);
  if (!v10)
  {
    return v7;
  }

  v12 = 8250;
  v13 = 0xE200000000000000;
  MEMORY[0x19A900A50](v9);

  MEMORY[0x19A900A50](v12, v13);

  return v14;
}

uint64_t sub_19A472F48(uint64_t a1)
{
  v2 = a1;
  if (!*(a1 + 16))
  {

    return v2;
  }

  v76 = a1;

  sub_19A472960(&v76);
  v2 = v76;
  if (v1)
  {

    return v2;
  }

  v4 = 0;
  v5 = *(v76 + 2);
  result = 32;
  v6 = v5;
  while (v6 == v4)
  {
    v7 = 0;
    v57 = v5;
LABEL_93:
    v61 = *(v2 + 2);
    if (v5 == v61)
    {
      return v2;
    }

    if (v7 <= 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = v7 - 1;
    }

    if (v57 >= v61 - 1)
    {
      v6 = *(v2 + 2);
    }

    else
    {
      v6 = v57 + 2;
    }

    v5 = *(v2 + 2);
    if (v6 < v4)
    {
      goto LABEL_108;
    }
  }

  v7 = 0;
  v8 = v4 + 1;
  v9 = v6;
  v10 = v5;
  while (1)
  {
    v11 = 24 * v9 + 32;
    v12 = v9;
    while (1)
    {
      if (v4 >= v12 || v9 > v6)
      {
        __break(1u);
LABEL_105:
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
        goto LABEL_112;
      }

      v13 = v12 - 1;
      if (v12 == 1)
      {
LABEL_92:
        v57 = v10;
        goto LABEL_93;
      }

      if (v12 - 2 < 0)
      {
        goto LABEL_105;
      }

      v14 = *(v2 + 2);
      if (v12 - 2 >= v14)
      {
        goto LABEL_106;
      }

      if (v13 >= v14)
      {
        goto LABEL_107;
      }

      v15 = &v2[v11];
      v16 = *&v2[v11 - 48] >> 14;
      v17 = *&v2[v11 - 16] >> 14;
      if (v16 < v17)
      {
        v18 = *(v15 - 5);
        v19 = v18 >> 14;
        if (v16 != v18 >> 14)
        {
          v20 = *(v15 - 3);
          v21 = v20 >> 14;
          if (v20 >> 14 < v19 && v21 != v17)
          {
            break;
          }
        }
      }

      v11 -= 24;
      --v12;
      if (v4 == v13)
      {
        goto LABEL_92;
      }
    }

    v67 = v10;
    v68 = v12 - 2;
    v62 = v12 - 1;
    v63 = v8;
    v69 = v12;
    v70 = v5;
    v64 = v6;
    v65 = v4;
    v71 = v2;
    v66 = v11;
    v22 = *&v2[v11 - 32];
    v23 = *&v2[v11 - 8];
    if (v21 >= v16)
    {
      v24 = *&v2[v11 - 48];
    }

    else
    {
      v24 = v20;
    }

    if (v17 >= v19)
    {
      v25 = *&v2[v11 - 16];
    }

    else
    {
      v25 = v18;
    }

    v72 = v25;
    v73 = v24;
    v26 = *(v22 + 16);
    v27 = sub_19A478B68();

    v74 = v23;

    result = MEMORY[0x19A900F10](v26, &type metadata for Gender, v27);
    v28 = result;
    v77 = *(v22 + 16);
    if (!v77)
    {
      goto LABEL_53;
    }

    v29 = 0;
    v75 = v22 + 32;
    v30 = (result + 56);
    while (2)
    {
      while (2)
      {
        v31 = *(v75 + v29);
        sub_19A5740BC();
        ++v29;
        sub_19A572E4C();

        v32 = sub_19A57410C();
        v33 = ~(-1 << v28[32]);
        v34 = v32 & v33;
LABEL_32:
        if ((*&v30[(v34 >> 3) & 0xFFFFFFFFFFFFFF8] >> v34))
        {
          if (*(*(v28 + 6) + v34))
          {
            if (*(*(v28 + 6) + v34) == 1)
            {
              v35 = 0xE500000000000000;
              v36 = 0x6E616D6F77;
              if (v31)
              {
                goto LABEL_36;
              }

LABEL_45:
              v38 = 0xE300000000000000;
              if (v36 == 7233901)
              {
LABEL_46:
                if (v35 == v38)
                {

LABEL_30:
                  if (v29 == v77)
                  {
                    goto LABEL_53;
                  }

                  continue;
                }
              }

LABEL_47:
              v39 = sub_19A573F1C();

              if (v39)
              {
                goto LABEL_30;
              }

              v34 = (v34 + 1) & v33;
              goto LABEL_32;
            }

            v36 = 0x6E79676F72646E61;
            v35 = 0xEB0000000073756FLL;
            if (!v31)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v35 = 0xE300000000000000;
            v36 = 7233901;
            if (!v31)
            {
              goto LABEL_45;
            }
          }

LABEL_36:
          if (v31 == 1)
          {
            v37 = 0x6E616D6F77;
          }

          else
          {
            v37 = 0x6E79676F72646E61;
          }

          if (v31 == 1)
          {
            v38 = 0xE500000000000000;
          }

          else
          {
            v38 = 0xEB0000000073756FLL;
          }

          if (v36 == v37)
          {
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v28;
      result = sub_19A3257B8(v31, v34, isUniquelyReferenced_nonNull_native);
      v28 = v76;
      if (v29 != v77)
      {
        v30 = v76 + 56;
        continue;
      }

      break;
    }

LABEL_53:
    v77 = *(v74 + 16);
    if (!v77)
    {
      goto LABEL_79;
    }

    v41 = 0;
    v42 = v28 + 56;
    while (2)
    {
      while (2)
      {
        v43 = *(v74 + 32 + v41);
        sub_19A5740BC();
        ++v41;
        sub_19A572E4C();

        v44 = sub_19A57410C();
        v45 = ~(-1 << v28[32]);
        v46 = v44 & v45;
LABEL_58:
        if ((*&v42[(v46 >> 3) & 0xFFFFFFFFFFFFFF8] >> v46))
        {
          if (*(*(v28 + 6) + v46))
          {
            if (*(*(v28 + 6) + v46) == 1)
            {
              v47 = 0xE500000000000000;
              v48 = 0x6E616D6F77;
              if (v43)
              {
                goto LABEL_62;
              }

LABEL_71:
              v50 = 0xE300000000000000;
              if (v48 == 7233901)
              {
LABEL_72:
                if (v47 == v50)
                {

LABEL_56:
                  if (v41 == v77)
                  {
                    goto LABEL_79;
                  }

                  continue;
                }
              }

LABEL_73:
              v51 = sub_19A573F1C();

              if (v51)
              {
                goto LABEL_56;
              }

              v46 = (v46 + 1) & v45;
              goto LABEL_58;
            }

            v48 = 0x6E79676F72646E61;
            v47 = 0xEB0000000073756FLL;
            if (!v43)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v47 = 0xE300000000000000;
            v48 = 7233901;
            if (!v43)
            {
              goto LABEL_71;
            }
          }

LABEL_62:
          if (v43 == 1)
          {
            v49 = 0x6E616D6F77;
          }

          else
          {
            v49 = 0x6E79676F72646E61;
          }

          if (v43 == 1)
          {
            v50 = 0xE500000000000000;
          }

          else
          {
            v50 = 0xEB0000000073756FLL;
          }

          if (v48 == v49)
          {
            goto LABEL_72;
          }

          goto LABEL_73;
        }

        break;
      }

      v52 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v28;
      result = sub_19A3257B8(v43, v46, v52);
      v28 = v76;
      if (v41 != v77)
      {
        v42 = v76 + 56;
        continue;
      }

      break;
    }

LABEL_79:
    if (v72 >> 14 < v73 >> 14)
    {
      goto LABEL_109;
    }

    v53 = *(v28 + 2);
    if (v53)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1750);
      v54 = swift_allocObject();
      v55 = _swift_stdlib_malloc_size(v54);
      *(v54 + 16) = v53;
      *(v54 + 24) = 2 * v55 - 64;
      v56 = sub_19A32E930(&v76, (v54 + 32), v53, v28);

      result = sub_19A2EA480();
      if (v56 != v53)
      {
LABEL_112:
        __break(1u);
        break;
      }
    }

    else
    {

      v54 = MEMORY[0x1E69E7CC0];
    }

    v57 = v68;
    v5 = v70;
    v2 = v71;
    if (v67 != v70)
    {
      v57 = v67 - 1;
      if (__OFSUB__(v67, 1))
      {
        break;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A32E4C8(v71);
      v2 = result;
    }

    if (v68 >= *(v2 + 2))
    {
      goto LABEL_110;
    }

    v58 = &v2[v66];
    *(v58 - 6) = v73;
    *(v58 - 5) = v72;
    *(v58 - 4) = v54;

    v59 = *(v2 + 2);
    if (v59 < v69)
    {
      goto LABEL_111;
    }

    v60 = v59 - 1;
    memmove(v58 - 24, v58, 24 * (v59 - v69));
    *(v2 + 2) = v60;

    v9 = v62;
    v8 = v63;
    v7 = v68;
    v10 = v57;
    result = 32;
    v6 = v64;
    v4 = v65;
    if (v63 == v69)
    {
      v7 = v68;
      goto LABEL_93;
    }
  }

  __break(1u);
  return result;
}