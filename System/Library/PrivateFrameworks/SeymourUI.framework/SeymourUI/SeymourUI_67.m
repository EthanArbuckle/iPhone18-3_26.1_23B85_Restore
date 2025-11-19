uint64_t sub_20BC9BE58(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC9BF24, 0, 0);
}

uint64_t sub_20BC9BF24()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[3] + 56), *(v0[3] + 80));
  sub_20C1398E4();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourUI/FilterPropertyStringBuilder.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 53;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_20C134104();
  v0[9] = v4;
  *v3 = v0;
  v3[1] = sub_20BC9C068;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BC9EF94, v2, v4);
}

uint64_t sub_20BC9C068()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_20BC9C258;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_20BC9C1B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BC9C1B8()
{
  (*(*(v0[9] - 8) + 56))(v0[2], 0, 1);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BC9C258()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BC9C2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC9C374, 0, 0);
}

uint64_t sub_20BC9C374()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_20C13CDF4();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_20BC9B78C(v1, &unk_20C176780, v5);
  sub_20B520158(v1, &unk_27C762220);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_20BC9B78C(v1, &unk_20C176790, v6);
  sub_20B520158(v1, &unk_27C762220);
  v4(v1, 1, 1, v3);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_20BC9B78C(v1, &unk_20C1767A0, v7);
  sub_20B520158(v1, &unk_27C762220);
  v4(v1, 1, 1, v3);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_20BC9B78C(v1, &unk_20C1767B0, v8);
  sub_20B520158(v1, &unk_27C762220);
  v4(v1, 1, 1, v3);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_20BC9B78C(v1, &unk_20C1767C0, v9);
  sub_20B520158(v1, &unk_27C762220);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20BC9C698()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_20B531E94;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84FA0];

  return sub_20BC9F560(v3, v2);
}

uint64_t sub_20BC9C760()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_20B530AA8;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84FA0];

  return sub_20BC9F7D4(v3, v2);
}

uint64_t sub_20BC9C828()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_20B531B6C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84FA0];

  return sub_20BC9FA48(v3, v2);
}

uint64_t sub_20BC9C8F0()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_20B531D00;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84FA0];

  return sub_20BC9FE78(v3, v2);
}

uint64_t sub_20BC9C9B8()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_20B53052C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84FA0];

  return sub_20BCA00EC(v3, v2);
}

uint64_t sub_20BC9CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v7 = sub_20C13BB84();
  v4[5] = v7;
  v4[6] = *(v7 - 8);
  v4[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_20BC9CB64;

  return sub_20BC9BE58(a1, a4);
}

uint64_t sub_20BC9CB64()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_20BC9CCE4;
  }

  else
  {
    v2 = sub_20BC9CC78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BC9CC78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BC9CCE4()
{
  v1 = v0[9];
  sub_20C13B534();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20B517000, v3, v4, "[FilterPropertyStringBuilder] Failed to query resource with error: %@", v7, 0xCu);
    sub_20B520158(v8, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[2];
  v12 = v0[3];
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_20B52F9E8(v12, v11, &qword_27C761800);

  v13 = v0[1];

  return v13();
}

uint64_t sub_20BC9CEC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20BC9CFE8;

    return MEMORY[0x282200600]();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_20BC9CFE8()
{

  return MEMORY[0x2822009F8](sub_20BC9D0E4, 0, 0);
}

uint64_t sub_20BC9D0E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BC9D168()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20BC9D320;

    return sub_20BC9B9A4();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[11] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = sub_20BC9D560;

      return MEMORY[0x282200600]();
    }

    else
    {
      v6 = v0[1];

      return v6();
    }
  }
}

uint64_t sub_20BC9D320()
{

  return MEMORY[0x2822009F8](sub_20BC9D438, 0, 0);
}

uint64_t sub_20BC9D438()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_20BC9D560;

    return MEMORY[0x282200600]();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_20BC9D560()
{

  return MEMORY[0x2822009F8](sub_20BC9D65C, 0, 0);
}

uint64_t sub_20BC9D65C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BC9D6C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20BC9D8BC;
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = v2[3];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BC9D82C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BC9D82C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_20BC9D964;

  return sub_20BC9B9A4();
}

uint64_t sub_20BC9D8BC()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_20BC9D964;

  return sub_20BC9B9A4();
}

uint64_t sub_20BC9D964()
{

  return MEMORY[0x2822009F8](sub_20BC9DA60, 0, 0);
}

uint64_t sub_20BC9DA60()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_20B530C64;

  return MEMORY[0x282200600]();
}

uint64_t sub_20BC9DB2C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, void *a5@<X8>)
{
  v28 = a4;
  v9 = sub_20C138094();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = *a1;
  v16 = sub_20BC9DDB8(*a2, *(a2 + 8), *(a2 + 16), a3);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v27 = a5;
    v20 = v15[2];
    if (v20)
    {
      *v14 = v28;
      swift_storeEnumTagMultiPayload();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_20BC060E4(0, v20 + 1, 1, v15);
      }

      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        v15 = sub_20BC060E4(v21 > 1, v22 + 1, 1, v15);
      }

      v15[2] = v22 + 1;
      sub_20BC9EFAC(v14, v15 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22);
    }

    else
    {
    }

    *v11 = v18;
    v11[1] = v19;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_20BC060E4(0, v15[2] + 1, 1, v15);
    }

    v24 = v27;
    v26 = v15[2];
    v25 = v15[3];
    if (v26 >= v25 >> 1)
    {
      v15 = sub_20BC060E4(v25 > 1, v26 + 1, 1, v15);
    }

    v15[2] = v26 + 1;
    result = sub_20BC9EFAC(v11, v15 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26);
    *v24 = v15;
  }

  else
  {
    *a5 = v15;
  }

  return result;
}

uint64_t sub_20BC9DDB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v142 = a3;
  v150 = a2;
  v151 = a1;
  v145 = sub_20C133A74();
  v148 = *(v145 - 1);
  MEMORY[0x28223BE20](v145);
  v149 = (&v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v141 = &v129 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v8 - 8);
  v138 = &v129 - v9;
  v133 = sub_20C134104();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v130 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  MEMORY[0x28223BE20](v11 - 8);
  v131 = &v129 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0);
  MEMORY[0x28223BE20](v13 - 8);
  v134 = &v129 - v14;
  v15 = sub_20C135654();
  v135 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v129 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_20C1334D4();
  v17 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v19 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v140 = &v129 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v22 - 8);
  v137 = &v129 - v23;
  v147 = sub_20C1382B4();
  v24 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v26 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v139 = &v129 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v29 - 8);
  v136 = &v129 - v30;
  v143 = sub_20C138244();
  v31 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v33 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v129 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v37 - 8);
  if (v142 > 1u)
  {
    if (v142 == 2)
    {
      v145 = v15;
      v143 = a4;
      v52 = *(v146 + OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_skillLevels);
      v53 = 1 << *(v52 + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v55 = v54 & *(v52 + 56);
      v56 = (v53 + 63) >> 6;
      v147 = v17 + 16;
      v148 = v17 + 32;
      v149 = (v17 + 8);
      result = swift_bridgeObjectRetain_n();
      v57 = 0;
      v58 = v144;
      if (v55)
      {
        while (1)
        {
          v59 = v57;
LABEL_23:
          v60 = v140;
          (*(v17 + 16))(v140, *(v52 + 48) + *(v17 + 72) * (__clz(__rbit64(v55)) | (v59 << 6)), v58);
          v61 = *(v17 + 32);
          v61(v19, v60, v58);
          if (sub_20C1334A4() == v151 && v62 == v150)
          {

            goto LABEL_66;
          }

          v63 = sub_20C13DFF4();

          if (v63)
          {
            break;
          }

          v55 &= v55 - 1;
          v58 = v144;
          result = (*v149)(v19, v144);
          v57 = v59;
          if (!v55)
          {
            goto LABEL_20;
          }
        }

        v58 = v144;
LABEL_66:
        v96 = v137;
        v61(v137, v19, v58);
        v94 = 0;
        v95 = v145;
LABEL_67:
        (*(v17 + 56))(v96, v94, 1, v58);

        if ((*(v17 + 48))(v96, 1, v58) == 1)
        {
          v102 = &qword_27C762758;
          v103 = v96;
          goto LABEL_84;
        }

        v105 = sub_20C1334B4();
        v107 = v106;
        (*v149)(v96, v58);
        if (!v107)
        {
          return 0;
        }

        v108 = OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_configuration;
        v109 = v146;
        swift_beginAccess();
        v110 = v109 + v108;
        v111 = v131;
        sub_20B52F9E8(v110, v131, &qword_27C761800);
        v112 = v132;
        v113 = v133;
        if ((*(v132 + 48))(v111, 1, v133))
        {

          sub_20B520158(v111, &qword_27C761800);
          v114 = v134;
          (*(v135 + 56))(v134, 1, 1, v95);
        }

        else
        {
          v115 = v130;
          (*(v112 + 16))(v130, v111, v113);
          sub_20B520158(v111, &qword_27C761800);
          v116 = sub_20C134094();
          v117 = (*(v112 + 8))(v115, v113);
          MEMORY[0x28223BE20](v117);
          *(&v129 - 2) = v143;
          v118 = v134;
          sub_20B6B7110(sub_20B652A84, v116, v134);
          v114 = v118;

          v119 = v135;
          if ((*(v135 + 48))(v118, 1, v95) != 1)
          {
            v122 = v129;
            (*(v119 + 32))(v129, v114, v95);
            v123 = sub_20C135624();
            if (*(v123 + 16))
            {
              v124 = sub_20B65AA60(v105, v107);
              v126 = v125;

              if (v126)
              {
                v127 = *(*(v123 + 56) + 16 * v124);
                v128 = *(v119 + 8);

                v128(v122, v95);

                return v127;
              }
            }

            else
            {
            }

            (*(v119 + 8))(v122, v95);
            return 0;
          }
        }

        v102 = &qword_27C762AE0;
        v103 = v114;
        goto LABEL_84;
      }

LABEL_20:
      while (1)
      {
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_94;
        }

        if (v59 >= v56)
        {

          v94 = 1;
          v95 = v145;
          v96 = v137;
          goto LABEL_67;
        }

        v55 = *(v52 + 56 + 8 * v59);
        ++v57;
        if (v55)
        {
          goto LABEL_23;
        }
      }
    }

    v79 = *(v146 + OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_themes);
    v80 = 1 << *(v79 + 32);
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v82 = v81 & *(v79 + 56);
    v83 = (v80 + 63) >> 6;
    v146 = v148 + 16;
    v147 = v148 + 32;
    v84 = (v148 + 8);
    result = swift_bridgeObjectRetain_n();
    v85 = 0;
    v86 = v145;
    v87 = v141;
    if (!v82)
    {
LABEL_44:
      while (1)
      {
        v88 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          goto LABEL_96;
        }

        if (v88 >= v83)
        {

          v99 = 1;
          v100 = v138;
          goto LABEL_82;
        }

        v82 = *(v79 + 56 + 8 * v88);
        ++v85;
        if (v82)
        {
          goto LABEL_47;
        }
      }
    }

    while (1)
    {
      v88 = v85;
LABEL_47:
      v89 = v148;
      (*(v148 + 16))(v87, *(v79 + 48) + *(v148 + 72) * (__clz(__rbit64(v82)) | (v88 << 6)), v86);
      v90 = *(v89 + 32);
      v90(v149, v87, v86);
      if (sub_20C133A34() == v151 && v91 == v150)
      {

        goto LABEL_81;
      }

      v92 = sub_20C13DFF4();

      if (v92)
      {
        break;
      }

      v82 &= v82 - 1;
      v86 = v145;
      result = (*v84)(v149, v145);
      v85 = v88;
      if (!v82)
      {
        goto LABEL_44;
      }
    }

    v86 = v145;
LABEL_81:
    v100 = v138;
    v90(v138, v149, v86);
    v99 = 0;
LABEL_82:
    v121 = v148;
    (*(v148 + 56))(v100, v99, 1, v86);

    if ((*(v121 + 48))(v100, 1, v86) == 1)
    {
      v102 = &unk_27C767600;
      v103 = v100;
      goto LABEL_84;
    }

    v104 = sub_20C133A54();
    (*v84)(v100, v86);
    return v104;
  }

  if (v142)
  {
    v64 = *(v146 + OBJC_IVAR____TtC9SeymourUI27FilterPropertyStringBuilder_equipment);
    v65 = v64 + 56;
    v66 = 1 << *(v64 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & *(v64 + 56);
    v69 = (v66 + 63) >> 6;
    v146 = v24 + 16;
    v148 = v24 + 32;
    v149 = (v24 + 8);
    result = swift_bridgeObjectRetain_n();
    v70 = 0;
    v71 = v147;
    if (!v68)
    {
LABEL_32:
      while (1)
      {
        v72 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_95;
        }

        if (v72 >= v69)
        {

          v97 = 1;
          v98 = v136;
          goto LABEL_77;
        }

        v68 = *(v65 + 8 * v72);
        ++v70;
        if (v68)
        {
          goto LABEL_35;
        }
      }
    }

    while (1)
    {
      v72 = v70;
LABEL_35:
      v73 = v64;
      v74 = *(v64 + 48) + *(v24 + 72) * (__clz(__rbit64(v68)) | (v72 << 6));
      v75 = v139;
      (*(v24 + 16))(v139, v74, v71);
      v76 = *(v24 + 32);
      v76(v26, v75, v71);
      if (sub_20C138294() == v151 && v77 == v150)
      {

        goto LABEL_76;
      }

      v78 = sub_20C13DFF4();

      if (v78)
      {
        break;
      }

      v68 &= v68 - 1;
      v71 = v147;
      result = (*v149)(v26, v147);
      v70 = v72;
      v64 = v73;
      if (!v68)
      {
        goto LABEL_32;
      }
    }

LABEL_76:
    v98 = v136;
    v76(v136, v26, v147);
    v97 = 0;
LABEL_77:
    v120 = v147;
    (*(v24 + 56))(v98, v97, 1, v147);

    if ((*(v24 + 48))(v98, 1, v120) == 1)
    {
      v102 = &qword_27C7627E8;
      v103 = v98;
      goto LABEL_84;
    }

    v104 = sub_20C1382A4();
    (*v149)(v98, v120);
    return v104;
  }

  v145 = &v129 - v38;
  v39 = *(v146 + 120);
  v40 = v39 + 56;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v39 + 56);
  v44 = (v41 + 63) >> 6;
  v147 = v31 + 16;
  v148 = v31 + 32;
  v149 = (v31 + 8);
  result = swift_bridgeObjectRetain_n();
  v46 = 0;
  v47 = v143;
  v146 = v39;
  if (v43)
  {
    while (1)
    {
      v48 = v46;
LABEL_10:
      (*(v31 + 16))(v36, *(v39 + 48) + *(v31 + 72) * (__clz(__rbit64(v43)) | (v48 << 6)), v47);
      v49 = *(v31 + 32);
      v49(v33, v36, v47);
      if (sub_20C138224() == v151 && v50 == v150)
      {

        goto LABEL_61;
      }

      v51 = sub_20C13DFF4();

      if (v51)
      {
        break;
      }

      v43 &= v43 - 1;
      v47 = v143;
      result = (*v149)(v33, v143);
      v46 = v48;
      v39 = v146;
      if (!v43)
      {
        goto LABEL_7;
      }
    }

    v47 = v143;
LABEL_61:
    v49(v145, v33, v47);
    v93 = 0;
LABEL_62:
    v101 = v145;
    (*(v31 + 56))(v145, v93, 1, v47);

    if ((*(v31 + 48))(v101, 1, v47) == 1)
    {
      v102 = &qword_27C762710;
      v103 = v101;
LABEL_84:
      sub_20B520158(v103, v102);
      return 0;
    }

    v104 = sub_20C138234();
    (*v149)(v101, v47);
    return v104;
  }

LABEL_7:
  while (1)
  {
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v48 >= v44)
    {

      v93 = 1;
      goto LABEL_62;
    }

    v43 = *(v40 + 8 * v48);
    ++v46;
    if (v43)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_20BC9EFAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C138094();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BC9F010()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BC9CEA0(v0);
}

uint64_t sub_20BC9F0A0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20BC9D148(v0);
}

uint64_t sub_20BC9F130(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BC9C2D8(a1, a2, v2);
}

uint64_t sub_20BC9F1DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BC9C678(a1, v4, v5, v6);
}

uint64_t sub_20BC9F290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BC9C740(a1, v4, v5, v6);
}

uint64_t sub_20BC9F344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BC9C808(a1, v4, v5, v6);
}

uint64_t sub_20BC9F3F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BC9C8D0(a1, v4, v5, v6);
}

uint64_t sub_20BC9F4AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BC9C998(a1, v4, v5, v6);
}

uint64_t sub_20BC9F560(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_20C13BB84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762740);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC9F688, 0, 0);
}

uint64_t sub_20BC9F688()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  sub_20C13A024();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "SeymourUI/FilterPropertyStringBuilder.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 62;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762748);
  *v3 = v0;
  v3[1] = sub_20B530384;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BCA0478, v2, v4);
}

uint64_t sub_20BC9F7D4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_20C13BB84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D000);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC9F8FC, 0, 0);
}

uint64_t sub_20BC9F8FC()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  sub_20C13A004();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "SeymourUI/FilterPropertyStringBuilder.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 68;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D008);
  *v3 = v0;
  v3[1] = sub_20B530384;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BCA03A8, v2, v4);
}

uint64_t sub_20BC9FA48(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_20C13BB84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762EA0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC9FB70, 0, 0);
}

uint64_t sub_20BC9FB70()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  sub_20C13A044();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "SeymourUI/FilterPropertyStringBuilder.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 74;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762EA8);
  *v3 = v0;
  v3[1] = sub_20B5319C4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BCA0390, v2, v4);
}

uint64_t sub_20BC9FCBC()
{
  v1 = v0[13];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_20C13B534();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20B517000, v3, v4, "[FilterPropertyStringBuilder] Failed to query resource with error: %@", v7, 0xCu);
    sub_20B520158(v8, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[3];

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_20BC9FE78(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_20C13BB84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFF8);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC9FFA0, 0, 0);
}

uint64_t sub_20BC9FFA0()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  sub_20C139FE4();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "SeymourUI/FilterPropertyStringBuilder.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 80;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E38);
  *v3 = v0;
  v3[1] = sub_20B530384;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BCA0378, v2, v4);
}

uint64_t sub_20BCA00EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_20C13BB84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647C8);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BCA0214, 0, 0);
}

uint64_t sub_20BCA0214()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  sub_20C13A074();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "SeymourUI/FilterPropertyStringBuilder.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 86;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFF0);
  *v3 = v0;
  v3[1] = sub_20B530384;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BCA0360, v2, v4);
}

uint64_t sub_20BCA03C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B524778(a1, v4);
}

uint64_t sub_20BCA0490(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52A9D4;

  return sub_20BC9C2D8(a1, a2, v2);
}

uint64_t sub_20BCA0540(void *a1)
{
  sub_20B51F1D8(a1, v10);
  v3 = type metadata accessor for RadialCornerGradientLayer();
  if (swift_dynamicCast())
  {
    v4 = v9;
    v1[OBJC_IVAR____TtC9SeymourUI25RadialCornerGradientLayer_corner] = *(v9 + OBJC_IVAR____TtC9SeymourUI25RadialCornerGradientLayer_corner);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = sub_20C13DFD4();
    v8.receiver = v1;
    v8.super_class = v3;
    v6 = objc_msgSendSuper2(&v8, sel_initWithLayer_, v5);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v6;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

id sub_20BCA0708()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for RadialCornerGradientLayer();
  objc_msgSendSuper2(&v28, sel_layoutSublayers);
  [v0 bounds];
  Height = CGRectGetHeight(v29);
  [v0 bounds];
  Width = CGRectGetWidth(v30);
  v3 = v0[OBJC_IVAR____TtC9SeymourUI25RadialCornerGradientLayer_corner];
  if (Height >= Width)
  {
    if (v0[OBJC_IVAR____TtC9SeymourUI25RadialCornerGradientLayer_corner] > 1u)
    {
      if (v3 != 2)
      {
        goto LABEL_6;
      }
    }

    else if (v0[OBJC_IVAR____TtC9SeymourUI25RadialCornerGradientLayer_corner])
    {
LABEL_6:
      [v0 bounds];
      v13 = v12;
      [v0 bounds];
      v15 = v13 / v14;
      [v0 startPoint];
      v17 = v15 * (1.0 - v16);
      [v0 startPoint];
      return [v0 setEndPoint_];
    }

    [v0 bounds];
    v22 = v21;
    [v0 bounds];
    v24 = v22 / v23;
    [v0 startPoint];
    v26 = v24 * v25;
    [v0 startPoint];
    return [v0 setEndPoint_];
  }

  [v0 bounds];
  v5 = v4;
  [v0 bounds];
  v7 = v5 / v6;
  [v0 startPoint];
  if (v3 > 1)
  {
    v19 = v7 * (1.0 - v8);
    [v0 startPoint];
    return [v0 setEndPoint_];
  }

  else
  {
    v9 = v7 * v8;
    [v0 startPoint];
    return [v0 setEndPoint_];
  }
}

id sub_20BCA0958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadialCornerGradientLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20BCA09C4()
{
  result = qword_27C76D018;
  if (!qword_27C76D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D018);
  }

  return result;
}

id sub_20BCA0A18()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 pointSize];
  v2 = v1;

  result = [objc_opt_self() configurationWithPointSize:5 weight:v2];
  qword_27C79BF90 = result;
  return result;
}

char *sub_20BCA0AB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  [v10 setTextColor_];

  v13 = *MEMORY[0x277D76A20];
  v186 = objc_opt_self();
  v14 = [v186 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
  v15 = [v14 fontDescriptorWithSymbolicTraits_];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_titleLabel;
  v184 = objc_opt_self();
  v18 = [v184 fontWithDescriptor:v14 size:0.0];

  [v10 setFont_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v181 = objc_opt_self();
  v183 = ObjCClassFromMetadata;
  v20 = [v181 bundleForClass_];
  sub_20C132964();

  v21 = sub_20C13C914();
  [v10 setText_];

  v22 = sub_20C13C914();
  [v10 setAccessibilityIdentifier_];

  *&v5[v17] = v10;
  v23 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_thumbnailView;
  v24 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setContentMode_];
  [v24 setClipsToBounds_];
  v25 = [v24 layer];
  [v25 setCornerRadius_];

  [v24 setClipsToBounds_];
  *&v5[v23] = v24;
  v26 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_gymKitIconView;
  v27 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = [v11 clearColor];
  [v27 setBackgroundColor_];

  [v27 setContentMode_];
  v29 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v27 setTintColor_];

  *&v5[v26] = v27;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  [v30 setAdjustsFontForContentSizeCategory_];
  v31 = [v11 whiteColor];
  [v30 setTextColor_];

  v32 = [v186 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
  v33 = [v32 fontDescriptorWithSymbolicTraits_];
  if (v33)
  {
    v34 = v33;

    v32 = v34;
  }

  v35 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_workoutTitleLabel;
  v36 = [v184 fontWithDescriptor:v32 size:0.0];

  [v30 setFont_];
  [v30 setNumberOfLines_];
  LODWORD(v37) = 1148846080;
  [v30 setContentCompressionResistancePriority:0 forAxis:v37];
  LODWORD(v38) = 1148846080;
  [v30 setContentCompressionResistancePriority:1 forAxis:v38];

  *&v5[v35] = v30;
  v39 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  [v39 setAdjustsFontForContentSizeCategory_];
  v40 = [v11 secondaryLabelColor];
  [v39 setTextColor_];

  v41 = [v186 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v42 = [v41 fontDescriptorWithSymbolicTraits_];
  if (v42)
  {
    v43 = v42;

    v41 = v43;
  }

  v44 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_workoutSubtitleLabel;
  v45 = [v184 fontWithDescriptor:v41 size:0.0];

  [v39 setFont_];
  [v39 setNumberOfLines_];
  LODWORD(v46) = 1148846080;
  [v39 setContentCompressionResistancePriority:0 forAxis:v46];
  LODWORD(v47) = 1148846080;
  [v39 setContentCompressionResistancePriority:1 forAxis:v47];

  *&v5[v44] = v39;
  v48 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_summaryQueueCountView;
  v49 = [objc_allocWithZone(type metadata accessor for SummaryQueueCountView()) initWithFrame_];
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v50) = 1148846080;
  [v49 setContentCompressionResistancePriority:0 forAxis:v50];
  LODWORD(v51) = 1148846080;
  [v49 setContentCompressionResistancePriority:1 forAxis:v51];

  *&v5[v48] = v49;
  v52 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_startButton;
  v53 = type metadata accessor for SummaryPlatterButtonView();
  v54 = [objc_allocWithZone(v53) initWithFrame_];
  [v54 setTranslatesAutoresizingMaskIntoConstraints_];
  v55 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v54 setBackgroundColor_];

  v56 = [v11 blackColor];
  [*&v54[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label] setTextColor_];

  v57 = sub_20C13C914();
  [v54 setAccessibilityIdentifier_];

  *&v5[v52] = v54;
  v58 = [objc_allocWithZone(v53) initWithFrame_];
  [v58 setTranslatesAutoresizingMaskIntoConstraints_];
  if (sub_20C1380F4() == 3)
  {
    v59 = [v11 tertiarySystemFillColor];
  }

  else
  {
    v60 = [v11 tertiarySystemBackgroundColor];
    v61 = [objc_opt_self() currentTraitCollection];
    v62 = sub_20C13D3B4();
    v59 = [v60 resolvedColorWithTraitCollection_];
  }

  v63 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_doneButton;
  [v58 &:v59 OBJC:? LABEL:? PROTOCOL:? :? :?UINavigationControllerDelegate];

  v64 = [v181 bundleForClass_];
  sub_20C132964();

  v65 = [v11 whiteColor];
  v66 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v67 = *&v58[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v68 = sub_20C13C914();

  [v67 setText_];

  [*&v58[v66] setTextColor_];
  [v58 setNeedsLayout];

  v69 = sub_20C13C914();
  [v58 setAccessibilityIdentifier_];

  *&v5[v63] = v58;
  v70 = &v5[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onStartButtonTapped];
  *v70 = 0;
  *(v70 + 1) = 0;
  v71 = &v5[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onDoneButtonTapped];
  View = type metadata accessor for SummaryUpNextView();
  *v71 = 0;
  *(v71 + 1) = 0;
  v188.receiver = v5;
  v188.super_class = View;
  v73 = objc_msgSendSuper2(&v188, sel_initWithFrame_, a1, a2, a3, a4);
  v74 = [v11 secondarySystemBackgroundColor];
  v75 = [objc_opt_self() currentTraitCollection];
  v76 = sub_20C13D3B4();
  v77 = [v74 resolvedColorWithTraitCollection_];

  [v73 setBackgroundColor_];
  v78 = v73;
  v79 = [v78 layer];
  [v79 setCornerRadius_];

  v180 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_gymKitIconView;
  v80 = qword_27C760AB0;
  v81 = *(v78 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_gymKitIconView);
  if (v80 != -1)
  {
    swift_once();
  }

  v82 = qword_27C79BF90;
  v83 = sub_20C13C914();
  v84 = [objc_opt_self() smm:v83 systemImageNamed:v82 withConfiguration:?];

  [v81 setImage_];
  v185 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_doneButton;
  v85 = *(v78 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_doneButton);
  v86 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v87 = &v85[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v88 = *&v85[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  *v87 = sub_20BCA3164;
  v87[1] = v86;
  v89 = v85;

  sub_20B583ECC(v88);

  v187 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_startButton;
  v90 = *(v78 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_startButton);
  v91 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = v90;

  v93 = &v92[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v94 = *&v92[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  *v93 = sub_20BCA3188;
  v93[1] = v91;

  sub_20B583ECC(v94);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_20C151490;
  v96 = *(v78 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_titleLabel);
  *(v95 + 32) = v96;
  v97 = *(v78 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_summaryQueueCountView);
  *(v95 + 40) = v97;
  v98 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v99 = v96;
  v100 = v97;
  v101 = sub_20C13CC54();

  v102 = [v98 initWithArrangedSubviews_];

  v103 = v102;
  [v103 setTranslatesAutoresizingMaskIntoConstraints_];
  [v103 setAxis_];
  [v103 setAlignment_];
  [v103 setDistribution_];
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_20C14FE90;
  *(v104 + 32) = v103;
  v176 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_thumbnailView;
  v105 = *(v78 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_thumbnailView);
  *(v104 + 40) = v105;
  v177 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_workoutTitleLabel;
  v106 = *(v78 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_workoutTitleLabel);
  *(v104 + 48) = v106;
  v107 = *(v78 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_workoutSubtitleLabel);
  *(v104 + 56) = v107;
  v108 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v109 = v105;
  v110 = v106;
  v111 = v107;
  v112 = sub_20C13CC54();

  v113 = [v108 initWithArrangedSubviews_];

  v114 = v113;
  [v114 setTranslatesAutoresizingMaskIntoConstraints_];
  [v114 setAxis_];
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_20C151490;
  v116 = *&v187[v78];
  *(v115 + 32) = v116;
  v117 = *&v185[v78];
  *(v115 + 40) = v117;
  v118 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v119 = v116;
  v120 = v117;
  v121 = sub_20C13CC54();

  v122 = [v118 initWithArrangedSubviews_];

  v123 = v122;
  [v123 setTranslatesAutoresizingMaskIntoConstraints_];
  [v123 setSpacing_];
  v179 = v123;
  [v123 setAxis_];
  [v114 setCustomSpacing:v103 afterView:10.0];
  [v114 setCustomSpacing:*(v78 + v176) afterView:10.0];
  [v114 setCustomSpacing:*&v177[v78] afterView:0.0];
  v178 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v178 setTranslatesAutoresizingMaskIntoConstraints_];
  [v178 setShowsVerticalScrollIndicator_];
  [v178 addSubview_];
  [v178 addSubview_];
  [v78 addSubview_];
  [v78 addSubview_];
  v182 = objc_opt_self();
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_20C1697C0;
  v125 = [*(v78 + v176) widthAnchor];
  v126 = [v125 constraintEqualToConstant_];

  *(v124 + 32) = v126;
  v127 = [*(v78 + v176) heightAnchor];
  v128 = [v127 constraintEqualToConstant_];

  *(v124 + 40) = v128;
  v129 = [*(v78 + v180) leadingAnchor];
  v130 = [*(v78 + v176) leadingAnchor];
  v131 = [v129 constraintEqualToAnchor:v130 constant:10.0];

  *(v124 + 48) = v131;
  v132 = [*(v78 + v180) bottomAnchor];
  v133 = [*(v78 + v176) &selRef_secondaryLabel + 5];
  v134 = [v132 &selRef_passwordEntryCancelledHandler + 6];

  *(v124 + 56) = v134;
  v135 = [*&v185[v78] widthAnchor];
  v136 = [*(v78 + v176) widthAnchor];
  v137 = [v135 constraintEqualToAnchor_];

  *(v124 + 64) = v137;
  v138 = [*&v187[v78] widthAnchor];
  v139 = [*(v78 + v176) widthAnchor];
  v140 = [v138 constraintEqualToAnchor_];

  *(v124 + 72) = v140;
  v141 = [v178 topAnchor];
  v142 = [v78 topAnchor];
  v143 = [v141 &selRef_passwordEntryCancelledHandler + 6];

  *(v124 + 80) = v143;
  v144 = [v178 leadingAnchor];
  v145 = [v78 leadingAnchor];
  v146 = [v144 &selRef_passwordEntryCancelledHandler + 6];

  *(v124 + 88) = v146;
  v147 = [v178 trailingAnchor];
  v148 = [v78 trailingAnchor];
  v149 = [v147 &selRef_passwordEntryCancelledHandler + 6];

  *(v124 + 96) = v149;
  v150 = [v178 &selRef_secondaryLabel + 5];
  v151 = [v179 topAnchor];
  v152 = [v150 &selRef_passwordEntryCancelledHandler + 6];

  *(v124 + 104) = v152;
  v153 = [v114 topAnchor];
  v154 = [v178 topAnchor];
  v155 = [v153 constraintEqualToAnchor_];

  *(v124 + 112) = v155;
  v156 = [v114 leadingAnchor];
  v157 = [v178 leadingAnchor];
  v158 = [v156 constraintEqualToAnchor_];

  *(v124 + 120) = v158;
  v159 = [v114 trailingAnchor];
  v160 = [v178 trailingAnchor];
  v161 = [v159 constraintEqualToAnchor_];

  *(v124 + 128) = v161;
  v162 = [v114 bottomAnchor];

  v163 = [v178 bottomAnchor];
  v164 = [v162 constraintEqualToAnchor_];

  *(v124 + 136) = v164;
  v165 = [v179 leadingAnchor];
  v166 = [v178 leadingAnchor];
  v167 = [v165 constraintEqualToAnchor_];

  *(v124 + 144) = v167;
  v168 = [v179 trailingAnchor];
  v169 = [v178 trailingAnchor];

  v170 = [v168 constraintEqualToAnchor_];
  *(v124 + 152) = v170;
  v171 = [v179 bottomAnchor];

  v172 = [v78 bottomAnchor];
  v173 = [v171 constraintEqualToAnchor:v172 constant:-20.0];

  *(v124 + 160) = v173;
  sub_20B51C88C(0, &qword_281100500);
  v174 = sub_20C13CC54();

  [v182 activateConstraints_];

  return v78;
}

void sub_20BCA22FC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[*a2];
    if (v5)
    {

      v5(v6);

      sub_20B583ECC(v5);
    }

    else
    {
    }
  }
}

void sub_20BCA23DC(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_workoutTitleLabel);
  v5 = [a1 string];
  if (!v5)
  {
    sub_20C13C954();
    v5 = sub_20C13C914();
  }

  [v4 setText_];

  v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_workoutSubtitleLabel);
  v7 = [a2 string];
  if (!v7)
  {
    sub_20C13C954();
    v8 = sub_20C13C914();

    v7 = v8;
  }

  v9 = v7;
  [v6 setText_];
}

id sub_20BCA2510()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryUpNextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BCA263C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v66 = objc_opt_self();
  v3 = [v66 whiteColor];
  [v2 setTextColor_];

  v4 = *MEMORY[0x277D76A20];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:0];
  v7 = [v6 fontDescriptorWithSymbolicTraits_];
  if (v7)
  {
    v8 = v7;

    v6 = v8;
  }

  v9 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_titleLabel;
  v65 = objc_opt_self();
  v10 = [v65 fontWithDescriptor:v6 size:0.0];

  [v2 setFont_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = objc_opt_self();
  v12 = [v64 bundleForClass_];
  sub_20C132964();

  v13 = sub_20C13C914();
  [v2 setText_];

  v14 = sub_20C13C914();
  [v2 setAccessibilityIdentifier_];

  *(v1 + v9) = v2;
  v15 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_thumbnailView;
  v16 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setContentMode_];
  [v16 setClipsToBounds_];
  v17 = [v16 layer];
  [v17 setCornerRadius_];

  [v16 setClipsToBounds_];
  *(v1 + v15) = v16;
  v18 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_gymKitIconView;
  v19 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [v66 clearColor];
  [v19 setBackgroundColor_];

  [v19 setContentMode_];
  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v19 setTintColor_];

  *(v1 + v18) = v19;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setAdjustsFontForContentSizeCategory_];
  v23 = [v66 whiteColor];
  [v22 setTextColor_];

  v24 = [v5 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
  v25 = [v24 fontDescriptorWithSymbolicTraits_];
  if (v25)
  {
    v26 = v25;

    v24 = v26;
  }

  v27 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_workoutTitleLabel;
  v28 = [v65 fontWithDescriptor:v24 size:0.0];

  [v22 setFont_];
  [v22 setNumberOfLines_];
  LODWORD(v29) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v30];

  *(v1 + v27) = v22;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsFontForContentSizeCategory_];
  v32 = [v66 secondaryLabelColor];
  [v31 setTextColor_];

  v33 = [v5 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v34 = [v33 fontDescriptorWithSymbolicTraits_];
  if (v34)
  {
    v35 = v34;

    v33 = v35;
  }

  v36 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_workoutSubtitleLabel;
  v37 = [v65 fontWithDescriptor:v33 size:0.0];

  [v31 setFont_];
  [v31 setNumberOfLines_];
  LODWORD(v38) = 1148846080;
  [v31 setContentCompressionResistancePriority:0 forAxis:v38];
  LODWORD(v39) = 1148846080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v39];

  *(v1 + v36) = v31;
  v40 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_summaryQueueCountView;
  v41 = [objc_allocWithZone(type metadata accessor for SummaryQueueCountView()) initWithFrame_];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v42) = 1148846080;
  [v41 setContentCompressionResistancePriority:0 forAxis:v42];
  LODWORD(v43) = 1148846080;
  [v41 setContentCompressionResistancePriority:1 forAxis:v43];

  *(v1 + v40) = v41;
  v44 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_startButton;
  v45 = type metadata accessor for SummaryPlatterButtonView();
  v46 = [objc_allocWithZone(v45) initWithFrame_];
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  v47 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v46 setBackgroundColor_];

  v48 = [v66 blackColor];
  [*&v46[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label] setTextColor_];

  v49 = sub_20C13C914();
  [v46 setAccessibilityIdentifier_];

  *(v1 + v44) = v46;
  v50 = [objc_allocWithZone(v45) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  if (sub_20C1380F4() == 3)
  {
    v51 = [v66 tertiarySystemFillColor];
  }

  else
  {
    v52 = [v66 tertiarySystemBackgroundColor];
    v53 = [objc_opt_self() currentTraitCollection];
    v54 = sub_20C13D3B4();
    v51 = [v52 resolvedColorWithTraitCollection_];
  }

  v55 = OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_doneButton;
  [v50 setBackgroundColor_];

  v56 = [v64 bundleForClass_];
  sub_20C132964();

  v57 = [v66 whiteColor];
  v58 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v59 = *&v50[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v60 = sub_20C13C914();

  [v59 setText_];

  [*&v50[v58] setTextColor_];
  [v50 setNeedsLayout];

  v61 = sub_20C13C914();
  [v50 setAccessibilityIdentifier_];

  *(v1 + v55) = v50;
  v62 = (v1 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onStartButtonTapped);
  *v62 = 0;
  v62[1] = 0;
  v63 = (v1 + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onDoneButtonTapped);
  *v63 = 0;
  v63[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BCA31AC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI19GymKitConnectedView_imageView;
  v10 = sub_20C13C914();
  v11 = [objc_opt_self() smm:v10 systemImageNamed:?];

  v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v13 = [v11 imageWithTintColor:v12 renderingMode:1];

  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v14;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for GymKitConnectedView();
  v15 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC9SeymourUI19GymKitConnectedView_imageView;
  v17 = *&v15[OBJC_IVAR____TtC9SeymourUI19GymKitConnectedView_imageView];
  v18 = v15;
  [v18 addSubview_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20C14FE90;
  v21 = [*&v15[v16] widthAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v20 + 32) = v22;
  v23 = [*&v15[v16] heightAnchor];
  v24 = [v23 constraintEqualToConstant_];

  *(v20 + 40) = v24;
  v25 = [*&v15[v16] centerXAnchor];
  v26 = [v18 centerXAnchor];

  v27 = [v25 constraintEqualToAnchor_];
  *(v20 + 48) = v27;
  v28 = [*&v15[v16] centerYAnchor];
  v29 = [v18 centerYAnchor];

  v30 = [v28 constraintEqualToAnchor_];
  *(v20 + 56) = v30;
  sub_20B5E29D0();
  v31 = sub_20C13CC54();

  [v19 activateConstraints_];

  return v18;
}

id sub_20BCA3580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GymKitConnectedView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BCA35E8()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19GymKitConnectedView_imageView;
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() smm:v2 systemImageNamed:?];

  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v5 = [v3 imageWithTintColor:v4 renderingMode:1];

  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v6;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BCA3734()
{
  result = sub_20C13C914();
  qword_27C79BF98 = result;
  return result;
}

uint64_t sub_20BCA376C()
{
  result = sub_20C13C914();
  qword_27C79BFA0 = result;
  return result;
}

uint64_t sub_20BCA37A4()
{
  result = sub_20C13C914();
  qword_27C79BFA8 = result;
  return result;
}

uint64_t sub_20BCA37DC()
{
  result = sub_20C13C914();
  qword_27C79BFB0 = result;
  return result;
}

uint64_t sub_20BCA3814()
{
  result = sub_20C13C914();
  qword_27C79BFB8 = result;
  return result;
}

uint64_t sub_20BCA384C()
{
  result = sub_20C13C914();
  qword_27C79BFC0 = result;
  return result;
}

uint64_t sub_20BCA3884()
{
  result = sub_20C13C914();
  qword_27C79BFC8 = result;
  return result;
}

uint64_t sub_20BCA38BC()
{
  result = sub_20C13C914();
  qword_27C79BFD0 = result;
  return result;
}

uint64_t sub_20BCA3918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D078);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_20C135174();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  sub_20C13B184();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20BB6C780(v9);
    v17 = sub_20C1356F4();
    sub_20BCA4008(&qword_27C769680, MEMORY[0x277D51BF0]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D51B88], v17);
    *(swift_allocObject() + 16) = v18;
    sub_20C134644();
    return sub_20C137CA4();
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v13, v16, v10);
    v24 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D080);
    sub_20BCA3ED0();
    sub_20BCA3F54();
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    sub_20C139954();
    (*(v21 + 8))(v6, v22);
    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_20BCA3E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 120);
  v6 = *(*v3 + 128);
  __swift_project_boxed_opaque_existential_1((*v3 + 96), v5);
  return a3(v5, v6);
}

unint64_t sub_20BCA3ED0()
{
  result = qword_27C76D088;
  if (!qword_27C76D088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76D080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D088);
  }

  return result;
}

unint64_t sub_20BCA3F54()
{
  result = qword_27C76D090;
  if (!qword_27C76D090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76D080);
    sub_20BCA4008(&qword_27C76D098, MEMORY[0x277D53DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D090);
  }

  return result;
}

uint64_t sub_20BCA4008(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20BCA4050()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.109803922 green:0.105882353 blue:0.11372549 alpha:1.0];
  qword_27C76D0A0 = result;
  return result;
}

void sub_20BCA40A4()
{
  v0 = *MEMORY[0x277D76A28];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2 compatibleWithTraitCollection:0];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  qword_27C76D0A8 = v6;
}

void sub_20BCA4174()
{
  v0 = *MEMORY[0x277D76968];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2 compatibleWithTraitCollection:0];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = objc_opt_self();
  v7 = [v6 fontWithDescriptor:v3 size:0.0];

  v8 = *MEMORY[0x277D76920];
  v9 = [v1 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];
  if (v10)
  {
    v11 = v10;

    v9 = v11;
  }

  v12 = [v6 fontWithDescriptor:v9 size:0.0];

  sub_20C1380F4();
  v13 = sub_20C138104();
  if (v13 == sub_20C138104())
  {
    v14 = v12;
  }

  else
  {
    v14 = v7;
  }

  v15 = v14;

  qword_27C76D0B0 = v15;
}

id sub_20BCA432C()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = type metadata accessor for CatalogLockupPreviewProvider();
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_artworkView];
  sub_20B51C88C(0, &qword_27C762070);
  sub_20C137BC4();
  v3 = sub_20C13D5A4();
  [v2 setBackgroundColor_];

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  if (qword_27C760AF8 != -1)
  {
    swift_once();
  }

  [v5 setBackgroundColor_];

  v6 = [v1 view];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  [v6 addSubview_];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_titleLabel];
  [v8 addSubview_];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_subtitleLabel];
  [v11 addSubview_];

  if (!v1[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_platform])
  {
    v14 = [objc_opt_self() mainScreen];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v40.origin.x = v16;
    v40.origin.y = v18;
    v40.size.width = v20;
    v40.size.height = v22;
    Width = CGRectGetWidth(v40);
    v41.origin.x = v16;
    v41.origin.y = v18;
    v41.size.width = v20;
    v41.size.height = v22;
    Height = CGRectGetHeight(v41);
    if (Height >= Width)
    {
      Height = Width;
    }

    v25 = Height + -40.0;
    v26 = (Height + -40.0) * 0.5625;
LABEL_13:
    v27 = &v1[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_mediaTagStringBuilder];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_mediaTagStringBuilder], *&v1[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_mediaTagStringBuilder + 24]);
    sub_20C133F54();
    v28 = sub_20C138544();

    [v10 setAttributedText_];

    __swift_project_boxed_opaque_existential_1(v27, *(v27 + 3));
    sub_20C133F94();
    v29 = sub_20C138544();

    [v13 setAttributedText_];

    sub_20BCA4804();
    sub_20BCA4C0C(v25, v26);
    v30 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);
    v31 = sub_20C13CC54();
    [v30 activateConstraints_];

    v32 = [v1 view];
    if (v32)
    {
      v33 = v32;

      [v33 systemLayoutSizeFittingSize_];
      v35 = v34;
      v37 = v36;

      return [v1 setPreferredContentSize_];
    }

    goto LABEL_19;
  }

  if (v1[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_platform] == 1)
  {
    v26 = 170.4375;
    v25 = 303.0;
    goto LABEL_13;
  }

LABEL_20:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BCA4804()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_artworkImageLoader), *(v0 + OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_artworkImageLoader + 24));
  sub_20C138B14();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20BCA5918;
  *(v13 + 24) = v12;
  (*(v2 + 16))(v4, v7, v1);
  v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v15 = swift_allocObject();
  (*(v2 + 32))(v15 + v14, v4, v1);
  v16 = (v15 + ((v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_20BAC2FC0;
  v16[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v17 = v21;
  v18 = sub_20C137CB4();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v18(sub_20B52347C, v19);

  return (*(v22 + 8))(v11, v17);
}

void sub_20BCA4B64(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_artworkView);

    [v6 setImage_];
  }

  *a2 = v5 == 0;
}

id sub_20BCA4C0C(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C1615B0;
  v6 = *&v2[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_artworkView];
  v7 = [v6 topAnchor];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = result;
  v10 = [result topAnchor];

  v11 = [v7 constraintEqualToAnchor:v10 constant:20.0];
  *(v5 + 32) = v11;
  v12 = [v6 widthAnchor];
  v13 = [v12 constraintEqualToConstant_];

  *(v5 + 40) = v13;
  v14 = [v6 heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v5 + 48) = v15;
  v16 = [v6 centerXAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = result;
  v18 = [result centerXAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v5 + 56) = v19;
  v20 = *&v2[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_titleLabel];
  v21 = [v20 topAnchor];
  v22 = [v6 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:20.0];

  *(v5 + 64) = v23;
  v24 = [v20 leadingAnchor];
  v25 = [v6 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v5 + 72) = v26;
  v27 = [v20 trailingAnchor];
  v28 = [v6 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v5 + 80) = v29;
  v30 = *&v2[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_subtitleLabel];
  v31 = [v30 topAnchor];
  v32 = [v20 bottomAnchor];
  v33 = [v31 &selRef_passwordEntryCancelledHandler + 6];

  *(v5 + 88) = v33;
  v34 = [v30 leadingAnchor];
  v35 = [v20 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v5 + 96) = v36;
  v37 = [v30 trailingAnchor];
  v38 = [v20 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v5 + 104) = v39;
  v40 = [v30 bottomAnchor];
  result = [v2 view];
  if (result)
  {
    v41 = result;
    v42 = [result bottomAnchor];

    v43 = [v40 constraintEqualToAnchor:v42 constant:-20.0];
    *(v5 + 112) = v43;
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_20BCA511C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogLockupPreviewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CatalogLockupPreviewProvider()
{
  result = qword_27C76D0F8;
  if (!qword_27C76D0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BCA52A4()
{
  result = sub_20C137C24();
  if (v1 <= 0x3F)
  {
    result = sub_20C134014();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_20BCA5398(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v36 = a3;
  v40 = a2;
  v32 = a1;
  v5 = sub_20C137C24();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C136CD4();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134E44();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_artworkView;
  v13 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v14 = [v13 init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setClipsToBounds_];
  [v14 setContentMode_];
  v15 = [v14 layer];
  [v15 setCornerRadius_];

  [v14 setClipsToBounds_];
  *&v3[v12] = v14;
  v16 = OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  if (qword_27C760B00 != -1)
  {
    swift_once();
  }

  [v17 setFont_];
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  [v17 setTextColor_];

  [v17 setNumberOfLines_];
  *&v3[v16] = v17;
  v20 = OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_subtitleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  if (qword_27C760B08 != -1)
  {
    swift_once();
  }

  [v21 setFont_];
  v22 = [v18 whiteColor];
  [v21 setTextColor_];

  [v21 setNumberOfLines_];
  *&v3[v20] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  sub_20B51C710(v42, &v3[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_artworkImageLoader]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v42, &v3[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_mediaTagStringBuilder]);
  v23 = OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_lockup;
  v24 = sub_20C134014();
  v25 = *(v24 - 8);
  v26 = v40;
  (*(v25 + 16))(&v4[v23], v40, v24);
  v4[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_platform] = v36;
  sub_20C133F04();
  v27 = v33;
  sub_20C134E34();
  sub_20B62A2AC(v11);
  v28 = v37;
  sub_20C136CB4();
  (*(v34 + 8))(v27, v35);
  (*(v38 + 32))(&v4[OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_artwork], v28, v39);
  v29 = type metadata accessor for CatalogLockupPreviewProvider();
  v41.receiver = v4;
  v41.super_class = v29;
  v30 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);
  (*(v25 + 8))(v26, v24);
  return v30;
}

void sub_20BCA5934()
{
  v1 = OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_artworkView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setClipsToBounds_];
  [v2 setContentMode_];
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  [v2 setClipsToBounds_];
  *(v0 + v1) = v2;
  v4 = OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAdjustsFontForContentSizeCategory_];
  if (qword_27C760B00 != -1)
  {
    swift_once();
  }

  [v5 setFont_];
  v6 = objc_opt_self();
  v7 = [v6 whiteColor];
  [v5 setTextColor_];

  [v5 setNumberOfLines_];
  *(v0 + v4) = v5;
  v8 = OBJC_IVAR____TtC9SeymourUI28CatalogLockupPreviewProvider_subtitleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  if (qword_27C760B08 != -1)
  {
    swift_once();
  }

  [v9 setFont_];
  v10 = [v6 whiteColor];
  [v9 setTextColor_];

  [v9 setNumberOfLines_];
  *(v0 + v8) = v9;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BCA5BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = sub_20C138204();
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C136594();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  v30 = v4;
  if (v10)
  {
    v12 = MEMORY[0x277D84F90];
    v11 = sub_20BEDED64(v10, 0);
    v27 = sub_20BEE2AE8(v31, &v11[(*(v4 + 80) + 32) & ~*(v4 + 80)], v10, a1);
    v25 = v31[4];
    v26 = v31[3];

    sub_20B583EDC();
    if (v27 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = v11;
LABEL_5:
  v31[0] = v11;
  sub_20BCA96F8(v31);
  v13 = v31[0];
  v14 = v31[0][2];
  if (v14)
  {
    v24[2] = a2;
    v31[0] = v12;
    sub_20BB5D604(0, v14, 0);
    v15 = v31[0];
    v16 = *(v30 + 16);
    v17 = *(v30 + 80);
    v24[1] = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v26 = *(v30 + 72);
    v27 = v16;
    v30 += 16;
    v19 = (v30 - 8);
    v25 = (v7 + 32);
    do
    {
      v20 = v29;
      v27(v6, v18, v29);
      sub_20C1381A4();
      sub_20C136554();
      (*v19)(v6, v20);
      v31[0] = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        sub_20BB5D604(v21 > 1, v22 + 1, 1);
        v15 = v31[0];
      }

      v15[2] = v22 + 1;
      (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22, v9, v28);
      v18 = v26 + v18;
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  sub_20BBA9524(v15);

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BCA5F64()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v1[13] = *(v5 + 64);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v1[16] = v6;
  v1[17] = *(v6 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BCA614C, 0, 0);
}

uint64_t sub_20BCA614C()
{
  v33 = v0[13];
  v34 = v0[18];
  v29 = v0[15];
  v30 = v0[12];
  v31 = v0[11];
  v32 = v0[14];
  v28 = v0[10];
  v39 = v0[9];
  v1 = v0[7];
  v36 = v0[8];
  v2 = v0[6];
  v41 = v0[5];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_bookmarkClient), *(v5 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_bookmarkClient + 24));
  sub_20C13A214();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_20BCAB844;
  *(v6 + 24) = v5;
  v35 = *(v4 + 16);
  v35(v2, v1, v3);
  v38 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (v41 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v9 = *(v4 + 32);
  v9(v8 + v38, v2, v3);
  v37 = v9;
  v10 = (v8 + v7);
  *v10 = sub_20B6331FC;
  v10[1] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);
  sub_20C137C94();
  v40 = *(v4 + 8);
  v40(v1, v3);
  sub_20B5E2E18();
  v11 = sub_20C13D374();
  v35(v1, v36, v3);
  v12 = swift_allocObject();
  v9(v12 + v38, v1, v3);
  *(v12 + v7) = v11;
  sub_20C137C94();
  v40(v36, v3);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20BCAB92C;
  *(v13 + 24) = v5;
  v35(v36, v39, v3);
  v14 = swift_allocObject();
  v9(v14 + v38, v36, v3);
  v15 = (v14 + v7);
  *v15 = sub_20B68D730;
  v15[1] = v13;

  sub_20C137C94();
  v40(v39, v3);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20BCAB934;
  *(v16 + 24) = v5;
  v35(v39, v28, v3);
  v17 = swift_allocObject();
  v37(v17 + v38, v39, v3);
  v18 = (v17 + v7);
  *v18 = sub_20B68D730;
  v18[1] = v16;

  sub_20C137C94();
  v40(v28, v3);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20BCAB960;
  *(v20 + 24) = v19;
  (*(v30 + 16))(v32, v29, v31);
  v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v22 = swift_allocObject();
  (*(v30 + 32))(v22 + v21, v32, v31);
  v23 = (v22 + ((v33 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_20B8955C4;
  v23[1] = v20;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v30 + 8))(v29, v31);
  v25 = swift_task_alloc();
  v0[19] = v25;
  *(v25 + 16) = "SeymourUI/PlaylistGalleryShelf.swift";
  *(v25 + 24) = 36;
  *(v25 + 32) = 2;
  *(v25 + 40) = 84;
  *(v25 + 48) = v34;
  v26 = swift_task_alloc();
  v0[20] = v26;
  *v26 = v0;
  v26[1] = sub_20BCA67F0;

  return MEMORY[0x2822008A0](v0 + 22, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BC88A7C, v25, v24);
}

uint64_t sub_20BCA67F0()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BCA69D4, 0, 0);
  }

  else
  {
    (*(v2[17] + 8))(v2[18], v2[16]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_20BCA69D4()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BCA6AB4(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = "SeymourUI/PlaylistGalleryShelf.swift";
  *(v4 + 24) = 36;
  *(v4 + 32) = 2;
  *(v4 + 40) = 117;
  *(v4 + 48) = &unk_20C176C00;
  *(v4 + 56) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);

  return sub_20C137C94();
}

uint64_t sub_20BCA6BBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_lazyLockupFetcher);
  *(v3 + 192) = a1;

  *(v3 + 176) = MEMORY[0x277D84F98];

  *(swift_allocObject() + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);

  return sub_20C137CA4();
}

uint64_t sub_20BCA6C84(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = "SeymourUI/PlaylistGalleryShelf.swift";
  *(v2 + 24) = 36;
  *(v2 + 32) = 2;
  *(v2 + 40) = 80;
  *(v2 + 48) = &unk_20C176BF0;
  *(v2 + 56) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);

  return sub_20C137C94();
}

uint64_t sub_20BCA6D48(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_20BCA6D68, 0, 0);
}

uint64_t sub_20BCA6D68()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    *(v0 + 64) = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BCA6E64, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20BCA6E64()
{

  sub_20BCA6ED8();

  return MEMORY[0x2822009F8](sub_20BCABCBC, 0, 0);
}

uint64_t sub_20BCA6ED8()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_lazyLockupFetcher);
  v7 = *(sub_20BBA8AA0() + 16);

  if (v7)
  {

    v8 = sub_20BBADF04(v6, v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C14F980;
    v9 = swift_allocObject();
    v41 = v5;
    v10 = v9;
    *(v9 + 16) = 0;
    v11 = sub_20C138104();
    v12 = sub_20C138104();
    v13 = 0x4086800000000000;
    if (v11 != v12)
    {
      v13 = 0;
    }

    *(v10 + 24) = v13;
    *(v10 + 32) = v11 != v12;
    v14 = (v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_storefrontLocalizer);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_storefrontLocalizer + 24));
    *(v10 + 40) = sub_20C138D34();
    *(v10 + 48) = v15;
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    *(v10 + 56) = sub_20C138D34();
    *(v10 + 64) = v16;
    v17 = sub_20C13C914();
    v18 = [objc_opt_self() smm:v17 systemImageNamed:?];

    v19 = v10 | 0x1000000000000006;
    *(v10 + 72) = v18;
    *(v10 + 80) = 0;
    *(v10 + 88) = 0;
    *(v10 + 96) = 0;
    v5 = v41;
    *(v8 + 32) = v19;
  }

  v42 = 0uLL;
  LOBYTE(v43) = 1;
  *(&v43 + 1) = 0;
  *&v44 = 0;
  WORD4(v44) = 128;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  LOBYTE(v48) = 0;
  *(&v48 + 1) = v8;
  *&v49[0] = MEMORY[0x277D84F90];
  *(v49 + 8) = 0u;
  *(&v49[1] + 8) = 0u;
  *(&v49[2] + 1) = 0;
  v50 = 2;
  nullsub_1(&v42);
  v20 = v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row;
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 144);
  v51[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 128);
  v51[9] = v21;
  v52 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 160);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 80);
  v51[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 64);
  v51[5] = v22;
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 112);
  v51[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 96);
  v51[7] = v23;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 16);
  v51[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row);
  v51[1] = v24;
  v25 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 48);
  v51[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 32);
  v51[3] = v25;
  v26 = v49[2];
  *(v20 + 128) = v49[1];
  *(v20 + 144) = v26;
  *(v20 + 160) = v50;
  v27 = v47;
  *(v20 + 64) = v46;
  *(v20 + 80) = v27;
  v28 = v49[0];
  *(v20 + 96) = v48;
  *(v20 + 112) = v28;
  v29 = v43;
  *v20 = v42;
  *(v20 + 16) = v29;
  v30 = v45;
  *(v20 + 32) = v44;
  *(v20 + 48) = v30;
  sub_20B520158(v51, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v33 = v5;
      v34 = sub_20B61DE00(v1, result);
      if (v35)
      {
        v37 = v34;
        v38 = v35;
        v39 = v36;
        sub_20B5E2E18();
        *v33 = sub_20C13D374();
        (*(v3 + 104))(v33, *MEMORY[0x277D85200], v2);
        v40 = sub_20C13C584();
        result = (*(v3 + 8))(v33, v2);
        if ((v40 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B6215B8(v37, v38, v39, v1, 1, v32);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BCA7338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_20BCA735C, 0, 0);
}

uint64_t sub_20BCA735C()
{
  v0[2] = v0[4];

  v1 = swift_task_alloc();
  v0[6] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);
  v3 = sub_20C138204();
  v4 = sub_20B68D6D4(&qword_27C76D180, &qword_27C763310);
  *v1 = v0;
  v1[1] = sub_20BCA7478;
  v5 = v0[5];

  return MEMORY[0x2821AFB08](&unk_20C176C10, v5, v2, v3, v4);
}

uint64_t sub_20BCA7478(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_20BCA762C;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_20BCA75A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BCA75A8()
{
  v1 = v0[3];
  v2 = sub_20B718BBC(v0[8]);

  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_20BCA762C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BCA7690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BCA7730, 0, 0);
}

uint64_t sub_20BCA7730()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_contentAvailabilityFilter, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v2 = sub_20C1381E4();
    v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763320);
    v0[11] = sub_20B68D6D4(&qword_27C763328, &qword_27C763320);
    v0[7] = v2;
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_20BCA7934;

    return sub_20C0A6C2C((v0 + 7));
  }

  else
  {
    v5 = sub_20C133D94();
    sub_20BCABC58();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50460], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20BCA7934(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_20B916B98;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 56);
    v4 = sub_20BCA7A50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20BCA7A50()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (*(v1 + 16))
  {
    v2 = v0[18];
    v3 = v0[15];
    sub_20B717280(v0[20]);

    v4 = sub_20C132E94();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_20C1381F4();

    sub_20B520158(v2, &qword_27C762AC0);
    v5 = sub_20C138204();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  }

  else
  {

    v7 = sub_20C133D94();
    sub_20BCABC58();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D50460], v7);
    swift_willThrow();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BCA7C44()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_configurationClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_contentAvailabilityFilter);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_mediaTagStringBuilder);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_storefrontLocalizer);

  return v0;
}

uint64_t sub_20BCA7DBC()
{
  sub_20BCA7C44();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaylistGalleryShelf()
{
  result = qword_27C76D170;
  if (!qword_27C76D170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BCA7E68()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_20BCA7F50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-v3 - 8];
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_20B6383D0(0, 0, v4, &unk_20C176BB8, v6);

  swift_getObjectType();
  sub_20C13A7B4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C137384();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_20BCA81B0()
{
  v1 = sub_20C13BB84();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_20BCA829C;

  return sub_20BCA5F64();
}

uint64_t sub_20BCA829C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BCA83D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20BCA83D8()
{
  v20 = v0;
  v1 = *(v0 + 80);
  sub_20C13B4A4();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v18 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_20C13E094();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "[PlaylistGalleryShelf] Failed to update playlists with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20BCA85B0(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_20C13BB84();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BCA867C, 0, 0);
}

uint64_t sub_20BCA867C()
{
  sub_20C13B534();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "[PlaylistGalleryShelf] PlaylistsUpdated, updating shelf", v3, 2u);
    MEMORY[0x20F2F6A40](v3, -1, -1);
  }

  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];

  v7 = *(v6 + 8);
  v0[14] = v7;
  v7(v4, v5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_20BCA882C;

    return sub_20BCA5F64();
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_20BCA882C()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BCA897C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20BCA897C()
{
  v20 = v0;
  v1 = *(v0 + 136);

  sub_20C13B4A4();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 112);
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_20C13E094();
    v11 = sub_20B51E694(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20B517000, v3, v4, "[PlaylistGalleryShelf] Failed to update playlists with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    v18(v17, v6);
  }

  else
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 80);

    v12(v13, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20BCA8B70(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_20C13BB84();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BCA8C30, 0, 0);
}

uint64_t sub_20BCA8C30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_20BCA8D20;

    return sub_20BCA5F64();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BCA8D20()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BCA8E64, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20BCA8E64()
{
  v20 = v0;
  v1 = *(v0 + 120);

  sub_20C13B4A4();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 88);
    v18 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_20C13E094();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "[PlaylistGalleryShelf] Failed to update playlists with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20BCA9044(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  sub_20BBA9700(a1, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20BCAB58C;
  *(v15 + 24) = v2;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v16, v7, v4);
  v19 = (v18 + v17);
  *v19 = sub_20B7F133C;
  v19[1] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v5 + 8))(v10, v4);
  v20 = v24;
  v21 = sub_20C137CB4();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_20B52347C, v22);

  return (*(v25 + 8))(v14, v20);
}

uint64_t sub_20BCA9354()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = "SeymourUI/PlaylistGalleryShelf.swift";
  *(v1 + 24) = 36;
  *(v1 + 32) = 2;
  *(v1 + 40) = 161;
  *(v1 + 48) = &unk_20C176BA0;
  *(v1 + 56) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);

  return sub_20C137C94();
}

uint64_t sub_20BCA9434(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_20BCA9454, 0, 0);
}

uint64_t sub_20BCA9454()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    *(v0 + 64) = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BCA9550, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20BCA9550()
{

  sub_20BCA6ED8();

  return MEMORY[0x2822009F8](sub_20B52EC28, 0, 0);
}

uint64_t sub_20BCA95C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BCA963C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20BCA96F8(void **a1)
{
  v2 = *(sub_20C138204() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A1050(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BCA97A0(v5);
  *a1 = v3;
}

void sub_20BCA97A0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C138204();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C138204() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20BCA9C6C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BCA98CC(0, v2, 1, a1);
  }
}

void sub_20BCA98CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20C132E94();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_20C138204();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20C1381B4();
      v32 = v59;
      sub_20C1381B4();
      v62 = sub_20C132DF4();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BCA9C6C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_20C132E94();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_20C138204();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20B6A07A0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_20BCAA86C(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20B6A07A0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_20B6A0714(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_20C1381B4();
      v34 = v159;
      sub_20C1381B4();
      LODWORD(v149) = sub_20C132DF4();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_20C1381B4();
        v46 = v159;
        sub_20C1381B4();
        LOBYTE(v162) = sub_20C132DF4() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_20BC05740(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_20BC05740((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20BCAA86C(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20B6A07A0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_20B6A0714(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_20C1381B4();
    v120 = v159;
    sub_20C1381B4();
    LODWORD(v162) = sub_20C132DF4();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_20BCAA86C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_20C132E94();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_20C138204();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_20C1381B4();
            v48 = v66;
            sub_20C1381B4();
            v68 = sub_20C132DF4();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_20C1381B4();
        v28 = v66;
        sub_20C1381B4();
        v68 = sub_20C132DF4();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_20B6A0AEC(&v75, &v74, &v73);
}

uint64_t sub_20BCAAF48(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v5 = v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row;
  sub_20B5D8060(v23);
  v6 = v23[9];
  *(v5 + 128) = v23[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v24;
  v7 = v23[5];
  *(v5 + 64) = v23[4];
  *(v5 + 80) = v7;
  v8 = v23[7];
  *(v5 + 96) = v23[6];
  *(v5 + 112) = v8;
  v9 = v23[1];
  *v5 = v23[0];
  *(v5 + 16) = v9;
  v10 = v23[3];
  *(v5 + 32) = v23[2];
  *(v5 + 48) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v22, v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v22, v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(v22, v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980);
  sub_20C133AA4();
  sub_20B51C710(v22, v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_contentAvailabilityFilter);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v22, v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_eventHub) = v22[0];
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_platform) = v22[0];
  type metadata accessor for QueueMediaTagBuilder();
  v11 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();

  *(v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_queueMediaTagBuilder) = v11;
  type metadata accessor for ShelfPlaylistLazyLockupFetcher();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 168) = MEMORY[0x277D84F90];

  v14 = sub_20B6B0C04(v13);
  v15 = MEMORY[0x277D84FA0];
  *(v12 + 176) = v14;
  *(v12 + 184) = v15;
  *(v12 + 192) = v15;
  *(v12 + 16) = 0;
  *(v12 + 24) = 20;
  sub_20C133AA4();
  sub_20C133AA4();
  *(v12 + 112) = a2;
  sub_20C133AA4();
  v16 = swift_allocObject();
  sub_20C133AA4();

  *(v12 + 160) = v16;
  *(v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_lazyLockupFetcher) = v12;
  sub_20C133AA4();
  sub_20B51C710(v22, v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_storefrontLocalizer);
  v17 = (v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_descriptorIdentifier);
  *v17 = a3;
  v17[1] = a4;
  *(v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_displayStyle) = a2;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_subscriptionToken) = sub_20C13A914();
  return v4;
}

uint64_t sub_20BCAB36C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_platform))
  {
    goto LABEL_7;
  }

  v3 = v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 112);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 144);
  v56 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 128);
  v57 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 80);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 48);
  v52 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 64);
  v53 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 80);
  v54 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 96);
  v55 = v4;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 16);
  v49[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row);
  v49[1] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 48);
  v50 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 32);
  v51 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 48);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 80);
  v46 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 64);
  v47 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 16);
  v42 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row);
  v43 = v14;
  v44 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 32);
  v45 = v12;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 144);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 112);
  v39 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 128);
  v40 = v15;
  v38 = v16;
  v59[0] = v49[0];
  v59[1] = v10;
  v59[4] = v52;
  v59[5] = v9;
  v58 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 160);
  v48 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaylistGalleryShelf_row + 96);
  v17 = *(&v54 + 1);
  v41 = *(v3 + 160);
  v18 = *(v3 + 96);
  v59[2] = v50;
  v59[3] = v8;
  v19 = *(v3 + 144);
  v65 = *(v3 + 160);
  v63 = v56;
  v64 = v19;
  v62 = v5;
  v60 = v18;
  v61 = *(&v54 + 1);
  if (sub_20B5EAF8C(v59) == 1)
  {
    v30 = v46;
    v31 = v47;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    v32 = v48;
    v33 = *(&v54 + 1);
    v37 = v41;
    v35 = v39;
    v36 = v40;
    v34 = v38;
    sub_20B5EAED4(v49, v25);
    sub_20B520158(&v26, &qword_27C762340);
LABEL_7:
    v23 = 1;
    return v23 & 1;
  }

  v30 = v46;
  v31 = v47;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v32 = v48;
  v33 = *(&v54 + 1);
  v37 = v41;
  v35 = v39;
  v36 = v40;
  v34 = v38;
  sub_20B5EAED4(v49, v25);

  sub_20B520158(&v26, &qword_27C762340);
  v20 = *(v17 + 16);
  if (!v20)
  {

    goto LABEL_7;
  }

  v21 = *(v17 + 8 * v20 + 24);

  v22 = sub_20B969AA8(a1, v21);

  v23 = v22 ^ 1;
  return v23 & 1;
}

uint64_t sub_20BCAB5BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20BCA9434(a1, v1);
}

uint64_t sub_20BCAB670()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20BCA81B0();
}

uint64_t sub_20BCAB724()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BCA85B0(v0);
}

uint64_t sub_20BCAB7B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BCA8B70(v0);
}

uint64_t sub_20BCAB874(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BF90A8C(a1, a2, v2 + v6, v7);
}

uint64_t sub_20BCAB968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BCABA30(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BCA6D48(a1, v1);
}

uint64_t sub_20BCABACC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BCA7338(a1, v5, v4);
}

uint64_t sub_20BCABBAC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BCA7690(a1, a2, v2);
}

unint64_t sub_20BCABC58()
{
  result = qword_27C765B10;
  if (!qword_27C765B10)
  {
    sub_20C133D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765B10);
  }

  return result;
}

uint64_t sub_20BCABCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v3 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row;
  sub_20B5D8060(v15);
  v7 = v15[9];
  *(v6 + 128) = v15[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v16;
  v8 = v15[5];
  *(v6 + 64) = v15[4];
  *(v6 + 80) = v8;
  v9 = v15[7];
  *(v6 + 96) = v15[6];
  *(v6 + 112) = v9;
  v10 = v15[1];
  *v6 = v15[0];
  *(v6 + 16) = v10;
  v11 = v15[3];
  *(v6 + 32) = v15[2];
  *(v6 + 48) = v11;
  *(v3 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_settings) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_subscriptionToken) = sub_20C13A914();
  v12 = (v3 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_fitnessSettingsProvider);
  *v12 = a2;
  v12[1] = a3;
  swift_unknownObjectRetain();
  sub_20BCABF64();
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BCAD5D8();

  sub_20C13A7A4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v14);

  return v3;
}

uint64_t sub_20BCABEDC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BCABF64();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BCACB34();
  }

  return result;
}

id sub_20BCABF64()
{
  v1 = v0;
  v117 = type metadata accessor for AccountSetting();
  v2 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v108 - v5;
  MEMORY[0x28223BE20](v7);
  v111 = &v108 - v8;
  MEMORY[0x28223BE20](v9);
  v112 = (&v108 - v10);
  MEMORY[0x28223BE20](v11);
  v113 = &v108 - v12;
  MEMORY[0x28223BE20](v13);
  v110 = (&v108 - v14);
  MEMORY[0x28223BE20](v15);
  v114 = &v108 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = (&v108 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v108 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = (&v108 - v24);
  v26 = OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_settings;
  swift_beginAccess();
  *(v0 + v26) = MEMORY[0x277D84F90];

  if (*(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_fitnessSettingsProvider))
  {
    v109 = v6;
    v27 = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_fitnessSettingsProvider + 8);
    ObjectType = swift_getObjectType();
    v29 = v27[1](ObjectType, v27);
    v115 = v2;
    if (v29)
    {
      *v25 = v29;
      v30 = v29;
      type metadata accessor for AccountSettingLink();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v32 = objc_opt_self();
      v108 = v30;
      v33 = [v32 bundleForClass_];
      v34 = sub_20C132964();
      v36 = v35;

      v37 = v117;
      *(v25 + *(v117 + 20)) = 2;
      v38 = (v25 + *(v37 + 24));
      *v38 = v34;
      v38[1] = v36;
      sub_20B64DC5C(v25, v22);
      swift_beginAccess();
      v39 = *(v0 + v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + v26) = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_20BC068C0(0, v39[2] + 1, 1, v39);
        *(v0 + v26) = v39;
      }

      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        v39 = sub_20BC068C0(v41 > 1, v42 + 1, 1, v39);
      }

      v39[2] = v42 + 1;
      v2 = v115;
      sub_20B64E7E0(v22, v39 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v115 + 72) * v42);
      *(v0 + v26) = v39;
      swift_endAccess();

      sub_20B64DEC0(v25);
    }

    v43 = swift_getObjectType();
    v44 = v27[2](v43, v27);
    if (v44)
    {
      v45 = v44;
      result = [objc_opt_self() sharedBehavior];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v47 = result;
      [result isStandalonePhoneFitnessMode];

      type metadata accessor for SeymourLocalizationBundle();
      v48 = swift_getObjCClassFromMetadata();
      v49 = [objc_opt_self() bundleForClass_];
      v50 = sub_20C132964();
      v52 = v51;

      *v19 = v45;
      type metadata accessor for AccountSettingLink();
      swift_storeEnumTagMultiPayload();
      v53 = v117;
      *(v19 + *(v117 + 20)) = 2;
      v54 = (v19 + *(v53 + 24));
      *v54 = v50;
      v54[1] = v52;
      sub_20B64DC5C(v19, v114);
      swift_beginAccess();
      v55 = *(v0 + v26);
      v56 = v45;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + v26) = v55;
      if ((v57 & 1) == 0)
      {
        v55 = sub_20BC068C0(0, v55[2] + 1, 1, v55);
        *(v0 + v26) = v55;
      }

      v2 = v115;
      v59 = v55[2];
      v58 = v55[3];
      if (v59 >= v58 >> 1)
      {
        v55 = sub_20BC068C0(v58 > 1, v59 + 1, 1, v55);
      }

      v55[2] = v59 + 1;
      sub_20B64E7E0(v114, v55 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v59);
      *(v0 + v26) = v55;
      swift_endAccess();

      sub_20B64DEC0(v19);
    }

    v60 = swift_getObjectType();
    v61 = v27[3](v60, v27);
    v62 = v113;
    if (v61)
    {
      v63 = v110;
      *v110 = v61;
      v64 = v61;
      type metadata accessor for AccountSettingLink();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SeymourLocalizationBundle();
      v65 = swift_getObjCClassFromMetadata();
      v66 = objc_opt_self();
      v67 = v64;
      v68 = [v66 bundleForClass_];
      v69 = sub_20C132964();
      v71 = v70;

      v72 = v117;
      *(v63 + *(v117 + 20)) = 2;
      v73 = (v63 + *(v72 + 24));
      *v73 = v69;
      v73[1] = v71;
      sub_20B64DC5C(v63, v62);
      swift_beginAccess();
      v74 = *(v0 + v26);
      v75 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + v26) = v74;
      if ((v75 & 1) == 0)
      {
        v74 = sub_20BC068C0(0, v74[2] + 1, 1, v74);
        *(v0 + v26) = v74;
      }

      v77 = v74[2];
      v76 = v74[3];
      if (v77 >= v76 >> 1)
      {
        v74 = sub_20BC068C0(v76 > 1, v77 + 1, 1, v74);
      }

      v74[2] = v77 + 1;
      v2 = v115;
      sub_20B64E7E0(v62, v74 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v115 + 72) * v77);
      *(v0 + v26) = v74;
      swift_endAccess();

      sub_20B64DEC0(v63);
    }

    v78 = swift_getObjectType();
    v79 = v27[4](v78, v27);
    v6 = v109;
    if (v79)
    {
      v80 = v112;
      *v112 = v79;
      v81 = v79;
      type metadata accessor for AccountSettingLink();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SeymourLocalizationBundle();
      v82 = swift_getObjCClassFromMetadata();
      v83 = objc_opt_self();
      v84 = v81;
      v85 = [v83 bundleForClass_];
      v86 = sub_20C132964();
      v88 = v87;

      v89 = v117;
      *(v80 + *(v117 + 20)) = 2;
      v90 = (v80 + *(v89 + 24));
      *v90 = v86;
      v90[1] = v88;
      v91 = v111;
      sub_20B64DC5C(v80, v111);
      swift_beginAccess();
      v92 = *(v1 + v26);
      v93 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v26) = v92;
      if ((v93 & 1) == 0)
      {
        v92 = sub_20BC068C0(0, v92[2] + 1, 1, v92);
        *(v1 + v26) = v92;
      }

      v95 = v92[2];
      v94 = v92[3];
      if (v95 >= v94 >> 1)
      {
        v92 = sub_20BC068C0(v94 > 1, v95 + 1, 1, v92);
      }

      v92[2] = v95 + 1;
      sub_20B64E7E0(v91, v92 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v95);
      *(v1 + v26) = v92;
      swift_endAccess();

      sub_20B64DEC0(v80);
    }
  }

  type metadata accessor for AccountSettingLink();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SeymourLocalizationBundle();
  v96 = swift_getObjCClassFromMetadata();
  v97 = [objc_opt_self() bundleForClass_];
  v98 = sub_20C132964();
  v100 = v99;

  v102 = v116;
  v101 = v117;
  v6[*(v117 + 20)] = 2;
  v103 = &v6[*(v101 + 24)];
  *v103 = v98;
  v103[1] = v100;
  sub_20B64DC5C(v6, v102);
  swift_beginAccess();
  v104 = *(v1 + v26);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v26) = v104;
  if ((v105 & 1) == 0)
  {
    v104 = sub_20BC068C0(0, v104[2] + 1, 1, v104);
    *(v1 + v26) = v104;
  }

  v107 = v104[2];
  v106 = v104[3];
  if (v107 >= v106 >> 1)
  {
    v104 = sub_20BC068C0(v106 > 1, v107 + 1, 1, v104);
  }

  v104[2] = v107 + 1;
  sub_20B64E7E0(v102, v104 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v107);
  *(v1 + v26) = v104;
  swift_endAccess();
  return sub_20B64DEC0(v6);
}

uint64_t sub_20BCACB34()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = (&v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AccountSetting();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_settings;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = *(v4 + 24);
    v53 = *(v4 + 20);
    v13 = &v7[v12];
    v14 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    v51 = v1;
    v52 = v15;
    v50 = v9;

    v16 = MEMORY[0x277D84F90];
    do
    {
      sub_20B64DC5C(v14, v7);
      v17 = v7[v53] > 1u;
      v18 = swift_allocObject();
      v20 = *v13;
      v19 = *(v13 + 1);

      sub_20B64DEC0(v7);
      *(v18 + 16) = v20;
      *(v18 + 24) = v19;
      *(v18 + 32) = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_20BC05D3C(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_20BC05D3C((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      *&v16[8 * v22 + 32] = v18 | 1;
      v14 += v52;
      --v10;
    }

    while (v10);

    v1 = v51;
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v54 = 0uLL;
  LOBYTE(v55) = 1;
  *(&v55 + 1) = 0;
  *&v56 = 0;
  WORD4(v56) = 128;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  LOBYTE(v60) = 0;
  *(&v60 + 1) = v16;
  *&v61[0] = v11;
  *(v61 + 8) = 0u;
  *(&v61[1] + 8) = 0u;
  *(&v61[2] + 1) = 0;
  v62 = 2;
  nullsub_1(&v54);
  v23 = v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 144);
  v63[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 128);
  v63[9] = v24;
  v64 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 160);
  v25 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 80);
  v63[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 64);
  v63[5] = v25;
  v26 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 112);
  v63[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 96);
  v63[7] = v26;
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 16);
  v63[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row);
  v63[1] = v27;
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 48);
  v63[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 32);
  v63[3] = v28;
  v29 = v61[2];
  *(v23 + 128) = v61[1];
  *(v23 + 144) = v29;
  *(v23 + 160) = v62;
  v30 = v59;
  *(v23 + 64) = v58;
  *(v23 + 80) = v30;
  v31 = v61[0];
  *(v23 + 96) = v60;
  *(v23 + 112) = v31;
  v32 = v55;
  *v23 = v54;
  *(v23 + 16) = v32;
  v33 = v57;
  *(v23 + 32) = v56;
  *(v23 + 48) = v33;
  sub_20B634408(v63);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v36 = sub_20B61CF60(v1, result);
      if (v37)
      {
        v39 = v36;
        v40 = v37;
        v41 = v38;
        sub_20B5E2E18();
        v42 = sub_20C13D374();
        v44 = v47;
        v43 = v48;
        *v47 = v42;
        v45 = v49;
        (*(v43 + 104))(v44, *MEMORY[0x277D85200], v49);
        v46 = sub_20C13C584();
        result = (*(v43 + 8))(v44, v45);
        if ((v46 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620540(v39, v40, v41, v1, 0, v35);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BCACF84()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountFitnessSettingsShelf()
{
  result = qword_27C76D1A0;
  if (!qword_27C76D1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BCAD0EC()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BCAD1B8(unint64_t a1, unint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountSetting();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 1)
  {
    v13 = OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_settings;
    result = swift_beginAccess();
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v15 = *(v2 + v13);
      if (*(v15 + 16) > a2)
      {
        sub_20B64DC5C(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2, v12);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_20B64E88C(v12, v12[*(v9 + 20)], Strong);
          swift_unknownObjectRelease();
        }

        return sub_20B64DEC0(v12);
      }
    }

    __break(1u);
    return result;
  }

  sub_20C13B534();

  v17 = sub_20C13BB74();
  v18 = sub_20C13D1D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24[0] = v20;
    *v19 = 136446210;
    v24[3] = a1;

    v21 = sub_20C13C9D4();
    v23 = sub_20B51E694(v21, v22, v24);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_20B517000, v17, v18, "Shelf lockup navigation triggered for item: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20BCAD4A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BCAD51C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI27AccountFitnessSettingsShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_20BCAD5D8()
{
  result = qword_27C76D1B0;
  if (!qword_27C76D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D1B0);
  }

  return result;
}

id MultiUserStartWorkoutInterceptor.__allocating_init(dependencies:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_20BCB4FCC(a1);

  return v4;
}

id MultiUserStartWorkoutInterceptor.init(dependencies:)(uint64_t a1)
{
  v1 = sub_20BCB4FCC(a1);

  return v1;
}

id MultiUserStartWorkoutInterceptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultiUserStartWorkoutInterceptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiUserStartWorkoutInterceptor(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MultiUserStartWorkoutInterceptor.interceptRequest(_:display:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BCB5298(a1, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_20B75B150(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  *(v12 + v11) = v9;
  v13 = (v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  swift_unknownObjectRetain();
  return sub_20C137C94();
}

uint64_t sub_20BCAD9B0(void (*a1)(void), void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v101 = a6;
  v102 = a5;
  v104 = a2;
  v105 = a4;
  v103 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v92 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v83 - v9;
  MEMORY[0x28223BE20](v10);
  v95 = &v83 - v11;
  v90 = v12;
  MEMORY[0x28223BE20](v13);
  v96 = &v83 - v14;
  started = type metadata accessor for MultiUserStartWorkoutInterceptor.State(0);
  MEMORY[0x28223BE20](started - 8);
  v89 = (&v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_20C13BB84();
  v98 = *(v17 - 8);
  v99 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v20);
  v22 = &v83 - v21;
  v23 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v23);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C135024();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v83 - v31;
  v33 = type metadata accessor for NavigationRequest();
  sub_20BCB5298(a3 + *(v33 + 24), v25, type metadata accessor for NavigationSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = a3;
    (*(v27 + 32))(v32, v25, v26);
    sub_20C13B594();
    v34 = *(v27 + 16);
    v91 = v32;
    v85 = v34;
    v34(v29, v32, v26);
    v35 = sub_20C13BB74();
    v36 = sub_20C13D1F4();
    v37 = os_log_type_enabled(v35, v36);
    v93 = v26;
    v88 = v27;
    if (v37)
    {
      v38 = v26;
      v39 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v106[0] = v84;
      *v39 = 136315138;
      sub_20BCB6A54(&qword_27C766E98, MEMORY[0x277D51510]);
      v40 = sub_20C13DFA4();
      v42 = v41;
      v87 = *(v27 + 8);
      v87(v29, v38);
      v43 = sub_20B51E694(v40, v42, v106);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_20B517000, v35, v36, "Interceptor: Attempting %s", v39, 0xCu);
      v44 = v84;
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x20F2F6A40](v44, -1, -1);
      MEMORY[0x20F2F6A40](v39, -1, -1);
    }

    else
    {

      v87 = *(v27 + 8);
      v87(v29, v26);
    }

    (*(v98 + 8))(v19, v99);
    v46 = v105;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v48 = v91;
    v50 = v103;
    v49 = v104;
    if (Strong)
    {
      v51 = Strong;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D1B8);
      v53 = v52[12];
      v54 = v52[16];
      v55 = v89;
      v56 = (v89 + v52[20]);
      v57 = v101;
      *v89 = v102;
      *(v55 + 8) = v57;
      v85(v55 + v53, v48, v93);
      sub_20BCB5298(v86, v55 + v54, type metadata accessor for NavigationRequest);
      *v56 = v50;
      v56[1] = v49;
      (*(*(v52 - 1) + 56))(v55, 0, 1, v52);
      v58 = OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_state;
      swift_beginAccess();
      swift_unknownObjectRetain();

      sub_20BCB5360(v55, v51 + v58);
      swift_endAccess();
    }

    swift_beginAccess();
    v59 = swift_unknownObjectWeakLoadStrong();
    if (v59)
    {
      v60 = v59;
      v61 = v100;
      sub_20BCAE3F4(v100);

      v62 = swift_allocObject();
      *(v62 + 16) = sub_20BCB6A9C;
      *(v62 + 24) = v46;
      v63 = v92;
      v64 = *(v92 + 16);
      v103 = (v92 + 16);
      v104 = v64;
      v65 = v94;
      v66 = v97;
      v64(v94, v61, v97);
      v67 = (*(v63 + 80) + 16) & ~*(v63 + 80);
      v98 = v67;
      v68 = (v90 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      v90 = *(v63 + 32);
      v90(v69 + v67, v65, v66);
      v70 = (v69 + v68);
      *v70 = sub_20B66A8B4;
      v70[1] = v62;
      v71 = v105;

      v72 = v95;
      sub_20C137C94();
      v99 = *(v63 + 8);
      v99(v100, v66);
      v73 = swift_allocObject();
      v73[2] = v71;
      v74 = v101;
      v73[3] = v102;
      v73[4] = v74;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_20BCB6AB8;
      *(v75 + 24) = v73;
      v104(v65, v72, v66);
      v76 = swift_allocObject();
      v90(v76 + v98, v65, v66);
      v77 = (v76 + v68);
      *v77 = sub_20B5DF204;
      v77[1] = v75;
      swift_unknownObjectRetain();

      v78 = v96;
      sub_20C137C94();
      v79 = v99;
      v99(v72, v66);
      v80 = sub_20C137CB4();
      v81 = swift_allocObject();
      *(v81 + 16) = 0;
      *(v81 + 24) = 0;
      v80(sub_20B5DF6DC, v81);

      v79(v78, v66);
      v82 = v91;
    }

    else
    {
      v82 = v48;
    }

    return (v87)(v82, v93);
  }

  else
  {
    sub_20BCB5300(v25, type metadata accessor for NavigationSource);
    sub_20BCB5298(a3, v22, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v103(v22);
    return sub_20B520158(v22, &unk_27C76D250);
  }
}

uint64_t sub_20BCAE3F4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  MEMORY[0x28223BE20](v8);
  v36 = &v30 - v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = "SeymourUI/MultiUserStartWorkoutInterceptor.swift";
  *(v11 + 24) = 48;
  *(v11 + 32) = 2;
  *(v11 + 40) = 92;
  *(v11 + 48) = &unk_20C176E10;
  *(v11 + 56) = v10;
  v35 = sub_20C135734();
  v12 = v1;
  v31 = v12;
  v33 = v7;
  sub_20C137C94();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = v3;
  v34 = *(v3 + 16);
  v15 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v7;
  v17 = v2;
  v30 = v2;
  v34(v15, v16, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = (v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v32 = *(v14 + 32);
  v32(v20 + v18, v15, v17);
  v21 = (v20 + v19);
  *v21 = sub_20BCB6F38;
  v21[1] = v13;
  v22 = v31;
  v23 = v36;
  sub_20C137C94();
  v24 = *(v14 + 8);
  v35 = v14 + 8;
  v25 = v33;
  v26 = v30;
  v24(v33, v30);
  v34(v25, v23, v26);
  v27 = swift_allocObject();
  v32(v27 + v18, v25, v26);
  v28 = (v27 + v19);
  *v28 = sub_20BCB0830;
  v28[1] = 0;
  sub_20C137C94();
  return (v24)(v23, v26);
}

void sub_20BCAE76C()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B594();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "Interceptor: Has subscription.", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_20BCAE8E8(0);
  }
}

uint64_t sub_20BCAE8E8(void *a1)
{
  v182 = a1;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v185 = *(v172 - 8);
  v2 = *(v185 + 64);
  MEMORY[0x28223BE20](v172);
  MEMORY[0x28223BE20](v3);
  v162 = &v156 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v156 - v6;
  MEMORY[0x28223BE20](v8);
  v184 = &v156 - v9;
  MEMORY[0x28223BE20](v10);
  v167 = &v156 - v11;
  MEMORY[0x28223BE20](v12);
  v168 = &v156 - v13;
  MEMORY[0x28223BE20](v14);
  v169 = &v156 - v15;
  MEMORY[0x28223BE20](v16);
  v170 = &v156 - v17;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v178);
  v179 = (&v156 - v18);
  v177 = sub_20C13B314();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13BB84();
  v187 = *(v20 - 8);
  v188 = v20;
  MEMORY[0x28223BE20](v20);
  v181 = (&v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v173 = &v156 - v23;
  MEMORY[0x28223BE20](v24);
  v174 = &v156 - v25;
  started = type metadata accessor for MultiUserStartWorkoutInterceptor.State(0);
  MEMORY[0x28223BE20](started - 8);
  v180 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v156 - v29;
  v31 = type metadata accessor for NavigationRequest();
  v163 = *(v31 - 8);
  MEMORY[0x28223BE20](v31 - 8);
  v165 = &v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v156 - v34;
  v36 = sub_20C135024();
  v189 = *(v36 - 8);
  v190 = v36;
  MEMORY[0x28223BE20](v36);
  v161 = &v156 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v183 = &v156 - v39;
  v166 = v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v156 - v42;
  v44 = OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_state;
  swift_beginAccess();
  v186 = v1;
  sub_20BCB5298(v1 + v44, v30, type metadata accessor for MultiUserStartWorkoutInterceptor.State);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D1B8);
  v46 = *(v45 - 1);
  if ((*(v46 + 48))(v30, 1, v45) == 1)
  {
    sub_20BCB5300(v30, type metadata accessor for MultiUserStartWorkoutInterceptor.State);
    v47 = v181;
    sub_20C13B594();
    v48 = sub_20C13BB74();
    v49 = sub_20C13D1D4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_20B517000, v48, v49, "Interceptor: Missing request states", v50, 2u);
      MEMORY[0x20F2F6A40](v50, -1, -1);
    }

    return (*(v187 + 8))(v47, v188);
  }

  else
  {
    v158 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    v159 = v7;
    swift_unknownObjectRelease();
    v52 = v45[12];
    v53 = v45[16];
    v54 = &v30[v45[20]];
    v56 = *v54;
    v55 = *(v54 + 1);
    v181 = v56;
    v160 = v55;
    v57 = v189 + 32;
    v58 = *(v189 + 32);
    (v58)(v43, &v30[v52], v190);
    sub_20B75B150(&v30[v53], v35);
    v59 = v180;
    (*(v46 + 56))(v180, 1, 1, v45);
    v60 = v186;
    swift_beginAccess();
    sub_20BCB5360(v59, v60 + v44);
    swift_endAccess();
    v171 = v35;
    if (v182)
    {
      v61 = v43;
      v63 = v189;
      v62 = v190;
      v64 = v182;
      v65 = v182;
      v66 = v174;
      sub_20C13B594();
      v67 = sub_20C13BB74();
      v68 = sub_20C13D1F4();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_20B517000, v67, v68, "Interceptor: Publishing MultiUserBeginActivityCancelled", v69, 2u);
        MEMORY[0x20F2F6A40](v69, -1, -1);
      }

      (*(v187 + 8))(v66, v188);
      swift_getObjectType();
      v70 = v63;
      v71 = *(v63 + 16);
      v72 = v61;
      v71(v183, v61, v62);
      v73 = v175;
      sub_20C13B304();
      v74 = v177;
      sub_20C13A764();
      v176[1](v73, v74);
      v75 = v179;
      *v179 = v64;
      swift_storeEnumTagMultiPayload();
      v76 = v64;
      v181(v75);

      sub_20B520158(v75, &unk_27C76D250);
      sub_20BCB5300(v171, type metadata accessor for NavigationRequest);
      return (*(v70 + 8))(v72, v62);
    }

    else
    {
      v176 = v58;
      v177 = v57;
      v77 = v173;
      sub_20C13B594();
      v78 = v189;
      v79 = v190;
      v80 = *(v189 + 16);
      v81 = v161;
      v174 = (v189 + 16);
      v157 = v80;
      v80(v161, v43, v190);
      v82 = sub_20C13BB74();
      v83 = sub_20C13D1F4();
      v84 = v43;
      if (os_log_type_enabled(v82, v83))
      {
        v85 = v78;
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v191 = v87;
        *v86 = 136315138;
        sub_20BCB6A54(&qword_27C766E98, MEMORY[0x277D51510]);
        v88 = sub_20C13DFA4();
        v89 = v81;
        v91 = v90;
        v92 = *(v85 + 8);
        v175 = ((v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v92(v89, v79);
        v93 = sub_20B51E694(v88, v91, &v191);

        *(v86 + 4) = v93;
        _os_log_impl(&dword_20B517000, v82, v83, "Interceptor: Completed interception. Proceeding with %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        MEMORY[0x20F2F6A40](v87, -1, -1);
        MEMORY[0x20F2F6A40](v86, -1, -1);

        (*(v187 + 8))(v173, v188);
      }

      else
      {

        v94 = *(v78 + 8);
        v175 = ((v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v94(v81, v79);
        (*(v187 + 8))(v77, v188);
      }

      v95 = (v186 + OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_multiUserClient);
      v161 = (v186 + OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_multiUserClient);
      __swift_project_boxed_opaque_existential_1((v186 + OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_multiUserClient), *(v186 + OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_multiUserClient + 24));
      sub_20C13A244();
      __swift_project_boxed_opaque_existential_1(v95, v95[3]);
      v96 = v159;
      sub_20C13A264();
      v97 = v185;
      v99 = (v185 + 16);
      v98 = *(v185 + 16);
      v100 = v162;
      v101 = v172;
      v98(v162, v96, v172);
      v180 = v98;
      v182 = v99;
      v173 = v84;
      v188 = *(v97 + 80);
      v102 = ((v188 + 16) & ~v188) + v2;
      v103 = (v188 + 16) & ~v188;
      v104 = swift_allocObject();
      v105 = *(v97 + 32);
      v105(v104 + v103, v100, v101);
      v187 = v97 + 32;
      v179 = v105;
      v106 = v158;
      v98(v158, v184, v101);
      v107 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v108 = swift_allocObject();
      v186 = v103;
      v105(v108 + v103, v106, v101);
      v109 = (v108 + v107);
      v110 = v107;
      *v109 = sub_20B8F5774;
      v109[1] = v104;
      v111 = v167;
      sub_20C137C94();
      v112 = *(v97 + 8);
      v178 = v112;
      v112(v159, v101);
      v113 = v184;
      v112(v184, v101);
      v114 = swift_allocObject();
      v114[2] = 0xD000000000000030;
      v114[3] = 0x800000020C1AF340;
      v114[4] = 191;
      v115 = swift_allocObject();
      *(v115 + 16) = sub_20B5DF5EC;
      *(v115 + 24) = v114;
      v116 = v180;
      (v180)(v113, v111, v101);
      v162 = v110;
      v117 = swift_allocObject();
      v118 = v113;
      v119 = v179;
      v179(v117 + v186, v118, v101);
      v120 = &v110[v117];
      *v120 = sub_20B5DF4B0;
      v120[1] = v115;
      v121 = v168;
      sub_20C137C94();
      v122 = v111;
      v123 = v111;
      v124 = v101;
      v125 = v178;
      v178(v123, v101);
      sub_20B51CC64(v161, &v191);
      v126 = swift_allocObject();
      sub_20B51C710(&v191, v126 + 16);
      v127 = swift_allocObject();
      *(v127 + 16) = sub_20BCB6904;
      *(v127 + 24) = v126;
      v128 = v122;
      (v116)(v122, v121, v124);
      v129 = v162;
      v130 = swift_allocObject();
      v131 = v128;
      v132 = v124;
      v119(v130 + v186, v131, v124);
      v133 = &v129[v130];
      v134 = v129;
      *v133 = sub_20B64B960;
      v133[1] = v127;
      v135 = v169;
      sub_20C137C94();
      v136 = v121;
      v125(v121, v132);
      v185 = v97 + 8;
      v137 = v165;
      sub_20BCB5298(v171, v165, type metadata accessor for NavigationRequest);
      v138 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v139 = swift_allocObject();
      v140 = v160;
      *(v139 + 16) = v181;
      *(v139 + 24) = v140;
      sub_20B75B150(v137, v139 + v138);
      v141 = swift_allocObject();
      *(v141 + 16) = sub_20BCB6950;
      *(v141 + 24) = v139;
      v142 = swift_allocObject();
      *(v142 + 16) = sub_20B66A8BC;
      *(v142 + 24) = v141;
      (v180)(v136, v135, v132);
      v143 = swift_allocObject();
      v179(v143 + v186, v136, v132);
      v144 = &v134[v143];
      *v144 = sub_20B66A8B4;
      v144[1] = v142;

      v145 = v170;
      sub_20C137C94();
      v125(v135, v132);
      v146 = v183;
      v147 = v173;
      v148 = v190;
      v157(v183, v173, v190);
      v149 = v189;
      v150 = (*(v189 + 80) + 16) & ~*(v189 + 80);
      v151 = (v166 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
      v152 = swift_allocObject();
      (v176)(v152 + v150, v146, v148);
      v153 = (v152 + v151);
      *v153 = v181;
      v153[1] = v140;

      v154 = sub_20C137CB4();
      v155 = swift_allocObject();
      *(v155 + 16) = sub_20BCB69B4;
      *(v155 + 24) = v152;

      v154(sub_20B52347C, v155);

      v178(v145, v132);
      sub_20BCB5300(v171, type metadata accessor for NavigationRequest);
      return (*(v149 + 8))(v147, v148);
    }
  }
}

uint64_t sub_20BCAFBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260);
  v53 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v52 - v12;
  v55 = v13;
  MEMORY[0x28223BE20](v14);
  v60 = &v52 - v15;
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B594();
  v20 = sub_20C13BB74();
  v21 = sub_20C13D1F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = a4;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20B517000, v20, v21, "Interceptor: No subscription. Presenting upsell UI and waiting for purchase events to trigger session join.", v23, 2u);
    v24 = v23;
    a4 = v22;
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = "SeymourUI/MultiUserStartWorkoutInterceptor.swift";
    *(v28 + 24) = 48;
    *(v28 + 32) = 2;
    *(v28 + 40) = 105;
    *(v28 + 48) = &unk_20C176D90;
    *(v28 + 56) = v27;
    sub_20B51C88C(0, &qword_281100550);
    v29 = v9;
    sub_20C137C94();
    v30 = swift_allocObject();
    *(v30 + 16) = a3;
    *(v30 + 24) = a4;
    v32 = v53;
    v31 = v54;
    v33 = v58;
    (*(v53 + 16))(v54, v29, v58);
    v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v35 = (v52 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    (*(v32 + 32))(v36 + v34, v31, v33);
    v37 = (v36 + v35);
    *v37 = sub_20BCB6B90;
    v37[1] = v30;
    swift_unknownObjectRetain();
    v38 = v59;
    sub_20C137C94();
    (*(v32 + 8))(v29, v33);
    v39 = swift_allocObject();
    v40 = v62;
    *(v39 + 16) = sub_20BCB6C1C;
    *(v39 + 24) = v40;
    v41 = v61;
    v42 = v56;
    v43 = v57;
    (*(v61 + 16))(v56, v38, v57);
    v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v45 = (v55 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    (*(v41 + 32))(v46 + v44, v42, v43);
    v47 = (v46 + v45);
    *v47 = sub_20B5F7764;
    v47[1] = v39;

    v48 = v60;
    sub_20C137C94();
    v49 = *(v41 + 8);
    v49(v38, v43);
    v50 = sub_20C137CB4();
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    v50(sub_20B5DF6DC, v51);

    return (v49)(v48, v43);
  }

  return result;
}

void sub_20BCB01F4(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B594();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();

  v10 = os_log_type_enabled(v8, v9);
  v23 = a1;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v21 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22 = v1;
    v14 = v13;
    v26[0] = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = MEMORY[0x20F2F5850](v24, v25);
    v17 = sub_20B51E694(v15, v16, v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20B517000, v8, v9, "Interceptor: Failed to present marketing controller with error %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);

    (*(v4 + 8))(v6, v21);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_20BCAE8E8(v23);
  }
}

uint64_t sub_20BCB0428(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20BCB0448, 0, 0);
}

uint64_t sub_20BCB0448()
{
  v1 = (v0[3] + OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_serviceSubscriptionCache);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_20B772B0C;
  v5 = v0[2];

  return MEMORY[0x2821B5670](v5, v2, v3);
}

uint64_t sub_20BCB0510(void *a1, void *a2)
{
  v4 = sub_20C1394C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D543D8], v4, v6);
  sub_20BCB6A54(&qword_27C76D2C8, MEMORY[0x277D543E8]);
  v9 = sub_20C135D14();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    v11 = swift_allocObject();
    *(v11 + 16) = "SeymourUI/MultiUserStartWorkoutInterceptor.swift";
    *(v11 + 24) = 48;
    *(v11 + 32) = 2;
    *(v11 + 40) = 97;
    *(v11 + 48) = &unk_20C176E20;
    *(v11 + 56) = v10;
    sub_20C135734();
    v12 = a2;
    return sub_20C137C94();
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    v14 = a1;
    sub_20C135734();
    return sub_20C137CA4();
  }
}

uint64_t sub_20BCB0748(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20BCB0768, 0, 0);
}

uint64_t sub_20BCB0768()
{
  v1 = (v0[3] + OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_serviceSubscriptionCache);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_20BC731A8;
  v5 = v0[2];

  return MEMORY[0x2821B5668](v5, v2, v3);
}

uint64_t sub_20BCB0830()
{
  v0 = sub_20C132E94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132E84();
  v4 = sub_20C135704();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  sub_20B8CB638();
  v6 = swift_allocError();
  *v7 = 4;
  *(swift_allocObject() + 16) = v6;
  return sub_20C137CA4();
}

uint64_t sub_20BCB0988(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_20B68BF24;

  return sub_20BCB0A1C();
}

uint64_t sub_20BCB0A1C()
{
  v1[355] = v0;
  v2 = sub_20C13BB84();
  v1[361] = v2;
  v1[367] = *(v2 - 8);
  v1[373] = swift_task_alloc();
  v3 = sub_20C139354();
  v1[374] = v3;
  v1[375] = *(v3 - 8);
  v1[376] = swift_task_alloc();
  v1[377] = swift_task_alloc();
  v1[378] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  v1[379] = swift_task_alloc();
  v4 = sub_20C1388F4();
  v1[380] = v4;
  v5 = *(v4 - 8);
  v1[381] = v5;
  v1[382] = *(v5 + 64);
  v1[383] = swift_task_alloc();
  v1[384] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  v1[385] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  v1[386] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  v1[387] = swift_task_alloc();
  v6 = sub_20C1333A4();
  v1[388] = v6;
  v1[389] = *(v6 - 8);
  v1[390] = swift_task_alloc();
  v1[391] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v1[392] = swift_task_alloc();
  v1[393] = swift_task_alloc();
  v7 = sub_20C132C14();
  v1[394] = v7;
  v1[395] = *(v7 - 8);
  v1[396] = swift_task_alloc();
  sub_20C13CDA4();
  v1[397] = sub_20C13CD94();
  v9 = sub_20C13CD24();
  v1[398] = v9;
  v1[399] = v8;

  return MEMORY[0x2822009F8](sub_20BCB0DE0, v9, v8);
}

uint64_t sub_20BCB0DE0()
{
  v1 = *(v0 + 3160);
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  sub_20C138E54();
  sub_20C132C04();

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 3144);

    sub_20B520158(v4, &unk_27C7617F0);
    sub_20C13B594();
    v5 = sub_20C13BB74();
    v6 = sub_20C13D1F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20B517000, v5, v6, "Interceptor: failed to create a subscribe URL.", v7, 2u);
      MEMORY[0x20F2F6A40](v7, -1, -1);
    }

    v8 = *(v0 + 2984);
    v9 = *(v0 + 2936);
    v10 = *(v0 + 2888);

    (*(v9 + 8))(v8, v10);
    sub_20BAA6198();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 3168);
    v15 = *(v0 + 3160);
    v16 = *(v0 + 3152);
    v17 = *(v0 + 3136);
    v18 = *(v0 + 3112);
    v39 = *(v0 + 3120);
    v40 = *(v0 + 3104);
    v19 = *(v0 + 3096);
    v35 = *(v0 + 3088);
    v36 = *(v0 + 3080);
    v37 = *(v0 + 3128);
    v41 = *(v0 + 3072);
    v44 = *(v0 + 3064);
    v42 = *(v0 + 3048);
    v43 = *(v0 + 3040);
    v38 = *(v0 + 3032);
    (*(v15 + 32))(v14, *(v0 + 3144), v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
    sub_20C133AA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
    sub_20C133AA4();
    *(v0 + 3200) = *(v0 + 2648);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090);
    sub_20C133AA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769450);
    sub_20C133AA4();
    v20 = *MEMORY[0x277D51860];
    v21 = sub_20C1352F4();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v19, v20, v21);
    (*(v22 + 56))(v19, 0, 1, v21);
    (*(v15 + 16))(v17, v14, v16);
    (*(v15 + 56))(v17, 0, 1, v16);
    v23 = sub_20C135ED4();
    (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
    v24 = sub_20C136914();
    (*(*(v24 - 8) + 56))(v36, 1, 1, v24);
    sub_20C133384();
    (*(v18 + 16))(v39, v37, v40);
    sub_20C134F94();
    v25 = sub_20C134FB4();
    (*(*(v25 - 8) + 56))(v38, 0, 1, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    *(inited + 32) = sub_20C134974();
    *(inited + 40) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638D0);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_20C14F980;
    *(v28 + 32) = sub_20C134984();
    *(v28 + 40) = v29;
    *(v28 + 48) = 0xD000000000000014;
    *(v28 + 56) = 0x800000020C196BC0;
    v30 = sub_20B6B0904(v28);
    swift_setDeallocating();
    sub_20B520158(v28 + 32, &unk_27C76D280);
    *(v0 + 2792) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767BC0);
    sub_20B6AF9FC();
    sub_20C13DC04();
    sub_20B6B3A3C(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &unk_27C765CF0);
    sub_20B531620(MEMORY[0x277D84F90]);
    sub_20C1388E4();
    sub_20B51CC64(v0 + 2328, v0 + 2248);
    v31 = swift_allocObject();
    *(v0 + 3208) = v31;
    sub_20B51C710((v0 + 2248), v31 + 16);
    swift_asyncLet_begin();
    sub_20B51CC64(v0 + 2488, v0 + 2408);
    (*(v42 + 16))(v44, v41, v43);
    v32 = (*(v42 + 80) + 56) & ~*(v42 + 80);
    v33 = swift_allocObject();
    *(v0 + 3216) = v33;
    sub_20B51C710((v0 + 2408), v33 + 16);
    (*(v42 + 32))(v33 + v32, v44, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D2A0);
    swift_asyncLet_begin();
    sub_20B51CC64(v0 + 2168, v0 + 2568);
    v34 = swift_allocObject();
    *(v0 + 3224) = v34;
    sub_20B51C710((v0 + 2568), v34 + 16);
    sub_20B51C88C(0, &qword_27C7683B0);
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 656, v0 + 2744, sub_20BCB16C8, v0 + 2368);
  }
}

uint64_t sub_20BCB16C8()
{
  v1[404] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 2, v1 + 337, sub_20BCB1EA0, v1 + 306);
  }

  else
  {
    v1[405] = v1[343];

    return MEMORY[0x282200930](v1 + 2, v1 + 337, sub_20BCB177C, v1 + 332);
  }
}

uint64_t sub_20BCB177C()
{
  v1[406] = v0;
  if (v0)
  {
    v2 = v1[399];
    v3 = v1[398];

    return MEMORY[0x2822009F8](sub_20BCB2134, v3, v2);
  }

  else
  {
    v4 = v1[337];
    v1[407] = v4;
    v5 = v4;
    v6 = v1[378];

    return MEMORY[0x282200930](v1 + 162, v6, sub_20BCB182C, v1 + 356);
  }
}

uint64_t sub_20BCB182C()
{
  v1[408] = v0;
  if (v0)
  {
    v2 = sub_20BCB2434;
  }

  else
  {
    v2 = sub_20BCB1864;
  }

  return MEMORY[0x2822009F8](v2, v1[398], v1[399]);
}

uint64_t sub_20BCB1864()
{
  v18 = v0[405];
  v19 = v0[407];
  v1 = v0[400];
  v2 = v0[376];
  v16 = v0[375];
  v17 = v0[377];
  v3 = v0[374];
  v20 = v0[355];
  (*(v16 + 16))();
  sub_20C138E14();
  sub_20C136644();
  v4 = objc_allocWithZone(MEMORY[0x277CEE8E8]);
  v5 = sub_20C13C914();

  v6 = sub_20C13C914();

  v7 = [v4 initWithServiceType:v5 placement:v6 bag:v1];

  v8 = sub_20C13C914();
  [v7 setOfferHints_];

  (*(v16 + 104))(v2, *MEMORY[0x277D54350], v3);
  sub_20BCB6A54(&unk_27C76D2B0, MEMORY[0x277D54360]);
  v9 = v7;
  LOBYTE(v7) = sub_20C13C894();
  v10 = *(v16 + 8);
  v10(v2, v3);
  [v9 setAnonymousMetrics_];
  sub_20B9056A8(v18);

  v11 = sub_20C13C744();

  [v9 setMetricsOverlay_];

  [v9 setAccount_];
  sub_20C138E34();
  v12 = sub_20C13C914();

  [v9 setMediaClientIdentifier_];

  [v9 setDelegate_];
  v13 = [objc_opt_self() currentProcess];
  sub_20C138E44();
  v14 = sub_20C13D244();

  [v9 setClientInfo_];
  v0[409] = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  v10(v17, v3);

  return MEMORY[0x282200920](v0 + 2, v0 + 337, sub_20BCB1C04, v0 + 276);
}

uint64_t sub_20BCB1C98()
{
  v1 = v0[396];
  v2 = v0[395];
  v12 = v0[394];
  v3 = v0[391];
  v4 = v0[389];
  v5 = v0[388];
  v6 = v0[384];
  v7 = v0[381];
  v8 = v0[380];

  swift_unknownObjectRelease();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 291));
  __swift_destroy_boxed_opaque_existential_1((v0 + 311));
  __swift_destroy_boxed_opaque_existential_1((v0 + 271));
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];
  v10 = v0[409];

  return v9(v10);
}

uint64_t sub_20BCB1F34()
{
  v11 = v0[396];
  v1 = v0[395];
  v2 = v0[394];
  v3 = v0[391];
  v4 = v0[389];
  v5 = v0[388];
  v6 = v0[384];
  v7 = v0[381];
  v8 = v0[380];

  swift_unknownObjectRelease();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 291));
  __swift_destroy_boxed_opaque_existential_1((v0 + 311));
  __swift_destroy_boxed_opaque_existential_1((v0 + 271));
  (*(v1 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BCB2134()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 2696, sub_20BCB21A0, v0 + 2704);
}

uint64_t sub_20BCB2234()
{
  v11 = v0[396];
  v1 = v0[395];
  v2 = v0[394];
  v3 = v0[391];
  v4 = v0[389];
  v5 = v0[388];
  v6 = v0[384];
  v7 = v0[381];
  v8 = v0[380];

  swift_unknownObjectRelease();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 291));
  __swift_destroy_boxed_opaque_existential_1((v0 + 311));
  __swift_destroy_boxed_opaque_existential_1((v0 + 271));
  (*(v1 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BCB2434()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 2696, sub_20BCB24AC, v0 + 2896);
}

uint64_t sub_20BCB2540()
{
  v11 = v0[396];
  v1 = v0[395];
  v2 = v0[394];
  v3 = v0[391];
  v4 = v0[389];
  v5 = v0[388];
  v6 = v0[384];
  v7 = v0[381];
  v8 = v0[380];

  swift_unknownObjectRelease();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 291));
  __swift_destroy_boxed_opaque_existential_1((v0 + 311));
  __swift_destroy_boxed_opaque_existential_1((v0 + 271));
  (*(v1 + 8))(v11, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BCB2740(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764290);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BCB280C, 0, 0);
}

uint64_t sub_20BCB280C()
{
  v1 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_20B520B44(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = "SeymourUI/MultiUserStartWorkoutInterceptor.swift";
  *(v2 + 24) = 48;
  *(v2 + 32) = 2;
  *(v2 + 40) = 133;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_20C139354();
  *v3 = v0;
  v3[1] = sub_20BCB293C;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B521918, v2, v4);
}

uint64_t sub_20BCB293C()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B9245A0, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_20BCB2AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_20C139354();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BCB2B84, 0, 0);
}

uint64_t sub_20BCB2B84()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277D54350], v3);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_20BCB2C80;
  v8 = v0[7];
  v9 = v0[4];

  return MEMORY[0x2821B5790](v9, v8, 0, v5, v6);
}

uint64_t sub_20BCB2C80(uint64_t a1)
{
  v4 = *v2;
  v4[9] = v1;

  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_20BCB2E78;
  }

  else
  {
    v4[10] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_20BCB2E08;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20BCB2E08()
{
  **(v0 + 16) = *(v0 + 80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BCB2E78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BCB2EDC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BCB2FA8, 0, 0);
}

uint64_t sub_20BCB2FA8()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_20C13B954();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = "SeymourUI/MultiUserStartWorkoutInterceptor.swift";
  *(v2 + 24) = 48;
  *(v2 + 32) = 2;
  *(v2 + 40) = 139;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = sub_20B51C88C(0, &qword_27C7683B0);
  *v3 = v0;
  v3[1] = sub_20BCB30F8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BCB6E50, v2, v4);
}

uint64_t sub_20BCB30F8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BCB3298, 0, 0);
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];
    v9 = v2 + 2;
    v7 = v2[2];
    v8 = v9[1];

    *v8 = v7;
    (*(v5 + 8))(v4, v6);

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_20BCB3298()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BCB3318(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_20BCB5298(a3, &v9 - v6, type metadata accessor for NavigationRequest);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_20B520158(v7, &unk_27C76D250);
}

void sub_20BCB3404(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v8);
  v10 = (&v38 - v9);
  v11 = sub_20C135024();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C13BB84();
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v42 = v17;
    v43 = v16;
    v44 = v8;
    v20 = *a1;
    v21 = *a1;
    sub_20C13B594();
    (*(v12 + 16))(v14, a2, v11);
    v22 = v20;
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1D4();
    sub_20B583FB8(v20, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = v24;
      v26 = v25;
      v40 = swift_slowAlloc();
      v47 = v40;
      *v26 = 136315394;
      sub_20BCB6A54(&qword_27C766E98, MEMORY[0x277D51510]);
      v38 = v23;
      v27 = sub_20C13DFA4();
      v41 = a4;
      v28 = a3;
      v30 = v29;
      (*(v12 + 8))(v14, v11);
      v31 = sub_20B51E694(v27, v30, &v47);
      a3 = v28;

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      swift_getErrorValue();
      v32 = MEMORY[0x20F2F5850](v45, v46);
      v34 = sub_20B51E694(v32, v33, &v47);

      *(v26 + 14) = v34;
      v35 = v38;
      _os_log_impl(&dword_20B517000, v38, v39, "Client: Failed to handle %s with error: %s", v26, 0x16u);
      v36 = v40;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v36, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }

    (*(v42 + 8))(v19, v43);
    *v10 = v20;
    swift_storeEnumTagMultiPayload();
    v37 = v20;
    a3(v10);
    sub_20B583FB8(v20, 1);
    sub_20B520158(v10, &unk_27C76D250);
  }
}

uint64_t MultiUserStartWorkoutInterceptor.cancel()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v2);
  v84 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v73 - v5;
  MEMORY[0x28223BE20](v6);
  v86 = &v73 - v7;
  MEMORY[0x28223BE20](v8);
  v87 = &v73 - v9;
  v10 = sub_20C13B314();
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for MultiUserStartWorkoutInterceptor.State(0);
  MEMORY[0x28223BE20](started - 8);
  v78 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v73 - v15;
  v17 = sub_20C135024();
  v92 = *(v17 - 8);
  v93 = v17;
  MEMORY[0x28223BE20](v17);
  v79 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v91 = &v73 - v20;
  v21 = sub_20C13BB84();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  sub_20C13B594();
  v28 = sub_20C13BB74();
  v29 = sub_20C13D1F4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = a1;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_20B517000, v28, v29, "Interceptor: cancel", v31, 2u);
    v32 = v31;
    a1 = v30;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  v77 = *(v22 + 8);
  v77(v27, v21);
  v33 = OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_state;
  v34 = v90;
  swift_beginAccess();
  sub_20BCB5298(v34 + v33, v16, type metadata accessor for MultiUserStartWorkoutInterceptor.State);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D1B8);
  v36 = *(v35 - 1);
  if ((*(v36 + 48))(v16, 1, v35) == 1)
  {
    sub_20BCB5300(v16, type metadata accessor for MultiUserStartWorkoutInterceptor.State);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v76 = a1;
    v38 = *(v16 + 1);
    v83 = *v16;
    v73 = v38;
    v39 = v35[12];
    v40 = v35[16];
    v41 = &v16[v35[20]];
    v43 = *v41;
    v42 = *(v41 + 1);
    v74 = v43;
    v75 = v42;
    (*(v92 + 32))(v91, &v16[v39], v93);
    sub_20BCB5300(&v16[v40], type metadata accessor for NavigationRequest);
    v44 = v78;
    (*(v36 + 56))(v78, 1, 1, v35);
    swift_beginAccess();
    sub_20BCB5360(v44, v34 + v33);
    swift_endAccess();
    sub_20C13B594();
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1F4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20B517000, v45, v46, "Interceptor: Publishing MultiUserBeginActivityCancelled", v47, 2u);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    v77(v24, v21);
    swift_getObjectType();
    (*(v92 + 16))(v79, v91, v93);
    v48 = v80;
    sub_20C13B304();
    v49 = v82;
    sub_20C13A764();
    (*(v81 + 8))(v48, v49);
    ObjectType = swift_getObjectType();
    v51 = v85;
    (*(v73 + 56))(0, ObjectType);
    v78 = 0x800000020C1AF340;
    v52 = swift_allocObject();
    v52[2] = 0xD000000000000030;
    v52[3] = 0x800000020C1AF340;
    v52[4] = 214;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_20B5D9EA0;
    *(v53 + 24) = v52;
    v55 = v88;
    v54 = v89;
    v79 = *(v88 + 16);
    v82 = v88 + 16;
    v56 = v84;
    (v79)(v84, v51, v89);
    v57 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v81 = v57;
    v58 = (v3 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v80 = *(v55 + 32);
    (v80)(v59 + v57, v56, v54);
    v60 = (v59 + v58);
    *v60 = sub_20B5D9EC0;
    v60[1] = v53;
    v61 = v86;
    sub_20C137C94();
    v90 = *(v55 + 8);
    v90(v51, v54);
    v62 = swift_allocObject();
    v63 = v75;
    *(v62 + 16) = v74;
    *(v62 + 24) = v63;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_20BCB53EC;
    *(v64 + 24) = v62;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_20B5DF3B8;
    *(v65 + 24) = v64;
    (v79)(v51, v61, v54);
    v66 = swift_allocObject();
    (v80)(v66 + v81, v51, v54);
    v67 = (v66 + v58);
    *v67 = sub_20B5DF3D4;
    v67[1] = v65;

    v68 = v87;
    sub_20C137C94();
    v90(v61, v54);
    v69 = swift_allocObject();
    v69[2] = 0xD000000000000030;
    v69[3] = v78;
    v69[4] = 216;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_20B5DF5EC;
    *(v70 + 24) = v69;
    (v79)(v61, v68, v54);
    v71 = swift_allocObject();
    (v80)(v71 + v81, v61, v54);
    v72 = (v71 + v58);
    *v72 = sub_20B5DF4B0;
    v72[1] = v70;

    sub_20C137C94();

    swift_unknownObjectRelease();
    v90(v68, v54);
    return (*(v92 + 8))(v91, v93);
  }
}

uint64_t sub_20BCB42DC(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v2);
  v4 = (&v8 - v3);
  sub_20B5D9BA8();
  v5 = swift_allocError();
  *v6 = 2;
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_20B520158(v4, &unk_27C76D250);
}

uint64_t sub_20BCB43C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BCB5298(a1, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_20B75B150(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  *(v12 + v11) = v9;
  v13 = (v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  swift_unknownObjectRetain();
  return sub_20C137C94();
}

uint64_t MultiUserStartWorkoutInterceptor.dynamicViewController(_:didFinishPurchaseWith:error:)(void *a1, void *a2, void *a3)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    v11 = [v10 correlationID];
    if (v11)
    {
      v34 = v10;
      v12 = v11;
      v33 = sub_20C13C954();
      v14 = v13;

      sub_20C13B534();

      v15 = sub_20C13BB74();
      v16 = sub_20C13D1F4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v31 = v7;
        v18 = v17;
        v19 = swift_slowAlloc();
        v32 = a1;
        v20 = v19;
        v35 = v19;
        *v18 = 136446210;
        v21 = sub_20B51E694(v33, v14, &v35);
        v33 = v6;
        v22 = a3;
        v23 = v21;

        *(v18 + 4) = v23;
        a3 = v22;
        _os_log_impl(&dword_20B517000, v15, v16, "Interceptor: Successful purchase with correlation ID: %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        v24 = v20;
        a1 = v32;
        MEMORY[0x20F2F6A40](v24, -1, -1);
        MEMORY[0x20F2F6A40](v18, -1, -1);

        (*(v31 + 8))(v9, v33);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }

      sub_20BCAE8E8(0);
    }

    else
    {
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    v27 = [a1 metricsOverlay];
    if (v27)
    {
      v28 = v27;
      v29 = sub_20C13C754();
    }

    else
    {
      v29 = 0;
    }

    sub_20C065618(a2, a3, v29);
  }

  return result;
}

void MultiUserStartWorkoutInterceptor.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = objc_allocWithZone(MEMORY[0x277CEE878]);

    v12 = [v11 initWithRequest:a2 presentingViewController:v10];
    v13 = [v12 performAuthentication];
    v19[4] = sub_20BCB7120;
    v19[5] = v8;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_20BCB7130;
    v19[3] = &block_descriptor_115;
    v14 = _Block_copy(v19);

    [v13 addFinishBlock_];

    _Block_release(v14);
  }

  else
  {
    sub_20B8A9ED4();
    v15 = swift_allocError();

    a3(0, v15);
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      sub_20BCAE8E8(v15);
    }

    else
    {
    }
  }
}

{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = objc_allocWithZone(MEMORY[0x277CEE868]);

    v12 = [v11 initWithRequest:a2 presentingViewController:v10];
    v13 = [v12 present];
    v19[4] = sub_20BCB574C;
    v19[5] = v8;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_20BCB7130;
    v19[3] = &block_descriptor_47_0;
    v14 = _Block_copy(v19);

    [v13 addFinishBlock_];

    _Block_release(v14);
  }

  else
  {
    sub_20B8A9ED4();
    v15 = swift_allocError();

    a3(0, v15);
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      sub_20BCAE8E8(v15);
    }

    else
    {
    }
  }
}

void sub_20BCB4E84(uint64_t a1, void *a2, void (*a3)(void))
{
  a3();
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = a2;
      sub_20BCAE8E8(a2);
    }
  }
}

void sub_20BCB4F20(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

id sub_20BCB4FCC(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_eventHub];
  *v3 = v11[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768850);
  sub_20C133AA4();
  sub_20B51C710(v11, &v1[OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_multiUserClient]);
  sub_20C133AA4();
  v1[OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_platform] = v11[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v11, &v1[OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  sub_20B51C710(v11, &v1[OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_sessionClient]);
  v4 = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  *&v4[OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8] = *(v3 + 1);
  swift_unknownObjectWeakAssign();
  v5 = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  *&v2[OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_dynamicOfferCoordinator] = v5;
  *&v5[OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8] = *(v3 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v6 = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];

  *&v2[OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_webUserInterfaceCoordinator] = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI32MultiUserStartWorkoutInterceptor_state;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D1B8);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for MultiUserStartWorkoutInterceptor(0);
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_20BCB5298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BCB5300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BCB5360(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MultiUserStartWorkoutInterceptor.State(0);
  (*(*(started - 8) + 40))(a2, a1, started);
  return a2;
}

uint64_t sub_20BCB53F4(void *a1)
{
  v2 = sub_20C138FA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v28 = v5;
    v29 = v3;
    v10 = a1;
    sub_20C13B534();
    v11 = a1;
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v27 = v2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v26 = v6;
      v17 = v16;
      v32 = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v18 = MEMORY[0x20F2F5850](v30, v31);
      v20 = sub_20B51E694(v18, v19, &v32);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_20B517000, v12, v13, "Purchase failed with error: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      v21 = v15;
      v2 = v27;
      MEMORY[0x20F2F6A40](v21, -1, -1);

      (*(v7 + 8))(v9, v26);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v22 = a1;
    sub_20BCAE8E8(a1);

    v5 = v28;
    v3 = v29;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v24 = a1;
    sub_20C138F94();
    sub_20BCB6A54(&qword_27C769A40, MEMORY[0x277D54200]);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20BCB576C(uint64_t a1)
{
  result = sub_20BCB6A54(&qword_27C76D1E0, type metadata accessor for MultiUserStartWorkoutInterceptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20BCB57CC()
{
  result = type metadata accessor for MultiUserStartWorkoutInterceptor.State(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BCB58F0()
{
  sub_20BCB5948(319);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20BCB5948(uint64_t a1)
{
  if (!qword_27C76D238)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C76D240);
    sub_20C135024();
    type metadata accessor for NavigationRequest();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C764BA0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27C76D238);
    }
  }
}

void sub_20BCB5A90(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = sub_20B8A9ECC;
  v7[3] = v5;
  v7[4] = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = objc_allocWithZone(MEMORY[0x277CEE878]);
    _Block_copy(a3);

    v11 = [v10 initWithRequest:a1 presentingViewController:v9];
    v12 = [v11 performAuthentication];
    v19[4] = sub_20BCB7120;
    v19[5] = v7;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_20BCB7130;
    v19[3] = &block_descriptor_74;
    v13 = _Block_copy(v19);

    [v12 addFinishBlock_];

    _Block_release(v13);
  }

  else
  {
    sub_20B8A9ED4();
    v14 = swift_allocError();
    _Block_copy(a3);

    v15 = sub_20C132A34();
    (a3)[2](a3, 0, v15);

    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = v14;
      sub_20BCAE8E8(v14);
    }

    else
    {
    }
  }
}

void sub_20BCB5D54(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = sub_20B8A9ECC;
  v7[3] = v5;
  v7[4] = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = objc_allocWithZone(MEMORY[0x277CEE868]);
    _Block_copy(a3);

    v11 = [v10 initWithRequest:a1 presentingViewController:v9];
    v12 = [v11 present];
    v19[4] = sub_20BCB7120;
    v19[5] = v7;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_20BCB7130;
    v19[3] = &block_descriptor_63_0;
    v13 = _Block_copy(v19);

    [v12 addFinishBlock_];

    _Block_release(v13);
  }

  else
  {
    sub_20B8A9ED4();
    v14 = swift_allocError();
    _Block_copy(a3);

    v15 = sub_20C132A34();
    (a3)[2](a3, 0, v15);

    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = v14;
      sub_20BCAE8E8(v14);
    }

    else
    {
    }
  }
}

uint64_t objectdestroy_39Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 16) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20BCB6848(void (*a1)(void), void (*a2)(void, void, void))
{
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_20BCAD9B0(a1, a2, v2 + v6, v8, v10, v11);
}

uint64_t sub_20BCB6950()
{
  v1 = *(type metadata accessor for NavigationRequest() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_20BCB3318(v2, v3, v4);
}

void sub_20BCB69B4(uint64_t a1)
{
  v3 = *(sub_20C135024() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_20BCB3404(a1, v1 + v4, v6, v7);
}

uint64_t sub_20BCB6A54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BCB6AD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20BCB0988(a1);
}

uint64_t sub_20BCB6B90(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  ObjectType = swift_getObjectType();
  return (*(v2 + 24))(v3, 1, ObjectType, v2);
}

uint64_t sub_20BCB6C38(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BCB2740(a1, v1 + 16);
}

uint64_t sub_20BCB6CD4(uint64_t a1)
{
  v4 = *(sub_20C1388F4() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BCB2AC0(a1, v1 + 16, v1 + v5);
}

uint64_t sub_20BCB6DB4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BCB2EDC(a1, v1 + 16);
}

uint64_t sub_20BCB6E80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52A9D4;

  return sub_20BCB0428(a1, v4);
}

uint64_t sub_20BCB6F90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BCB7058(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20BCB0748(a1, v4);
}

uint64_t RemoteParticipantDeviceType.systemImage.getter(unsigned __int8 a1)
{
  v1 = 0x746177656C707061;
  v2 = 1684107369;
  if (a1 != 2)
  {
    v2 = 0x7674656C707061;
  }

  if (!a1)
  {
    v1 = 0x656E6F687069;
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

void sub_20BCB7204(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v10 = sub_20C13D374();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_20C13C584();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_20B793948(1);
  if (a3)
  {
    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v15 = [v14 backgroundColor];
      [v13 setBackgroundColor_];

      [v14 setAlpha_];
      v16 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
      v17 = *(v16 + 16);
      if (v17)
      {

        v18 = (v16 + 40);
        do
        {
          v19 = *v18;
          ObjectType = swift_getObjectType();
          v21 = *(v19 + 48);
          swift_unknownObjectRetain();
          v21(ObjectType, v19);
          swift_unknownObjectRelease();
          v18 += 2;
          --v17;
        }

        while (v17);
      }

      v22 = objc_opt_self();
      v23 = [v22 smu_coreAnimationDefaultCurve];
      v24 = swift_allocObject();
      *(v24 + 16) = v4;
      v40 = sub_20BCBA13C;
      v41 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B7B548C;
      v39 = &block_descriptor_120;
      v25 = _Block_copy(&aBlock);
      v26 = v4;

      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      v40 = sub_20BCBA178;
      v41 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B5E3874;
      v39 = &block_descriptor_126;
      v28 = _Block_copy(&aBlock);
      v29 = v26;

      [v22 animateWithDuration:v23 delay:v25 options:v28 animations:0.3 completion:0.0];
      _Block_release(v28);
      _Block_release(v25);
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v30 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v31 = *(v30 + 16);
  if (v31)
  {

    v32 = (v30 + 40);
    do
    {
      v33 = *v32;
      v34 = swift_getObjectType();
      v35 = *(v33 + 48);
      swift_unknownObjectRetain();
      v35(v34, v33);
      swift_unknownObjectRelease();
      v32 += 2;
      --v31;
    }

    while (v31);
  }
}

void sub_20BCB7648(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v10 = sub_20C13D374();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_20C13C584();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_20B79395C(1);
  if (a3)
  {
    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v15 = [v14 backgroundColor];
      [v13 setBackgroundColor_];

      [v14 setAlpha_];
      v16 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
      v17 = *(v16 + 16);
      if (v17)
      {

        v18 = (v16 + 40);
        do
        {
          v19 = *v18;
          ObjectType = swift_getObjectType();
          v21 = *(v19 + 48);
          swift_unknownObjectRetain();
          v21(ObjectType, v19);
          swift_unknownObjectRelease();
          v18 += 2;
          --v17;
        }

        while (v17);
      }

      v22 = objc_opt_self();
      v23 = [v22 smu_coreAnimationDefaultCurve];
      v24 = swift_allocObject();
      *(v24 + 16) = v4;
      v40 = sub_20BCBA008;
      v41 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B7B548C;
      v39 = &block_descriptor_24_1;
      v25 = _Block_copy(&aBlock);
      v26 = v4;

      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      v40 = sub_20BCBA23C;
      v41 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B5E3874;
      v39 = &block_descriptor_30_0;
      v28 = _Block_copy(&aBlock);
      v29 = v26;

      [v22 animateWithDuration:v23 delay:v25 options:v28 animations:0.3 completion:0.0];
      _Block_release(v28);
      _Block_release(v25);
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v30 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v31 = *(v30 + 16);
  if (v31)
  {

    v32 = (v30 + 40);
    do
    {
      v33 = *v32;
      v34 = swift_getObjectType();
      v35 = *(v33 + 48);
      swift_unknownObjectRetain();
      v35(v34, v33);
      swift_unknownObjectRelease();
      v32 += 2;
      --v31;
    }

    while (v31);
  }
}

void sub_20BCB7A8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v10 = sub_20C13D374();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_20C13C584();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_20B793D44(0);
    if ((a3 & 1) == 0)
    {
      sub_20B795ECC();
      return;
    }

    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v15 = [v14 backgroundColor];
      [v13 setBackgroundColor_];

      [v14 setAlpha_];
      sub_20B795ECC();
      v16 = objc_opt_self();
      v17 = [v16 smu_coreAnimationDefaultCurve];
      v18 = swift_allocObject();
      *(v18 + 16) = v4;
      v28 = sub_20BCB9FF4;
      v29 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_20B7B548C;
      v27 = &block_descriptor_12_2;
      v19 = _Block_copy(&aBlock);
      v20 = v4;

      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v28 = sub_20BCBA23C;
      v29 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_20B5E3874;
      v27 = &block_descriptor_18_1;
      v22 = _Block_copy(&aBlock);
      v23 = v20;

      [v16 animateWithDuration:v17 delay:v19 options:v22 animations:0.3 completion:0.0];
      _Block_release(v22);
      _Block_release(v19);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BCB7DC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v10 = sub_20C13D374();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_20C13C584();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_20B793D60(0);
  if (a3)
  {
    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v15 = [v14 backgroundColor];
      [v13 setBackgroundColor_];

      [v14 setAlpha_];
      v16 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider] + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
      v17 = *(v16 + 16);
      if (v17)
      {

        v18 = (v16 + 40);
        do
        {
          v19 = *v18;
          ObjectType = swift_getObjectType();
          v21 = *(v19 + 48);
          swift_unknownObjectRetain();
          v21(ObjectType, v19);
          swift_unknownObjectRelease();
          v18 += 2;
          --v17;
        }

        while (v17);
      }

      v22 = objc_opt_self();
      v23 = [v22 smu_coreAnimationDefaultCurve];
      v24 = swift_allocObject();
      *(v24 + 16) = v4;
      v40 = sub_20BCBA014;
      v41 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B7B548C;
      v39 = &block_descriptor_36_0;
      v25 = _Block_copy(&aBlock);
      v26 = v4;

      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      v40 = sub_20BCBA23C;
      v41 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B5E3874;
      v39 = &block_descriptor_42_0;
      v28 = _Block_copy(&aBlock);
      v29 = v26;

      [v22 animateWithDuration:v23 delay:v25 options:v28 animations:0.3 completion:0.0];
      _Block_release(v28);
      _Block_release(v25);
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v30 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider] + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v31 = *(v30 + 16);
  if (v31)
  {

    v32 = (v30 + 40);
    do
    {
      v33 = *v32;
      v34 = swift_getObjectType();
      v35 = *(v33 + 48);
      swift_unknownObjectRetain();
      v35(v34, v33);
      swift_unknownObjectRelease();
      v32 += 2;
      --v31;
    }

    while (v31);
  }
}

void sub_20BCB820C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v10 = sub_20C13D374();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_20C13C584();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_20B794144(0);
    if ((a3 & 1) == 0)
    {
      sub_20B795FC0();
      return;
    }

    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v15 = [v14 backgroundColor];
      [v13 setBackgroundColor_];

      [v14 setAlpha_];
      sub_20B795FC0();
      v16 = objc_opt_self();
      v17 = [v16 smu_coreAnimationDefaultCurve];
      v18 = swift_allocObject();
      *(v18 + 16) = v4;
      v28 = sub_20BCBA060;
      v29 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_20B7B548C;
      v27 = &block_descriptor_60_0;
      v19 = _Block_copy(&aBlock);
      v20 = v4;

      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v28 = sub_20BCBA23C;
      v29 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_20B5E3874;
      v27 = &block_descriptor_66_0;
      v22 = _Block_copy(&aBlock);
      v23 = v20;

      [v16 animateWithDuration:v17 delay:v19 options:v22 animations:0.3 completion:0.0];
      _Block_release(v22);
      _Block_release(v19);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BCB8548(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v10 = sub_20C13D374();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_20C13C584();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_20B794538(0);
  if (a3)
  {
    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v15 = [v14 backgroundColor];
      [v13 setBackgroundColor_];

      [v14 setAlpha_];
      v16 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
      v17 = *(v16 + 16);
      if (v17)
      {

        v18 = (v16 + 40);
        do
        {
          v19 = *v18;
          ObjectType = swift_getObjectType();
          v21 = *(v19 + 48);
          swift_unknownObjectRetain();
          v21(ObjectType, v19);
          swift_unknownObjectRelease();
          v18 += 2;
          --v17;
        }

        while (v17);
      }

      v22 = objc_opt_self();
      v23 = [v22 smu_coreAnimationDefaultCurve];
      v24 = swift_allocObject();
      *(v24 + 16) = v4;
      v40 = sub_20BCBA0F4;
      v41 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B7B548C;
      v39 = &block_descriptor_96_0;
      v25 = _Block_copy(&aBlock);
      v26 = v4;

      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      v40 = sub_20BCBA23C;
      v41 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B5E3874;
      v39 = &block_descriptor_102_1;
      v28 = _Block_copy(&aBlock);
      v29 = v26;

      [v22 animateWithDuration:v23 delay:v25 options:v28 animations:0.3 completion:0.0];
      _Block_release(v28);
      _Block_release(v25);
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v30 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v31 = *(v30 + 16);
  if (v31)
  {

    v32 = (v30 + 40);
    do
    {
      v33 = *v32;
      v34 = swift_getObjectType();
      v35 = *(v33 + 48);
      swift_unknownObjectRetain();
      v35(v34, v33);
      swift_unknownObjectRelease();
      v32 += 2;
      --v31;
    }

    while (v31);
  }
}

void sub_20BCB898C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v10 = sub_20C13D374();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_20C13C584();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_20B794920(1);
  if (a3)
  {
    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v15 = [v14 backgroundColor];
      [v13 setBackgroundColor_];

      [v14 setAlpha_];
      v16 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
      v17 = *(v16 + 16);
      if (v17)
      {

        v18 = (v16 + 40);
        do
        {
          v19 = *v18;
          ObjectType = swift_getObjectType();
          v21 = *(v19 + 48);
          swift_unknownObjectRetain();
          v21(ObjectType, v19);
          swift_unknownObjectRelease();
          v18 += 2;
          --v17;
        }

        while (v17);
      }

      v22 = objc_opt_self();
      v23 = [v22 smu_coreAnimationDefaultCurve];
      v24 = swift_allocObject();
      *(v24 + 16) = v4;
      v40 = sub_20BCBA100;
      v41 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B7B548C;
      v39 = &block_descriptor_108_0;
      v25 = _Block_copy(&aBlock);
      v26 = v4;

      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      v40 = sub_20BCBA23C;
      v41 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B5E3874;
      v39 = &block_descriptor_114_1;
      v28 = _Block_copy(&aBlock);
      v29 = v26;

      [v22 animateWithDuration:v23 delay:v25 options:v28 animations:0.3 completion:0.0];
      _Block_release(v28);
      _Block_release(v25);
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v30 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v31 = *(v30 + 16);
  if (v31)
  {

    v32 = (v30 + 40);
    do
    {
      v33 = *v32;
      v34 = swift_getObjectType();
      v35 = *(v33 + 48);
      swift_unknownObjectRetain();
      v35(v34, v33);
      swift_unknownObjectRelease();
      v32 += 2;
      --v31;
    }

    while (v31);
  }
}

void sub_20BCB8DD0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v10 = sub_20C13D374();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_20C13C584();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_20B794934(0);
    if ((a3 & 1) == 0)
    {
      sub_20B7960C4();
      return;
    }

    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v15 = [v14 backgroundColor];
      [v13 setBackgroundColor_];

      [v14 setAlpha_];
      sub_20B7960C4();
      v16 = objc_opt_self();
      v17 = [v16 smu_coreAnimationDefaultCurve];
      v18 = swift_allocObject();
      *(v18 + 16) = v4;
      v28 = sub_20BCBA074;
      v29 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_20B7B548C;
      v27 = &block_descriptor_72_1;
      v19 = _Block_copy(&aBlock);
      v20 = v4;

      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v28 = sub_20BCBA23C;
      v29 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_20B5E3874;
      v27 = &block_descriptor_78_5;
      v22 = _Block_copy(&aBlock);
      v23 = v20;

      [v16 animateWithDuration:v17 delay:v19 options:v22 animations:0.3 completion:0.0];
      _Block_release(v22);
      _Block_release(v19);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BCB910C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v10 = sub_20C13D374();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_20C13C584();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_20B794D18(0);
  if (a3)
  {
    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v15 = [v14 backgroundColor];
      [v13 setBackgroundColor_];

      [v14 setAlpha_];
      v16 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
      v17 = *(v16 + 16);
      if (v17)
      {

        v18 = (v16 + 40);
        do
        {
          v19 = *v18;
          ObjectType = swift_getObjectType();
          v21 = *(v19 + 48);
          swift_unknownObjectRetain();
          v21(ObjectType, v19);
          swift_unknownObjectRelease();
          v18 += 2;
          --v17;
        }

        while (v17);
      }

      v22 = objc_opt_self();
      v23 = [v22 smu_coreAnimationDefaultCurve];
      v24 = swift_allocObject();
      *(v24 + 16) = v4;
      v40 = sub_20BCBA0AC;
      v41 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B7B548C;
      v39 = &block_descriptor_84_0;
      v25 = _Block_copy(&aBlock);
      v26 = v4;

      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      v40 = sub_20BCBA23C;
      v41 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_20B5E3874;
      v39 = &block_descriptor_90_0;
      v28 = _Block_copy(&aBlock);
      v29 = v26;

      [v22 animateWithDuration:v23 delay:v25 options:v28 animations:0.3 completion:0.0];
      _Block_release(v28);
      _Block_release(v25);
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v30 = *(*(*&v4[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI41TVWorkoutPlanAlternativesPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v31 = *(v30 + 16);
  if (v31)
  {

    v32 = (v30 + 40);
    do
    {
      v33 = *v32;
      v34 = swift_getObjectType();
      v35 = *(v33 + 48);
      swift_unknownObjectRetain();
      v35(v34, v33);
      swift_unknownObjectRelease();
      v32 += 2;
      --v31;
    }

    while (v31);
  }
}

void sub_20BCB9568(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_20C13C554();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v10 = sub_20C13D374();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v11 = sub_20C13C584();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_20B794D34(0);
    if ((a3 & 1) == 0)
    {
      sub_20B7961B8();
      return;
    }

    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v15 = [v14 backgroundColor];
      [v13 setBackgroundColor_];

      [v14 setAlpha_];
      sub_20B7961B8();
      v16 = objc_opt_self();
      v17 = [v16 smu_coreAnimationDefaultCurve];
      v18 = swift_allocObject();
      *(v18 + 16) = v4;
      v28 = sub_20BCBA04C;
      v29 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_20B7B548C;
      v27 = &block_descriptor_48_1;
      v19 = _Block_copy(&aBlock);
      v20 = v4;

      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v28 = sub_20BCBA23C;
      v29 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v25 = 1107296256;
      v26 = sub_20B5E3874;
      v27 = &block_descriptor_54_2;
      v22 = _Block_copy(&aBlock);
      v23 = v20;

      [v16 animateWithDuration:v17 delay:v19 options:v22 animations:0.3 completion:0.0];
      _Block_release(v22);
      _Block_release(v19);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BCB98A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v36 = a5;
  v37 = a6;
  v16 = sub_20C13C554();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v19 = sub_20C13D374();
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v20 = sub_20C13C584();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    aBlock = v10;
    v21 = (*(a7 + 16))(a4, a7);
    sub_20BD02C38(v21 & 1, a4, a8, a9);
    if ((a3 & 1) == 0)
    {
      aBlock = v10;
      (*(a9 + 24))(a4, a9);
      return;
    }

    v22 = [v10 view];
    if (v22)
    {
      v23 = v22;
      v24 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v25 = [v24 backgroundColor];
      [v23 setBackgroundColor_];

      [v24 setAlpha_];
      aBlock = v10;
      (*(a9 + 24))(a4, a9);
      v35 = objc_opt_self();
      v34 = [v35 smu_coreAnimationDefaultCurve];
      v26 = swift_allocObject();
      v27 = v36;
      v28 = v37;
      v26[2] = a4;
      v26[3] = v27;
      v26[4] = v28;
      v26[5] = a7;
      v26[6] = a8;
      v26[7] = a9;
      v26[8] = v10;
      v42 = sub_20BCB9FCC;
      v43 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_20B7B548C;
      v41 = &block_descriptor_116;
      v29 = _Block_copy(&aBlock);
      v30 = v10;

      v31 = swift_allocObject();
      v31[2] = a4;
      v31[3] = v27;
      v31[4] = v28;
      v31[5] = a7;
      v31[6] = a8;
      v31[7] = a9;
      v31[8] = v30;
      v42 = sub_20BCB9FE0;
      v43 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_20B5E3874;
      v41 = &block_descriptor_6_3;
      v32 = _Block_copy(&aBlock);
      v33 = v30;

      [v35 animateWithDuration:v34 delay:v29 options:v32 animations:0.3 completion:0.0];
      _Block_release(v32);
      _Block_release(v29);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}