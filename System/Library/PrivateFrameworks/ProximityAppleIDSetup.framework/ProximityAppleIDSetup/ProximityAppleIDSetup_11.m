unint64_t sub_2610A7440()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B47B0(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_2610A7508(uint64_t a1)
{
  v2 = sub_2610AA0BC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610A7544(uint64_t a1)
{
  v2 = sub_2610AA0BC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t *sub_2610A7580@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2610A7598()
{
  result = sub_2610BC9D4();
  qword_27FE80B20 = result;
  return result;
}

uint64_t sub_2610A75D0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_2610A75F4, 0, 0);
}

uint64_t sub_2610A75F4()
{
  v1 = v0[10];
  v2 = v1[22];
  v0[11] = v2;
  if (*(v2 + 16))
  {
    v3 = v1[10];
    v4 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
    v5 = *(v4 + 8);
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_2610A7768;

    return v10(v3, v4);
  }

  else
  {
    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_2610A7768(uint64_t a1)
{
  v3 = *(*v2 + 96);
  v4 = *v2;
  *(v4 + 104) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2610A789C, 0, 0);
}

id sub_2610A789C()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    sub_26109CE2C();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
LABEL_11:
    v14 = *(v0 + 8);

    return v14();
  }

  v2 = *(v0 + 80);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  *(v0 + 112) = (*(v4 + 56))(v3, v4);
  *(v0 + 120) = v5;
  if (!v5)
  {
    sub_26109CE2C();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    goto LABEL_11;
  }

  sub_260FA99E0((v2 + 2), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 56);
    *(v0 + 128) = v6;
    if ([*(v6 + 16) isChildAccount] && sub_260FFF24C(0, *(v0 + 88)))
    {
      v7 = *(v0 + 72);
      v8 = (*(v0 + 64))();
      *(v0 + 136) = v8;
      v9 = swift_task_alloc();
      *(v0 + 144) = v9;
      *v9 = v0;
      v9[1] = sub_2610A7E30;
      v10 = *(v0 + 80);

      return sub_2610A9910(v8, v1);
    }
  }

  if (sub_260FFF24C(1u, *(v0 + 88)))
  {
    v15 = *(v0 + 104);
    v16 = *(v0 + 72);
    *(v0 + 168) = (*(v0 + 64))();
    result = [v15 aa_altDSID];
    *(v0 + 176) = result;
    if (result)
    {
      v17 = *(v0 + 120);
      v18 = *(v0 + 80);
      v19 = v18[20];
      v20 = v18[21];
      __swift_project_boxed_opaque_existential_1(v18 + 17, v19);
      v21 = *(v20 + 8);
      v41 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 184) = v23;
      *v23 = v0;
      v23[1] = sub_2610A8500;
      v24 = *(v0 + 112);

      return v41(v24, v17, v19, v20);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  if (sub_260FFF24C(2u, *(v0 + 88)))
  {
    v25 = *(v0 + 104);
    v26 = *(v0 + 72);
    v27 = (*(v0 + 64))();
    *(v0 + 240) = v27;
    result = [v25 aa_altDSID];
    if (!result)
    {
      goto LABEL_29;
    }

    v28 = result;
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    v31 = *(v0 + 80);
    v32 = sub_2610BC9D4();

    [v27 setUsername_];

    [v27 setAltDSID_];
    [v27 setAppProvidedContext_];
    [v27 setAuthenticationType_];
    v33 = v31[15];
    v34 = v31[16];
    __swift_project_boxed_opaque_existential_1(v31 + 12, v33);
    v35 = *(v34 + 8);
    v42 = (v35 + *v35);
    v36 = v35[1];
    v37 = swift_task_alloc();
    *(v0 + 248) = v37;
    *v37 = v0;
    v37[1] = sub_2610A90B0;

    return v42(v27, v33, v34);
  }

  else
  {
    v38 = *(v0 + 120);
    v39 = *(v0 + 104);

    v40 = *(v0 + 8);

    return v40(0);
  }
}

uint64_t sub_2610A7E30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = v1;

  v7 = v4[17];
  if (v1)
  {

    v8 = sub_2610A7FF8;
  }

  else
  {
    v9 = v4[15];

    v4[20] = a1;
    v8 = sub_2610A7F84;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2610A7F84()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];

  return v4(v1);
}

id sub_2610A7FF8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  v8 = *(v0 + 128);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberSourceAuthController passwordless auth failed with %{public}@", v9, 0xCu);
    sub_260FA9980(v10, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  else
  {
    v13 = *(v0 + 128);
  }

  if (sub_260FFF24C(1u, *(v0 + 88)))
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 72);
    *(v0 + 168) = (*(v0 + 64))();
    result = [v14 aa_altDSID];
    *(v0 + 176) = result;
    if (result)
    {
      v17 = *(v0 + 120);
      v18 = *(v0 + 80);
      v19 = v18[20];
      v20 = v18[21];
      __swift_project_boxed_opaque_existential_1(v18 + 17, v19);
      v21 = *(v20 + 8);
      v41 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 184) = v23;
      *v23 = v0;
      v23[1] = sub_2610A8500;
      v24 = *(v0 + 112);

      return v41(v24, v17, v19, v20);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (sub_260FFF24C(2u, *(v0 + 88)))
  {
    v25 = *(v0 + 104);
    v26 = *(v0 + 72);
    v27 = (*(v0 + 64))();
    *(v0 + 240) = v27;
    result = [v25 aa_altDSID];
    if (!result)
    {
      goto LABEL_20;
    }

    v28 = result;
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    v31 = *(v0 + 80);
    v32 = sub_2610BC9D4();

    [v27 setUsername_];

    [v27 setAltDSID_];
    [v27 setAppProvidedContext_];
    [v27 setAuthenticationType_];
    v33 = v31[15];
    v34 = v31[16];
    __swift_project_boxed_opaque_existential_1(v31 + 12, v33);
    v35 = *(v34 + 8);
    v42 = (v35 + *v35);
    v36 = v35[1];
    v37 = swift_task_alloc();
    *(v0 + 248) = v37;
    *v37 = v0;
    v37[1] = sub_2610A90B0;

    return v42(v27, v33, v34);
  }

  else
  {
    v38 = *(v0 + 120);
    v39 = *(v0 + 104);

    v40 = *(v0 + 8);

    return v40(0);
  }
}

uint64_t sub_2610A8500(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 184);
  v7 = *v3;
  *(v5 + 192) = a2;
  *(v5 + 200) = v2;

  if (v2)
  {
    v8 = *(v5 + 176);

    v9 = sub_2610A958C;
  }

  else
  {
    *(v5 + 208) = a1;
    v9 = sub_2610A8634;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2610A8634()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[10];
  v8 = sub_2610BC9D4();
  [v3 setUsername_];

  [v3 setAltDSID_];
  [v3 setAppProvidedContext_];
  [v3 setAuthenticationType_];
  v9 = sub_2610BC9D4();
  [v3 _setPassword_];

  v10 = v7[15];
  v11 = v7[16];
  __swift_project_boxed_opaque_existential_1(v7 + 12, v10);
  v12 = *(v11 + 8);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_2610A8814;

  return v16(v3, v10, v11);
}

uint64_t sub_2610A8814(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_2610A8D1C;
  }

  else
  {
    v5 = sub_2610A8928;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_2610A8928()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  if (*(v0 + 224))
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 104);
    v5 = *(v0 + 192);

    v6 = *(v0 + 224);
LABEL_14:
    v33 = *(v0 + 8);

    return v33(v6);
  }

  sub_26109CE2C();
  v7 = swift_allocError();
  *v8 = 4;
  swift_willThrow();

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v9 = sub_2610BC7B4();
  __swift_project_value_buffer(v9, qword_27FE65900);
  v10 = v7;
  v11 = sub_2610BC794();
  v12 = sub_2610BCD64();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_260F97000, v11, v12, "PASFamilyMemberSourceAuthController savePassword auth failed with %{public}@", v13, 0xCu);
    sub_260FA9980(v14, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v14, -1, -1);
    MEMORY[0x2666F8720](v13, -1, -1);
  }

  else
  {
  }

  if (!sub_260FFF24C(2u, *(v0 + 88)))
  {
    v31 = *(v0 + 120);
    v32 = *(v0 + 104);

    v6 = 0;
    goto LABEL_14;
  }

  v17 = *(v0 + 104);
  v18 = *(v0 + 72);
  v19 = (*(v0 + 64))();
  *(v0 + 240) = v19;
  result = [v17 aa_altDSID];
  if (result)
  {
    v21 = result;
    v22 = *(v0 + 112);
    v23 = *(v0 + 120);
    v24 = *(v0 + 80);
    v25 = sub_2610BC9D4();

    [v19 setUsername_];

    [v19 setAltDSID_];
    [v19 setAppProvidedContext_];
    [v19 setAuthenticationType_];
    v26 = v24[15];
    v27 = v24[16];
    __swift_project_boxed_opaque_existential_1(v24 + 12, v26);
    v28 = *(v27 + 8);
    v34 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    *(v0 + 248) = v30;
    *v30 = v0;
    v30[1] = sub_2610A90B0;

    return v34(v19, v26, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2610A8D1C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  v3 = *(v0 + 232);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = v3;
  v6 = sub_2610BC794();
  v7 = sub_2610BCD64();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_260F97000, v6, v7, "PASFamilyMemberSourceAuthController savePassword auth failed with %{public}@", v8, 0xCu);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  if (sub_260FFF24C(2u, *(v0 + 88)))
  {
    v12 = *(v0 + 104);
    v13 = *(v0 + 72);
    v14 = (*(v0 + 64))();
    *(v0 + 240) = v14;
    result = [v12 aa_altDSID];
    if (result)
    {
      v16 = result;
      v17 = *(v0 + 112);
      v18 = *(v0 + 120);
      v19 = *(v0 + 80);
      v20 = sub_2610BC9D4();

      [v14 setUsername_];

      [v14 setAltDSID_];
      [v14 setAppProvidedContext_];
      [v14 setAuthenticationType_];
      v21 = v19[15];
      v22 = v19[16];
      __swift_project_boxed_opaque_existential_1(v19 + 12, v21);
      v23 = *(v22 + 8);
      v29 = (v23 + *v23);
      v24 = v23[1];
      v25 = swift_task_alloc();
      *(v0 + 248) = v25;
      *v25 = v0;
      v25[1] = sub_2610A90B0;

      return v29(v14, v21, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v26 = *(v0 + 120);
    v27 = *(v0 + 104);

    v28 = *(v0 + 8);

    return v28(0);
  }

  return result;
}

uint64_t sub_2610A90B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v7 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v5 = sub_2610A93D0;
  }

  else
  {
    v5 = sub_2610A91C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2610A91C4()
{
  v1 = v0[30];
  if (v0[32])
  {
    v2 = v0[13];

    v3 = v0[32];
  }

  else
  {
    sub_26109CE2C();
    v4 = swift_allocError();
    *v5 = 4;
    swift_willThrow();

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = sub_2610BC7B4();
    __swift_project_value_buffer(v6, qword_27FE65900);
    v7 = v4;
    v8 = sub_2610BC794();
    v9 = sub_2610BCD64();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[13];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v4;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_260F97000, v8, v9, "PASFamilyMemberSourceAuthController default auth failed with %{public}@", v12, 0xCu);
      sub_260FA9980(v13, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v13, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    else
    {
    }

    v3 = 0;
  }

  v16 = v0[1];

  return v16(v3);
}

uint64_t sub_2610A93D0()
{
  v1 = *(v0 + 264);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberSourceAuthController default auth failed with %{public}@", v8, 0xCu);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

id sub_2610A958C()
{
  v1 = *(v0 + 200);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberSourceAuthController savePassword auth failed with %{public}@", v6, 0xCu);
    sub_260FA9980(v7, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  if (sub_260FFF24C(2u, *(v0 + 88)))
  {
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);
    v12 = (*(v0 + 64))();
    *(v0 + 240) = v12;
    result = [v10 aa_altDSID];
    if (result)
    {
      v14 = result;
      v15 = *(v0 + 112);
      v16 = *(v0 + 120);
      v17 = *(v0 + 80);
      v18 = sub_2610BC9D4();

      [v12 setUsername_];

      [v12 setAltDSID_];
      [v12 setAppProvidedContext_];
      [v12 setAuthenticationType_];
      v19 = v17[15];
      v20 = v17[16];
      __swift_project_boxed_opaque_existential_1(v17 + 12, v19);
      v21 = *(v20 + 8);
      v27 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 248) = v23;
      *v23 = v0;
      v23[1] = sub_2610A90B0;

      return v27(v12, v19, v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v24 = *(v0 + 120);
    v25 = *(v0 + 104);

    v26 = *(v0 + 8);

    return v26(0);
  }

  return result;
}

uint64_t sub_2610A9910(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2610A9934, 0, 0);
}

uint64_t sub_2610A9934()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [v1 username];
  [v2 setUsername_];

  v4 = [v1 aa_altDSID];
  [v2 setAltDSID_];

  [v2 setAuthenticationType_];
  v5 = sub_2610BC9D4();
  v6 = NSSelectorFromString(v5);

  if ([v2 respondsToSelector_])
  {
    v7 = v0[4];
    v8 = v7[5];
    v9 = v7[6];
    __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
    (*(v9 + 48))(v8, v9);
    if (v10)
    {
      v11 = sub_2610BC9D4();
    }

    else
    {
      v11 = 0;
    }

    v16 = v0[2];
    [v16 performSelector:v6 withObject:v11];
    swift_unknownObjectRelease();
    v17 = v16;
    v18 = v16;
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);
    v13 = sub_2610BC794();
    v14 = sub_2610BCD64();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_260F97000, v13, v14, "PASFamilyMemberSourceAuthController, authContext does not respond to selector setProxiedAppleID:", v15, 2u);
      MEMORY[0x2666F8720](v15, -1, -1);
    }
  }

  if (qword_27FE63828 != -1)
  {
    swift_once();
  }

  v19 = v0[4];
  v20 = v0[2];
  [v20 setAppProvidedContext_];
  v21 = v19[15];
  v22 = v19[16];
  __swift_project_boxed_opaque_existential_1(v19 + 12, v21);
  v23 = *(v22 + 8);
  v27 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  v0[5] = v25;
  *v25 = v0;
  v25[1] = sub_2610A9CB8;

  return v27(v20, v21, v22);
}

uint64_t sub_2610A9CB8(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2610A9DEC, 0, 0);
}

uint64_t sub_2610A9DEC()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_26109CE2C();
    swift_allocError();
    *v3 = 5;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2610A9EBC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  v1 = v0[22];

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

unint64_t sub_2610A9F4C()
{
  result = qword_27FE66910;
  if (!qword_27FE66910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66910);
  }

  return result;
}

uint64_t sub_2610A9FA0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FB6F34;

  return sub_2610A75D0(a1, a2);
}

unint64_t sub_2610AA084(void *a1)
{
  a1[1] = sub_2610AA0BC();
  a1[2] = sub_2610AA110();
  result = sub_2610AA164();
  a1[3] = result;
  return result;
}

unint64_t sub_2610AA0BC()
{
  result = qword_27FE66918;
  if (!qword_27FE66918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66918);
  }

  return result;
}

unint64_t sub_2610AA110()
{
  result = qword_27FE66920;
  if (!qword_27FE66920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66920);
  }

  return result;
}

unint64_t sub_2610AA164()
{
  result = qword_27FE66928;
  if (!qword_27FE66928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66928);
  }

  return result;
}

unint64_t sub_2610AA1BC()
{
  result = qword_27FE66930;
  if (!qword_27FE66930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66930);
  }

  return result;
}

uint64_t sub_2610AA210()
{
  v0 = sub_2610BD154();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t PASManateeRepairController.repair(featureName:securityUpgradeContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2610AA288, 0, 0);
}

uint64_t sub_2610AA288()
{
  v1 = v0[5];
  v2 = *(v1 + 64);
  v3 = (*(v1 + 56))();
  v0[6] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
  v0[7] = v4;
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_2610AA3CC;
    v6 = v0[4];
    v7 = v0[5];
    v9 = v0[2];
    v8 = v0[3];

    return sub_2610AAAA0(v9, v8, v3, v6);
  }

  else
  {
    sub_2610AA5D0();
    swift_allocError();
    swift_willThrow();

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_2610AA3CC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_2610AA564;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v7 = sub_2610AA4F8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2610AA4F8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2(v3);
}

uint64_t sub_2610AA564()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(0);
}

unint64_t sub_2610AA5D0()
{
  result = qword_27FE66938;
  if (!qword_27FE66938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66938);
  }

  return result;
}

uint64_t sub_2610AA624()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610AA698()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610AA6EC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BD154();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_2610AA760()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000018, 0x80000002610D1C50);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v4;
}

uint64_t sub_2610AA84C()
{
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000018, 0x80000002610D1C50);
  return v1;
}

uint64_t sub_2610AA8B0(uint64_t a1)
{
  v2 = sub_2610AB41C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610AA8EC(uint64_t a1)
{
  v2 = sub_2610AB41C();

  return MEMORY[0x28211F4A8](a1, v2);
}

id sub_2610AA928()
{
  result = [objc_opt_self() contextForPrimaryAccount];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2610AA964(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v3 + 72) = v8;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v9 = sub_2610BC7B4();
  __swift_project_value_buffer(v9, qword_27FE65900);
  v10 = sub_2610BC794();
  v11 = sub_2610BCD54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_260F97000, v10, v11, "PASManateeRepairController init", v12, 2u);
    MEMORY[0x2666F8720](v12, -1, -1);
  }

  sub_260F98E14(a1, v4 + 16);
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  return v4;
}

uint64_t sub_2610AAAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_2610AAAC8, 0, 0);
}

uint64_t sub_2610AAAC8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[12] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASManateeRepairController begin repair", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  v10 = v6[5];
  v11 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v10);
  (*(v11 + 8))(v9, v8, v7, v5, v10, v11);
  v12 = sub_2610BC794();
  v13 = sub_2610BCD84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_260F97000, v12, v13, "PASManateeRepairController performing encryption state repair (if needed)", v14, 2u);
    MEMORY[0x2666F8720](v14, -1, -1);
  }

  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v17 = *(v16 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_2610AAD80;

  return v21(v15, v16);
}

uint64_t sub_2610AAD80()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2610AAF74;
  }

  else
  {
    v3 = sub_2610AAE94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2610AAE94()
{
  v1 = v0[12];
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASManateeRepairController repair completed successfully", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v5 = v0[1];

  return v5(1);
}

uint64_t sub_2610AAF74()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[14];

  return v1(0);
}

uint64_t *PASManateeRepairController.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  return v0;
}

uint64_t PASManateeRepairController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2610AB054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FB727C;

  return PASManateeRepairController.repair(featureName:securityUpgradeContext:)(a1, a2, a3);
}

uint64_t dispatch thunk of PASDeviceToDeviceEncryptionHelperProtocol.performDeviceToDeviceEncryptionStateRepair()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF864;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PASManateeRepairControllerProtocol.repair(featureName:securityUpgradeContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_260FBD298;

  return v15(a1, a2, a3, a4, a5);
}

unint64_t sub_2610AB3E4(void *a1)
{
  a1[1] = sub_2610AB41C();
  a1[2] = sub_2610AB470();
  result = sub_2610AB4C4();
  a1[3] = result;
  return result;
}

unint64_t sub_2610AB41C()
{
  result = qword_27FE66940;
  if (!qword_27FE66940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66940);
  }

  return result;
}

unint64_t sub_2610AB470()
{
  result = qword_27FE66948;
  if (!qword_27FE66948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66948);
  }

  return result;
}

unint64_t sub_2610AB4C4()
{
  result = qword_27FE66950;
  if (!qword_27FE66950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66950);
  }

  return result;
}

unint64_t sub_2610AB51C()
{
  result = qword_27FE66958[0];
  if (!qword_27FE66958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE66958);
  }

  return result;
}

uint64_t static Message.Metrics.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for Message.Metrics.EpochStage();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277D84D38];
  v7 = MEMORY[0x277D84D58];

  return MEMORY[0x2821FB928](v2, v3, v4, v6, WitnessTable, v7);
}

uint64_t Message.Metrics.epochsByStage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Message.Metrics.init(sourceSendEpoch:destinationReceiveEpoch:destinationSendEpoch:sourceReceiveEpoch:)@<X0>(uint64_t *a1@<X8>)
{
  v1 = type metadata accessor for Message.Metrics.EpochStage();
  v2 = MEMORY[0x277D84D38];
  swift_getTupleTypeMetadata2();
  v3 = sub_2610BCB74();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_261040F14(v3, v1, v2, WitnessTable);

  v13 = v5;
  v9 = 0;
  v6 = type metadata accessor for Message.Metrics();
  Message.Metrics.updatingEpoch(for:to:)(&v9, v6, &v10);
  LOBYTE(v13) = 1;
  Message.Metrics.updatingEpoch(for:to:)(&v13, v6, &v11);
  LOBYTE(v13) = 2;
  Message.Metrics.updatingEpoch(for:to:)(&v13, v6, &v12);
  v9 = 3;
  result = Message.Metrics.updatingEpoch(for:to:)(&v9, v6, &v13);
  *a1 = v13;
  return result;
}

uint64_t Message.Metrics.updatingEpoch(for:to:)@<X0>(char *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  *a3 = *v3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for Message.Metrics.EpochStage();
  swift_getWitnessTable();
  sub_2610BC934();
  return sub_2610BC974();
}

uint64_t sub_2610AB8CC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for Message.Metrics.EpochStage();
  swift_getWitnessTable();
  sub_2610BC964();
  return v6;
}

unint64_t sub_2610AB9A4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v6 = *v3;
  v7 = a2();
  if (v8)
  {
    return 0;
  }

  v9 = v7;
  result = a3(a1);
  if (v11)
  {
    return 0;
  }

  if (result >= v9)
  {
    return 1000000000000000 * (result - v9);
  }

  __break(1u);
  return result;
}

uint64_t Message.Metrics.roundtripDuration.getter(uint64_t a1)
{
  v3 = *v1;
  Message.Metrics.onewaySendDuration.getter(a1);
  if (v4)
  {
    return 0;
  }

  Message.Metrics.onewayReceiveDuration.getter(a1);
  if (v5)
  {
    return 0;
  }

  else
  {
    return sub_2610BD604();
  }
}

uint64_t Message.Metrics.updateEpoch(for:to:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v8 = *v4;
  v7 = v5;
  result = Message.Metrics.updatingEpoch(for:to:)(&v7, a4, &v9);
  *v4 = v9;
  return result;
}

uint64_t sub_2610ABB60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79427368636F7065 && a2 == 0xED00006567617453)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2610BD384();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2610ABC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2610ABB60(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2610ABC38@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_260FBF8A0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2610ABC68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610ABCBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.Metrics.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v12[0] = *(a2 + 24);
  v12[1] = v4;
  _s7MetricsV10CodingKeysOMa();
  swift_getWitnessTable();
  v5 = sub_2610BD2D4();
  v13 = *(v5 - 8);
  v6 = *(v13 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v9 = *v2;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_2610BD5F4();
  v16 = v9;
  type metadata accessor for Message.Metrics.EpochStage();
  swift_getWitnessTable();
  sub_2610BC934();
  WitnessTable = swift_getWitnessTable();
  v15 = MEMORY[0x277D84D40];
  swift_getWitnessTable();
  sub_2610BD2A4();

  return (*(v13 + 8))(v8, v5);
}

uint64_t Message.Metrics.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for Message.Metrics.EpochStage();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277D84D38];
  v10 = MEMORY[0x277D84D48];

  return MEMORY[0x2821FB920](a1, v4, v7, v9, WitnessTable, v10);
}

uint64_t Message.Metrics.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_2610BD514();
  Message.Metrics.hash(into:)(v4, a1);
  return sub_2610BD574();
}

uint64_t Message.Metrics.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  _s7MetricsV10CodingKeysOMa();
  swift_getWitnessTable();
  v15 = sub_2610BD224();
  v13 = *(v15 - 8);
  v4 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v6 = &v12 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5D4();
  if (!v2)
  {
    v9 = v13;
    v8 = v14;
    type metadata accessor for Message.Metrics.EpochStage();
    swift_getWitnessTable();
    sub_2610BC934();
    WitnessTable = swift_getWitnessTable();
    v17 = MEMORY[0x277D84D68];
    swift_getWitnessTable();
    v10 = v15;
    sub_2610BD1E4();
    (*(v9 + 8))(v6, v10);
    *v8 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_2610AC254@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return Message.Metrics.init(from:)(a1, a3);
}

uint64_t sub_2610AC28C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static Message.Metrics.== infix(_:_:)(a1, a2);
}

uint64_t sub_2610AC2A0(uint64_t a1, uint64_t a2)
{
  sub_2610BD514();
  Message.Metrics.hash(into:)(v4, a2);
  return sub_2610BD574();
}

uint64_t sub_2610AC2F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6553656372756F73 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002610D6500 == a2 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEF646E65536E6F69 || (sub_2610BD384() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6552656372756F73 && a2 == 0xED00006576696563)
  {

    return 3;
  }

  else
  {
    v6 = sub_2610BD384();

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

unint64_t sub_2610AC47C(unsigned __int8 a1)
{
  v1 = 0x6553656372756F73;
  v2 = 0x74616E6974736564;
  if (a1 != 2)
  {
    v2 = 0x6552656372756F73;
  }

  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2610AC518(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2610AC47C(*v1);
}

uint64_t sub_2610AC524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2610AC2F8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2610AC554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610AC5A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2610AC614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610AC668(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2610AC6BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610AC710(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2610AC764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610AC7B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2610AC80C@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(*(a1 + 16), *(a1 + 24));

  *a3 = v4 & 1;
  return result;
}

uint64_t sub_2610AC858(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610AC8AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.Metrics.EpochStage.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = _s7MetricsV10EpochStageO23SourceReceiveCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v53 = v7;
  v8 = sub_2610BD2D4();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = &v35 - v10;
  v11 = _s7MetricsV10EpochStageO25DestinationSendCodingKeysOMa();
  v12 = swift_getWitnessTable();
  v48 = v11;
  v46 = v12;
  v47 = sub_2610BD2D4();
  v45 = *(v47 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v35 - v14;
  v15 = _s7MetricsV10EpochStageO28DestinationReceiveCodingKeysOMa();
  v16 = swift_getWitnessTable();
  v43 = v15;
  v41 = v16;
  v42 = sub_2610BD2D4();
  v40 = *(v42 - 8);
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v35 - v18;
  _s7MetricsV10EpochStageO20SourceSendCodingKeysOMa();
  v37 = swift_getWitnessTable();
  v38 = sub_2610BD2D4();
  v36 = *(v38 - 8);
  v19 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v35 - v20;
  _s7MetricsV10EpochStageO10CodingKeysOMa();
  swift_getWitnessTable();
  v54 = sub_2610BD2D4();
  v21 = *(v54 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v54);
  v24 = &v35 - v23;
  v25 = *v3;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5F4();
  v27 = (v21 + 8);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v57 = 2;
      v30 = v44;
      v31 = v54;
      sub_2610BD234();
      (*(v45 + 8))(v30, v47);
    }

    else
    {
      v58 = 3;
      v34 = v49;
      v31 = v54;
      sub_2610BD234();
      (*(v50 + 8))(v34, v51);
    }

    return (*v27)(v24, v31);
  }

  else
  {
    if (v25)
    {
      v56 = 1;
      v32 = v39;
      v29 = v54;
      sub_2610BD234();
      (*(v40 + 8))(v32, v42);
    }

    else
    {
      v55 = 0;
      v28 = v35;
      v29 = v54;
      sub_2610BD234();
      (*(v36 + 8))(v28, v38);
    }

    return (*v27)(v24, v29);
  }
}

uint64_t Message.Metrics.EpochStage.hashValue.getter()
{
  v1 = *v0;
  sub_2610BD514();
  MEMORY[0x2666F7E40](v1);
  return sub_2610BD574();
}

uint64_t Message.Metrics.EpochStage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v69 = a3;
  v5 = _s7MetricsV10EpochStageO23SourceReceiveCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v68 = v5;
  v58 = sub_2610BD224();
  v57 = *(v58 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v66 = &v48 - v7;
  v8 = _s7MetricsV10EpochStageO25DestinationSendCodingKeysOMa();
  v64 = swift_getWitnessTable();
  v65 = v8;
  v56 = sub_2610BD224();
  v55 = *(v56 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v63 = &v48 - v10;
  v11 = _s7MetricsV10EpochStageO28DestinationReceiveCodingKeysOMa();
  v61 = swift_getWitnessTable();
  v62 = v11;
  v54 = sub_2610BD224();
  v53 = *(v54 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v60 = &v48 - v13;
  v14 = _s7MetricsV10EpochStageO20SourceSendCodingKeysOMa();
  v59 = swift_getWitnessTable();
  v52 = sub_2610BD224();
  v51 = *(v52 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v17 = &v48 - v16;
  _s7MetricsV10EpochStageO10CodingKeysOMa();
  swift_getWitnessTable();
  v18 = sub_2610BD224();
  v19 = *(v18 - 8);
  v70 = v18;
  v71 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = a1;
  v25 = a1[3];
  v24 = a1[4];
  v77 = v23;
  __swift_project_boxed_opaque_existential_1(v23, v25);
  v26 = v72;
  sub_2610BD5D4();
  if (!v26)
  {
    v49 = v17;
    v50 = v14;
    v72 = a2;
    v27 = v70;
    v28 = v22;
    *&v73 = sub_2610BD214();
    sub_2610BCBD4();
    swift_getWitnessTable();
    *&v75 = sub_2610BCEC4();
    *(&v75 + 1) = v29;
    *&v76 = v30;
    *(&v76 + 1) = v31;
    sub_2610BCEB4();
    swift_getWitnessTable();
    sub_2610BCD24();
    v32 = v73;
    if (v73 == 4 || (v48 = v75, v73 = v75, v74 = v76, (sub_2610BCD34() & 1) == 0))
    {
      v36 = v27;
      v37 = sub_2610BCFF4();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650) + 48);
      *v39 = type metadata accessor for Message.Metrics.EpochStage();
      sub_2610BD174();
      sub_2610BCFE4();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v71 + 8))(v28, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32 > 1)
      {
        v42 = v28;
        if (v32 == 2)
        {
          LOBYTE(v73) = 2;
          v43 = v63;
          sub_2610BD164();
          v35 = v69;
          v44 = v27;
          v45 = v71;
          (*(v55 + 8))(v43, v56);
        }

        else
        {
          LOBYTE(v73) = 3;
          v47 = v66;
          sub_2610BD164();
          v35 = v69;
          v44 = v27;
          v45 = v71;
          (*(v57 + 8))(v47, v58);
        }

        (*(v45 + 8))(v42, v44);
        goto LABEL_14;
      }

      v33 = v28;
      if (!v32)
      {
        LOBYTE(v73) = 0;
        v34 = v49;
        sub_2610BD164();
        v35 = v69;
        (*(v51 + 8))(v34, v52);
        (*(v71 + 8))(v33, v27);
LABEL_14:
        swift_unknownObjectRelease();
        *v35 = v32;
        return __swift_destroy_boxed_opaque_existential_0Tm(v77);
      }

      LOBYTE(v73) = 1;
      v46 = v60;
      sub_2610BD164();
      (*(v53 + 8))(v46, v54);
      (*(v71 + 8))(v28, v27);
      swift_unknownObjectRelease();
      *v69 = v32;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v77);
}

uint64_t sub_2610AD75C()
{
  sub_2610BD514();
  Message.Metrics.EpochStage.hash(into:)();
  return sub_2610BD574();
}

uint64_t static UInt64.epoch(for:)()
{
  result = sub_2610BC594();
  v2 = v1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 1.84467441e19)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2610AD9A4(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_2610ADA04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2610ADBE0()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610ADC54()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610ADCA8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BD154();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_2610ADD1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000012, 0x80000002610D1C70);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v4;
}

uint64_t sub_2610ADE08()
{
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000012, 0x80000002610D1C70);
  return v1;
}

unint64_t sub_2610ADE6C(void *a1)
{
  a1[1] = sub_2610ADEA4();
  a1[2] = sub_2610ADEF8();
  result = sub_2610ADF4C();
  a1[3] = result;
  return result;
}

unint64_t sub_2610ADEA4()
{
  result = qword_27FE66D60;
  if (!qword_27FE66D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66D60);
  }

  return result;
}

unint64_t sub_2610ADEF8()
{
  result = qword_27FE66D68;
  if (!qword_27FE66D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66D68);
  }

  return result;
}

unint64_t sub_2610ADF4C()
{
  result = qword_27FE66D70;
  if (!qword_27FE66D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66D70);
  }

  return result;
}

unint64_t sub_2610ADFA4()
{
  result = qword_27FE66D78;
  if (!qword_27FE66D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66D78);
  }

  return result;
}

uint64_t sub_2610ADFF8(uint64_t a1)
{
  v2 = sub_2610ADEA4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610AE034(uint64_t a1)
{
  v2 = sub_2610ADEA4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepSourceStart.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t PASFlowStepSourceStart.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_2610AE180;

  return sub_26104582C();
}

uint64_t sub_2610AE180()
{
  v2 = v0;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 48) = v2;

  v7 = sub_2610BCBF4();
  if (v2)
  {
    v8 = sub_260FC97F4;
  }

  else
  {
    v8 = sub_2610AE2DC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2610AE2DC()
{
  v1 = v0[4];
  v2 = v0[2];

  sub_2610439BC();
  v3 = v0[1];

  return v3();
}

uint64_t PASFlowStepSourceStart.nextStep()()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  v4 = type metadata accessor for PASFlowStepCheckInternet();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_2610B34E4(Strong, v3);
  swift_unknownObjectRelease();
  sub_2610AE5A0(&qword_27FE66D80, type metadata accessor for PASFlowStepCheckInternet);
  return v7;
}

uint64_t PASFlowStepSourceStart.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t PASFlowStepSourceStart.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2610AE498()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  v4 = type metadata accessor for PASFlowStepCheckInternet();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_2610B34E4(Strong, v3);
  swift_unknownObjectRelease();
  sub_2610AE5A0(&qword_27FE66D80, type metadata accessor for PASFlowStepCheckInternet);
  return v7;
}

uint64_t sub_2610AE55C(uint64_t a1)
{
  result = sub_2610AE5A0(&qword_27FE65778, type metadata accessor for PASFlowStepSourceStart);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610AE5A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSourceStart()
{
  result = qword_27FE66D88;
  if (!qword_27FE66D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2610AE68C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x4F64696C61766E69;
  }

  if (v3)
  {
    v5 = 0xEE00736E6F697470;
  }

  else
  {
    v5 = 0x80000002610D1CA0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x4F64696C61766E69;
  }

  if (*a2)
  {
    v7 = 0x80000002610D1CA0;
  }

  else
  {
    v7 = 0xEE00736E6F697470;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2610BD384();
  }

  return v9 & 1;
}

uint64_t sub_2610AE744()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610AE7D8()
{
  *v0;
  sub_2610BCA54();
}

uint64_t sub_2610AE858()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610AE8E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BD154();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2610AE948(unint64_t *a1@<X8>)
{
  v2 = 0x80000002610D1CA0;
  v3 = 0x4F64696C61766E69;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xEE00736E6F697470;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2610AE998()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B40E0(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_2610AEA60(uint64_t a1)
{
  v2 = sub_2610AEEDC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610AEA9C(uint64_t a1)
{
  v2 = sub_2610AEEDC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2610AEAD8(uint64_t a1)
{
  v2 = *MEMORY[0x277D185B0];
  *&v14 = sub_2610BCA04();
  *(&v14 + 1) = v3;
  sub_2610BCF24();
  if (*(a1 + 16) && (v4 = sub_260FA60B4(v16), (v5 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v4, &v17);
    sub_260FA9764(v16);
  }

  else
  {
    sub_260FA9764(v16);
    v17 = 0u;
    v18 = 0u;
  }

  v6 = *MEMORY[0x277D18610];
  sub_2610BCA04();
  sub_2610BCF24();
  if (*(a1 + 16) && (v7 = sub_260FA60B4(v16), (v8 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v7, &v14);
    sub_260FA9764(v16);
    v9 = *(&v15 + 1) == 0;
    v10 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_260FA9764(v16);
    v14 = 0u;
    v15 = 0u;
    v9 = 1;
    v10 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      goto LABEL_12;
    }
  }

  if (v9)
  {
    v11 = 1;
LABEL_14:

    sub_2610AEE20();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    goto LABEL_15;
  }

LABEL_12:
  if (v10 != 0 && !v9)
  {
    v11 = 0;
    goto LABEL_14;
  }

LABEL_15:
  sub_260FA9980(&v17, &qword_27FE63830, &qword_2610BE8E0);
  sub_260FA9980(&v14, &qword_27FE63830, &qword_2610BE8E0);
  return a1;
}

uint64_t sub_2610AEC98(char a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D185B0];
  *&v9 = sub_2610BCA04();
  *(&v9 + 1) = v5;
  sub_2610BCF24();
  v10 = MEMORY[0x277D839B0];
  LOBYTE(v9) = a1;
  sub_260FA6A84(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_260FA6C8C(v8, v11, isUniquelyReferenced_nonNull_native);
  sub_260FA9764(v11);
  return a2;
}

uint64_t sub_2610AED3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D18610];
  sub_2610BCA04();
  v7 = MEMORY[0x277D837D0];
  sub_2610BCF24();
  v12 = v7;
  *&v11 = a1;
  *(&v11 + 1) = a2;
  sub_260FA6A84(&v11, v10);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_260FA6C8C(v10, v13, isUniquelyReferenced_nonNull_native);
  sub_260FA9764(v13);
  return a3;
}

uint64_t sub_2610AEDF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2610AEAD8(*v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_2610AEE20()
{
  result = qword_27FE66D98;
  if (!qword_27FE66D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66D98);
  }

  return result;
}

unint64_t sub_2610AEEA4(void *a1)
{
  a1[1] = sub_2610AEEDC();
  a1[2] = sub_2610AEF30();
  result = sub_2610AEF84();
  a1[3] = result;
  return result;
}

unint64_t sub_2610AEEDC()
{
  result = qword_27FE66DA0;
  if (!qword_27FE66DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66DA0);
  }

  return result;
}

unint64_t sub_2610AEF30()
{
  result = qword_27FE66DA8;
  if (!qword_27FE66DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66DA8);
  }

  return result;
}

unint64_t sub_2610AEF84()
{
  result = qword_27FE66DB0;
  if (!qword_27FE66DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66DB0);
  }

  return result;
}

unint64_t sub_2610AEFDC()
{
  result = qword_27FE66DB8;
  if (!qword_27FE66DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66DB8);
  }

  return result;
}

uint64_t sub_2610AF034(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBD298;

  return v9(a1, a2);
}

uint64_t sub_2610AF188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FBCD00;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2610AF2B8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_2610AFE1C();
  **(*(v1 + 64) + 40) = sub_2610BCB34();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_2610AF360()
{
  v1[2] = v0;
  v2 = sub_2610BC744();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2610BC774();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_2610BC714();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2610AF4E4, 0, 0);
}

uint64_t sub_2610AF4E4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v0[7] + 16))(v0[8], v0[2], v0[6]);
  sub_2610BC704();
  (*(v4 + 16))(v1, v2, v3);
  v5 = *(MEMORY[0x277CC5DB0] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_2610AF5F8;
  v7 = v0[11];
  v8 = v0[5];

  return MEMORY[0x282116960](v8, v7);
}

uint64_t sub_2610AF5F8()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2610AF810;
  }

  else
  {
    v3 = sub_2610AF70C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2610AF70C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = sub_2610BC734();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[8];
  v12 = v0[5];

  v14 = v0[1];
  if (!v1)
  {
    v13 = v8;
  }

  return v14(v13);
}

uint64_t sub_2610AF810()
{
  (*(v0[10] + 8))(v0[12], v0[9]);
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2610AF8B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return MEMORY[0x2822009F8](sub_2610AF8D4, 0, 0);
}

uint64_t sub_2610AF8D4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v4 = sub_2610BC9D4();
  v5 = [v3 initWithExtensionPointIdentifier_];
  v0[31] = v5;

  v6 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_2610AFA4C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66DC0, &qword_2610D0A48);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2610AF2B8;
  v0[13] = &block_descriptor_10;
  v0[14] = v7;
  [v6 executeQuery:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2610AFA4C()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2610AFB2C, 0, 0);
}

void *sub_2610AFB2C()
{
  v1 = *(v0 + 224);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v19 = *(v0 + 224);
    }

    v2 = sub_2610BD0E4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    v20 = *(v0 + 248);

    v6 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  result = sub_2610525B4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = (v0 + 144);
  v6 = v26;
  v22 = v1 & 0xC000000000000001;
  v23 = (v0 + 184);
  v24 = v2;
  v25 = v1;
  do
  {
    if (v22)
    {
      MEMORY[0x2666F78E0](v4, v1);
    }

    else
    {
      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = sub_2610BC774();
    *(v0 + 168) = v8;
    *(v0 + 176) = &off_28738BA98;
    __swift_allocate_boxed_opaque_existential_1(v5);
    sub_2610BC784();
    v10 = *(v26 + 16);
    v9 = *(v26 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_2610525B4((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    v11 = *(v0 + 168);
    v12 = v5;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v5, v11);
    v14 = *(v11 - 8);
    v15 = *(v14 + 64) + 15;
    v16 = swift_task_alloc();
    v17 = v13;
    v5 = v12;
    (*(v14 + 16))(v16, v17, v11);
    *(v0 + 208) = v8;
    *(v0 + 216) = &off_28738BA98;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
    (*(*(v8 - 8) + 32))(boxed_opaque_existential_1, v16, v8);
    *(v26 + 16) = v10 + 1;
    sub_260FA9F80(v23, v26 + 40 * v10 + 32);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);

    v1 = v25;
  }

  while (v24 != v4);

LABEL_16:
  v21 = *(v0 + 8);

  return v21(v6);
}

unint64_t sub_2610AFE1C()
{
  result = qword_27FE66DC8;
  if (!qword_27FE66DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE66DC8);
  }

  return result;
}

uint64_t PASFlowStepSelectPicker.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_2610B1410(a1, a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_2610AFEC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__extensionCache);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA2288();
    v4 = *(v1 + 16);
    *(v1 + 16) = v2;
  }

  return v2;
}

uint64_t sub_2610AFF90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__featureFlagsProvider);
  swift_beginAccess();
  sub_260FE609C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260FA9F80(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E668(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260FA9F80(&v6, v5);
  swift_beginAccess();
  sub_260FE610C(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_2610B00AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__targetAccountOptionsProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260F9CD6C();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t PASFlowStepSelectPicker.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_2610B0234;

  return sub_26104582C();
}

uint64_t sub_2610B0234()
{
  v2 = v0;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 48) = v2;

  v7 = sub_2610BCBF4();
  if (v2)
  {
    v8 = sub_260FF5690;
  }

  else
  {
    v8 = sub_2610B0390;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2610B0390()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = swift_allocObject();
  swift_weakInit();
  sub_260FC3450();
  swift_allocError();
  *v4 = 0xD00000000000002DLL;
  *(v4 + 8) = 0x80000002610D65C0;
  *(v4 + 16) = &unk_2610D0A60;
  *(v4 + 24) = v3;
  *(v4 + 32) = 0;
  swift_willThrow();
  v5 = v0[1];

  return v5();
}

uint64_t sub_2610B047C(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_2610BCC74();
  v1[7] = sub_2610BCC64();
  v4 = sub_2610BCBF4();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_2610B054C, v4, v3);
}

uint64_t sub_2610B054C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (!Strong)
  {
    v3 = v0[7];

    v4 = v0[6];

    v5 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2610B0614, 0, 0);
}

uint64_t sub_2610B0614()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = sub_2610BCC94();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;
  sub_261042434(0, 0, v2, &unk_2610D0AF8, v4);

  v5 = v0[8];
  v6 = v0[9];

  return MEMORY[0x2822009F8](sub_2610B0700, v5, v6);
}

uint64_t sub_2610B0700()
{
  v1 = v0[7];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2610B0788()
{
  v1 = *(v0 + 32);
  v2 = sub_2610AFEC4();
  *(v0 + 40) = v2;

  return MEMORY[0x2822009F8](sub_2610B07F4, v2, 0);
}

uint64_t sub_2610B07F4()
{
  v1 = v0[5];
  v2 = sub_261037C94();
  v0[6] = v2;
  v3 = *(MEMORY[0x277D857E0] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  *v4 = v0;
  v4[1] = sub_2610B08B8;

  return MEMORY[0x282200460](v0 + 2, v2, v5);
}

uint64_t sub_2610B08B8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2610B09E4, v3, 0);
}

uint64_t sub_2610B09E4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_2610B0A4C, 0, 0);
}

uint64_t sub_2610B0A4C()
{
  *(v0 + 64) = *(v0 + 16);
  sub_2610BCC74();
  *(v0 + 80) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610B0AE8, v2, v1);
}

uint64_t sub_2610B0AE8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];

  v5 = (v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);
  v6 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);
  v7 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension + 8);
  *v5 = v3;
  v5[1] = v2;
  sub_2610B17BC(v3, v2);
  sub_2610389C0(v6, v7);
  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_2610B0B98, 0, 0);
}

uint64_t sub_2610B0B98()
{
  sub_2610389C0(*(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASFlowStepSelectPicker.nextStep()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension + 8);
    v4 = qword_27FE63808;
    v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);

    v6 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);

    v8 = v6;
    v9 = sub_2610BC794();
    v10 = sub_2610BCD44();
    sub_2610389C0(v2, v3);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      v12 = v52[0];
      *v11 = 136446210;
      __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
      v13 = sub_2610BC764();
      v15 = sub_260FA5970(v13, v14, v52);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_260F97000, v9, v10, "PASFlowStepSelectPicker nextStep loading picker extension %{public}s instead of family picker", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x2666F8720](v12, -1, -1);
      MEMORY[0x2666F8720](v11, -1, -1);
    }

    v16 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v16 + 8);
    v19 = type metadata accessor for PASFlowStepExtensionProvidedPicker();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    v23 = v22 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result;
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = -1;
    v24 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
    v25 = swift_allocObject();
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0;
    *(v22 + v24) = v25;
    v26 = (v22 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension);
    *v26 = v2;
    v26[1] = v8;
    v27 = sub_26104DC44(Strong, v18);
    swift_unknownObjectRelease();
    v28 = &unk_27FE66DD8;
    v29 = type metadata accessor for PASFlowStepExtensionProvidedPicker;
    goto LABEL_21;
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v30 = sub_2610BC7B4();
  __swift_project_value_buffer(v30, qword_27FE65900);
  v31 = sub_2610BC794();
  v32 = sub_2610BCD44();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_260F97000, v31, v32, "PASFlowStepSelectPicker nextStep no extension handle found", v33, 2u);
    MEMORY[0x2666F8720](v33, -1, -1);
  }

  sub_2610AFF90(v52);
  v34 = v53;
  v35 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  LOBYTE(v55) = 4;
  LOBYTE(v34) = (*(v35 + 8))(&v55, v34, v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  if (v34)
  {
    sub_2610B00AC();
    v37 = v36;
    ObjectType = swift_getObjectType();
    (*(v37 + 8))(v52, ObjectType, v37);
    swift_unknownObjectRelease();
    v39 = v53;
    if (v53)
    {
      v40 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      (*(v40 + 8))(&v55, v39, v40);
      LODWORD(v40) = v55;
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      if (v40 == 1)
      {
        v41 = sub_2610BC794();
        v42 = sub_2610BCD44();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_260F97000, v41, v42, "PASFlowStepSelectPicker nextStep is proto account picker", v43, 2u);
          MEMORY[0x2666F8720](v43, -1, -1);
        }

        v44 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
        swift_beginAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        v27 = sub_260FDCCC8(v45, *(v44 + 8));
        swift_unknownObjectRelease();
        v28 = &qword_27FE64750;
        v29 = type metadata accessor for PASFlowStepProtoAccountPicker;
        goto LABEL_21;
      }
    }

    else
    {
      sub_260FA9980(v52, &qword_27FE63CF0, &qword_2610C2510);
    }
  }

  v46 = sub_2610BC794();
  v47 = sub_2610BCD44();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_260F97000, v46, v47, "PASFlowStepSelectPicker nextStep is family picker", v48, 2u);
    MEMORY[0x2666F8720](v48, -1, -1);
  }

  v49 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  v50 = swift_unknownObjectWeakLoadStrong();
  v27 = sub_261068D50(v50, *(v49 + 8));
  swift_unknownObjectRelease();
  v28 = &qword_27FE660F0;
  v29 = type metadata accessor for PASFlowStepFamilyPicker;
LABEL_21:
  sub_2610B1608(v28, v29);
  return v27;
}

uint64_t PASFlowStepSelectPicker.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610B1410(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2610B1230()
{
  sub_2610389C0(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension + 8));
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__extensionCache);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__accountProvider);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__featureFlagsProvider);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__targetAccountOptionsProvider);
}

uint64_t PASFlowStepSelectPicker.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  sub_2610389C0(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension + 8));
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__extensionCache);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__accountProvider);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__featureFlagsProvider);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__targetAccountOptionsProvider);

  return v0;
}

uint64_t PASFlowStepSelectPicker.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension + 8);

  sub_2610389C0(v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__extensionCache);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__accountProvider);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__featureFlagsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__targetAccountOptionsProvider);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_2610B1410(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__extensionCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64228, &unk_2610CCE80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v2 + v6) = v7;
  v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *(v2 + v8) = v9;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  *(v2 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__targetAccountOptionsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v2 + v12) = v13;

  return sub_26104DC44(a1, a2);
}

uint64_t sub_2610B1534()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_2610B047C(v0);
}

uint64_t sub_2610B15C4(uint64_t a1)
{
  result = sub_2610B1608(&qword_27FE66588, type metadata accessor for PASFlowStepSelectPicker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610B1608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSelectPicker()
{
  result = qword_27FE66E00;
  if (!qword_27FE66E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2610B1708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_2610B0768(a1, v4, v5, v6);
}

id sub_2610B17BC(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

uint64_t PASFlowStepCheckInternet.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_2610B34E4(a1, a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t PASFlowStepCheckInternet.isNetworkReachable.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_2610B18F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v5;
  return result;
}

uint64_t sub_2610B1970(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t PASFlowStepCheckInternet.$isNetworkReachable.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_2610B1A58(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_2610B1AD0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2610B1C54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__reachabilityProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE664F0, &qword_2610CD6D0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE664F0, &qword_2610CD6D0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA0470(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE664F0, &qword_2610CD6D0);
  swift_endAccess();
}

uint64_t sub_2610B1D90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__accountStore);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE65000, &qword_2610BEE60);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE65000, &qword_2610BEE60);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9DC50(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE65000, &qword_2610BEE60);
  swift_endAccess();
}

uint64_t PASFlowStepCheckInternet.prepareForPresentation()()
{
  v1[7] = v0;
  v1[8] = sub_2610BCC74();
  v1[9] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[10] = v2;
  *v2 = v1;
  v2[1] = sub_2610B1F7C;

  return sub_26104582C();
}

uint64_t sub_2610B1F7C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  v6 = *(v3 + 72);
  v7 = *(v3 + 64);
  v9 = sub_2610BCBF4();
  if (v2)
  {
    v10 = sub_2610B2250;
  }

  else
  {
    v10 = sub_2610B20D4;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2610B20D4()
{
  v1 = v0[9];
  v2 = v0[7];

  sub_2610B1C54((v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  LOBYTE(v3) = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2610B22B4(v3 & 1);
  if (v3)
  {
    v5 = v0[7];
    sub_260FC3450();
    swift_allocError();
    *v6 = 0xD000000000000015;
    *(v6 + 8) = 0x80000002610D6650;
    *(v6 + 16) = &unk_2610D0B60;
    *(v6 + 24) = v5;
    *(v6 + 32) = 0;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2610B2250()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2610B22B4(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD64();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepCheckInternet setNetworkReachable internet is NOT reachable", v4, 2u);
      MEMORY[0x2666F8720](v4, -1, -1);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_2610B240C()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[37] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepCheckInternet continueWithoutInternet", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[36];

  sub_2610B1D90((v0 + 21));
  v6 = v0[24];
  v7 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v6);
  v8 = *(v7 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_2610B25FC;

  return v12(v6, v7);
}

uint64_t sub_2610B25FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_2610B2BB0;
  }

  else
  {
    v5 = sub_2610B2710;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2610B2710()
{
  v1 = *(v0 + 312);
  if (!v1)
  {
    v8 = *(v0 + 288);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
    v9 = v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 328) = Strong;
    if (Strong)
    {
      v11 = *(v9 + 8);
      swift_getObjectType();
      sub_260FE4BCC();
      v12 = swift_allocError();
      *v13 = 0;
      *(v0 + 16) = v12;
      *(v0 + 64) = 1;
      v14 = *(v11 + 16);
      v19 = v14 + *v14;
      v15 = v14[1];
      v16 = swift_task_alloc();
      *(v0 + 336) = v16;
      *v16 = v0;
      v16[1] = sub_2610B2A20;

      __asm { BRAA            X3, X16 }
    }

    v17 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 288);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  v3 = type metadata accessor for PASAccountWithImage();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = xmmword_2610BF320;
  *(v0 + 144) = v3;
  *(v0 + 152) = sub_2610B3768(&unk_27FE65010, type metadata accessor for PASAccountWithImage);
  *(v0 + 120) = v4;
  *(v0 + 160) = 0;
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult;
  swift_beginAccess();
  sub_260FC3844(v0 + 120, v2 + v5, &qword_27FE66E20, &qword_2610D0B70);
  swift_endAccess();
  sub_2610BCC74();
  *(v0 + 344) = sub_2610BCC64();
  v7 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610B2B48, v7, v6);
}

uint64_t sub_2610B2A20()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v6 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 16, &unk_27FE656D0, &unk_2610C0550);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2610B2B48()
{
  v1 = v0[43];
  v2 = v0[36];

  sub_2610439BC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2610B2BB0()
{
  v19 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    *(v0 + 280) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v18);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepCheckInternet continueWithoutInternet failed %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v13 = *(v0 + 288);
  *(v0 + 72) = *(v0 + 320);
  *(v0 + 112) = 1;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult;
  swift_beginAccess();
  sub_260FC3844(v0 + 72, v13 + v14, &qword_27FE66E20, &qword_2610D0B70);
  swift_endAccess();
  sub_2610BCC74();
  *(v0 + 344) = sub_2610BCC64();
  v16 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610B2B48, v16, v15);
}

NSObject *PASFlowStepCheckInternet.nextStep()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  if (v39[0] == 1)
  {
    v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 8);
    v4 = type metadata accessor for PASFlowStepRepairLocalAccount();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepRepairLocalAccount__authenticator;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
    v9 = swift_allocObject();
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    *(v7 + v8) = v9;
    v10 = sub_26104DC44(Strong, v3);
    swift_unknownObjectRelease();
    v11 = &qword_27FE64D28;
    v12 = type metadata accessor for PASFlowStepRepairLocalAccount;
LABEL_13:
    sub_2610B3768(v11, v12);
    return v10;
  }

  v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult;
  swift_beginAccess();
  sub_260FA9918(v0 + v13, v39, &qword_27FE66E20, &qword_2610D0B70);
  if (v40 == 255)
  {
    v10 = 0x80000002610D6670;
    sub_260FC3450();
    swift_allocError();
    *v24 = 0xD000000000000026;
    *(v24 + 8) = 0x80000002610D6670;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 1;
  }

  else
  {
    if ((v40 & 1) == 0)
    {
      sub_260FA9980(v39, &qword_27FE66E28, &unk_2610D0B78);
      v25 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      swift_beginAccess();
      v26 = swift_unknownObjectWeakLoadStrong();
      v27 = *(v25 + 8);
      v28 = type metadata accessor for PASFlowStepConnectPeer();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      v31 = swift_allocObject();
      v32 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v31 + v32) = v33;
      v34 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
      v35 = swift_allocObject();
      *(v35 + 16) = 0u;
      *(v35 + 32) = 0u;
      *(v35 + 48) = 0;
      *(v31 + v34) = v35;
      v36 = v31 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
      *v36 = 0;
      *(v36 + 8) = -1;
      v10 = sub_26104DC44(v26, v27);
      swift_unknownObjectRelease();
      v11 = &qword_27FE64D18;
      v12 = type metadata accessor for PASFlowStepConnectPeer;
      goto LABEL_13;
    }

    v14 = *v39;
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v15 = sub_2610BC7B4();
    __swift_project_value_buffer(v15, qword_27FE65900);
    v16 = v14;
    v10 = sub_2610BC794();
    v17 = sub_2610BCD64();

    if (os_log_type_enabled(v10, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      *v18 = 136446210;
      v41 = v14;
      v20 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v21 = sub_2610BCA34();
      v23 = sub_260FA5970(v21, v22, &v38);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_260F97000, v10, v17, "PASFlowStepCheckInternet nextStep encountered error: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x2666F8720](v19, -1, -1);
      MEMORY[0x2666F8720](v18, -1, -1);
    }
  }

  swift_willThrow();
  return v10;
}

uint64_t PASFlowStepCheckInternet.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610B34E4(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2610B3264()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__isNetworkReachable;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult, &qword_27FE66E20, &qword_2610D0B70);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__reachabilityProvider);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__accountStore);
}

uint64_t PASFlowStepCheckInternet.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__isNetworkReachable;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult, &qword_27FE66E20, &qword_2610D0B70);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__reachabilityProvider);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__accountStore);

  return v0;
}

uint64_t PASFlowStepCheckInternet.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__isNetworkReachable;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult, &qword_27FE66E20, &qword_2610D0B70);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__reachabilityProvider);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__accountStore);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2610B34E4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__isNetworkReachable;
  v17[15] = 0;
  sub_2610BC804();
  (*(v6 + 32))(v2 + v10, v9, v5);
  v11 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v11 + 40) = -1;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__reachabilityProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A0, &unk_2610C2620);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  *(v2 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v2 + v14) = v15;
  return sub_26104DC44(a1, a2);
}

uint64_t sub_2610B3680()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_260FC77D0(v0);
}

uint64_t sub_2610B3710(uint64_t a1)
{
  result = sub_2610B3768(&qword_27FE66D80, type metadata accessor for PASFlowStepCheckInternet);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610B3768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepCheckInternet()
{
  result = qword_27FE66E40;
  if (!qword_27FE66E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2610B3818()
{
  sub_260FDD7E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2610B38C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656369766544;
  v3 = 0x7465677261546F6ELL;
  v4 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0x656372756F536F6ELL;
      v8 = 0xEF746E756F636341;
    }

    else
    {
      if (a1 == 4)
      {
        v7 = 0xD000000000000014;
      }

      else
      {
        v7 = 0xD000000000000019;
      }

      if (v4 == 4)
      {
        v8 = 0x80000002610D1C10;
      }

      else
      {
        v8 = 0x80000002610D1C30;
      }
    }
  }

  else
  {
    v5 = 0x5064657661536F6ELL;
    v6 = 0xEF64726F77737361;
    if (a1 != 1)
    {
      v5 = 0x7465677261546F6ELL;
      v6 = 0xEF746E756F636341;
    }

    if (a1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x7465677261546F6ELL;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEE00656369766544;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = 0x656372756F536F6ELL;
      goto LABEL_33;
    }

    if (a2 == 4)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000019;
    }

    if (a2 == 4)
    {
      v2 = 0x80000002610D1C10;
    }

    else
    {
      v2 = 0x80000002610D1C30;
    }

LABEL_30:
    if (v7 != v3)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v2 = 0xEF64726F77737361;
    if (v7 != 0x5064657661536F6ELL)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_33:
  v2 = 0xEF746E756F636341;
  if (v7 != v3)
  {
LABEL_36:
    v9 = sub_2610BD384();
    goto LABEL_37;
  }

LABEL_34:
  if (v8 != v2)
  {
    goto LABEL_36;
  }

  v9 = 1;
LABEL_37:

  return v9 & 1;
}

uint64_t sub_2610B3AB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x617461446D6973;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7369766F72506F64;
    }

    else
    {
      v4 = 0x65757165526C7275;
    }

    if (v3 == 2)
    {
      v5 = 0xEB000000006E6F69;
    }

    else
    {
      v5 = 0xEE00617461447473;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1684632420;
    }

    else
    {
      v4 = 0x617461446D6973;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x7369766F72506F64;
  v8 = 0xEB000000006E6F69;
  if (a2 != 2)
  {
    v7 = 0x65757165526C7275;
    v8 = 0xEE00617461447473;
  }

  if (a2)
  {
    v2 = 1684632420;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_2610B3C0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x52676E697373696DLL;
    }

    else
    {
      v3 = 0x5264696C61766E69;
    }

    if (v2)
    {
      v4 = 0xEF72657669656365;
    }

    else
    {
      v4 = 0xEC0000006574756FLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000013;
    v4 = 0x80000002610D1CE0;
  }

  else if (a1 == 3)
  {
    v3 = 0x6164696C61766E69;
    v4 = 0xEB00000000646574;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x74756F656D6974;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x52676E697373696DLL;
    }

    else
    {
      v9 = 0x5264696C61766E69;
    }

    if (a2)
    {
      v8 = 0xEF72657669656365;
    }

    else
    {
      v8 = 0xEC0000006574756FLL;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6164696C61766E69;
    v6 = 0xEB00000000646574;
    if (a2 != 3)
    {
      v5 = 0x74756F656D6974;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000002610D1CE0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_2610BD384();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2610B3DCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x454E4F485049;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1145131081;
    }

    else
    {
      v4 = 0x4E574F4E4B4E55;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1146048585;
    }

    else
    {
      v4 = 0x454E4F485049;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE400000000000000;
  v8 = 1145131081;
  if (a2 != 2)
  {
    v8 = 0x4E574F4E4B4E55;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 1146048585;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_2610B3EF4(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v2 = 0x6341534D44496F6ELL;
  }

  if (a1)
  {
    v3 = 0x80000002610D1900;
  }

  else
  {
    v3 = 0xED0000746E756F63;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B3F9C(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0x5264696C61766E69;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (a1)
  {
    v3 = 0xEE0073746C757365;
  }

  else
  {
    v3 = 0x80000002610D18C0;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B4044(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0x6563697665446F6ELL;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0x80000002610D1900;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B40E0(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0x4F64696C61766E69;
  }

  if (a1)
  {
    v3 = 0x80000002610D1CA0;
  }

  else
  {
    v3 = 0xEE00736E6F697470;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B4188(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (a1)
  {
    v3 = "unableToInitCDPContext";
  }

  else
  {
    v3 = "PASFlowStepProxiedTermsDisagree";
  }

  MEMORY[0x2666F7380](v2, v3 | 0x8000000000000000);

  return v5;
}

uint64_t sub_2610B4218(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD000000000000010;
    }

    else
    {
      v2 = 0x6569786F72506F6ELL;
    }

    if (a1 == 1)
    {
      v3 = 0x80000002610D1970;
    }

    else
    {
      v3 = 0xEF65636976654464;
    }
  }

  else
  {
    v3 = 0x80000002610D1950;
    v2 = 0xD000000000000013;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B42E8(unsigned __int8 a1)
{
  v11 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v2 = 0xEC0000006574756FLL;
  v3 = 0x5264696C61766E69;
  v4 = 0x80000002610D1CE0;
  v5 = 0xD000000000000013;
  v6 = 0xEB00000000646574;
  v7 = 0x6164696C61766E69;
  if (a1 != 3)
  {
    v7 = 0x74756F656D6974;
    v6 = 0xE700000000000000;
  }

  if (a1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (a1)
  {
    v3 = 0x52676E697373696DLL;
    v2 = 0xEF72657669656365;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a1 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x2666F7380](v8, v9);

  return v11;
}

uint64_t sub_2610B4404(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (a1)
  {
    v3 = "missingDependentAppleID";
  }

  else
  {
    v3 = "E";
  }

  MEMORY[0x2666F7380](v2, v3 | 0x8000000000000000);

  return v5;
}

uint64_t sub_2610B4498(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0x41676E697373696DLL;
    if (a1 == 1)
    {
      v3 = 0xEF6563697665444BLL;
    }

    else
    {
      v3 = 0xEE00746E756F6363;
    }
  }

  else
  {
    v3 = 0x80000002610D1A50;
    v2 = 0xD000000000000010;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B4558(char a1)
{
  v2 = 0xD000000000000010;
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD000000000000021;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a1 == 1)
    {
      v3 = "noMessageSession";
    }

    else
    {
      v3 = "essageSessionType";
    }
  }

  else
  {
    v3 = "";
  }

  MEMORY[0x2666F7380](v2, v3 | 0x8000000000000000);

  return v5;
}

uint64_t sub_2610B4614(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x446567616D496F6ELL;
    }

    else
    {
      v2 = 0x416C61636F4C6F6ELL;
    }

    if (a1 == 1)
    {
      v3 = 0xEB00000000617461;
    }

    else
    {
      v3 = 0xEE00746E756F6363;
    }
  }

  else
  {
    v3 = 0xE900000000000074;
    v2 = 0x7365757165526F6ELL;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B46E4(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x6E756F6363416F6ELL;
    }

    else
    {
      v2 = 0x6341534D44496F6ELL;
    }

    if (a1 == 1)
    {
      v3 = 0xE900000000000074;
    }

    else
    {
      v3 = 0xED0000746E756F63;
    }
  }

  else
  {
    v3 = 0x80000002610D1AE0;
    v2 = 0xD000000000000017;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B47B0(unsigned __int8 a1)
{
  v12 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v2 = 0xEE00656369766544;
  v3 = 0x656372756F536F6ELL;
  v4 = 0xEF746E756F636341;
  v5 = 0xD000000000000014;
  v6 = 0x80000002610D1C10;
  if (a1 != 4)
  {
    v5 = 0xD000000000000019;
    v6 = 0x80000002610D1C30;
  }

  if (a1 != 3)
  {
    v3 = v5;
    v4 = v6;
  }

  v7 = 0xEF64726F77737361;
  v8 = 0x5064657661536F6ELL;
  if (a1 != 1)
  {
    v8 = 0x7465677261546F6ELL;
    v7 = 0xEF746E756F636341;
  }

  if (a1)
  {
    v2 = v7;
  }

  else
  {
    v8 = 0x7465677261546F6ELL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  if (a1 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x2666F7380](v9, v10);

  return v12;
}

uint64_t sub_2610B4904()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610B4A08()
{
  *v0;
  *v0;
  *v0;
  sub_2610BCA54();
}

uint64_t sub_2610B4AF8()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610B4BF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2610B7AE8();
  *a2 = result;
  return result;
}

void sub_2610B4C28(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006574756FLL;
  v4 = 0x5264696C61766E69;
  v5 = 0x80000002610D1CE0;
  v6 = 0xD000000000000013;
  v7 = 0xEB00000000646574;
  v8 = 0x6164696C61766E69;
  if (v2 != 3)
  {
    v8 = 0x74756F656D6974;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x52676E697373696DLL;
    v3 = 0xEF72657669656365;
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

unint64_t sub_2610B4CE8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B42E8(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v7;
}

uint64_t sub_2610B4DA0(uint64_t a1)
{
  v2 = sub_2610B80C8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610B4DDC(uint64_t a1)
{
  v2 = sub_2610B80C8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t IDSMessageTransport.receiver.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_260F9C55C(v1);
  return v1;
}

uint64_t IDSMessageTransport.receiver.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  result = sub_260F9A2D8(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_2610B4EAC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2610B844C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_260F9C55C(v3);
}

uint64_t sub_2610B4F2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2610B8424;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_260F9C55C(v3);
  result = sub_260F9A2D8(v7);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

uint64_t IDSMessageTransport.invalidationHandler.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_260F9C55C(v1);
  return v1;
}

uint64_t IDSMessageTransport.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  result = sub_260F9A2D8(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t IDSMessageTransport.pushToken.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t IDSMessageTransport.init(service:pushToken:responseTimeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a6;
  v26 = a4;
  v27 = a5;
  v23 = a2;
  v24 = a3;
  v22 = sub_2610BCDC4();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2610BCDA4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_2610BC8E4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  *(a7 + 24) = 0u;
  *(a7 + 8) = 0u;
  *a7 = a1;
  sub_261028704();
  sub_2610BC8D4();
  v28 = MEMORY[0x277D84F90];
  sub_2610B52D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66E60, &qword_2610D0C60);
  sub_2610B5330();
  sub_2610BCED4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85260], v22);
  v17 = sub_2610BCDF4();
  v19 = v23;
  v18 = v24;
  *(a7 + 48) = v17;
  *(a7 + 56) = v19;
  *(a7 + 64) = v18;
  type metadata accessor for IDSResponseHandler();
  result = sub_2610698BC(v26, v27);
  *(a7 + 40) = result;
  return result;
}

unint64_t sub_2610B52D8()
{
  result = qword_27FE66E58;
  if (!qword_27FE66E58)
  {
    sub_2610BCDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66E58);
  }

  return result;
}

unint64_t sub_2610B5330()
{
  result = qword_27FE66E68;
  if (!qword_27FE66E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE66E60, &qword_2610D0C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66E68);
  }

  return result;
}

uint64_t IDSMessageTransport.onReceive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = v3[2];
  sub_260F9A2D8(v3[1]);
  *(a3 + 24) = *(v3 + 3);
  *(a3 + 40) = *(v3 + 5);
  *(a3 + 56) = *(v3 + 7);
  *a3 = v7;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

uint64_t IDSMessageTransport.onInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  sub_260F9A2D8(*(v3 + 24));
  *a3 = *v3;
  v8 = *(v3 + 16);
  *(a3 + 40) = *(v3 + 40);
  *(a3 + 56) = *(v3 + 56);
  *(a3 + 16) = v8;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
}

id IDSMessageTransport.build()(uint64_t a1)
{
  v2 = v1[1];
  v15[0] = *v1;
  v15[1] = v2;
  v3 = v1[3];
  v15[2] = v1[2];
  v15[3] = v3;
  v16 = *(v1 + 8);
  if (*(&v15[0] + 1))
  {
    v4 = v1[3];
    v12 = v1[2];
    v13 = v4;
    v14 = *(v1 + 8);
    v5 = v1[1];
    v10 = *v1;
    v11 = v5;
    (*(*(a1 - 8) + 16))(v9, v15, a1);
    return sub_2610B7930(a1);
  }

  else
  {
    sub_26106ACF4();
    swift_allocError();
    *v8 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_2610B55C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = IDSMessageTransport.build()(a1);
  if (v3)
  {
    v7 = v2[3];
    v15 = v2[2];
    v16 = v7;
    v17 = *(v2 + 8);
    v8 = v2[1];
    v13 = *v2;
    v14 = v8;
    return (*(*(a1 - 8) + 8))(&v13, a1);
  }

  else
  {
    v10 = v6;
    v11 = v2[3];
    v15 = v2[2];
    v16 = v11;
    v17 = *(v2 + 8);
    v12 = v2[1];
    v13 = *v2;
    v14 = v12;
    result = (*(*(a1 - 8) + 8))(&v13, a1);
    *a2 = v10;
  }

  return result;
}

id sub_2610B56BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *MEMORY[0x277D85000];
  sub_2610BC604();
  *(v3 + qword_27FE66F28) = 0;
  v9 = v3 + qword_27FE66E78;
  v10 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v10;
  *(v9 + 8) = *(a1 + 64);
  v11 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v11;
  *(v3 + qword_27FE66F10) = a2;
  *(v3 + qword_27FE66F18) = a3;
  v12 = *((v8 & v7) + 0x50);
  v13 = *((v8 & v7) + 0x58);
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ActivatedIDSMessageTransport();
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_2610B57A8()
{
  *(v0 + qword_27FE66F28) = 1;
  v1 = v0 + qword_27FE66E78;
  v2 = [*(v0 + qword_27FE66E78) removeDelegate_];
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 32);
    v3(v2);
  }
}

uint64_t sub_2610B583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_260FB6DB4;

  return sub_2610B61E8(a5, a6, a7);
}

uint64_t sub_2610B58F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_260FB6DB4;

  return sub_2610B5ABC(a5, a6, a7, a8, v16);
}

uint64_t sub_2610B59C0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = a6;
  if (a5)
  {
    v12 = sub_2610BC914();
    if (v8)
    {
LABEL_3:
      v13 = sub_2610BCA04();
      v8 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a1;
  sub_2610B7B34(v12, v13, v8, a7);
}

uint64_t sub_2610B5ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v8 = *MEMORY[0x277D85000];
  v6[8] = *MEMORY[0x277D85000] & *v5;
  v9 = *((v8 & v7) + 0x50);
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2610B5BE0, 0, 0);
}

uint64_t sub_2610B5BE0()
{
  v29 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);

  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_260FA5970(v6, v5, &v28);
    _os_log_impl(&dword_260F97000, v3, v4, "Received request from peer for identifier: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v9 = v0[7];
  v10 = v9 + qword_27FE66E78;
  v11 = *(v9 + qword_27FE66E78 + 8);
  v0[14] = v11;
  v0[15] = *(v10 + 16);
  if (v11)
  {
    v12 = v0[13];
    v13 = v0[9];
    v14 = v0[6];
    v15 = *(v9 + qword_27FE66F18);
    v16 = *(*(v0[8] + 88) + 8);

    sub_2610BC6A4();
    (*(v0[10] + 16))(v0[11], v0[13], v0[9]);
    v27 = (v11 + *v11);
    v23 = v11[1];
    v24 = swift_task_alloc();
    v0[16] = v24;
    *v24 = v0;
    v24[1] = sub_2610B5F20;
    v26 = v0[11];
    v25 = v0[12];

    return v27(v25, v26);
  }

  else
  {
    sub_26106ACF4();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[11];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_2610B5F20()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2610B6140;
  }

  else
  {
    v3 = sub_2610B6034;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2610B6034()
{
  v20 = v0;
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];
  v18[0] = v0[4];
  v18[1] = v9;
  v19 = 0;
  sub_2610B6AF8(v5, v18, v10, v11);
  sub_260F9A2D8(v3);
  v12 = *(v7 + 8);
  v12(v5, v6);
  v12(v4, v6);
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2610B6140()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  sub_260F9A2D8(v0[14]);
  (*(v4 + 8))(v2, v3);
  v5 = v0[17];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2610B61E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2610B620C, 0, 0);
}

uint64_t sub_2610B620C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v1 + qword_27FE66E78 + 40);
  v0[6] = v3;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x2822009F8](sub_2610B629C, v3, 0);
}

uint64_t sub_2610B629C()
{
  v1 = v0[6];
  sub_261069A1C(v0[2], v0[3], sub_2610B83B4, v0[7]);

  v2 = v0[1];

  return v2();
}

id sub_2610B6320(id a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v34[7] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D85000] & *v3;
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67030, &unk_2610C4160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v12 = 0x74736163696E75;
  if (v10 == 1)
  {
    v12 = v8;
    v13 = v9;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  if (v10)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  if (v10)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9;
  }

  v16 = inited;
  *(inited + 32) = v14;
  *(inited + 40) = v15;
  sub_26100A354(v8, v9, v10);
  v17 = sub_26100A0B4(v16);
  swift_setDeallocating();
  sub_2610B8360(v16 + 32);
  v18 = *(v3 + qword_27FE66F10);
  v19 = *(v7 + 80);
  v20 = *(*(v7 + 88) + 16);
  v21 = sub_2610BC6D4();
  if (v4)
  {
  }

  else
  {
    v22 = *(v5 + qword_27FE66E78);
    sub_260FDF608(v21);

    v23 = sub_2610BC8F4();

    sub_2610B660C(v17);

    v24 = sub_2610BCCF4();

    v25 = sub_2610BC8F4();
    v33 = 0;
    v34[0] = 0;
    v26 = [v22 sendMessage:v23 toDestinations:v24 priority:300 options:v25 identifier:v34 error:&v33];

    v27 = v33;
    a1 = v34[0];
    if (v26)
    {
      if (v34[0])
      {
        a1 = sub_2610BCA04();
      }

      else
      {
        sub_26106ACF4();
        swift_allocError();
        *v30 = 2;
        swift_willThrow();
      }

      v28 = v27;
    }

    else
    {
      v29 = v33;
      a1 = a1;
      sub_2610BC4F4();

      swift_willThrow();
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_2610B660C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67038, &qword_2610D1040);
    v2 = sub_2610BCF64();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v22 = *v13;
    v23 = v13[1];

    swift_dynamicCast();
    v14 = *(v2 + 40);
    result = sub_2610BCF04();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
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
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v26;
    *v11 = v24;
    *(v11 + 16) = v25;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2610B6840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 80) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_2610B6874, 0, 0);
}

uint64_t sub_2610B6874()
{
  v17 = v0;
  v1 = sub_260FA8BCC(MEMORY[0x277D84F90]);
  v2 = sub_2610AEC98(1, v1);
  v3 = sub_2610AEAD8(v2);
  *(v0 + 56) = v3;
  v4 = v3;
  v5 = *(v0 + 80);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = v5;
  v8 = sub_2610B6320(v6, v4, &v15);
  *(v0 + 64) = v9;
  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_2610B69C4;
  v12 = *(v0 + 32);
  v13 = *(v0 + 16);

  return sub_2610B6CD8(v13, v8, v10);
}

uint64_t sub_2610B69C4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

void sub_2610B6AF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = sub_260FA8BCC(MEMORY[0x277D84F90]);
  v12 = sub_2610AED3C(a3, a4, v11);
  v13 = sub_2610AEAD8(v12);
  if (!v4)
  {
    v23[0] = v8;
    v23[1] = v9;
    v24 = v10;
    v14 = sub_2610B6320(a1, v13, v23);
    v16 = v15;

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    v18 = sub_2610BC794();
    v19 = sub_2610BCD84();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v20 = 136315138;
      v22 = sub_260FA5970(v14, v16, v23);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_260F97000, v18, v19, "Sent response to peer for identifier: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2610B6CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *MEMORY[0x277D85000] & *v3;
  return MEMORY[0x2822009F8](sub_2610B6D34, 0, 0);
}

uint64_t sub_2610B6D34()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = *(v1 + 80);
  *v7 = v0;
  v7[1] = sub_2610B6E38;
  v9 = v0[2];

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD00000000000002CLL, 0x80000002610D67D0, sub_2610B821C, v5, v8);
}

uint64_t sub_2610B6E38()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (!v0)
  {
    v4 = v3[7];

    v5 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2610B6F74, 0, 0);
}

uint64_t sub_2610B6F74()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2610B6FD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v24 = *a2;
  v6 = *MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & v24) + 0x50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v8 = sub_2610BCC24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  v17 = sub_2610BCC94();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v7;
  *(v19 + 5) = *((v6 & v24) + 0x58);
  *(v19 + 6) = a2;
  v20 = v26;
  *(v19 + 7) = v25;
  *(v19 + 8) = v20;
  (*(v9 + 32))(&v19[v18], v12, v8);
  v21 = a2;

  sub_261042434(0, 0, v16, &unk_2610D1030, v19);
}

uint64_t sub_2610B723C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_2610B7260, 0, 0);
}

uint64_t sub_2610B7290()
{
  v1 = v0[6];
  sub_261069FE0(v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

id ActivatedIDSMessageTransport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ActivatedIDSMessageTransport.init()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_2610B7DB8();
}

void sub_2610B7364(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2610B7DB8();
}

id ActivatedIDSMessageTransport.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ActivatedIDSMessageTransport();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2610B7414(uint64_t a1)
{
  v2 = *(a1 + qword_27FE66E78 + 8);
  v3 = *(a1 + qword_27FE66E78 + 16);
  v4 = *(a1 + qword_27FE66E78 + 24);
  v5 = *(a1 + qword_27FE66E78 + 32);
  v6 = *(a1 + qword_27FE66E78 + 40);
  v7 = *(a1 + qword_27FE66E78 + 48);
  v8 = *(a1 + qword_27FE66E78 + 64);

  sub_260F9A2D8(v2);
  sub_260F9A2D8(v4);

  v9 = *(a1 + qword_27FE66F10);

  v10 = *(a1 + qword_27FE66F18);

  v11 = qword_27FE66F20;
  v12 = sub_2610BC614();
  v13 = *(*(v12 - 8) + 8);

  return v13(a1 + v11, v12);
}

uint64_t ActivatedIDSMessageTransport.availableRoutes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE66E80, &qword_2610D0C68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v2 = *(v0 + qword_27FE66E78 + 64);
  *(inited + 32) = *(v0 + qword_27FE66E78 + 56);
  *(inited + 40) = v2;
  *(inited + 48) = 0;

  v3 = sub_2610099F8(inited);
  swift_setDeallocating();
  sub_261009DA4(inited + 32);
  return v3;
}

uint64_t ActivatedIDSMessageTransport.send(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 64) = *a3;
  *(v4 + 33) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_2610B75D8, 0, 0);
}

uint64_t sub_2610B75D8()
{
  if (*(*(v0 + 56) + qword_27FE66F28))
  {
    v1 = 3;
LABEL_11:
    sub_26106ACF4();
    swift_allocError();
    *v11 = v1;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }

  v2 = *(v0 + 33);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (v2 == 2 && (v4 | v3) == 0)
  {
    v1 = 0;
    goto LABEL_11;
  }

  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2610B7724;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);

  return sub_2610B6840(v9, v7, v0 + 16);
}

uint64_t sub_2610B7724()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_260FB5400, 0, 0);
}

uint64_t sub_2610B787C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF860;

  return ActivatedIDSMessageTransport.send(_:using:)(a1, a2, a3);
}

id sub_2610B7930(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v27[2] = *(v1 + 32);
  v28 = v4;
  v29 = *(v1 + 64);
  v5 = *(v1 + 16);
  v27[0] = *v1;
  v27[1] = v5;
  v6 = sub_2610BC6F4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2610BC6E4();
  v10 = sub_2610BC6C4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_2610BC6B4();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = type metadata accessor for ActivatedIDSMessageTransport();
  v17 = *(v2 + 48);
  v25[2] = *(v2 + 32);
  v25[3] = v17;
  v26 = *(v2 + 64);
  v18 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v18;
  v19 = *(a1 - 8);
  (*(v19 + 16))(v24, v27, a1);

  v20 = objc_allocWithZone(v16);
  v21 = sub_2610B56BC(v25, v9, v13);
  v22 = [objc_allocWithZone(MEMORY[0x277D18A20]) init];
  [v22 setWantsCrossAccountMessaging_];
  [*&v27[0] addDelegate:v21 withDelegateProperties:v22 queue:v28];

  (*(v19 + 8))(v27, a1);
  return v21;
}

uint64_t sub_2610B7AE8()
{
  v0 = sub_2610BD154();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2610B7B34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64);
  result = MEMORY[0x28223BE20](a1);
  v12 = &v30 - v11;
  if (result)
  {
    result = sub_26103B7A0(result);
    if (result)
    {
      if (!a4)
      {
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = [a4 incomingResponseIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = sub_2610BCA04();
        v18 = v17;

        v19 = sub_2610BCC94();
        (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
        v20 = swift_allocObject();
        v20[2] = 0;
        v20[3] = 0;
        v20[4] = v4;
        v20[5] = v16;
        v20[6] = v18;
        v20[7] = v13;
        v21 = v4;
        sub_261042434(0, 0, v12, &unk_2610D1060, v20);
      }

      v22 = [a4 outgoingResponseIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_2610BCA04();
        v26 = v25;

        if (a3)
        {
          v27 = sub_2610BCC94();
          (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
          v28 = swift_allocObject();
          v28[2] = 0;
          v28[3] = 0;
          v28[4] = v4;
          v28[5] = v24;
          v28[6] = v26;
          v28[7] = a2;
          v28[8] = a3;
          v28[9] = v13;
          v29 = v4;

          sub_261042D5C(0, 0, v12, &unk_2610D1050, v28);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2610B7E1C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610B7E60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2610B7E9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2610B7EE4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2610B7F4C()
{
  result = sub_2610BC614();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2610B8090(void *a1)
{
  a1[1] = sub_2610B80C8();
  a1[2] = sub_2610B811C();
  result = sub_2610B8170();
  a1[3] = result;
  return result;
}

unint64_t sub_2610B80C8()
{
  result = qword_27FE67010;
  if (!qword_27FE67010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67010);
  }

  return result;
}

unint64_t sub_2610B811C()
{
  result = qword_27FE67018;
  if (!qword_27FE67018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67018);
  }

  return result;
}

unint64_t sub_2610B8170()
{
  result = qword_27FE67020;
  if (!qword_27FE67020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67020);
  }

  return result;
}

unint64_t sub_2610B81C8()
{
  result = qword_27FE67028;
  if (!qword_27FE67028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67028);
  }

  return result;
}

uint64_t sub_2610B8228(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v6 = *(sub_2610BCC24() - 8);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_260FB6DB4;

  return sub_2610B723C(a1, v8, v9, v10, v11, v12, v1 + v7);
}

uint64_t sub_2610B83B4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + qword_27FE66F18);
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v5 = *(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 8);
  return sub_2610BC6A4();
}

uint64_t sub_2610B8424()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2610B844C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2610B8474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_260FB6DB4;

  return sub_2610B58F0(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_2610B8560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_260FBF860;

  return sub_2610B583C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t static AuthenticateCommand.Response.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 41);
  v8 = *(a2 + 40);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 41);
  v10 = *a2;
  sub_261062BE4(*a1, v12, v13, v14, v15, v16, v17);
  sub_261062BE4(v2, v3, v4, v5, v6, v8, v7);
  sub_260FE514C();
  sub_261060DC0();
  sub_261060D68();
  LOBYTE(v2) = sub_2610BD5B4();
  sub_261062C28(v10, v3, v4, v5, v6, v8, v7);
  sub_261062C28(v11, v12, v13, v14, v15, v16, v17);
  return v2 & 1;
}

uint64_t AuthenticateCommand.Request.account.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26[0] = v3;
  *(v26 + 9) = *(v1 + 153);
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  a1[8] = v25;
  a1[9] = v15;
  *(a1 + 153) = *(v1 + 153);
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v2;
  *a1 = v13;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v4;
  return sub_260FD2DF8(v18, &v17);
}

__n128 AuthenticateCommand.Request.account.setter(uint64_t a1)
{
  v3 = v1[9];
  v13[8] = v1[8];
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 153);
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[7];
  v13[6] = v1[6];
  v13[7] = v5;
  v6 = v1[1];
  v13[0] = *v1;
  v13[1] = v6;
  v7 = v1[3];
  v13[2] = v1[2];
  v13[3] = v7;
  sub_260FD2E30(v13);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  *(v1 + 153) = *(a1 + 153);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t AuthenticateCommand.Request.deviceInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[25];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2610BA984(v2, v3);
}

__n128 AuthenticateCommand.Request.deviceInfo.setter(uint64_t a1)
{
  v3 = v1[24];
  v4 = v1[25];
  sub_2610BA9C8(v1[22], v1[23]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 11) = *a1;
  *(v1 + 12) = v6;
  return result;
}

__n128 AuthenticateCommand.Request.init(from:)@<Q0>(_OWORD *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v61 = a1[10];
  v62 = v4;
  v5 = a1[11];
  v63 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v57 = a1[6];
  v58 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v59 = a1[8];
  v60 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v53 = a1[2];
  v54 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v55 = a1[4];
  v56 = v13;
  v14 = a1[1];
  v52[0] = *a1;
  v52[1] = v14;
  v64[10] = v61;
  v64[11] = v5;
  v64[12] = a1[12];
  v64[6] = v57;
  v64[7] = v8;
  v64[8] = v59;
  v64[9] = v3;
  v64[2] = v53;
  v64[3] = v12;
  v64[4] = v55;
  v64[5] = v6;
  v64[0] = v52[0];
  v64[1] = v10;
  if (sub_260FEE778(v64))
  {
    goto LABEL_4;
  }

  v15 = sub_260F9C524(v64);
  v39 = *v15;
  v16 = v15[4];
  v18 = v15[1];
  v17 = v15[2];
  v42 = v15[3];
  v43 = v16;
  v40 = v18;
  v41 = v17;
  v19 = v15[8];
  v21 = v15[5];
  v20 = v15[6];
  v46 = v15[7];
  v47 = v19;
  v44 = v21;
  v45 = v20;
  v22 = v15[12];
  v24 = v15[9];
  v23 = v15[10];
  v50 = v15[11];
  v51 = v22;
  v48 = v24;
  v49 = v23;
  if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v39) != 2)
  {
LABEL_4:
    sub_260FEDBAC(v52);
    v31 = 0;
    v30 = 0;
  }

  else
  {
    v25 = sub_260F9C514(&v39);
    sub_2610BA9C8(0, 0);
    v26 = v25[22];
    v27 = v25[23];
    v28 = v25[24];
    v29 = v25[25];
    memmove(v38, v25, 0xA9uLL);
    sub_260FD2E30(v38);
    v30 = v26;
    v31 = v27;
  }

  sub_2610BA9C8(v30, v31);
  sub_2610BAA0C(&v39);
  v32 = v50;
  a2[10] = v49;
  a2[11] = v32;
  a2[12] = v51;
  v33 = v46;
  a2[6] = v45;
  a2[7] = v33;
  v34 = v48;
  a2[8] = v47;
  a2[9] = v34;
  v35 = v42;
  a2[2] = v41;
  a2[3] = v35;
  v36 = v44;
  a2[4] = v43;
  a2[5] = v36;
  result = v40;
  *a2 = v39;
  a2[1] = result;
  return result;
}

__n128 AuthenticateCommand.Request.into()@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1[11];
  v25 = v1[10];
  v26 = v3;
  v27 = v1[12];
  v4 = v1[7];
  v21 = v1[6];
  v22 = v4;
  v5 = v1[9];
  v23 = v1[8];
  v24 = v5;
  v6 = v1[3];
  v17 = v1[2];
  v18 = v6;
  v7 = v1[5];
  v19 = v1[4];
  v20 = v7;
  v8 = v1[1];
  v15 = *v1;
  v16 = v8;
  sub_260F9B85C(&v15);
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v28 = v15;
  v29 = v16;
  sub_260FEDCB8(&v28);
  v9 = v39;
  a1[10] = v38;
  a1[11] = v9;
  a1[12] = v40;
  v10 = v35;
  a1[6] = v34;
  a1[7] = v10;
  v11 = v37;
  a1[8] = v36;
  a1[9] = v11;
  v12 = v31;
  a1[2] = v30;
  a1[3] = v12;
  v13 = v33;
  a1[4] = v32;
  a1[5] = v13;
  result = v29;
  *a1 = v28;
  a1[1] = result;
  return result;
}

uint64_t sub_2610B8BB8()
{
  if (*v0)
  {
    result = 0x6E49656369766564;
  }

  else
  {
    result = 0x746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_2610B8BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xEA00000000006F66)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

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

uint64_t sub_2610B8CDC(uint64_t a1)
{
  v2 = sub_2610BAA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2610B8D18(uint64_t a1)
{
  v2 = sub_2610BAA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticateCommand.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67040, &qword_2610D1070);
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[6];
  v48 = v1[7];
  v49 = v7;
  v50[0] = v8;
  *(v50 + 9) = *(v1 + 153);
  v10 = v1[5];
  v45 = v1[4];
  v46 = v10;
  v47 = v9;
  v11 = v1[1];
  v41 = *v1;
  v42 = v11;
  v12 = v1[3];
  v43 = v1[2];
  v44 = v12;
  v13 = *(v1 + 22);
  v20 = *(v1 + 23);
  v21 = v13;
  v14 = *(v1 + 24);
  v18 = *(v1 + 25);
  v19 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD2DF8(&v41, &v31);
  sub_2610BAA30();
  sub_2610BD5F4();
  v38 = v48;
  v39 = v49;
  v40[0] = v50[0];
  *(v40 + 9) = *(v50 + 9);
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v30 = 0;
  sub_260FD3CFC();
  v16 = v22;
  sub_2610BD2A4();
  v28[8] = v39;
  *v29 = v40[0];
  *&v29[9] = *(v40 + 9);
  v28[4] = v35;
  v28[5] = v36;
  v28[6] = v37;
  v28[7] = v38;
  v28[0] = v31;
  v28[1] = v32;
  v28[2] = v33;
  v28[3] = v34;
  sub_260FD2E30(v28);
  if (!v16)
  {
    v24 = v21;
    v25 = v20;
    v26 = v19;
    v27 = v18;
    v23 = 1;
    sub_2610BA984(v21, v20);
    sub_260FD4240();
    sub_2610BD254();
    sub_2610BA9C8(v24, v25);
  }

  return (*(v51 + 8))(v6, v3);
}

uint64_t AuthenticateCommand.Request.hash(into:)(__int128 *a1)
{
  v15 = v1[8];
  *v16 = v1[9];
  *&v16[9] = *(v1 + 153);
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1[6];
  v14 = v1[7];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v2 = *(v1 + 22);
  v3 = *(v1 + 23);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  IdMSAccount.hash(into:)(a1);
  if (!v3)
  {
    return sub_2610BD534();
  }

  sub_2610BD534();
  sub_2610BCA54();

  return sub_2610BCA54();
}

uint64_t AuthenticateCommand.Request.hashValue.getter()
{
  v14 = v0[8];
  *v15 = v0[9];
  *&v15[9] = *(v0 + 153);
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[7];
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v1 = *(v0 + 22);
  v2 = *(v0 + 23);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v16);
  sub_2610BD534();
  if (v2)
  {
    sub_2610BCA54();
    sub_2610BCA54();
  }

  return sub_2610BD574();
}

uint64_t AuthenticateCommand.Request.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67050, &qword_2610D1078);
  v5 = *(v69 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v69);
  v8 = &v25 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BAA30();
  sub_2610BD5D4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_2610BA9C8(0, 0);
  }

  else
  {
    v10 = v5;
    v11 = a2;
    v48 = 0;
    sub_260FD3CA8();
    v12 = v69;
    sub_2610BD1E4();
    v67 = v57;
    v68[0] = v58[0];
    *(v68 + 9) = *(v58 + 9);
    v63 = v53;
    v64 = v54;
    v65 = v55;
    v66 = v56;
    v59 = v49;
    v60 = v50;
    v61 = v51;
    v62 = v52;
    v43 = 1;
    sub_260FD41EC();
    sub_2610BD194();
    (*(v10 + 8))(v8, v12);
    v13 = v44;
    v14 = v45;
    v15 = v46;
    v16 = v47;
    sub_2610BA9C8(0, 0);
    v33 = v67;
    v34 = v68[0];
    v35 = v68[1];
    v29 = v63;
    v30 = v64;
    v17 = v66;
    v31 = v65;
    v32 = v66;
    v25 = v59;
    v26 = v60;
    v18 = v62;
    v27 = v61;
    v28 = v62;
    *&v36 = v13;
    *(&v36 + 1) = v14;
    *&v37 = v15;
    *(&v37 + 1) = v16;
    v19 = v64;
    v11[6] = v65;
    v11[7] = v17;
    v20 = v34;
    v11[8] = v33;
    v11[9] = v20;
    v21 = v26;
    v22 = v29;
    v11[2] = v27;
    v11[3] = v18;
    v11[4] = v22;
    v11[5] = v19;
    *v11 = v25;
    v11[1] = v21;
    v23 = v36;
    v11[10] = v35;
    v11[11] = v23;
    v11[12] = v37;
    sub_261062C64(&v25, v38);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v38[8] = v67;
    v38[9] = v68[0];
    v38[10] = v68[1];
    v38[4] = v63;
    v38[5] = v64;
    v38[6] = v65;
    v38[7] = v66;
    v38[0] = v59;
    v38[1] = v60;
    v38[2] = v61;
    v38[3] = v62;
    v39 = v13;
    v40 = v14;
    v41 = v15;
    v42 = v16;
    return sub_2610BAA84(v38);
  }
}

__n128 sub_2610B9508@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1[11];
  v25 = v1[10];
  v26 = v3;
  v27 = v1[12];
  v4 = v1[7];
  v21 = v1[6];
  v22 = v4;
  v5 = v1[9];
  v23 = v1[8];
  v24 = v5;
  v6 = v1[3];
  v17 = v1[2];
  v18 = v6;
  v7 = v1[5];
  v19 = v1[4];
  v20 = v7;
  v8 = v1[1];
  v15 = *v1;
  v16 = v8;
  sub_260F9B85C(&v15);
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v28 = v15;
  v29 = v16;
  sub_260FEDCB8(&v28);
  v9 = v39;
  a1[10] = v38;
  a1[11] = v9;
  a1[12] = v40;
  v10 = v35;
  a1[6] = v34;
  a1[7] = v10;
  v11 = v37;
  a1[8] = v36;
  a1[9] = v11;
  v12 = v31;
  a1[2] = v30;
  a1[3] = v12;
  v13 = v33;
  a1[4] = v32;
  a1[5] = v13;
  result = v29;
  *a1 = v28;
  a1[1] = result;
  return result;
}

uint64_t sub_2610B9620(__int128 *a1)
{
  v15 = v1[8];
  *v16 = v1[9];
  *&v16[9] = *(v1 + 153);
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1[6];
  v14 = v1[7];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v2 = *(v1 + 22);
  v3 = *(v1 + 23);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  IdMSAccount.hash(into:)(a1);
  if (!v3)
  {
    return sub_2610BD534();
  }

  sub_2610BD534();
  sub_2610BCA54();

  return sub_2610BCA54();
}

uint64_t sub_2610B96F8()
{
  v14 = v0[8];
  *v15 = v0[9];
  *&v15[9] = *(v0 + 153);
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[7];
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v1 = *(v0 + 22);
  v2 = *(v0 + 23);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v16);
  sub_2610BD534();
  if (v2)
  {
    sub_2610BCA54();
    sub_2610BCA54();
  }

  return sub_2610BD574();
}

uint64_t AuthenticateCommand.Response.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 41);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v8 = *(v1 + 40);
  *(a1 + 40) = v8;
  *(a1 + 41) = v7;
  return sub_261062BE4(v2, v3, v4, v5, v6, v8, v7);
}

__n128 AuthenticateCommand.Response.result.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  sub_261062C28(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 41));
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 41) = v5;
  return result;
}

double AuthenticateCommand.Response.init(from:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v37 = a1[10];
  v38 = v4;
  v5 = a1[11];
  v39 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v33 = a1[6];
  v34 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v35 = a1[8];
  v36 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v29 = a1[2];
  v30 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v28[0] = *a1;
  v28[1] = v14;
  v40[10] = v37;
  v40[11] = v5;
  v40[12] = a1[12];
  v40[6] = v33;
  v40[7] = v8;
  v40[8] = v35;
  v40[9] = v3;
  v40[2] = v29;
  v40[3] = v12;
  v40[4] = v31;
  v40[5] = v6;
  v40[0] = v28[0];
  v40[1] = v10;
  if (sub_260FEE778(v40) == 1)
  {
    v15 = sub_260F9C524(v40);
    v16 = *(v15 + 48);
    v18 = *v15;
    v17 = *(v15 + 16);
    v26[2] = *(v15 + 32);
    v26[3] = v16;
    v26[0] = v18;
    v26[1] = v17;
    v19 = *(v15 + 112);
    v21 = *(v15 + 64);
    v20 = *(v15 + 80);
    v26[6] = *(v15 + 96);
    v26[7] = v19;
    v26[4] = v21;
    v26[5] = v20;
    v23 = *(v15 + 144);
    v22 = *(v15 + 160);
    v24 = *(v15 + 128);
    v27 = *(v15 + 176);
    v26[9] = v23;
    v26[10] = v22;
    v26[8] = v24;
    if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v26) == 2)
    {
      sub_260F9C514(v26);
    }
  }

  sub_260FEDBAC(v28);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 40) = -256;
  return result;
}

__n128 AuthenticateCommand.Response.into()@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  v6 = v1[1];
  v13 = *v1;
  v14 = v6;
  *&v15 = v3;
  BYTE8(v15) = v4;
  BYTE9(v15) = v5;
  sub_260F9B85C(&v13);
  v33 = v21;
  v34 = v22;
  v35 = v23;
  *&v36 = v24;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  sub_260FEE86C(&v25);
  v7 = v36;
  *(a1 + 160) = v35;
  *(a1 + 176) = v7;
  *(a1 + 192) = v37;
  v8 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v8;
  v9 = v34;
  *(a1 + 128) = v33;
  *(a1 + 144) = v9;
  v10 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v10;
  v11 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v11;
  result = v26;
  *a1 = v25;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2610B9A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2610BD384();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2610B9AE8(uint64_t a1)
{
  v2 = sub_2610BAAB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2610B9B24(uint64_t a1)
{
  v2 = sub_2610BAAB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticateCommand.Response.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67058, &unk_2610D1080);
  v20 = *(v19 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v28 = &v16 - v4;
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 41);
  v11 = a1[3];
  v18 = a1[4];
  v12 = *(v1 + 40);
  v17 = v12;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_261062BE4(v5, v6, v8, v7, v9, v12, v10);
  sub_2610BAAB4();
  sub_2610BD5F4();
  v21 = v5;
  v22 = v6;
  v23 = v8;
  v24 = v7;
  v25 = v9;
  v26 = v17;
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CB0, &qword_2610C9998);
  sub_2610BAB5C(&qword_27FE67068, sub_260FF24C0, sub_260FF28D0);
  v13 = v19;
  v14 = v28;
  sub_2610BD2A4();
  sub_261062C28(v21, v22, v23, v24, v25, v26, v27);
  return (*(v20 + 8))(v14, v13);
}

uint64_t AuthenticateCommand.Response.hash(into:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CB0, &qword_2610C9998);
  sub_26105FABC();
  sub_260FF35F4();
  return sub_2610BD5A4();
}

uint64_t AuthenticateCommand.Response.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  sub_2610BD514();
  sub_2610BAB08();
  sub_2610BC994();
  return sub_2610BD574();
}

uint64_t AuthenticateCommand.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67078, &qword_2610D1090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BAAB4();
  sub_2610BD5D4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CB0, &qword_2610C9998);
    sub_2610BAB5C(&qword_27FE67080, sub_260FF2514, sub_260FF2A88);
    sub_2610BD1E4();
    (*(v6 + 8))(v9, v5);
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v14;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 41) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

double sub_2610BA058@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v37 = a1[10];
  v38 = v4;
  v5 = a1[11];
  v39 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v33 = a1[6];
  v34 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v35 = a1[8];
  v36 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v29 = a1[2];
  v30 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v28[0] = *a1;
  v28[1] = v14;
  v40[10] = v37;
  v40[11] = v5;
  v40[12] = a1[12];
  v40[6] = v33;
  v40[7] = v8;
  v40[8] = v35;
  v40[9] = v3;
  v40[2] = v29;
  v40[3] = v12;
  v40[4] = v31;
  v40[5] = v6;
  v40[0] = v28[0];
  v40[1] = v10;
  if (sub_260FEE778(v40) == 1)
  {
    v15 = sub_260F9C524(v40);
    v16 = *(v15 + 48);
    v18 = *v15;
    v17 = *(v15 + 16);
    v26[2] = *(v15 + 32);
    v26[3] = v16;
    v26[0] = v18;
    v26[1] = v17;
    v19 = *(v15 + 112);
    v21 = *(v15 + 64);
    v20 = *(v15 + 80);
    v26[6] = *(v15 + 96);
    v26[7] = v19;
    v26[4] = v21;
    v26[5] = v20;
    v23 = *(v15 + 144);
    v22 = *(v15 + 160);
    v24 = *(v15 + 128);
    v27 = *(v15 + 176);
    v26[9] = v23;
    v26[10] = v22;
    v26[8] = v24;
    if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v26) == 2)
    {
      sub_260F9C514(v26);
    }
  }

  sub_260FEDBAC(v28);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 40) = -256;
  return result;
}

__n128 sub_2610BA174@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  v6 = v1[1];
  v13 = *v1;
  v14 = v6;
  *&v15 = v3;
  BYTE8(v15) = v4;
  BYTE9(v15) = v5;
  sub_260F9B85C(&v13);
  v33 = v21;
  v34 = v22;
  v35 = v23;
  *&v36 = v24;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  sub_260FEE86C(&v25);
  v7 = v36;
  *(a1 + 160) = v35;
  *(a1 + 176) = v7;
  *(a1 + 192) = v37;
  v8 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v8;
  v9 = v34;
  *(a1 + 128) = v33;
  *(a1 + 144) = v9;
  v10 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v10;
  v11 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v11;
  result = v26;
  *a1 = v25;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2610BA26C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 41);
  v8 = *(a2 + 40);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 41);
  v10 = *a2;
  sub_261062BE4(*a1, v12, v13, v14, v15, v16, v17);
  sub_261062BE4(v2, v3, v4, v5, v6, v8, v7);
  sub_260FE514C();
  sub_261060DC0();
  sub_261060D68();
  LOBYTE(v2) = sub_2610BD5B4();
  sub_261062C28(v10, v3, v4, v5, v6, v8, v7);
  sub_261062C28(v11, v12, v13, v14, v15, v16, v17);
  return v2 & 1;
}

uint64_t sub_2610BA398()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  sub_2610BD514();
  sub_2610BC994();
  return sub_2610BD574();
}

uint64_t sub_2610BA414()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CB0, &qword_2610C9998);
  sub_26105FABC();
  sub_260FF35F4();
  return sub_2610BD5A4();
}

uint64_t sub_2610BA4A0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  sub_2610BD514();
  sub_2610BC994();
  return sub_2610BD574();
}

BOOL _s21ProximityAppleIDSetup19AuthenticateCommandV7RequestV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v66 = a1[8];
  v67[0] = v3;
  *(v67 + 9) = *(a1 + 153);
  v4 = a1[3];
  v5 = a1[5];
  v62 = a1[4];
  v63 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v64 = a1[6];
  v65 = v7;
  v8 = a1[1];
  v59[0] = *a1;
  v59[1] = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v60 = a1[2];
  v61 = v9;
  v12 = a2[7];
  v13 = a2[9];
  v75 = a2[8];
  v76[0] = v13;
  *(v76 + 9) = *(a2 + 153);
  v14 = a2[3];
  v15 = a2[5];
  v71 = a2[4];
  v72 = v15;
  v16 = a2[5];
  v17 = a2[7];
  v73 = a2[6];
  v74 = v17;
  v18 = a2[1];
  v68[0] = *a2;
  v68[1] = v18;
  v19 = a2[3];
  v21 = *a2;
  v20 = a2[1];
  v69 = a2[2];
  v70 = v19;
  v22 = a1[9];
  v57 = v66;
  v58[0] = v22;
  *(v58 + 9) = *(a1 + 153);
  v53 = v62;
  v54 = v6;
  v55 = v64;
  v56 = v2;
  v49 = v11;
  v50 = v10;
  v51 = v60;
  v52 = v4;
  v23 = a2[9];
  v47 = v75;
  v48[0] = v23;
  *(v48 + 9) = *(a2 + 153);
  v43 = v71;
  v44 = v16;
  v45 = v73;
  v46 = v12;
  v39 = v21;
  v40 = v20;
  v24 = *(a1 + 22);
  v25 = *(a1 + 23);
  v27 = *(a1 + 24);
  v26 = *(a1 + 25);
  v28 = *(a2 + 22);
  v29 = *(a2 + 23);
  v31 = *(a2 + 24);
  v30 = *(a2 + 25);
  v41 = v69;
  v42 = v14;
  sub_260FD2DF8(v59, v79);
  sub_260FD2DF8(v68, v79);
  v32 = _s21ProximityAppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(&v49, &v39);
  v77[8] = v47;
  v78[0] = v48[0];
  *(v78 + 9) = *(v48 + 9);
  v77[4] = v43;
  v77[5] = v44;
  v77[6] = v45;
  v77[7] = v46;
  v77[0] = v39;
  v77[1] = v40;
  v77[2] = v41;
  v77[3] = v42;
  sub_260FD2E30(v77);
  v79[8] = v57;
  v80[0] = v58[0];
  *(v80 + 9) = *(v58 + 9);
  v79[4] = v53;
  v79[5] = v54;
  v79[6] = v55;
  v79[7] = v56;
  v79[0] = v49;
  v79[1] = v50;
  v79[2] = v51;
  v79[3] = v52;
  sub_260FD2E30(v79);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

  if (!v25)
  {
    sub_2610BA984(v24, 0);
    if (!v29)
    {
      sub_2610BA984(v28, 0);
      v33 = v24;
      v34 = 0;
      goto LABEL_20;
    }

    sub_2610BA984(v28, v29);
    goto LABEL_13;
  }

  if (!v29)
  {
    sub_2610BA984(v24, v25);
    sub_2610BA984(v28, 0);
    sub_2610BA984(v24, v25);

LABEL_13:
    sub_2610BA9C8(v24, v25);
    v35 = v28;
    v36 = v29;
LABEL_14:
    sub_2610BA9C8(v35, v36);
    return 0;
  }

  if ((v24 != v28 || v25 != v29) && (sub_2610BD384() & 1) == 0)
  {
    sub_2610BA984(v24, v25);
    sub_2610BA984(v28, v29);
    sub_2610BA984(v24, v25);
    sub_2610BA9C8(v28, v29);

    v35 = v24;
    v36 = v25;
    goto LABEL_14;
  }

  if (v27 == v31 && v26 == v30)
  {
    sub_2610BA984(v24, v25);
    sub_2610BA984(v28, v29);
    sub_2610BA984(v24, v25);
    sub_2610BA9C8(v28, v29);

    v33 = v24;
    v34 = v25;
LABEL_20:
    sub_2610BA9C8(v33, v34);
    return 1;
  }

  v38 = sub_2610BD384();
  sub_2610BA984(v24, v25);
  sub_2610BA984(v28, v29);
  sub_2610BA984(v24, v25);
  sub_2610BA9C8(v28, v29);

  sub_2610BA9C8(v24, v25);
  return (v38 & 1) != 0;
}

uint64_t sub_2610BA984(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2610BA9C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_2610BAA0C(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2610BAA30()
{
  result = qword_27FE67048;
  if (!qword_27FE67048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67048);
  }

  return result;
}

unint64_t sub_2610BAAB4()
{
  result = qword_27FE67060;
  if (!qword_27FE67060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67060);
  }

  return result;
}

unint64_t sub_2610BAB08()
{
  result = qword_27FE67070;
  if (!qword_27FE67070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67070);
  }

  return result;
}

uint64_t sub_2610BAB5C(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE65CB0, &qword_2610C9998);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2610BABEC()
{
  result = qword_27FE67088;
  if (!qword_27FE67088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67088);
  }

  return result;
}

unint64_t sub_2610BAC40(uint64_t a1)
{
  result = sub_2610BAC68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2610BAC68()
{
  result = qword_27FE67090;
  if (!qword_27FE67090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67090);
  }

  return result;
}

unint64_t sub_2610BACBC()
{
  result = qword_27FE67098;
  if (!qword_27FE67098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67098);
  }

  return result;
}

unint64_t sub_2610BAD10(uint64_t a1)
{
  result = sub_2610BAD38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2610BAD38()
{
  result = qword_27FE670A0;
  if (!qword_27FE670A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670A0);
  }

  return result;
}

unint64_t sub_2610BADCC()
{
  result = qword_27FE670A8;
  if (!qword_27FE670A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670A8);
  }

  return result;
}

unint64_t sub_2610BAE24()
{
  result = qword_27FE670B0;
  if (!qword_27FE670B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670B0);
  }

  return result;
}

unint64_t sub_2610BAE78(uint64_t a1)
{
  result = sub_2610BAEA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2610BAEA0()
{
  result = qword_27FE670B8;
  if (!qword_27FE670B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670B8);
  }

  return result;
}

unint64_t sub_2610BAEF4(uint64_t a1)
{
  result = sub_2610BAF1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2610BAF1C()
{
  result = qword_27FE670C0;
  if (!qword_27FE670C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670C0);
  }

  return result;
}

uint64_t sub_2610BAFB0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2610BB008()
{
  result = qword_27FE670C8;
  if (!qword_27FE670C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670C8);
  }

  return result;
}

unint64_t sub_2610BB060()
{
  result = qword_27FE670D0;
  if (!qword_27FE670D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670D0);
  }

  return result;
}

unint64_t sub_2610BB0B8()
{
  result = qword_27FE670D8;
  if (!qword_27FE670D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670D8);
  }

  return result;
}

unint64_t sub_2610BB10C(uint64_t a1)
{
  result = sub_2610BACBC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610BB14C(uint64_t a1, int a2)
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

uint64_t sub_2610BB194(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2610BB22C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
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

uint64_t sub_2610BB274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

unint64_t sub_2610BB2F8()
{
  result = qword_27FE670E0;
  if (!qword_27FE670E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670E0);
  }

  return result;
}

unint64_t sub_2610BB350()
{
  result = qword_27FE670E8;
  if (!qword_27FE670E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670E8);
  }

  return result;
}

unint64_t sub_2610BB3A8()
{
  result = qword_27FE670F0;
  if (!qword_27FE670F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670F0);
  }

  return result;
}

unint64_t sub_2610BB400()
{
  result = qword_27FE670F8;
  if (!qword_27FE670F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670F8);
  }

  return result;
}

unint64_t sub_2610BB458()
{
  result = qword_27FE67100;
  if (!qword_27FE67100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67100);
  }

  return result;
}

unint64_t sub_2610BB4B0()
{
  result = qword_27FE67108;
  if (!qword_27FE67108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67108);
  }

  return result;
}

uint64_t PASFlowStepExtensionProvidedPicker.__allocating_init(delegate:locatedExtension:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = v9 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = -1;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v9 + v11) = v12;
  *(v12 + 48) = 0;
  *(v9 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension) = *a3;
  v13 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v13;
}

id PASFlowStepExtensionProvidedPicker.locatedExtension.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension);
  a1[1] = v3;

  return v3;
}

uint64_t sub_2610BB620@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider);
  swift_beginAccess();
  sub_260FC8F7C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260FA9F80(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260FA9F80(&v6, v5);
  swift_beginAccess();
  sub_260FC8FEC(v5, v3 + 16);
  swift_endAccess();
}

uint64_t PASFlowStepExtensionProvidedPicker.init(delegate:locatedExtension:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = -1;
  v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v3 + v8) = v9;
  *(v9 + 48) = 0;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension) = *a3;
  v10 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t PASFlowStepExtensionProvidedPicker.nextStep()()
{
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 8);
  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 16);
  if (v4 == 255)
  {
    v0 = 0x80000002610D6840;
    sub_260FC3450();
    swift_allocError();
    *v20 = 0xD000000000000039;
    *(v20 + 8) = 0x80000002610D6840;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 1;
    goto LABEL_5;
  }

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result);
  if (v4)
  {
LABEL_5:
    swift_willThrow();
    sub_2610BC0F0(v3, v2, v4);
    return v0;
  }

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension);
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension + 8);
  v23[0] = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result);
  v23[1] = v6;
  v23[2] = v7;
  v24 = 3;
  v8 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  v25 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v8 + 8);
  sub_260FDD49C(v23, v22);
  v11 = type metadata accessor for PASFlowStepSendSelectedAccount();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *(v14 + v15) = v16;
  v17 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v14 + v17) = v18;
  *(v14 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) = 0;
  sub_260FDD49C(v22, v14 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);
  sub_2610BC0F0(v3, v2, v4);

  v19 = v7;
  v0 = sub_26104DC44(Strong, v10);

  swift_unknownObjectRelease();
  sub_260FDD4F8(v22);
  sub_260FDD4F8(v23);
  sub_2610BC210(&qword_27FE64700, type metadata accessor for PASFlowStepSendSelectedAccount);
  return v0;
}

void PASFlowStepExtensionProvidedPicker.setError(error:)(void *a1)
{
  sub_2610BBA80(a1, 0, 1);

  sub_2610439BC();
}

id sub_2610BBA80(void *a1, void *a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result;
  if (*(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 16) != 255)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v8 = sub_2610BC7B4();
    __swift_project_value_buffer(v8, qword_27FE65900);

    v9 = sub_2610BC794();
    v10 = sub_2610BCD64();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315138;
      sub_2610BC0F0(*v7, *(v7 + 8), *(v7 + 16));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67138, &qword_2610D1838);
      v13 = sub_2610BCA34();
      v15 = sub_260FA5970(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_260F97000, v9, v10, "PASFlowStepExtensionProvidedPicker setResult is clobbering existing result of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x2666F8720](v12, -1, -1);
      MEMORY[0x2666F8720](v11, -1, -1);
    }
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v16 = sub_2610BC7B4();
  __swift_project_value_buffer(v16, qword_27FE65900);
  sub_2610BC108(a1, a2, a3 & 1);
  v17 = sub_2610BC794();
  v18 = sub_2610BCD44();
  sub_2610BC16C(a1, a2, a3 & 1);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    sub_2610BC108(a1, a2, a3 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67130, &qword_2610D1830);
    v21 = sub_2610BCA34();
    v23 = sub_260FA5970(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_260F97000, v17, v18, "PASFlowStepExtensionProvidedPicker setResult to: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x2666F8720](v20, -1, -1);
    MEMORY[0x2666F8720](v19, -1, -1);
  }

  v24 = *v7;
  v25 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v26 = *(v7 + 16);
  *(v7 + 16) = a3 & 1;
  sub_2610BC154(v24, v25, v26);
  return sub_2610BC108(a1, a2, a3 & 1);
}

void PASFlowStepExtensionProvidedPicker.setPickedAccount(_:context:)(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  sub_2610BBA80(a1, a2, 0);
  sub_2610BB620(v13);
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v12[3] = type metadata accessor for PASExtensionPickedAccount();
  v12[4] = sub_2610BC210(&qword_27FE65B68, type metadata accessor for PASExtensionPickedAccount);
  v12[0] = v4;
  v11[3] = type metadata accessor for PASAccountContextExtension();
  v11[4] = &protocol witness table for PASAccountContextExtension;
  v11[0] = v5;
  v8 = *(v7 + 40);
  v9 = v4;
  v10 = v5;
  v8(v12, v11, v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  sub_260FA9980(v12, &unk_27FE656B0, &unk_2610BFCE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  sub_2610439BC();
}

uint64_t sub_2610BBF40()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension);

  sub_2610BC154(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 8), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 16));
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider);
}

uint64_t PASFlowStepExtensionProvidedPicker.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension);

  sub_2610BC154(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 8), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 16));
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider);

  return v0;
}

uint64_t PASFlowStepExtensionProvidedPicker.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension + 8);

  sub_2610BC154(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 8), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 16));
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

id sub_2610BC0F0(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2610BC108(result, a2, a3 & 1);
  }

  return result;
}

id sub_2610BC108(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    v5 = a1;
    a1 = a2;
  }

  return a1;
}

void sub_2610BC154(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_2610BC16C(a1, a2, a3 & 1);
  }
}

void sub_2610BC16C(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_2610BC1B8(uint64_t a1)
{
  result = sub_2610BC210(&qword_27FE66DD8, type metadata accessor for PASFlowStepExtensionProvidedPicker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610BC210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepExtensionProvidedPicker()
{
  result = qword_27FE67120;
  if (!qword_27FE67120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}