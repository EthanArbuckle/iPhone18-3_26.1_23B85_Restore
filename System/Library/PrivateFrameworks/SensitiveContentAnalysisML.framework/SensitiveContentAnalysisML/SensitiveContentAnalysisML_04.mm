uint64_t sub_1B8AA3BC8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1B8AF02F8();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = sub_1B8AF0328();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AA3CF0, 0, 0);
}

uint64_t sub_1B8AA3CF0()
{
  v43 = v0;
  v1 = *(v0 + 80);
  *(v0 + 208) = [**(v0 + 72) keepGoing];
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  v3 = *(v2 + 16);
  *(v0 + 152) = v3;
  if (!v3)
  {
LABEL_18:
    v37 = *(v0 + 136);
    v38 = *(v0 + 104);
    v39 = *(v0 + 112);

    v40 = *(v0 + 8);

    return v40();
  }

  *(v0 + 160) = 0;
  if (*(v2 + 16))
  {
    v4 = 0;
    while (1)
    {
      v5 = *(v0 + 208);
      sub_1B8A85238(v2 + 40 * v4 + 32, v0 + 16);
      if ((v5 & 1) == 0 && ([*(*(v0 + 72) + 8) safe] & 1) == 0)
      {
        break;
      }

      v6 = *(*(v0 + 72) + 16);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      swift_getDynamicType();
      if (((*(*(v0 + 48) + 24))() & v6) != 0)
      {
        goto LABEL_10;
      }

      v7 = *(v0 + 152);
      v8 = *(v0 + 160) + 1;
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      if (v8 == v7)
      {
        goto LABEL_18;
      }

      v4 = *(v0 + 160) + 1;
      *(v0 + 160) = v4;
      v2 = *(v0 + 144);
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_9;
      }
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_18;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = __swift_project_value_buffer(v11, qword_1EDB75B50);
  (*(v10 + 16))(v9, v12, v11);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  DynamicType = swift_getDynamicType();
  v14 = *(v0 + 48);
  *(v0 + 56) = DynamicType;
  *(v0 + 64) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B48, &qword_1B8AF8928);
  v15 = sub_1B8AF06B8();
  v17 = v16;
  *(v0 + 168) = v15;
  *(v0 + 176) = v16;
  sub_1B8AF02E8();

  v18 = sub_1B8AF0318();
  v19 = sub_1B8AF0908();

  if (sub_1B8AF0928())
  {
    v20 = *(v0 + 112);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v42 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1B8A9E870(v15, v17, &v42);
    v23 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v18, v19, v23, "SCMLImageSanitizer.backend", "backend=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1B8CC7D70](v22, -1, -1);
    MEMORY[0x1B8CC7D70](v21, -1, -1);
  }

  v24 = *(v0 + 112);
  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  (*(v26 + 16))(*(v0 + 104), v24, v25);
  v27 = sub_1B8AF0368();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *(v0 + 184) = sub_1B8AF0358();
  (*(v26 + 8))(v24, v25);
  v30 = *(v0 + 40);
  v31 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v30);
  v32 = *(v31 + 16);
  v41 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  *(v0 + 192) = v34;
  *v34 = v0;
  v34[1] = sub_1B8AA417C;
  v35 = *(v0 + 72);

  return v41(v35, v30, v31);
}

uint64_t sub_1B8AA417C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1B8AA4734;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_1B8AA4298;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8AA4298()
{
  v45 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_1B8AA485C(v2, "SCMLImageSanitizer.backend", 26, 2);

  (*(v3 + 8))(v2, v4);
  do
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 160) + 1;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if (v7 == v6)
    {
      goto LABEL_8;
    }

    v8 = *(v0 + 160) + 1;
    *(v0 + 160) = v8;
    v9 = *(v0 + 144);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v10 = *(v0 + 208);
    sub_1B8A85238(v9 + 40 * v8 + 32, v0 + 16);
    if ((v10 & 1) == 0 && ([*(*(v0 + 72) + 8) safe] & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_8:
      v11 = *(v0 + 136);
      v12 = *(v0 + 104);
      v13 = *(v0 + 112);

      v14 = *(v0 + 8);

      return v14();
    }

    v5 = *(*(v0 + 72) + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    swift_getDynamicType();
  }

  while (((*(*(v0 + 48) + 24))() & v5) == 0);
  if (qword_1EDB75390 == -1)
  {
    goto LABEL_12;
  }

LABEL_18:
  swift_once();
LABEL_12:
  v17 = *(v0 + 128);
  v16 = *(v0 + 136);
  v18 = *(v0 + 120);
  v19 = __swift_project_value_buffer(v18, qword_1EDB75B50);
  (*(v17 + 16))(v16, v19, v18);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  DynamicType = swift_getDynamicType();
  v21 = *(v0 + 48);
  *(v0 + 56) = DynamicType;
  *(v0 + 64) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B48, &qword_1B8AF8928);
  v22 = sub_1B8AF06B8();
  v24 = v23;
  *(v0 + 168) = v22;
  *(v0 + 176) = v23;
  sub_1B8AF02E8();

  v25 = sub_1B8AF0318();
  v26 = sub_1B8AF0908();

  if (sub_1B8AF0928())
  {
    v27 = *(v0 + 112);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1B8A9E870(v22, v24, &v44);
    v30 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v25, v26, v30, "SCMLImageSanitizer.backend", "backend=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B8CC7D70](v29, -1, -1);
    MEMORY[0x1B8CC7D70](v28, -1, -1);
  }

  v31 = *(v0 + 112);
  v32 = *(v0 + 88);
  v33 = *(v0 + 96);
  (*(v33 + 16))(*(v0 + 104), v31, v32);
  v34 = sub_1B8AF0368();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *(v0 + 184) = sub_1B8AF0358();
  (*(v33 + 8))(v31, v32);
  v37 = *(v0 + 40);
  v38 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v37);
  v39 = *(v38 + 16);
  v43 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  *(v0 + 192) = v41;
  *v41 = v0;
  v41[1] = sub_1B8AA417C;
  v42 = *(v0 + 72);

  return v43(v42, v37, v38);
}

uint64_t sub_1B8AA4734()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v11 = *(v0 + 168);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  sub_1B8AA63F8();
  swift_allocError();
  *v8 = v11;
  *(v8 + 16) = v1;
  swift_willThrow();
  sub_1B8AA485C(v3, "SCMLImageSanitizer.backend", 26, 2);

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B8AA485C(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8AA4AF8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B8AA4B38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1B8AA3440(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B8AA4B90(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8A7B414;

  return sub_1B8AA3BC8(a1);
}

objc_class *SCMLCombinedImageSanitizerBackend.__allocating_init(configuration:)(void *a1)
{
  v3 = v1;
  v5 = objc_allocWithZone(v3);
  type metadata accessor for CombinedImageSanitizerBackend();
  v6 = swift_allocObject();
  v7 = a1;
  sub_1B8AA3440(v7);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v5[OBJC_IVAR____TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend_backend] = v6;
    v9.receiver = v5;
    v9.super_class = v3;
    v3 = objc_msgSendSuper2(&v9, sel_init);
  }

  return v3;
}

uint64_t SCMLCombinedImageSanitizerBackend.init(configuration:)(void *a1)
{
  v3 = v1;
  type metadata accessor for CombinedImageSanitizerBackend();
  v5 = swift_allocObject();
  v6 = a1;
  sub_1B8AA3440(v6);
  if (v2)
  {

    type metadata accessor for SCMLCombinedImageSanitizerBackend();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend_backend] = v5;
    v8.receiver = v3;
    v8.super_class = type metadata accessor for SCMLCombinedImageSanitizerBackend();
    v5 = objc_msgSendSuper2(&v8, sel_init);
  }

  return v5;
}

uint64_t sub_1B8AA4EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_1B8AF02F8();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = sub_1B8AF0328();
  v4[22] = v8;
  v9 = *(v8 - 8);
  v4[23] = v9;
  v10 = *(v9 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AA5014, 0, 0);
}

uint64_t sub_1B8AA5014()
{
  v51 = v0;
  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  *(v0 + 40) = xmmword_1B8AF8910;
  v5 = *(v2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend_backend);
  v6 = v1;
  v7 = v4;
  *(v0 + 264) = [v6 keepGoing];
  v8 = *(v5 + 16);
  *(v0 + 200) = v8;
  v9 = *(v8 + 16);
  *(v0 + 208) = v9;
  if (!v9)
  {
LABEL_18:
    v42 = *(v0 + 192);
    v44 = *(v0 + 160);
    v43 = *(v0 + 168);
    v45 = *(v0 + 24);
    v46 = *(v0 + 40);
    v47 = *(v0 + 48);

    sub_1B8A89878(v46, v47);

    v48 = *(v0 + 8);

    return v48();
  }

  *(v0 + 216) = 0;
  if (*(v8 + 16))
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v0 + 264);
      sub_1B8A85238(v8 + 40 * v10 + 32, v0 + 56);
      if ((v11 & 1) == 0 && ![*(v0 + 24) safe])
      {
        break;
      }

      v12 = *(v0 + 32);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      swift_getDynamicType();
      if (((*(*(v0 + 88) + 24))() & v12) != 0)
      {
        goto LABEL_10;
      }

      v13 = *(v0 + 208);
      v14 = *(v0 + 216) + 1;
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      if (v14 == v13)
      {
        goto LABEL_18;
      }

      v10 = *(v0 + 216) + 1;
      *(v0 + 216) = v10;
      v8 = *(v0 + 200);
      if (v10 >= *(v8 + 16))
      {
        goto LABEL_9;
      }
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    goto LABEL_18;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 184);
  v15 = *(v0 + 192);
  v17 = *(v0 + 176);
  v18 = __swift_project_value_buffer(v17, qword_1EDB75B50);
  (*(v16 + 16))(v15, v18, v17);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  DynamicType = swift_getDynamicType();
  v20 = *(v0 + 88);
  *(v0 + 96) = DynamicType;
  *(v0 + 104) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B48, &qword_1B8AF8928);
  v21 = sub_1B8AF06B8();
  v23 = v22;
  *(v0 + 224) = v21;
  *(v0 + 232) = v22;
  sub_1B8AF02E8();

  v24 = sub_1B8AF0318();
  v25 = sub_1B8AF0908();

  if (sub_1B8AF0928())
  {
    v26 = *(v0 + 168);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v50 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1B8A9E870(v21, v23, &v50);
    v29 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v24, v25, v29, "SCMLImageSanitizer.backend", "backend=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B8CC7D70](v28, -1, -1);
    MEMORY[0x1B8CC7D70](v27, -1, -1);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = *(v0 + 152);
  (*(v32 + 16))(*(v0 + 160), v30, v31);
  v33 = sub_1B8AF0368();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  *(v0 + 240) = sub_1B8AF0358();
  (*(v32 + 8))(v30, v31);
  v36 = *(v0 + 80);
  v37 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v36);
  v38 = *(v37 + 16);
  v49 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  *(v0 + 248) = v40;
  *v40 = v0;
  v40[1] = sub_1B8AA54F8;

  return v49(v0 + 16, v36, v37);
}

uint64_t sub_1B8AA54F8()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_1B8AA5AC8;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_1B8AA5614;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8AA5614()
{
  v47 = v0;
  v1 = *(v0 + 240);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  sub_1B8AA485C(v2, "SCMLImageSanitizer.backend", 26, 2);

  (*(v3 + 8))(v2, v4);
  do
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 216) + 1;
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    if (v7 == v6)
    {
      goto LABEL_8;
    }

    v8 = *(v0 + 216) + 1;
    *(v0 + 216) = v8;
    v9 = *(v0 + 200);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v10 = *(v0 + 264);
    sub_1B8A85238(v9 + 40 * v8 + 32, v0 + 56);
    if ((v10 & 1) == 0 && ![*(v0 + 24) safe])
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_8:
      v11 = *(v0 + 192);
      v13 = *(v0 + 160);
      v12 = *(v0 + 168);
      v14 = *(v0 + 24);
      v15 = *(v0 + 40);
      v16 = *(v0 + 48);

      sub_1B8A89878(v15, v16);

      v17 = *(v0 + 8);

      return v17();
    }

    v5 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    swift_getDynamicType();
  }

  while (((*(*(v0 + 88) + 24))() & v5) == 0);
  if (qword_1EDB75390 == -1)
  {
    goto LABEL_12;
  }

LABEL_18:
  swift_once();
LABEL_12:
  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  v21 = *(v0 + 176);
  v22 = __swift_project_value_buffer(v21, qword_1EDB75B50);
  (*(v20 + 16))(v19, v22, v21);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  DynamicType = swift_getDynamicType();
  v24 = *(v0 + 88);
  *(v0 + 96) = DynamicType;
  *(v0 + 104) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B48, &qword_1B8AF8928);
  v25 = sub_1B8AF06B8();
  v27 = v26;
  *(v0 + 224) = v25;
  *(v0 + 232) = v26;
  sub_1B8AF02E8();

  v28 = sub_1B8AF0318();
  v29 = sub_1B8AF0908();

  if (sub_1B8AF0928())
  {
    v30 = *(v0 + 168);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1B8A9E870(v25, v27, &v46);
    v33 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v28, v29, v33, "SCMLImageSanitizer.backend", "backend=%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1B8CC7D70](v32, -1, -1);
    MEMORY[0x1B8CC7D70](v31, -1, -1);
  }

  v34 = *(v0 + 168);
  v35 = *(v0 + 144);
  v36 = *(v0 + 152);
  (*(v36 + 16))(*(v0 + 160), v34, v35);
  v37 = sub_1B8AF0368();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  *(v0 + 240) = sub_1B8AF0358();
  (*(v36 + 8))(v34, v35);
  v40 = *(v0 + 80);
  v41 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v40);
  v42 = *(v41 + 16);
  v45 = (v42 + *v42);
  v43 = v42[1];
  v44 = swift_task_alloc();
  *(v0 + 248) = v44;
  *v44 = v0;
  v44[1] = sub_1B8AA54F8;

  return v45(v0 + 16, v40, v41);
}

uint64_t sub_1B8AA5AC8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v14 = *(v0 + 224);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  sub_1B8AA63F8();
  swift_allocError();
  *v8 = v14;
  *(v8 + 16) = v1;
  swift_willThrow();
  sub_1B8AA485C(v3, "SCMLImageSanitizer.backend", 26, 2);

  (*(v4 + 8))(v3, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);

  sub_1B8A89878(v10, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1B8AA5DAC(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[9] = a3;
  v5[10] = a5;
  v5[7] = a1;
  v5[8] = a2;
  v5[11] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a5;

  return MEMORY[0x1EEE6DFA0](sub_1B8AA5E44, 0, 0);
}

uint64_t sub_1B8AA5E44()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 16) = v1;
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 24) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = xmmword_1B8AF8910;
  v5 = *(v3 + OBJC_IVAR____TtC26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackend_backend);
  v6 = v1;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_1B8AA5F14;

  return sub_1B8AA3BC8(v0 + 16);
}

uint64_t sub_1B8AA5F14()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1B8AA60D4;
  }

  else
  {
    v3 = sub_1B8AA6028;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8AA6028()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  sub_1B8A89878(v5, v6);
  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 88));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B8AA60D4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);

  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  sub_1B8A89878(v6, v7);
  v8 = sub_1B8AEFBC8();

  (*(v2 + 16))(v2, v8);
  _Block_release(*(v0 + 88));
  v9 = *(v0 + 8);

  return v9();
}

id SCMLCombinedImageSanitizerBackend.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMLCombinedImageSanitizerBackend.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLCombinedImageSanitizerBackend();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8AA629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v22 = MEMORY[0x1E69E6158];
  v23 = MEMORY[0x1E69E6160];
  v20 = a1;
  v21 = a2;
  swift_bridgeObjectRetain_n();
  v11 = TerseEncoder.encode(_:typeNameStyle:)(&v20, a4);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_0(&v20);

  v20 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v14 = sub_1B8AF06D8();
  v16 = sub_1B8AEC790(v14, v15);
  v18 = v17;

  v20 = v16;
  v21 = v18;
  MEMORY[0x1B8CC5F50](40, 0xE100000000000000);
  MEMORY[0x1B8CC5F50](v11, v13);

  MEMORY[0x1B8CC5F50](41, 0xE100000000000000);
  return v20;
}

unint64_t sub_1B8AA63F8()
{
  result = qword_1EDB74A08;
  if (!qword_1EDB74A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB74A08);
  }

  return result;
}

uint64_t sub_1B8AA644C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B8A4270C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1B8AA64E4()
{
  v0 = sub_1B8ABAD30(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    v0 = sub_1B8ABAD30((v1 > 1), v2 + 1, 1, v0);
  }

  v4 = type metadata accessor for AFMPlusImageSanitizerBackend();
  v5 = 0;
  *(v0 + 2) = v3;
  v6 = &v0[16 * v2];
  *(v6 + 4) = v4;
  *(v6 + 5) = &off_1F3748EA8;
  v7 = v0 + 40;
  do
  {
    v8 = *(v7 - 1);
    v5 |= (*(*v7 + 24))();
    v7 += 16;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t _s26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackendC026resolveStructuralIntegrityH0So09SCMLImageG8BackendsVyFZ_0()
{
  v2[1] = 11;
  AFMModel.Task.afmPlusMode.getter(v2);
  if (v2[0])
  {
    v0 = sub_1B8AF0EA8();

    if ((v0 & 1) == 0)
    {
      return 256;
    }
  }

  else
  {
  }

  return 8;
}

uint64_t _s26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackendC022resolveViolenceAndGoreH0So09SCMLImageG8BackendsVyFZ_0()
{
  v2[1] = 13;
  AFMModel.Task.afmPlusMode.getter(v2);
  if (v2[0])
  {
    v0 = sub_1B8AF0EA8();

    if ((v0 & 1) == 0)
    {
      return 64;
    }
  }

  else
  {
  }

  return 4;
}

uint64_t _s26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackendC019resolvePrepubescentH0So09SCMLImageG8BackendsVyFZ_0()
{
  v2[1] = 6;
  AFMModel.Task.afmPlusMode.getter(v2);
  if (v2[0])
  {
    v0 = sub_1B8AF0EA8();

    if ((v0 & 1) == 0)
    {
      return 32;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t _s26SensitiveContentAnalysisML33SCMLCombinedImageSanitizerBackendC019resolveFlagsAndMapsH0So09SCMLImageG8BackendsVyFZ_0()
{
  v2[1] = 2;
  AFMModel.Task.afmPlusMode.getter(v2);
  if (v2[0])
  {
    v0 = sub_1B8AF0EA8();

    if ((v0 & 1) == 0)
    {
      return 128;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t dispatch thunk of SCMLCombinedImageSanitizerBackend.sanitize(request:output:backends:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B8A7B414;

  return v12(a1, a2, a3);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_1B8AA6AA0()
{
  result = qword_1EBA96B50;
  if (!qword_1EBA96B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B50);
  }

  return result;
}

unint64_t sub_1B8AA6AF4()
{
  result = qword_1EBA96B58;
  if (!qword_1EBA96B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B58);
  }

  return result;
}

unint64_t sub_1B8AA6B48()
{
  result = qword_1EBA96B60;
  if (!qword_1EBA96B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B60);
  }

  return result;
}

unint64_t sub_1B8AA6B9C()
{
  result = qword_1EBA96B68;
  if (!qword_1EBA96B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B68);
  }

  return result;
}

uint64_t sub_1B8AA6BF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B8A7B414;

  return sub_1B8AA5DAC(v2, v3, v4, v5, v6);
}

uint64_t sub_1B8AA6CB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B8AA7150;

  return sub_1B8AD75C8(v2, v3, v5);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1B8CC7D70);
  }

  return result;
}

unint64_t sub_1B8AA6E08()
{
  result = qword_1EBA96B90;
  if (!qword_1EBA96B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B90);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1B8AA6EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B8AA6EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8AA6F98(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1B8AA6FFC()
{
  result = qword_1EBA96B98;
  if (!qword_1EBA96B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B98);
  }

  return result;
}

unint64_t sub_1B8AA7050()
{
  result = qword_1EBA96BA0;
  if (!qword_1EBA96BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BA0);
  }

  return result;
}

unint64_t sub_1B8AA70A4()
{
  result = qword_1EBA96BA8;
  if (!qword_1EBA96BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BA8);
  }

  return result;
}

unint64_t sub_1B8AA70F8()
{
  result = qword_1EBA96BB0;
  if (!qword_1EBA96BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BB0);
  }

  return result;
}

uint64_t sub_1B8AA7170(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1B8AD846C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B8AF0A38();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1B8AD846C((v13 > 1), v14 + 1, 1);
      v7 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v14 + 1;
    v15 = v26 + 16 * v14;
    *(v15 + 32) = 0x70616373646E616CLL;
    *(v15 + 40) = 0xE900000000000065;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1B8A896DC(result, v12, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1B8A896DC(result, v12, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1B8AA73D8(void *a1@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = sub_1B8AF06A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AF0698();
  v7 = sub_1B8AF0678();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    goto LABEL_33;
  }

  v40 = MEMORY[0x1E69E7CD0];
  v10 = objc_opt_self();
  v11 = sub_1B8AEFC18();
  *&v45 = 0;
  v12 = [v10 JSONObjectWithData:v11 options:0 error:&v45];

  if (v12)
  {
    v13 = v45;
    sub_1B8AF0A18();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C28, &qword_1B8AF8FC0);
    if (swift_dynamicCast())
    {
      v36 = v7;
      v37 = v9;
      v38 = a1;
      v14 = 0;
      v15 = v42;
      v16 = 1 << *(v42 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(v42 + 64);
      v19 = (v16 + 63) >> 6;
      while (1)
      {
        if (!v18)
        {
          if (v19 <= v14 + 1)
          {
            v21 = v14 + 1;
          }

          else
          {
            v21 = v19;
          }

          v22 = v21 - 1;
          while (1)
          {
            v20 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v20 >= v19)
            {
              v18 = 0;
              v43 = 0u;
              v44 = 0u;
              v42 = 0u;
              goto LABEL_18;
            }

            v18 = *(v15 + 64 + 8 * v20);
            ++v14;
            if (v18)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
        }

        v20 = v14;
LABEL_17:
        v23 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v24 = v23 | (v20 << 6);
        v25 = (*(v15 + 48) + 16 * v24);
        v27 = *v25;
        v26 = v25[1];
        sub_1B8A7BBE0(*(v15 + 56) + 32 * v24, v41);
        *&v42 = v27;
        *(&v42 + 1) = v26;
        sub_1B8AAB328(v41, &v43);

        v22 = v20;
LABEL_18:
        v45 = v42;
        v46[0] = v43;
        v46[1] = v44;
        v28 = *(&v42 + 1);
        if (!*(&v42 + 1))
        {

          sub_1B8A89878(v36, v37);
          v34 = v40;
          a1 = v38;
          goto LABEL_31;
        }

        v29 = v45;
        sub_1B8AAB328(v46, &v42);
        if (v29 == 0x73646E616C5F7369 && v28 == 0xEC00000065706163)
        {
        }

        else
        {
          v30 = sub_1B8AF0EA8();

          if ((v30 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        sub_1B8A7BBE0(&v42, v41);
        v31 = swift_dynamicCast();
        if ((v31 & 1) != 0 && v39 == 1)
        {
          sub_1B8ABCCAC(v31);
        }

LABEL_7:
        __swift_destroy_boxed_opaque_existential_0(&v42);
        v14 = v22;
      }
    }

    sub_1B8A89878(v7, v9);
  }

  else
  {
    v32 = v45;
    v33 = sub_1B8AEFBD8();

    swift_willThrow();
    sub_1B8A89878(v7, v9);
  }

  v34 = MEMORY[0x1E69E7CD0];
LABEL_31:
  *a1 = v34;
  v35 = *MEMORY[0x1E69E9840];
}

uint64_t BackgroundEstimator.__allocating_init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  BackgroundEstimator.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(a1, a2, a3, a4, a5 & 1);
  return v13;
}

char *BackgroundEstimator.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v139 = a5;
  v113 = a4;
  v135 = a3;
  v129 = a2;
  v112 = a1;
  v111 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v109 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v107 - v11;
  v12 = sub_1B8AEFCC8();
  v133 = *(v12 - 8);
  v13 = v133[8];
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B8AF03A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v126 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v107 - v20;
  v125 = sub_1B8AF02F8();
  v21 = *(v125 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v125);
  v124 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v107 - v25;
  v136 = sub_1B8AF0328();
  v27 = *(v136 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_logger;
  if (qword_1EBA96478 != -1)
  {
    swift_once();
  }

  v134 = v12;
  v32 = __swift_project_value_buffer(v15, qword_1EBAA5828);
  v127 = v16;
  v33 = *(v16 + 16);
  v130 = v15;
  v131 = v33;
  v132 = v16 + 16;
  v33(&v6[v31], v32, v15);
  v34 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v35 = v136;
  v36 = __swift_project_value_buffer(v136, qword_1EDB75B50);
  v123 = v27;
  v37 = *(v27 + 16);
  v116 = v36;
  v37(&v6[v34]);
  v110 = v34;
  v117 = v27 + 16;
  v115 = v37;
  (v37)(v30, &v6[v34], v35);
  sub_1B8AF02E8();
  v122 = v30;
  v38 = sub_1B8AF0318();
  v39 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v40 = v6;
    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v38, v39, v42, "BackgroundEstimator.init", "", v41, 2u);
    v43 = v41;
    v6 = v40;
    MEMORY[0x1B8CC7D70](v43, -1, -1);
  }

  v44 = v125;
  (*(v21 + 16))(v124, v26, v125);
  v45 = sub_1B8AF0368();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v121 = sub_1B8AF0358();
  (*(v21 + 8))(v26, v44);
  v124 = v6;
  v125 = v31;
  v48 = v118;
  v49 = v130;
  v131(v118, &v6[v31], v130);
  v51 = v133;
  v50 = v134;
  v52 = v119;
  v114 = v133[2];
  v114(v119, v135, v134);
  v53 = v129;

  v54 = v53;
  v55 = sub_1B8AF0388();
  v56 = sub_1B8AF08E8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *&v137[0] = v108;
    *v57 = 136446722;
    *(v57 + 4) = sub_1B8A9E870(v112, v54, v137);
    *(v57 + 12) = 2048;
    v58 = v113;
    if (v139)
    {
      v58 = -1;
    }

    *(v57 + 14) = v58;
    *(v57 + 22) = 2080;
    sub_1B8AAA774();
    v59 = sub_1B8AF0D28();
    v61 = v60;
    v119 = v133[1];
    (v119)(v52, v134);
    v62 = sub_1B8A9E870(v59, v61, v137);
    v50 = v134;

    *(v57 + 24) = v62;
    _os_log_impl(&dword_1B8A3C000, v55, v56, "Begin BackgroundEstimator init useCase=%{public}s  pid=%ld loc=%s", v57, 0x20u);
    v63 = v108;
    swift_arrayDestroy();
    MEMORY[0x1B8CC7D70](v63, -1, -1);
    v64 = v57;
    v51 = v133;
    MEMORY[0x1B8CC7D70](v64, -1, -1);
  }

  else
  {

    v119 = v51[1];
    (v119)(v52, v50);
  }

  v65 = *(v127 + 8);
  v65(v48, v49);
  v66 = v128;
  v114(v128, v135, v50);
  (v51[7])(v66, 0, 1, v50);
  v67 = type metadata accessor for AFMModel();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v70 = swift_allocObject();
  v71 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v72 = __swift_project_value_buffer(v49, qword_1EDB75B38);
  v131((v70 + v71), v72, v49);
  v73 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  v115(v70 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter, v116, v136);
  v140 = 0;
  v74 = v120;
  sub_1B8A93BF0(v137);
  if (v74)
  {

    sub_1B8A897C4(v128, &qword_1EBA96528, &unk_1B8AF64B0);
    v82 = v130;
    v65((v70 + v71), v130);
    v83 = *(v123 + 8);
    v83(v70 + v73, v136);
    v84 = *(*v70 + 48);
    v85 = *(*v70 + 52);
    swift_deallocPartialClassInstance();
    v86 = v124;
    v131(v126, &v124[v125], v82);
    v87 = v74;
    v88 = sub_1B8AF0388();
    v89 = sub_1B8AF08D8();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 138412290;
      v92 = v74;
      v93 = _swift_stdlib_bridgeErrorToNSError();
      *(v90 + 4) = v93;
      *v91 = v93;
      _os_log_impl(&dword_1B8A3C000, v88, v89, "End BackgroundEstimator init with error: %@", v90, 0xCu);
      sub_1B8A897C4(v91, &qword_1EBA96B08, &qword_1B8AF94B0);
      v94 = v91;
      v86 = v124;
      MEMORY[0x1B8CC7D70](v94, -1, -1);
      MEMORY[0x1B8CC7D70](v90, -1, -1);
    }

    v95 = v130;
    v65(v126, v130);
    swift_willThrow();
    v96 = v122;
    sub_1B8AA85A8(v122, "BackgroundEstimator.init", 24, 2);

    (v119)(v135, v134);
    v97 = v96;
    v98 = v136;
    v83(v97, v136);
    v65(&v86[v125], v95);
    v83(&v86[v110], v98);
    v99 = *(*v86 + 48);
    v100 = *(*v86 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v75 = v70 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v76 = v137[1];
    *v75 = v137[0];
    *(v75 + 16) = v76;
    *(v75 + 32) = v138;
    LOBYTE(v137[0]) = 0;
    v77 = v128;
    v78 = v109;
    sub_1B8AA2E1C(v128, v109);
    v79 = type metadata accessor for AFMModelCore();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    v102 = sub_1B8A8AB94(v137, v112, v129, v113, v139 & 1, v78);
    sub_1B8A897C4(v77, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v70 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v102;
    v86 = v124;
    *(v124 + 2) = v70;
    v103 = sub_1B8AF0388();
    v104 = sub_1B8AF08E8();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_1B8A3C000, v103, v104, "End BackgroundEstimator init", v105, 2u);
      MEMORY[0x1B8CC7D70](v105, -1, -1);
    }

    v106 = v122;
    sub_1B8AA85A8(v122, "BackgroundEstimator.init", 24, 2);

    (v119)(v135, v134);
    (*(v123 + 8))(v106, v136);
  }

  return v86;
}

uint64_t sub_1B8AA85A8(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8AA8844(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C90, &qword_1B8AF9198);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C98, &qword_1B8AF91A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96CA0, &qword_1B8AF91A8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AAB66C();
  v18 = v25;
  sub_1B8AF1058();
  if (v18)
  {
    v26 = 0;
    sub_1B8AAB714();
    sub_1B8AF0C88();
    sub_1B8AF0C98();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v27 = 1;
    sub_1B8AAB6C0();
    v20 = v21;
    sub_1B8AF0C88();
    (*(v22 + 8))(v20, v23);
  }

  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_1B8AA8B3C()
{
  if (*v0)
  {
    result = 0x6C69614664616F6CLL;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AA8B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001B8B060E0 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C69614664616F6CLL && a2 == 0xEA00000000006465)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B8AF0EA8();

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

uint64_t sub_1B8AA8C70(uint64_t a1)
{
  v2 = sub_1B8AAB66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AA8CAC(uint64_t a1)
{
  v2 = sub_1B8AAB66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AA8CF4(uint64_t a1)
{
  v2 = sub_1B8AAB6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AA8D30(uint64_t a1)
{
  v2 = sub_1B8AAB6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AA8D6C(uint64_t a1)
{
  v2 = sub_1B8AAB714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AA8DA8(uint64_t a1)
{
  v2 = sub_1B8AAB714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AA8DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B8AAA9B0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1B8AA8E2C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v4 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = sub_1B8AD73F8(v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v8;
}

uint64_t sub_1B8AA8EF0(uint64_t a1)
{
  v2 = sub_1B8AAB474();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AA8F2C(uint64_t a1)
{
  v2 = sub_1B8AAB474();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t BackgroundEstimator.Estimation.description.getter()
{
  sub_1B8AA7170(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  sub_1B8AAA7CC();
  v1 = sub_1B8AF0608();
  v3 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BC0, &qword_1B8AF8CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8AF6490;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B8AAA830();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  return sub_1B8AF0688();
}

uint64_t BackgroundEstimator.Estimation.Classification.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B8AF0BE8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B8AA90D0()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();
  return sub_1B8AF1038();
}

uint64_t sub_1B8AA9144()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();
  return sub_1B8AF1038();
}

uint64_t sub_1B8AA9198@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B8AF0BE8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1B8AA9264@<X0>(uint64_t *a1@<X8>)
{
  sub_1B8A3F920();
  v2 = sub_1B8AF09C8();
  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = a1;
    v15 = MEMORY[0x1E69E7CC0];
    result = sub_1B8AD84CC(0, v3, 0);
    v5 = 0;
    v6 = v15;
    v7 = (v2 + 40);
    while (v5 < *(v2 + 16))
    {
      v9 = *(v7 - 1);
      v8 = *v7;

      if (sub_1B8AF0BE8())
      {

        sub_1B8AAB2D4();
        swift_allocError();
        *v13 = v9;
        v13[1] = v8;
        swift_willThrow();
      }

      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_1B8AD84CC((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v12;
      v7 += 2;
      if (v3 == v5)
      {

        a1 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v14 = sub_1B8ABE290(v6);

    *a1 = v14;
  }

  return result;
}

uint64_t sub_1B8AA944C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6966697373616C63 && a2 == 0xEF736E6F69746163)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AA94DC(uint64_t a1)
{
  v2 = sub_1B8AAA884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AA9518(uint64_t a1)
{
  v2 = sub_1B8AAA884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BackgroundEstimator.Estimation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BC8, &qword_1B8AF8CF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AAA884();

  sub_1B8AF1058();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BD8, &qword_1B8AF8D00);
  sub_1B8AAA8D8();
  sub_1B8AF0CC8();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B8AA96C8()
{
  sub_1B8AA7170(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  sub_1B8AAA7CC();
  v1 = sub_1B8AF0608();
  v3 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BC0, &qword_1B8AF8CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8AF6490;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B8AAA830();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  return sub_1B8AF0688();
}

uint64_t BackgroundEstimator.estimateBackground(text:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1B8AF02F8();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AA98A4, 0, 0);
}

uint64_t sub_1B8AA98A4()
{
  v46 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  sub_1B8AF02E8();
  v3 = sub_1B8AF0318();
  v4 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v5 = *(v0 + 136);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, v4, v7, "BackgroundEstimator.estimateBackground", "", v6, 2u);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  v12 = *(v0 + 104);

  (*(v11 + 16))(v8, v9, v10);
  v13 = sub_1B8AF0368();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 144) = sub_1B8AF0358();
  (*(v11 + 8))(v9, v10);
  *(v0 + 152) = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_logger;
  v16 = sub_1B8AF0388();
  v17 = sub_1B8AF08E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B8A3C000, v16, v17, "Begin BackgroundEstimator estimateBackground", v18, 2u);
    MEMORY[0x1B8CC7D70](v18, -1, -1);
  }

  sub_1B8AEDD94(0xD000000000000014, 0x80000001B8B05500);
  if (v19)
  {
    sub_1B8AA9264(v45);

    v20 = v45[0];
    if (v45[0])
    {

      v21 = sub_1B8AF0388();
      v22 = sub_1B8AF08E8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v45[0] = v24;
        *v23 = 136315138;
        *(v0 + 72) = v20;
        sub_1B8AAAEA4();

        v25 = sub_1B8AF0D28();
        v27 = v26;
        v28 = *(v0 + 72);

        v29 = sub_1B8A9E870(v25, v27, v45);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_1B8A3C000, v21, v22, "End BackgroundEstimator override=%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x1B8CC7D70](v24, -1, -1);
        MEMORY[0x1B8CC7D70](v23, -1, -1);
      }

      v30 = *(v0 + 104);
      **(v0 + 80) = v20;
LABEL_17:
      sub_1B8AAA340(v30, "BackgroundEstimator.estimateBackground", 38, 2);
      v42 = *(v0 + 136);
      v41 = *(v0 + 144);
      v43 = *(v0 + 128);

      v44 = *(v0 + 8);

      return v44();
    }
  }

  *(v0 + 40) = &type metadata for FeatureFlags;
  *(v0 + 48) = sub_1B8A9708C();
  *(v0 + 16) = 2;
  v31 = sub_1B8AEFCD8();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v31 & 1) == 0)
  {
    v37 = sub_1B8AF0388();
    v38 = sub_1B8AF08E8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B8A3C000, v37, v38, "End BackgroundEstimator estimateBackground no override or feature flag, defaulting to empty", v39, 2u);
      MEMORY[0x1B8CC7D70](v39, -1, -1);
    }

    v30 = *(v0 + 104);
    v40 = *(v0 + 80);

    *v40 = MEMORY[0x1E69E7CD0];
    goto LABEL_17;
  }

  v32 = *(*(v0 + 104) + 16);
  v33 = swift_task_alloc();
  *(v0 + 160) = v33;
  *v33 = v0;
  v33[1] = sub_1B8AA9EB8;
  v34 = *(v0 + 88);
  v35 = *(v0 + 96);

  return sub_1B8A83078(v0 + 56, v34, v35);
}

uint64_t sub_1B8AA9EB8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1B8AAA1A0;
  }

  else
  {
    v3 = sub_1B8AA9FCC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8AA9FCC()
{
  v21 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);

  v4 = sub_1B8AF0388();
  v5 = sub_1B8AF08E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136642819;
    *(v0 + 64) = v3;
    sub_1B8AAAEA4();

    v8 = sub_1B8AF0D28();
    v10 = v9;
    v11 = *(v0 + 64);

    v12 = sub_1B8A9E870(v8, v10, &v20);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1B8A3C000, v4, v5, "End BackgroundEstimator estimateBackground output=%{sensitive}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CC7D70](v7, -1, -1);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v13 = *(v0 + 144);
  v14 = *(v0 + 104);
  **(v0 + 80) = v3;
  sub_1B8AAA340(v14, "BackgroundEstimator.estimateBackground", 38, 2);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B8AAA1A0()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v1;
  v5 = sub_1B8AF0388();
  v6 = sub_1B8AF08D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B8A3C000, v5, v6, "End BackgroundEstimator estimateBackground with error: %@", v7, 0xCu);
    sub_1B8A897C4(v8, &qword_1EBA96B08, &qword_1B8AF94B0);
    MEMORY[0x1B8CC7D70](v8, -1, -1);
    MEMORY[0x1B8CC7D70](v7, -1, -1);
  }

  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  v14 = v0[13];

  swift_willThrow();
  sub_1B8AAA340(v14, "BackgroundEstimator.estimateBackground", 38, 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B8AAA340(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t BackgroundEstimator.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_logger;
  v3 = sub_1B8AF03A8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_signposter;
  v5 = sub_1B8AF0328();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t BackgroundEstimator.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_logger;
  v3 = sub_1B8AF03A8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_signposter;
  v5 = sub_1B8AF0328();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

unint64_t sub_1B8AAA774()
{
  result = qword_1EDB75370;
  if (!qword_1EDB75370)
  {
    sub_1B8AEFCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB75370);
  }

  return result;
}

unint64_t sub_1B8AAA7CC()
{
  result = qword_1EDB749E8;
  if (!qword_1EDB749E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA965E8, &qword_1B8AF6770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB749E8);
  }

  return result;
}

unint64_t sub_1B8AAA830()
{
  result = qword_1EDB749F8;
  if (!qword_1EDB749F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB749F8);
  }

  return result;
}

unint64_t sub_1B8AAA884()
{
  result = qword_1EBA96BD0;
  if (!qword_1EBA96BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BD0);
  }

  return result;
}

unint64_t sub_1B8AAA8D8()
{
  result = qword_1EBA96BE0;
  if (!qword_1EBA96BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA96BD8, &qword_1B8AF8D00);
    sub_1B8AAA95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BE0);
  }

  return result;
}

unint64_t sub_1B8AAA95C()
{
  result = qword_1EBA96BE8;
  if (!qword_1EBA96BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BE8);
  }

  return result;
}

uint64_t sub_1B8AAA9B0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C60, &qword_1B8AF9178);
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C68, &qword_1B8AF9180);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C70, &qword_1B8AF9188);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v37 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B8AAB66C();
  v19 = v36;
  sub_1B8AF1048();
  if (!v19)
  {
    v36 = v12;
    v20 = sub_1B8AF0C78();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = sub_1B8AE4FD0();
    v23 = v11;
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v25 = v11;
      v26 = sub_1B8AF0B08();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190) + 48);
      *v28 = &type metadata for BackgroundEstimator.Error;
      v18 = v15;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v36 + 8))(v15, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v42 = 1;
      sub_1B8AAB6C0();
      sub_1B8AF0BF8();
      v24 = v36;
      (*(v34 + 8))(v6, v33);
      (*(v24 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 0;
    }

    else
    {
      v42 = 0;
      sub_1B8AAB714();
      sub_1B8AF0BF8();
      v31 = v36;
      v18 = sub_1B8AF0C18();
      (*(v35 + 8))(v10, v7);
      (*(v31 + 8))(v15, v23);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v37);
  return v18;
}

unint64_t sub_1B8AAAEA4()
{
  result = qword_1EBA96BF0;
  if (!qword_1EBA96BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BF0);
  }

  return result;
}

unint64_t sub_1B8AAAEFC()
{
  result = qword_1EBA96BF8;
  if (!qword_1EBA96BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BF8);
  }

  return result;
}

uint64_t type metadata accessor for BackgroundEstimator()
{
  result = qword_1EDB751A8;
  if (!qword_1EDB751A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8AAAFA4()
{
  result = sub_1B8AF03A8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B8AF0328();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B8AAB0C4(uint64_t *a1, int a2)
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

uint64_t sub_1B8AAB10C(uint64_t result, int a2, int a3)
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

unint64_t sub_1B8AAB17C()
{
  result = qword_1EBA96C00;
  if (!qword_1EBA96C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C00);
  }

  return result;
}

unint64_t sub_1B8AAB1D4()
{
  result = qword_1EBA96C08;
  if (!qword_1EBA96C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C08);
  }

  return result;
}

unint64_t sub_1B8AAB22C()
{
  result = qword_1EBA96C10;
  if (!qword_1EBA96C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C10);
  }

  return result;
}

unint64_t sub_1B8AAB280()
{
  result = qword_1EBA96C18;
  if (!qword_1EBA96C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C18);
  }

  return result;
}

unint64_t sub_1B8AAB2D4()
{
  result = qword_1EBA96C20;
  if (!qword_1EBA96C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C20);
  }

  return result;
}

_OWORD *sub_1B8AAB328(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B8AAB338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1B8AAB388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B8AAB3DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B8AAB3F4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B8AAB424(void *a1)
{
  a1[1] = sub_1B8AAB474();
  a1[2] = sub_1B8AAB4C8();
  a1[3] = sub_1B8AAB51C();
  a1[4] = sub_1B8AAB570();
  a1[5] = sub_1B8AAB5C4();
  result = sub_1B8AAB618();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AAB474()
{
  result = qword_1EBA96C30;
  if (!qword_1EBA96C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C30);
  }

  return result;
}

unint64_t sub_1B8AAB4C8()
{
  result = qword_1EBA96C38;
  if (!qword_1EBA96C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C38);
  }

  return result;
}

unint64_t sub_1B8AAB51C()
{
  result = qword_1EBA96C40;
  if (!qword_1EBA96C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C40);
  }

  return result;
}

unint64_t sub_1B8AAB570()
{
  result = qword_1EBA96C48;
  if (!qword_1EBA96C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C48);
  }

  return result;
}

unint64_t sub_1B8AAB5C4()
{
  result = qword_1EBA96C50;
  if (!qword_1EBA96C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C50);
  }

  return result;
}

unint64_t sub_1B8AAB618()
{
  result = qword_1EBA96C58;
  if (!qword_1EBA96C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C58);
  }

  return result;
}

unint64_t sub_1B8AAB66C()
{
  result = qword_1EBA96C78;
  if (!qword_1EBA96C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C78);
  }

  return result;
}

unint64_t sub_1B8AAB6C0()
{
  result = qword_1EBA96C80;
  if (!qword_1EBA96C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C80);
  }

  return result;
}

unint64_t sub_1B8AAB714()
{
  result = qword_1EBA96C88;
  if (!qword_1EBA96C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C88);
  }

  return result;
}

unint64_t sub_1B8AAB79C()
{
  result = qword_1EBA96CA8;
  if (!qword_1EBA96CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CA8);
  }

  return result;
}

unint64_t sub_1B8AAB7F4()
{
  result = qword_1EBA96CB0;
  if (!qword_1EBA96CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CB0);
  }

  return result;
}

unint64_t sub_1B8AAB84C()
{
  result = qword_1EBA96CB8;
  if (!qword_1EBA96CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CB8);
  }

  return result;
}

unint64_t sub_1B8AAB8A4()
{
  result = qword_1EBA96CC0;
  if (!qword_1EBA96CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CC0);
  }

  return result;
}

unint64_t sub_1B8AAB8FC()
{
  result = qword_1EBA96CC8;
  if (!qword_1EBA96CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CC8);
  }

  return result;
}

unint64_t sub_1B8AAB954()
{
  result = qword_1EBA96CD0;
  if (!qword_1EBA96CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CD0);
  }

  return result;
}

unint64_t sub_1B8AAB9AC()
{
  result = qword_1EBA96CD8;
  if (!qword_1EBA96CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CD8);
  }

  return result;
}

unint64_t sub_1B8AABA04()
{
  result = qword_1EBA96CE0;
  if (!qword_1EBA96CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CE0);
  }

  return result;
}

uint64_t sub_1B8AABA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1B8AEFB28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a1;
  v19[1] = a2;
  sub_1B8AEFB08();
  sub_1B8A3F920();
  v11 = sub_1B8AF09D8();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v14 = v11 == 48 && v13 == 0xE100000000000000;
  if (v14 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v16 = 0;
  }

  else if (v11 == 49 && v13 == 0xE100000000000000)
  {

    v16 = 1;
  }

  else
  {
    v18 = sub_1B8AF0EA8();

    if (v18)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }
  }

  *a3 = v16;
  return result;
}

uint64_t *sub_1B8AABBF0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4)
{
  v21 = *v4;
  type metadata accessor for StandaloneBinarySemaphore();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = 0;
  type metadata accessor for Condition();
  v11 = swift_allocObject();
  *(v11 + 16) = *sub_1B8AF0188();
  *(v10 + 120) = v11;
  v4[10] = v10;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_1B8A85238(a4, (v4 + 5));
  sub_1B8A85238(a4, v23);

  v12 = sub_1B8A9D8F0(v22, a1, a2, a3, v23);
  v14 = v13;

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(v23);

  if (v5)
  {
    v15 = v4[2];

    v16 = v4[4];

    __swift_destroy_boxed_opaque_existential_0(v4 + 5);
    v17 = v4[10];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v22[0];
    v19 = v22[1];
    v4[11] = v12;
    v4[12] = v14;
    *(v4 + 13) = v18;
    *(v4 + 15) = v19;
  }

  return v4;
}

uint64_t *sub_1B8AABD9C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4)
{
  v21 = *v4;
  type metadata accessor for StandaloneBinarySemaphore();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = 0;
  type metadata accessor for Condition();
  v11 = swift_allocObject();
  *(v11 + 16) = *sub_1B8AF0188();
  *(v10 + 120) = v11;
  v4[10] = v10;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_1B8A85238(a4, (v4 + 5));
  sub_1B8A85238(a4, v23);

  v12 = sub_1B8A9DD6C(v22, a1, a2, a3, v23);
  v14 = v13;

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(v23);

  if (v5)
  {
    v15 = v4[2];

    v16 = v4[4];

    __swift_destroy_boxed_opaque_existential_0(v4 + 5);
    v17 = v4[10];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v22[0];
    v19 = v22[1];
    v4[11] = v12;
    v4[12] = v14;
    v4[13] = v18;
    v4[14] = v19;
  }

  return v4;
}

uint64_t PeopleCounter.__allocating_init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  PeopleCounter.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(a1, a2, a3, a4, a5 & 1);
  return v13;
}

uint64_t PeopleCounter.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v87 = a4;
  v104 = a5;
  v94 = a3;
  v85 = a1;
  v86 = a2;
  v83 = *v5;
  v6 = sub_1B8AF03A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v95 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v81 - v11;
  v99 = sub_1B8AF02F8();
  v12 = *(v99 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v99);
  v84 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v81 - v16;
  v18 = sub_1B8AF0328();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_logger;
  if (qword_1EDB74C88 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_1EDB75B08);
  v89 = v7;
  v90 = v6;
  v25 = *(v7 + 16);
  v100 = v23;
  v97 = v25;
  v98 = v7 + 16;
  v25(v5 + v23, v24, v6);
  v26 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v18, qword_1EDB75B50);
  v92 = v19;
  v28 = *(v19 + 16);
  v28(v5 + v26, v27, v18);
  v82 = v26;
  v93 = v18;
  v28(v22, v5 + v26, v18);
  sub_1B8AF02E8();
  v91 = v22;
  v29 = sub_1B8AF0318();
  v30 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v29, v30, v32, "PeopleCounter.init", "", v31, 2u);
    MEMORY[0x1B8CC7D70](v31, -1, -1);
  }

  v33 = v99;
  (*(v12 + 16))(v84, v17, v99);
  v34 = sub_1B8AF0368();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v84 = sub_1B8AF0358();
  (*(v12 + 8))(v17, v33);
  v99 = v5;
  v37 = v96;
  v38 = v90;
  v97(v96, v5 + v100, v90);
  v39 = v86;

  v40 = sub_1B8AF0388();
  v41 = sub_1B8AF08E8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v101[0] = v43;
    *v42 = 136446466;
    v44 = v85;
    *(v42 + 4) = sub_1B8A9E870(v85, v39, v101);
    *(v42 + 12) = 2048;
    v45 = v104;
    v46 = v87;
    if (v104)
    {
      v47 = -1;
    }

    else
    {
      v47 = v87;
    }

    *(v42 + 14) = v47;
    _os_log_impl(&dword_1B8A3C000, v40, v41, "Begin PeopleCounter init useCase=%{public}s  pid=%ld", v42, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1B8CC7D70](v43, -1, -1);
    MEMORY[0x1B8CC7D70](v42, -1, -1);

    v48 = v39;
    v49 = v96;
    v96 = *(v89 + 8);
    (v96)(v49, v38);
  }

  else
  {

    v48 = v39;
    v96 = *(v89 + 8);
    (v96)(v37, v38);
    v45 = v104;
    v46 = v87;
    v44 = v85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B8AF6490;
  v105 = 3;
  sub_1B8A96340(v101);
  v51 = v103;
  __swift_project_boxed_opaque_existential_1(v101, v102);
  v52 = v51[1];
  v53 = sub_1B8AEFE68();
  v55 = v54;
  __swift_destroy_boxed_opaque_existential_0(v101);
  *(v50 + 32) = v53;
  *(v50 + 40) = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = v44;
  *(v56 + 24) = v48;
  *(v56 + 32) = v46;
  *(v56 + 40) = v45 & 1;
  v102 = &type metadata for CoherentAssetLockWrapperFactory;
  v103 = &off_1F3748D00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96CE8, &qword_1B8AF94A8);
  swift_allocObject();
  v57 = v88;
  v58 = sub_1B8AABD9C(v50, sub_1B8AAE1B8, v56, v101);
  if (v57)
  {
    v97(v95, (v99 + v100), v38);
    v59 = v57;
    v60 = sub_1B8AF0388();
    v61 = sub_1B8AF08D8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      v64 = v57;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v65;
      *v63 = v65;
      _os_log_impl(&dword_1B8A3C000, v60, v61, "End PeopleCounter init with error: %@", v62, 0xCu);
      sub_1B8A897C4(v63, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v63, -1, -1);
      MEMORY[0x1B8CC7D70](v62, -1, -1);
    }

    v66 = v96;
    (v96)(v95, v38);
    swift_willThrow();
    v67 = v91;
    sub_1B8AAC9A4(v91, "PeopleCounter.init", 18, 2);

    v68 = sub_1B8AEFCC8();
    (*(*(v68 - 8) + 8))(v94, v68);
    v69 = *(v92 + 8);
    v70 = v67;
    v71 = v93;
    v69(v70, v93);
    v72 = v99;
    v66(v99 + v100, v38);
    v69(v72 + v82, v71);
    v73 = *(*v72 + 48);
    v74 = *(*v72 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v72 = v99;
    *(v99 + OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_coherentAssets) = v58;
    v75 = sub_1B8AF0388();
    v76 = sub_1B8AF08E8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_1B8A3C000, v75, v76, "End PeopleCounter init", v77, 2u);
      MEMORY[0x1B8CC7D70](v77, -1, -1);
    }

    v78 = v91;
    sub_1B8AAC9A4(v91, "PeopleCounter.init", 18, 2);

    v79 = sub_1B8AEFCC8();
    (*(*(v79 - 8) + 8))(v94, v79);
    (*(v92 + 8))(v78, v93);
  }

  return v72;
}

uint64_t sub_1B8AAC9A4(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8AACC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{

  result = sub_1B8AAE624(a1, a2, a3, a4 & 1);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v12;
  }

  return result;
}

SensitiveContentAnalysisML::PeopleCounter::Count::Value_optional __swiftcall PeopleCounter.Count.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8AF0BE8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PeopleCounter.Count.Value.rawValue.getter()
{
  v1 = 6647407;
  if (*v0 != 1)
  {
    v1 = 0x656C7069746C756DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869768058;
  }
}

uint64_t sub_1B8AACD4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 6647407;
  if (v2 != 1)
  {
    v4 = 0x656C7069746C756DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1869768058;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 6647407;
  if (*a2 != 1)
  {
    v8 = 0x656C7069746C756DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1869768058;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8AF0EA8();
  }

  return v11 & 1;
}

uint64_t sub_1B8AACE38()
{
  v1 = *v0;
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8AACECC()
{
  *v0;
  *v0;
  sub_1B8AF05F8();
}

uint64_t sub_1B8AACF4C()
{
  v1 = *v0;
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

void sub_1B8AACFE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 6647407;
  if (v2 != 1)
  {
    v5 = 0x656C7069746C756DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1869768058;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PeopleCounter.Count.hasPeople.getter()
{
  if (*v0)
  {
    v1 = sub_1B8AF0EA8();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t PeopleCounter.Count.hasMultiplePeople.getter()
{
  if (*v0 && *v0 != 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1B8AF0EA8();
  }

  return v1 & 1;
}

uint64_t sub_1B8AAD1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AAD23C(uint64_t a1)
{
  v2 = sub_1B8AAE1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AAD278(uint64_t a1)
{
  v2 = sub_1B8AAE1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PeopleCounter.Count.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96CF0, &qword_1B8AF94B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AAE1DC();
  sub_1B8AF1058();
  v12 = v8;
  sub_1B8AAE230();
  sub_1B8AF0CC8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PeopleCounter.countPeople(pixelBuffer:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8AF02F8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AAD4E8, 0, 0);
}

uint64_t sub_1B8AAD4E8()
{
  v1 = v0[8];
  v2 = v0[4];
  sub_1B8AF02E8();
  v3 = sub_1B8AF0318();
  v4 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, v4, v7, "PeopleCounter.countPeople", "", v6, 2u);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];

  (*(v11 + 16))(v8, v9, v10);
  v13 = sub_1B8AF0368();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[9] = sub_1B8AF0358();
  (*(v11 + 8))(v9, v10);
  v0[10] = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_logger;
  v16 = sub_1B8AF0388();
  v17 = sub_1B8AF08E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B8A3C000, v16, v17, "Begin PeopleCounter countPeople", v18, 2u);
    MEMORY[0x1B8CC7D70](v18, -1, -1);
  }

  v20 = v0[3];
  v19 = v0[4];

  v21 = *(v19 + OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_coherentAssets);
  v22 = v20;
  v23 = swift_task_alloc();
  v0[11] = v23;
  *v23 = v0;
  v23[1] = sub_1B8AAD744;
  v24 = v0[3];

  return sub_1B8A99FF8((v0 + 13), v21, v24);
}

uint64_t sub_1B8AAD744()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1B8AADA20;
  }

  else
  {
    v3 = sub_1B8AAD858;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8AAD858()
{
  v19 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 32) + *(v0 + 80);
  v3 = sub_1B8AF0388();
  v4 = sub_1B8AF08E8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136642819;
    v7 = 0xE300000000000000;
    v8 = 6647407;
    if (v1 != 1)
    {
      v8 = 0x656C7069746C756DLL;
      v7 = 0xE800000000000000;
    }

    if (v1)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1869768058;
    }

    if (v1)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    v11 = sub_1B8A9E870(v9, v10, &v18);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1B8A3C000, v3, v4, "End PeopleCounter countPeople result=%{sensitive}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
    MEMORY[0x1B8CC7D70](v5, -1, -1);
  }

  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);
  v15 = *(v0 + 32);
  **(v0 + 16) = v1;
  sub_1B8AADBC4(v15, "PeopleCounter.countPeople", 25, 2);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1B8AADA20()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[4];
  v4 = v1;
  v5 = sub_1B8AF0388();
  v6 = sub_1B8AF08D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B8A3C000, v5, v6, "End PeopleCounter countPeople with error: %@", v8, 0xCu);
    sub_1B8A897C4(v9, &qword_1EBA96B08, &qword_1B8AF94B0);
    MEMORY[0x1B8CC7D70](v9, -1, -1);
    MEMORY[0x1B8CC7D70](v8, -1, -1);
  }

  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  v16 = v0[4];

  swift_willThrow();
  sub_1B8AADBC4(v16, "PeopleCounter.countPeople", 25, 2);

  v17 = v0[1];
  v18 = v0[12];

  return v17();
}

uint64_t sub_1B8AADBC4(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t PeopleCounter.deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_coherentAssets);

  return v0;
}

uint64_t PeopleCounter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_coherentAssets);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

id SCMLPeopleCount.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMLPeopleCount.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLPeopleCount();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void SCMLImageSanitization.peopleCount.getter(char *a1@<X8>)
{
  v3 = [v1 peopleCountInternal];
  if (v3)
  {
    v4 = v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML15SCMLPeopleCount_count];
  }

  else
  {
    v4 = 3;
  }

  *a1 = v4;
}

unint64_t sub_1B8AAE1DC()
{
  result = qword_1EBA96CF8;
  if (!qword_1EBA96CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CF8);
  }

  return result;
}

unint64_t sub_1B8AAE230()
{
  result = qword_1EBA96D00;
  if (!qword_1EBA96D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D00);
  }

  return result;
}

unint64_t sub_1B8AAE2AC()
{
  result = qword_1EBA96D10;
  if (!qword_1EBA96D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D10);
  }

  return result;
}

uint64_t type metadata accessor for PeopleCounter()
{
  result = qword_1EDB75318;
  if (!qword_1EDB75318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8AAE354()
{
  result = sub_1B8AF03A8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B8AF0328();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B8AAE4CC()
{
  result = qword_1EBA96D18;
  if (!qword_1EBA96D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D18);
  }

  return result;
}

unint64_t sub_1B8AAE524()
{
  result = qword_1EBA96D20;
  if (!qword_1EBA96D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D20);
  }

  return result;
}

unint64_t sub_1B8AAE57C()
{
  result = qword_1EBA96D28;
  if (!qword_1EBA96D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D28);
  }

  return result;
}

unint64_t sub_1B8AAE5D0()
{
  result = qword_1EBA96D30;
  if (!qword_1EBA96D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D30);
  }

  return result;
}

uint64_t sub_1B8AAE624(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - v14;
  v16 = sub_1B8A89360();
  if (v4)
  {
  }

  v49 = v16;
  if (v16)
  {
    v18 = 3;
  }

  else
  {
    v18 = 13;
  }

  v52 = v18;
  v19 = sub_1B8AEFCC8();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = type metadata accessor for AFMModel();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v47 = v20;
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v40 = a1;
  v41 = a4;
  v42 = a3;
  v48 = a2;
  v25 = sub_1B8AF03A8();
  v26 = __swift_project_value_buffer(v25, qword_1EDB75B38);
  v45 = *(v25 - 8);
  v46 = v24;
  v27 = *(v45 + 16);
  v43 = v25;
  v27(v23 + v24, v26, v25);
  v28 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v29 = sub_1B8AF0328();
  v30 = __swift_project_value_buffer(v29, qword_1EDB75B50);
  v31 = *(*(v29 - 8) + 16);
  v44 = v28;
  v31(v23 + v28, v30, v29);
  v32 = v52;
  v53 = v52;
  sub_1B8A93BF0(v50);
  v33 = v23 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
  v34 = v50[1];
  *v33 = v50[0];
  *(v33 + 16) = v34;
  *(v33 + 32) = v51;
  LOBYTE(v50[0]) = v32;
  sub_1B8AA2E1C(v15, v13);
  v35 = type metadata accessor for AFMModelCore();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_1B8A8AB94(v50, v40, v48, v42, v41 & 1, v13);
  sub_1B8A897C4(v15, &qword_1EBA96528, &unk_1B8AF64B0);
  *(v23 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v38;
  return v49;
}

uint64_t sub_1B8AAEA74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1B8AD846C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B8AF0A38();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1B8AD846C((v13 > 1), v14 + 1, 1);
      v7 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v14 + 1;
    v15 = v26 + 16 * v14;
    *(v15 + 32) = 0x79656C696D73;
    *(v15 + 40) = 0xE600000000000000;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1B8A896DC(result, v12, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1B8A896DC(result, v12, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1B8AAECBC(void *a1@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = sub_1B8AF06A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AF0698();
  v7 = sub_1B8AF0678();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    goto LABEL_33;
  }

  v41 = MEMORY[0x1E69E7CD0];
  v10 = objc_opt_self();
  v11 = sub_1B8AEFC18();
  *&v46 = 0;
  v12 = [v10 JSONObjectWithData:v11 options:0 error:&v46];

  if (v12)
  {
    v13 = v46;
    sub_1B8AF0A18();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C28, &qword_1B8AF8FC0);
    if (swift_dynamicCast())
    {
      v37 = v7;
      v38 = v9;
      v39 = a1;
      v14 = 0;
      v15 = v43;
      v16 = v43 + 64;
      v17 = 1 << *(v43 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v43 + 64);
      v20 = (v17 + 63) >> 6;
      while (1)
      {
        if (!v19)
        {
          if (v20 <= v14 + 1)
          {
            v22 = v14 + 1;
          }

          else
          {
            v22 = v20;
          }

          v23 = v22 - 1;
          while (1)
          {
            v21 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v21 >= v20)
            {
              v19 = 0;
              v44 = 0u;
              v45 = 0u;
              v43 = 0u;
              goto LABEL_18;
            }

            v19 = *(v16 + 8 * v21);
            ++v14;
            if (v19)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
        }

        v21 = v14;
LABEL_17:
        v24 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v25 = v24 | (v21 << 6);
        v26 = (*(v15 + 48) + 16 * v25);
        v28 = *v26;
        v27 = v26[1];
        sub_1B8A7BBE0(*(v15 + 56) + 32 * v25, v42);
        *&v43 = v28;
        *(&v43 + 1) = v27;
        sub_1B8AAB328(v42, &v44);

        v23 = v21;
LABEL_18:
        v46 = v43;
        v47[0] = v44;
        v47[1] = v45;
        v29 = *(&v43 + 1);
        if (!*(&v43 + 1))
        {

          sub_1B8A89878(v37, v38);
          v35 = v41;
          a1 = v39;
          goto LABEL_31;
        }

        v30 = v46;
        sub_1B8AAB328(v47, &v43);
        if (v30 == 0x79656C696D73 && v29 == 0xE600000000000000)
        {
        }

        else
        {
          v31 = sub_1B8AF0EA8();

          if ((v31 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        sub_1B8A7BBE0(&v43, v42);
        v32 = swift_dynamicCast();
        if ((v32 & 1) != 0 && v40 == 1)
        {
          sub_1B8ABCC84(v32);
        }

LABEL_7:
        __swift_destroy_boxed_opaque_existential_0(&v43);
        v14 = v23;
      }
    }

    sub_1B8A89878(v7, v9);
  }

  else
  {
    v33 = v46;
    v34 = sub_1B8AEFBD8();

    swift_willThrow();
    sub_1B8A89878(v7, v9);
  }

  v35 = MEMORY[0x1E69E7CD0];
LABEL_31:
  *a1 = v35;
  v36 = *MEMORY[0x1E69E9840];
}

uint64_t SmileyClassifier.__allocating_init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  SmileyClassifier.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(a1, a2, a3, a4, a5 & 1);
  return v13;
}

char *SmileyClassifier.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v126 = a5;
  v103 = a4;
  v118 = a3;
  v110 = a2;
  v102 = a1;
  v101 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v99 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v98 - v11;
  v12 = sub_1B8AF03A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v115 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v98 - v17;
  v107 = sub_1B8AF02F8();
  v18 = *(v107 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v107);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v98 - v23;
  v123 = sub_1B8AF0328();
  v25 = *(v123 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_logger;
  if (qword_1EDB74A00 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v12, qword_1EDB75AF0);
  v116 = v13;
  v31 = *(v13 + 16);
  v119 = v29;
  v120 = v12;
  v121 = v31;
  v122 = v13 + 16;
  v31(&v6[v29], v30, v12);
  v32 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v33 = v123;
  v34 = __swift_project_value_buffer(v123, qword_1EDB75B50);
  v112 = v25;
  v35 = *(v25 + 16);
  v105 = v34;
  v35(&v6[v32]);
  v100 = v32;
  v104 = v35;
  (v35)(v28, &v6[v32], v33);
  sub_1B8AF02E8();
  v111 = v28;
  v36 = sub_1B8AF0318();
  v37 = sub_1B8AF0908();
  v38 = sub_1B8AF0928();
  v113 = v6;
  if (v38)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v36, v37, v40, "SmileyClassifier.init", "", v39, 2u);
    v41 = v39;
    v6 = v113;
    MEMORY[0x1B8CC7D70](v41, -1, -1);
  }

  v42 = v107;
  (*(v18 + 16))(v22, v24, v107);
  v43 = sub_1B8AF0368();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v109 = sub_1B8AF0358();
  (*(v18 + 8))(v24, v42);
  v46 = v120;
  v47 = v114;
  v121(v114, &v6[v119], v120);
  v48 = v110;

  v49 = sub_1B8AF0388();
  v50 = sub_1B8AF08E8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v124[0] = v52;
    *v51 = 136446466;
    *(v51 + 4) = sub_1B8A9E870(v102, v48, v124);
    *(v51 + 12) = 2048;
    v53 = v103;
    if (v126)
    {
      v53 = -1;
    }

    *(v51 + 14) = v53;
    _os_log_impl(&dword_1B8A3C000, v49, v50, "Begin SmileyClassifier init useCase=%{public}s  pid=%ld", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x1B8CC7D70](v52, -1, -1);
    MEMORY[0x1B8CC7D70](v51, -1, -1);
  }

  v114 = *(v116 + 8);
  (v114)(v47, v46);
  v54 = sub_1B8AEFCC8();
  v55 = *(v54 - 8);
  v56 = v117;
  (*(v55 + 16))(v117, v118, v54);
  v106 = v55;
  v57 = *(v55 + 56);
  v107 = v54;
  v57(v56, 0, 1, v54);
  v58 = type metadata accessor for AFMModel();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v63 = __swift_project_value_buffer(v46, qword_1EDB75B38);
  v121((v61 + v62), v63, v46);
  v64 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  v104(v61 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter, v105, v123);
  v127 = 10;
  v65 = v108;
  sub_1B8A93BF0(v124);
  if (v65)
  {

    sub_1B8A897C4(v117, &qword_1EBA96528, &unk_1B8AF64B0);
    v73 = v120;
    (v114)(v61 + v62, v120);
    v74 = *(v112 + 8);
    v74(v61 + v64, v123);
    v75 = *(*v61 + 48);
    v76 = *(*v61 + 52);
    swift_deallocPartialClassInstance();
    v77 = v113;
    v121(v115, &v113[v119], v73);
    v78 = v65;
    v79 = sub_1B8AF0388();
    v80 = sub_1B8AF08D8();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      v83 = v65;
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v84;
      *v82 = v84;
      _os_log_impl(&dword_1B8A3C000, v79, v80, "End SmileyClassifier init with error: %@", v81, 0xCu);
      sub_1B8A897C4(v82, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v82, -1, -1);
      MEMORY[0x1B8CC7D70](v81, -1, -1);
    }

    v85 = v114;
    v86 = v120;
    (v114)(v115, v120);
    swift_willThrow();
    v87 = v111;
    sub_1B8AAFD68(v111, "SmileyClassifier.init", 21, 2);

    (*(v106 + 8))(v118, v107);
    v88 = v87;
    v89 = v123;
    v74(v88, v123);
    v85(&v77[v119], v86);
    v74(&v77[v100], v89);
    v90 = *(*v77 + 48);
    v91 = *(*v77 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v66 = v61 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v67 = v124[1];
    *v66 = v124[0];
    *(v66 + 16) = v67;
    *(v66 + 32) = v125;
    LOBYTE(v124[0]) = 10;
    v68 = v117;
    v69 = v99;
    sub_1B8AA2E1C(v117, v99);
    v70 = type metadata accessor for AFMModelCore();
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    v93 = sub_1B8A8AB94(v124, v102, v48, v103, v126 & 1, v69);
    sub_1B8A897C4(v68, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v61 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v93;
    v77 = v113;
    *(v113 + 2) = v61;
    v94 = sub_1B8AF0388();
    v95 = sub_1B8AF08E8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1B8A3C000, v94, v95, "End SmileyClassifier init", v96, 2u);
      MEMORY[0x1B8CC7D70](v96, -1, -1);
    }

    v97 = v111;
    sub_1B8AAFD68(v111, "SmileyClassifier.init", 21, 2);

    (*(v106 + 8))(v118, v107);
    (*(v112 + 8))(v97, v123);
  }

  return v77;
}

uint64_t sub_1B8AAFD68(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t SmileyClassifier.Result.description.getter()
{
  sub_1B8AAEA74(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  sub_1B8AAA7CC();
  v1 = sub_1B8AF0608();
  v3 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BC0, &qword_1B8AF8CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8AF6490;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B8AAA830();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  return sub_1B8AF0688();
}

uint64_t SmileyClassifier.Result.Classification.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B8AF0BE8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B8AB015C()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();
  return sub_1B8AF1038();
}

uint64_t sub_1B8AB01C0()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();
  return sub_1B8AF1038();
}

uint64_t sub_1B8AB020C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B8AF0BE8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1B8AB02D0(uint64_t a1)
{
  v2 = sub_1B8AB1360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB030C(uint64_t a1)
{
  v2 = sub_1B8AB1360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SmileyClassifier.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96D38, &qword_1B8AF9798);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AB1360();

  sub_1B8AF1058();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96D48, &qword_1B8AF97A0);
  sub_1B8AB13B4();
  sub_1B8AF0CC8();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B8AB04BC()
{
  sub_1B8AAEA74(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  sub_1B8AAA7CC();
  v1 = sub_1B8AF0608();
  v3 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BC0, &qword_1B8AF8CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8AF6490;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B8AAA830();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  return sub_1B8AF0688();
}

uint64_t SmileyClassifier.classify(text:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B8AF02F8();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AB0690, 0, 0);
}

uint64_t sub_1B8AB0690()
{
  v41 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  sub_1B8AF02E8();
  v3 = sub_1B8AF0318();
  v4 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, v4, v7, "SmileyClassifier.classify", "", v6, 2u);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);

  (*(v11 + 16))(v8, v9, v10);
  v13 = sub_1B8AF0368();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_1B8AF0358();
  (*(v11 + 8))(v9, v10);
  *(v0 + 112) = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_logger;
  v16 = sub_1B8AF0388();
  v17 = sub_1B8AF08E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B8A3C000, v16, v17, "Begin SmileyClassifier classify", v18, 2u);
    MEMORY[0x1B8CC7D70](v18, -1, -1);
  }

  sub_1B8AEDD94(0x655279656C696D73, 0xEC000000746C7573);
  if (v19)
  {
    sub_1B8AAECBC(&v40);

    v20 = v40;

    v21 = sub_1B8AF0388();
    v22 = sub_1B8AF08E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      *(v0 + 32) = v20;
      sub_1B8AB148C();

      v25 = sub_1B8AF0D28();
      v27 = v26;
      v28 = *(v0 + 32);

      v29 = sub_1B8A9E870(v25, v27, &v40);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1B8A3C000, v21, v22, "End SmileyClassifier classify override=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B8CC7D70](v24, -1, -1);
      MEMORY[0x1B8CC7D70](v23, -1, -1);
    }

    v30 = *(v0 + 64);
    **(v0 + 40) = v20;
    sub_1B8AB0F2C(v30, "SmileyClassifier.classify", 25, 2);
    v32 = *(v0 + 96);
    v31 = *(v0 + 104);
    v33 = *(v0 + 88);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v36 = *(*(v0 + 64) + 16);
    v37 = swift_task_alloc();
    *(v0 + 120) = v37;
    *v37 = v0;
    v37[1] = sub_1B8AB0AA0;
    v38 = *(v0 + 48);
    v39 = *(v0 + 56);

    return sub_1B8A82BA0(v0 + 16, v38, v39);
  }
}

uint64_t sub_1B8AB0AA0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1B8AB0D88;
  }

  else
  {
    v3 = sub_1B8AB0BB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8AB0BB4()
{
  v21 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);

  v4 = sub_1B8AF0388();
  v5 = sub_1B8AF08E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136642819;
    *(v0 + 24) = v3;
    sub_1B8AB148C();

    v8 = sub_1B8AF0D28();
    v10 = v9;
    v11 = *(v0 + 24);

    v12 = sub_1B8A9E870(v8, v10, &v20);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1B8A3C000, v4, v5, "End SmileyClassifier classify output=%{sensitive}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CC7D70](v7, -1, -1);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v13 = *(v0 + 104);
  v14 = *(v0 + 64);
  **(v0 + 40) = v3;
  sub_1B8AB0F2C(v14, "SmileyClassifier.classify", 25, 2);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v17 = *(v0 + 88);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B8AB0D88()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v1;
  v5 = sub_1B8AF0388();
  v6 = sub_1B8AF08D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B8A3C000, v5, v6, "End SmileyClassifier classify with error: %@", v8, 0xCu);
    sub_1B8A897C4(v9, &qword_1EBA96B08, &qword_1B8AF94B0);
    MEMORY[0x1B8CC7D70](v9, -1, -1);
    MEMORY[0x1B8CC7D70](v8, -1, -1);
  }

  v12 = v0[16];
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  v16 = v0[8];

  swift_willThrow();
  sub_1B8AB0F2C(v16, "SmileyClassifier.classify", 25, 2);

  v17 = v0[1];
  v18 = v0[16];

  return v17();
}

uint64_t sub_1B8AB0F2C(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t SmileyClassifier.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_logger;
  v3 = sub_1B8AF03A8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_signposter;
  v5 = sub_1B8AF0328();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t SmileyClassifier.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_logger;
  v3 = sub_1B8AF03A8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_signposter;
  v5 = sub_1B8AF0328();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

unint64_t sub_1B8AB1360()
{
  result = qword_1EBA96D40;
  if (!qword_1EBA96D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D40);
  }

  return result;
}

unint64_t sub_1B8AB13B4()
{
  result = qword_1EBA96D50;
  if (!qword_1EBA96D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA96D48, &qword_1B8AF97A0);
    sub_1B8AB1438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D50);
  }

  return result;
}

unint64_t sub_1B8AB1438()
{
  result = qword_1EBA96D58;
  if (!qword_1EBA96D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D58);
  }

  return result;
}

unint64_t sub_1B8AB148C()
{
  result = qword_1EDB74AB0;
  if (!qword_1EDB74AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB74AB0);
  }

  return result;
}

unint64_t sub_1B8AB14E4()
{
  result = qword_1EBA96D60;
  if (!qword_1EBA96D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D60);
  }

  return result;
}

uint64_t type metadata accessor for SmileyClassifier()
{
  result = qword_1EDB75278;
  if (!qword_1EDB75278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8AB1604()
{
  result = qword_1EBA96D68;
  if (!qword_1EBA96D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D68);
  }

  return result;
}

unint64_t sub_1B8AB165C()
{
  result = qword_1EBA96D70;
  if (!qword_1EBA96D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D70);
  }

  return result;
}

unint64_t sub_1B8AB16B4()
{
  result = qword_1EBA96D78;
  if (!qword_1EBA96D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D78);
  }

  return result;
}

unint64_t sub_1B8AB1708()
{
  result = qword_1EBA96D80;
  if (!qword_1EBA96D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D80);
  }

  return result;
}

uint64_t sub_1B8AB175C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DE0, &qword_1B8AF9CB0);
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

uint64_t sub_1B8AB1834(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DD0, &qword_1B8AF9CA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AB360C();
  sub_1B8AF1058();
  v12 = 0;
  sub_1B8AF0CA8();
  if (!v1)
  {
    v11 = 1;
    sub_1B8AF0CA8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B8AB19D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AB1A54(uint64_t a1)
{
  v2 = sub_1B8AB3A8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB1A90(uint64_t a1)
{
  v2 = sub_1B8AB3A8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AB1ACC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96E30, &qword_1B8AF9F88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AB3A8C();
  sub_1B8AF1048();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_1B8AF0C28();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_1B8AB1C2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96E40, &qword_1B8AF9F90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AB3A8C();
  sub_1B8AF1058();
  sub_1B8AF0CA8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B8AB1D64()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v4;
  v5 = sub_1B8AD713C(v1);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8AB3660(inited + 32);
  return v7;
}

uint64_t sub_1B8AB1E14(uint64_t a1)
{
  v2 = sub_1B8AB37E4();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AB1E50(uint64_t a1)
{
  v2 = sub_1B8AB37E4();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B8AB1E8C()
{
  if (*v0)
  {
    return 98;
  }

  else
  {
    return 97;
  }
}

uint64_t sub_1B8AB1EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 97 && a2 == 0xE100000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B8AF0EA8();

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

uint64_t sub_1B8AB1F6C(uint64_t a1)
{
  v2 = sub_1B8AB360C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB1FA8(uint64_t a1)
{
  v2 = sub_1B8AB360C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AB1FE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B8AB3464(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B8AB2010(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1B8AB1834(a1);
}

unint64_t sub_1B8AB202C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v4 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = sub_1B8AD71E0(v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8AB3660(inited + 32);
  return v8;
}

uint64_t sub_1B8AB20E0(uint64_t a1)
{
  v2 = sub_1B8AB2FAC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AB211C(uint64_t a1)
{
  v2 = sub_1B8AB2FAC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void TextImageAlignmentCalculator.init()(void *a1@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v2 = [objc_allocWithZone(SCMLMADImageEncoder) initWithError_];
  v3 = v13[0];
  if (v2)
  {
    v4 = v2;
    v5 = objc_allocWithZone(SCMLMADTextEncoder);
    v13[0] = 0;
    v6 = v3;
    v7 = [v5 initWithError_];
    v8 = v13[0];
    if (v7)
    {
      *a1 = v4;
      a1[1] = v7;
      v9 = v8;
    }

    else
    {
      v11 = v13[0];
      sub_1B8AEFBD8();

      swift_willThrow();
    }
  }

  else
  {
    v10 = v13[0];
    sub_1B8AEFBD8();

    swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t TextImageAlignmentCalculator.calculateAlignment(text:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 232) = a3;
  *(v5 + 240) = a4;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  *(v5 + 248) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1B8AB22C4, 0, 0);
}

uint64_t sub_1B8AB22C4()
{
  v1 = v0[30];
  v2 = v0[31];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1B8AB23F8;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA964F0, &qword_1B8AF6288);
  v0[33] = v4;
  v0[25] = v4;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B8AB175C;
  v0[21] = &block_descriptor_0;
  v0[22] = v3;
  [v2 embedPixelBufferAsynchronously:v1 requestType:0 version:8 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B8AB23F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_1B8AB2A20;
  }

  else
  {
    v3 = sub_1B8AB2508;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8AB2508()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[29];
  v0[35] = v0[26];
  v5 = sub_1B8AF0658();
  v0[36] = v5;
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1B8AB2634;
  v6 = swift_continuation_init();
  v0[25] = v2;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B8AB175C;
  v0[21] = &block_descriptor_3;
  v0[22] = v6;
  [v1 embedTextAsynchronously:v5 version:8 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B8AB2634()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_1B8AB2A8C;
  }

  else
  {
    v3 = sub_1B8AB2744;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8AB2744()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 208);
  v29 = *(v0 + 248);

  v3 = sub_1B8AB2B30(v1);
  v30 = *(v0 + 248);
  v4 = sub_1B8AB2B30(v2);
  v5 = [v2 bias];
  if (v5)
  {
    v6 = v5;
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [v2 scale];
  if (v9)
  {
    v10 = v9;
    [v9 floatValue];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = v3[2];
  v14 = v4[2];
  if (v13 != v14)
  {
    v19 = *(v0 + 280);
    sub_1B8AB2C24();
    swift_allocError();
    *v20 = v13;
    v20[1] = v14;
    swift_willThrow();

    v21 = *(v0 + 8);
    goto LABEL_12;
  }

  v15 = sub_1B8AB2C78(v3, v4);
  v16 = *(v15 + 16);
  if (v16)
  {
    if (v16 > 7)
    {
      v17 = v16 & 0x7FFFFFFFFFFFFFF8;
      v23 = v15 + 48;
      v18 = 0.0;
      v24 = v16 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v18 = (((((((v18 + COERCE_FLOAT(*(v23 - 16))) + COERCE_FLOAT(HIDWORD(*(v23 - 16)))) + COERCE_FLOAT(*(v23 - 8))) + COERCE_FLOAT(HIDWORD(*(v23 - 16)))) + COERCE_FLOAT(*v23)) + COERCE_FLOAT(HIDWORD(*v23))) + COERCE_FLOAT(*(v23 + 8))) + COERCE_FLOAT(HIDWORD(*v23));
        v23 += 32;
        v24 -= 8;
      }

      while (v24);
      if (v16 == v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0.0;
    }

    v25 = v16 - v17;
    v26 = (v15 + 4 * v17 + 32);
    do
    {
      v27 = *v26++;
      v18 = v18 + v27;
      --v25;
    }

    while (v25);
  }

  else
  {
    v18 = 0.0;
  }

LABEL_21:
  v28 = *(v0 + 216);

  *v28 = 1.0 / (expf(-(v8 + (v12 * v18))) + 1.0);
  v21 = *(v0 + 8);
LABEL_12:

  return v21();
}

uint64_t sub_1B8AB2A20()
{
  v1 = *(v0 + 272);
  swift_willThrow();
  v2 = *(v0 + 272);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B8AB2A8C()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  swift_willThrow();

  v4 = v0[37];
  v5 = v0[1];

  return v5();
}

void *sub_1B8AB2B30(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = *v1;
  v10 = 0;
  v2 = [a1 float32DataWithError_];
  v3 = v10;
  if (v2)
  {
    v4 = sub_1B8AEFC28();
    v6 = v5;

    v7 = sub_1B8AB31A4(v4, v6);
    sub_1B8A8988C(v4, v6);
  }

  else
  {
    v7 = v3;
    sub_1B8AEFBD8();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

unint64_t sub_1B8AB2C24()
{
  result = qword_1EBA96D88;
  if (!qword_1EBA96D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D88);
  }

  return result;
}

uint64_t sub_1B8AB2C78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1B8AD84EC(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_1B8AD84EC((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 4 * v16 + 32) = v13 * v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 4 * v6);
        v19 = *(v25 + 32 + 4 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_1B8AD84EC((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 4 * v21 + 32) = v18 * v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8AB2E54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B8AB2E9C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TextImageAlignmentCalculator.Result(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextImageAlignmentCalculator.Result(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1B8AB2F5C(void *a1)
{
  a1[1] = sub_1B8AB2FAC();
  a1[2] = sub_1B8AB3000();
  a1[3] = sub_1B8AB3054();
  a1[4] = sub_1B8AB30A8();
  a1[5] = sub_1B8AB30FC();
  result = sub_1B8AB3150();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AB2FAC()
{
  result = qword_1EBA96D90;
  if (!qword_1EBA96D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D90);
  }

  return result;
}

unint64_t sub_1B8AB3000()
{
  result = qword_1EBA96D98;
  if (!qword_1EBA96D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D98);
  }

  return result;
}

unint64_t sub_1B8AB3054()
{
  result = qword_1EBA96DA0;
  if (!qword_1EBA96DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DA0);
  }

  return result;
}

unint64_t sub_1B8AB30A8()
{
  result = qword_1EBA96DA8;
  if (!qword_1EBA96DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DA8);
  }

  return result;
}

unint64_t sub_1B8AB30FC()
{
  result = qword_1EBA96DB0;
  if (!qword_1EBA96DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DB0);
  }

  return result;
}

unint64_t sub_1B8AB3150()
{
  result = qword_1EBA96DB8;
  if (!qword_1EBA96DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DB8);
  }

  return result;
}

uint64_t sub_1B8AB31A4(uint64_t a1, unint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_42;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    LOBYTE(v3) = v3 - v4;
    if (!v5)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = HIWORD(a2);
    goto LABEL_9;
  }

  LOBYTE(v3) = BYTE4(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    goto LABEL_47;
  }

LABEL_9:
  if ((v3 & 3) == 0)
  {
    if (v2 == 2)
    {
      v18 = *(a1 + 16);
      v19 = *(a1 + 24);
      v12 = sub_1B8AEFB68();
      if (v12)
      {
        v20 = sub_1B8AEFB88();
        if (__OFSUB__(v18, v20))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
        }

        v12 += v18 - v20;
      }

      v5 = __OFSUB__(v19, v18);
      v8 = v19 - v18;
      if (v5)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v13 = sub_1B8AEFB78();
      if (!v12)
      {
        goto LABEL_44;
      }

LABEL_31:
      if (v13 >= v8)
      {
        v21 = v8;
      }

      else
      {
        v21 = v13;
      }

      if ((v21 + 3) < 7)
      {
        goto LABEL_44;
      }

      if (v21 >= 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 + 3;
      }

      v23 = sub_1B8ADA9A4(v22 >> 2, 0);
      v24 = v23 + 4;
      v25 = v22 & 0xFFFFFFFFFFFFFFFCLL;
      p_src = v12;
LABEL_41:
      memcpy(v24, p_src, v25);
      result = v23;
      goto LABEL_45;
    }

    if (v2 == 1)
    {
      v7 = a1;
      v8 = (a1 >> 32) - a1;
      if (a1 >> 32 < a1)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v9 = sub_1B8AEFB68();
      if (!v9)
      {
        sub_1B8AEFB78();
        goto LABEL_44;
      }

      v10 = v9;
      v11 = sub_1B8AEFB88();
      if (__OFSUB__(v7, v11))
      {
        goto LABEL_51;
      }

      v12 = v7 - v11 + v10;
      v13 = sub_1B8AEFB78();
      if (!v12)
      {
LABEL_44:
        result = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }

      goto LABEL_31;
    }

    __src = a1;
    v30 = a2;
    v31 = BYTE2(a2);
    v32 = BYTE3(a2);
    v33 = BYTE4(a2);
    v27 = (a2 >> 50) & 0x3F;
    v34 = BYTE5(a2);
    if (v27)
    {
      v23 = sub_1B8ADA9A4((a2 >> 50) & 0x3F, 0);
      v25 = 4 * v27;
      v24 = v23 + 4;
      p_src = &__src;
      goto LABEL_41;
    }

LABEL_42:
    result = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

  if (v2 == 2)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v6 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v2 != 1)
  {
LABEL_24:
    v6 = BYTE6(a2);
    goto LABEL_25;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v6 = HIDWORD(a1) - a1;
LABEL_25:
  sub_1B8AB36C8();
  swift_allocError();
  *v16 = v6;
  result = swift_willThrow();
LABEL_45:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B8AB3464(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DC0, &qword_1B8AF9CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AB360C();
  sub_1B8AF1048();
  v10[15] = 0;
  v8 = sub_1B8AF0C28();
  v10[14] = 1;
  sub_1B8AF0C28();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1B8AB360C()
{
  result = qword_1EBA96DC8;
  if (!qword_1EBA96DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DC8);
  }

  return result;
}

uint64_t sub_1B8AB3660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D0, &qword_1B8AF6740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8AB36C8()
{
  result = qword_1EBA96DD8;
  if (!qword_1EBA96DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DD8);
  }

  return result;
}

unint64_t sub_1B8AB3740()
{
  result = qword_1EBA96DE8;
  if (!qword_1EBA96DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DE8);
  }

  return result;
}

unint64_t sub_1B8AB3794(void *a1)
{
  a1[1] = sub_1B8AB37E4();
  a1[2] = sub_1B8AB3838();
  a1[3] = sub_1B8AB388C();
  a1[4] = sub_1B8AB38E0();
  a1[5] = sub_1B8AB3934();
  result = sub_1B8AB3988();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AB37E4()
{
  result = qword_1EBA96DF0;
  if (!qword_1EBA96DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DF0);
  }

  return result;
}

unint64_t sub_1B8AB3838()
{
  result = qword_1EBA96DF8;
  if (!qword_1EBA96DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DF8);
  }

  return result;
}

unint64_t sub_1B8AB388C()
{
  result = qword_1EBA96E00;
  if (!qword_1EBA96E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E00);
  }

  return result;
}

unint64_t sub_1B8AB38E0()
{
  result = qword_1EBA96E08;
  if (!qword_1EBA96E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E08);
  }

  return result;
}

unint64_t sub_1B8AB3934()
{
  result = qword_1EBA96E10;
  if (!qword_1EBA96E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E10);
  }

  return result;
}

unint64_t sub_1B8AB3988()
{
  result = qword_1EBA96E18;
  if (!qword_1EBA96E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E18);
  }

  return result;
}

unint64_t sub_1B8AB39E0()
{
  result = qword_1EBA96E20;
  if (!qword_1EBA96E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E20);
  }

  return result;
}

unint64_t sub_1B8AB3A38()
{
  result = qword_1EBA96E28;
  if (!qword_1EBA96E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E28);
  }

  return result;
}

unint64_t sub_1B8AB3A8C()
{
  result = qword_1EBA96E38;
  if (!qword_1EBA96E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E38);
  }

  return result;
}

unint64_t sub_1B8AB3AF4()
{
  result = qword_1EBA96E48;
  if (!qword_1EBA96E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E48);
  }

  return result;
}

unint64_t sub_1B8AB3B4C()
{
  result = qword_1EBA96E50;
  if (!qword_1EBA96E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E50);
  }

  return result;
}

unint64_t sub_1B8AB3BA4()
{
  result = qword_1EBA96E58;
  if (!qword_1EBA96E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E58);
  }

  return result;
}

uint64_t *sub_1B8AB3C10(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = sub_1B8AB5DBC(a1);
  v11[0] = 0;
  v5 = [objc_allocWithZone(SCMLImageSanitizer) initWithConfiguration:v4 error:v11];
  if (v5)
  {
    v6 = v5;
    v7 = v11[0];
    sub_1B8AB5F28(a1);

    v1[2] = v6;
  }

  else
  {
    v8 = v11[0];
    sub_1B8AEFBD8();

    swift_willThrow();
    sub_1B8AB5F28(a1);
    swift_deallocPartialClassInstance();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1B8AB3D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = sub_1B8AF04B8();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AB3DFC, 0, 0);
}

uint64_t sub_1B8AB3DFC()
{
  v1 = v0[2];
  result = sub_1B8AF0438();
  v0[8] = result;
  v3 = *(result + 16);
  v0[9] = v3;
  if (v3)
  {
    v4 = v0[6];
    v0[10] = 0;
    if (*(result + 16))
    {
      (*(v4 + 16))(v0[7], result + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v0[5]);
      v5 = swift_task_alloc();
      v0[11] = v5;
      *v5 = v0;
      v5[1] = sub_1B8AB3F34;
      v6 = v0[7];
      v7 = v0[3];
      v8 = v0[4];
      v9 = v0[2];

      return sub_1B8AB421C(v6, v9, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = v0[7];

    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_1B8AB3F34()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[8];
    (*(v2[6] + 8))(v2[7], v2[5]);

    v5 = sub_1B8AB41B8;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v5 = sub_1B8AB4080;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1B8AB4080()
{
  v1 = v0[10] + 1;
  if (v1 == v0[9])
  {
    v3 = v0[7];
    v2 = v0[8];

    v4 = v0[1];

    v4();
  }

  else
  {
    v0[10] = v1;
    v5 = v0[8];
    if (v1 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      (*(v0[6] + 16))(v0[7], v5 + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v1, v0[5]);
      v6 = swift_task_alloc();
      v0[11] = v6;
      *v6 = v0;
      v6[1] = sub_1B8AB3F34;
      v7 = v0[7];
      v8 = v0[3];
      v9 = v0[4];
      v10 = v0[2];

      sub_1B8AB421C(v7, v10, v8);
    }
  }
}

uint64_t sub_1B8AB41B8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1B8AB421C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B8AF04B8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1B8AF04E8();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_1B8AF04D8();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_1B8AF0498();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AB4400, 0, 0);
}

uint64_t sub_1B8AB4400()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[2];
  sub_1B8AF04A8();
  LODWORD(v5) = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x1E69C6318])
  {
    v6 = v0[18];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    (*(v0[16] + 96))(v6, v0[15]);
    (*(v8 + 32))(v7, v6, v9);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_1B8AB4BF0;
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];

    return sub_1B8AB3D38(v10, v13, v11);
  }

  if (v5 != *MEMORY[0x1E69C6328])
  {
    goto LABEL_12;
  }

  v15 = v0[18];
  (*(v0[16] + 96))(v15, v0[15]);
  v5 = *v15;
  v0[23] = *v15;
  v16 = *(v5 + 16);
  v0[24] = v16;
  if (!v16)
  {
LABEL_30:

    goto LABEL_31;
  }

  v0[25] = 0;
  if (!*(v5 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    if (v5 != *MEMORY[0x1E69C6320])
    {
      if (v5 == *MEMORY[0x1E69C62F8] || v5 == *MEMORY[0x1E69C6310])
      {
        goto LABEL_31;
      }

      if (v5 != *MEMORY[0x1E69C6300] && v5 != *MEMORY[0x1E69C62E0] && v5 != *MEMORY[0x1E69C62D8])
      {
        if (v5 == *MEMORY[0x1E69C6338])
        {
          v23 = v0[18];
          v25 = v0[13];
          v24 = v0[14];
          v26 = v0[12];
          v27 = v0[5];
          (*(v0[16] + 96))(v23, v0[15]);
          (*(v25 + 32))(v24, v23, v26);
          v28 = *(v27 + 16);
          v29 = swift_task_alloc();
          v0[19] = v29;
          *v29 = v0;
          v29[1] = sub_1B8AB4974;
          v30 = v0[14];
          v31 = v0[3];
          v32 = v0[4];

          return sub_1B8AB5F84(v30, v31, v32, v28);
        }

        if (v5 == *MEMORY[0x1E69C62E8] || v5 != *MEMORY[0x1E69C6308] && v5 != *MEMORY[0x1E69C62C8] && v5 != *MEMORY[0x1E69C6340])
        {
          v45 = v0[17];
          v46 = v0[2];
          (*(v0[16] + 8))(v0[18], v0[15]);
          sub_1B8AF04A8();
          v47 = sub_1B8AF06B8();
          v49 = v48;
          sub_1B8AB6C40();
          swift_allocError();
          *v50 = v47;
          *(v50 + 8) = v49;
          *(v50 + 16) = 1;
          swift_willThrow();
          v52 = v0[17];
          v51 = v0[18];
          v53 = v0[14];
          v54 = v0[11];
          v55 = v0[8];

          v44 = v0[1];
          goto LABEL_32;
        }
      }
    }

    (*(v0[16] + 8))(v0[18], v0[15]);
LABEL_31:
    v40 = v0[17];
    v39 = v0[18];
    v41 = v0[14];
    v42 = v0[11];
    v43 = v0[8];

    v44 = v0[1];
LABEL_32:

    return v44();
  }

  while (1)
  {
    v17 = v0[3];
    result = sub_1B8AF0438();
    v0[26] = result;
    v18 = *(result + 16);
    v0[27] = v18;
    if (v18)
    {
      break;
    }

    v19 = v0[24];
    v20 = v0[25];

    if (v20 + 1 == v19)
    {
      v38 = v0[23];
      goto LABEL_30;
    }

    v21 = v0[25] + 1;
    v0[25] = v21;
    if (v21 >= *(v0[23] + 16))
    {
      goto LABEL_11;
    }
  }

  v0[28] = 0;
  if (*(result + 16))
  {
    (*(v0[7] + 16))(v0[8], result + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);
    v33 = swift_task_alloc();
    v0[29] = v33;
    *v33 = v0;
    v33[1] = sub_1B8AB4DB4;
    v34 = v0[8];
    v35 = v0[4];
    v36 = v0[5];
    v37 = v0[3];

    return sub_1B8AB421C(v34, v37, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8AB4974()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1B8AB4B38;
  }

  else
  {
    v3 = sub_1B8AB4A88;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8AB4A88()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B8AB4B38()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B8AB4BF0()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1B8AB5178;
  }

  else
  {
    v3 = sub_1B8AB4D04;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8AB4D04()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B8AB4DB4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[26];
    (*(v2[7] + 8))(v2[8], v2[6]);

    v5 = sub_1B8AB50D0;
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = sub_1B8AB4F04;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B8AB4F04()
{
  v1 = v0[28] + 1;
  if (v1 == v0[27])
  {
    v2 = v0[26];
    while (1)
    {
      v3 = v0[24];
      v4 = v0[25];

      if (v4 + 1 == v3)
      {
        break;
      }

      v6 = v0[25] + 1;
      v0[25] = v6;
      if (v6 >= *(v0[23] + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v7 = v0[3];
      result = sub_1B8AF0438();
      v0[26] = result;
      v8 = *(result + 16);
      v0[27] = v8;
      if (v8)
      {
        v1 = 0;
        goto LABEL_8;
      }
    }

    v14 = v0[23];

    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[14];
    v18 = v0[11];
    v19 = v0[8];

    v20 = v0[1];

    return v20();
  }

  else
  {
    result = v0[26];
LABEL_8:
    v0[28] = v1;
    if (v1 >= *(result + 16))
    {
LABEL_16:
      __break(1u);
    }

    else
    {
      (*(v0[7] + 16))(v0[8], result + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)) + *(v0[7] + 72) * v1, v0[6]);
      v9 = swift_task_alloc();
      v0[29] = v9;
      *v9 = v0;
      v9[1] = sub_1B8AB4DB4;
      v10 = v0[8];
      v11 = v0[4];
      v12 = v0[5];
      v13 = v0[3];

      return sub_1B8AB421C(v10, v13, v11);
    }
  }

  return result;
}

uint64_t sub_1B8AB50D0()
{
  v1 = v0[23];

  v2 = v0[30];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B8AB5178()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

void *sub_1B8AB5230()
{
  result = sub_1B8AB5250();
  off_1EBA96E60 = result;
  return result;
}

uint64_t sub_1B8AB5250()
{
  v0 = sub_1B8AE6C50(MEMORY[0x1E69E7CC0]);
  v1 = 0;
  for (i = 0; ; i = 1u)
  {
    v5 = v1;
    v6 = *(&unk_1F3747848 + i + 32);
    v7 = sub_1B8AF0668();
    v9 = v7;
    v10 = v8;
    if (v0[2] && (v11 = sub_1B8AC402C(v7, v8), (v12 & 1) != 0))
    {
      v13 = *(v0[7] + 8 * v11);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96E80, &qword_1B8AFA100);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B8AF6490;
    *(inited + 32) = v6;
    v15 = *(v13 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v17 = *(v13 + 3) >> 1, v17 <= v15))
    {
      v13 = sub_1B8ABAE58(isUniquelyReferenced_nonNull_native, v15 + 1, 1, v13);
      v17 = *(v13 + 3) >> 1;
    }

    v18 = *(v13 + 2);
    if (v17 <= v18)
    {
      break;
    }

    v13[v18 + 32] = *(inited + 32);

    ++*(v13 + 2);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1B8AC402C(v9, v10);
    v22 = v0[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_24;
    }

    v26 = v21;
    if (v0[3] < v25)
    {
      sub_1B8AC4E38(v25, v19);
      v20 = sub_1B8AC402C(v9, v10);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      if (v26)
      {
        goto LABEL_2;
      }

      goto LABEL_18;
    }

    if (v19)
    {
      goto LABEL_17;
    }

    v31 = v20;
    sub_1B8AC608C();
    v20 = v31;
    if (v26)
    {
LABEL_2:
      v3 = v0[7];
      v4 = *(v3 + 8 * v20);
      *(v3 + 8 * v20) = v13;

      goto LABEL_3;
    }

LABEL_18:
    v0[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v0[6] + 16 * v20);
    *v28 = v9;
    v28[1] = v10;
    *(v0[7] + 8 * v20) = v13;
    v29 = v0[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_25;
    }

    v0[2] = v30;
LABEL_3:
    v1 = 1;
    if (v5)
    {
      return v0;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B8AF0FB8();
  __break(1u);
  return result;
}

uint64_t sub_1B8AB54E0()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t *sub_1B8AB5548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1B8AB3C10(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B8AB55A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965A8, &qword_1B8AF6720);
    v3 = sub_1B8AF0A78();
    v4 = 0;
    v5 = v3 + 56;
    v25 = a1 + 32;
    v24 = v1;
    while (1)
    {
      v6 = *(v25 + v4);
      v26 = v4 + 1;
      v7 = *(v3 + 40);
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        while (1)
        {
          v14 = 0xEA00000000007974;
          v15 = 0x6566615365646F63;
          switch(*(*(v3 + 48) + v10))
          {
            case 1:
              break;
            case 2:
              v15 = 0x646E417367616C66;
              v14 = 0xEC0000007370614DLL;
              break;
            case 3:
              v14 = 0xE800000000000000;
              v15 = 0x4E4F534A6373696DLL;
              break;
            case 4:
              v15 = 0x6F43656C706F6570;
              v14 = 0xEB00000000746E75;
              break;
            case 5:
              v15 = 0x6544656C706F6570;
              v14 = 0xEF6E6F6974636574;
              break;
            case 6:
              v15 = 0x7365627570657270;
              v14 = 0xEC000000746E6563;
              break;
            case 7:
              v15 = 0xD000000000000014;
              v14 = 0x80000001B8B05560;
              break;
            case 8:
              v15 = 0xD000000000000017;
              v14 = 0x80000001B8B05580;
              break;
            case 9:
              v15 = 0xD000000000000020;
              v14 = 0x80000001B8B055A0;
              break;
            case 0xA:
              v15 = 0xD000000000000014;
              v14 = 0x80000001B8B055D0;
              break;
            case 0xB:
              v15 = 0xD000000000000013;
              v14 = 0x80000001B8B055F0;
              break;
            case 0xC:
              v15 = 0x6566615374786574;
              break;
            case 0xD:
              v15 = 0x65636E656C6F6976;
              v14 = 0xEF65726F47646E41;
              break;
            default:
              v15 = 0xD000000000000014;
              v14 = 0x80000001B8B05500;
              break;
          }

          v16 = 0x6566615365646F63;
          v17 = 0xEA00000000007974;
          switch(v6)
          {
            case 1:
              goto LABEL_44;
            case 2:
              v18 = 0x646E417367616C66;
              v19 = 1936744781;
              goto LABEL_41;
            case 3:
              v17 = 0xE800000000000000;
              if (v15 != 0x4E4F534A6373696DLL)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 4:
              v17 = 0xEB00000000746E75;
              if (v15 != 0x6F43656C706F6570)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 5:
              v17 = 0xEF6E6F6974636574;
              if (v15 != 0x6544656C706F6570)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 6:
              v18 = 0x7365627570657270;
              v19 = 1953391971;
LABEL_41:
              v17 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v15 != v18)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 7:
              v17 = 0x80000001B8B05560;
              if (v15 != 0xD000000000000014)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 8:
              v17 = 0x80000001B8B05580;
              if (v15 != 0xD000000000000017)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 9:
              v17 = 0x80000001B8B055A0;
              if (v15 != 0xD000000000000020)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 10:
              v16 = 0xD000000000000014;
              v17 = 0x80000001B8B055D0;
LABEL_44:
              if (v15 == v16)
              {
                goto LABEL_45;
              }

              goto LABEL_46;
            case 11:
              v17 = 0x80000001B8B055F0;
              if (v15 != 0xD000000000000013)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 12:
              if (v15 != 0x6566615374786574)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 13:
              v17 = 0xEF65726F47646E41;
              if (v15 != 0x65636E656C6F6976)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            default:
              v17 = 0x80000001B8B05500;
              if (v15 != 0xD000000000000014)
              {
                goto LABEL_46;
              }

LABEL_45:
              if (v14 == v17)
              {

                goto LABEL_4;
              }

LABEL_46:
              v20 = sub_1B8AF0EA8();

              if (v20)
              {
                goto LABEL_4;
              }

              v10 = (v10 + 1) & v9;
              v11 = v10 >> 6;
              v12 = *(v5 + 8 * (v10 >> 6));
              v13 = 1 << v10;
              if ((v12 & (1 << v10)) == 0)
              {
                goto LABEL_51;
              }

              break;
          }
        }
      }

LABEL_51:
      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      v4 = v26;
      if (v26 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B8AB5C54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D8, &qword_1B8AF6748);
    v3 = sub_1B8AF0A78();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1B8AF1018();

      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1B8AF0EA8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

id sub_1B8AB5DBC(uint64_t a1)
{
  v2 = [objc_allocWithZone(SCMLImageSanitizerConfiguration) init];
  [v2 setMode_];
  sub_1B8AEFEC8();
  v3 = sub_1B8AF0658();

  [v2 setModelManagerServicesUseCaseID_];

  v4 = type metadata accessor for MultimodalSanitizer.Configuration(0);
  v5 = (a1 + *(v4 + 24));
  if (*(v5 + 4))
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = *v5;
  }

  [v2 setOnBehalfOfProcessID_];
  [v2 setGranularity_];
  result = [v2 setRegion_];
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + *(v4 + 20));
  v13 = *(v10 + 56);
  v11 = v10 + 56;
  v12 = v13;
  v14 = 1 << *(v11 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
LABEL_7:
    v16 &= v16 - 1;
    v9 = 64;
  }

  while (1)
  {
    v18 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      [v2 setBackends_];
      return v2;
    }

    v16 = *(v11 + 8 * v18);
    ++v8;
    if (v16)
    {
      v8 = v18;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8AB5F28(uint64_t a1)
{
  v2 = type metadata accessor for MultimodalSanitizer.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8AB5F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8AB5FA8, 0, 0);
}

uint64_t sub_1B8AB5FA8()
{
  v1 = v0[19];
  v2 = sub_1B8AF04C8();
  v4 = v3;
  v5 = sub_1B8AE1600();
  v0[23] = v5;
  v6 = v5;
  v7 = v0[22];
  v8 = v0[20];
  sub_1B8A8988C(v2, v4);
  v9 = [objc_allocWithZone(SCMLImageSanitizerRequest) initWithPixelBuffer_];
  v0[24] = v9;
  v10 = type metadata accessor for MultimodalSanitizer.Request(0);
  v0[25] = v10;
  [v9 setKeepGoing_];
  if (*(v8 + *(v10 + 20)))
  {
    v11 = 8;
  }

  else
  {
    v11 = 7;
  }

  [v9 setStyle_];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B8AB61D0;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96E70, &qword_1B8AFA0F8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B8AB175C;
  v0[13] = &block_descriptor_1;
  v0[14] = v12;
  [v7 sanitizeRequestAsynchronously:v9 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B8AB61D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1B8AB69D0;
  }

  else
  {
    v3 = sub_1B8AB62E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B8AB62E0()
{
  v1 = [*(v0 + 144) signals];
  if (v1)
  {
    v2 = v1;
    sub_1B8AB6CAC();
    sub_1B8AF05A8();
  }

  sub_1B8AF0B98();
}

uint64_t sub_1B8AB69D0()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[26];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B8AB6A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965F0, &unk_1B8AF6780);
    v3 = sub_1B8AF0A78();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    while (1)
    {
      v6 = *(v26 + v4);
      v7 = *(v3 + 40);
      sub_1B8AF1018();
      if (v6)
      {
        v8 = 0x65636E656C6F6976;
      }

      else
      {
        v8 = 1701998439;
      }

      if (v6)
      {
        v9 = 0xE800000000000000;
      }

      else
      {
        v9 = 0xE400000000000000;
      }

      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v24 = v6;
        v16 = ~v11;
        do
        {
          if (*(*(v3 + 48) + v12))
          {
            v17 = 0x65636E656C6F6976;
          }

          else
          {
            v17 = 1701998439;
          }

          if (*(*(v3 + 48) + v12))
          {
            v18 = 0xE800000000000000;
          }

          else
          {
            v18 = 0xE400000000000000;
          }

          if (v17 == v8 && v18 == v9)
          {

            goto LABEL_4;
          }

          v20 = sub_1B8AF0EA8();

          if (v20)
          {
            goto LABEL_4;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
        }

        while ((v14 & (1 << v12)) != 0);
        LOBYTE(v6) = v24;
      }

      *(v5 + 8 * v13) = v14 | v15;
      *(*(v3 + 48) + v12) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      if (++v4 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1B8AB6C40()
{
  result = qword_1EBA96E68;
  if (!qword_1EBA96E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E68);
  }

  return result;
}

unint64_t sub_1B8AB6CAC()
{
  result = qword_1EBA96E78;
  if (!qword_1EBA96E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA96E78);
  }

  return result;
}

uint64_t sub_1B8AB6CF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B8ABE814();
  result = MEMORY[0x1B8CC6080](v2, &type metadata for MultimodalSanitizer.SignalIdentifier, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1B8ABCDAC(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t MultimodalSanitizer.SignalIdentifier.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65636E656C6F6976;
  }

  else
  {
    result = 1701998439;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AB6E3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65636E656C6F6976;
  }

  else
  {
    v4 = 1701998439;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x65636E656C6F6976;
  }

  else
  {
    v6 = 1701998439;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();
  }

  return v9 & 1;
}

uint64_t sub_1B8AB6EDC()
{
  v1 = *v0;
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8AB6F58()
{
  *v0;
  sub_1B8AF05F8();
}

uint64_t sub_1B8AB6FC0()
{
  v1 = *v0;
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

void sub_1B8AB7044(uint64_t *a1@<X8>)
{
  v2 = 1701998439;
  if (*v1)
  {
    v2 = 0x65636E656C6F6976;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MultimodalSanitizer.Configuration.init(useCaseID:signals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MultimodalSanitizer.Configuration(0);
  v7 = a3 + *(v6 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = sub_1B8AEFED8();
  result = (*(*(v8 - 8) + 32))(a3, a1, v8);
  *(a3 + *(v6 + 20)) = a2;
  return result;
}

uint64_t MultimodalSanitizer.Configuration.withOnBehalfOf(processID:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_1B8ABE1B4(v2, a2, type metadata accessor for MultimodalSanitizer.Configuration);
  result = type metadata accessor for MultimodalSanitizer.Configuration(0);
  v6 = a2 + *(result + 24);
  *v6 = a1;
  *(v6 + 4) = 0;
  return result;
}

uint64_t sub_1B8AB71A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96F60, &qword_1B8AFA3D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8AF6490;
  result = _s21ImageSanitizerBackendCMa();
  *(v0 + 32) = result;
  *(v0 + 40) = &off_1F3749BA0;
  off_1EBA96E88 = v0;
  return result;
}

uint64_t MultimodalSanitizer.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  MultimodalSanitizer.init(configuration:)(a1);
  return v5;
}

uint64_t MultimodalSanitizer.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v80 = a1;
  v94 = *MEMORY[0x1E69E9840];
  v70[3] = *v1;
  v88 = type metadata accessor for MultimodalSanitizer.Configuration(0);
  v3 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v79 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1B8AF03A8();
  v76 = *(v78 - 8);
  v5 = v76[8];
  v6 = MEMORY[0x1EEE9AC00](v78);
  v70[2] = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v70 - v8;
  *&v84 = sub_1B8AF02F8();
  v10 = *(v84 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v84);
  v83 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v70 - v14;
  v16 = sub_1B8AF0328();
  v17 = *(v16 - 8);
  isa = v17[8].isa;
  MEMORY[0x1EEE9AC00](v16);
  v75 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_signposter;
  if (qword_1EDB75390 != -1)
  {
LABEL_34:
    swift_once();
  }

  v85 = v9;
  v21 = __swift_project_value_buffer(v16, qword_1EDB75B50);
  v71 = v17;
  v22 = v17[2].isa;
  v22(&v20[v2], v21, v16);
  v23 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_logger;
  if (qword_1EBA96480 != -1)
  {
    swift_once();
  }

  v24 = v78;
  v25 = __swift_project_value_buffer(v78, qword_1EBAA5840);
  v26 = v76[2];
  v87 = v23;
  v74 = v76 + 2;
  v73 = v26;
  v26((v2 + v23), v25, v24);
  v77 = v2;
  v72 = v16;
  v22(v75, &v20[v2], v16);
  sub_1B8AF02E8();
  v27 = sub_1B8AF0318();
  v28 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v27, v28, v30, "MultimodalSanitizer.init", "", v29, 2u);
    MEMORY[0x1B8CC7D70](v29, -1, -1);
  }

  v31 = v84;
  (v10[2])(v83, v15, v84);
  v32 = sub_1B8AF0368();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v70[4] = sub_1B8AF0358();
  (v10[1])(v15, v31);
  v35 = v80 + *(v88 + 24);
  v36 = *v35;
  v16 = *(v35 + 4);
  v2 = sub_1B8AEFEC8();
  v9 = v37;
  v15 = v87;
  v38 = v85;
  v73(v85, &v87[v77], v78);
  v17 = sub_1B8AF0388();
  v39 = sub_1B8AF08E8();
  if (os_log_type_enabled(v17, v39))
  {
    if (v16)
    {
      v36 = -1;
    }

    v16 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v92[0] = v40;
    *v16 = 136315394;
    v2 = sub_1B8A9E870(v2, v9, v92);

    *(v16 + 4) = v2;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v36;
    _os_log_impl(&dword_1B8A3C000, v17, v39, "Begin MultimodalSanitizer init useCase=%s pid=%d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v41 = v40;
    v15 = v87;
    MEMORY[0x1B8CC7D70](v41, -1, -1);
    MEMORY[0x1B8CC7D70](v16, -1, -1);
  }

  else
  {
  }

  v10 = v76[1];
  (v10)(v38, v78);
  v20 = v86;
  v70[1] = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration;
  sub_1B8ABE1B4(v80, v77 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration, type metadata accessor for MultimodalSanitizer.Configuration);
  if (qword_1EBA96468 != -1)
  {
    swift_once();
  }

  v42 = off_1EBA96E88;
  v83 = *(off_1EBA96E88 + 2);
  if (!v83)
  {
    v86 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v63 = v77;
    *(v77 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_backends) = v86;
    v64 = sub_1B8AF0388();
    v65 = sub_1B8AF08E8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1B8A3C000, v64, v65, "End MultimodalSanitizer init", v66, 2u);
      MEMORY[0x1B8CC7D70](v66, -1, -1);
    }

    v67 = v75;
    sub_1B8AB80DC(v75, "MultimodalSanitizer.init", 24, 2);

    (v71[1].isa)(v67, v72);
    sub_1B8ABE3BC(v80, type metadata accessor for MultimodalSanitizer.Configuration);
    v68 = *MEMORY[0x1E69E9840];
    return v63;
  }

  v70[0] = v10;
  v43 = 0;
  v44 = *(v80 + *(v88 + 20));
  v82 = off_1EBA96E88 + 32;
  v86 = MEMORY[0x1E69E7CC0];
  v81 = off_1EBA96E88;
  while (1)
  {
    if (v43 >= v42[2])
    {
      __break(1u);
      goto LABEL_34;
    }

    v88 = v43;
    v51 = *&v82[16 * v43 + 8];
    v52 = v51[1];
    v84 = *&v82[16 * v43];
    v17 = v84;
    v85 = v51;
    v53 = v52(v84);
    v54 = *(v53 + 32);
    v55 = v54 & 0x3F;
    v56 = ((1 << v54) + 63) >> 6;
    v16 = 8 * v56;

    if (v55 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v10 = swift_slowAlloc();

    v62 = sub_1B8ABDC50(v10, v56, v53, v44);
    if (v20)
    {
      goto LABEL_36;
    }

    v2 = v62;

    swift_bridgeObjectRelease_n();
    MEMORY[0x1B8CC7D70](v10, -1, -1);
LABEL_21:
    v9 = sub_1B8ABA5C8(v2, MEMORY[0x1E69E7CD0]);

    if ((v9 & 1) == 0)
    {
      v59 = v79;
      sub_1B8ABE1B4(v80, v79, type metadata accessor for MultimodalSanitizer.Configuration);
      v10 = v85;
      v60 = v85[2];
      v93 = v84;
      __swift_allocate_boxed_opaque_existential_1(v92);
      v60(v59, v17, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_1B8ABAF4C(0, *(v86 + 2) + 1, 1, v86, &qword_1EBA96F50, &qword_1B8AFA3C8, &qword_1EBA96F58, &qword_1B8AFA3D0);
      }

      v16 = *(v86 + 2);
      v61 = *(v86 + 3);
      v17 = (v16 + 1);
      if (v16 >= v61 >> 1)
      {
        v86 = sub_1B8ABAF4C((v61 > 1), v16 + 1, 1, v86, &qword_1EBA96F50, &qword_1B8AFA3C8, &qword_1EBA96F58, &qword_1B8AFA3D0);
      }

      v45 = v93;
      v46 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
      v47 = *(*(v45 - 8) + 64);
      MEMORY[0x1EEE9AC00](v46);
      v2 = (v70 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v49 + 16))(v2);
      v9 = *v2;
      v90 = _s21ImageSanitizerBackendCMa();
      v91 = &off_1F3749BA0;
      *&v89 = v9;
      v50 = v86;
      *(v86 + 2) = v17;
      sub_1B8A4270C(&v89, &v50[40 * v16 + 32]);
      __swift_destroy_boxed_opaque_existential_0(v92);
      v20 = 0;
      v15 = v87;
    }

    v43 = v88 + 1;
    v42 = v81;
    if (v83 == (v88 + 1))
    {
      goto LABEL_30;
    }
  }

  v10 = v70;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  bzero(v70 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);
  v58 = sub_1B8ABDCE0(v70 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v56, v53, v44);
  if (!v20)
  {
    v2 = v58;

    v15 = v87;
    goto LABEL_21;
  }

  swift_willThrow();

  __break(1u);
LABEL_36:

  result = MEMORY[0x1B8CC7D70](v10, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B8AB80DC(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_1B8AF0338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1B8AF0318();
  sub_1B8AF0348();
  v22 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8AB8384@<X0>(char *a1@<X8>)
{
  v2 = sub_1B8AF0BE8();

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

uint64_t MultimodalSanitizer.Request.Origin.rawValue.getter()
{
  if (*v0)
  {
    result = 0x74757074756FLL;
  }

  else
  {
    result = 0x7475706E69;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AB8418(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74757074756FLL;
  }

  else
  {
    v4 = 0x7475706E69;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x74757074756FLL;
  }

  else
  {
    v6 = 0x7475706E69;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();
  }

  return v9 & 1;
}

uint64_t sub_1B8AB84B8()
{
  v1 = *v0;
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8AB8534()
{
  *v0;
  sub_1B8AF05F8();
}

uint64_t sub_1B8AB859C()
{
  v1 = *v0;
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8AB8620@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B8AF0BE8();

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

void sub_1B8AB867C(uint64_t *a1@<X8>)
{
  v2 = 0x7475706E69;
  if (*v1)
  {
    v2 = 0x74757074756FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MultimodalSanitizer.Request.init(prompt:origin:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for MultimodalSanitizer.Request(0);
  v7 = v6[6];
  v8 = sub_1B8AF04E8();
  result = (*(*(v8 - 8) + 32))(a3, a1, v8);
  *(a3 + v6[5]) = v5;
  *(a3 + v7) = 0;
  *(a3 + v6[7]) = 0;
  return result;
}

uint64_t MultimodalSanitizer.Request.withKeepGoing(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1B8ABE1B4(v2, a2, type metadata accessor for MultimodalSanitizer.Request);
  result = type metadata accessor for MultimodalSanitizer.Request(0);
  *(a2 + *(result + 28)) = a1;
  return result;
}

uint64_t MultimodalSanitizer.Request.withSignals(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B8ABE1B4(v2, a2, type metadata accessor for MultimodalSanitizer.Request);
  v5 = *(type metadata accessor for MultimodalSanitizer.Request(0) + 24);
  v6 = *(a2 + v5);

  *(a2 + v5) = a1;
  return result;
}

uint64_t MultimodalSanitizer.Response.safe.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = v4 & v6;
  v8 = (v3 + 63) >> 6;
  while (v7)
  {
    v9 = v1;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if ((*(*(*v0 + 56) + 12 * (v10 | (v9 << 6))) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 1;
    }

    v7 = *(v5 + 8 * v9);
    ++v1;
    if (v7)
    {
      v1 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t MultimodalSanitizer.Response.sensitive.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = v4 & v6;
  v8 = (v3 + 63) >> 6;
  while (v7)
  {
    v9 = v1;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if (*(*(*v0 + 56) + 12 * (v10 | (v9 << 6)) + 1) == 1)
    {
      return 1;
    }
  }

  while (1)
  {
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 0;
    }

    v7 = *(v5 + 8 * v9);
    ++v1;
    if (v7)
    {
      v1 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t MultimodalSanitizer.Response.signals.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1B8AB89E0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FE0, &qword_1B8AFA620);
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FE8, &qword_1B8AFA628);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FF0, &qword_1B8AFA630);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8ABF38C();
  sub_1B8AF1058();
  v19 = (v14 + 8);
  if (v27)
  {
    v29 = 1;
    sub_1B8ABF3E0();
    sub_1B8AF0C88();
    v20 = v24;
    sub_1B8AF0C98();
    (*(v23 + 8))(v8, v20);
  }

  else
  {
    v28 = 0;
    sub_1B8ABF434();
    sub_1B8AF0C88();
    sub_1B8AF0C98();
    (*(v22 + 8))(v12, v9);
  }

  return (*v19)(v17, v13);
}

unint64_t sub_1B8AB8CD0()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000021;
  }

  *v0;
  return result;
}

uint64_t sub_1B8AB8D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000021 && 0x80000001B8B06480 == a2;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B8B064B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

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

uint64_t sub_1B8AB8DEC(uint64_t a1)
{
  v2 = sub_1B8ABF38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB8E28(uint64_t a1)
{
  v2 = sub_1B8ABF38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AB8E64(uint64_t a1)
{
  v2 = sub_1B8ABF434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB8EA0(uint64_t a1)
{
  v2 = sub_1B8ABF434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AB8EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AB8F74(uint64_t a1)
{
  v2 = sub_1B8ABF3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB8FB0(uint64_t a1)
{
  v2 = sub_1B8ABF3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AB8FEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B8ABEE58(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1B8AB9040()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v6;
  v7 = sub_1B8AD7338(v1, v2, v3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v9;
}

uint64_t sub_1B8AB9114(uint64_t a1)
{
  v2 = sub_1B8ABEC60();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AB9150(uint64_t a1)
{
  v2 = sub_1B8ABEC60();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B8AB918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for MultimodalSanitizer.Request(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(v8 + 24));
  if (v11)
  {
    v43 = a1;
    v44 = v8;
    v45 = a2;
    v46 = v3;
    v12 = v11 + 56;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 56);
    v51 = v2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration;
    v16 = (v13 + 63) >> 6;

    v18 = 0;
    v50 = v11;
    v47 = v16;
    v48 = v11 + 56;
    if (v15)
    {
      while (1)
      {
        v19 = v18;
LABEL_10:
        v20 = *(*(v11 + 48) + (__clz(__rbit64(v15)) | (v19 << 6)));
        v21 = *(v51 + *(type metadata accessor for MultimodalSanitizer.Configuration(0) + 20));
        if (!*(v21 + 16))
        {
          break;
        }

        v22 = *(v21 + 40);
        sub_1B8AF1018();
        v49 = v20;
        if (v20)
        {
          v23 = 0x65636E656C6F6976;
        }

        else
        {
          v23 = 1701998439;
        }

        if (v20)
        {
          v24 = 0xE800000000000000;
        }

        else
        {
          v24 = 0xE400000000000000;
        }

        sub_1B8AF05F8();

        v25 = sub_1B8AF1038();
        v26 = -1 << *(v21 + 32);
        v27 = v25 & ~v26;
        if (((*(v21 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
LABEL_36:
          v20 = v49;
          goto LABEL_37;
        }

        v15 &= v15 - 1;
        v52 = ~v26;
        while (1)
        {
          v28 = *(*(v21 + 48) + v27) ? 0x65636E656C6F6976 : 1701998439;
          v29 = *(*(v21 + 48) + v27) ? 0xE800000000000000 : 0xE400000000000000;
          if (v28 == v23 && v29 == v24)
          {
            break;
          }

          v31 = sub_1B8AF0EA8();

          if (v31)
          {
            goto LABEL_33;
          }

          v27 = (v27 + 1) & v52;
          if (((*(v21 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

LABEL_33:
        v18 = v19;
        v11 = v50;
        v16 = v47;
        v12 = v48;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      if (v20)
      {
        v23 = 0x65636E656C6F6976;
      }

      else
      {
        v23 = 1701998439;
      }

LABEL_37:
      if (v20)
      {
        v38 = 0xE800000000000000;
      }

      else
      {
        v38 = 0xE400000000000000;
      }

      sub_1B8AB6C40();
      swift_allocError();
      *v39 = v23;
      *(v39 + 8) = v38;
      *(v39 + 16) = 0;
      swift_willThrow();
    }

    else
    {
LABEL_7:
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v19 >= v16)
        {

          v40 = v44;
          v41 = *(v43 + *(v44 + 28));
          v42 = v45;
          result = sub_1B8ABE1B4(v43, v45, type metadata accessor for MultimodalSanitizer.Request);
          *(v42 + *(v40 + 28)) = v41;
          return result;
        }

        v15 = *(v12 + 8 * v19);
        ++v18;
        if (v15)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v32 = *(a1 + *(v8 + 28));
    v33 = v2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration;
    v34 = v8;
    v35 = *(v33 + *(type metadata accessor for MultimodalSanitizer.Configuration(0) + 20));
    sub_1B8ABE1B4(a1, v10, type metadata accessor for MultimodalSanitizer.Request);
    v36 = *(v34 + 24);
    v37 = *&v10[v36];

    *&v10[v36] = v35;
    sub_1B8ABE1B4(v10, a2, type metadata accessor for MultimodalSanitizer.Request);
    *(a2 + *(v34 + 28)) = v32;
    return sub_1B8ABE3BC(v10, type metadata accessor for MultimodalSanitizer.Request);
  }

  return result;
}

uint64_t MultimodalSanitizer.sanitize(request:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1B8AF04B8();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for MultimodalSanitizer.Request(0);
  v3[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = sub_1B8AF02F8();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AB96D8, 0, 0);
}

uint64_t sub_1B8AB96D8()
{
  v1 = v0[14];
  v2 = v0[5];
  sub_1B8AF02E8();
  v3 = sub_1B8AF0318();
  v4 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, v4, v7, "MultimodalSanitizer.sanitize", "", v6, 2u);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[5];

  (*(v11 + 16))(v8, v9, v10);
  v13 = sub_1B8AF0368();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[15] = sub_1B8AF0358();
  (*(v11 + 8))(v9, v10);
  v0[16] = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_logger;
  v16 = sub_1B8AF0388();
  v17 = sub_1B8AF08E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B8A3C000, v16, v17, "Begin MultimodalSanitizer sanitize", v18, 2u);
    MEMORY[0x1B8CC7D70](v18, -1, -1);
  }

  v19 = v0[10];
  v21 = v0[4];
  v20 = v0[5];

  result = sub_1B8AB918C(v21, v19);
  v23 = *(v0[10] + *(v0[9] + 24));
  v0[17] = v23;
  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = v0[5];
  result = sub_1B8AE6D54(MEMORY[0x1E69E7CC0]);
  v0[2] = result;
  v25 = *(v24 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_backends);
  v0[18] = v25;
  v26 = *(v25 + 16);
  v0[19] = v26;
  if (v26)
  {
    v0[20] = 0;
    if (*(v25 + 16))
    {
      v27 = 0;
      while (1)
      {
        v28 = v0[10];
        v0[21] = *__swift_project_boxed_opaque_existential_1((v25 + 40 * v27 + 32), *(v25 + 40 * v27 + 56));
        result = sub_1B8AF0438();
        v0[22] = result;
        v29 = *(result + 16);
        v0[23] = v29;
        if (v29)
        {
          break;
        }

        v31 = v0[19];
        v30 = v0[20];

        if (v30 + 1 == v31)
        {
          v36 = v0[2];
          goto LABEL_18;
        }

        v27 = v0[20] + 1;
        v0[20] = v27;
        v25 = v0[18];
        if (v27 >= *(v25 + 16))
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      __break(1u);
    }

    v0[24] = 0;
    if (*(result + 16))
    {
      (*(v0[7] + 16))(v0[8], result + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);
      v32 = swift_task_alloc();
      v0[25] = v32;
      *v32 = v0;
      v32[1] = sub_1B8AB9CF4;
      v33 = v0[21];
      v34 = v0[10];
      v35 = v0[8];

      return sub_1B8AB421C(v35, v34, (v0 + 2));
    }

    goto LABEL_25;
  }

LABEL_18:
  v37 = v0[17];

  v39 = sub_1B8AB6CF8(v38);
  LOBYTE(v37) = sub_1B8ABA5C8(v37, v39);

  if ((v37 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v40 = v0[5] + v0[16];
  v41 = sub_1B8AF0388();
  v42 = sub_1B8AF08E8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1B8A3C000, v41, v42, "End MultimodalSanitizer sanitize", v43, 2u);
    MEMORY[0x1B8CC7D70](v43, -1, -1);
  }

  v45 = v0[14];
  v44 = v0[15];
  v46 = v0[13];
  v47 = v0[10];
  v48 = v0[8];
  v49 = v0[5];
  v50 = v0[3];

  *v50 = v0[2];
  sub_1B8ABE3BC(v47, type metadata accessor for MultimodalSanitizer.Request);
  sub_1B8ABA320(v49, "MultimodalSanitizer.sanitize", 28, 2);

  v51 = v0[1];

  return v51();
}

uint64_t sub_1B8AB9CF4()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[22];
    (*(v2[7] + 8))(v2[8], v2[6]);

    v5 = sub_1B8ABA138;
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = sub_1B8AB9E44;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}