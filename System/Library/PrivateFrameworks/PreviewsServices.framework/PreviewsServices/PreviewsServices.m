id UVLog()
{
  if (UVLog_onceToken[0] != -1)
  {
    UVLog_cold_1();
  }

  v1 = UVLog___log;

  return v1;
}

uint64_t __UVLog_block_invoke()
{
  UVLog___log = os_log_create("com.apple.dt.Previews", "uv");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_25F534FBC(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  if (v7)
  {
    sub_25F538E70(v3, v4, v5, v6, 1);
  }

  else
  {
    LOBYTE(v26[0]) = v3;
    sub_25F53A6F8();
  }

  v8 = sub_25F53E480();

  mach_service = xpc_connection_create_mach_service((v8 + 32), 0, 1uLL);

  *(v2 + 16) = mach_service;
  if (v7)
  {
    swift_unknownObjectRetain();
    xpc_connection_enable_sim2host_4sim();
    sub_25F538E2C(v3, v4, v5, v6, 1);
    swift_unknownObjectRelease();
    mach_service = *(v2 + 16);
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v26[4] = sub_25F538EEC;
  v26[5] = v10;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_25F536668;
  v26[3] = &block_descriptor;
  v11 = _Block_copy(v26);

  xpc_connection_set_event_handler(mach_service, v11);
  _Block_release(v11);
  if (qword_27FD99BA8 != -1)
  {
    swift_once();
  }

  v12 = sub_25F53E3A0();
  __swift_project_value_buffer(v12, qword_27FD9A3A0);

  v13 = sub_25F53E380();
  v14 = sub_25F53E510();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26[0] = v16;
    *v15 = 136446466;

    v17 = sub_25F535574();
    v19 = v18;

    v20 = sub_25F53C6F4(v17, v19, v26);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = *(v2 + 16);
    v22 = sub_25F5352E4();
    v24 = sub_25F53C6F4(v22, v23, v26);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_25F533000, v13, v14, "%{public}s created with underlying service %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8E0D10](v16, -1, -1);
    MEMORY[0x25F8E0D10](v15, -1, -1);
  }

  return v2;
}

uint64_t sub_25F5352E4()
{
  sub_25F53E580();
  MEMORY[0x25F8E0640](0xD000000000000012, 0x800000025F53FAA0);
  sub_25F53E5A0();
  MEMORY[0x25F8E0640](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_25F535384()
{
  if (qword_27FD99BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_25F53E3A0();
  __swift_project_value_buffer(v1, qword_27FD9A3A0);

  v2 = sub_25F53E380();
  v3 = sub_25F53E510();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v6 = sub_25F535574();
    v8 = sub_25F53C6F4(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25F533000, v2, v3, "%{public}s deinit", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F8E0D10](v5, -1, -1);
    MEMORY[0x25F8E0D10](v4, -1, -1);
  }

  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_25F538E2C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v10 = *(v0 + 72);
  sub_25F538DE4(*(v0 + 64));
  v11 = *(v0 + 88);
  sub_25F538DE4(*(v0 + 80));
  v12 = *(v0 + 104);
  sub_25F538DE4(*(v0 + 96));
  v13 = *(v0 + 120);
  sub_25F538DE4(*(v0 + 112));
  return v0;
}

uint64_t sub_25F53551C()
{
  sub_25F535384();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_25F535574()
{
  sub_25F53E580();

  strcpy(v7, "<XPCListener ");
  HIWORD(v7[1]) = -4864;
  sub_25F53E5A0();
  MEMORY[0x25F8E0640](0, 0xE000000000000000);

  MEMORY[0x25F8E0640](32, 0xE100000000000000);
  if (*(v0 + 56))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);

    v3 = v1;
  }

  else
  {
    v6 = *(v0 + 24);
    v3 = PreviewsService.description.getter();
    v2 = v4;
  }

  MEMORY[0x25F8E0640](v3, v2);

  MEMORY[0x25F8E0640](62, 0xE100000000000000);
  return v7[0];
}

void sub_25F535690(void *a1)
{
  v2 = sub_25F53E530();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_25F53E520() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_25F53E430() - 8) + 64);
  MEMORY[0x28223BE20]();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = MEMORY[0x25F8E0EF0](a1);
    if (sub_25F53E3C0() == v11)
    {
      v32 = swift_unknownObjectRetain();
      v33 = sub_25F539758(v32);
      if (qword_27FD99BA8 != -1)
      {
        swift_once();
      }

      v88 = v3;
      v34 = sub_25F53E3A0();
      v35 = __swift_project_value_buffer(v34, qword_27FD9A3A0);

      v87 = v35;
      v36 = sub_25F53E380();
      v37 = sub_25F53E510();

      v38 = os_log_type_enabled(v36, v37);
      v89 = v33;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v93 = v86;
        *v39 = 136446466;

        v85 = v36;
        v40 = sub_25F535574();
        HIDWORD(v84) = v37;
        v42 = v41;

        v43 = sub_25F53C6F4(v40, v42, &v93);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2082;

        v44 = sub_25F537054();
        v46 = v45;

        v47 = sub_25F53C6F4(v44, v46, &v93);

        *(v39 + 14) = v47;
        v36 = v85;
        _os_log_impl(&dword_25F533000, v85, BYTE4(v84), "%{public}s incoming connection %{public}s", v39, 0x16u);
        v48 = v86;
        swift_arrayDestroy();
        MEMORY[0x25F8E0D10](v48, -1, -1);
        MEMORY[0x25F8E0D10](v39, -1, -1);
      }

      v86 = sub_25F539D90(0, &qword_27FD99C38, 0x277D85C78);
      v93 = 0;
      v94 = 0xE000000000000000;
      sub_25F53E580();

      v93 = 0xD00000000000001CLL;
      v94 = 0x800000025F53FAC0;
      v91 = 0;
      v92 = 0xE000000000000000;
      v90 = v10;
      sub_25F53E5A0();
      MEMORY[0x25F8E0640](v91, v92);

      sub_25F53E420();
      v93 = MEMORY[0x277D84F90];
      sub_25F539B48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C48, &qword_25F53F3C8);
      sub_25F539BA0();
      sub_25F53E560();
      (*(v88 + 104))(v6, *MEMORY[0x277D85260], v2);
      v49 = sub_25F53E540();
      v50 = v89;
      xpc_connection_set_target_queue(v89[2], v49);

      v51 = v10[8];
      if (!v51 || (v52 = v10[9], , v53 = v51(v50), sub_25F538DE4(v51), (v53 & 1) == 0))
      {

        v66 = sub_25F53E380();
        v67 = sub_25F53E510();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v93 = v69;
          *v68 = 136446466;

          v70 = sub_25F535574();
          v72 = v71;

          v73 = sub_25F53C6F4(v70, v72, &v93);

          *(v68 + 4) = v73;
          *(v68 + 12) = 2082;

          v74 = sub_25F537054();
          v76 = v75;

          v77 = sub_25F53C6F4(v74, v76, &v93);

          *(v68 + 14) = v77;
          _os_log_impl(&dword_25F533000, v66, v67, "%{public}s denying %{public}s", v68, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F8E0D10](v69, -1, -1);
          MEMORY[0x25F8E0D10](v68, -1, -1);
        }

        sub_25F536158();

        goto LABEL_25;
      }

      v54 = sub_25F53E380();
      v55 = sub_25F53E510();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v93 = v57;
        *v56 = 136446466;
        v58 = sub_25F535574();
        v60 = v59;

        v61 = sub_25F53C6F4(v58, v60, &v93);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2082;

        v62 = sub_25F537054();
        v64 = v63;

        v65 = sub_25F53C6F4(v62, v64, &v93);

        *(v56 + 14) = v65;
        _os_log_impl(&dword_25F533000, v54, v55, "%{public}s accepted connection %{public}s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8E0D10](v57, -1, -1);
        MEMORY[0x25F8E0D10](v56, -1, -1);

LABEL_25:

        return;
      }
    }

    else
    {
      v12 = v10[2];
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v13 = sub_25F539910(a1);
      v15 = v14;
      v17 = v16;
      swift_unknownObjectRelease();
      if (qword_27FD99BA8 != -1)
      {
        swift_once();
      }

      v18 = sub_25F53E3A0();
      __swift_project_value_buffer(v18, qword_27FD9A3A0);

      sub_25F539AB8(v13, v15, v17);
      v19 = sub_25F53E380();
      v20 = sub_25F53E510();

      sub_25F539AD0(v13, v15, v17);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v93 = v89;
        *v21 = 136446466;

        v23 = sub_25F535574();
        v25 = v24;

        v26 = sub_25F53C6F4(v23, v25, &v93);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2114;
        sub_25F538B6C();
        swift_allocError();
        *v27 = v13;
        *(v27 + 8) = v15;
        *(v27 + 16) = v17;
        sub_25F539AB8(v13, v15, v17);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 14) = v28;
        *v22 = v28;
        _os_log_impl(&dword_25F533000, v19, v20, "%{public}s got error event: %{public}@", v21, 0x16u);
        sub_25F539AE8(v22, &qword_27FD99C30, &qword_25F53F3C0);
        MEMORY[0x25F8E0D10](v22, -1, -1);
        v29 = v89;
        __swift_destroy_boxed_opaque_existential_0Tm(v89);
        MEMORY[0x25F8E0D10](v29, -1, -1);
        MEMORY[0x25F8E0D10](v21, -1, -1);
      }

      if (v17)
      {
        if (v17 == 3 && !(v13 | v15))
        {
          v81 = v10[10];
          if (v81)
          {
            v82 = v10[11];

            v81(v83);
            sub_25F538DE4(v81);
          }
        }

        else
        {
          v30 = v10[14];
          if (v30)
          {
            v31 = v10[15];

            v30(v13, v15, v17);
            sub_25F538DE4(v30);
          }

          sub_25F539AD0(v13, v15, v17);
        }

        goto LABEL_25;
      }

      v78 = v10[12];
      if (v78)
      {
        v79 = v10[13];

        v78(v80);
        sub_25F538DE4(v78);
      }

      sub_25F5363E8();

      sub_25F539AD0(v13, v15, 0);
    }
  }
}

void sub_25F536158()
{
  if (qword_27FD99BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_25F53E3A0();
  __swift_project_value_buffer(v1, qword_27FD9A3A0);

  v2 = sub_25F53E380();
  v3 = sub_25F53E510();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v20[0] = v5;
    *v4 = 136446210;
    v6 = sub_25F537054();
    v8 = sub_25F53C6F4(v6, v7, v20);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25F533000, v2, v3, "%{public}s invalidating", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F8E0D10](v5, -1, -1);
    MEMORY[0x25F8E0D10](v4, -1, -1);
  }

  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_25F538DE4(v9);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  sub_25F538DE4(v11);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_beginAccess();
  sub_25F53A5AC(v20, v0 + 24);
  swift_endAccess();

  v13 = sub_25F53E380();
  v14 = sub_25F53E510();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v20[0] = v16;
    *v15 = 136446210;
    v17 = sub_25F537054();
    v19 = sub_25F53C6F4(v17, v18, v20);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_25F533000, v13, v14, "%{public}s cancel", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x25F8E0D10](v16, -1, -1);
    MEMORY[0x25F8E0D10](v15, -1, -1);
  }

  xpc_connection_cancel(*(v0 + 16));
}

void sub_25F5363E8()
{
  if (qword_27FD99BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_25F53E3A0();
  __swift_project_value_buffer(v1, qword_27FD9A3A0);

  v2 = sub_25F53E380();
  v3 = sub_25F53E510();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136446210;
    v6 = sub_25F535574();
    v8 = sub_25F53C6F4(v6, v7, &v25);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25F533000, v2, v3, "%{public}s invalidating", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F8E0D10](v5, -1, -1);
    MEMORY[0x25F8E0D10](v4, -1, -1);
  }

  v9 = v0[10];
  v10 = v0[11];
  v0[10] = 0;
  v0[11] = 0;
  sub_25F538DE4(v9);
  v11 = v0[12];
  v12 = v0[13];
  v0[12] = 0;
  v0[13] = 0;
  sub_25F538DE4(v11);
  v13 = v0[14];
  v14 = v0[15];
  v0[14] = 0;
  v0[15] = 0;
  sub_25F538DE4(v13);
  v15 = v0[8];
  v16 = v0[9];
  v0[8] = 0;
  v0[9] = 0;
  sub_25F538DE4(v15);

  v17 = sub_25F53E380();
  v18 = sub_25F53E510();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136446210;
    v21 = sub_25F535574();
    v23 = sub_25F53C6F4(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25F533000, v17, v18, "%{public}s cancel", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x25F8E0D10](v20, -1, -1);
    MEMORY[0x25F8E0D10](v19, -1, -1);
  }

  v24 = v0[2];

  xpc_connection_cancel(v24);
}

uint64_t sub_25F536668(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_25F5366EC(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x25F8E0EF0](a1);
    if (sub_25F53E3D0() == v4)
    {
      if (qword_27FD99BA8 != -1)
      {
        swift_once();
      }

      v27 = sub_25F53E3A0();
      __swift_project_value_buffer(v27, qword_27FD9A3A0);

      v28 = sub_25F53E380();
      v29 = sub_25F53E4F0();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v43 = v31;
        *v30 = 136446210;

        v32 = sub_25F537054();
        v34 = v33;

        v35 = sub_25F53C6F4(v32, v34, &v43);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_25F533000, v28, v29, "%{public}s received dictionary", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x25F8E0D10](v31, -1, -1);
        MEMORY[0x25F8E0D10](v30, -1, -1);
      }

      sub_25F536BB4(a1);
    }

    v5 = v3[2];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = sub_25F539910(a1);
    v8 = v7;
    v10 = v9;
    swift_unknownObjectRelease();
    if (qword_27FD99BA8 != -1)
    {
      swift_once();
    }

    v11 = sub_25F53E3A0();
    __swift_project_value_buffer(v11, qword_27FD9A3A0);

    sub_25F539AB8(v6, v8, v10);
    v12 = sub_25F53E380();
    v13 = sub_25F53E510();

    sub_25F539AD0(v6, v8, v10);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v14 = 136446466;

      v16 = sub_25F537054();
      v18 = v17;

      v19 = sub_25F53C6F4(v16, v18, &v43);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2114;
      sub_25F538B6C();
      swift_allocError();
      *v20 = v6;
      *(v20 + 8) = v8;
      *(v20 + 16) = v10;
      sub_25F539AB8(v6, v8, v10);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v21;
      *v15 = v21;
      _os_log_impl(&dword_25F533000, v12, v13, "%{public}s error event: %{public}@", v14, 0x16u);
      sub_25F539AE8(v15, &qword_27FD99C30, &qword_25F53F3C0);
      MEMORY[0x25F8E0D10](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x25F8E0D10](v42, -1, -1);
      MEMORY[0x25F8E0D10](v14, -1, -1);
    }

    if (v10)
    {
      if (v10 == 3 && !(v6 | v8))
      {
        v39 = v3[8];
        if (v39)
        {
          v40 = v3[9];

          v39(v41);
          sub_25F538DE4(v39);
        }
      }

      v22 = v3[12];
      if (v22)
      {
        v23 = v3[13];

        v22(v6, v8, v10);
        sub_25F538DE4(v22);
      }

      v24 = v6;
      v25 = v8;
      v26 = v10;
    }

    else
    {
      v36 = v3[10];
      if (v36)
      {
        v37 = v3[11];

        v36(v38);
        sub_25F538DE4(v36);

        return sub_25F539AD0(v6, v8, 0);
      }

      v24 = v6;
      v25 = v8;
      v26 = 0;
    }

    sub_25F539AD0(v24, v25, v26);
  }

  return result;
}

void sub_25F536BB4(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(UVPropertyList) initWithXpcDictionary_];
  if (v4)
  {
    v5 = v4;
    reply = xpc_dictionary_create_reply(a1);
    if (reply)
    {
      v7 = reply;
      if (qword_27FD99BA8 != -1)
      {
        swift_once();
      }

      v8 = sub_25F53E3A0();
      __swift_project_value_buffer(v8, qword_27FD9A3A0);

      v9 = sub_25F53E380();
      v10 = sub_25F53E4F0();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v36[0] = v12;
        *v11 = 136446210;
        v13 = sub_25F537054();
        v15 = sub_25F53C6F4(v13, v14, v36);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_25F533000, v9, v10, "%{public}s received message expecting reply", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x25F8E0D10](v12, -1, -1);
        MEMORY[0x25F8E0D10](v11, -1, -1);
      }

      swift_beginAccess();
      if (v2[6])
      {
        sub_25F539C54((v2 + 3), v36);
        v16 = __swift_project_boxed_opaque_existential_1(v36, v37);
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        *(v18 + 24) = v7;
        v19 = v16[3];
        v20 = v16[4];
        __swift_project_boxed_opaque_existential_1(v16, v19);
        v21 = *(v20 + 16);

        swift_unknownObjectRetain();
        v21(v5, sub_25F539D88, v18, v19, v20);

        swift_unknownObjectRelease();
LABEL_19:
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_27FD99BA8 != -1)
      {
        swift_once();
      }

      v25 = sub_25F53E3A0();
      __swift_project_value_buffer(v25, qword_27FD9A3A0);

      v26 = sub_25F53E380();
      v27 = sub_25F53E4F0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v36[0] = v29;
        *v28 = 136446210;
        v30 = sub_25F537054();
        v32 = sub_25F53C6F4(v30, v31, v36);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_25F533000, v26, v27, "%{public}s received one-way message", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x25F8E0D10](v29, -1, -1);
        MEMORY[0x25F8E0D10](v28, -1, -1);
      }

      swift_beginAccess();
      if (v2[6])
      {
        sub_25F539C54((v2 + 3), v36);
        v33 = __swift_project_boxed_opaque_existential_1(v36, v37);
        v34 = v33[3];
        v35 = v33[4];
        __swift_project_boxed_opaque_existential_1(v33, v34);
        (*(v35 + 8))(v5, v34, v35);

        goto LABEL_19;
      }
    }
  }

  else
  {
    v22 = v2[12];
    if (v22)
    {
      v23 = v2[13];

      MEMORY[0x25F8E0E70](a1);
      v24 = sub_25F53E4B0();
      v22(v24);
      sub_25F538DE4(v22);
    }
  }
}

uint64_t sub_25F537054()
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v1 = *(v0 + 16);
  xpc_connection_get_audit_token();
  v12 = 0u;
  v13 = 0u;
  memset(v9, 0, sizeof(v9));
  v2 = [objc_allocWithZone(MEMORY[0x277CF0B98]) initWithAuditToken_];
  v3 = [v2 pid];

  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_25F53E580();

  *&v10 = 0x6E6E6F434350583CLL;
  *(&v10 + 1) = 0xEF206E6F69746365;
  *&v9[0] = 0;
  *(&v9[0] + 1) = 0xE000000000000000;
  sub_25F53E5A0();
  MEMORY[0x25F8E0640](*&v9[0], *(&v9[0] + 1));

  MEMORY[0x25F8E0640](0x65746F6D6572202CLL, 0xED0000203A646950);
  if (v3 < 1)
  {
    v6 = 0xE300000000000000;
    v4 = 4271950;
  }

  else
  {
    LODWORD(v9[0]) = v3;
    v4 = sub_25F53E5F0();
    v6 = v5;
  }

  MEMORY[0x25F8E0640](v4, v6);

  MEMORY[0x25F8E0640](62, 0xE100000000000000);
  result = v10;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25F537214(void *a1)
{
  v2 = v1;
  if (qword_27FD99BA8 != -1)
  {
    swift_once();
  }

  v4 = sub_25F53E3A0();
  __swift_project_value_buffer(v4, qword_27FD9A3A0);

  v5 = sub_25F53E380();
  v6 = sub_25F53E4F0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_25F537054();
    v11 = sub_25F53C6F4(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25F533000, v5, v6, "%{public}s sending one-way message", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x25F8E0D10](v8, -1, -1);
    MEMORY[0x25F8E0D10](v7, -1, -1);
  }

  empty = xpc_dictionary_create_empty();
  [a1 encodeToXpcDictionary_];
  xpc_connection_send_message(*(v2 + 16), empty);

  return swift_unknownObjectRelease();
}

uint64_t sub_25F5373B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27FD99BA8 != -1)
  {
    swift_once();
  }

  v8 = sub_25F53E3A0();
  __swift_project_value_buffer(v8, qword_27FD9A3A0);

  v9 = sub_25F53E380();
  v10 = sub_25F53E4F0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136446210;
    v13 = sub_25F537054();
    v15 = sub_25F53C6F4(v13, v14, v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F533000, v9, v10, "%{public}s sending message expecting reply", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x25F8E0D10](v12, -1, -1);
    MEMORY[0x25F8E0D10](v11, -1, -1);
  }

  empty = xpc_dictionary_create_empty();
  [a1 encodeToXpcDictionary_];
  v17 = *(v4 + 16);
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a2;
  v18[4] = a3;
  v21[4] = sub_25F53A590;
  v21[5] = v18;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_25F536668;
  v21[3] = &block_descriptor_30;
  v19 = _Block_copy(v21);

  xpc_connection_send_message_with_reply(v17, empty, 0, v19);
  _Block_release(v19);
  return swift_unknownObjectRelease();
}

void sub_25F537600(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = MEMORY[0x25F8E0EF0]();
  if (sub_25F53E3D0() != v5)
  {
    v6 = *(a2 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v7 = sub_25F539910(a1);
    v9 = v8;
    v11 = v10;
    swift_unknownObjectRelease();
    if (qword_27FD99BA8 != -1)
    {
      swift_once();
    }

    v12 = sub_25F53E3A0();
    __swift_project_value_buffer(v12, qword_27FD9A3A0);

    sub_25F539AB8(v7, v9, v11);
    v13 = sub_25F53E380();
    v14 = sub_25F53E510();

    sub_25F539AD0(v7, v9, v11);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69 = v66;
      *v15 = 136446466;
      v17 = a2;
      v18 = sub_25F537054();
      v20 = sub_25F53C6F4(v18, v19, &v69);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2114;
      sub_25F538B6C();
      swift_allocError();
      *v21 = v7;
      *(v21 + 8) = v9;
      *(v21 + 16) = v11;
      sub_25F539AB8(v7, v9, v11);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v22;
      *v16 = v22;
      _os_log_impl(&dword_25F533000, v13, v14, "%{public}s received reply error event: %{public}@", v15, 0x16u);
      sub_25F539AE8(v16, &qword_27FD99C30, &qword_25F53F3C0);
      MEMORY[0x25F8E0D10](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x25F8E0D10](v66, -1, -1);
      MEMORY[0x25F8E0D10](v15, -1, -1);
    }

    else
    {
      v17 = a2;
    }

    if (v11)
    {
      if (v11 == 3 && !(v7 | v9))
      {
        v43 = v17;
        v44 = *(v17 + 64);
        if (v44)
        {
          v45 = *(v43 + 72);

          v44(v46);
          sub_25F538DE4(v44);
        }
      }
    }

    else
    {
      v47 = v17;
      v48 = *(v17 + 80);
      if (v48)
      {
        v49 = *(v47 + 88);
        sub_25F539AB8(v7, v9, 0);
        v50 = sub_25F53A59C(v48);
        v48(v50);
        sub_25F538DE4(v48);
        sub_25F539AD0(v7, v9, 0);
      }
    }

    sub_25F538B6C();
    v51 = swift_allocError();
    *v52 = v7;
    *(v52 + 8) = v9;
    *(v52 + 16) = v11;
    a3(0, v51);
    v53 = v51;
    goto LABEL_24;
  }

  if (qword_27FD99BA8 != -1)
  {
    swift_once();
  }

  v23 = sub_25F53E3A0();
  __swift_project_value_buffer(v23, qword_27FD9A3A0);

  v24 = sub_25F53E380();
  v25 = sub_25F53E4F0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v69 = v27;
    *v26 = 136446210;
    v28 = sub_25F537054();
    v30 = sub_25F53C6F4(v28, v29, &v69);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_25F533000, v24, v25, "%{public}s received reply dictionary", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x25F8E0D10](v27, -1, -1);
    MEMORY[0x25F8E0D10](v26, -1, -1);
  }

  v31 = [objc_allocWithZone(UVPropertyList) initWithXpcDictionary_];
  if (!v31)
  {
    MEMORY[0x25F8E0E70](a1);
    v54 = sub_25F53E4B0();
    v56 = v55;
    sub_25F538B6C();
    v57 = swift_allocError();
    *v58 = v54;
    *(v58 + 8) = v56;
    *(v58 + 16) = 1;
    a3(0, v57);
    v53 = v57;
LABEL_24:

    goto LABEL_26;
  }

  v32 = v31;
  sub_25F539D90(0, &qword_27FD99C60, 0x277CCA9B8);
  v67 = v32;
  v33 = sub_25F537D7C(v67);
  if (v33)
  {
    v34 = v33;

    v35 = sub_25F53E380();
    v36 = sub_25F53E4F0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v69 = v38;
      *v37 = 136446210;
      v39 = sub_25F537054();
      v41 = sub_25F53C6F4(v39, v40, &v69);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_25F533000, v35, v36, "%{public}s received reply error", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x25F8E0D10](v38, -1, -1);
      MEMORY[0x25F8E0D10](v37, -1, -1);
    }

    v42 = v34;
    a3(0, v34);
  }

  else
  {

    v59 = sub_25F53E380();
    v60 = sub_25F53E4F0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69 = v62;
      *v61 = 136446210;
      v63 = sub_25F537054();
      v65 = sub_25F53C6F4(v63, v64, &v69);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_25F533000, v59, v60, "%{public}s received reply message", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x25F8E0D10](v62, -1, -1);
      MEMORY[0x25F8E0D10](v61, -1, -1);
    }

    v67 = v67;
    a3(v32, 0);
  }

  v53 = v67;

LABEL_26:
}

id sub_25F537D7C(void *a1)
{
  v2 = [a1 dictionary];
  v3 = sub_25F53E450();

  if (*(v3 + 16))
  {
    v4 = sub_25F538F0C(0x6E69616D6F64, 0xE600000000000000);
    if (v5)
    {
      sub_25F53A484(*(v3 + 56) + 32 * v4, v16);
      if (swift_dynamicCast())
      {
        if (!*(v3 + 16) || (v6 = sub_25F538F0C(1701080931, 0xE400000000000000), (v7 & 1) == 0) || (sub_25F53A484(*(v3 + 56) + 32 * v6, v16), (swift_dynamicCast() & 1) == 0) || !*(v3 + 16) || (v8 = sub_25F538F0C(0x6F666E4972657375, 0xE800000000000000), (v9 & 1) == 0))
        {

LABEL_14:

          return 0;
        }

        sub_25F53A484(*(v3 + 56) + 32 * v8, v16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C78, &qword_25F53F3E8);
        if (swift_dynamicCast())
        {
          v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v11 = sub_25F53E460();

          v12 = sub_25F53E440();

          v13 = [v10 initWithDomain:v11 code:v15 userInfo:v12];

          return v13;
        }
      }

      goto LABEL_14;
    }
  }

  return 0;
}

void sub_25F537FD8(void *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = qword_27FD99BA8;
      v10 = a1;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = sub_25F53E3A0();
      __swift_project_value_buffer(v11, qword_27FD9A3A0);

      v12 = sub_25F53E380();
      v13 = sub_25F53E4F0();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v42 = v15;
        *v14 = 136446210;

        v16 = sub_25F537054();
        v18 = v17;

        v19 = sub_25F53C6F4(v16, v18, &v42);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_25F533000, v12, v13, "%{public}s replying with message", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x25F8E0D10](v15, -1, -1);
        MEMORY[0x25F8E0D10](v14, -1, -1);
      }

      [v10 encodeToXpcDictionary_];
      v20 = *(v8 + 16);
      v21 = swift_unknownObjectRetain();
      xpc_connection_send_message(v21, a4);

      swift_unknownObjectRelease();
LABEL_8:

      return;
    }

    if (a2)
    {
      v42 = a2;
      v22 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C58, &qword_25F53F3D0);
      sub_25F539D90(0, &qword_27FD99C60, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        if (qword_27FD99BA8 != -1)
        {
          swift_once();
        }

        v23 = sub_25F53E3A0();
        __swift_project_value_buffer(v23, qword_27FD9A3A0);

        v24 = sub_25F53E380();
        v25 = sub_25F53E4F0();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v42 = v27;
          *v26 = 136446210;

          v28 = sub_25F537054();
          v30 = v29;

          v31 = sub_25F53C6F4(v28, v30, &v42);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_25F533000, v24, v25, "%{public}s replying with error", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          MEMORY[0x25F8E0D10](v27, -1, -1);
          MEMORY[0x25F8E0D10](v26, -1, -1);
        }

        sub_25F5384CC(a4);
        xpc_connection_send_message(*(v8 + 16), a4);

        goto LABEL_8;
      }
    }

    if (qword_27FD99BA8 != -1)
    {
      swift_once();
    }

    v32 = sub_25F53E3A0();
    __swift_project_value_buffer(v32, qword_27FD9A3A0);

    v33 = sub_25F53E380();
    v34 = sub_25F53E500();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42 = v36;
      *v35 = 136446210;

      v37 = sub_25F537054();
      v39 = v38;

      v40 = sub_25F53C6F4(v37, v39, &v42);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_25F533000, v33, v34, "%{public}s: Received neither message nor error from client to reply with", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x25F8E0D10](v36, -1, -1);
      MEMORY[0x25F8E0D10](v35, -1, -1);
    }
  }
}

void sub_25F5384CC(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C68, &qword_25F53F3D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F53F0E0;
  *(inited + 32) = 0x6E69616D6F64;
  *(inited + 40) = 0xE600000000000000;
  v5 = [v1 domain];
  v6 = sub_25F53E470();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = 1701080931;
  *(inited + 88) = 0xE400000000000000;
  v10 = [v2 code];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = v10;
  sub_25F53A250(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C70, &qword_25F53F3E0);
  swift_arrayDestroy();
  v11 = [v2 userInfo];
  v12 = sub_25F53E450();

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C78, &qword_25F53F3E8);
  *&v39 = v12;
  sub_25F53A360(&v39, v38);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F5392F4(v38, 0x6F666E4972657375, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v14 = objc_allocWithZone(UVPropertyList);
  v15 = sub_25F53E440();
  v16 = [v14 initWithDictionary_];

  [v16 encodeToXpcDictionary_];
  if (xpc_dictionary_get_count(a1))
  {
  }

  else
  {
    if (qword_27FD99BA8 != -1)
    {
      swift_once();
    }

    v17 = sub_25F53E3A0();
    __swift_project_value_buffer(v17, qword_27FD9A3A0);
    v18 = v2;
    v19 = sub_25F53E380();
    v20 = sub_25F53E500();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_25F533000, v19, v20, "Failed to encode NSError: %@", v21, 0xCu);
      sub_25F539AE8(v22, &qword_27FD99C30, &qword_25F53F3C0);
      MEMORY[0x25F8E0D10](v22, -1, -1);
      MEMORY[0x25F8E0D10](v21, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C80, &qword_25F53F3F0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_25F53F0E0;
    v25 = *MEMORY[0x277CCA450];
    *(v24 + 32) = sub_25F53E470();
    *(v24 + 40) = v26;
    v27 = [v18 localizedDescription];
    v28 = sub_25F53E470();
    v30 = v29;

    *(v24 + 48) = v28;
    *(v24 + 56) = v30;
    v31 = *MEMORY[0x277CCA068];
    *(v24 + 64) = sub_25F53E470();
    *(v24 + 72) = v32;
    *(v24 + 80) = 0xD000000000000038;
    *(v24 + 88) = 0x800000025F53FAE0;
    v33 = sub_25F53A370(v24);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C88, &qword_25F53F3F8);
    swift_arrayDestroy();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C90, &qword_25F53F400);
    *&v39 = v33;
    sub_25F53A360(&v39, v38);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_25F5392F4(v38, 0x6F666E4972657375, 0xE800000000000000, v34);
    v35 = objc_allocWithZone(UVPropertyList);
    v36 = sub_25F53E440();

    v37 = [v35 initWithDictionary_];

    [v37 encodeToXpcDictionary_];
  }
}

uint64_t sub_25F5389CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_25F539AE8((v0 + 3), &qword_27FD99C28, &qword_25F53F3B8);
  v2 = v0[9];
  sub_25F538DE4(v0[8]);
  v3 = v0[11];
  sub_25F538DE4(v0[10]);
  v4 = v0[13];
  sub_25F538DE4(v0[12]);

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t get_enum_tag_for_layout_string_16PreviewsServices8XPCErrorV4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F538AB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F538B00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_25F538B6C()
{
  result = qword_27FD99C20;
  if (!qword_27FD99C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD99C20);
  }

  return result;
}

unint64_t sub_25F538C0C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      return 0xD000000000000021;
    }

    sub_25F53E580();

    strcpy(v6, "invalid type (");
    HIBYTE(v6[1]) = -18;
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    strcpy(v6, "unknown (");
    WORD1(v6[1]) = 0;
    HIDWORD(v6[1]) = -385875968;
LABEL_7:
    MEMORY[0x25F8E0640]();
    MEMORY[0x25F8E0640](41, 0xE100000000000000);
    v4 = v6[0];
    v5 = v6[1];
    strcpy(v6, "XPC Error: ");
    HIDWORD(v6[1]) = -352321536;
    MEMORY[0x25F8E0640](v4, v5);

    return v6[0];
  }

  if (a1 | a2)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000021;
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

uint64_t sub_25F538DE4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25F538E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_25F538E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_25F538EB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F538F0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25F53E660();
  sub_25F53E490();
  v6 = sub_25F53E680();

  return sub_25F538F84(a1, a2, v6);
}

unint64_t sub_25F538F84(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25F53E600())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_25F53903C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD99CA0, &qword_25F53F410);
  v36 = a2;
  result = sub_25F53E5C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_25F53A360(v25, v37);
      }

      else
      {
        sub_25F53A484(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25F53E660();
      sub_25F53E490();
      result = sub_25F53E680();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25F53A360(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_25F5392F4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25F538F0C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25F5394B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25F53903C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25F538F0C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25F53E610();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_25F53A360(a1, v23);
  }

  else
  {
    sub_25F539444(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_25F539444(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25F53A360(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_25F5394B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD99CA0, &qword_25F53F410);
  v2 = *v0;
  v3 = sub_25F53E5B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25F53A484(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25F53A360(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25F539654(_xpc_connection_s *a1)
{
  *(v1 + 104) = 0;
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 16) = a1;
  v3 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_25F539C4C;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_25F536668;
  v6[3] = &block_descriptor_20;
  v4 = _Block_copy(v6);
  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(a1, v4);
  _Block_release(v4);
  return v1;
}

uint64_t sub_25F539758(_xpc_connection_s *a1)
{
  type metadata accessor for XPCConnection();
  swift_allocObject();
  v2 = sub_25F539654(a1);
  v3 = qword_27FD99BA8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_25F53E3A0();
  __swift_project_value_buffer(v4, qword_27FD9A3A0);

  v5 = sub_25F53E380();
  v6 = sub_25F53E510();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_25F537054();
    v11 = v10;

    v12 = sub_25F53C6F4(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_25F533000, v5, v6, "%{public}s initialized", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x25F8E0D10](v8, -1, -1);
    MEMORY[0x25F8E0D10](v7, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_25F539910(void *a1)
{
  v2 = MEMORY[0x25F8E0EF0]();
  if (v2 == sub_25F53E3B0())
  {
    v4 = sub_25F53E410();
    v5 = xpc_equal(a1, v4);
    swift_unknownObjectRelease();
    if (v5)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v6 = sub_25F53E3F0();
    v7 = xpc_equal(a1, v6);
    swift_unknownObjectRelease();
    if (v7)
    {
      if (xpc_connection_copy_invalidation_reason())
      {
LABEL_7:
        v3 = sub_25F53E4B0();
        swift_unknownObjectRelease();
        return v3;
      }
    }

    else
    {
      v8 = sub_25F53E400();
      v9 = xpc_equal(a1, v8);
      swift_unknownObjectRelease();
      if (v9)
      {
        swift_unknownObjectRelease();
        return 1;
      }

      v10 = sub_25F53E3E0();
      if (xpc_dictionary_get_string(a1, v10))
      {
        goto LABEL_7;
      }
    }

    v3 = 0xD000000000000010;
    swift_unknownObjectRelease();
    return v3;
  }

  MEMORY[0x25F8E0E70](a1);
  v3 = sub_25F53E4B0();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25F539AB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_25F539AD0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_25F539AE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_25F539B48()
{
  result = qword_27FD99C40;
  if (!qword_27FD99C40)
  {
    sub_25F53E520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD99C40);
  }

  return result;
}

unint64_t sub_25F539BA0()
{
  result = qword_27FD99C50;
  if (!qword_27FD99C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD99C48, &qword_25F53F3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD99C50);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25F539C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25F539D48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F539D90(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F539DD8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_25F53E480();
  xpc_connection_create_mach_service((v7 + 32), 0, v6);

  type metadata accessor for XPCConnection();
  swift_allocObject();
  v8 = swift_unknownObjectRetain();
  v9 = sub_25F539654(v8);
  swift_unknownObjectRelease();
  v10 = qword_27FD99BA8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_25F53E3A0();
  __swift_project_value_buffer(v11, qword_27FD9A3A0);

  v12 = sub_25F53E380();
  v13 = sub_25F53E510();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136446722;
    v16 = sub_25F537054();
    v25 = a1;
    v18 = v17;

    v19 = sub_25F53C6F4(v16, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    if (a3)
    {
      v20 = 0x67656C6976697270;
    }

    else
    {
      v20 = 0;
    }

    if (a3)
    {
      v21 = 0xEB00000000206465;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v22 = sub_25F53C6F4(v20, v21, &v26);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2082;
    v23 = sub_25F53C6F4(v25, a2, &v26);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_25F533000, v12, v13, "Client %{public}s initialized for %{public}smachService %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8E0D10](v15, -1, -1);
    MEMORY[0x25F8E0D10](v14, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t sub_25F53A084()
{
  xpc_connection_enable_sim2host_4sim();
  type metadata accessor for XPCConnection();
  swift_allocObject();
  v0 = swift_unknownObjectRetain();
  v1 = sub_25F539654(v0);
  swift_unknownObjectRelease();
  v2 = qword_27FD99BA8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = sub_25F53E3A0();
  __swift_project_value_buffer(v3, qword_27FD9A3A0);

  v4 = sub_25F53E380();
  v5 = sub_25F53E510();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_25F537054();
    v10 = v9;

    v11 = sub_25F53C6F4(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_25F533000, v4, v5, "HostToSim Client %{public}s initialized", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F8E0D10](v7, -1, -1);
    MEMORY[0x25F8E0D10](v6, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v1;
}

unint64_t sub_25F53A250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD99CA0, &qword_25F53F410);
    v3 = sub_25F53E5D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F53A4E0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_25F538F0C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F53A360(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_25F53A360(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25F53A370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C98, &qword_25F53F408);
    v3 = sub_25F53E5D0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25F538F0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_25F53A484(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F53A4E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C70, &qword_25F53F3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F53A550()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F53A59C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F53A5AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99C28, &qword_25F53F3B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F53A620(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F53A66C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_25F53A6B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_25F53A6F8()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (v1)
    {
      v3 = 1667329326;
    }

    else
    {
      v3 = 0;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    v5 = 0xD000000000000025;
    goto LABEL_27;
  }

  if (v2 == 2)
  {
    if (v1)
    {
      v3 = 1667329326;
    }

    else
    {
      v3 = 0;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    goto LABEL_19;
  }

  if (v2 == 3)
  {
    if (v1)
    {
      v3 = 1667329326;
    }

    else
    {
      v3 = 0;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

LABEL_19:
    v5 = 0xD000000000000027;
LABEL_27:
    v7 = v5;
    MEMORY[0x25F8E0640](v3, v4);

    return v7;
  }

  if (v1 == 128)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD000000000000022;
  }
}

uint64_t PreviewsService.description.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (v1)
    {
      v3 = 1667329326;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      if (v1)
      {
        v4 = 0xE400000000000000;
      }

      else
      {
        v4 = 0xE000000000000000;
      }

      v6 = 0x77656976657270;
    }

    else
    {
      if (v1)
      {
        v4 = 0xE400000000000000;
      }

      else
      {
        v4 = 0xE000000000000000;
      }

      v6 = 0x6C6C6174736E69;
    }

    goto LABEL_34;
  }

  if (v2 == 2)
  {
    if (v1)
    {
      v3 = 1667329326;
    }

    else
    {
      v3 = 0;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    v5 = 0x50746E656761;
    goto LABEL_26;
  }

  if (v2 == 3)
  {
    if (v1)
    {
      v3 = 1667329326;
    }

    else
    {
      v3 = 0;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE000000000000000;
    }

    v5 = 0x506C6C656873;
LABEL_26:
    v6 = v5 & 0xFFFFFFFFFFFFLL | 0x7069000000000000;
LABEL_34:
    v8 = v6;
    MEMORY[0x25F8E0640](v3, v4);

    return v8;
  }

  if (v1 == 128)
  {
    return 0x73694C6873617263;
  }

  else
  {
    return 0x45737365636F7270;
  }
}

uint64_t sub_25F53A9A4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x77656976657270;
    }

    else
    {
      v2 = 0x6C6C6174736E69;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x706950746E656761;
    v3 = 0xE900000000000065;
  }

  else if (a1 == 3)
  {
    v2 = 0x73694C6873617263;
    v3 = 0xED000072656E6574;
  }

  else
  {
    v2 = 0x45737365636F7270;
    v3 = 0xEB00000000746978;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x77656976657270;
    }

    else
    {
      v8 = 0x6C6C6174736E69;
    }

    v7 = 0xE700000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x73694C6873617263;
    v5 = 0xED000072656E6574;
    if (a2 != 3)
    {
      v4 = 0x45737365636F7270;
      v5 = 0xEB00000000746978;
    }

    if (a2 == 2)
    {
      v6 = 0x706950746E656761;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE900000000000065;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_25F53E600();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t PreviewsService.Variant.hashValue.getter()
{
  v1 = *v0;
  sub_25F53E660();
  MEMORY[0x25F8E0810](v1);
  return sub_25F53E680();
}

uint64_t sub_25F53AC04()
{
  v1 = *v0;
  sub_25F53E660();
  MEMORY[0x25F8E0810](v1);
  return sub_25F53E680();
}

uint64_t sub_25F53AC78()
{
  v1 = *v0;
  sub_25F53E660();
  MEMORY[0x25F8E0810](v1);
  return sub_25F53E680();
}

uint64_t PreviewsService.Variant.description.getter()
{
  if (*v0)
  {
    result = 6513005;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_25F53ACF4()
{
  if (*v0)
  {
    result = 6513005;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

PreviewsServices::PreviewsServiceConnection::Service_optional __swiftcall PreviewsServiceConnection.Service.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F53E5E0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PreviewsServiceConnection.Service.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6C6174736E69;
  v3 = 0x706950746E656761;
  v4 = 0x73694C6873617263;
  if (v1 != 3)
  {
    v4 = 0x45737365636F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x77656976657270;
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

uint64_t sub_25F53AE44()
{
  v1 = *v0;
  sub_25F53E660();
  sub_25F53E490();

  return sub_25F53E680();
}

uint64_t sub_25F53AF40()
{
  *v0;
  *v0;
  *v0;
  sub_25F53E490();
}

uint64_t sub_25F53B028()
{
  v1 = *v0;
  sub_25F53E660();
  sub_25F53E490();

  return sub_25F53E680();
}

void sub_25F53B12C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C6C6174736E69;
  v5 = 0xE900000000000065;
  v6 = 0x706950746E656761;
  v7 = 0xED000072656E6574;
  v8 = 0x73694C6873617263;
  if (v2 != 3)
  {
    v8 = 0x45737365636F7270;
    v7 = 0xEB00000000746978;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x77656976657270;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t PreviewsServiceConnection.__allocating_init(service:)(_BYTE *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  LOBYTE(v10) = 0x8180402000uLL >> (8 * *a1);
  v1 = sub_25F53A6F8();
  v3 = sub_25F539DD8(v1, v2, 1);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = *(v3 + 16);

  xpc_connection_get_audit_token();
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = [objc_allocWithZone(MEMORY[0x277CF0B98]) initWithAuditToken_];

  *(v4 + 24) = v6;
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

{
  v12 = *MEMORY[0x277D85DE8];
  LOBYTE(v10) = *a1;
  v1 = sub_25F53A6F8();
  v3 = sub_25F539DD8(v1, v2, 1);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = *(v3 + 16);

  xpc_connection_get_audit_token();
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = [objc_allocWithZone(MEMORY[0x277CF0B98]) initWithAuditToken_];

  *(v4 + 24) = v6;
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t PreviewsServiceConnection.__allocating_init(hostToSimConnection:)()
{
  v7 = *MEMORY[0x277D85DE8];
  swift_unknownObjectRetain();
  v0 = sub_25F53A084();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = *(v0 + 16);

  xpc_connection_get_audit_token();
  memset(v6, 0, sizeof(v6));
  v3 = [objc_allocWithZone(MEMORY[0x277CF0B98]) initWithAuditToken_];
  swift_unknownObjectRelease();

  *(v1 + 24) = v3;
  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t PreviewsServiceConnection.interruptionHandler.getter()
{
  v1 = *(*(v0 + 16) + 64);
  sub_25F53A59C(v1);
  return v1;
}

uint64_t sub_25F53B514@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25F53D558;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_25F53A59C(v4);
}

uint64_t sub_25F53B59C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25F53D554;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(*a2 + 16);
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_25F53A59C(v3);
  sub_25F53A59C(v6);
  sub_25F538DE4(v8);

  return sub_25F538DE4(v6);
}

uint64_t PreviewsServiceConnection.interruptionHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  sub_25F53A59C(a1);
  sub_25F538DE4(v5);

  return sub_25F538DE4(a1);
}

uint64_t (*PreviewsServiceConnection.interruptionHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *a1 = v4;
  a1[1] = v5;
  sub_25F53A59C(v4);
  return sub_25F53B70C;
}

uint64_t sub_25F53B70C(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  *(v3 + 64) = *a1;
  *(v3 + 72) = v4;
  sub_25F53A59C(v5);
  if (a2)
  {
    sub_25F53A59C(v5);
    sub_25F538DE4(v6);
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  sub_25F538DE4(v8);

  return sub_25F538DE4(v5);
}

uint64_t PreviewsServiceConnection.invalidationHandler.getter()
{
  v1 = *(*(v0 + 16) + 80);
  sub_25F53A59C(v1);
  return v1;
}

uint64_t sub_25F53B7DC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25F53D4D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_25F53A59C(v4);
}

uint64_t sub_25F53B864(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25F53D4B0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(*a2 + 16);
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  *(v7 + 80) = v6;
  *(v7 + 88) = v5;
  sub_25F53A59C(v3);
  sub_25F53A59C(v6);
  sub_25F538DE4(v8);

  return sub_25F538DE4(v6);
}

uint64_t PreviewsServiceConnection.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  sub_25F53A59C(a1);
  sub_25F538DE4(v5);

  return sub_25F538DE4(a1);
}

uint64_t (*PreviewsServiceConnection.invalidationHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  *a1 = v4;
  a1[1] = v5;
  sub_25F53A59C(v4);
  return sub_25F53B9D4;
}

uint64_t sub_25F53B9D4(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  *(v3 + 80) = *a1;
  *(v3 + 88) = v4;
  sub_25F53A59C(v5);
  if (a2)
  {
    sub_25F53A59C(v5);
    sub_25F538DE4(v6);
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  sub_25F538DE4(v8);

  return sub_25F538DE4(v5);
}

void PreviewsServiceConnection.activate(receiver:)(uint64_t a1)
{
  sub_25F53CCAC(a1, &v12);
  if (v13)
  {
    sub_25F53CD84(&v12, v15);
    v2 = *(v1 + 16);
    v13 = &type metadata for PreviewsServiceConnection.InterfaceTarget;
    v14 = &off_28718E0E8;
    *&v12 = swift_allocObject();
    sub_25F53CD84(v15, v12 + 16);
    swift_beginAccess();
    sub_25F53A5AC(&v12, v2 + 24);
    swift_endAccess();
  }

  else
  {
    sub_25F53CD1C(&v12);
  }

  v3 = *(v1 + 16);
  if (qword_27FD99BA8 != -1)
  {
    swift_once();
  }

  v4 = sub_25F53E3A0();
  __swift_project_value_buffer(v4, qword_27FD9A3A0);

  v5 = sub_25F53E380();
  v6 = sub_25F53E510();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v15[0] = v8;
    *v7 = 136446210;
    v9 = sub_25F537054();
    v11 = sub_25F53C6F4(v9, v10, v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25F533000, v5, v6, "%{public}s activate", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x25F8E0D10](v8, -1, -1);
    MEMORY[0x25F8E0D10](v7, -1, -1);
  }

  xpc_connection_activate(*(v3 + 16));
}

uint64_t PreviewsServiceConnection.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PreviewsServiceConnection.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

char *sub_25F53BD34(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(a1 + 32);
  v6 = &v2[OBJC_IVAR____TtCC16PreviewsServices25PreviewsServiceConnection8Listener_connectionHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v7;
  v17 = v5;
  type metadata accessor for XPCListener();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtCC16PreviewsServices25PreviewsServiceConnection8Listener_listener] = sub_25F534FBC(v16);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v15, sel_init);
  v9 = *&v8[OBJC_IVAR____TtCC16PreviewsServices25PreviewsServiceConnection8Listener_listener];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *(v9 + 64);
  v12 = *(v9 + 72);
  *(v9 + 64) = sub_25F53D538;
  *(v9 + 72) = v10;
  v13 = v8;

  sub_25F538DE4(v11);

  return v13;
}

char *static PreviewsServiceConnection.Listener.local(service:)(unsigned __int8 *a1)
{
  v4[0] = *a1;
  memset(&v4[1], 0, 24);
  v5 = 0;
  v2 = objc_allocWithZone(v1);
  return sub_25F53BD34(v4);
}

char *static PreviewsServiceConnection.Listener.hostToSim(machServiceName:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  v8 = 1;
  v5 = objc_allocWithZone(v4);

  return sub_25F53BD34(v7);
}

uint64_t sub_25F53BF00(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v38 = 0u;
    v39 = 0u;
    v42 = 0u;
    v43 = 0u;
    v4 = *(a1 + 16);
    xpc_connection_get_audit_token();
    v40 = 0u;
    v41 = 0u;
    v5 = 0x277CF0000uLL;
    v6 = 0x279A83000uLL;
    v36 = 0u;
    v37 = 0u;
    v7 = [objc_allocWithZone(MEMORY[0x277CF0B98]) initWithAuditToken_];
    v8 = [v7 bundleID];
    if (v8)
    {
      v9 = v8;
      v10 = sub_25F53E470();
      v12 = v11;
    }

    else
    {
      v12 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E55;
    }

    v13 = sub_25F53E460();
    v14 = [v7 hasEntitlement_];

    if (v14)
    {
      if (qword_27FD99BA0 != -1)
      {
        swift_once();
      }

      v15 = sub_25F53E3A0();
      __swift_project_value_buffer(v15, qword_27FD99D50);

      v16 = sub_25F53E380();
      v17 = sub_25F53E4E0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v42 = v19;
        *v18 = 136446210;
        v20 = sub_25F53C6F4(v10, v12, &v42);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_25F533000, v16, v17, "Accepting new connection from entitled client: %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        v21 = v19;
        v6 = 0x279A83000;
        MEMORY[0x25F8E0D10](v21, -1, -1);
        v22 = v18;
        v5 = 0x277CF0000;
        MEMORY[0x25F8E0D10](v22, -1, -1);
      }

      else
      {
      }

      type metadata accessor for PreviewsServiceConnection();
      v29 = swift_allocObject();
      *(v29 + 16) = a1;
      v36 = v38;
      v37 = v39;

      xpc_connection_get_audit_token();
      v42 = v36;
      v43 = v37;
      v30 = objc_allocWithZone(*(v5 + 2968));
      v31 = *(v6 + 2432);
      v35[0] = v42;
      v35[1] = v43;
      *(v29 + 24) = [v30 v31];
      v32 = *&v3[OBJC_IVAR____TtCC16PreviewsServices25PreviewsServiceConnection8Listener_connectionHandler];
      if (v32)
      {
        v33 = *&v3[OBJC_IVAR____TtCC16PreviewsServices25PreviewsServiceConnection8Listener_connectionHandler + 8];

        v32(v29);
        sub_25F538DE4(v32);
      }

      result = 1;
    }

    else
    {
      if (qword_27FD99BA0 != -1)
      {
        swift_once();
      }

      v23 = sub_25F53E3A0();
      __swift_project_value_buffer(v23, qword_27FD99D50);

      v24 = sub_25F53E380();
      v25 = sub_25F53E4E0();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v42 = v27;
        *v26 = 136446210;
        v28 = sub_25F53C6F4(v10, v12, &v42);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_25F533000, v24, v25, "Rejecting connection from unentitled client: %{public}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x25F8E0D10](v27, -1, -1);
        MEMORY[0x25F8E0D10](v26, -1, -1);
      }

      else
      {
      }

      result = 0;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void PreviewsServiceConnection.Listener.activate(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtCC16PreviewsServices25PreviewsServiceConnection8Listener_connectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtCC16PreviewsServices25PreviewsServiceConnection8Listener_connectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtCC16PreviewsServices25PreviewsServiceConnection8Listener_connectionHandler + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_25F538DE4(v6);
  v7 = *(v2 + OBJC_IVAR____TtCC16PreviewsServices25PreviewsServiceConnection8Listener_listener);
  v8 = qword_27FD99BA8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_25F53E3A0();
  __swift_project_value_buffer(v9, qword_27FD9A3A0);

  v10 = sub_25F53E380();
  v11 = sub_25F53E510();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446210;
    v14 = sub_25F535574();
    v16 = sub_25F53C6F4(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_25F533000, v10, v11, "%{public}s activate", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x25F8E0D10](v13, -1, -1);
    MEMORY[0x25F8E0D10](v12, -1, -1);
  }

  v17 = *(v7 + 16);

  xpc_connection_activate(v17);
}

id PreviewsServiceConnection.Listener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PreviewsServiceConnection.Listener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25F53C624(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25F53C698(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25F53C6F4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25F53C6F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F53C7C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25F53A484(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25F53C7C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25F53C8CC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25F53E590();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25F53C8CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F53C918(a1, a2);
  sub_25F53CA48(&unk_28718DB18);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25F53C918(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25F53CB34(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25F53E590();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25F53E4C0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F53CB34(v10, 0);
        result = sub_25F53E570();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25F53CA48(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25F53CBA8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25F53CB34(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99D38, &qword_25F53F758);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F53CBA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99D38, &qword_25F53F758);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_25F53CC9C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25F53CCAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99D10, &unk_25F53F4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F53CD1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD99D10, &unk_25F53F4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F53CD84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25F53CD9C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_25F53CDD8()
{
  result = qword_27FD99D28;
  if (!qword_27FD99D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD99D28);
  }

  return result;
}

unint64_t sub_25F53CE30()
{
  result = qword_27FD99D30;
  if (!qword_27FD99D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD99D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewsService(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7C)
  {
    goto LABEL_17;
  }

  if (a2 + 132 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 132) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 132;
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

      return (*a1 | (v4 << 8)) - 132;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 132;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7B)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PreviewsService(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 132 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 132) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7C)
  {
    v4 = 0;
  }

  if (a2 > 0x7B)
  {
    v5 = ((a2 - 124) >> 8) + 1;
    *result = a2 - 124;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F53D028(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 5;
  }

  else
  {
    return v1 & 1 | 4u;
  }
}

_BYTE *sub_25F53D054(_BYTE *result, unsigned int a2)
{
  if (a2 < 4)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewsService.Variant(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewsService.Variant(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PreviewsServiceConnection.Service(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewsServiceConnection.Service(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F53D3D8(uint64_t a1, int a2)
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

uint64_t sub_25F53D420(uint64_t result, int a2, int a3)
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

uint64_t sub_25F53D478()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F53D4B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F53D4D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F53D500()
{
  MEMORY[0x25F8E0D70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F53D55C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F53D600;

  return static MinimalRegistryEntry.scrapeRuntimeForEntriesAsync()(a1, a2);
}

uint64_t sub_25F53D600(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t static MinimalRegistryEntry.scrapeRuntimeForEntriesAsync()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F53D720, 0, 0);
}

uint64_t sub_25F53D720()
{
  v1 = v0[4];
  v2 = (*(v0[3] + 64))(v0[2]);
  v3 = v0[1];

  return v3(v2);
}

uint64_t static MinimalRegistryEntry.scrapeRuntimeForEntries()(uint64_t a1)
{
  if (qword_27FD99BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_25F53E3A0();
  __swift_project_value_buffer(v2, qword_27FD99D50);
  v3 = sub_25F53E380();
  v4 = sub_25F53E500();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_25F53E690();
    v9 = sub_25F53C6F4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25F533000, v3, v4, "%s does not implement 'scrapeRuntimeForEntriesAsync'", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F8E0D10](v6, -1, -1);
    MEMORY[0x25F8E0D10](v5, -1, -1);
  }

  return MEMORY[0x2821FC2A8](0, a1);
}

uint64_t dispatch thunk of MinimalRegistryEntry.makeExecutable()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25F53DA80;

  return v11(a1, a2, a3);
}

uint64_t sub_25F53DA80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of static MinimalRegistryEntry.scrapeRuntimeForEntriesAsync()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F53D600;

  return v9(a1, a2);
}

uint64_t sub_25F53DD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25F53E168();
  result = sub_25F53E550();
  *a4 = result;
  return result;
}

id sub_25F53DE1C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_25F53DEF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25F53E3A0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_25F53E390();
}

uint64_t sub_25F53DF8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25F53E3A0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t _s20UltravioletConstantsVwet(unsigned int *a1, int a2)
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

_WORD *_s20UltravioletConstantsVwst(_WORD *result, int a2, int a3)
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

unint64_t sub_25F53E168()
{
  result = qword_27FD99D80;
  if (!qword_27FD99D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD99D80);
  }

  return result;
}