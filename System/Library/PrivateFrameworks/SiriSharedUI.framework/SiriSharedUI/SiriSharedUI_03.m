void sub_21E465BB8(void *a1)
{
  v2 = v1;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD1F8();
  v22 = 0xD000000000000018;
  v23 = 0x800000021E4ED9B0;
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v20 = 32;
    v21 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("update(smartDialogCard:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v20 = 32;
    v21 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000022, 0x800000021E4ED9D0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = v22;
  v8 = v23;
  v10 = sub_21E4DBCB8();
  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(v9, v8, &v20);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v10, v5, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  v14 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v15 = [a1 cardSections];
  if (v15)
  {
    v16 = v15;
    sub_21E43F008(0, &qword_280C141A0);
    v17 = sub_21E4DD088();
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  sub_21E4782FC(v17);

  v19 = *(v14 + 80);
  *(v14 + 80) = a1;
  v18 = a1;
}

id sub_21E465EC8(unint64_t a1)
{
  v2 = v1;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD00000000000002ELL, 0x800000021E4EDA00);
  if (a1 >> 62)
  {
    v4 = sub_21E4DD488();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v4;
  v5 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v5);

  MEMORY[0x223D5ACB0](0x736D65746920, 0xE600000000000000);
  v7 = v21;
  v6 = v22;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v8 = sub_21E4DBCC8();
  __swift_project_value_buffer(v8, qword_280C14558);
  v9 = sub_21E4DD1F8();
  v21 = 0xD00000000000001ELL;
  v22 = 0x800000021E4EDA30;
  v10 = sub_21E45C20C(0);
  if (v11)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v10);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if ((v6 & 0xF00000000000000) != 0)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v7, v6);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v13 = v21;
  v12 = v22;
  v14 = sub_21E4DBCB8();
  if (os_log_type_enabled(v14, v9))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    v17 = sub_21E426648(v13, v12, &v19);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_21E3EB000, v14, v9, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x223D5BF10](v16, -1, -1);
    MEMORY[0x223D5BF10](v15, -1, -1);
  }

  else
  {
  }

  *(*(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData) + 112) = a1;

  return sub_21E466250();
}

id sub_21E466250()
{
  v1 = v0;
  v2 = 0x800000021E4EDA50;
  if (qword_280C14550 != -1)
  {
LABEL_35:
    swift_once();
  }

  v3 = sub_21E4DBCC8();
  __swift_project_value_buffer(v3, qword_280C14558);
  v4 = sub_21E4DD1F8();
  v44 = 0xD000000000000014;
  v45 = v2;
  v5 = sub_21E45C20C(0);
  if (v6)
  {
    v42 = 32;
    v43 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v5);

    MEMORY[0x223D5ACB0](v42, v43);
  }

  if (("updateSnippetSizes()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v42 = 32;
    v43 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000001FLL, 0x800000021E4EDA70);
    MEMORY[0x223D5ACB0](v42, v43);
  }

  v8 = v44;
  v7 = v45;
  v9 = sub_21E4DBCB8();
  if (os_log_type_enabled(v9, v4))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315138;
    v12 = sub_21E426648(v8, v7, &v42);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_21E3EB000, v9, v4, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x223D5BF10](v11, -1, -1);
    MEMORY[0x223D5BF10](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v14 = *(v13 + 112);
  if (v14 >> 62)
  {
    v15 = sub_21E4DD488();
    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_11:
      v39 = v13;
      v40 = (v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController);
      v1 = v14 & 0xC000000000000001;
      v2 = v14 & 0xFFFFFFFFFFFFFF8;

      v16 = 0;
      v17 = MEMORY[0x277D84F90];
      v18 = &selRef_shouldSuppress;
      while (1)
      {
        if (v1)
        {
          v19 = MEMORY[0x223D5B080](v16, v14);
        }

        else
        {
          if (v16 >= *(v2 + 16))
          {
            goto LABEL_34;
          }

          v19 = *(v14 + 8 * v16 + 32);
        }

        v20 = v19;
        v21 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v22 = [v19 v18[136]];
        if (!v22)
        {
          goto LABEL_21;
        }

        v23 = v22;
        swift_getObjectType();
        if (swift_conformsToProtocol2() || swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        v41 = v17;
        v24 = v40[3];
        v25 = v40[4];
        __swift_project_boxed_opaque_existential_0Tm(v40, v24);
        v26 = (*(v25 + 16))(v24, v25);
        [v26 frame];
        v28 = v27;

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v30 = Strong;
          result = [v23 view];
          v17 = v41;
          if (!result)
          {
            __break(1u);
            return result;
          }

          v32 = result;
          [v30 sizeOfSmartDialogHostedSnippet_];
          v34 = v33;
          swift_unknownObjectRelease();
        }

        else
        {
          v34 = 0;
          v17 = v41;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_21E443850(0, *(v17 + 2) + 1, 1, v17);
        }

        v36 = *(v17 + 2);
        v35 = *(v17 + 3);
        if (v36 >= v35 >> 1)
        {
          v17 = sub_21E443850((v35 > 1), v36 + 1, 1, v17);
        }

        *(v17 + 2) = v36 + 1;
        v37 = &v17[16 * v36];
        *(v37 + 4) = v28;
        *(v37 + 5) = v34;
        v2 = v14 & 0xFFFFFFFFFFFFFF8;
        v18 = &selRef_shouldSuppress;
LABEL_22:
        ++v16;
        if (v21 == v15)
        {

          v13 = v39;
          goto LABEL_38;
        }
      }

LABEL_21:
      goto LABEL_22;
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_38:
  v38 = *(v13 + 168);
  if (sub_21E469054(v38, v17))
  {
  }

  if ((sub_21E469054(v38, v17) & 1) == 0)
  {
    *(v13 + 168) = v17;
  }

  type metadata accessor for SmartDialogData();
  sub_21E469AD4();
  sub_21E4DBD78();
  sub_21E4DBDB8();
}

uint64_t sub_21E4667A8(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  if (result)
  {
    [result rectValue];
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    if ((*(v3 + 208) & 1) == 0)
    {
      v13.origin.x = v4;
      v13.origin.y = v5;
      v13.size.width = v6;
      v13.size.height = v7;
      result = CGRectEqualToRect(*(v3 + 176), v13);
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    v11 = 0.0;
    v10 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    if (*(v3 + 208))
    {
      return result;
    }
  }

  *(v3 + 176) = v8;
  *(v3 + 184) = v9;
  *(v3 + 192) = v10;
  *(v3 + 200) = v11;
  *(v3 + 208) = v2 == 0;
  type metadata accessor for SmartDialogData();
  sub_21E469AD4();
  sub_21E4DBD78();
  sub_21E4DBDB8();
}

void sub_21E466914(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v6.f64[0] = a1;
  v6.f64[1] = a2;
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5[8], v6), vceqq_f64(v5[9], v7)))) & 1) == 0)
  {
    v5[8].f64[0] = a1;
    v5[8].f64[1] = a2;
    v5[9].f64[0] = a3;
    v5[9].f64[1] = a4;
  }
}

void sub_21E466980(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v6.f64[0] = a1;
  v6.f64[1] = a2;
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v5 + 40), v6), vceqq_f64(*(v5 + 56), v7)))) & 1) == 0)
  {
    *(v5 + 40) = a1;
    *(v5 + 48) = a2;
    *(v5 + 56) = a3;
    *(v5 + 64) = a4;
  }
}

void sub_21E4669F0(void *a1)
{
  v2 = v1;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD1F8();
  v19 = 0xD000000000000017;
  v20 = 0x800000021E4EDA90;
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("update(backgroundView:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000021, 0x800000021E4EDAB0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = v19;
  v8 = v20;
  v10 = sub_21E4DBCB8();
  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(v9, v8, &v17);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v10, v5, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  v14 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v16 = *(v14 + 120);
  *(v14 + 120) = a1;
  v15 = a1;
}

void sub_21E466D30(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  if (*(v2 + 160) != a1)
  {
    *(v2 + 160) = a1;
  }
}

void sub_21E466D78(void *a1)
{
  v2 = v1;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD1F8();
  v19 = 0xD00000000000001ELL;
  v20 = 0x800000021E4EDAE0;
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("update(smartDialogPluginView:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000028, 0x800000021E4EDB00);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = v19;
  v8 = v20;
  v10 = sub_21E4DBCB8();
  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(v9, v8, &v17);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v10, v5, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  v14 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v16 = *(v14 + 88);
  *(v14 + 88) = a1;
  v15 = a1;
}

void sub_21E4670B8(void *a1)
{
  v2 = v1;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD1F8();
  v19 = 0xD000000000000014;
  v20 = 0x800000021E4EDB30;
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("update(attribution:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000001ELL, 0x800000021E4EDB50);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = v19;
  v8 = v20;
  v10 = sub_21E4DBCB8();
  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(v9, v8, &v17);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v10, v5, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  v14 = *(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  v16 = *(v14 + 96);
  *(v14 + 96) = a1;
  v15 = a1;
}

void sub_21E4673FC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v10 = sub_21E4DBCC8();
  __swift_project_value_buffer(v10, qword_280C14558);
  v11 = sub_21E4DD1F8();
  v23 = 0xD000000000000014;
  v24 = 0x800000021E4EDB70;
  v12 = sub_21E45C20C(0);
  if (v13)
  {
    v21 = 32;
    v22 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v12);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("update(cappedFrame:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v21 = 32;
    v22 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000018, 0x800000021E4EDB90);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v15 = v23;
  v14 = v24;
  v16 = sub_21E4DBCB8();
  if (os_log_type_enabled(v16, v11))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136315138;
    v19 = sub_21E426648(v15, v14, &v21);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_21E3EB000, v16, v11, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x223D5BF10](v18, -1, -1);
    MEMORY[0x223D5BF10](v17, -1, -1);
  }

  else
  {
  }

  v20 = *(v5 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  *(v20 + 248) = a1;
  *(v20 + 256) = a2;
  *(v20 + 264) = a3;
  *(v20 + 272) = a4;
  *(v20 + 280) = 0;
}

void sub_21E467748(double a1)
{
  v2 = v1;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD1F8();
  v16 = 0xD000000000000018;
  v17 = 0x800000021E4EDBB0;
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v14 = 32;
    v15 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("update(cappedFrame:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v14 = 32;
    v15 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000018, 0x800000021E4EDB90);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = v16;
  v8 = v17;
  v10 = sub_21E4DBCB8();
  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(v9, v8, &v14);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v10, v5, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  *(*(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData) + 288) = a1;
}

uint64_t sub_21E467A84()
{
  if (*(v0 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogInteractionManager))
  {
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_21E467ADC(double a1)
{
  v2 = v1;
  sub_21E4DD3A8();

  v4 = sub_21E4DD1B8();
  MEMORY[0x223D5ACB0](v4);

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v5 = sub_21E4DBCC8();
  __swift_project_value_buffer(v5, qword_280C14558);
  v6 = sub_21E4DD1F8();
  v18 = 0xD000000000000017;
  v19 = 0x800000021E4EDBD0;
  v7 = sub_21E45C20C(0);
  if (v8)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v7);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = (0x800000021E4EDBF0 >> 56) & 0xF;
  if ((0x800000021E4EDBF0 & 0x2000000000000000) == 0)
  {
    v9 = 39;
  }

  if (v9)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000027, 0x800000021E4EDBF0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v11 = v18;
  v10 = v19;
  v12 = sub_21E4DBCB8();
  if (os_log_type_enabled(v12, v6))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    v15 = sub_21E426648(v11, v10, &v16);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_21E3EB000, v12, v6, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x223D5BF10](v14, -1, -1);
    MEMORY[0x223D5BF10](v13, -1, -1);
  }

  else
  {
  }

  *(*(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData) + 240) = a1;
}

uint64_t sub_21E467DB0(double a1)
{
  v4 = sub_21E4DCBE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1 * 1000000000.0;
  if (COERCE__INT64(fabs(a1 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = 0xD000000000000018;
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D85168], v4);
  v9 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21E4DBDE8();

  v1 = 0x800000021E4EDC20;
  if (v35 == 1)
  {
    if (qword_280C14550 == -1)
    {
LABEL_6:
      v10 = sub_21E4DBCC8();
      __swift_project_value_buffer(v10, qword_280C14558);
      v11 = sub_21E4DD1F8();
      v35 = v2;
      v36 = v1;
      v12 = sub_21E45C20C(0);
      if (v13)
      {
        v37 = 32;
        v38 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v12);

        MEMORY[0x223D5ACB0](v37, v38);
      }

      if (("igger text animation" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v37 = 32;
        v38 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v2 + 12, 0x800000021E4EDC70);
        MEMORY[0x223D5ACB0](v37, v38);
      }

      v15 = v35;
      v14 = v36;
      v16 = sub_21E4DBCB8();
      if (os_log_type_enabled(v16, v11))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v37 = v18;
        *v17 = 136315138;
        v19 = sub_21E426648(v15, v14, &v37);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_21E3EB000, v16, v11, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x223D5BF10](v18, -1, -1);
        MEMORY[0x223D5BF10](v17, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v7, v4);
    }

LABEL_28:
    swift_once();
    goto LABEL_6;
  }

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v20 = sub_21E4DBCC8();
  __swift_project_value_buffer(v20, qword_280C14558);
  v21 = sub_21E4DD1F8();
  v35 = 0xD000000000000018;
  v36 = 0x800000021E4EDC20;
  v22 = sub_21E45C20C(0);
  if (v23)
  {
    v37 = 32;
    v38 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v22);

    MEMORY[0x223D5ACB0](v37, v38);
  }

  if (("triggerAnimation(delay:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v37 = 32;
    v38 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000024, 0x800000021E4EDC40);
    MEMORY[0x223D5ACB0](v37, v38);
  }

  v25 = v35;
  v24 = v36;
  v26 = sub_21E4DBCB8();
  if (os_log_type_enabled(v26, v21))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    v29 = sub_21E426648(v25, v24, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_21E3EB000, v26, v21, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x223D5BF10](v28, -1, -1);
    MEMORY[0x223D5BF10](v27, -1, -1);
  }

  else
  {
  }

  v30 = *(v9 + 216);
  v31 = OBJC_IVAR____TtC12SiriSharedUI24SmartDialogAnimationData_delay;
  swift_beginAccess();
  v32 = *(v5 + 24);

  v32(v30 + v31, v7, v4);
  swift_endAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35) = 1;

  sub_21E4DBDF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21E4683FC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData) + 88);
  if (v4 && (v6 = [v4 viewId]) != 0)
  {
    v7 = v6;
    v8 = sub_21E4DCF78();
    v10 = v9;

    if (v8 == a1 && v10 == a2)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_21E4DD518();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_21E468518()
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = sub_21E4DB5A8();
  v46 = 0;
  v3 = [v1 propertyListWithData:v2 options:0 format:0 error:&v46];

  if (v3)
  {
    v4 = v46;
    sub_21E4DD338();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5CF0);
    if (swift_dynamicCast())
    {
      v5 = v0;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_21E4DD3A8();

      v46 = 0xD00000000000002ALL;
      v47 = 0x800000021E4EDD70;
      v6 = sub_21E4DCEA8();
      MEMORY[0x223D5ACB0](v6);

      v8 = v46;
      v7 = v47;
      if (qword_280C14550 != -1)
      {
        swift_once();
      }

      v9 = sub_21E4DBCC8();
      __swift_project_value_buffer(v9, qword_280C14558);
      v10 = sub_21E4DD1F8();
      v46 = 0xD00000000000001FLL;
      v47 = 0x800000021E4EDCA0;
      v11 = sub_21E45C20C(0);
      if (v12)
      {
        v48 = 32;
        v49 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v11);

        MEMORY[0x223D5ACB0](v48, v49);
      }

      v13 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v13 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v48 = 32;
        v49 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v8, v7);
        MEMORY[0x223D5ACB0](v48, v49);
      }

      v15 = v46;
      v14 = v47;
      v16 = sub_21E4DBCB8();
      if (os_log_type_enabled(v16, v10))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v48 = v18;
        *v17 = 136315138;
        v19 = sub_21E426648(v15, v14, &v48);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_21E3EB000, v16, v10, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x223D5BF10](v18, -1, -1);
        MEMORY[0x223D5BF10](v17, -1, -1);
      }

      else
      {
      }

      v42 = *(*(v5 + OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData) + 224);
      sub_21E4DCE18();
    }

    else
    {
      if (qword_280C14550 != -1)
      {
        swift_once();
      }

      v36 = sub_21E4DBCC8();
      __swift_project_value_buffer(v36, qword_280C14558);
      v37 = sub_21E4DD218();
      v46 = 0xD00000000000001FLL;
      v47 = 0x800000021E4EDCA0;
      v38 = sub_21E45C20C(0);
      if (v39)
      {
        v48 = 32;
        v49 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v38);

        MEMORY[0x223D5ACB0](v48, v49);
      }

      if (("ntext with error " & 0x2F00000000000000) != 0x2000000000000000)
      {
        v48 = 32;
        v49 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](0xD000000000000056, 0x800000021E4EDD10);
        MEMORY[0x223D5ACB0](v48, v49);
      }

      v41 = v46;
      v40 = v47;
      v42 = sub_21E4DBCB8();
      if (os_log_type_enabled(v42, v37))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v48 = v44;
        *v43 = 136315138;
        v45 = sub_21E426648(v41, v40, &v48);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_21E3EB000, v42, v37, "%s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x223D5BF10](v44, -1, -1);
        MEMORY[0x223D5BF10](v43, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    v20 = v46;
    v21 = sub_21E4DB4E8();

    swift_willThrow();
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_21E4DD3A8();
    MEMORY[0x223D5ACB0](0xD000000000000041, 0x800000021E4EDCC0);
    swift_getErrorValue();
    v22 = sub_21E4DD558();
    MEMORY[0x223D5ACB0](v22);

    v24 = v46;
    v23 = v47;
    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v25 = sub_21E4DBCC8();
    __swift_project_value_buffer(v25, qword_280C14558);
    v26 = sub_21E4DD218();
    v46 = 0xD00000000000001FLL;
    v47 = 0x800000021E4EDCA0;
    v27 = sub_21E45C20C(0);
    if (v28)
    {
      v48 = 32;
      v49 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v27);

      MEMORY[0x223D5ACB0](v48, v49);
    }

    v29 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v29 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v48 = 32;
      v49 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v24, v23);
      MEMORY[0x223D5ACB0](v48, v49);
    }

    v31 = v46;
    v30 = v47;
    v32 = sub_21E4DBCB8();
    if (os_log_type_enabled(v32, v26))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48 = v34;
      *v33 = 136315138;
      v35 = sub_21E426648(v31, v30, &v48);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_21E3EB000, v32, v26, "%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x223D5BF10](v34, -1, -1);
      MEMORY[0x223D5BF10](v33, -1, -1);
    }

    else
    {
    }
  }
}

id SiriSharedUISmartDialogContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSharedUISmartDialogContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUISmartDialogContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E468E98@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  *a1 = v3;
  return result;
}

uint64_t sub_21E468F18()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

uint64_t sub_21E468F8C(uint64_t a1)
{
  v2 = sub_21E4DBFD8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21E4DC108();
}

uint64_t sub_21E469054(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_f64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_21E4690F4(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_21E43F008(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x223D5B080](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x223D5B080](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_21E4DD2F8();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_21E4DD2F8();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_21E4DD488();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_21E4DD488();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

void (*sub_21E46935C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D5B080](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21E4693DC;
  }

  __break(1u);
  return result;
}

id sub_21E4693E4()
{
  v1 = v0;
  v2 = sub_21E4DC518();
  MEMORY[0x28223BE20](v2 - 8);
  v50[1] = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_21E4DCA68();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5410);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v50 - v6);
  v8 = type metadata accessor for SiriSharedUISmartDialog();
  v9 = MEMORY[0x28223BE20](v8);
  v54 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = v50 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v50 - v13;
  v15 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_animationTrigger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5438);
  swift_allocObject();
  *&v0[v15] = sub_21E4DBD98();
  v16 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogInteractionManager;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogInteractionManager] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v50[2] = type metadata accessor for SmartDialogData();
  swift_allocObject();
  v17 = sub_21E478630();
  v18 = OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_smartDialogData] = v17;
  v19 = [objc_allocWithZone(type metadata accessor for SiriSharedUISmartDialogInteractionManager()) init];
  v20 = *&v0[v16];
  *&v0[v16] = v19;
  v21 = v19;

  v22 = *(*&v0[v18] + 224);
  sub_21E4DCE38();

  v23 = *&v0[v15];
  swift_unknownObjectWeakLoadStrong();
  v24 = *&v0[v16];
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5D00);
  swift_storeEnumTagMultiPayload();
  v25 = qword_280C15B10;

  v26 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = v53;
  v28 = __swift_project_value_buffer(v53, qword_280C16A20);
  (*(v51 + 16))(v52, v28, v27);
  SiriSharedUIReducedMotionEnabled();
  sub_21E4DCD98();
  *&v14[v8[5]] = 0x4034000000000000;
  *&v14[v8[6]] = 0x4044000000000000;
  *&v14[v8[7]] = 0x4072C00000000000;
  *&v14[v8[8]] = 0x4030000000000000;
  *&v14[v8[9]] = 0x4030000000000000;
  v29 = &v14[v8[10]];
  *v29 = SiriSharedUISmartDialogSnippetContentInsets;
  *(v29 + 1) = *&qword_21E4E4CC8;
  v30 = &v14[v8[11]];
  sub_21E469AD4();
  *v30 = sub_21E4DBF98();
  v30[1] = v31;
  *&v14[v8[12]] = v23;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakInit();

  sub_21E46A2BC(v7, &v14[v8[15]]);
  *&v59 = 0x403A000000000000;
  sub_21E445198();
  sub_21E4DBEA8();
  *&v59 = 0x4044000000000000;
  sub_21E4DBEA8();
  v32 = &v14[v8[18]];
  type metadata accessor for CGSize(0);
  v57 = 0;
  v58 = 0;
  sub_21E4DC9F8();
  v33 = v60;
  *v32 = v59;
  *(v32 + 2) = v33;
  v34 = &v14[v8[19]];
  v57 = 0;
  v58 = 0;
  sub_21E4DC9F8();
  v35 = v60;
  *v34 = v59;
  *(v34 + 2) = v35;
  v36 = &v14[v8[20]];
  LOBYTE(v57) = 1;
  sub_21E4DC9F8();
  v37 = *(&v59 + 1);
  *v36 = v59;
  *(v36 + 1) = v37;
  v38 = &v14[v8[21]];
  v57 = 0;
  sub_21E4DC9F8();
  v39 = *(&v59 + 1);
  *v38 = v59;
  *(v38 + 1) = v39;
  v40 = v8[22];
  v57 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5D10);
  sub_21E4DC9F8();
  *&v14[v40] = v59;
  v41 = v55;
  sub_21E44BCC8(v14, v55);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5D18);
  v43 = objc_allocWithZone(v42);
  sub_21E44BCC8(v41, v54);
  v44 = sub_21E4DC2C8();
  result = [v44 view];
  if (result)
  {
    v46 = result;
    [result setBackgroundColor_];

    sub_21E4DC508();
    sub_21E4DC2A8();

    sub_21E46A32C(v41);
    v47 = &v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_hostingController];
    v47[3] = v42;
    v47[4] = &off_282F83310;
    *v47 = v44;
    v1[OBJC_IVAR____TtC12SiriSharedUI32SiriSharedUISmartDialogContainer_allowDrillingInAndOut] = 0;
    v48 = type metadata accessor for SiriSharedUISmartDialogContainer();
    v56.receiver = v1;
    v56.super_class = v48;
    v49 = objc_msgSendSuper2(&v56, sel_init);
    sub_21E46A32C(v14);
    return v49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21E469AD4()
{
  result = qword_280C14DC0;
  if (!qword_280C14DC0)
  {
    type metadata accessor for SmartDialogData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14DC0);
  }

  return result;
}

uint64_t sub_21E46A2BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E46A32C(uint64_t a1)
{
  v2 = type metadata accessor for SiriSharedUISmartDialog();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21E46A3D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_21E43F008(0, a4);

  v4 = sub_21E4DD078();

  return v4;
}

id sub_21E46A458()
{
  *&v0[OBJC_IVAR___SiriSharedUISAEViewModel_inputType] = 0;
  v1 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR___SiriSharedUISAEViewModel_conversationTranscriptItems] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR___SiriSharedUISAEViewModel_serverUtterances] = v1;
  v2 = objc_allocWithZone(SiriSharedUISAEUserUtteranceViewModel);
  v3 = sub_21E4DD078();
  v4 = [v2 initWithSpeech:0 asrAlternatives:v3 latencySummary:0 shouldShow:0 taskIdentifier:0];

  *&v0[OBJC_IVAR___SiriSharedUISAEViewModel_userUtterance] = v4;
  v0[OBJC_IVAR___SiriSharedUISAEViewModel_shouldPreserveResultSpace] = 0;
  v6.receiver = v0;
  v6.super_class = SiriSharedUISAEViewModel;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21E46A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  swift_getObjectType();
  v8 = [v5 userUtterance];
  v9 = [v8 asrAlternatives];

  if (!v9)
  {
    sub_21E4DD088();
    v9 = sub_21E4DD078();
  }

  v10 = [v5 userUtterance];
  v11 = [v10 latencySummary];

  if (v11)
  {
    sub_21E4DCF78();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 userUtterance];
  v15 = [v14 shouldShow];

  v16 = [v6 userUtterance];
  v17 = [v16 taskIdentifier];

  if (v17)
  {
    sub_21E4DCF78();
    v19 = v18;

    if (v13)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20 = 0;
    if (v19)
    {
      goto LABEL_9;
    }

LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v19 = 0;
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = sub_21E4DCF68();

  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_9:
  v21 = sub_21E4DCF68();

LABEL_13:
  v22 = [objc_allocWithZone(SiriSharedUISAEUserUtteranceViewModel) initWithSpeech:a4 asrAlternatives:v9 latencySummary:v20 shouldShow:v15 taskIdentifier:v21];

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_21E43F008(0, &qword_280C14128);
  v24 = sub_21E4DD078();
  sub_21E43F008(0, &unk_280C14130);
  v25 = sub_21E4DD078();
  v26 = [v23 initWithInputType:a1 conversationTranscriptItems:v24 serverUtterances:v25 userUtterance:v22 shouldPreserveResultSpace:a5 & 1];

  return v26;
}

id sub_21E46AAB8(uint64_t a1)
{
  v3 = [v1 conversationTranscriptItems];
  if (!v3)
  {
    sub_21E43F008(0, &qword_280C14128);
    sub_21E4DD088();
    v3 = sub_21E4DD078();
  }

  v4 = [v1 serverUtterances];
  if (!v4)
  {
    sub_21E43F008(0, &unk_280C14130);
    sub_21E4DD088();
    v4 = sub_21E4DD078();
  }

  v5 = [v1 userUtterance];
  v6 = [v5 speech];

  v7 = [v1 copyWithInputType:a1 conversationTranscriptItems:v3 serverUtterances:v4 speechRecognitionHypothesis:v6 shouldPreserveResultSpace:{objc_msgSend(v1, sel_shouldPreserveResultSpace)}];
  return v7;
}

id sub_21E46AC5C(uint64_t a1)
{
  swift_getObjectType();
  v3 = [v1 userUtterance];
  v4 = [v3 asrAlternatives];

  if (!v4)
  {
    sub_21E4DD088();
    v4 = sub_21E4DD078();
  }

  v5 = [v1 userUtterance];
  v6 = [v5 latencySummary];

  if (v6)
  {
    sub_21E4DCF78();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v1 userUtterance];
  v10 = [v9 shouldShow];

  v11 = [v1 userUtterance];
  v12 = [v11 taskIdentifier];

  if (v12)
  {
    sub_21E4DCF78();
    v14 = v13;

    if (v8)
    {
      goto LABEL_8;
    }

LABEL_11:
    v15 = 0;
    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v14 = 0;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = sub_21E4DCF68();

  if (v14)
  {
LABEL_9:
    v16 = sub_21E4DCF68();

    goto LABEL_13;
  }

LABEL_12:
  v16 = 0;
LABEL_13:
  v17 = [objc_allocWithZone(SiriSharedUISAEUserUtteranceViewModel) initWithSpeech:a1 asrAlternatives:v4 latencySummary:v15 shouldShow:v10 taskIdentifier:v16];

  v18 = [v1 inputType];
  v19 = [v1 conversationTranscriptItems];
  if (!v19)
  {
    sub_21E43F008(0, &qword_280C14128);
    sub_21E4DD088();
    v19 = sub_21E4DD078();
  }

  v20 = [v1 serverUtterances];
  if (!v20)
  {
    sub_21E43F008(0, &unk_280C14130);
    sub_21E4DD088();
    v20 = sub_21E4DD078();
  }

  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInputType:v18 conversationTranscriptItems:v19 serverUtterances:v20 userUtterance:v17 shouldPreserveResultSpace:{objc_msgSend(v1, sel_shouldPreserveResultSpace)}];

  return v21;
}

id sub_21E46B134(void *a1)
{
  swift_getObjectType();
  v3 = [a1 speech];
  v4 = [a1 asrAlternatives];
  if (!v4)
  {
    sub_21E4DD088();
    v4 = sub_21E4DD078();
  }

  v5 = [a1 latencySummary];
  if (v5)
  {
    v6 = v5;
    sub_21E4DCF78();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 shouldShow];
  v10 = [a1 taskIdentifier];
  if (v10)
  {
    v11 = v10;
    sub_21E4DCF78();
    v13 = v12;

    if (v8)
    {
      goto LABEL_8;
    }

LABEL_11:
    v14 = 0;
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v13 = 0;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_8:
  v14 = sub_21E4DCF68();

  if (v13)
  {
LABEL_9:
    v15 = sub_21E4DCF68();

    goto LABEL_13;
  }

LABEL_12:
  v15 = 0;
LABEL_13:
  v16 = [objc_allocWithZone(SiriSharedUISAEUserUtteranceViewModel) initWithSpeech:v3 asrAlternatives:v4 latencySummary:v14 shouldShow:v9 taskIdentifier:v15];

  v17 = [v1 inputType];
  v18 = [v1 conversationTranscriptItems];
  if (!v18)
  {
    sub_21E43F008(0, &qword_280C14128);
    sub_21E4DD088();
    v18 = sub_21E4DD078();
  }

  v19 = [v1 serverUtterances];
  if (!v19)
  {
    sub_21E43F008(0, &unk_280C14130);
    sub_21E4DD088();
    v19 = sub_21E4DD078();
  }

  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInputType:v17 conversationTranscriptItems:v18 serverUtterances:v19 userUtterance:v16 shouldPreserveResultSpace:{objc_msgSend(v1, sel_shouldPreserveResultSpace)}];

  return v20;
}

void __swiftcall SiriSharedUISpinningActivityIndicator.init(frame:)(SiriSharedUISpinningActivityIndicator *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id SiriSharedUISpinningActivityIndicator.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___SiriSharedUISpinningActivityIndicator_ringDotScaleFinalValue] = 0x3FF4000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISpinningActivityIndicator_ringDotInset] = 0x4024000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISpinningActivityIndicator_ringDotRotationDuration] = 0x3FF8000000000000;
  *&v4[OBJC_IVAR___SiriSharedUISpinningActivityIndicator_ringBorderMaskWidth] = 0x4000000000000000;
  v9 = OBJC_IVAR___SiriSharedUISpinningActivityIndicator_contentLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v10 = OBJC_IVAR___SiriSharedUISpinningActivityIndicator_dotMaskLayer;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v26.receiver = v4;
  v26.super_class = SiriSharedUISpinningActivityIndicator;
  v11 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setUserInteractionEnabled_];
  type metadata accessor for SiriSharedUISpinningActivityIndicator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v15 = sub_21E4DCF68();
  v16 = sub_21E4DCF68();
  v17 = [v14 pathForResource:v15 ofType:v16];

  v18 = v11;
  if (v17)
  {
    v19 = [v13 bundleForClass_];
    v20 = sub_21E4DCF68();
    v21 = sub_21E4DCF68();
    v22 = [v19 pathForResource:v20 ofType:v21];

    if (v22 && (v23 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithContentsOfFile_], v22, v23))
    {
      v24 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithContentsOfFile_];

      if (v24)
      {
        sub_21E46B988(v23, v24);

        v23 = v24;
      }

      v17 = v11;
    }

    else
    {
      v23 = v11;
    }

    v18 = v17;
  }

  return v11;
}

unint64_t type metadata accessor for SiriSharedUISpinningActivityIndicator()
{
  result = qword_280C140F0;
  if (!qword_280C140F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C140F0);
  }

  return result;
}

void sub_21E46B988(void *a1, void *a2)
{
  v5 = [v2 contentLayer];
  v6 = [a1 CGImage];
  [v5 setContents_];

  v7 = [v2 dotMaskLayer];
  v8 = [a2 CGImage];
  [v7 setContents_];

  v9 = [v2 contentLayer];
  [v2 bounds];
  [v9 setFrame_];

  v10 = [v2 contentLayer];
  [v10 setContentsGravity_];

  v11 = [v2 dotMaskLayer];
  [v2 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v2 ringDotInset];
  v21 = v20;
  [v2 ringDotInset];
  v23 = v22;
  v55.origin.x = v13;
  v55.origin.y = v15;
  v55.size.width = v17;
  v55.size.height = v19;
  v56 = CGRectInset(v55, v21, v23);
  [v11 setFrame_];

  v24 = [v2 dotMaskLayer];
  [v2 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [v2 ringDotInset];
  v34 = v33;
  [v2 ringDotInset];
  v36 = v35;
  v57.origin.x = v26;
  v57.origin.y = v28;
  v57.size.width = v30;
  v57.size.height = v32;
  v58 = CGRectInset(v57, v34, v36);
  [v24 setCornerRadius_];

  v37 = [v2 dotMaskLayer];
  v38 = [objc_opt_self() blackColor];
  v39 = [v38 colorWithAlphaComponent_];

  v40 = [v39 CGColor];
  [v37 setBorderColor_];

  v41 = [v2 dotMaskLayer];
  [v2 ringBorderMaskWidth];
  [v41 setBorderWidth_];

  v42 = sub_21E4DCF68();
  v43 = [objc_opt_self() animationWithKeyPath_];

  v44 = sub_21E4DB768();
  [v43 setFromValue_];

  v45 = sub_21E4DB768();
  [v43 setToValue_];

  v46 = v43;
  [v2 ringDotRotationDuration];
  [v46 setDuration_];
  LODWORD(v47) = 2139095040;
  [v46 setRepeatCount_];
  [v46 setRemovedOnCompletion_];

  v48 = [v2 dotMaskLayer];
  v49 = sub_21E4DCF68();
  [v48 addAnimation:v46 forKey:v49];

  v50 = [v2 contentLayer];
  v51 = [v2 dotMaskLayer];
  [v50 setMask_];

  v52 = [v2 layer];
  v53 = [v2 contentLayer];
  [v52 addSublayer_];
}

Swift::Void __swiftcall SiriSharedUISpinningActivityIndicator.showSpinner()()
{
  v1 = sub_21E4DCF68();
  v2 = [objc_opt_self() animationWithKeyPath_];

  v3 = [v0 dotMaskLayer];
  v4 = [v3 presentationLayer];

  v5 = &selRef_setResultViewFromLoading_;
  if (v4)
  {
    v6 = [v4 borderColor];
    v7 = [v0 dotMaskLayer];
    v8 = sub_21E4DCF68();
    [v7 removeAnimationForKey_];

    v9 = [v0 &selRef_bezierPathWithRect_ + 6];
    [v9 setBorderColor_];

    [v2 setFromValue_];
    v5 = &selRef_setResultViewFromLoading_;
  }

  else
  {
    v10 = [objc_opt_self() blackColor];
    v11 = [v10 colorWithAlphaComponent_];

    v12 = [v11 CGColor];
    [v2 setFromValue_];
  }

  v13 = [objc_opt_self() blackColor];
  v14 = [v13 v5[404]];

  v15 = [v14 CGColor];
  [v2 setToValue_];

  v16 = v2;
  [v0 ringDotRotationDuration];
  [v16 setDuration_];
  [v16 setFillMode_];
  [v16 setRemovedOnCompletion_];

  v18 = [v0 dotMaskLayer];
  v19 = sub_21E4DCF68();
  [v18 addAnimation:v16 forKey:v19];
}

Swift::Void __swiftcall SiriSharedUISpinningActivityIndicator.layoutSubviews()()
{
  v28.super_class = SiriSharedUISpinningActivityIndicator;
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  v1 = [v0 contentLayer];
  [v0 bounds];
  [v1 setFrame_];

  v2 = [v0 dotMaskLayer];
  [v0 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v0 ringDotInset];
  v12 = v11;
  [v0 ringDotInset];
  v14 = v13;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v30 = CGRectInset(v29, v12, v14);
  [v2 setFrame_];

  v15 = [v0 dotMaskLayer];
  [v0 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v0 ringDotInset];
  v25 = v24;
  [v0 ringDotInset];
  v27 = v26;
  v31.origin.x = v17;
  v31.origin.y = v19;
  v31.size.width = v21;
  v31.size.height = v23;
  v32 = CGRectInset(v31, v25, v27);
  [v15 setCornerRadius_];
}

void _sSo37SiriSharedUISpinningActivityIndicatorC0aB2UIE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_ringDotScaleFinalValue) = 0x3FF4000000000000;
  *(v0 + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_ringDotInset) = 0x4024000000000000;
  *(v0 + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_ringDotRotationDuration) = 0x3FF8000000000000;
  *(v0 + OBJC_IVAR___SiriSharedUISpinningActivityIndicator_ringBorderMaskWidth) = 0x4000000000000000;
  v1 = OBJC_IVAR___SiriSharedUISpinningActivityIndicator_contentLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v2 = OBJC_IVAR___SiriSharedUISpinningActivityIndicator_dotMaskLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  sub_21E4DD468();
  __break(1u);
}

uint64_t sub_21E46C644(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_21E46C9A8(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___SiriSharedUISAEViewModelController_conversation;
  *&v1[OBJC_IVAR___SiriSharedUISAEViewModelController_conversation] = 0;
  v4 = OBJC_IVAR___SiriSharedUISAEViewModelController_immersiveExperienceOn;
  v1[OBJC_IVAR___SiriSharedUISAEViewModelController_immersiveExperienceOn] = 0;
  v5 = OBJC_IVAR___SiriSharedUISAEViewModelController_serverUtteranceConversationIds;
  v6 = MEMORY[0x277D84F90];
  *&v1[v5] = sub_21E43CF38(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR___SiriSharedUISAEViewModelController_storedTranscriptItems] = v6;
  v7 = &v1[OBJC_IVAR___SiriSharedUISAEViewModelController_inputType];
  *v7 = 0;
  v7[8] = 0;
  *&v1[OBJC_IVAR___SiriSharedUISAEViewModelController_previousConversation] = 0;
  swift_unknownObjectWeakInit();
  v8 = [objc_allocWithZone(SiriSharedUISAEViewModel) init];
  *&v1[OBJC_IVAR___SiriSharedUISAEViewModelController_viewModel] = v8;
  swift_unknownObjectWeakAssign();
  v9 = *&v1[v3];
  *&v1[v3] = a1;
  v10 = a1;

  *&v1[v5] = sub_21E43CF38(v6);

  v1[v4] = 0;
  v13.receiver = v1;
  v13.super_class = SiriSharedUISAEViewModelController;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v11 inputTypeDidChange];
  [v11 _processInitialConversationItemsForConversation_];

  swift_unknownObjectRelease();
  return v11;
}

void *SiriSharedUISAEViewModelController.previousConversation.getter()
{
  v1 = OBJC_IVAR___SiriSharedUISAEViewModelController_previousConversation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SiriSharedUISAEViewModelController.previousConversation.setter(void *a1)
{
  v2 = v1;
  v4 = sub_21E4DCBF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E4DCC18();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___SiriSharedUISAEViewModelController_previousConversation;
  swift_beginAccess();
  v12 = *&v2[v11];
  *&v2[v11] = a1;
  v13 = a1;

  if (a1)
  {
    sub_21E43F008(0, &qword_280C14150);
    v20 = sub_21E4DD278();
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    *(v14 + 24) = v13;
    aBlock[4] = sub_21E46CFB4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E46C644;
    aBlock[3] = &block_descriptor_6;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    v17 = v2;

    sub_21E4DCC08();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21E477D68(&qword_280C14250, MEMORY[0x277D85198]);
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
    sub_21E42D5A8(&qword_280C141F0, &unk_27CEC6660);
    sub_21E4DD358();
    v18 = v20;
    MEMORY[0x223D5AF30](0, v10, v7, v15);
    _Block_release(v15);

    (*(v5 + 8))(v7, v4);
    (*(v21 + 8))(v10, v19);
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void SiriSharedUISAEViewModelController.viewModelChangeObserver.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v1 = [objc_allocWithZone(SiriSharedUISAEViewModel) init];
  v2 = [v0 viewModel];
  v3 = [v0 _generateDiffFromViewModel_toViewModel_];

  [v0 _notifyObserverOfViewModelChangeWithDiff_];
  swift_unknownObjectRelease();
}

void sub_21E46D40C(void *a1)
{
  v2 = v1;
  v4 = sub_21E4DB698();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 numberOfChildrenForItemWithIdentifier_] >= 1)
  {
    v8 = [a1 lastItem];
    if (v8)
    {
      v9 = [v8 identifier];
      if (v9)
      {
        v10 = v9;
        sub_21E4DB678();

        v11 = sub_21E4DB658();
        (*(v5 + 8))(v7, v4);
        v12 = [a1 sruif:v11 itemsRelatedToIdentifier:?];

        v13 = sub_21E4DD088();
        v14 = sub_21E46D600(v13);

        if (v14)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5DE0);
          v15 = sub_21E4DD078();

          [v2 _processInsertedConversationItemsForConversationItems_forConversation_];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_21E46D600(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_21E4DD428();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_21E423FB4(i, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5DE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_21E4DD408();
    sub_21E4DD438();
    sub_21E4DD448();
    sub_21E4DD418();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_21E46D770(uint64_t ObjCClassFromMetadata)
{
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6270);
  MEMORY[0x28223BE20](v120);
  v3 = &v95 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v95 - v9;
  MEMORY[0x28223BE20](v8);
  v126 = &v95 - v11;
  v12 = sub_21E4DB698();
  *&v123 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v102 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v128 = (&v95 - v16);
  MEMORY[0x28223BE20](v15);
  v100 = &v95 - v17;
  v18 = sub_21E4DB6F8();
  v111 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v112 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &v95 - v22;
  MEMORY[0x28223BE20](v21);
  v109 = &v95 - v23;
  v24 = [ObjCClassFromMetadata updatedItemIndexPaths];
  v124 = v18;
  if (v24)
  {
    v25 = v24;
    v26 = sub_21E4DD088();
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v125 = v10;
  v27 = [ObjCClassFromMetadata insertedItemIndexPaths];
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    ObjCClassFromMetadata = v27;
    v28 = sub_21E4DD088();
  }

  v29 = v126;
  v122 = [v110 conversation];
  if (!v122)
  {

    return;
  }

  v30 = *(v26 + 16);
  v105 = v30;
  if (!v30)
  {
    goto LABEL_44;
  }

  v104 = v7;
  v31 = 0;
  v108 = v26 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
  v107 = v111 + 16;
  v106 = v111 + 8;
  v119 = (v123 + 8);
  v115 = v123 + 16;
  v127 = v123 + 56;
  v32 = (v123 + 48);
  v101 = (v123 + 32);
  v97 = v28;
  v96 = v26;
  v114 = (v123 + 48);
  while (1)
  {
    if (v31 >= *(v26 + 16))
    {
      goto LABEL_81;
    }

    v33 = v111;
    v32 = v109;
    v34 = v124;
    (*(v111 + 16))(v109, v108 + *(v111 + 72) * v31, v124);
    ObjCClassFromMetadata = sub_21E4DB6E8();
    (*(v33 + 8))(v32, v34);
    v35 = [v122 itemAtIndexPath_];

    if (!v35)
    {
      goto LABEL_10;
    }

    if ([v35 type] == 3)
    {
      v36 = [v35 aceObject];
      if (v36)
      {
        break;
      }
    }

    swift_unknownObjectRelease();
LABEL_10:
    if (++v31 == v105)
    {
      LOBYTE(v30) = 0;
      goto LABEL_44;
    }
  }

  v37 = v36;
  v121 = v35;
  sub_21E43F008(0, &unk_280C14130);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([v37 isKindOfClass_] & 1) == 0)
  {
    swift_unknownObjectRelease();

    LOBYTE(v30) = 1;
    goto LABEL_44;
  }

  if (![v37 isKindOfClass_])
  {
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  v98 = v37;
  v38 = [v122 identifier];
  if (!v38)
  {
    __break(1u);
    goto LABEL_84;
  }

  v39 = v38;
  v40 = v100;
  sub_21E4DB678();

  v41 = [v110 serverUtteranceConversationIds];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5DD8);
  sub_21E477D68(&qword_280C15B50, MEMORY[0x277CC95F0]);
  ObjCClassFromMetadata = sub_21E4DCE98();

  if (*(ObjCClassFromMetadata + 16) && (v42 = sub_21E4B15CC(v40), (v43 & 1) != 0))
  {
    v44 = *(*(ObjCClassFromMetadata + 56) + 8 * v42);
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v118 = *v119;
  v118(v40, v12);
  v113 = *(v44 + 16);
  if (!v113)
  {
LABEL_42:

    swift_unknownObjectRelease();
    LOBYTE(v30) = 1;
    v28 = v97;
    v26 = v96;
LABEL_44:
    v61 = *(v28 + 16);
    v32 = v122;
    v62 = v124;
    if (v61 != 1)
    {
      if (!v61 && (v30 & 1) == 0)
      {

        v63 = sub_21E4DD078();
        goto LABEL_76;
      }

LABEL_57:
      v131 = MEMORY[0x277D84F90];
      v129 = v26;
      sub_21E4762D4(v28);
      v79 = *(v129 + 16);
      if (v79)
      {
        v128 = *(v111 + 16);
        v80 = *(v111 + 80);
        v121 = v129;
        v125 = ((v80 + 32) & ~v80);
        v126 = v80;
        v81 = &v125[v129];
        v82 = *(v111 + 72);
        v127 = MEMORY[0x277D84F90];
        v83 = (v111 + 8);
        v123 = xmmword_21E4E57E0;
        v84 = v112;
        v128(v112, &v125[v129], v62);
        while (1)
        {
          v85 = v84;
          v86 = sub_21E4DB6E8();
          v87 = [v32 itemAtIndexPath_];

          if (v87)
          {
            if ([v87 type] == 2)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5E10);
              v88 = v125;
              v89 = swift_allocObject();
              *(v89 + 16) = v123;
              v90 = v89 + v88;
              v91 = v112;
              v62 = v124;
              v128(v90, v112, v124);
              v92 = sub_21E4DD078();
              v84 = v91;

              [v110 _processUpdatedConversationItemsAtIndexPaths_];
              swift_unknownObjectRelease();

              v32 = v122;
              (*v83)(v84, v62);
            }

            else
            {
              v93 = swift_unknownObjectRetain();
              MEMORY[0x223D5AD10](v93);
              if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21E4DD0A8();
              }

              sub_21E4DD0D8();
              swift_unknownObjectRelease();
              v84 = v112;
              v62 = v124;
              (*v83)(v112, v124);
              v127 = v131;
            }
          }

          else
          {
            (*v83)(v85, v62);
            v84 = v85;
          }

          v81 += v82;
          if (!--v79)
          {
            break;
          }

          v128(v84, v81, v62);
        }

        v94 = v127;
        if (!(v127 >> 62))
        {
LABEL_69:
          if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_70:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5DE0);
            v63 = sub_21E4DD078();

            [v110 _processInsertedConversationItemsForConversationItems_forConversation_];
            goto LABEL_77;
          }

LABEL_73:

          goto LABEL_78;
        }
      }

      else
      {

        v94 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_69;
        }
      }

      if (sub_21E4DD488())
      {
        goto LABEL_70;
      }

      goto LABEL_73;
    }

    v64 = v111;
    v65 = v99;
    (*(v111 + 16))(v99, v28 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v124);
    v66 = sub_21E4DB6E8();
    (*(v64 + 8))(v65, v62);
    v67 = [v32 itemAtIndexPath_];

    if (v67)
    {
      v68 = [v67 type];
      swift_unknownObjectRelease();
      if (v68 == 1)
      {

        ObjCClassFromMetadata = 0x800000021E4EEB30;
        if (qword_280C14550 != -1)
        {
          goto LABEL_82;
        }

        goto LABEL_51;
      }

      goto LABEL_57;
    }

LABEL_84:
    __break(1u);
    return;
  }

  v45 = 0;
  v116 = v44 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
  v117 = v44;
  while (v45 < *(v44 + 16))
  {
    v46 = v123;
    v47 = *(v123 + 16);
    v48 = v128;
    v47(v128, v116 + *(v123 + 72) * v45, v12);
    v47(v29, v48, v12);
    v49 = *(v46 + 56);
    v50 = 1;
    v49(v29, 0, 1, v12);
    v51 = [v121 identifier];
    if (v51)
    {
      v52 = v51;
      v53 = v125;
      sub_21E4DB678();

      v50 = 0;
    }

    else
    {
      v53 = v125;
    }

    v32 = v114;
    v49(v53, v50, 1, v12);
    ObjCClassFromMetadata = *(v120 + 48);
    v54 = v126;
    sub_21E45BA04(v126, v3);
    sub_21E45BA04(v53, &v3[ObjCClassFromMetadata]);
    v55 = *v32;
    if ((*v32)(v3, 1, v12) == 1)
    {
      sub_21E424BC0(v53, &qword_27CEC5278);
      sub_21E424BC0(v54, &qword_27CEC5278);
      v118(v128, v12);
      v29 = v54;
      if (v55(&v3[ObjCClassFromMetadata], 1, v12) == 1)
      {
        sub_21E424BC0(v3, &qword_27CEC5278);
LABEL_38:

        swift_unknownObjectRelease();
        v28 = v97;
        v26 = v96;
        goto LABEL_10;
      }

      goto LABEL_26;
    }

    v56 = v104;
    sub_21E45BA04(v3, v104);
    if (v55(&v3[ObjCClassFromMetadata], 1, v12) == 1)
    {
      sub_21E424BC0(v125, &qword_27CEC5278);
      v29 = v126;
      sub_21E424BC0(v126, &qword_27CEC5278);
      v57 = v118;
      ObjCClassFromMetadata = v119;
      v118(v128, v12);
      v57(v56, v12);
LABEL_26:
      sub_21E424BC0(v3, &unk_27CEC6270);
      goto LABEL_27;
    }

    v58 = v102;
    (*v101)(v102, &v3[ObjCClassFromMetadata], v12);
    sub_21E477D68(&unk_280C15B40, MEMORY[0x277CC95F0]);
    v103 = sub_21E4DCEE8();
    ObjCClassFromMetadata = v31;
    v59 = v3;
    v60 = v118;
    v118(v58, v12);
    sub_21E424BC0(v125, &qword_27CEC5278);
    v29 = v126;
    sub_21E424BC0(v126, &qword_27CEC5278);
    v60(v128, v12);
    v60(v56, v12);
    v3 = v59;
    v31 = ObjCClassFromMetadata;
    sub_21E424BC0(v3, &qword_27CEC5278);
    if (v103)
    {
      goto LABEL_38;
    }

LABEL_27:
    ++v45;
    v44 = v117;
    if (v113 == v45)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  swift_once();
LABEL_51:
  v69 = sub_21E4DBCC8();
  __swift_project_value_buffer(v69, qword_280C14558);
  v70 = sub_21E4DD1F8();
  v131 = 0xD00000000000001CLL;
  v132 = ObjCClassFromMetadata;
  v71 = sub_21E45C20C(0);
  if (v72)
  {
    v129 = 32;
    v130 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v71);

    MEMORY[0x223D5ACB0](v129, v130);
  }

  if (("conversationDidChange(with:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v129 = 32;
    v130 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000058, 0x800000021E4EEB50);
    MEMORY[0x223D5ACB0](v129, v130);
  }

  v74 = v131;
  v73 = v132;
  v75 = sub_21E4DBCB8();
  if (os_log_type_enabled(v75, v70))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v129 = v77;
    *v76 = 136315138;
    v78 = sub_21E426648(v74, v73, &v129);

    *(v76 + 4) = v78;
    _os_log_impl(&dword_21E3EB000, v75, v70, "%s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    MEMORY[0x223D5BF10](v77, -1, -1);
    MEMORY[0x223D5BF10](v76, -1, -1);
  }

  else
  {
  }

  v63 = sub_21E4DD078();
LABEL_76:

  [v110 _processUpdatedConversationItemsAtIndexPaths_];
LABEL_77:

LABEL_78:
}

void sub_21E46E8C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E4DB698();
  v156 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v158 = &v139 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v142 = &v139 - v11;
  MEMORY[0x28223BE20](v10);
  v147 = (&v139 - v12);
  v13 = [v2 conversation];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v140 = v7;
  LODWORD(v153) = [v2 alwaysShowRecognizedSpeech];
  v15 = *(a1 + 16);
  v155 = v2;
  v150 = v4;
  if (v15)
  {
    v16 = sub_21E4DB6F8();
    v151 = 0;
    v146 = 0;
    v157 = 0;
    v17 = *(v16 - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v145 = (v156 + 8);
    v149 = 0x800000021E4EE9B0;
    v144 = "assResettingModel to true";
    *&v148 = "assResettingModel to true" & 0x2F00000000000000;
    v19 = *(v17 + 72);
    v159 = MEMORY[0x277D84F90];
    v154 = v156 + 32;
    v20 = &selRef_shouldSuppress;
    *&v21 = 136315138;
    v143 = v21;
    v152 = v19;
    while (1)
    {
      v24 = sub_21E4DB6E8();
      v25 = [v14 itemAtIndexPath_];

      if (!v25)
      {
        goto LABEL_5;
      }

      if ([v25 v20[90]] == 1 || objc_msgSend(v25, v20[90]) == 2)
      {
        if (v157)
        {
          v26 = v14;
          if (qword_280C14550 != -1)
          {
            swift_once();
          }

          v27 = sub_21E4DBCC8();
          __swift_project_value_buffer(v27, qword_280C14558);
          v28 = sub_21E4DD228();
          v160 = 0xD000000000000024;
          v161 = v149;
          v29 = sub_21E45C20C(0);
          if (v30)
          {
            v162 = 32;
            v163 = 0xE100000000000000;
            MEMORY[0x223D5ACB0](v29);

            MEMORY[0x223D5ACB0](v162, v163);
          }

          if (v148 != 0x2000000000000000)
          {
            v162 = 32;
            v163 = 0xE100000000000000;
            MEMORY[0x223D5ACB0](0xD0000000000000CBLL, v144 | 0x8000000000000000);
            MEMORY[0x223D5ACB0](v162, v163);
          }

          v32 = v160;
          v31 = v161;
          v33 = sub_21E4DBCB8();
          if (os_log_type_enabled(v33, v28))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v162 = v35;
            *v34 = v143;
            v36 = sub_21E426648(v32, v31, &v162);

            *(v34 + 4) = v36;
            _os_log_impl(&dword_21E3EB000, v33, v28, "%s", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v35);
            MEMORY[0x223D5BF10](v35, -1, -1);
            MEMORY[0x223D5BF10](v34, -1, -1);
          }

          else
          {
          }

          v2 = v155;
          v14 = v26;
          v4 = v150;
          v19 = v152;
          v20 = &selRef_shouldSuppress;
        }

        v51 = [v25 v20[90]];
        v52 = v153;
        if (v51 == 1)
        {
          v52 = 1;
        }

        if (v52 != 1)
        {
          goto LABEL_40;
        }

        v53 = [v2 userUtteranceForConversationItem_];
        if (v53)
        {
          v54 = v53;
          v55 = [v25 aceObject];
          v56 = [v25 v20[90]] == 1;
          v57 = [objc_allocWithZone(MEMORY[0x277D61B08]) initWithUserUtterance:v54 backingAceObject:v55 isFinal:v56];

          v157 = v57;
        }

        v58 = [v2 viewModel];
        v59 = [v58 userUtterance];

        v60 = [v59 speech];
        v151 = v60 == 0;
        if (v60)
        {
        }

        v61 = [v2 viewModel];
        v62 = [v61 userUtterance];

        v63 = [v62 speech];
        if (v63)
        {
          v64 = [v63 isFinal];

          if (v60)
          {
            v65 = v64;
          }

          else
          {
            v65 = 1;
          }

          v151 = v65;
        }
      }

      else
      {
        v37 = v4;
        v38 = [v14 identifier];
        if (!v38)
        {
          goto LABEL_115;
        }

        v39 = v38;
        v40 = v147;
        sub_21E4DB678();

        v41 = [v2 serverUtteranceConversationIds];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5DD8);
        sub_21E477D68(&qword_280C15B50, MEMORY[0x277CC95F0]);
        v42 = sub_21E4DCE98();

        if (*(v42 + 16) && (v43 = sub_21E4B15CC(v40), (v44 & 1) != 0))
        {
          v45 = *(*(v42 + 56) + 8 * v43);

          v46 = *v145;
          v47 = v40;
          v4 = v37;
          (*v145)(v47, v37);
          v48 = [v25 identifier];
          if (!v48)
          {
            goto LABEL_116;
          }

          v49 = v48;
          v50 = v142;
          sub_21E4DB678();

          LODWORD(v49) = sub_21E46FC28(v50, v45);

          v46(v50, v4);
          v146 |= v49;
          v2 = v155;
        }

        else
        {

          v66 = v40;
          v4 = v37;
          (*v145)(v66, v37);
        }

        v19 = v152;
      }

      v20 = &selRef_shouldSuppress;
LABEL_40:
      v67 = [v25 identifier];
      if (!v67)
      {
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        return;
      }

      v68 = v67;
      sub_21E4DB678();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = sub_21E44397C(0, v159[2] + 1, 1, v159);
      }

      v70 = v159[2];
      v69 = v159[3];
      if (v70 >= v69 >> 1)
      {
        v159 = sub_21E44397C(v69 > 1, v70 + 1, 1, v159);
      }

      swift_unknownObjectRelease();
      v22 = v158;
      v23 = v159;
      v159[2] = v70 + 1;
      (*(v156 + 32))(v23 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v70, v22, v4);
LABEL_5:
      v18 += v19;
      if (!--v15)
      {
        goto LABEL_46;
      }
    }
  }

  v151 = 0;
  v146 = 0;
  v157 = 0;
  v159 = MEMORY[0x277D84F90];
LABEL_46:
  if (v159[2])
  {
    v71 = [v2 delegate];
    if (v71)
    {
      v72 = v71;
      v73 = sub_21E4DD078();
      [v72 saeViewModelController:v2 didProcessConversationItemsWithIdentifiers:v73];

      swift_unknownObjectRelease();
    }
  }

  v74 = [v2 viewModel];
  v75 = [v74 serverUtterances];

  v153 = sub_21E43F008(0, &unk_280C14130);
  v76 = sub_21E4DD088();

  v141 = v14;
  if (v76 >> 62)
  {
LABEL_83:
    v78 = sub_21E4DD488();
    if (v78)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v78 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v78)
    {
LABEL_51:
      v79 = 0;
      v80 = 0;
      v158 = (v76 & 0xFFFFFFFFFFFFFF8);
      v154 = 0x800000021E4EE9B0;
      v149 = "his hypothesis .";
      v152 = "his hypothesis ." & 0x2F00000000000000;
      *&v77 = 136315138;
      v148 = v77;
LABEL_52:
      v81 = v80;
      do
      {
        if ((v76 & 0xC000000000000001) != 0)
        {
          v82 = MEMORY[0x223D5B080](v81, v76);
        }

        else
        {
          if (v81 >= *(v158 + 2))
          {
            goto LABEL_82;
          }

          v82 = *(v76 + 8 * v81 + 32);
        }

        v2 = v82;
        v80 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v83 = [v82 dialogIdentifier];
        if (v83)
        {
          v84 = v83;
          sub_21E4DCF78();

          if (sub_21E4DD048())
          {

LABEL_65:
            if (qword_280C14550 != -1)
            {
              swift_once();
            }

            v88 = sub_21E4DBCC8();
            __swift_project_value_buffer(v88, qword_280C14558);
            v89 = sub_21E4DD1F8();
            v160 = 0xD000000000000024;
            v161 = v154;
            v90 = sub_21E45C20C(0);
            if (v91)
            {
              v162 = 32;
              v163 = 0xE100000000000000;
              MEMORY[0x223D5ACB0](v90);

              MEMORY[0x223D5ACB0](v162, v163);
            }

            if (v152 != 0x2000000000000000)
            {
              v162 = 32;
              v163 = 0xE100000000000000;
              MEMORY[0x223D5ACB0](0xD000000000000029, v149 | 0x8000000000000000);
              MEMORY[0x223D5ACB0](v162, v163);
            }

            v92 = v160;
            v93 = v161;
            v94 = sub_21E4DBCB8();
            if (os_log_type_enabled(v94, v89))
            {
              v95 = swift_slowAlloc();
              v147 = v94;
              v96 = v92;
              v97 = v95;
              v98 = v89;
              v99 = swift_slowAlloc();
              v162 = v99;
              *v97 = v148;
              v100 = sub_21E426648(v96, v93, &v162);

              *(v97 + 4) = v100;
              v101 = v147;
              _os_log_impl(&dword_21E3EB000, v147, v98, "%s", v97, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v99);
              MEMORY[0x223D5BF10](v99, -1, -1);
              MEMORY[0x223D5BF10](v97, -1, -1);
            }

            else
            {
            }

            v79 = 1;
            if (v80 == v78)
            {

              if (!((v157 != 0) | v146 & 1))
              {
LABEL_102:

                v117 = v141;
                goto LABEL_112;
              }

LABEL_78:

              goto LABEL_111;
            }

            goto LABEL_52;
          }

          v85 = sub_21E4DD048();

          if (v85)
          {
            v86 = [v155 viewModel];
            v87 = [v86 shouldPreserveResultSpace];

            if (v87)
            {
              goto LABEL_65;
            }
          }
        }

        ++v81;
      }

      while (v80 != v78);

      v2 = v155;
      if (!((v157 != 0) | v146 & 1))
      {
        goto LABEL_102;
      }

      if (v79)
      {
        goto LABEL_78;
      }

      goto LABEL_86;
    }
  }

  if (!((v157 != 0) | v146 & 1))
  {
    goto LABEL_102;
  }

  v154 = 0x800000021E4EE9B0;
LABEL_86:
  v160 = 0;
  v161 = 0xE000000000000000;
  sub_21E4DD3A8();

  v160 = 0xD00000000000002ELL;
  v161 = 0x800000021E4EE940;
  if (v151)
  {
    v102 = 0xD000000000000040;
  }

  else
  {
    v102 = 0xD000000000000030;
  }

  if (v151)
  {
    v103 = "nversationItems(at:)";
  }

  else
  {
    v103 = "ecognitionHypothesis updated, ";
  }

  MEMORY[0x223D5ACB0](v102, v103 | 0x8000000000000000);

  v105 = v160;
  v104 = v161;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v106 = sub_21E4DBCC8();
  __swift_project_value_buffer(v106, qword_280C14558);
  v107 = sub_21E4DD1F8();
  v160 = 0xD000000000000024;
  v161 = v154;
  v108 = sub_21E45C20C(0);
  if (v109)
  {
    v162 = 32;
    v163 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v108);

    MEMORY[0x223D5ACB0](v162, v163);
  }

  v110 = HIBYTE(v104) & 0xF;
  if ((v104 & 0x2000000000000000) == 0)
  {
    v110 = v105 & 0xFFFFFFFFFFFFLL;
  }

  if (v110)
  {
    v162 = 32;
    v163 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v105, v104);
    MEMORY[0x223D5ACB0](v162, v163);
  }

  v111 = v160;
  v112 = v161;
  v113 = sub_21E4DBCB8();
  if (os_log_type_enabled(v113, v107))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v162 = v115;
    *v114 = 136315138;
    v116 = sub_21E426648(v111, v112, &v162);

    *(v114 + 4) = v116;
    _os_log_impl(&dword_21E3EB000, v113, v107, "%s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v115);
    MEMORY[0x223D5BF10](v115, -1, -1);
    MEMORY[0x223D5BF10](v114, -1, -1);
  }

  else
  {
  }

  v118 = [objc_allocWithZone(SiriSharedUISAEViewModel) init];
  if (v151)
  {
    v119 = [v2 viewModel];
    sub_21E43F008(0, &qword_280C14128);
    v120 = MEMORY[0x277D84F90];
    v121 = sub_21E4DD078();
    v122 = sub_21E4DD078();
    v123 = [v119 copyWithConversationTranscriptItems:v121 serverUtterances:v122 speechRecognitionHypothesis:v157];

    v124 = v123;
    v125 = [v141 identifier];
    if (!v125)
    {
      goto LABEL_117;
    }

    v126 = v125;
    sub_21E4DB678();

    v127 = [v2 serverUtteranceConversationIds];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5DD8);
    sub_21E477D68(&qword_280C15B50, MEMORY[0x277CC95F0]);
    v128 = sub_21E4DCE98();

    v162 = v128;
    v130 = sub_21E46FD34(&v160);
    if (*v129)
    {
      *v129 = v120;
    }

    (v130)(&v160, 0);
    v131 = v150;
    v132 = sub_21E4DCE88();

    [v2 setServerUtteranceConversationIds_];

    (*(v156 + 8))(v140, v131);
    v133 = [v124 userUtterance];
    [v133 setLatencySummary_];

    v134 = [v124 userUtterance];
    [v134 setShouldShow_];

    v135 = v141;
  }

  else
  {

    v136 = [v2 viewModel];
    v135 = v141;
    v137 = [v2 serverUtterancesToDisplayForConversation_];
    v138 = [v136 copyWithServerUtterances:v137 speechRecognitionHypothesis:v157];

    v124 = v138;
  }

  [v2 setViewModel_];

LABEL_111:
  v117 = v157;
LABEL_112:
}

BOOL sub_21E46FC28(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_21E4DB698();
    ++v2;
    sub_21E477D68(&unk_280C15B40, MEMORY[0x277CC95F0]);
  }

  while ((sub_21E4DCEE8() & 1) == 0);
  return v3 != v4;
}

void (*sub_21E46FD34(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_21E4DB698();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_21E4767AC(v4, v9);
  return sub_21E46FE4C;
}

void sub_21E46FE4C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_21E46FF28(char **a1, void *a2)
{
  v231 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v209 = &v206 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v211 = &v206 - v6;
  v7 = sub_21E4DB698();
  v228 = *(v7 - 1);
  v8 = MEMORY[0x28223BE20](v7);
  v234 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v221 = &v206 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v222 = &v206 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v217 = &v206 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v220 = &v206 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v206 - v18;
  v20 = MEMORY[0x277D84F90];
  v246 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_215:
    v240 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = sub_21E4DD488();
  }

  else
  {
    v240 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  v23 = a1 & 0xC000000000000001;
  v226 = v7;
  v237 = a1;
  v238 = a1 & 0xC000000000000001;
  while (1)
  {
    v24 = v22;
    if (v21 == v22)
    {
      break;
    }

    if (v23)
    {
      v25 = MEMORY[0x223D5B080](v22, a1);
      if (__OFADD__(v24, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v22 >= *(v240 + 16))
      {
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
        goto LABEL_215;
      }

      v25 = a1[v22 + 4];
      swift_unknownObjectRetain();
      if (__OFADD__(v24, 1))
      {
        goto LABEL_12;
      }
    }

    v26 = [v25 isSupplemental];
    swift_unknownObjectRelease();
    v22 = (v24 + 1);
    if (v26)
    {
      goto LABEL_17;
    }
  }

  v27 = [v231 identifier];
  if (!v27)
  {
LABEL_229:
    __break(1u);
    return;
  }

  v28 = v27;
  sub_21E4DB678();

  v29 = v235;
  v30 = [v235 serverUtteranceConversationIds];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5DD8);
  sub_21E477D68(&qword_280C15B50, MEMORY[0x277CC95F0]);
  v31 = v226;
  v32 = sub_21E4DCE98();

  *&v242 = v32;
  v34 = sub_21E46FD34(v244);
  if (*v33)
  {
    v35 = MEMORY[0x277D84F90];
    *v33 = MEMORY[0x277D84F90];

    (v34)(v244, 0);
    (*(v228 + 8))(v19, v31);
    v36 = sub_21E4DCE88();

    [v29 setServerUtteranceConversationIds_];

    v7 = v31;
    v20 = v35;
    a1 = v237;
    v23 = v238;
  }

  else
  {
    (v34)(v244, 0);
    (*(v228 + 8))(v19, v31);
    v37 = sub_21E4DCE88();

    [v29 setServerUtteranceConversationIds_];

    v7 = v31;
    a1 = v237;
    v23 = v238;
    v20 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v245 = v20;
  v236 = v21;
  if (!v21)
  {
    v215 = 0;
    if (!SiriSharedUIDeviceIsPad())
    {
      goto LABEL_40;
    }

    goto LABEL_131;
  }

  v19 = 0;
  v38 = *MEMORY[0x277D47C40];
  v7 = 0x277CCABB0;
  while (v238)
  {
    v20 = MEMORY[0x223D5B080](v19, v237);
    a1 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      goto LABEL_35;
    }

LABEL_24:
    v39 = [v20 aceObject];
    if (!v39)
    {
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
      goto LABEL_229;
    }

    v40 = v39;
    v41 = [v39 propertyForKey_];

    if (v41)
    {
      sub_21E4DD338();
      swift_unknownObjectRelease();
    }

    else
    {
      v242 = 0u;
      v243 = 0u;
    }

    v244[0] = v242;
    v244[1] = v243;
    if (*(&v243 + 1))
    {
      sub_21E43F008(0, &qword_280C14070);
      if (swift_dynamicCast())
      {
        v42 = v241;
        v43 = [v241 BOOLValue];
        swift_unknownObjectRelease();

        if (v43)
        {
          v215 = 1;
          v21 = v236;
          goto LABEL_39;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
      sub_21E424BC0(v244, &unk_27CEC5DF0);
    }

    ++v19;
    v21 = v236;
    if (a1 == v236)
    {
      goto LABEL_36;
    }
  }

  if (v19 >= *(v240 + 16))
  {
    goto LABEL_209;
  }

  v20 = v237[v19 + 4];
  swift_unknownObjectRetain();
  a1 = (v19 + 1);
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_24;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v215 = 0;
LABEL_39:
  IsPad = SiriSharedUIDeviceIsPad();
  v7 = v226;
  a1 = v237;
  v23 = v238;
  if (!IsPad)
  {
LABEL_40:
    if ((SiriSharedUIDeviceIsMac() & 1) == 0 && ([v235 immersiveExperienceOn] & 1) == 0)
    {
      v19 = 0;
      while (v21 != v19)
      {
        if (v23)
        {
          v46 = MEMORY[0x223D5B080](v19, a1);
          if (__OFADD__(v19, 1))
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v19 >= *(v240 + 16))
          {
            goto LABEL_214;
          }

          v46 = a1[v19 + 4];
          swift_unknownObjectRetain();
          if (__OFADD__(v19, 1))
          {
LABEL_51:
            __break(1u);
LABEL_52:
            v48 = v235;
            v49 = [v235 delegate];
            if (v49)
            {
              [v49 immersiveExperienceRequestedForViewModelController_];
              swift_unknownObjectRelease();
            }

            [v48 setImmersiveExperienceOn_];
            break;
          }
        }

        v47 = [v46 isImmersiveExperience];
        swift_unknownObjectRelease();
        ++v19;
        if (v47)
        {
          goto LABEL_52;
        }
      }
    }

    if (v21)
    {
      goto LABEL_56;
    }

LABEL_131:
    v137 = 0;
    v20 = MEMORY[0x277D84F90];
    v214 = MEMORY[0x277D84F90];
    v138 = MEMORY[0x277D84F90];
    goto LABEL_146;
  }

LABEL_56:
  v19 = 0;
  v216 = 0;
  v207 = (v228 + 56);
  v206 = (v228 + 48);
  v225 = (v228 + 8);
  v213 = 0x800000021E4EE800;
  v208 = "onversationItems(with:for:)";
  v212 = "onversationItems(with:for:)" & 0x2F00000000000000;
  v227 = v228 + 32;
  *&v45 = 136315138;
  v210 = v45;
  v20 = MEMORY[0x277D84F90];
  v214 = MEMORY[0x277D84F90];
  v218 = MEMORY[0x277D84F90];
  v219 = v24;
  while (2)
  {
    if (v23)
    {
      v50 = MEMORY[0x223D5B080](v19, a1);
      v51 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_210;
      }
    }

    else
    {
      if (v19 >= *(v240 + 16))
      {
        goto LABEL_213;
      }

      v50 = a1[v19 + 4];
      swift_unknownObjectRetain();
      v51 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_210;
      }
    }

    v52 = [v50 aceObject];
    if (!v52)
    {
      swift_unknownObjectRelease();
      goto LABEL_58;
    }

    v53 = v52;
    v233 = v51;
    sub_21E43F008(0, &qword_280C14170);
    v54 = [v53 isKindOfClass_];
    v239 = v50;
    if ((v54 & 1) == 0)
    {
      sub_21E43F008(0, &unk_280C14130);
      v55 = [v53 isKindOfClass_];
      v232 = v53;
      if (v55)
      {
        v56 = [v231 identifier];
        if (!v56)
        {
          goto LABEL_225;
        }

        v57 = v56;
        v224 = v20;
        v58 = v220;
        sub_21E4DB678();

        v59 = v235;
        v60 = [v235 serverUtteranceConversationIds];
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5DD8);
        v62 = sub_21E477D68(&qword_280C15B50, MEMORY[0x277CC95F0]);
        v230 = v61;
        v229 = v62;
        v63 = sub_21E4DCE98();

        v64 = v225;
        if (*(v63 + 16) && (sub_21E4B15CC(v58), (v65 & 1) != 0))
        {
          v66 = *v64;

          v223 = v66;
          v66(v58, v7);
        }

        else
        {

          v78 = *v64;
          (*v64)(v58, v7);
          v79 = [v231 identifier];
          if (!v79)
          {
            goto LABEL_227;
          }

          v80 = v79;
          v81 = v217;
          sub_21E4DB678();

          v82 = [v59 serverUtteranceConversationIds];
          v83 = sub_21E4DCE98();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v244[0] = v83;
          sub_21E4442D0(MEMORY[0x277D84F90], v81, isUniquelyReferenced_nonNull_native);
          v223 = v78;
          v78(v81, v7);
          v85 = sub_21E4DCE88();

          [v59 setServerUtteranceConversationIds_];
        }

        v86 = v219;
        v87 = [v231 identifier];
        if (!v87)
        {
          goto LABEL_226;
        }

        v88 = v87;
        v89 = v222;
        sub_21E4DB678();

        v90 = v235;
        v91 = [v235 serverUtteranceConversationIds];
        v92 = v226;
        *&v242 = sub_21E4DCE98();
        v94 = sub_21E46FD34(v244);
        if (*v93)
        {
          v95 = v93;
          v96 = [v239 identifier];
          if (!v96)
          {
            goto LABEL_228;
          }

          v97 = v96;

          sub_21E4DB678();
          v98 = *v95;
          v99 = swift_isUniquelyReferenced_nonNull_native();
          *v95 = v98;
          v24 = v86;
          v100 = v223;
          if ((v99 & 1) == 0)
          {
            v98 = sub_21E44397C(0, v98[2] + 1, 1, v98);
            *v95 = v98;
          }

          v23 = v238;
          v102 = v98[2];
          v101 = v98[3];
          if (v102 >= v101 >> 1)
          {
            v98 = sub_21E44397C(v101 > 1, v102 + 1, 1, v98);
            *v95 = v98;
          }

          v98[2] = v102 + 1;
          v103 = v98 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v102;
          v7 = v226;
          (*(v228 + 32))(v103, v221, v226);
          (v94)(v244, 0);
          v100(v222, v7);
          v104 = sub_21E4DCE88();

          [v235 setServerUtteranceConversationIds_];

          v21 = v236;
          a1 = v237;
          v20 = v224;
          v50 = v239;
          v51 = v233;
        }

        else
        {

          (v94)(v244, 0);
          v223(v89, v92);
          v105 = sub_21E4DCE88();

          [v90 setServerUtteranceConversationIds_];

          v7 = v92;
          v20 = v224;
          v24 = v86;
          a1 = v237;
          v23 = v238;
          v50 = v239;
          v51 = v233;
          v21 = v236;
        }

LABEL_125:
        v133 = [v50 identifier];
        if (!v133)
        {
          goto LABEL_224;
        }

        v134 = v133;
        sub_21E4DB678();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21E44397C(0, *(v20 + 2) + 1, 1, v20);
        }

        v136 = *(v20 + 2);
        v135 = *(v20 + 3);
        if (v136 >= v135 >> 1)
        {
          v20 = sub_21E44397C(v135 > 1, v136 + 1, 1, v20);
        }

        swift_unknownObjectRelease();
        *(v20 + 2) = v136 + 1;
        (*(v228 + 32))(&v20[((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v136], v234, v7);
LABEL_58:
        ++v19;
        if (v51 == v21)
        {
          v138 = v218;
          goto LABEL_145;
        }

        continue;
      }

      sub_21E43F008(0, &unk_280C14060);
      if ([v53 isKindOfClass_] && objc_msgSend(v50, sel_presentationState) != 3)
      {
        v106 = v235;
        v107 = [v235 delegate];
        v51 = v233;
        if (!v107)
        {
          v7 = v226;
          goto LABEL_125;
        }

        v108 = v53;
        v109 = [v107 saeViewModelController:v106 requestsTranscriptItemForAceObject:v53];
        swift_unknownObjectRelease();
        v110 = [v109 viewController];
        if (v110)
        {
          v111 = v110;
          [v110 setAceObject_];
        }

        v112 = [v109 viewController];
        if (v112)
        {
          v113 = v112;
          [v112 wasAddedToTranscript];
        }

        v114 = v109;
        MEMORY[0x223D5AD10]();
        if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21E4DD0A8();
          v51 = v233;
        }

        sub_21E4DD0D8();
        v214 = v246;
        v115 = v114;
        MEMORY[0x223D5AD10]();
        if (*((v245 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v245 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21E4DD0A8();
          v51 = v233;
        }

        sub_21E4DD0D8();
        v218 = v245;
        v116 = [v115 viewController];
        v7 = v226;
        v50 = v239;
        if (v116)
        {
          v117 = v116;
          if ([v116 respondsToSelector_])
          {
            [v117 configureForConversationStorable_];
          }

          v118 = [objc_opt_self() sharedInstance];
          if (v118 && (v119 = v118, v120 = [v118 isSiriDetached], v119, (v120 & 1) != 0))
          {
          }

          else
          {
            if ([v117 respondsToSelector_])
            {
              v126 = [objc_opt_self() sharedManager];
              v127 = [v126 currentInstrumentationTurnContext];

              v128 = [v127 turnIdentifier];
              v129 = v211;
              sub_21E4DB678();

              (*v207)(v129, 0, 1, v7);
              v130 = v129;
              v131 = v209;
              sub_21E45BA04(v130, v209);
              if ((*v206)(v131, 1, v7) == 1)
              {
                v132 = 0;
              }

              else
              {
                v132 = sub_21E4DB658();
                (*v225)(v131, v7);
              }

              v50 = v239;
              v51 = v233;
              [v117 setTurnIdentifier_];

              sub_21E424BC0(v211, &qword_27CEC5278);
              goto LABEL_124;
            }
          }

          a1 = v237;
          v23 = v238;
          v50 = v239;
          goto LABEL_125;
        }
      }

      else
      {
        v67 = [v50 type];
        v51 = v233;
        if (v67 != 1)
        {
          goto LABEL_125;
        }

        if (v216)
        {
          if (qword_280C14550 != -1)
          {
            swift_once();
          }

          v68 = sub_21E4DBCC8();
          __swift_project_value_buffer(v68, qword_280C14558);
          v69 = sub_21E4DD228();
          *&v244[0] = 0xD00000000000002BLL;
          *(&v244[0] + 1) = v213;
          v70 = sub_21E45C20C(0);
          if (v71)
          {
            *&v242 = 32;
            *(&v242 + 1) = 0xE100000000000000;
            MEMORY[0x223D5ACB0](v70);

            MEMORY[0x223D5ACB0](v242, *(&v242 + 1));
          }

          if (v212 != 0x2000000000000000)
          {
            *&v242 = 32;
            *(&v242 + 1) = 0xE100000000000000;
            MEMORY[0x223D5ACB0](0xD0000000000000CFLL, v208 | 0x8000000000000000);
            MEMORY[0x223D5ACB0](v242, *(&v242 + 1));
          }

          v72 = v244[0];
          v73 = sub_21E4DBCB8();
          if (os_log_type_enabled(v73, v69))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *&v242 = v75;
            *v74 = v210;
            v76 = sub_21E426648(v72, *(&v72 + 1), &v242);

            *(v74 + 4) = v76;
            _os_log_impl(&dword_21E3EB000, v73, v69, "%s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v75);
            v77 = v75;
            v21 = v236;
            MEMORY[0x223D5BF10](v77, -1, -1);
            MEMORY[0x223D5BF10](v74, -1, -1);
          }

          else
          {
          }

          v7 = v226;
          a1 = v237;
          v23 = v238;
          v50 = v239;
        }

        v121 = v235;
        if (![v235 alwaysShowRecognizedSpeech])
        {
          goto LABEL_125;
        }

        v122 = [v121 userUtteranceForConversationItem_];
        if (!v122)
        {
          goto LABEL_125;
        }

        v123 = v122;
        v124 = [v50 aceObject];
        v125 = [objc_allocWithZone(MEMORY[0x277D61B08]) initWithUserUtterance:v123 backingAceObject:v124 isFinal:1];

        v50 = v239;
        v216 = v125;
      }

LABEL_124:
      a1 = v237;
      v23 = v238;
      goto LABEL_125;
    }

    break;
  }

  v139 = v53;
  v140 = v235;
  v141 = [v235 delegate];
  if (v141)
  {
    [v141 siriDeviceLockedForViewModelController_];
    swift_unknownObjectRelease();
  }

  v138 = v218;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v142 = sub_21E4DBCC8();
  __swift_project_value_buffer(v142, qword_280C14558);
  v143 = sub_21E4DD1F8();
  *&v244[0] = 0xD00000000000002BLL;
  *(&v244[0] + 1) = v213;
  v144 = sub_21E45C20C(0);
  if (v145)
  {
    *&v242 = 32;
    *(&v242 + 1) = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v144);

    MEMORY[0x223D5ACB0](v242, *(&v242 + 1));
  }

  if (("in the list of presented items." & 0x2F00000000000000) != 0x2000000000000000)
  {
    *&v242 = 32;
    *(&v242 + 1) = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000003FLL, 0x800000021E4EE900);
    MEMORY[0x223D5ACB0](v242, *(&v242 + 1));
  }

  v146 = v244[0];
  v147 = sub_21E4DBCB8();
  if (os_log_type_enabled(v147, v143))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&v242 = v149;
    *v148 = v210;
    v150 = sub_21E426648(v146, *(&v146 + 1), &v242);

    *(v148 + 4) = v150;
    _os_log_impl(&dword_21E3EB000, v147, v143, "%s", v148, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v149);
    v151 = v149;
    v7 = v226;
    MEMORY[0x223D5BF10](v151, -1, -1);
    MEMORY[0x223D5BF10](v148, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_145:
  v137 = v216;
LABEL_146:
  v152 = v235;
  if (v138 >> 62)
  {
    if (sub_21E4DD488())
    {
LABEL_148:
      sub_21E43F008(0, &qword_280C14128);
      v153 = sub_21E4DD078();
      [v152 setStoredTranscriptItems_];
    }
  }

  else if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_148;
  }

  if (*(v20 + 2))
  {
    v154 = [v152 delegate];
    if (v154)
    {
      v155 = v154;
      v156 = sub_21E4DD078();
      [v155 saeViewModelController:v152 didProcessConversationItemsWithIdentifiers:v156];

      swift_unknownObjectRelease();
    }
  }

  v218 = v138;
  a1 = &selRef_shouldSuppress;
  if (!v137)
  {
    v157 = [v152 viewModel];
    v158 = [v157 userUtterance];

    v137 = [v158 speech];
  }

  v239 = v137;
  v159 = [v152 viewModel];
  v160 = [v159 conversationTranscriptItems];

  v240 = sub_21E43F008(0, &qword_280C14128);
  v161 = sub_21E4DD088();

  v20 = (v161 & 0xFFFFFFFFFFFFFF8);
  if (v161 >> 62)
  {
    v162 = sub_21E4DD488();
  }

  else
  {
    v162 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v163 = 0;
  v19 = v161 & 0xC000000000000001;
  while (2)
  {
    if (v162 == v163)
    {

      v165 = [v235 storedTranscriptItems];
      v166 = sub_21E4DD088();

      v20 = (v166 & 0xFFFFFFFFFFFFFF8);
      if (v166 >> 62)
      {
        v167 = sub_21E4DD488();
      }

      else
      {
        v167 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v168 = 0;
      v19 = v166 & 0xC000000000000001;
      while (v167 != v168)
      {
        if (v19)
        {
          v169 = MEMORY[0x223D5B080](v168, v166);
        }

        else
        {
          if (v168 >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_212;
          }

          v169 = *(v166 + 8 * v168 + 32);
        }

        a1 = v169;
        if (__OFADD__(v168, 1))
        {
          goto LABEL_211;
        }

        v7 = [v169 platterCategory];

        ++v168;
        if (!v7)
        {
          goto LABEL_176;
        }
      }

      if (v236 == v24)
      {
        v170 = v239;
        v171 = &selRef_shouldSuppress;
        if (v215)
        {
          v172 = 0;
          goto LABEL_182;
        }

        goto LABEL_191;
      }

LABEL_190:

      v174 = v235;
      v178 = [v235 viewModel];
      v179 = [v178 conversationTranscriptItems];

      v180 = sub_21E4DD088();
      sub_21E476400(v180);
      v170 = v239;
      v171 = &selRef_shouldSuppress;
      goto LABEL_193;
    }

    if (v19)
    {
      v164 = MEMORY[0x223D5B080](v163, v161);
    }

    else
    {
      if (v163 >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_208;
      }

      v164 = *(v161 + 8 * v163 + 32);
    }

    a1 = v164;
    if (__OFADD__(v163, 1))
    {
      goto LABEL_207;
    }

    v7 = [v164 platterCategory];

    ++v163;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_176:

  if (v236 != v24)
  {
    goto LABEL_190;
  }

  v170 = v239;
  v171 = &selRef_shouldSuppress;
  if ((v215 & 1) == 0)
  {
LABEL_191:

    v215 = 0;
LABEL_192:
    v174 = v235;
    goto LABEL_193;
  }

  v172 = 1;
LABEL_182:
  if ((v214 & 0x8000000000000000) != 0 || (v214 & 0x4000000000000000) != 0)
  {
    v173 = sub_21E4DD488();
  }

  else
  {
    v173 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v215 = 1;
  if (v173)
  {
    goto LABEL_192;
  }

  v174 = v235;
  if ((v172 & 1) == 0)
  {
    goto LABEL_193;
  }

  v175 = [v235 viewModel];
  v176 = [v175 conversationTranscriptItems];

  v177 = sub_21E4DD088();
  if (v177 >> 62)
  {
    if (sub_21E4DD488())
    {
      goto LABEL_189;
    }
  }

  else if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_189:

    v246 = v177;
    v215 = 1;
    v174 = v235;
    goto LABEL_193;
  }

  v174 = v235;
  v204 = [v235 storedTranscriptItems];
  v205 = sub_21E4DD088();

  v246 = v205;
  v215 = 1;
LABEL_193:
  v181 = [v174 inputType];
  v182 = [v174 viewModel];
  v183 = [v182 v171[120]];

  v184 = [v183 asrAlternatives];
  if (!v184)
  {
    sub_21E4DD088();
    v184 = sub_21E4DD078();
  }

  v185 = [v174 viewModel];
  v186 = [v185 v171[120]];

  v187 = [v186 latencySummary];
  if (v187)
  {
    sub_21E4DCF78();
    v189 = v188;
  }

  else
  {
    v189 = 0;
  }

  v190 = [v235 viewModel];
  v191 = [v190 v171[120]];

  v192 = [v191 taskIdentifier];
  if (v192)
  {
    sub_21E4DCF78();
    v194 = v193;

    if (v189)
    {
      goto LABEL_200;
    }

LABEL_203:
    v195 = 0;
    if (!v194)
    {
      goto LABEL_204;
    }

LABEL_201:
    v196 = sub_21E4DCF68();
  }

  else
  {
    v194 = 0;
    if (!v189)
    {
      goto LABEL_203;
    }

LABEL_200:
    v195 = sub_21E4DCF68();

    if (v194)
    {
      goto LABEL_201;
    }

LABEL_204:
    v196 = 0;
  }

  v197 = [objc_allocWithZone(SiriSharedUISAEUserUtteranceViewModel) initWithSpeech:v170 asrAlternatives:v184 latencySummary:v195 shouldShow:0 taskIdentifier:v196];

  v198 = v235;
  v199 = [v235 serverUtterancesToDisplayForConversation_];
  v200 = objc_allocWithZone(SiriSharedUISAEViewModel);
  v201 = v197;
  v202 = sub_21E4DD078();
  v203 = [v200 initWithInputType:v181 conversationTranscriptItems:v202 serverUtterances:v199 userUtterance:v201 shouldPreserveResultSpace:v215];

  [v198 setViewModel_];
}

id sub_21E4720B8(id a1)
{
  v2 = v1;
  v4 = sub_21E4DB698();
  v137 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v132 = &v125[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v142 = &v125[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v125[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v125[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v125[-v15];
  v155 = MEMORY[0x277D84F90];
  result = [a1 identifier];
  if (!result)
  {
    goto LABEL_91;
  }

  v18 = result;
  sub_21E4DB678();

  v19 = [v2 serverUtteranceConversationIds];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5DD8);
  v148 = sub_21E477D68(&qword_280C15B50, MEMORY[0x277CC95F0]);
  v149 = v20;
  v21 = sub_21E4DCE98();

  if (*(v21 + 16) && (v22 = sub_21E4B15CC(v16), (v23 & 1) != 0))
  {
    v24 = *(*(v21 + 56) + 8 * v22);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v25 = v137;

  v26 = *(v25 + 8);
  result = v26(v16, v4);
  v146 = *(v24 + 16);
  if (!v146)
  {
    v129 = MEMORY[0x277D84F90];
LABEL_84:

    return v129;
  }

  v28 = 0;
  v141 = 0;
  v145 = v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v144 = v25 + 16;
  v135 = 0x800000021E4EE710;
  v134 = "serverUtterancesToDisplay(for:)";
  v128 = "o longer in the conversation";
  v127 = 0x800000021E4EE7D0;
  v133 = "#compact Removing ";
  v129 = MEMORY[0x277D84F90];
  *&v27 = 136315138;
  v131 = v27;
  v136 = v2;
  v139 = v11;
  v140 = a1;
  v143 = v14;
  v138 = v24;
  v147 = v25 + 8;
  v150 = v26;
  while (v28 < *(v24 + 16))
  {
    (*(v25 + 16))(v14, v145 + *(v25 + 72) * v28, v4);
    v30 = sub_21E4DB658();
    v31 = [a1 containsItemWithIdentifier_];

    if (v31 && (v32 = sub_21E4DB658(), v33 = [a1 itemWithIdentifier_], v32, v33))
    {
      v34 = [v33 aceObject];
      v29 = v150;
      if (!v34)
      {
        swift_unknownObjectRelease();
LABEL_62:
        v14 = v143;
        goto LABEL_10;
      }

      v35 = v34;
      sub_21E43F008(0, &unk_280C14130);
      if ([v35 isKindOfClass_])
      {
        objc_opt_self();
        v36 = swift_dynamicCastObjCClass();
        if (v36)
        {
          v37 = v36;
          v38 = v35;
          v39 = [v37 text];
          if (v39)
          {
            v40 = v39;
            v130 = v38;
            v41 = [objc_opt_self() parsedUtteranceFromText:v39 context:objc_msgSend(v37 spekableObjectProviding:{sel_context), 0}];

            swift_unknownObjectRelease();
            v42 = v41;
            if (!v41)
            {
              sub_21E4DCF78();
              v42 = sub_21E4DCF68();
            }

            v129 = v42;
            v43 = sub_21E4DCF78();
            v45 = v44;
            v46 = [v37 text];
            if (!v46)
            {
              goto LABEL_67;
            }

            v47 = v46;
            v48 = sub_21E4DCF78();
            v50 = v49;

            if (v48 == v43 && v50 == v45)
            {

              goto LABEL_66;
            }

            v110 = sub_21E4DD518();

            if (v110)
            {

LABEL_66:

              v25 = v137;
              v14 = v143;
              v24 = v138;
            }

            else
            {
LABEL_67:
              v151 = 0;
              v152 = 0xE000000000000000;
              sub_21E4DD3A8();

              v151 = 0xD000000000000021;
              v152 = v127;
              MEMORY[0x223D5ACB0](v43, v45);

              v112 = v151;
              v111 = v152;
              if (qword_280C14550 != -1)
              {
                swift_once();
              }

              v113 = sub_21E4DBCC8();
              __swift_project_value_buffer(v113, qword_280C14558);
              v126 = sub_21E4DD1F8();
              v151 = 0xD00000000000001FLL;
              v152 = v135;
              v114 = sub_21E45C20C(0);
              if (v115)
              {
                v153 = 32;
                v154 = 0xE100000000000000;
                MEMORY[0x223D5ACB0](v114);

                MEMORY[0x223D5ACB0](v153, v154);
              }

              v116 = HIBYTE(v111) & 0xF;
              if ((v111 & 0x2000000000000000) == 0)
              {
                v116 = v112 & 0xFFFFFFFFFFFFLL;
              }

              if (v116)
              {
                v153 = 32;
                v154 = 0xE100000000000000;
                MEMORY[0x223D5ACB0](v112, v111);
                MEMORY[0x223D5ACB0](v153, v154);
              }

              v117 = v151;
              v118 = v152;
              v119 = sub_21E4DBCB8();
              if (os_log_type_enabled(v119, v126))
              {
                v120 = swift_slowAlloc();
                v121 = swift_slowAlloc();
                v153 = v121;
                *v120 = v131;
                v122 = sub_21E426648(v117, v118, &v153);

                *(v120 + 4) = v122;
                _os_log_impl(&dword_21E3EB000, v119, v126, "%s", v120, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v121);
                MEMORY[0x223D5BF10](v121, -1, -1);
                MEMORY[0x223D5BF10](v120, -1, -1);
              }

              else
              {
              }

              v25 = v137;
              v24 = v138;
              v123 = v129;
              [v37 setText_];

              v2 = v136;
              v14 = v143;
            }

            v124 = v130;
            MEMORY[0x223D5AD10]();
            if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21E4DD0A8();
              v25 = v137;
            }

            sub_21E4DD0D8();
            swift_unknownObjectRelease();

            v129 = v155;
            v11 = v139;
            a1 = v140;
          }

          else
          {
            swift_unknownObjectRelease();

            a1 = v140;
            v14 = v143;
          }

          v29 = v150;
          goto LABEL_10;
        }

        swift_unknownObjectRelease();
        a1 = v140;
        goto LABEL_62;
      }

      v151 = 0;
      v152 = 0xE000000000000000;
      sub_21E4DD3A8();
      MEMORY[0x223D5ACB0](0xD000000000000012, v134 | 0x8000000000000000);
      v79 = sub_21E4DB648();
      MEMORY[0x223D5ACB0](v79);

      MEMORY[0x223D5ACB0](0xD000000000000042, v128 | 0x8000000000000000);
      v80 = v35;
      v81 = [v80 description];
      v82 = sub_21E4DCF78();
      v84 = v83;
      v130 = v80;

      MEMORY[0x223D5ACB0](v82, v84);

      v86 = v151;
      v85 = v152;
      if (qword_280C14550 != -1)
      {
        swift_once();
      }

      v87 = sub_21E4DBCC8();
      __swift_project_value_buffer(v87, qword_280C14558);
      v88 = sub_21E4DD1F8();
      v151 = 0xD00000000000001FLL;
      v152 = v135;
      v89 = sub_21E45C20C(0);
      if (v90)
      {
        v153 = 32;
        v154 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v89);

        MEMORY[0x223D5ACB0](v153, v154);
      }

      v91 = HIBYTE(v85) & 0xF;
      if ((v85 & 0x2000000000000000) == 0)
      {
        v91 = v86 & 0xFFFFFFFFFFFFLL;
      }

      if (v91)
      {
        v153 = 32;
        v154 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v86, v85);
        MEMORY[0x223D5ACB0](v153, v154);
      }

      v92 = v151;
      v93 = v152;
      v94 = sub_21E4DBCB8();
      if (os_log_type_enabled(v94, v88))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v153 = v96;
        *v95 = v131;
        v97 = sub_21E426648(v92, v93, &v153);

        *(v95 + 4) = v97;
        _os_log_impl(&dword_21E3EB000, v94, v88, "%s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v96);
        v98 = v96;
        a1 = v140;
        MEMORY[0x223D5BF10](v98, -1, -1);
        MEMORY[0x223D5BF10](v95, -1, -1);
      }

      else
      {
      }

      result = [a1 identifier];
      v2 = v136;
      v14 = v143;
      if (!result)
      {
        goto LABEL_90;
      }

      v100 = result;
      sub_21E4DB678();

      v101 = [v2 serverUtteranceConversationIds];
      v102 = sub_21E4DCE98();

      v153 = v102;
      v103 = sub_21E46FD34(&v151);
      v105 = v103;
      if (*v104)
      {
        v106 = v104;
        MEMORY[0x28223BE20](v103);
        *&v125[-16] = v14;
        v107 = v141;
        result = sub_21E4D0E2C(sub_21E477D38, &v125[-32]);
        v108 = *(*v106 + 16);
        if (v108 < result)
        {
          goto LABEL_87;
        }

        v141 = v107;
        sub_21E4AAD78(result, v108);
      }

      v105(&v151, 0);
      v109 = sub_21E4DCE88();

      [v2 setServerUtteranceConversationIds_];

      swift_unknownObjectRelease();
      v29 = v150;
      v150(v132, v4);
      v25 = v137;
      v24 = v138;
      v11 = v139;
    }

    else
    {
      result = [a1 identifier];
      if (!result)
      {
        goto LABEL_88;
      }

      v51 = result;
      sub_21E4DB678();

      v52 = [v2 serverUtteranceConversationIds];
      v53 = sub_21E4DCE98();

      if (!*(v53 + 16))
      {

LABEL_9:
        v29 = v150;
        v150(v11, v4);
        goto LABEL_10;
      }

      sub_21E4B15CC(v11);
      v55 = v54;

      if ((v55 & 1) == 0)
      {
        goto LABEL_9;
      }

      v150(v11, v4);
      v151 = 0;
      v152 = 0xE000000000000000;
      sub_21E4DD3A8();
      MEMORY[0x223D5ACB0](0xD000000000000012, v134 | 0x8000000000000000);
      v56 = sub_21E4DB648();
      MEMORY[0x223D5ACB0](v56);

      MEMORY[0x223D5ACB0](0xD00000000000002CLL, v133 | 0x8000000000000000);
      v58 = v151;
      v57 = v152;
      if (qword_280C14550 != -1)
      {
        swift_once();
      }

      v59 = sub_21E4DBCC8();
      __swift_project_value_buffer(v59, qword_280C14558);
      v60 = sub_21E4DD1F8();
      v151 = 0xD00000000000001FLL;
      v152 = v135;
      v61 = sub_21E45C20C(0);
      if (v62)
      {
        v153 = 32;
        v154 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v61);

        MEMORY[0x223D5ACB0](v153, v154);
      }

      v63 = HIBYTE(v57) & 0xF;
      if ((v57 & 0x2000000000000000) == 0)
      {
        v63 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (v63)
      {
        v153 = 32;
        v154 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v58, v57);
        MEMORY[0x223D5ACB0](v153, v154);
      }

      v65 = v151;
      v64 = v152;
      v66 = sub_21E4DBCB8();
      if (os_log_type_enabled(v66, v60))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v153 = v68;
        *v67 = v131;
        v69 = sub_21E426648(v65, v64, &v153);

        *(v67 + 4) = v69;
        _os_log_impl(&dword_21E3EB000, v66, v60, "%s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
        MEMORY[0x223D5BF10](v68, -1, -1);
        MEMORY[0x223D5BF10](v67, -1, -1);
      }

      else
      {
      }

      v2 = v136;
      v14 = v143;
      a1 = v140;
      result = [v140 identifier];
      v11 = v139;
      if (!result)
      {
        goto LABEL_89;
      }

      v70 = result;
      sub_21E4DB678();

      v71 = [v2 serverUtteranceConversationIds];
      v72 = sub_21E4DCE98();

      v153 = v72;
      v73 = sub_21E46FD34(&v151);
      v75 = v73;
      if (*v74)
      {
        v76 = v74;
        MEMORY[0x28223BE20](v73);
        *&v125[-16] = v14;
        v77 = v141;
        result = sub_21E4D0E2C(sub_21E477DB8, &v125[-32]);
        v78 = *(*v76 + 16);
        if (v78 < result)
        {
          goto LABEL_86;
        }

        v141 = v77;
        sub_21E4AAD78(result, v78);
        v75(&v151, 0);
        v25 = v137;
      }

      else
      {
        (v73)(&v151, 0);
      }

      v99 = sub_21E4DCE88();

      [v2 setServerUtteranceConversationIds_];

      v29 = v150;
      v150(v142, v4);
      v24 = v138;
    }

LABEL_10:
    ++v28;
    result = v29(v14, v4);
    if (v146 == v28)
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

void sub_21E47344C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D61B08]) initWithUserUtterance:a1 backingAceObject:a2 isFinal:1];
  v4 = [v2 viewModel];
  v5 = [v4 userUtterance];

  v6 = [v5 latencySummary];
  if (v6)
  {
    sub_21E4DCF78();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v2 viewModel];
  v10 = [v9 userUtterance];

  v11 = [v10 shouldShow];
  v12 = [v2 viewModel];
  v13 = [v12 userUtterance];

  v14 = [v13 taskIdentifier];
  if (v14)
  {
    sub_21E4DCF78();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v3;
  v18 = sub_21E4DD078();
  if (v8)
  {
    v19 = sub_21E4DCF68();

    if (v16)
    {
LABEL_9:
      v20 = sub_21E4DCF68();

      goto LABEL_12;
    }
  }

  else
  {
    v19 = 0;
    if (v16)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
LABEL_12:
  v21 = [objc_allocWithZone(SiriSharedUISAEUserUtteranceViewModel) initWithSpeech:v17 asrAlternatives:v18 latencySummary:v19 shouldShow:v11 taskIdentifier:v20];

  v22 = [v2 viewModel];
  v23 = [v22 copyWithUserUtterance_];

  [v2 setViewModel_];
}

void sub_21E47377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = [objc_allocWithZone(MEMORY[0x277D61B08]) initWithUserUtterance:a1 backingAceObject:a2 isFinal:1];
  v7 = *(a3 + 16);
  if (v7)
  {
    v34 = MEMORY[0x277D84F90];
    sub_21E455A48(0, v7, 0);
    v8 = (a3 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v34 + 16);
      v12 = *(v34 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_21E455A48((v12 > 1), v11 + 1, 1);
      }

      *(v34 + 16) = v11 + 1;
      v13 = v34 + 16 * v11;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  v14 = [v3 viewModel];
  v15 = [v14 userUtterance];

  v16 = [v15 latencySummary];
  if (v16)
  {
    sub_21E4DCF78();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v3 viewModel];
  v20 = [v19 userUtterance];

  v21 = [v20 shouldShow];
  v22 = [v3 viewModel];
  v23 = [v22 userUtterance];

  v24 = [v23 taskIdentifier];
  if (v24)
  {
    sub_21E4DCF78();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v6;
  v28 = sub_21E4DD078();

  if (v18)
  {
    v29 = sub_21E4DCF68();

    if (v26)
    {
LABEL_14:
      v30 = sub_21E4DCF68();

      goto LABEL_17;
    }
  }

  else
  {
    v29 = 0;
    if (v26)
    {
      goto LABEL_14;
    }
  }

  v30 = 0;
LABEL_17:
  v31 = [objc_allocWithZone(SiriSharedUISAEUserUtteranceViewModel) initWithSpeech:v27 asrAlternatives:v28 latencySummary:v29 shouldShow:v21 taskIdentifier:v30];

  v32 = [v4 viewModel];
  v33 = [v32 copyWithUserUtterance_];

  [v4 setViewModel_];
}

void sub_21E473B5C(char a1)
{
  v2 = v1;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v4 = sub_21E4DBCC8();
  __swift_project_value_buffer(v4, qword_280C14558);
  v5 = sub_21E4DD1F8();
  v24 = 0xD000000000000019;
  v25 = 0x800000021E4EE6B0;
  v6 = sub_21E45C20C(0);
  if (v7)
  {
    v22 = 32;
    v23 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v6);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("resetViewsAndClearASR(_:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v22 = 32;
    v23 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000034, 0x800000021E4EE6D0);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v9 = v24;
  v8 = v25;
  v10 = sub_21E4DBCB8();
  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(v9, v8, &v22);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v10, v5, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  v14 = [objc_allocWithZone(SiriSharedUISAEViewModel) init];
  if ((a1 & 1) == 0)
  {
    v20 = v14;
    v15 = [v2 viewModel];
    v16 = [v2 viewModel];
    v17 = [v16 userUtterance];

    v18 = [v17 speech];
    v19 = [v15 copyWithSpeechRecognitionHypothesis_];

    v14 = v19;
  }

  v21 = v14;
  [v2 setViewModel_];
}

void sub_21E473EA8()
{
  v1 = [v0 viewModel];
  v2 = [v1 userUtterance];

  v3 = [v2 speech];
  v4 = [v0 viewModel];
  v5 = [v4 userUtterance];

  v6 = [v5 asrAlternatives];
  if (!v6)
  {
    sub_21E4DD088();
    v6 = sub_21E4DD078();
  }

  v7 = [v0 viewModel];
  v8 = [v7 userUtterance];

  v9 = [v8 latencySummary];
  if (v9)
  {
    sub_21E4DCF78();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v0 viewModel];
  v13 = [v12 userUtterance];

  v14 = [v13 taskIdentifier];
  if (v14)
  {
    sub_21E4DCF78();
    v16 = v15;

    if (v11)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17 = 0;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v16 = 0;
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = sub_21E4DCF68();

  if (v16)
  {
LABEL_9:
    v18 = sub_21E4DCF68();

    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
LABEL_13:
  v19 = [objc_allocWithZone(SiriSharedUISAEUserUtteranceViewModel) initWithSpeech:v3 asrAlternatives:v6 latencySummary:v17 shouldShow:1 taskIdentifier:v18];

  v20 = [v0 viewModel];
  v21 = [v20 copyWithUserUtterance_];

  [v0 setViewModel_];
}

void sub_21E4741D8()
{
  v1 = [v0 viewModel];
  v2 = [v1 userUtterance];

  v3 = [v2 speech];
  v4 = [v0 viewModel];
  v5 = [v4 userUtterance];

  v6 = [v5 asrAlternatives];
  if (!v6)
  {
    sub_21E4DD088();
    v6 = sub_21E4DD078();
  }

  v7 = [v0 viewModel];
  v8 = [v7 userUtterance];

  v9 = [v8 taskIdentifier];
  if (v9)
  {
    sub_21E4DCF78();

    v9 = sub_21E4DCF68();
  }

  v10 = [objc_allocWithZone(SiriSharedUISAEUserUtteranceViewModel) initWithSpeech:v3 asrAlternatives:v6 latencySummary:0 shouldShow:0 taskIdentifier:v9];

  v11 = [v0 viewModel];
  v12 = [v11 copyWithUserUtterance_];

  [v0 setViewModel_];
}

void sub_21E474528(void *a1)
{
  v3 = [v1 viewModel];
  v4 = [v3 userUtterance];

  v5 = [v4 speech];
  v6 = [v1 viewModel];
  v7 = [v6 userUtterance];

  v8 = [v7 asrAlternatives];
  if (!v8)
  {
    sub_21E4DD088();
    v8 = sub_21E4DD078();
  }

  v9 = [a1 latencySummary];
  if (v9)
  {
    v10 = v9;
    sub_21E4DCF78();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 shouldShow];
  v14 = [a1 taskIdentifier];
  if (v14)
  {
    v15 = v14;
    sub_21E4DCF78();
    v17 = v16;

    if (v12)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = 0;
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v17 = 0;
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = sub_21E4DCF68();

  if (v17)
  {
LABEL_9:
    v19 = sub_21E4DCF68();

    goto LABEL_13;
  }

LABEL_12:
  v19 = 0;
LABEL_13:
  v20 = [objc_allocWithZone(SiriSharedUISAEUserUtteranceViewModel) initWithSpeech:v5 asrAlternatives:v8 latencySummary:v18 shouldShow:v13 taskIdentifier:v19];

  if ([v20 shouldShow])
  {
    v21 = 1;
    v22 = &selRef_shouldSuppress;
  }

  else
  {
    v22 = &selRef_shouldSuppress;
    v23 = [v1 viewModel];
    v24 = [v23 userUtterance];

    v21 = [v24 shouldShow];
  }

  [v20 setShouldShow_];
  v25 = [v1 v22[138]];
  v26 = [v25 copyWithUserUtterance_];

  [v1 setViewModel_];
}

void sub_21E47489C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CEF4F0]);
  v2 = sub_21E4DCF68();
  v3 = [v1 initWithString:v2 correctionIdentifier:0];

  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D61B08]) initWithUserUtterance:v3 backingAceObject:0 isFinal:1];
    v5 = [v0 viewModel];
    sub_21E43F008(0, &qword_280C14128);
    v6 = sub_21E4DD078();
    sub_21E43F008(0, &unk_280C14130);
    v7 = sub_21E4DD078();
    v8 = [v5 copyWithConversationTranscriptItems:v6 serverUtterances:v7 speechRecognitionHypothesis:v4];

    [v0 setViewModel_];
  }
}

id SiriSharedUISAEViewModelController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_21E474C68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5E50);
  v34 = a2;
  result = sub_21E4DD4B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_21E4DD5C8();
      MEMORY[0x223D5B280](v21);
      result = sub_21E4DD608();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21E474F04(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21E4DB8A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5E40);
  v39 = a2;
  result = sub_21E4DD4B8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_21E477D68(&qword_27CEC5E48, MEMORY[0x277D08668]);
      result = sub_21E4DCEB8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21E4752E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52C8);
  v33 = a2;
  result = sub_21E4DD4B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_21E43EAE8(v24, v34);
      }

      else
      {
        sub_21E423FB4(v24, v34);
      }

      sub_21E4DD5C8();
      sub_21E4DCFD8();
      result = sub_21E4DD608();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_21E43EAE8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21E475598(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21E4DB698();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52B0);
  v39 = a2;
  result = sub_21E4DD4B8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_21E477D68(&qword_280C15B50, MEMORY[0x277CC95F0]);
      result = sub_21E4DCEB8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21E475974(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5E20);
  result = sub_21E4DD4B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_21E4DD2E8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21E475BDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5E28);
  result = sub_21E4DD4B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_21E4DD2E8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21E475E40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5E30);
  result = sub_21E4DD4B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
      }

      result = sub_21E4DD2E8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_21E4760A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_21E476108(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21E43EAE8(a4, (a5[7] + 32 * a1));
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

uint64_t sub_21E47618C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_21E476248(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v5 = (a3[7] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

unint64_t sub_21E476290(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_21E4762D4(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_21E443954(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_21E4DB6F8();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21E476400(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21E4DD488();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_21E4DD488();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21E4D2ADC();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21E476C78(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21E4764F0(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_21E4434DC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_21E476E2C(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_21E4434DC((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_21E477DB0();
  *v1 = v4;
  return result;
}

void (*sub_21E4767AC(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_21E4DB698();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_21E476C44(v6);
  v6[12] = sub_21E476980(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_21E4768E8;
}

void sub_21E4768E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_21E476980(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_21E4DB698();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_21E4B15CC(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_21E4D06D0();
      v15 = v23;
      goto LABEL_14;
    }

    sub_21E475598(v20, a3 & 1);
    v15 = sub_21E4B15CC(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_21E4DD548();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return sub_21E476B30;
}

void sub_21E476B30(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_21E47618C(v4, v7, v2, v3, MEMORY[0x277CC95F0]);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_21E4CFD64(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_21E476C44(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21E476C6C;
}

uint64_t sub_21E476C78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21E4DD488();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21E4DD488();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21E42D5A8(&qword_27CEC5E08, &qword_27CEC5E00);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5E00);
            v9 = sub_21E46935C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21E43F008(0, &qword_280C14128);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21E476E2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21E476F84(void *a1, id a2)
{
  v4 = [a2 conversationTranscriptItems];
  sub_21E43F008(0, &qword_280C14128);
  v5 = sub_21E4DD088();

  v6 = [a1 conversationTranscriptItems];
  v7 = sub_21E4DD088();

  LOBYTE(v6) = sub_21E4690CC(v5, v7);

  if (v6)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = sub_21E4434DC(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_21E4434DC((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[16 * v11];
    *(v12 + 4) = 0xD00000000000001BLL;
    *(v12 + 5) = 0x800000021E4EE030;
    v8 = 1;
  }

  v13 = [a2 serverUtterances];
  sub_21E43F008(0, &unk_280C14130);
  v14 = sub_21E4DD088();

  v15 = [a1 serverUtterances];
  v16 = sub_21E4DD088();

  LOBYTE(v15) = sub_21E4690E0(v14, v16);

  if ((v15 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_21E4434DC(0, *(v9 + 2) + 1, 1, v9);
    }

    v8 |= 2uLL;
    v18 = *(v9 + 2);
    v17 = *(v9 + 3);
    if (v18 >= v17 >> 1)
    {
      v9 = sub_21E4434DC((v17 > 1), v18 + 1, 1, v9);
    }

    *(v9 + 2) = v18 + 1;
    v19 = &v9[16 * v18];
    *(v19 + 4) = 0xD000000000000010;
    *(v19 + 5) = 0x800000021E4EE050;
  }

  v20 = [a2 userUtterance];
  v21 = [v20 speech];

  v22 = [a1 userUtterance];
  v23 = [v22 speech];

  if (!v21)
  {
    if (v23)
    {

      goto LABEL_34;
    }

LABEL_18:
    v25 = [a2 userUtterance];
    v26 = [v25 latencySummary];

    v27 = v8;
    if (v26)
    {
      v86 = sub_21E4DCF78();
      v29 = v28;
    }

    else
    {
      v86 = 0;
      v29 = 0;
    }

    v30 = [a1 userUtterance];
    v31 = [v30 latencySummary];

    if (v31)
    {
      v32 = sub_21E4DCF78();
      v34 = v33;

      v8 = v27;
      if (v29)
      {
        if (v34)
        {
          if (v86 == v32 && v29 == v34)
          {

            goto LABEL_33;
          }

          v35 = sub_21E4DD518();

          if (v35)
          {
LABEL_33:
            v36 = [a2 userUtterance];
            v37 = [v36 shouldShow];

            v38 = [a1 userUtterance];
            v39 = [v38 shouldShow];

            if (v37 == v39)
            {
              goto LABEL_39;
            }

            goto LABEL_34;
          }

          goto LABEL_34;
        }
      }

      else if (!v34)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v8 = v27;
      if (!v29)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_34;
  }

  if (!v23)
  {

    goto LABEL_34;
  }

  sub_21E43F008(0, &qword_280C14108);
  v24 = sub_21E4DD2F8();

  if (v24)
  {
    goto LABEL_18;
  }

LABEL_34:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_21E4434DC(0, *(v9 + 2) + 1, 1, v9);
  }

  v8 |= 4uLL;
  v41 = *(v9 + 2);
  v40 = *(v9 + 3);
  if (v41 >= v40 >> 1)
  {
    v9 = sub_21E4434DC((v40 > 1), v41 + 1, 1, v9);
  }

  *(v9 + 2) = v41 + 1;
  v42 = &v9[16 * v41];
  strcpy(v42 + 32, "userUtterance");
  *(v42 + 23) = -4864;
LABEL_39:
  v43 = [a2 userUtterance];
  v44 = [v43 speech];

  v45 = [a1 userUtterance];
  v46 = [v45 speech];

  if (v44)
  {
    if (v46)
    {
      sub_21E43F008(0, &qword_280C14108);
      v47 = sub_21E4DD2F8();

      if (v47)
      {
        goto LABEL_52;
      }

      goto LABEL_47;
    }

    v46 = v44;
  }

  else if (!v46)
  {
    goto LABEL_52;
  }

LABEL_47:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_21E4434DC(0, *(v9 + 2) + 1, 1, v9);
  }

  v8 |= 0x10uLL;
  v49 = *(v9 + 2);
  v48 = *(v9 + 3);
  if (v49 >= v48 >> 1)
  {
    v9 = sub_21E4434DC((v48 > 1), v49 + 1, 1, v9);
  }

  *(v9 + 2) = v49 + 1;
  v50 = &v9[16 * v49];
  *(v50 + 4) = 0xD00000000000001BLL;
  *(v50 + 5) = 0x800000021E4EEBB0;
LABEL_52:
  v51 = [a2 inputType];
  if (v51 != [a1 inputType])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_21E4434DC(0, *(v9 + 2) + 1, 1, v9);
    }

    v8 |= 8uLL;
    v63 = *(v9 + 2);
    v62 = *(v9 + 3);
    if (v63 >= v62 >> 1)
    {
      v9 = sub_21E4434DC((v62 > 1), v63 + 1, 1, v9);
    }

    *(v9 + 2) = v63 + 1;
    v64 = &v9[16 * v63];
    *(v64 + 4) = 0x7079547475706E69;
    *(v64 + 5) = 0xE900000000000065;
    goto LABEL_67;
  }

  if (*(v9 + 2))
  {
LABEL_67:
    sub_21E4DD3A8();
    MEMORY[0x223D5ACB0](0x646F4D7765697623, 0xEF20666669446C65);
    v65 = MEMORY[0x223D5AD40](v9, MEMORY[0x277D837D0]);
    v67 = v66;

    MEMORY[0x223D5ACB0](v65, v67);

    MEMORY[0x223D5ACB0](0xD00000000000001ALL, 0x800000021E4EEBF0);
    v68 = [a1 description];
    v69 = sub_21E4DCF78();
    v71 = v70;

    MEMORY[0x223D5ACB0](v69, v71);

    MEMORY[0x223D5ACB0](0x64707520646E6120, 0xED00002064657461);
    v72 = [a2 description];
    v73 = sub_21E4DCF78();
    v75 = v74;

    MEMORY[0x223D5ACB0](v73, v75);

    if (qword_280C14550 != -1)
    {
      swift_once();
    }

    v76 = sub_21E4DBCC8();
    __swift_project_value_buffer(v76, qword_280C14558);
    v77 = sub_21E4DD1F8();
    v89 = 0xD000000000000016;
    v90 = 0x800000021E4EEBD0;
    v78 = sub_21E45C20C(0);
    if (v79)
    {
      v87 = 32;
      v88 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v78);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v81 = v89;
    v80 = v90;
    v58 = sub_21E4DBCB8();
    if (os_log_type_enabled(v58, v77))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v87 = v83;
      *v82 = 136315138;
      v84 = sub_21E426648(v81, v80, &v87);

      *(v82 + 4) = v84;
      _os_log_impl(&dword_21E3EB000, v58, v77, "%s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v83);
      MEMORY[0x223D5BF10](v83, -1, -1);
      MEMORY[0x223D5BF10](v82, -1, -1);
    }

    else
    {
    }

    goto LABEL_74;
  }

  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v52 = sub_21E4DBCC8();
  __swift_project_value_buffer(v52, qword_280C14558);
  v53 = sub_21E4DD1F8();
  v89 = 0xD000000000000016;
  v90 = 0x800000021E4EEBD0;
  v54 = sub_21E45C20C(0);
  if (v55)
  {
    v87 = 32;
    v88 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v54);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if ((" differs between original " & 0x2F00000000000000) != 0x2000000000000000)
  {
    v87 = 32;
    v88 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000002FLL, 0x800000021E4EEC10);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v57 = v89;
  v56 = v90;
  v58 = sub_21E4DBCB8();
  if (!os_log_type_enabled(v58, v53))
  {
LABEL_74:

    goto LABEL_75;
  }

  v59 = swift_slowAlloc();
  v60 = swift_slowAlloc();
  v87 = v60;
  *v59 = 136315138;
  v61 = sub_21E426648(v57, v56, &v87);

  *(v59 + 4) = v61;
  _os_log_impl(&dword_21E3EB000, v58, v53, "%s", v59, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  MEMORY[0x223D5BF10](v60, -1, -1);
  MEMORY[0x223D5BF10](v59, -1, -1);
LABEL_75:

  return v8;
}

id sub_21E477BA4(void *a1)
{
  if ([a1 type] != 1)
  {
    if ([a1 type] != 2)
    {
      return 0;
    }

    result = [a1 aceObject];
    if (!result)
    {
      return result;
    }

    v3 = result;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 af_userUtteranceValue];

      return v11;
    }

LABEL_10:

    return 0;
  }

  result = [a1 aceObject];
  if (!result)
  {
    return result;
  }

  v3 = result;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  result = [v4 recognition];
  if (result)
  {
    v6 = result;
    v7 = [v5 refId];
    v8 = [v5 sessionId];
    v9 = [v6 af:v7 userUtteranceValueWithRefId:v8 sessionId:?];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E477D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E477DD4()
{
  v1 = *(v0 + 112);
  v25 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_shouldSuppress;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x223D5B080](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v2 = sub_21E4DD488();
        goto LABEL_3;
      }

      v10 = [v7 v6[136]];
      if (!v10)
      {
        goto LABEL_6;
      }

      v11 = v10;
      v12 = [v10 aceObject];
      if (!v12)
      {
        break;
      }

      v13 = v12;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = [v14 itemType];
        if (v15)
        {
          v16 = v15;
          v17 = sub_21E4DCF78();
          v19 = v18;

          v20 = sub_21E4DCF78();
          if (v19)
          {
            if (v17 == v20 && v19 == v21)
            {

              goto LABEL_25;
            }

            v22 = sub_21E4DD518();

            if (v22)
            {
LABEL_25:
              sub_21E4DD408();
              sub_21E4DD438();
              sub_21E4DD448();
              sub_21E4DD418();
            }

            else
            {
            }

            v5 = v1 & 0xFFFFFFFFFFFFFF8;
            v4 = v1 & 0xC000000000000001;
            v6 = &selRef_shouldSuppress;
            goto LABEL_7;
          }

          v5 = v1 & 0xFFFFFFFFFFFFFF8;
          v4 = v1 & 0xC000000000000001;
        }

        else
        {
          sub_21E4DCF78();
        }

        v6 = &selRef_shouldSuppress;
      }

      else
      {
      }

LABEL_7:
      ++v3;
      if (v9 == v2)
      {
        v23 = v25;
        goto LABEL_31;
      }
    }

LABEL_6:
    goto LABEL_7;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_31:

  return v23;
}

uint64_t sub_21E478070()
{
  v1 = *(v0 + 112);
  v24 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_33;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v6 = MEMORY[0x223D5B080](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_32;
        }

        v6 = *(v1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v2 = sub_21E4DD488();
        goto LABEL_3;
      }

      v9 = [v6 viewController];
      if (!v9)
      {
        goto LABEL_23;
      }

      v10 = v9;
      v11 = [v9 aceObject];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
        goto LABEL_21;
      }

      v14 = [v13 itemType];
      if (!v14)
      {
        sub_21E4DCF78();
LABEL_20:

        v5 = v1 & 0xFFFFFFFFFFFFFF8;
LABEL_21:

        goto LABEL_22;
      }

      v15 = v14;
      v16 = sub_21E4DCF78();
      v18 = v17;

      v19 = sub_21E4DCF78();
      if (!v18)
      {
        v4 = v1 & 0xC000000000000001;
        goto LABEL_20;
      }

      if (v16 != v19 || v18 != v20)
      {
        v21 = sub_21E4DD518();

        v4 = v1 & 0xC000000000000001;
        v5 = v1 & 0xFFFFFFFFFFFFFF8;
        if (v21)
        {

          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      ++v3;
      if (v8 == v2)
      {
        v22 = v24;
        goto LABEL_30;
      }
    }

    v12 = v10;
LABEL_22:

LABEL_23:
    sub_21E4DD408();
    sub_21E4DD438();
    sub_21E4DD448();
    sub_21E4DD418();
    goto LABEL_24;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_30:

  return v22;
}

size_t sub_21E4782FC(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndentifiableCardSection(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  if (a1 >> 62)
  {
    v11 = sub_21E4DD488();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_16:
    *(v2 + 72) = v12;
  }

  v23 = MEMORY[0x277D84F90];
  result = sub_21E455A28(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v22 = v1;
    v12 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v11; ++i)
      {
        v15 = MEMORY[0x223D5B080](i, a1);
        sub_21E4DB688();
        *&v10[*(v4 + 20)] = v15;
        v23 = v12;
        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_21E455A28(v16 > 1, v17 + 1, 1);
          v12 = v23;
        }

        *(v12 + 16) = v17 + 1;
        sub_21E479A78(v10, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17);
      }
    }

    else
    {
      v18 = (a1 + 32);
      do
      {
        v19 = *v18;
        sub_21E4DB688();
        *&v8[*(v4 + 20)] = v19;
        v23 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_21E455A28(v20 > 1, v21 + 1, 1);
          v12 = v23;
        }

        *(v12 + 16) = v21 + 1;
        sub_21E479A78(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21);
        ++v18;
        --v11;
      }

      while (v11);
    }

    v2 = v22;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id *sub_21E478568()
{

  return v0;
}

uint64_t sub_21E4785D8()
{
  sub_21E478568();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

uint64_t sub_21E478630()
{
  v1 = v0;
  type metadata accessor for SmartDialogHeaderData();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0xE000000000000000;
  v2[4] = sub_21E4DC8A8();
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  *(v1 + 40) = *MEMORY[0x277D768C8];
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 72) = MEMORY[0x277D84F90];
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = v7;
  *(v1 + 120) = 0;
  *(v1 + 128) = v3;
  *(v1 + 136) = v4;
  *(v1 + 144) = v5;
  *(v1 + 152) = v6;
  *(v1 + 160) = 0;
  *(v1 + 168) = v7;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 1;
  type metadata accessor for SmartDialogAnimationData(0);
  v8 = swift_allocObject();
  sub_21E4DBDC8();
  v9 = OBJC_IVAR____TtC12SiriSharedUI24SmartDialogAnimationData_delay;
  *(v8 + OBJC_IVAR____TtC12SiriSharedUI24SmartDialogAnimationData_delay) = 0;
  v10 = *MEMORY[0x277D85188];
  v11 = sub_21E4DCBE8();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *(v1 + 216) = v8;
  v12 = objc_allocWithZone(sub_21E4DCE78());
  *(v1 + 224) = sub_21E4DCE58();
  *(v1 + 232) = 0;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0;
  *(v1 + 280) = 257;
  *(v1 + 288) = 0x4081600000000000;
  return v1;
}

uint64_t sub_21E4787B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SmartDialogData();
  result = sub_21E4DBD78();
  *a1 = result;
  return result;
}

id sub_21E4787F0()
{
  type metadata accessor for SmartDialogReportConcernMenu();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280C168C8 = result;
  return result;
}

uint64_t sub_21E478844()
{
  v0 = sub_21E4DB6D8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21E4DCF58();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21E4DCEF8();
  if (qword_280C14628 != -1)
  {
    swift_once();
  }

  v2 = qword_280C168C8;
  sub_21E4DB6C8();
  result = sub_21E4DCF88();
  qword_280C168D0 = result;
  *algn_280C168D8 = v4;
  return result;
}

uint64_t sub_21E4789A0()
{
  v0 = sub_21E4DB6D8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21E4DCF58();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21E4DCEF8();
  if (qword_280C14628 != -1)
  {
    swift_once();
  }

  v2 = qword_280C168C8;
  sub_21E4DB6C8();
  result = sub_21E4DCF88();
  qword_280C168E0 = result;
  *algn_280C168E8 = v4;
  return result;
}

uint64_t sub_21E478AF0()
{
  v0 = sub_21E4DB6D8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21E4DCF58();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21E4DCEF8();
  if (qword_280C14628 != -1)
  {
    swift_once();
  }

  v2 = qword_280C168C8;
  sub_21E4DB6C8();
  result = sub_21E4DCF88();
  qword_27CEC8880 = result;
  *algn_27CEC8888 = v4;
  return result;
}

uint64_t sub_21E478C4C()
{
  v0 = sub_21E4DB6D8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21E4DCF58();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21E4DCEF8();
  if (qword_280C14628 != -1)
  {
    swift_once();
  }

  v2 = qword_280C168C8;
  sub_21E4DB6C8();
  result = sub_21E4DCF88();
  qword_27CEC8890 = result;
  *algn_27CEC8898 = v4;
  return result;
}

uint64_t sub_21E478DA0()
{
  v0 = sub_21E4DB6D8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21E4DCF58();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21E4DCEF8();
  if (qword_280C14628 != -1)
  {
    swift_once();
  }

  v2 = qword_280C168C8;
  sub_21E4DB6C8();
  result = sub_21E4DCF88();
  qword_27CEC88A0 = result;
  *algn_27CEC88A8 = v4;
  return result;
}

uint64_t sub_21E478EFC()
{
  v0 = sub_21E4DB6D8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21E4DCF58();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21E4DCEF8();
  if (qword_280C14628 != -1)
  {
    swift_once();
  }

  v2 = qword_280C168C8;
  sub_21E4DB6C8();
  result = sub_21E4DCF88();
  qword_27CEC88B0 = result;
  *algn_27CEC88B8 = v4;
  return result;
}

void sub_21E479060()
{
  v1 = v0;
  sub_21E4DB698();
  sub_21E479A30(&qword_280C15B50, MEMORY[0x277CC95F0]);
  sub_21E4DCEC8();
  v2 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  sub_21E4DCFD8();
  sub_21E4DD5E8();
  v3 = *(v0 + v2[7]);
  sub_21E4DD5E8();
  if (v3)
  {
    v4 = v3;
    sub_21E4DD308();
  }

  v5 = *(v1 + v2[8]);
  sub_21E4DD5E8();
  if (v5)
  {
    v6 = v5;
    sub_21E4DD308();
  }

  v7 = *(v1 + v2[9]);
  if (v7)
  {
    sub_21E4DD5E8();
    v8 = v7;
    sub_21E4DD308();
  }

  else
  {
    sub_21E4DD5E8();
  }
}

uint64_t sub_21E4791FC()
{
  sub_21E4DD5C8();
  sub_21E479060();
  return sub_21E4DD608();
}

uint64_t sub_21E479240()
{
  sub_21E4DD5C8();
  sub_21E479060();
  return sub_21E4DD608();
}

uint64_t sub_21E4792A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SmartDialogReportConcernMenu();
  result = sub_21E4DBD78();
  *a1 = result;
  return result;
}

uint64_t sub_21E4792E0()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21E479344()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  return v1;
}

uint64_t sub_21E4793B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SmartDialogHeaderData();
  result = sub_21E4DBD78();
  *a1 = result;
  return result;
}

uint64_t sub_21E4793F4()
{
  v1 = OBJC_IVAR____TtC12SiriSharedUI24SmartDialogAnimationData__shouldAnimate;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6740);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12SiriSharedUI24SmartDialogAnimationData_delay;
  v4 = sub_21E4DCBE8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

void sub_21E479504()
{
  sub_21E4795D0();
  if (v0 <= 0x3F)
  {
    sub_21E4DCBE8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21E4795D0()
{
  if (!qword_280C14518)
  {
    v0 = sub_21E4DBE08();
    if (!v1)
    {
      atomic_store(v0, &qword_280C14518);
    }
  }
}

uint64_t sub_21E479668()
{
  result = sub_21E4DB698();
  if (v1 <= 0x3F)
  {
    result = sub_21E43F008(319, &qword_280C141A0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E4796FC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SmartDialogAnimationData(0);
  result = sub_21E4DBD78();
  *a1 = result;
  return result;
}

uint64_t sub_21E47973C()
{
  sub_21E4DD5C8();
  sub_21E4DB698();
  sub_21E479A30(&qword_280C15B50, MEMORY[0x277CC95F0]);
  sub_21E4DCEC8();
  sub_21E4DD308();
  return sub_21E4DD608();
}

uint64_t sub_21E4797E0()
{
  sub_21E4DB698();
  sub_21E479A30(&qword_280C15B50, MEMORY[0x277CC95F0]);
  sub_21E4DCEC8();
  return sub_21E4DD308();
}

uint64_t sub_21E47986C()
{
  sub_21E4DD5C8();
  sub_21E4DB698();
  sub_21E479A30(&qword_280C15B50, MEMORY[0x277CC95F0]);
  sub_21E4DCEC8();
  sub_21E4DD308();
  return sub_21E4DD608();
}

uint64_t sub_21E47990C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E4DB698();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21E479974()
{
  if ((sub_21E4DB668() & 1) == 0)
  {
    return 0;
  }

  sub_21E43F008(0, &qword_27CEC5E68);
  return sub_21E4DD2F8() & 1;
}

uint64_t sub_21E479A30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E479A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndentifiableCardSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21E479B24()
{
  sub_21E4DB698();
  if (v0 <= 0x3F)
  {
    sub_21E479C38(319, &qword_280C141C0, &qword_280C141C8);
    if (v1 <= 0x3F)
    {
      sub_21E479C38(319, &unk_280C14190, &qword_280C141A0);
      if (v2 <= 0x3F)
      {
        sub_21E479C38(319, &qword_280C140B0, &unk_280C140B8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21E479C38(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_21E43F008(255, a3);
    v4 = sub_21E4DD318();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_21E479CD8(uint64_t a1, uint64_t a2)
{
  if ((sub_21E4DB668() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SmartDialogReportConcernMenu.ButtonData(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_21E4DD518() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    sub_21E43F008(0, &qword_280C141C8);
    v14 = v13;
    v15 = v12;
    v16 = sub_21E4DD2F8();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = v4[8];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    sub_21E43F008(0, &qword_280C141A0);
    v20 = v19;
    v21 = v18;
    v22 = sub_21E4DD2F8();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = v4[9];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (v25)
    {
      sub_21E43F008(0, &unk_280C140B8);
      v26 = v25;
      v27 = v24;
      v28 = sub_21E4DD2F8();

      if (v28)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v25;
}

void SFCardSection.footnotePunchoutCommandUrl()(uint64_t a1@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    SFCardSection.punchoutCommandUrl()(a1);
  }

  else
  {
    v2 = sub_21E4DB588();
    v3 = *(*(v2 - 8) + 56);

    v3(a1, 1, 1, v2);
  }
}

Swift::String_optional __swiftcall SFCardSection.copyableText()()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
LABEL_72:
    v47 = [v1 command];
    if (v47)
    {
      v48 = v47;
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (v49 && (v50 = [v49 copyableItem]) != 0)
      {
        v51 = v50;
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          v53 = [v52 copyableString];
          if (v53)
          {
            v54 = v53;
            v55 = sub_21E4DCF78();
            v57 = v56;

            v46 = v57;
            v47 = v55;
            goto LABEL_92;
          }
        }
      }

      else
      {
      }

      v47 = 0;
    }

    v46 = 0;
    goto LABEL_92;
  }

  v3 = v2;
  v4 = v0;
  v5 = [v3 text_1];
  if (!v5)
  {
LABEL_71:

    goto LABEL_72;
  }

  v6 = v5;
  v7 = [v5 text_elements];
  if (!v7)
  {

    goto LABEL_71;
  }

  v8 = v7;
  sub_21E43F008(0, &qword_27CEC5E78);
  v9 = sub_21E4DD088();

  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_91:
    v11 = sub_21E4DD488();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v6;
  v64 = v4;
  v61 = v1;
  if (!v11)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

  v12 = 0;
  v1 = (v9 & 0xC000000000000001);
  v13 = MEMORY[0x277D84F90];
  v14 = &unk_278355000;
  do
  {
    v15 = v12;
    while (1)
    {
      if (v1)
      {
        v16 = MEMORY[0x223D5B080](v15, v9);
      }

      else
      {
        if (v15 >= *(v10 + 16))
        {
          goto LABEL_83;
        }

        v16 = *(v9 + 8 * v15 + 32);
      }

      v6 = v16;
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v17 = [v16 v14[385]];
      if (v17)
      {
        break;
      }

      ++v15;
      if (v12 == v11)
      {
        goto LABEL_49;
      }
    }

    v18 = v17;
    sub_21E43F008(0, &qword_27CEC5E80);
    v4 = sub_21E4DD088();

    if (v4 >> 62)
    {
      v69 = v4 & 0xFFFFFFFFFFFFFF8;
      v19 = sub_21E4DD488();
      v59 = v10;
      v60 = v9;
      if (!v19)
      {
        goto LABEL_40;
      }

LABEL_19:
      v10 = 0;
      v68 = v4 & 0xC000000000000001;
      v62 = MEMORY[0x277D84F90];
      v65 = v12;
      v66 = v19;
      v67 = v4;
LABEL_20:
      v20 = v10;
      while (1)
      {
        if (v68)
        {
          v21 = MEMORY[0x223D5B080](v20, v4);
        }

        else
        {
          if (v20 >= *(v69 + 16))
          {
            goto LABEL_88;
          }

          v21 = *(v4 + 8 * v20 + 32);
        }

        v4 = v21;
        v10 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v9 = v6;
        v22 = [v21 text];
        if (v22)
        {
          v23 = v22;
          v24 = v1;
          v25 = v11;
          v26 = v13;
          v27 = sub_21E4DCF78();
          v29 = v28;

          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
            v6 = v9;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = sub_21E4434DC(0, *(v62 + 2) + 1, 1, v62);
            }

            v32 = *(v62 + 2);
            v31 = *(v62 + 3);
            if (v32 >= v31 >> 1)
            {
              v62 = sub_21E4434DC((v31 > 1), v32 + 1, 1, v62);
            }

            *(v62 + 2) = v32 + 1;
            v33 = &v62[16 * v32];
            *(v33 + 4) = v27;
            *(v33 + 5) = v29;
            v4 = v67;
            v13 = v26;
            v11 = v25;
            v1 = v24;
            v14 = &unk_278355000;
            v12 = v65;
            if (v10 != v66)
            {
              goto LABEL_20;
            }

            goto LABEL_41;
          }

          v13 = v26;
          v11 = v25;
          v1 = v24;
          v14 = &unk_278355000;
          v12 = v65;
        }

        else
        {
        }

        v6 = v9;
        v4 = v67;
        ++v20;
        if (v10 == v66)
        {
          goto LABEL_41;
        }
      }

LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v69 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = v10;
    v60 = v9;
    if (v19)
    {
      goto LABEL_19;
    }

LABEL_40:
    v62 = MEMORY[0x277D84F90];
LABEL_41:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_21E4439A4(0, v13[2] + 1, 1, v13);
    }

    v10 = v59;
    v9 = v60;
    v4 = v13[2];
    v34 = v13[3];
    if (v4 >= v34 >> 1)
    {
      v13 = sub_21E4439A4((v34 > 1), v4 + 1, 1, v13);
    }

    v13[2] = v4 + 1;
    v13[v4 + 4] = v62;
  }

  while (v12 != v11);
LABEL_49:

  v4 = v13[2];
  if (v4)
  {
    v6 = 0;
    v10 = (v13 + 4);
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v6 >= v13[2])
      {
        goto LABEL_84;
      }

      v1 = *(v10 + 8 * v6);
      v35 = v1[2];
      v36 = *(v9 + 16);
      v37 = v36 + v35;
      if (__OFADD__(v36, v35))
      {
        goto LABEL_85;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v37 <= *(v9 + 24) >> 1)
      {
        if (!v1[2])
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v36 <= v37)
        {
          v39 = v36 + v35;
        }

        else
        {
          v39 = v36;
        }

        v9 = sub_21E4434DC(isUniquelyReferenced_nonNull_native, v39, 1, v9);
        if (!v1[2])
        {
LABEL_51:

          if (v35)
          {
            goto LABEL_86;
          }

          goto LABEL_52;
        }
      }

      if ((*(v9 + 24) >> 1) - *(v9 + 16) < v35)
      {
        goto LABEL_89;
      }

      swift_arrayInitWithCopy();

      if (v35)
      {
        v40 = *(v9 + 16);
        v41 = __OFADD__(v40, v35);
        v42 = v40 + v35;
        if (v41)
        {
          goto LABEL_90;
        }

        *(v9 + 16) = v42;
      }

LABEL_52:
      if (v4 == ++v6)
      {
        goto LABEL_68;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_68:

  if (!*(v9 + 16))
  {

    v4 = v64;
    v1 = v61;
    goto LABEL_71;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC53D0);
  sub_21E45463C();
  v43 = sub_21E4DCED8();
  v45 = v44;

  v46 = v45;
  v47 = v43;
LABEL_92:
  result.value._object = v46;
  result.value._countAndFlagsBits = v47;
  return result;
}

Swift::String_optional __swiftcall SFCardSection.copyableTitle()()
{
  v1 = [v0 previewButtonItems];
  if (!v1)
  {
    goto LABEL_21;
  }

  v2 = v1;
  sub_21E43F008(0, &qword_27CEC5E88);
  v3 = sub_21E4DD088();

  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_21E4DD488();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x223D5B080](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          break;
        }

        ++v5;
        if (v8 == v4)
        {
          goto LABEL_19;
        }
      }

      v10 = v9;

      v11 = [v10 title];
      if (v11)
      {
        v12 = v11;
        v13 = sub_21E4DCF78();
        v15 = v14;

        v16 = v15;
        v1 = v13;
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

LABEL_19:

LABEL_20:
  v1 = 0;
LABEL_21:
  v16 = 0;
LABEL_22:
  result.value._object = v16;
  result.value._countAndFlagsBits = v1;
  return result;
}

void SFCardSection.punchoutCommandUrl()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = [v2 referencedCommands];
  if (v7)
  {
    v8 = v7;
    sub_21E43F008(0, &unk_27CEC5E90);
    v9 = sub_21E4DD088();

    if (!(v9 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_15:

      v16 = sub_21E4DB588();
      v17 = *(*(v16 - 8) + 56);

      v17(a1, 1, 1, v16);
      return;
    }
  }

  v10 = sub_21E4DD488();
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223D5B080](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      break;
    }

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_15;
    }
  }

  v18 = v15;

  v19 = [v18 punchout];
  if (v19 && (v20 = v19, v21 = [v19 urls], v20, v21))
  {
    v22 = sub_21E4DB588();
    v23 = sub_21E4DD088();

    if (*(v23 + 16))
    {
      v24 = *(v22 - 8);
      (*(v24 + 16))(v6, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v22);

      (*(v24 + 56))(v6, 0, 1, v22);
    }

    else
    {

      (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    }
  }

  else
  {

    v25 = sub_21E4DB588();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  }

  sub_21E47AEC4(v6, a1);
}