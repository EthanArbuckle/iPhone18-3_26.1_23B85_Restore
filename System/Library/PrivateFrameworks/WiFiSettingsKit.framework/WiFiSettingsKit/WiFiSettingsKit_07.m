void sub_274146E24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E58 = v1;
  unk_280946E60 = v3;
}

void sub_274146ED8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E68 = v1;
  unk_280946E70 = v3;
}

void sub_274146F94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E78 = v1;
  unk_280946E80 = v3;
}

void sub_274147048()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E88 = v1;
  unk_280946E90 = v3;
}

void sub_274147100()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E98 = v1;
  unk_280946EA0 = v3;
}

void sub_2741471B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946EA8 = v1;
  unk_280946EB0 = v3;
}

void sub_27414726C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946EB8 = v1;
  unk_280946EC0 = v3;
}

void sub_274147324()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946EC8 = v1;
  unk_280946ED0 = v3;
}

void sub_2741473DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946ED8 = v1;
  unk_280946EE0 = v3;
}

void sub_274147488()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946EE8 = v1;
  unk_280946EF0 = v3;
}

void sub_274147540()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946EF8 = v1;
  unk_280946F00 = v3;
}

id sub_2741475F8()
{
  v0 = [objc_opt_self() autoUnlockEnabled];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v4 = *MEMORY[0x277D0EE98];
    v5 = MGGetBoolAnswer();
    if (v0)
    {
      if (v5)
      {
        if (wapiCapability)
        {
          if (qword_2809376C0 != -1)
          {
            swift_once();
          }

          v6 = &qword_2809464B8;
        }

        else
        {
          if (qword_2809376C8 != -1)
          {
            swift_once();
          }

          v6 = &qword_2809464C8;
        }
      }

      else if (wapiCapability)
      {
        if (qword_2809376D0 != -1)
        {
          swift_once();
        }

        v6 = &qword_2809464D8;
      }

      else
      {
        if (qword_2809376D8 != -1)
        {
          swift_once();
        }

        v6 = &qword_2809464E8;
      }
    }

    else if (v5)
    {
      if (wapiCapability)
      {
        if (qword_2809376E0 != -1)
        {
          swift_once();
        }

        v6 = &qword_2809464F8;
      }

      else
      {
        if (qword_2809376E8 != -1)
        {
          swift_once();
        }

        v6 = &qword_280946508;
      }
    }

    else if (wapiCapability)
    {
      if (qword_2809376F0 != -1)
      {
        swift_once();
      }

      v6 = &qword_280946518;
    }

    else
    {
      if (qword_2809376F8 != -1)
      {
        swift_once();
      }

      v6 = &qword_280946528;
    }

    result = *v6;
    v7 = v6[1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274147868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_2741478B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274147938()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_274147A78()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_274147BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a1;
  v122 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A590, &qword_2741D4270);
  v123 = *(v2 - 8);
  v124 = v2;
  v3 = *(v123 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v121 = v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v120 = v106 - v6;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A598, &qword_2741D4278);
  v7 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v111 = v106 - v8;
  v9 = sub_2741C713C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v106[1] = v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5A0, &qword_2741D4280);
  v12 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v107 = v106 - v13;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5A8, &qword_2741D4288);
  v14 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v109 = v106 - v15;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5B0, &qword_2741D4290);
  v16 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v117 = v106 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5B8, &qword_2741D4298);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v119 = v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v127 = v106 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D0, &qword_2741CF940);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v106 - v25;
  v128 = sub_2741C717C();
  v113 = *(v128 - 1);
  v27 = *(v113 + 64);
  MEMORY[0x28223BE20](v128);
  v29 = v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D8, &unk_2741D5420);
  v30 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v32 = v106 - v31;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381E0, &qword_2741D42A0);
  v33 = *(*(v126 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v126);
  v125 = v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = v106 - v36;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5C0, &qword_2741D42A8);
  v38 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v40 = v106 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5C8, &qword_2741D42B0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v129 = v106 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = v106 - v45;
  v130 = sub_2741C79CC();
  sub_2741C714C();
  sub_2741C77AC();

  v47 = v115;

  sub_2741C716C();
  sub_2741C6E5C();
  (*(v113 + 8))(v29, v128);
  v48 = v32;
  v49 = v126;
  sub_27409D420(v48, &qword_2809381D8, &unk_2741D5420);
  v50 = sub_2741C75AC();
  (*(*(v50 - 8) + 56))(v26, 1, 1, v50);
  v51 = sub_2741C75CC();
  sub_27409D420(v26, &qword_2809381D0, &qword_2741CF940);
  KeyPath = swift_getKeyPath();
  v53 = &v37[*(v49 + 36)];
  *v53 = KeyPath;
  v53[1] = v51;
  v54 = *(v47 + 24);
  v55 = *(v47 + 32);
  __swift_project_boxed_opaque_existential_1(v47, v54);
  if ((*(v55 + 72))(v54, v55))
  {
    v56 = 0.0;
  }

  else
  {
    v56 = 1.0;
  }

  sub_2740A6C18(v37, v40, &qword_2809381E0, &qword_2741D42A0);
  *&v40[*(v114 + 36)] = v56;
  v57 = *(v47 + 24);
  v58 = *(v47 + 32);
  __swift_project_boxed_opaque_existential_1(v47, v57);
  (*(v58 + 72))(v57, v58);
  sub_2741497E0();
  v128 = v46;
  sub_2741C77CC();
  sub_27409D420(v40, &qword_28093A5C0, &qword_2741D42A8);
  v59 = *(v47 + 24);
  v60 = *(v47 + 32);
  __swift_project_boxed_opaque_existential_1(v47, v59);
  if ((*(v60 + 56))(v59, v60))
  {
    v61 = v125;
    sub_2740A7CDC(v125);
    sub_2740A6D94(v61, v117, &qword_2809381E0, &qword_2741D42A0);
    swift_storeEnumTagMultiPayload();
    sub_27414986C();
    sub_274149A94();
    sub_2741C72CC();
    v62 = v61;
    v63 = &qword_2809381E0;
    v64 = &qword_2741D42A0;
  }

  else
  {
    v65 = v125;
    v66 = *(v47 + 24);
    v67 = *(v47 + 32);
    __swift_project_boxed_opaque_existential_1(v47, v66);
    (*(v67 + 72))(v66, v67);
    if (*(v47 + 96) == 1)
    {
      v68 = *(v47 + 24);
      v69 = *(v47 + 32);
      __swift_project_boxed_opaque_existential_1(v47, v68);
      v70 = (*(v69 + 64))(v68, v69);
      sub_2740A78A0(v70, v65);
      sub_2741C712C();
      sub_2741C711C();
      v71 = *(v47 + 24);
      v72 = *(v47 + 32);
      __swift_project_boxed_opaque_existential_1(v47, v71);
      (*(v72 + 32))(v71, v72);
      sub_2741C710C();

      sub_2741C711C();
      sub_2741C710C();

      sub_2741C711C();
      v73 = *(v47 + 24);
      v74 = *(v47 + 32);
      __swift_project_boxed_opaque_existential_1(v47, v73);
      v130 = (*(v74 + 64))(v73, v74);
    }

    else
    {
      v75 = *(v47 + 88) + 77.5;
      v76 = fabsf(sqrtf((v75 * v75) + 450.0));
      sub_2740CBBBC(((v75 / (v76 + v76)) + 0.5));
      v78 = v77;
      sub_2740A78A0(v77, v65);
      sub_2741C712C();
      sub_2741C711C();
      v79 = *(v47 + 24);
      v80 = *(v47 + 32);
      __swift_project_boxed_opaque_existential_1(v47, v79);
      (*(v80 + 32))(v79, v80);
      sub_2741C710C();

      sub_2741C711C();
      sub_2741C710C();

      sub_2741C711C();
      v130 = v78;
    }

    sub_2741C70FC();
    v81 = v117;
    sub_2741C711C();
    sub_2741C715C();
    sub_27414986C();
    v82 = v107;
    v83 = v125;
    sub_2741C77AC();

    sub_27409D420(v83, &qword_2809381E0, &qword_2741D42A0);
    sub_2740A6D94(v82, v111, &qword_28093A5A0, &qword_2741D4280);
    swift_storeEnumTagMultiPayload();
    sub_2741499E0(&qword_28093A5E8, &qword_28093A5A0, &qword_2741D4280, sub_27414986C);
    v84 = v109;
    sub_2741C72CC();
    sub_27409D420(v82, &qword_28093A5A0, &qword_2741D4280);
    sub_2740A6D94(v84, v81, &qword_28093A5A8, &qword_2741D4288);
    swift_storeEnumTagMultiPayload();
    sub_274149A94();
    sub_2741C72CC();
    v62 = v84;
    v63 = &qword_28093A5A8;
    v64 = &qword_2741D4288;
  }

  v85 = sub_27409D420(v62, v63, v64);
  MEMORY[0x28223BE20](v85);
  v106[-2] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A5F8, &unk_2741D42F0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A600, &unk_2741D5470);
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A608, &unk_2741D4300);
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A610, &unk_2741D5480);
  v89 = sub_2741C732C();
  v90 = sub_2740A6D24(&qword_28093A618, &qword_28093A610, &unk_2741D5480);
  v91 = sub_274149D18(&qword_28093A620, MEMORY[0x277CDE0B8]);
  v130 = v88;
  v131 = v89;
  v132 = v90;
  v133 = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = sub_274149B4C();
  v130 = v86;
  v131 = v87;
  v132 = OpaqueTypeConformance2;
  v133 = v93;
  swift_getOpaqueTypeConformance2();
  v94 = v120;
  sub_2741C6E8C();
  v95 = v129;
  sub_2740A6D94(v128, v129, &qword_28093A5C8, &qword_2741D42B0);
  v96 = v127;
  v97 = v119;
  sub_2740A6D94(v127, v119, &qword_28093A5B8, &qword_2741D4298);
  v99 = v123;
  v98 = v124;
  v100 = *(v123 + 16);
  v101 = v121;
  v100(v121, v94, v124);
  v102 = v122;
  sub_2740A6D94(v95, v122, &qword_28093A5C8, &qword_2741D42B0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A648, &qword_2741D4320);
  sub_2740A6D94(v97, v102 + *(v103 + 48), &qword_28093A5B8, &qword_2741D4298);
  v100((v102 + *(v103 + 64)), v101, v98);
  v104 = *(v99 + 8);
  v104(v94, v98);
  sub_27409D420(v96, &qword_28093A5B8, &qword_2741D4298);
  sub_27409D420(v128, &qword_28093A5C8, &qword_2741D42B0);
  v104(v101, v98);
  sub_27409D420(v97, &qword_28093A5B8, &qword_2741D4298);
  return sub_27409D420(v129, &qword_28093A5C8, &qword_2741D42B0);
}

uint64_t sub_274148BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_2741C732C();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A610, &unk_2741D5480);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A600, &unk_2741D5470);
  v26 = *(v25 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v14 = &v24 - v13;
  sub_274149D60(a1, &v31);
  v15 = swift_allocObject();
  v16 = v36;
  *(v15 + 80) = v35;
  *(v15 + 96) = v16;
  *(v15 + 112) = v37;
  v17 = v32;
  *(v15 + 16) = v31;
  *(v15 + 32) = v17;
  v18 = v34;
  *(v15 + 48) = v33;
  *(v15 + 64) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A650, &qword_2741D4328);
  sub_274149DA4();
  sub_2741C7A7C();
  sub_2741C731C();
  v19 = sub_2740A6D24(&qword_28093A618, &qword_28093A610, &unk_2741D5480);
  v20 = sub_274149D18(&qword_28093A620, MEMORY[0x277CDE0B8]);
  sub_2741C76FC();
  (*(v24 + 8))(v6, v3);
  (*(v8 + 8))(v11, v7);
  v21 = *(a1 + 80);
  v29 = *(a1 + 72);
  v30 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A608, &unk_2741D4300);
  *&v31 = v7;
  *(&v31 + 1) = v3;
  *&v32 = v19;
  *(&v32 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  sub_274149B4C();
  v22 = v25;
  sub_2741C77FC();

  return (*(v26 + 8))(v14, v22);
}

uint64_t sub_274148FF8(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  return sub_2741C7A4C();
}

uint64_t sub_274149058@<X0>(uint64_t a1@<X8>)
{
  sub_2740A7FB4(a1);
  v2 = sub_2741C754C();
  sub_2741C6C6C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A650, &qword_2741D4328);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_2741490D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A630, &qword_2741D4310);
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - v5;
  sub_274149D60(a1, &v22);
  v7 = swift_allocObject();
  v8 = v27;
  *(v7 + 80) = v26;
  *(v7 + 96) = v8;
  *(v7 + 112) = v28;
  v9 = v23;
  *(v7 + 16) = v22;
  *(v7 + 32) = v9;
  v10 = v25;
  *(v7 + 48) = v24;
  *(v7 + 64) = v10;
  *&v22 = sub_274149EB4;
  *(&v22 + 1) = v7;
  sub_274147938();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A638, &qword_2741D4318);
  v12 = type metadata accessor for AssociationModel();
  v13 = sub_2740A6D24(&qword_28093A640, &qword_28093A638, &qword_2741D4318);
  v14 = sub_274149D18(&qword_280937E70, type metadata accessor for AssociationModel);
  sub_2741C770C();

  sub_274147A78();
  type metadata accessor for NetworksListModel();
  *&v22 = v11;
  *(&v22 + 1) = v12;
  *&v23 = v13;
  *(&v23 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  sub_274149D18(&qword_280939880, type metadata accessor for NetworksListModel);
  v16 = v20;
  v15 = v21;
  sub_2741C770C();

  (*(v3 + 8))(v6, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A608, &unk_2741D4300);
  v18 = (v15 + *(result + 36));
  *v18 = sub_2741496D0;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0;
  return result;
}

id sub_2741493C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v32 - v6);
  sub_27409D4E4(a1, &v33);
  v8 = sub_274147A78();
  swift_getKeyPath();
  v32 = v8;
  sub_274149D18(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v9 = *(v8 + 128);

  v10 = type metadata accessor for NetworkDetailsModel();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v35;
  v15 = v36;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v35);
  v17 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_274103260(v19, v9, v13, v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(&v33);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v23 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    sub_2740A6C18(v7, a2, &qword_280937E88, &qword_2741CB5A0);
    v25 = type metadata accessor for NetworkDetailsView();
    v26 = (a2 + v25[5]);
    v32 = v21;
    sub_2741C7A2C();
    v27 = v34;
    *v26 = v33;
    v26[1] = v27;
    v28 = a2 + v25[6];
    LOBYTE(v32) = 1;
    sub_2741C7A2C();
    v29 = v34;
    *v28 = v33;
    *(v28 + 8) = v29;
    v30 = a2 + v25[7];
    LOBYTE(v32) = 0;
    result = sub_2741C7A2C();
    v31 = v34;
    *v30 = v33;
    *(v30 + 8) = v31;
    *(a2 + v25[8]) = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2741496D0()
{
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A668, &unk_2741D4360);
  v0 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v0);

  MEMORY[0x2743E5FB0](0xD000000000000047, 0x80000002741E1BE0);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_274149784@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2741C70EC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A588, &qword_2741D4268);
  return sub_274147BB8(v1, a1 + *(v3 + 44));
}

unint64_t sub_2741497E0()
{
  result = qword_28093A5D0;
  if (!qword_28093A5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A5C0, &qword_2741D42A8);
    sub_27414986C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A5D0);
  }

  return result;
}

unint64_t sub_27414986C()
{
  result = qword_28093A5D8;
  if (!qword_28093A5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381E0, &qword_2741D42A0);
    sub_274149924();
    sub_2740A6D24(&qword_280939658, &qword_280939660, &qword_2741D3DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A5D8);
  }

  return result;
}

unint64_t sub_274149924()
{
  result = qword_28093A5E0;
  if (!qword_28093A5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381D8, &unk_2741D5420);
    sub_274149D18(&qword_280938F10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A5E0);
  }

  return result;
}

uint64_t sub_2741499E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_274149D18(&qword_280938F10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274149A94()
{
  result = qword_28093A5F0;
  if (!qword_28093A5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A5A8, &qword_2741D4288);
    sub_2741499E0(&qword_28093A5E8, &qword_28093A5A0, &qword_2741D4280, sub_27414986C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A5F0);
  }

  return result;
}

unint64_t sub_274149B4C()
{
  result = qword_28093A628;
  if (!qword_28093A628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A608, &unk_2741D4300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A630, &qword_2741D4310);
    type metadata accessor for NetworksListModel();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A638, &qword_2741D4318);
    type metadata accessor for AssociationModel();
    sub_2740A6D24(&qword_28093A640, &qword_28093A638, &qword_2741D4318);
    sub_274149D18(&qword_280937E70, type metadata accessor for AssociationModel);
    swift_getOpaqueTypeConformance2();
    sub_274149D18(&qword_280939880, type metadata accessor for NetworksListModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A628);
  }

  return result;
}

uint64_t sub_274149D18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274149DA4()
{
  result = qword_28093A658;
  if (!qword_28093A658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A650, &qword_2741D4328);
    sub_2741499E0(&qword_28093A660, &qword_2809381F0, &unk_2741D4330, sub_2740A829C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A658);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

BOOL sub_274149F10(void *a1, uint64_t a2)
{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    sub_2740ACAC8(v3, v8);
    if (v8[0] == *a1 && v8[1] == a1[1])
    {
      sub_2740ACB2C(v8);
      return v4 != 0;
    }

    v3 += 104;
    v6 = sub_2741C86DC();
    sub_2740ACB2C(v8);
  }

  while ((v6 & 1) == 0);
  return v4 != 0;
}

void sub_27414A034(unint64_t a1, void *a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), void (*a6)(id *))
{
  v8 = a1;
  v23[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2741C844C();
    a3(0);
    sub_2741586EC(a4, a5);
    sub_2741C821C();
    v8 = v23[2];
    v11 = v23[3];
    v12 = v23[4];
    v13 = v23[5];
    v14 = v23[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_2740D43C8();
      return;
    }

    while (1)
    {
      a6(v23);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2741C84BC())
      {
        a3(0);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v23[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_27414A234(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_2740ACAC8(*(v2 + 48) + 104 * (v11 | (v10 << 6)), v15);
      v12[4] = v15[4];
      v12[5] = v15[5];
      v13 = v16;
      v12[0] = v15[0];
      v12[1] = v15[1];
      v12[2] = v15[2];
      v12[3] = v15[3];
      sub_2741529B4(v14, v12);
      result = sub_2740ACB2C(v14);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27414A350()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v1 = *(v0 + 56);
}

uint64_t sub_27414A3F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  *a2 = *(v3 + 56);
}

uint64_t sub_27414A4A0(uint64_t a1)
{
  v3 = *(v1 + 56);

  v5 = sub_274156A28(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 56);
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27414A5F4()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v1 = *(v0 + 64);
}

uint64_t sub_27414A698@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  *a2 = *(v3 + 64);
}

uint64_t sub_27414A744(uint64_t a1)
{
  v3 = *(v1 + 64);

  v5 = sub_274156A28(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 64);
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27414A898()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v1 = *(v0 + 72);
}

uint64_t sub_27414A93C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  *a2 = *(v3 + 72);
}

uint64_t sub_27414A9E8(uint64_t a1)
{
  v3 = *(v1 + 72);

  v5 = sub_274156A28(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 72);
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27414AB3C()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v1 = *(v0 + 80);
}

uint64_t sub_27414ABE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  *a2 = *(v3 + 80);
}

uint64_t sub_27414AC8C(uint64_t a1)
{
  v3 = *(v1 + 80);

  v5 = sub_274156A28(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 80);
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27414ADE0()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_27414AE98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_27414AF58(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);

  v5 = sub_274157020(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 88);
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27414B0A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 88);
  *(a1 + 88) = a2;
}

uint64_t sub_27414B108()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v1 = *(v0 + 96);
}

uint64_t sub_27414B1AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  *a2 = *(v3 + 96);
}

uint64_t sub_27414B258(uint64_t a1)
{
  if (!*(v1 + 96))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  v4 = sub_2741C813C();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 96);
LABEL_7:
  *(v1 + 96) = a1;
}

double sub_27414B3F4()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  return *(v0 + 104);
}

double sub_27414B494@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  result = *(v3 + 104);
  *a2 = result;
  return result;
}

void sub_27414B53C(double a1)
{
  if (*(v1 + 104) == a1)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27414B654()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_27414B70C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);

  v5 = sub_274156A28(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 112);
    *(v1 + 112) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27414B854(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 112);
  *(a1 + 112) = a2;
}

uint64_t sub_27414B8BC()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_27414B974(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);

  v5 = sub_274156A28(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 120);
    *(v1 + 120) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27414BABC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 120);
  *(a1 + 120) = a2;
}

uint64_t sub_27414BB24()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v1 = *(v0 + 128);
}

uint64_t sub_27414BBC8(uint64_t a1)
{
  if (*(v1 + 128) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }
}

uint64_t sub_27414BCFC()
{
  v1 = v0;
  swift_getKeyPath();
  v7 = v0;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v2 = *(v0 + 144);
  v3 = *(v7 + 152);
  v4 = *(v7 + 160);
  *(v7 + 161);
  v5 = *(v1 + 136);

  return v5;
}

uint64_t sub_27414BDD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v5 = *(v3 + 144);
  v4 = *(v3 + 152);
  v6 = *(v3 + 160);
  v7 = *(v3 + 161);
  *a2 = *(v3 + 136);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
}

uint64_t sub_27414BE98(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *a2;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C69FC();
}

uint64_t sub_27414BF90()
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v1 = *(v0 + 168);
}

uint64_t sub_27414C034@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  *a2 = *(v3 + 168);
}

uint64_t sub_27414C0E0(uint64_t a1)
{
  if (*(v1 + 168) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C69FC();
  }
}

void *sub_27414C214()
{
  v1 = v0;
  v2 = sub_2741C6AFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740CB460(0xD000000000000021, 0x80000002741E2040);
  v7 = *__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_280945DD8);
  (*(v3 + 16))(v6, v8, v2);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000014, 0x80000002741E1E90);
  (*(v3 + 8))(v6, v2);
  v9 = *(v7 + 56);
  swift_unknownObjectRetain();
  sub_27418EA94(0x10u);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  v10 = v1[7];

  v11 = v1[8];

  v12 = v1[9];

  v13 = v1[10];

  v14 = v1[11];

  v15 = v1[12];

  v16 = v1[14];

  v17 = v1[15];

  v18 = v1[16];

  v19 = v1[19];

  v20 = v1[21];

  v21 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksListModel___observationRegistrar;
  v22 = sub_2741C6A4C();
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  return v1;
}

uint64_t sub_27414C450()
{
  sub_27414C214();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworksListModel()
{
  result = qword_28093A688;
  if (!qword_28093A688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27414C4FC()
{
  result = sub_2741C6A4C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_27414C5E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = sub_2741586EC(&qword_280938E50, type metadata accessor for ScanState);
  v2 = *(v1 + 16);
  v3 = type metadata accessor for ScanState();
  return v2(v3, v1);
}

uint64_t (*sub_27414C668(uint64_t a1, uint64_t a2))()
{
  sub_27409D4E4(a1, v5);
  v3 = swift_allocObject();
  sub_27409D118(v5, v3 + 16);
  *(v3 + 56) = a2;

  return sub_2741584D4;
}

uint64_t sub_27414C6EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_27409D4E4(a1, v19);
  sub_2741C80AC();

  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  sub_27409D118(v19, (v10 + 4));
  v10[9] = a2;
  sub_2740CE980(0, 0, v7, &unk_2741D4810, v10);

  v12 = *__swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  swift_beginAccess();
  sub_2740A6D94(v12 + 16, &v17, &qword_280938E10, &qword_2741D8580);
  if (v18)
  {
    v13 = sub_27409D118(&v17, v19);
    v14 = MEMORY[0x28223BE20](v13);
    MEMORY[0x28223BE20](v14);
    sub_2741C69EC();
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_27409D420(&v17, &qword_280938E10, &qword_2741D8580);
    result = sub_2741C863C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27414C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = sub_2741C6AFC();
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_2741C80AC();
  v5[8] = sub_2741C809C();
  v11 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414CABC, v11, v10);
}

uint64_t sub_27414CABC()
{
  v1 = v0[8];
  v2 = v0[2];

  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v3 = sub_2741586EC(&qword_280938E50, type metadata accessor for ScanState);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for ScanState();
  v6 = v4(v5, v3);
  sub_2741C856C();

  v7 = sub_2740E3040(v6);
  MEMORY[0x2743E5FB0](v7);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  v11 = __swift_project_value_buffer(v10, qword_280945DD8);
  v27 = *(v9 + 16);
  v27(v8, v11, v10);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000017, 0x80000002741E2130);

  v12 = *(v9 + 8);
  v12(v8, v10);
  if (v6 > 0xFu)
  {
    if (v6 == 16)
    {
      v15 = v0[3];
      sub_274150F08();
      goto LABEL_15;
    }

    if (v6 != 32)
    {
      if (v6 == 64)
      {
        v14 = v0[3];
        sub_27414DDD8();
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v19 = v0[3];
    v20 = v0[4];
    v21 = sub_2741C80DC();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;

    sub_2740CE980(0, 0, v20, &unk_2741D4820, v22);
  }

  else if (v6 != 2 && v6 != 4)
  {
    if (v6 == 8)
    {
      v13 = v0[3];
      sub_2741517B8();
      goto LABEL_15;
    }

LABEL_13:
    v16 = v0[7];
    v17 = v0[5];
    sub_2741C856C();

    v18 = sub_2740E3040(v6);
    MEMORY[0x2743E5FB0](v18);

    v27(v16, v11, v17);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000010, 0x80000002741E2150);

    v12(v16, v17);
  }

LABEL_15:
  v23 = v0[7];
  v24 = v0[4];

  v25 = v0[1];

  return v25();
}

uint64_t sub_27414CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 816) = a4;
  sub_2741C80AC();
  *(v4 + 824) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414CF78, v6, v5);
}

uint64_t sub_27414CF78()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  v3 = (v0 + 16);
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v4 = *(*(v2 + 128) + 16);
  swift_getKeyPath();
  *(v0 + 224) = v4;
  sub_2741586EC(&qword_2809382A0, type metadata accessor for CurrentNetworkState);

  sub_2741C6A0C();

  v5 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  sub_2740A6D94(v4 + v5, v0 + 16, &qword_280938340, &qword_2741D1660);

  if (!*(v0 + 24))
  {
    sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
    goto LABEL_18;
  }

  v6 = *(v0 + 816);
  v29 = v6;
  v7 = *(v0 + 96);
  *(v0 + 600) = *(v0 + 80);
  *(v0 + 616) = v7;
  *(v0 + 632) = *(v0 + 112);
  v8 = *(v0 + 32);
  *(v0 + 536) = *v3;
  *(v0 + 552) = v8;
  v9 = *(v0 + 64);
  *(v0 + 568) = *(v0 + 48);
  *(v0 + 584) = v9;
  swift_getKeyPath();
  *(v0 + 16) = v6;
  sub_2741C6A0C();

  v10 = *(*(v2 + 128) + 16);
  swift_getKeyPath();
  *(v0 + 16) = v10;

  sub_2741C6A0C();

  v11 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  sub_2740A6D94(v10 + v11, v0 + 328, &qword_280938340, &qword_2741D1660);

  swift_getKeyPath();
  *(v0 + 16) = v29;
  sub_2741C6A0C();

  v28 = v2;
  v12 = *(*(v2 + 128) + 16);
  swift_getKeyPath();
  *(v0 + 16) = v12;

  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v12 + 32, v0 + 432, &qword_280938340, &qword_2741D1660);

  sub_2740A6D94(v0 + 328, v0 + 16, &qword_280938340, &qword_2741D1660);
  sub_2740A6D94(v0 + 432, v0 + 120, &qword_280938340, &qword_2741D1660);
  if (!*(v0 + 24))
  {
    sub_27409D420(v0 + 432, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v0 + 328, &qword_280938340, &qword_2741D1660);
    v17 = (v0 + 536);
    if (!*(v0 + 128))
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  sub_2740A6D94(v0 + 16, v0 + 640, &qword_280938340, &qword_2741D1660);
  if (!*(v0 + 128))
  {
    sub_27409D420(v0 + 432, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v0 + 328, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v0 + 640);
    v17 = (v0 + 536);
LABEL_11:
    sub_27409D420(v0 + 16, &qword_280939B80, &qword_2741D4800);
    goto LABEL_12;
  }

  v13 = *(v0 + 136);
  *(v0 + 224) = *(v0 + 120);
  *(v0 + 240) = v13;
  v14 = *(v0 + 152);
  *(v0 + 320) = *(v0 + 216);
  v15 = *(v0 + 200);
  *(v0 + 288) = *(v0 + 184);
  *(v0 + 304) = v15;
  v16 = *(v0 + 168);
  *(v0 + 256) = v14;
  *(v0 + 272) = v16;
  v17 = (v0 + 536);
  if (*(v0 + 640) == *(v0 + 224) && *(v0 + 648) == *(v0 + 232))
  {
    sub_27409D420(v0 + 432, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v0 + 328, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v0 + 224);
    sub_2740ACB2C(v0 + 640);
LABEL_9:
    sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
LABEL_14:
    v20 = *(v0 + 816);
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741E2070);
    swift_getKeyPath();
    *(v0 + 16) = v20;
    sub_2741C6A0C();

    v21 = *(*(v28 + 128) + 16);
    swift_getKeyPath();
    *(v0 + 224) = v21;

    sub_2741C6A0C();

    v22 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
    swift_beginAccess();
    sub_2740A6D94(v21 + v22, v0 + 16, &qword_280938340, &qword_2741D1660);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938340, &qword_2741D1660);
    v23 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v23);

    MEMORY[0x2743E5FB0](0xD000000000000021, 0x80000002741E2090);
    swift_getKeyPath();
    *(v0 + 16) = v20;
    sub_2741C6A0C();

    v17 = (v0 + 536);
    v24 = *(*(v28 + 128) + 16);
    swift_getKeyPath();
    *(v0 + 328) = v24;

    sub_2741C6A0C();

    swift_beginAccess();
    sub_2740A6D94(v24 + 32, v0 + 16, &qword_280938340, &qword_2741D1660);

    v25 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v25);

    MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741E20C0);
    sub_2740CB460(0, 0xE000000000000000);

    goto LABEL_15;
  }

  v19 = sub_2741C86DC();
  sub_27409D420(v0 + 432, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v0 + 328, &qword_280938340, &qword_2741D1660);
  sub_2740ACB2C(v0 + 224);
  sub_2740ACB2C(v0 + 640);
  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_12:
  v18 = *(v0 + 816);
  sub_274151DB4(v17);
LABEL_15:
  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  *v3 = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;

  sub_2741BA454(v0 + 16);

  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
  sub_2740ACB2C(v17);
LABEL_18:
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_27414D804(uint64_t a1)
{
  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v2 = *(*(a1 + 128) + 16);
  swift_getKeyPath();
  sub_2741586EC(&qword_2809382A0, type metadata accessor for CurrentNetworkState);

  sub_2741C6A0C();
}

uint64_t sub_27414D968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_2741C80DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2741C80AC();

  v10 = sub_2741C809C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  sub_2740CE980(0, 0, v8, a3, v11);

  return sub_2741C69EC();
}

uint64_t sub_27414DAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 248) = a4;
  sub_2741C80AC();
  *(v4 + 256) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414DB50, v6, v5);
}

uint64_t sub_27414DB50()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);

  swift_getKeyPath();
  *(v0 + 120) = v2;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v3 = *(*(v2 + 128) + 16);
  swift_getKeyPath();
  *(v0 + 224) = v3;
  sub_2741586EC(&qword_2809382A0, type metadata accessor for CurrentNetworkState);

  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v3 + 32, v0 + 120, &qword_280938340, &qword_2741D1660);

  if (*(v0 + 128))
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 200);
    *(v0 + 80) = *(v0 + 184);
    *(v0 + 96) = v5;
    *(v0 + 112) = *(v0 + 216);
    v6 = *(v0 + 136);
    *(v0 + 16) = *(v0 + 120);
    *(v0 + 32) = v6;
    v7 = *(v0 + 168);
    *(v0 + 48) = *(v0 + 152);
    *(v0 + 64) = v7;
    sub_2741519A0((v0 + 16));
    sub_2740ACB2C(v0 + 16);
  }

  else
  {
    sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_27414DD48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27409D648;

  return sub_27414F220();
}

uint64_t sub_27414DDD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v0;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  if (*(v0 + 96))
  {
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v6, qword_280945DD8);
    (*(v7 + 16))(v10, v11, v6);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E1FB0);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_280945DD8);
    (*(v7 + 16))(v10, v13, v6);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD00000000000001ALL, 0x80000002741E1F90);
    (*(v7 + 8))(v10, v6);
    sub_2741C80BC();
    v14 = sub_2741C80DC();
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v1;

    sub_2741A771C(0, 0, v5, &unk_2741D4738, v15);

    sub_27414B258(v16);
  }
}

uint64_t sub_27414E154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = sub_2741C6AFC();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_2741C85FC();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27414E270, 0, 0);
}

uint64_t sub_27414E270()
{
  v1 = v0[25];
  v2 = v0[19];
  swift_getKeyPath();
  v0[26] = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksListModel___observationRegistrar;
  v0[17] = v2;
  v0[27] = sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v3 = *(v2 + 104);
  v4 = sub_2741C882C();
  v6 = v5;
  sub_2741C874C();
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_27414E3D0;
  v8 = v0[25];

  return sub_2741B724C(v4, v6, 0, 0, 1);
}

uint64_t sub_27414E3D0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  (*(v2[24] + 8))(v2[25], v2[23]);
  if (v0)
  {
    v5 = sub_27414EC40;
  }

  else
  {
    v5 = sub_27414E538;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27414E538()
{
  v1 = v0[19];
  if (*(v1 + 96))
  {
    v2 = v0[29];
    v4 = v0[26];
    v3 = v0[27];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v1;
    *(v5 + 24) = 0;
    v0[18] = v1;
    sub_2741C69FC();
  }

  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v9 = __swift_project_value_buffer(v8, qword_280945DD8);
  v0[30] = v9;
  v10 = *(v7 + 16);
  v0[31] = v10;
  v0[32] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v9, v8);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000015, 0x80000002741E1FE0);
  v11 = *(v7 + 8);
  v0[33] = v11;
  v0[34] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v8);
  v0[35] = sub_2741C80AC();
  v0[36] = sub_2741C809C();
  v13 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414E730, v13, v12);
}

uint64_t sub_27414E730()
{
  v1 = *(v0 + 288);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27414E7C8, 0, 0);
}

uint64_t sub_27414E7C8()
{
  v1 = *(v0 + 280);
  *(v0 + 296) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414E854, v3, v2);
}

uint64_t sub_27414E854()
{
  v1 = *(v0 + 296);

  *(v0 + 304) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27414E8D0, 0, 0);
}

uint64_t sub_27414E8D0()
{
  v1 = *(v0 + 280);
  *(v0 + 312) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414E95C, v3, v2);
}

uint64_t sub_27414E95C()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);

  sub_2741BAB64(1, v0 + 96);

  return MEMORY[0x2822009F8](sub_27414E9D8, 0, 0);
}

uint64_t sub_27414E9D8()
{
  if (!*(v0 + 120))
  {
    sub_27409D420(v0 + 96, &qword_280939AF8, &qword_2741D11A0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A238, &qword_2741D4780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_8;
  }

  if (!*(v0 + 80))
  {
LABEL_8:
    sub_27409D420(v0 + 56, &qword_28093A228, &unk_2741D4770);
    goto LABEL_9;
  }

  sub_27409D118((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_2741586EC(&qword_28093A3E0, type metadata accessor for AssociationState);
  v2 = *(v1 + 16);
  v3 = type metadata accessor for AssociationState();
  if ((v2(v3, v1) | 2) == 3)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_9:
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = *(v0 + 176);
    v9 = *(v0 + 160);
    (*(v0 + 248))(v8, *(v0 + 240), v9);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000036, 0x80000002741E2000);
    v7(v8, v9);
    *(v0 + 352) = sub_2741C809C();
    v10 = sub_2741C805C();
    v12 = v11;
    v13 = sub_27414EF9C;
    goto LABEL_10;
  }

  v14 = *(v0 + 280);
  *(v0 + 320) = sub_2741C809C();
  v10 = sub_2741C805C();
  v12 = v15;
  v13 = sub_27414ECB0;
LABEL_10:

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_27414EC40()
{
  v1 = v0[25];
  v2 = v0[22];

  v3 = v0[1];
  v4 = v0[29];

  return v3();
}

uint64_t sub_27414ECB0()
{
  v1 = *(v0 + 320);

  return MEMORY[0x2822009F8](sub_27414ED18, 0, 0);
}

uint64_t sub_27414ED18()
{
  v1 = *(v0 + 280);
  *(v0 + 328) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414EDA4, v3, v2);
}

uint64_t sub_27414EDA4()
{
  v1 = *(v0 + 328);

  *(v0 + 336) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27414EE20, 0, 0);
}

uint64_t sub_27414EE20()
{
  v1 = *(v0 + 280);
  *(v0 + 344) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414EEAC, v3, v2);
}

uint64_t sub_27414EEAC()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);

  sub_2741B8FB8(32);

  return MEMORY[0x2822009F8](sub_27414EF24, 0, 0);
}

uint64_t sub_27414EF24()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[25];
  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t sub_27414EF9C()
{
  v1 = *(v0 + 352);

  return MEMORY[0x2822009F8](sub_27414F004, 0, 0);
}

uint64_t sub_27414F004()
{
  v1 = *(v0 + 280);
  *(v0 + 360) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414F090, v3, v2);
}

uint64_t sub_27414F090()
{
  v1 = *(v0 + 360);

  *(v0 + 368) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27414F10C, 0, 0);
}

uint64_t sub_27414F10C()
{
  v1 = *(v0 + 280);
  *(v0 + 376) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27414F198, v3, v2);
}

uint64_t sub_27414F198()
{
  v2 = v0[46];
  v1 = v0[47];

  sub_2741B8FB8(8);

  v3 = v0[25];
  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_27414F220()
{
  v1[16] = v0;
  v2 = sub_2741C6AFC();
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A698, &qword_2741D4620);
  v1[20] = v5;
  v6 = *(v5 - 8);
  v1[21] = v6;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6A0, &unk_2741D4628);
  v1[23] = v8;
  v9 = *(v8 - 8);
  v1[24] = v9;
  v10 = *(v9 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27414F3B0, 0, 0);
}

uint64_t sub_27414F3B0()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = *(*__swift_project_boxed_opaque_existential_1((v0[16] + 16), *(v0[16] + 40)) + 56);
  swift_unknownObjectRetain();
  sub_274187EDC(100, 10.0, 3.0);
  swift_unknownObjectRelease();
  sub_2741C810C();
  (*(v3 + 8))(v2, v4);
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_27414F4DC;
  v8 = v0[25];
  v9 = v0[23];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v9, v0 + 14);
}

uint64_t sub_27414F4DC()
{
  v2 = *(*v1 + 208);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_27414F758;
  }

  else
  {
    v3 = sub_27414F5EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27414F5EC()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 128);
    sub_27409D118((v0 + 16), v0 + 56);
    v2 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_27415723C(*v2, v2[1], *(v2 + 16) | (*(v2 + 17) << 8), v2[3], v1);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v3 = *(MEMORY[0x277D858B8] + 4);
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_27414F4DC;
    v5 = *(v0 + 200);
    v6 = *(v0 + 184);

    return MEMORY[0x2822005A8](v0 + 16, 0, 0, v6, v0 + 112);
  }

  else
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    v7 = *(v0 + 200);
    v8 = *(v0 + 176);
    v9 = *(v0 + 152);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_27414F758()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[14];
  sub_2741C856C();
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741E1EB0);
  v0[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  v2 = v0[12];
  v3 = v0[13];
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v5 + 16))(v4, v7, v6);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v2, v3);

  (*(v5 + 8))(v4, v6);
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_27414F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[87] = a5;
  v5[86] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630) - 8) + 64) + 15;
  v5[88] = swift_task_alloc();
  v7 = type metadata accessor for KnownNetwork();
  v5[89] = v7;
  v8 = *(v7 - 8);
  v5[90] = v8;
  v9 = *(v8 + 64) + 15;
  v5[91] = swift_task_alloc();
  v10 = sub_2741C6AFC();
  v5[92] = v10;
  v11 = *(v10 - 8);
  v5[93] = v11;
  v12 = *(v11 + 64) + 15;
  v5[94] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27414FA90, 0, 0);
}

uint64_t sub_27414FA90()
{
  v83 = v0;
  v1 = *(v0 + 688);
  swift_getKeyPath();
  *(v0 + 552) = v1;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  if (*(*(v1 + 88) + 16))
  {
    v2 = *(v0 + 696);
    v3 = *(v0 + 688);
    swift_getKeyPath();
    *(v0 + 672) = v3;
    sub_2741C6A0C();

    v4 = *(v1 + 88);
    v5 = __swift_project_boxed_opaque_existential_1(v2, v2[3])[3];

    v7 = sub_274155A44(v6, v4, sub_274156108, sub_274156108);

    v8 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v9 = v8[3];
    if (v7[2] <= *(v9 + 16) >> 3)
    {
      v81 = v8[3];

      sub_274152D78(v7);

      v11 = v81;
    }

    else
    {
      v10 = v8[3];

      v11 = sub_274153528(v7, v9);
    }
  }

  else
  {
    v11 = __swift_project_boxed_opaque_existential_1(*(v0 + 696), *(*(v0 + 696) + 24))[3];
  }

  *(v0 + 760) = v11;
  if (*(v11 + 16))
  {
    sub_2741C856C();

    v81 = 0xD000000000000014;
    v82 = 0x80000002741E1EF0;
    sub_27409DC84();
    v12 = sub_2741C81FC();
    MEMORY[0x2743E5FB0](v12);

    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 752);
    v14 = *(v0 + 744);
    v15 = *(v0 + 736);
    v16 = __swift_project_value_buffer(v15, qword_280945DD8);
    (*(v14 + 16))(v13, v16, v15);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000014, 0x80000002741E1EF0);

    (*(v14 + 8))(v13, v15);
  }

  v17 = *(__swift_project_boxed_opaque_existential_1(*(v0 + 696), *(*(v0 + 696) + 24)) + 17);
  if (v17 <= 1)
  {
    if (v17)
    {
      v28 = *(v11 + 16);
      if (v28)
      {
        v29 = sub_2741776D0(*(v11 + 16), 0);
        v79 = sub_274156D30(&v81, (v29 + 4), v28, v11);
        swift_bridgeObjectRetain_n();
        v21 = sub_2740D43C8();
        if (v79 != v28)
        {
LABEL_60:
          __break(1u);
          return MEMORY[0x2822009F8](v21, v22, v23);
        }
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      v33 = *(v0 + 688);
      sub_27414A744(v29);
      goto LABEL_35;
    }

    v19 = *(v11 + 16);
    if (v19)
    {
      v20 = sub_2741776D0(*(v11 + 16), 0);
      v76 = sub_274156D30(&v81, (v20 + 4), v19, v11);
      swift_bridgeObjectRetain_n();
      v21 = sub_2740D43C8();
      if (v76 != v19)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v32 = *(v0 + 688);
    sub_27414A4A0(v20);
    goto LABEL_35;
  }

  if (v17 == 2)
  {
    v24 = *(v11 + 16);
    if (v24)
    {
      v25 = sub_2741776D0(*(v11 + 16), 0);
      v77 = sub_274156D30(&v81, (v25 + 4), v24, v11);
      swift_bridgeObjectRetain_n();
      v21 = sub_2740D43C8();
      if (v77 != v24)
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v30 = *(v0 + 688);
    sub_27414A9E8(v25);
    goto LABEL_35;
  }

  if (v17 != 3)
  {
    v26 = *(v11 + 16);
    if (!v26)
    {

      v27 = MEMORY[0x277D84F90];
LABEL_30:
      v31 = *(v0 + 688);
      sub_27414AC8C(v27);
      goto LABEL_35;
    }

    v27 = sub_2741776D0(*(v11 + 16), 0);
    v78 = sub_274156D30(&v81, (v27 + 4), v26, v11);
    swift_bridgeObjectRetain_n();
    v21 = sub_2740D43C8();
    if (v78 == v26)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

  v18 = *(v0 + 688);
  swift_bridgeObjectRetain_n();
  sub_27414AF58(v11);
LABEL_35:
  v34 = *(v0 + 688);
  swift_getKeyPath();
  *(v0 + 656) = v34;
  sub_2741C6A0C();

  v35 = *(v1 + 88);

  v36 = sub_27414A234(v11, v35);
  sub_27414AF58(v36);
  swift_getKeyPath();
  *(v0 + 624) = v34;
  sub_2741C6A0C();

  if (*(v34 + 152))
  {
    v37 = *(v0 + 688);
    swift_getKeyPath();
    *(v0 + 680) = v37;
    sub_2741C6A0C();

    v38 = *(v1 + 88);

    v40 = sub_274157A94(v39, v37);

    sub_27414AF58(v40);
  }

  *(v0 + 768) = 0;
  v41 = *(v0 + 688);
  swift_getKeyPath();
  *(v0 + 608) = v41;
  sub_2741C6A0C();

  v42 = *(*(v41 + 128) + 16);
  swift_getKeyPath();
  *(v0 + 576) = v42;
  sub_2741586EC(&qword_2809382A0, type metadata accessor for CurrentNetworkState);

  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v42 + 32, v0 + 328, &qword_280938340, &qword_2741D1660);

  if (*(v0 + 336))
  {
    v80 = v1;
    v43 = *(v0 + 408);
    *(v0 + 288) = *(v0 + 392);
    *(v0 + 304) = v43;
    *(v0 + 320) = *(v0 + 424);
    v44 = *(v0 + 344);
    *(v0 + 224) = *(v0 + 328);
    *(v0 + 240) = v44;
    v45 = *(v0 + 376);
    *(v0 + 256) = *(v0 + 360);
    *(v0 + 272) = v45;
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000031, 0x80000002741E1F10);
    v46 = sub_27409DCD8();
    MEMORY[0x2743E5FB0](v46);

    v47 = v81;
    v48 = v82;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 752);
    v50 = *(v0 + 744);
    v51 = *(v0 + 736);
    v52 = *(v0 + 720);
    v75 = *(v0 + 712);
    v53 = *(v0 + 704);
    v54 = *(v0 + 688);
    v55 = __swift_project_value_buffer(v51, qword_280945DD8);
    (*(v50 + 16))(v49, v55, v51);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v47, v48);

    (*(v50 + 8))(v49, v51);
    swift_getKeyPath();
    *(v0 + 560) = v54;
    sub_2741C6A0C();

    v56 = *(*(v41 + 128) + 16);
    swift_getKeyPath();
    *(v0 + 568) = v56;

    sub_2741C6A0C();

    v57 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
    swift_beginAccess();
    sub_2740A6D94(v56 + v57, v53, &qword_280938570, &qword_2741D1630);

    if ((*(v52 + 48))(v53, 1, v75) == 1)
    {
      v58 = *(v0 + 688);
      sub_27409D420(*(v0 + 704), &qword_280938570, &qword_2741D1630);
      swift_getKeyPath();
      *(v0 + 584) = v58;
      sub_2741C6A0C();

      v59 = *(v80 + 88);

      v60 = sub_27415092C((v0 + 224), v59);

      if (v60)
      {
        v61 = *(v0 + 688);
        swift_getKeyPath();
        *(v0 + 592) = v61;
        sub_2741C6A0C();

        *(v0 + 600) = v61;
        swift_getKeyPath();
        sub_2741C6A2C();

        swift_beginAccess();
        if (sub_27415092C((v0 + 224), *(v80 + 88)))
        {
          sub_274153D24((v0 + 224), v0 + 120);
          sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);
        }

        v62 = *(v0 + 688);
        swift_endAccess();
        *(v0 + 616) = v62;
        swift_getKeyPath();
        sub_2741C6A1C();
      }
    }

    else
    {
      v63 = *(v0 + 728);
      sub_27409D240(*(v0 + 704), v63);
      if (*(v63 + 115))
      {
        goto LABEL_51;
      }

      v64 = *(v0 + 688);
      swift_getKeyPath();
      *(v0 + 632) = v64;
      sub_2741C6A0C();

      v65 = *(v80 + 88);

      v66 = sub_27415092C((v0 + 224), v65);

      if ((v66 & 1) == 0)
      {
LABEL_51:
        v70 = *(v0 + 728);
      }

      else
      {
        v67 = *(v0 + 688);
        swift_getKeyPath();
        *(v0 + 640) = v67;
        sub_2741C6A0C();

        *(v0 + 648) = v67;
        swift_getKeyPath();
        sub_2741C6A2C();

        swift_beginAccess();
        if (sub_27415092C((v0 + 224), *(v80 + 88)))
        {
          sub_274153D24((v0 + 224), v0 + 16);
          sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
        }

        v68 = *(v0 + 728);
        v69 = *(v0 + 688);
        swift_endAccess();
        *(v0 + 664) = v69;
        swift_getKeyPath();
        sub_2741C6A1C();

        v70 = v68;
      }

      sub_27409D050(v70);
    }

    sub_2740ACB2C(v0 + 224);
  }

  else
  {
    sub_27409D420(v0 + 328, &qword_280938340, &qword_2741D1660);
  }

  sub_2741C80AC();
  *(v0 + 776) = sub_2741C809C();
  v71 = sub_2741C805C();
  v73 = v72;
  v21 = sub_274150800;
  v22 = v71;
  v23 = v73;

  return MEMORY[0x2822009F8](v21, v22, v23);
}

void sub_274150800()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[86];

  sub_274150A48(v3);
  if (v2)
  {
  }

  else
  {
    v4 = v0[95];

    MEMORY[0x2822009F8](sub_2741508B4, 0, 0);
  }
}

uint64_t sub_2741508B4()
{
  v1 = v0[94];
  v2 = v0[91];
  v3 = v0[88];

  v4 = v0[1];

  return v4();
}

uint64_t sub_27415092C(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v4 = *(a2 + 40);
  sub_2741C87DC();
  v5 = *a1;
  v6 = a1[1];
  sub_2741C7F0C();
  v7 = sub_2741C880C();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_2740ACAC8(*(a2 + 48) + 104 * v9, v14);
      if (v14[0] == v5 && v14[1] == v6)
      {
        break;
      }

      v12 = sub_2741C86DC();
      sub_2740ACB2C(v14);
      if ((v12 & 1) == 0)
      {
        v9 = (v9 + 1) & v10;
        if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    sub_2740ACB2C(v14);
    v12 = 1;
  }

  else
  {
LABEL_11:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_274150A48(unint64_t a1)
{
  v3 = sub_2741C6AFC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v41[3] = a1;
  v8 = sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v9 = *(a1 + 88);

  v11 = sub_2741B2B4C(v10);

  v41[0] = v11;

  sub_2741B3160(v41);
  if (v1)
  {

    __break(1u);
  }

  else
  {
    v42 = v7;

    sub_27414B70C(v41[0]);
    swift_getKeyPath();
    v41[0] = a1;
    sub_2741C6A0C();

    v12 = *(a1 + 88);

    v14 = sub_2741B2D20(v13);

    v41[0] = v14;

    sub_2741B3160(v41);
    v36 = 0;

    sub_27414B974(v41[0]);
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_2741C856C();

    v37 = 0xD000000000000010;
    v38 = 0x80000002741E1F50;
    swift_getKeyPath();
    v41[0] = a1;
    sub_2741C6A0C();

    swift_beginAccess();
    v15 = *(a1 + 112);

    v17 = MEMORY[0x2743E6080](v16, &type metadata for ScannedNetwork);
    v19 = v18;

    MEMORY[0x2743E5FB0](v17, v19);

    v33[1] = v8;
    v20 = v37;
    v21 = v38;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v3, qword_280945DD8);
    v34 = v4[2];
    v35 = v22;
    v23 = v42;
    v34(v42, v22, v3);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v20, v21);

    v24 = v4[1];
    v24(v23, v3);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_2741C856C();

    v39 = 0xD000000000000010;
    v40 = 0x80000002741E1F70;
    swift_getKeyPath();
    v37 = a1;
    sub_2741C6A0C();

    swift_beginAccess();
    v25 = *(a1 + 120);

    v27 = MEMORY[0x2743E6080](v26, &type metadata for ScannedNetwork);
    v29 = v28;

    MEMORY[0x2743E5FB0](v27, v29);

    v30 = v39;
    v31 = v40;
    v34(v23, v35, v3);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v30, v31);

    return (v24)(v23, v3);
  }

  return result;
}

uint64_t sub_274150F08()
{
  v1 = sub_2741C6AFC();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_280945DD8);
  v7 = v2[2];
  v7(v5, v6, v1);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000011, 0x80000002741E1E70);
  v8 = v2[1];
  v8(v5, v1);
  sub_274151100();
  v9 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v7(v5, v6, v1);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000014, 0x80000002741E1E90);
  v8(v5, v1);
  v10 = *(v9 + 56);
  swift_unknownObjectRetain();
  sub_27418EA94(0x10u);
  return swift_unknownObjectRelease();
}

uint64_t sub_274151100()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_2741C80DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2741C80AC();

  v7 = sub_2741C809C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_2740CE980(0, 0, v5, &unk_2741D4578, v8);

  swift_getKeyPath();
  v17 = v1;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v17 = v1;
  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  v10 = v1[11];
  v1[11] = MEMORY[0x277D84FA0];

  v16 = v1;
  swift_getKeyPath();
  sub_2741C6A1C();

  swift_getKeyPath();
  v16 = v1;
  sub_2741C6A0C();

  v16 = v1;
  swift_getKeyPath();
  sub_2741C6A2C();

  v11 = v1[7];
  v12 = MEMORY[0x277D84F90];
  v1[7] = MEMORY[0x277D84F90];

  v16 = v1;
  swift_getKeyPath();
  sub_2741C6A1C();

  swift_getKeyPath();
  v16 = v1;
  sub_2741C6A0C();

  v16 = v1;
  swift_getKeyPath();
  sub_2741C6A2C();

  v13 = v1[8];
  v1[8] = v12;

  v16 = v1;
  swift_getKeyPath();
  sub_2741C6A1C();

  swift_getKeyPath();
  v16 = v1;
  sub_2741C6A0C();

  v16 = v1;
  swift_getKeyPath();
  sub_2741C6A2C();

  v14 = v1[9];
  v1[9] = v12;

  v16 = v1;
  swift_getKeyPath();
  sub_2741C6A1C();
}

uint64_t sub_2741514FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a4;
  sub_2741C80AC();
  *(v4 + 80) = sub_2741C809C();
  v6 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274151594, v6, v5);
}

uint64_t sub_274151594()
{
  v2 = v0[9];
  v1 = v0[10];

  swift_getKeyPath();
  v0[2] = v2;
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v0[2] = v2;
  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  v3 = *(v2 + 112);
  v4 = MEMORY[0x277D84F90];
  *(v2 + 112) = MEMORY[0x277D84F90];

  v0[5] = v2;
  swift_getKeyPath();
  sub_2741C6A1C();

  swift_getKeyPath();
  v0[5] = v2;
  sub_2741C6A0C();

  v0[5] = v2;
  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  v5 = *(v2 + 120);
  *(v2 + 120) = v4;

  v0[8] = v2;
  swift_getKeyPath();
  sub_2741C6A1C();

  v6 = v0[1];

  return v6();
}

uint64_t sub_2741517B8()
{
  v1 = v0;
  v2 = sub_2741C6AFC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280945DD8);
  v8 = v3[2];
  v8(v6, v7, v2);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000032, 0x80000002741E1E10);
  v9 = v3[1];
  v9(v6, v2);
  v10 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v8(v6, v7, v2);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000013, 0x80000002741E1E50);
  v9(v6, v2);
  v11 = *(v10 + 56);
  swift_unknownObjectRetain();
  sub_27418EA94(8u);
  return swift_unknownObjectRelease();
}

uint64_t sub_2741519A0(void *a1)
{
  v2 = v1;
  sub_2741C856C();

  v4 = *a1;
  v5 = a1[1];
  MEMORY[0x2743E5FB0](*a1, v5);
  MEMORY[0x2743E5FB0](0x6373206D6F726620, 0xEF7473696C206E61);
  sub_2740CB460(0x676E69766F6D6572, 0xE900000000000020);

  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v6 = *(v1 + 112);

  v7 = sub_274149F10(a1, v6);

  if (v7)
  {
    sub_2741C856C();

    MEMORY[0x2743E5FB0](v4, v5);
    MEMORY[0x2743E5FB0](0xD00000000000001DLL, 0x80000002741E1DF0);
    sub_2740CB460(0x676E69766F6D6572, 0xE900000000000020);

    swift_getKeyPath();
    sub_2741C6A0C();

    swift_getKeyPath();
    sub_2741C6A2C();

    swift_beginAccess();
    sub_2741B2EF0();
    swift_endAccess();
    swift_getKeyPath();
  }

  else
  {
    swift_getKeyPath();
    sub_2741C6A0C();

    swift_beginAccess();
    v8 = *(v2 + 120);

    v9 = sub_274149F10(a1, v8);

    if (!v9)
    {
      return result;
    }

    sub_2741C856C();

    MEMORY[0x2743E5FB0](v4, v5);
    MEMORY[0x2743E5FB0](0xD00000000000001DLL, 0x80000002741E1DD0);
    sub_2740CB460(0x676E69766F6D6572, 0xE900000000000020);

    swift_getKeyPath();
    sub_2741C6A0C();

    swift_getKeyPath();
    sub_2741C6A2C();

    swift_beginAccess();
    sub_2741B2EF0();
    swift_endAccess();
    swift_getKeyPath();
  }

  sub_2741C6A1C();
}

uint64_t sub_274151DB4(void *a1)
{
  v2 = v1;
  sub_2741C856C();

  v5 = *a1;
  v4 = a1[1];
  MEMORY[0x2743E5FB0](*a1, v4);
  MEMORY[0x2743E5FB0](0x6E616373206F7420, 0xED00007473696C20);
  sub_2740CB460(0x6E696E7275746572, 0xEA00000000002067);

  if (*(a1 + 41) != 1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v6 = *(v1 + 112);

  v7 = sub_274149F10(a1, v6);

  if (v7)
  {
    swift_getKeyPath();
    sub_2741C6A0C();

    v8 = *(v2 + 168);

    v9 = sub_274197F84(a1);

    if ((v9 & 1) == 0)
    {
      sub_2741C856C();
      MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741E1D80);
      MEMORY[0x2743E5FB0](v5, v4);
      MEMORY[0x2743E5FB0](0xD000000000000019, 0x80000002741E1DB0);
      sub_2740CB460(0, 0xE000000000000000);

      swift_getKeyPath();
      sub_2741C6A0C();

      swift_getKeyPath();
      sub_2741C6A2C();

      swift_beginAccess();
      sub_2741B2EF0();
      swift_endAccess();
      swift_getKeyPath();
      sub_2741C6A1C();

      swift_getKeyPath();
      sub_2741C6A0C();

      swift_getKeyPath();
      sub_2741C6A2C();

      swift_beginAccess();
      sub_2741B2FC0(a1);
      swift_endAccess();
      swift_getKeyPath();
      sub_2741C6A1C();
    }
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  v10 = *(v2 + 112);

  v11 = sub_274149F10(a1, v10);

  if (!v11)
  {
    swift_getKeyPath();
    sub_2741C6A0C();

    v14 = *(v2 + 112);

    v15 = sub_274149F10(a1, v14);

    if (!v15)
    {
      swift_getKeyPath();
      sub_2741C6A0C();

      swift_getKeyPath();
      sub_2741C6A2C();

      swift_beginAccess();
      sub_2741B2FC0(a1);
      swift_endAccess();
      swift_getKeyPath();
      sub_2741C6A1C();

      sub_2741C856C();

      v18 = 0x6E696E7275746572;
      v19 = 0xEA00000000002067;
      MEMORY[0x2743E5FB0](v5, v4);
      v16 = " to known network list";
      goto LABEL_9;
    }

LABEL_8:
    swift_getKeyPath();
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C6A0C();

    swift_getKeyPath();
    sub_2741C6A2C();

    swift_beginAccess();
    sub_2741B2FC0(a1);
    swift_endAccess();
    swift_getKeyPath();
    sub_2741C6A1C();

    sub_2741C856C();

    v18 = 0x6E696E7275746572;
    v19 = 0xEA00000000002067;
    MEMORY[0x2743E5FB0](v5, v4);
    v16 = " to other network list";
LABEL_9:
    v13 = (v16 - 32) | 0x8000000000000000;
    v12 = 0xD000000000000016;
    goto LABEL_10;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0x656E206E776F6E4BLL, 0xEE00206B726F7774);
  MEMORY[0x2743E5FB0](v5, v4);
  v12 = 0xD000000000000033;
  v13 = 0x80000002741E1D40;
LABEL_10:
  MEMORY[0x2743E5FB0](v12, v13);
  sub_2740CB460(v18, v19);
}

uint64_t sub_27415251C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2741C849C();

    if (v9)
    {

      sub_2740AD50C();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2741C848C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_274121968(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_274153EDC(v22 + 1, &qword_280938988, qword_2741D3560);
    }

    v20 = v8;
    sub_2741543B4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2740AD50C();
  v11 = *(v6 + 40);
  v12 = sub_2741C835C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_274156554(v20, v14, isUniquelyReferenced_nonNull_native, &qword_280938988, qword_2741D3560, sub_2740AD50C);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2741C836C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_274152768(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2741C849C();

    if (v9)
    {

      type metadata accessor for WiFiNetwork();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2741C848C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2741219A4(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_274153EDC(v22 + 1, &qword_280939F38, &qword_2741D33D0);
    }

    v20 = v8;
    sub_2741543B4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for WiFiNetwork();
  v11 = *(v6 + 40);
  v12 = sub_2741C835C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_274156554(v20, v14, isUniquelyReferenced_nonNull_native, &qword_280939F38, &qword_2741D33D0, type metadata accessor for WiFiNetwork);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2741C836C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_2741529B4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_2741C87DC();
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_2741C7F0C();
  v8 = sub_2741C880C();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_2740ACAC8(*(v4 + 48) + 104 * v10, v23);
      if (v23[0] == v6 && v23[1] == v7)
      {
        break;
      }

      v13 = sub_2741C86DC();
      sub_2740ACB2C(v23);
      if (v13)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2740ACB2C(v23);
LABEL_11:
    sub_2740ACB2C(a2);
    sub_2740ACAC8(*(v4 + 48) + 104 * v10, a1);
    return 0;
  }

  else
  {
LABEL_9:
    v14 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2740ACAC8(a2, v23);
    v22 = *v20;
    sub_2741566D8(v23, v10, isUniquelyReferenced_nonNull_native);
    *v20 = v22;
    v16 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v16;
    *(a1 + 96) = *(a2 + 96);
    v17 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v17;
    v18 = *(a2 + 48);
    result = 1;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v18;
  }

  return result;
}

void sub_274152B48(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_2741C848C())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2741C844C();
    type metadata accessor for WiFiNetwork();
    sub_2741586EC(&qword_280939F58, type metadata accessor for WiFiNetwork);
    sub_2741C821C();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_2740D43C8();
      return;
    }

    while (1)
    {
      v18 = sub_274153B8C(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_2741C84BC())
      {
        type metadata accessor for WiFiNetwork();
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_274152D78(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_27409D420(v11, &qword_280938340, &qword_2741D1660))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_2740ACAC8(*(v2 + 48) + 104 * (v10 | (v9 << 6)), v12);
      sub_274153D24(v12, v11);
      sub_2740ACB2C(v12);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_274152EA0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v85 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2741C844C();
    type metadata accessor for WiFiNetwork();
    sub_2741586EC(&qword_280939F58, type metadata accessor for WiFiNetwork);
    sub_2741C821C();
    v5 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
    v10 = v84;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v75 = v5;
  v76 = v7;
  v77 = v8;
  v78 = v9;
  v66 = v8;
  v14 = (v8 + 64) >> 6;
  v72 = (v4 + 56);
  v79 = v10;
  v69 = v5;
  v70 = v14;
  v68 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_2741C84BC();
      if (!v22)
      {
        goto LABEL_62;
      }

      v73 = v22;
      type metadata accessor for WiFiNetwork();
      swift_dynamicCast();
      v20 = v74;
      v18 = v9;
      v2 = v10;
      if (!v74)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v75 = v5;
      v76 = v7;
      v77 = v66;
      v78 = v18;
      v79 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = *(v4 + 40);
    v24 = v20;
    v25 = sub_2741C835C();
    v26 = -1 << *(v4 + 32);
    v7 = v25 & ~v26;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v68;
    v5 = v69;
    v14 = v70;
  }

  v3 = ~v26;
  v27 = type metadata accessor for WiFiNetwork();
  v28 = *(*(v4 + 48) + 8 * v7);
  v71 = v27;
  while (1)
  {
    v29 = sub_2741C836C();

    if (v29)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v4 + 48) + 8 * v7);
  }

  v31 = *(v4 + 32);
  v63 = ((1 << v31) + 63) >> 6;
  v6 = 8 * v63;
  v3 = v70;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v64 = &v62;
    MEMORY[0x28223BE20](v30);
    v33 = &v62 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v72, v32);
    v34 = *&v33[8 * v5] & ~v16;
    v35 = *(v4 + 16);
    v65 = v33;
    *&v33[8 * v5] = v34;
    v5 = v35 - 1;
    v37 = v68;
    v36 = v69;
LABEL_33:
    v67 = v5;
    while (v36 < 0)
    {
      v38 = sub_2741C84BC();
      if (!v38)
      {
        goto LABEL_61;
      }

      v73 = v38;
      swift_dynamicCast();
      v39 = v74;
      if (!v74)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = *(v4 + 40);
      v45 = sub_2741C835C();
      v46 = v4;
      v47 = -1 << *(v4 + 32);
      v7 = v45 & ~v47;
      v48 = v7 >> 6;
      v49 = 1 << v7;
      if (((1 << v7) & v72[v7 >> 6]) != 0)
      {
        v50 = ~v47;
        while (1)
        {
          v51 = *(*(v46 + 48) + 8 * v7);
          v52 = sub_2741C836C();

          if (v52)
          {
            break;
          }

          v7 = (v7 + 1) & v50;
          v48 = v7 >> 6;
          v49 = 1 << v7;
          if (((1 << v7) & v72[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v70;

        v53 = v65[v48];
        v65[v48] = v53 & ~v49;
        v54 = (v53 & v49) == 0;
        v4 = v46;
        v37 = v68;
        v36 = v69;
        v5 = v67;
        if (!v54)
        {
          v5 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            v4 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v46;
        v37 = v68;
        v36 = v69;
        v3 = v70;
        v5 = v67;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v36 + 48) + ((v16 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v16;
LABEL_49:
      v75 = v36;
      v76 = v37;
      v77 = v66;
      v78 = v41;
      v18 = v41;
      v79 = v2;
      if (!v39)
      {
LABEL_61:
        v4 = sub_274154958(v65, v63, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v40 = v18 + 1;
    }

    else
    {
      v40 = v3;
    }

    v41 = v40 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v57 = v6;

    v58 = v57;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v72, v58);
  sub_274154438(v59, v63, v4, v7, &v75);
  v61 = v60;

  MEMORY[0x2743E7790](v59, -1, -1);
  v4 = v61;
LABEL_62:
  sub_2740D43C8();
LABEL_63:
  v55 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_274153528(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v77 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x277D84FA0];
    goto LABEL_53;
  }

  v4 = a1;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v51 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v53 = (63 - v8) >> 6;
  v57 = (a2 + 56);
  v11 = 0;
  v12 = 0;
  v55 = a1 + 56;
  v56 = a2;

  v14 = v10;
  if (!v10)
  {
LABEL_6:
    v15 = v11;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_55;
      }

      if (v12 >= v53)
      {
        break;
      }

      v14 = *(v6 + 8 * v12);
      ++v15;
      if (v14)
      {
        goto LABEL_10;
      }
    }

    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
LABEL_23:
    sub_27409D420(&v58, &qword_280938340, &qword_2741D1660);
    goto LABEL_52;
  }

  while (1)
  {
LABEL_10:
    sub_2740ACAC8(*(v4 + 48) + 104 * (__clz(__rbit64(v14)) | (v12 << 6)), &v58);
    if (!*(&v58 + 1))
    {
      goto LABEL_23;
    }

    v68 = v61;
    v69 = v62;
    v70 = v63;
    v65 = v58;
    v10 = (v14 - 1) & v14;
    v71 = v64;
    v66 = v59;
    v67 = v60;
    v16 = *(v3 + 40);
    sub_2741C87DC();
    v17 = *(&v65 + 1);
    v2 = v65;
    sub_2741C7F0C();
    v18 = sub_2741C880C();
    v19 = -1 << *(v3 + 32);
    v11 = v18 & ~v19;
    v7 = v11 >> 6;
    v6 = 1 << v11;
    if (((1 << v11) & v57[v11 >> 6]) != 0)
    {
      break;
    }

LABEL_19:
    sub_2740ACB2C(&v65);
    v11 = v12;
    v4 = v54;
    v6 = v55;
    v7 = -1;
    v14 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v20 = ~v19;
  while (1)
  {
    sub_2740ACAC8(*(v3 + 48) + 104 * v11, &v58);
    if (v58 == v2 && *(&v58 + 1) == v17)
    {
      v74 = v51;
      v75 = v12;
      v76 = v10;
      v2 = v54;
      v72 = v54;
      v73 = v55;
      sub_2740ACB2C(&v58);
      goto LABEL_26;
    }

    v22 = sub_2741C86DC();
    sub_2740ACB2C(&v58);
    if (v22)
    {
      break;
    }

    v11 = (v11 + 1) & v20;
    v7 = v11 >> 6;
    v3 = v56;
    v6 = 1 << v11;
    if (((1 << v11) & v57[v11 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v74 = v51;
  v75 = v12;
  v76 = v10;
  v2 = v54;
  v72 = v54;
  v73 = v55;
  v3 = v56;
LABEL_26:
  v23 = sub_2740ACB2C(&v65);
  v24 = *(v3 + 32);
  v48 = ((1 << v24) + 63) >> 6;
  v13 = 8 * v48;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v49 = &v47;
    MEMORY[0x28223BE20](v23);
    v26 = &v47 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v26, v57, v25);
    v27 = *&v26[8 * v7] & ~v6;
    v50 = v26;
    *&v26[8 * v7] = v27;
    v11 = *(v3 + 16) - 1;
    v28 = v55;
    v29 = v53;
    while (v10)
    {
LABEL_34:
      v32 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      sub_2740ACAC8(*(v2 + 48) + 104 * (v32 | (v12 << 6)), &v58);
      if (!*(&v58 + 1))
      {
LABEL_51:
        sub_27409D420(&v58, &qword_280938340, &qword_2741D1660);
        v3 = sub_274154B4C(v50, v48, v11, v3);
        goto LABEL_52;
      }

      v52 = v11;
      v68 = v61;
      v69 = v62;
      v70 = v63;
      v65 = v58;
      v71 = v64;
      v66 = v59;
      v67 = v60;
      v33 = *(v3 + 40);
      sub_2741C87DC();
      v34 = v65;
      sub_2741C7F0C();
      v35 = sub_2741C880C();
      v36 = -1 << *(v3 + 32);
      v37 = v35 & ~v36;
      v6 = v37 >> 6;
      v7 = 1 << v37;
      if (((1 << v37) & v57[v37 >> 6]) == 0)
      {
LABEL_43:
        sub_2740ACB2C(&v65);
        goto LABEL_49;
      }

      v38 = ~v36;
      while (1)
      {
        sub_2740ACAC8(*(v56 + 48) + 104 * v37, &v58);
        if (v58 == v34 && *(&v58 + 1) == *(&v34 + 1))
        {
          break;
        }

        v40 = sub_2741C86DC();
        sub_2740ACB2C(&v58);
        if (v40)
        {
          goto LABEL_45;
        }

        v37 = (v37 + 1) & v38;
        v6 = v37 >> 6;
        v7 = 1 << v37;
        if (((1 << v37) & v57[v37 >> 6]) == 0)
        {
          goto LABEL_43;
        }
      }

      sub_2740ACB2C(&v58);
LABEL_45:
      sub_2740ACB2C(&v65);
      v41 = v50[v6];
      v50[v6] = v41 & ~v7;
      if ((v41 & v7) != 0)
      {
        v29 = v53;
        v11 = v52 - 1;
        v28 = v55;
        v3 = v56;
        v2 = v54;
        if (__OFSUB__(v52, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        if (v52 == 1)
        {

          v3 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }
      }

      else
      {
LABEL_49:
        v28 = v55;
        v3 = v56;
        v29 = v53;
        v2 = v54;
        v11 = v52;
      }
    }

    v30 = v12;
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v29)
      {
        v64 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        goto LABEL_51;
      }

      v10 = *(v28 + 8 * v31);
      ++v30;
      if (v10)
      {
        v12 = v31;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v44 = v13;

    v38 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

LABEL_59:
  v45 = swift_slowAlloc();
  memcpy(v45, v57, v38);
  v46 = sub_2741546B4(v45, v48, v3, v11, &v72);

  MEMORY[0x2743E7790](v45, -1, -1);
  v51 = v74;
  v3 = v46;
LABEL_52:
  sub_2740D43C8();
LABEL_53:
  v42 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_274153B8C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_2741C84CC();

    if (v7)
    {
      v8 = sub_274154D9C();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for WiFiNetwork();
  v11 = *(v3 + 40);
  v12 = sub_2741C835C();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_2741C836C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_274154F08(&qword_280939F38, &qword_2741D33D0);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_27415565C(v14);
  result = v21;
  *v10 = v22;
  return result;
}

unint64_t sub_274153D24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2741C87DC();
  v7 = *a1;
  v8 = a1[1];
  sub_2741C7F0C();
  result = sub_2741C880C();
  v10 = -1 << *(v5 + 32);
  v11 = result & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      sub_2740ACAC8(*(v5 + 48) + 104 * v11, v23);
      if (v23[0] == v7 && v23[1] == v8)
      {
        break;
      }

      v14 = sub_2741C86DC();
      result = sub_2740ACB2C(v23);
      if (v14)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2740ACB2C(v23);
LABEL_11:
    v15 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v22;
    v23[0] = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_274155048();
      v17 = v23[0];
    }

    v18 = *(v17 + 48) + 104 * v11;
    v19 = *(v18 + 80);
    *(a2 + 64) = *(v18 + 64);
    *(a2 + 80) = v19;
    *(a2 + 96) = *(v18 + 96);
    v20 = *(v18 + 16);
    *a2 = *v18;
    *(a2 + 16) = v20;
    v21 = *(v18 + 48);
    *(a2 + 32) = *(v18 + 32);
    *(a2 + 48) = v21;
    result = sub_2741557FC(v11);
    *v22 = v23[0];
  }

  else
  {
LABEL_9:
    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_274153EDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2741C852C();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_2741C835C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_2741540FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6B0, &qword_2741D4700);
  result = sub_2741C852C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 104 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v34 = *(v19 + 48);
      v35 = *(v19 + 64);
      v36 = *(v19 + 80);
      v37 = *(v19 + 96);
      v32 = *(v19 + 16);
      v33 = *(v19 + 32);
      v22 = *(v6 + 40);
      sub_2741C87DC();
      sub_2741C7F0C();
      result = sub_2741C880C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 104 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 48) = v34;
      *(v15 + 64) = v35;
      *(v15 + 80) = v36;
      *(v15 + 96) = v37;
      *(v15 + 16) = v32;
      *(v15 + 32) = v33;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2741543B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2741C835C();
  v5 = -1 << *(a2 + 32);
  result = sub_2741C842C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_274154438(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_2741C84BC())
          {
            goto LABEL_30;
          }

          type metadata accessor for WiFiNetwork();
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_274154958(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_2741C835C();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for WiFiNetwork();
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_2741C836C();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_2741C836C();

          if (v28)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:
      v5 = a5;

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2741546B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v32 = result;
  v33 = v7 - 1;
  v43 = a3 + 56;
  while (1)
  {
    do
    {
      while (1)
      {
        v8 = *a5;
        v9 = a5[1];
        v11 = a5[2];
        v10 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (v11 + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(v9 + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_9;
            }
          }

          v40 = 0;
          if (v14 <= v10 + 1)
          {
            v30 = v10 + 1;
          }

          else
          {
            v30 = (v11 + 64) >> 6;
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          *a5 = v8;
          a5[1] = v9;
          a5[2] = v11;
          a5[3] = v30 - 1;
          a5[4] = 0;
LABEL_28:
          sub_27409D420(&v34, &qword_280938340, &qword_2741D1660);

          return sub_274154B4C(v32, a2, v33, a3);
        }

        v13 = a5[3];
LABEL_9:
        v16 = (v12 - 1) & v12;
        sub_2740ACAC8(*(v8 + 48) + 104 * (__clz(__rbit64(v12)) | (v13 << 6)), &v34);
        v17 = *(&v34 + 1);
        *a5 = v8;
        a5[1] = v9;
        a5[2] = v11;
        a5[3] = v13;
        a5[4] = v16;
        if (!v17)
        {
          goto LABEL_28;
        }

        v41[4] = v38;
        v41[5] = v39;
        v42 = v40;
        v41[0] = v34;
        v41[1] = v35;
        v41[2] = v36;
        v41[3] = v37;
        v18 = *(a3 + 40);
        sub_2741C87DC();
        v19 = v41[0];
        sub_2741C7F0C();
        v20 = sub_2741C880C();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v43 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_2:
        result = sub_2740ACB2C(v41);
      }

      v25 = ~v21;
      while (1)
      {
        sub_2740ACAC8(*(a3 + 48) + 104 * v22, &v34);
        if (v34 == v19 && *(&v34 + 1) == *(&v19 + 1))
        {
          break;
        }

        v27 = sub_2741C86DC();
        sub_2740ACB2C(&v34);
        if (v27)
        {
          goto LABEL_20;
        }

        v22 = (v22 + 1) & v25;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v43 + 8 * (v22 >> 6))) == 0)
        {
          goto LABEL_2;
        }
      }

      sub_2740ACB2C(&v34);
LABEL_20:
      result = sub_2740ACB2C(v41);
      v28 = v32[v23];
      v32[v23] = v28 & ~v24;
    }

    while ((v28 & v24) == 0);
    v29 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
      break;
    }

    --v33;
    if (!v29)
    {
      return MEMORY[0x277D84FA0];
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_274154958(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939F38, &qword_2741D33D0);
  result = sub_2741C854C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2741C835C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_274154B4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6B0, &qword_2741D4700);
  result = sub_2741C854C();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_2740ACAC8(*(a4 + 48) + 104 * (v13 | (v11 << 6)), v32);
    v16 = *(v6 + 40);
    sub_2741C87DC();
    sub_2741C7F0C();
    result = sub_2741C880C();
    v17 = -1 << *(v6 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v6 + 48) + 104 * v20;
    v27 = v32[1];
    v26 = v32[2];
    *v25 = v32[0];
    *(v25 + 16) = v27;
    *(v25 + 32) = v26;
    v28 = v32[3];
    v29 = v32[4];
    v30 = v32[5];
    *(v25 + 96) = v33;
    *(v25 + 64) = v29;
    *(v25 + 80) = v30;
    *(v25 + 48) = v28;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_274154D9C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_2741C848C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2741219A4(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_2741C835C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for WiFiNetwork();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_2741C836C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_27415565C(v9);
  result = sub_2741C836C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_274154F08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2741C851C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_274155048()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6B0, &qword_2741D4700);
  v2 = *v0;
  v3 = sub_2741C851C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v17 + 32) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 104 * (v13 | (v8 << 6));
      result = sub_2740ACAC8(*(v2 + 48) + v16, v23);
      v17 = *(v4 + 48) + v16;
      v18 = v23[3];
      v19 = v23[4];
      v20 = v23[5];
      *(v17 + 96) = v24;
      *(v17 + 64) = v19;
      *(v17 + 80) = v20;
      *(v17 + 48) = v18;
      v21 = v23[2];
      v22 = v23[1];
      *v17 = v23[0];
      *(v17 + 16) = v22;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2741551F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2741C852C();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_2741C835C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_274155404(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6B0, &qword_2741D4700);
  result = sub_2741C852C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v20 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_2740ACAC8(*(v3 + 48) + 104 * (v20 | (v7 << 6)), v31);
      v23 = *(v6 + 40);
      sub_2741C87DC();
      sub_2741C7F0C();
      result = sub_2741C880C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 104 * v13;
      v15 = v31[2];
      v16 = v31[0];
      *(v14 + 16) = v31[1];
      *(v14 + 32) = v15;
      v17 = v31[3];
      v18 = v31[4];
      v19 = v31[5];
      *(v14 + 96) = v32;
      *(v14 + 64) = v18;
      *(v14 + 80) = v19;
      *(v14 + 48) = v17;
      *v14 = v16;
      ++*(v6 + 16);
    }

    v21 = v7;
    while (1)
    {
      v7 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        goto LABEL_28;
      }

      v22 = *(v3 + 56 + 8 * v7);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v10 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_27415565C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2741C841C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_2741C835C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2741557FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2741C841C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = 104 * v6;
        sub_2740ACAC8(*(v3 + 48) + 104 * v6, &v22);
        v12 = *(v3 + 40);
        sub_2741C87DC();
        sub_2741C7F0C();
        v13 = sub_2741C880C();
        sub_2740ACB2C(&v22);
        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 104 * v2);
          v17 = (v15 + v11);
          if (104 * v2 < v11 || (v16 < v17 + 104 ? (v18 = v2 == v6) : (v18 = 0), !v18))
          {
            memmove(v16, v17, 0x68uLL);
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_2741559D4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_274155A44(a1, a2, sub_274155D54, sub_274155D54);
}

void *sub_274155A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v13 = sub_274155C20(v16, v10, a2, a1, a4);

    MEMORY[0x2743E7790](v16, -1, -1);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void *sub_274155C20(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_274155CB8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_274157898(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_274155D54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v51 = 0;
    v25 = 0;
    v47 = v5 + 56;
    v26 = 1 << *(v5 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v5 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = v4 + 56;
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v53 = (v28 - 1) & v28;
LABEL_34:
      v34 = v31 | (v25 << 6);
      v35 = *(v5 + 48);
      v50 = v34;
      v36 = *(v4 + 40);
      v37 = *(v35 + 8 * v34);
      v38 = sub_2741C835C();
      v39 = -1 << *(v4 + 32);
      v40 = v38 & ~v39;
      if ((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        type metadata accessor for WiFiNetwork();
        while (1)
        {
          v42 = *(*(v4 + 48) + 8 * v40);
          v43 = sub_2741C836C();

          if (v43)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          v4 = a4;
          if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v28 = v53;
        v24 = __OFADD__(v51++, 1);
        v5 = a3;
        v4 = a4;
        if (v24)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:

        v28 = v53;
        v5 = a3;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_42;
      }

      v33 = *(v47 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v53 = (v33 - 1) & v33;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v6 = 0;
  v44 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v51 = 0;
  v52 = a3 + 56;
  v46 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v49 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(v5 + 40);
    v15 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
    v16 = sub_2741C835C();
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) != 0)
    {
      type metadata accessor for WiFiNetwork();
      v4 = *(*(v5 + 48) + 8 * v18);
      v21 = sub_2741C836C();

      if ((v21 & 1) == 0)
      {
        v22 = ~v17;
        do
        {
          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v5 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v23 = *(*(a3 + 48) + 8 * v18);
          v4 = sub_2741C836C();
        }

        while ((v4 & 1) == 0);
      }

      v5 = a3;

      v10 = v46;
      a1[v19] |= v20;
      v9 = v49;
      v24 = __OFADD__(v51++, 1);
      if (v24)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v10 = v46;
      v9 = v49;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_42:

      sub_274154958(a1, a2, v51, v5);
      return;
    }

    v13 = *(v44 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_274156108(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v48 = result;
  v6 = *(a3 + 16);
  v7 = *(a4 + 16);
  v60 = a3;
  if (v7 >= v6)
  {
    v51 = 0;
    v27 = 0;
    v28 = a3 + 56;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v53 = (v31 - 1) & v31;
LABEL_39:
      v50 = v34 | (v27 << 6);
      sub_2740ACAC8(*(v5 + 48) + 104 * v50, v58);
      v37 = *(v4 + 40);
      sub_2741C87DC();
      v38 = v58[0];
      sub_2741C7F0C();
      v39 = sub_2741C880C();
      v40 = -1 << *(v4 + 32);
      v41 = v39 & ~v40;
      if ((*(v33 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        while (1)
        {
          sub_2740ACAC8(*(a4 + 48) + 104 * v41, v56);
          if (*&v56[0] == v38 && *(&v56[0] + 1) == *(&v38 + 1))
          {
            break;
          }

          v44 = sub_2741C86DC();
          sub_2740ACB2C(v56);
          if (v44)
          {
            goto LABEL_49;
          }

          v41 = (v41 + 1) & v42;
          if (((*(v33 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        sub_2740ACB2C(v56);
LABEL_49:
        result = sub_2740ACB2C(v58);
        *(v48 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v31 = v53;
        v45 = __OFADD__(v51++, 1);
        v5 = v60;
        v4 = a4;
        if (v45)
        {
          __break(1u);
LABEL_52:

          return sub_274154B4C(v48, a2, v51, v5);
        }
      }

      else
      {
LABEL_31:
        result = sub_2740ACB2C(v58);
        v5 = v60;
        v31 = v53;
        v4 = a4;
      }
    }

    v35 = v27;
    while (1)
    {
      v27 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v27 >= v32)
      {
        goto LABEL_52;
      }

      v36 = *(v28 + 8 * v27);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v53 = (v36 - 1) & v36;
        goto LABEL_39;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = a4 + 56;
    v10 = 1 << *(a4 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a4 + 56);
    v13 = (v10 + 63) >> 6;
    v51 = 0;
    v52 = a3 + 56;
    v47 = v13;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v49 = (v12 - 1) & v12;
LABEL_15:
      sub_2740ACAC8(*(v4 + 48) + 104 * (v14 | (v8 << 6)), v58);
      v56[4] = v58[4];
      v56[5] = v58[5];
      v57 = v59;
      v56[0] = v58[0];
      v56[1] = v58[1];
      v56[2] = v58[2];
      v56[3] = v58[3];
      v17 = *(v5 + 40);
      sub_2741C87DC();
      v18 = v56[0];
      sub_2741C7F0C();
      v19 = sub_2741C880C();
      v5 = v60;
      v20 = -1 << *(v60 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v52 + 8 * (v21 >> 6))) != 0)
      {
        v24 = ~v20;
        while (1)
        {
          sub_2740ACAC8(*(v5 + 48) + 104 * v21, v55);
          if (v55[0] == v18 && v55[1] == *(&v18 + 1))
          {
            break;
          }

          v26 = sub_2741C86DC();
          sub_2740ACB2C(v55);
          if (v26)
          {
            goto LABEL_25;
          }

          v21 = (v21 + 1) & v24;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          v5 = v60;
          if (((1 << v21) & *(v52 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        sub_2740ACB2C(v55);
LABEL_25:
        result = sub_2740ACB2C(v56);
        v48[v22] |= v23;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_55;
        }

        ++v51;
        v5 = v60;
      }

      else
      {
LABEL_6:
        result = sub_2740ACB2C(v56);
      }

      v4 = a4;
      v13 = v47;
      v12 = v49;
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
        goto LABEL_52;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v49 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

void sub_274156554(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_274153EDC(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_274154F08(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_2741551F8(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_2741C835C();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_2741C836C();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2741C870C();
  __break(1u);
}

uint64_t sub_2741566D8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2741540FC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_274155048();
      goto LABEL_16;
    }

    sub_274155404(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_2741C87DC();
  v11 = *v6;
  v12 = *(v6 + 8);
  sub_2741C7F0C();
  result = sub_2741C880C();
  v13 = -1 << *(v9 + 32);
  a2 = result & ~v13;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      sub_2740ACAC8(*(v9 + 48) + 104 * a2, v25);
      if (v25[0] == v11 && v25[1] == v12)
      {
        goto LABEL_19;
      }

      v16 = sub_2741C86DC();
      result = sub_2740ACB2C(v25);
      if (v16)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48) + 104 * a2;
  v19 = *(v6 + 16);
  *v18 = *v6;
  *(v18 + 16) = v19;
  *(v18 + 96) = *(v6 + 96);
  v20 = *(v6 + 80);
  *(v18 + 64) = *(v6 + 64);
  *(v18 + 80) = v20;
  v21 = *(v6 + 48);
  *(v18 + 32) = *(v6 + 32);
  *(v18 + 48) = v21;
  v22 = *(v17 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v17 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:
  sub_2740ACB2C(v25);
LABEL_20:
  result = sub_2741C870C();
  __break(1u);
  return result;
}

uint64_t sub_2741568A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnownNetwork();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    do
    {
      sub_27409CF58(v14, v11);
      sub_27409CF58(v15, v8);
      if (*v11 == *v8 && v11[1] == v8[1])
      {
        sub_27409D050(v8);
        sub_27409D050(v11);
      }

      else
      {
        v18 = sub_2741C86DC();
        sub_27409D050(v8);
        sub_27409D050(v11);
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      --v12;
    }

    while (v12);
  }

  return 1;
}

uint64_t sub_274156A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_2740ACAC8(v3, v9);
      sub_2740ACAC8(v4, v8);
      if (v9[0] == v8[0] && v9[1] == v8[1])
      {
        sub_2740ACB2C(v8);
        sub_2740ACB2C(v9);
      }

      else
      {
        v6 = sub_2741C86DC();
        sub_2740ACB2C(v8);
        sub_2740ACB2C(v9);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 104;
      v3 += 104;
      --v2;
    }

    while (v2);
  }

  return 1;
}

id sub_274156B04(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_2741C844C();
  type metadata accessor for WiFiNetwork();
  sub_2741586EC(&qword_280939F58, type metadata accessor for WiFiNetwork);
  result = sub_2741C821C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_2741C84BC())
      {
        goto LABEL_30;
      }

      type metadata accessor for WiFiNetwork();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_274156D30(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_2740ACAC8(*(a4 + 48) + 104 * (v17 | (v12 << 6)), v25);
      v18 = v25[2];
      v19 = v25[1];
      *v11 = v25[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      v20 = v25[5];
      v21 = v25[4];
      v22 = v25[3];
      *(v11 + 96) = v26;
      *(v11 + 64) = v21;
      *(v11 + 80) = v20;
      *(v11 + 48) = v22;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 104;
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
        goto LABEL_26;
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
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_274156EB4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_27409D4E4(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_27409D118(v20, v21);
      sub_27409D118(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_274157020(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v21 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v22 = (v7 - 1) & v7;
LABEL_13:
      sub_2740ACAC8(*(result + 48) + 104 * (v10 | (v3 << 6)), v26);
      v24[4] = v26[4];
      v24[5] = v26[5];
      v25 = v27;
      v24[0] = v26[0];
      v24[1] = v26[1];
      v24[2] = v26[2];
      v24[3] = v26[3];
      v13 = *(a2 + 40);
      sub_2741C87DC();
      v14 = v24[0];
      sub_2741C7F0C();
      v15 = sub_2741C880C();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      while (1)
      {
        sub_2740ACAC8(*(a2 + 48) + 104 * v17, v23);
        if (v23[0] == v14 && v23[1] == *(&v14 + 1))
        {
          break;
        }

        v20 = sub_2741C86DC();
        sub_2740ACB2C(v23);
        if (v20)
        {
          goto LABEL_23;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_2740ACB2C(v23);
LABEL_23:
      sub_2740ACB2C(v24);
      result = v21;
      v7 = v22;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

LABEL_26:
    sub_2740ACB2C(v24);
    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v22 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27415723C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = a3 >> 8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v30 - v13;
  v15 = sub_2741C6AFC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &type metadata for NetworkScanResult;
  v33 = &off_2883295C0;
  v20 = swift_allocObject();
  v31[0] = v20;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v7 & 1;
  *(v20 + 33) = v10;
  *(v20 + 40) = a4;
  *&v30[0] = 0;
  *(&v30[0] + 1) = 0xE000000000000000;

  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000016, 0x80000002741E1ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6A8, &qword_2741D4638);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](539828265, 0xE400000000000000);
  v21 = __swift_project_boxed_opaque_existential_1(v31, v32)[3];
  sub_27409DC84();

  v22 = sub_2741C81FC();
  v24 = v23;

  MEMORY[0x2743E5FB0](v22, v24);

  v25 = v30[0];
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_280945DD8);
  (*(v16 + 16))(v19, v26, v15);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v25, *(&v25 + 1));

  (*(v16 + 8))(v19, v15);
  v27 = sub_2741C80DC();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  sub_27409D4E4(v31, v30);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = a5;
  sub_27409D118(v30, (v28 + 5));

  sub_2740CE980(0, 0, v14, &unk_2741D4648, v28);

  return __swift_destroy_boxed_opaque_existential_1Tm(v31);
}

uint64_t sub_2741575E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_27414C0E0(v4);
}

uint64_t sub_274157614(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_2741514FC(a1, v4, v5, v6);
}

uint64_t sub_274157738()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_274157770()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2741577B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27414F938(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_274157898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = result;
  v23 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    sub_2740ACAC8(*(a3 + 48) + 104 * v14, v25);
    swift_getKeyPath();
    v26 = a4;
    sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
    sub_2741C6A0C();

    v15 = *(a4 + 168);

    sub_274197AE8();
    v17 = v16;
    v19 = v18;

    LOBYTE(v17) = sub_27409DF24(v17, v19);

    result = sub_2740ACB2C(v25);
    if (v17)
    {
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_274154B4C(v22, a2, v23, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_274157A94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29 = v8;
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x28223BE20](v10);
    v31 = v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v9);
    v11 = 0;
    v34 = v5;
    v3 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    v32 = 0;
    v33 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksListModel___observationRegistrar;
    v8 = (v12 + 63) >> 6;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v18 = v15 | (v11 << 6);
      sub_2740ACAC8(*(v34 + 48) + 104 * v18, v36);
      swift_getKeyPath();
      v35 = a2;
      sub_2741586EC(&qword_280939880, type metadata accessor for NetworksListModel);
      sub_2741C6A0C();

      v19 = *(a2 + 168);

      sub_274197AE8();
      v21 = v20;
      v5 = v22;

      v9 = v36;
      LOBYTE(v21) = sub_27409DF24(v21, v5);

      sub_2740ACB2C(v36);
      if (v21)
      {
        *&v31[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_274154B4C(v31, v29, v32, v34);

          goto LABEL_17;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_16;
      }

      v17 = *(v3 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v24 = sub_274155CB8(v27, v8, v5, a2);

  MEMORY[0x2743E7790](v27, -1, -1);

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_274157DC4()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 49);
  v6 = *(v1 + 152);
  *(v1 + 136) = *(v0 + 24);
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;
  *(v1 + 160) = v4;
  *(v1 + 161) = v5;
}

uint64_t sub_274157E20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_27414B258(v4);
}

uint64_t sub_274157E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_27414E154(a1, v4, v5, v6);
}

uint64_t sub_274157F44()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 168);
  *(v1 + 168) = *(v0 + 24);
}

uint64_t sub_274157F80()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 128);
  *(v1 + 128) = *(v0 + 24);
}

double sub_274157FF4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 104) = result;
  return result;
}

uint64_t sub_274158004()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 96);
  *(v1 + 96) = *(v0 + 24);
}

uint64_t keypath_set_77Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_2741580AC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 80);
  *(v1 + 80) = *(v0 + 24);
}

uint64_t sub_2741580E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  *(v1 + 72) = *(v0 + 24);
}

uint64_t sub_274158124()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  *(v1 + 64) = *(v0 + 24);
}

uint64_t sub_274158160()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  *(v1 + 56) = *(v0 + 24);
}

uint64_t sub_2741581FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27414DAB8(a1, v4, v5, v6);
}

uint64_t sub_274158374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27414CEE0(a1, v4, v5, v6);
}

uint64_t sub_274158494()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2741584E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_274158528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27414C990(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroyTm_14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_274158638()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2740A7434;

  return sub_27414DD48();
}

uint64_t sub_2741586EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274158770()
{
  result = sub_2741C7E3C();
  qword_280946F08 = result;
  return result;
}

void sub_27415885C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_2741588C4()
{
  type metadata accessor for WiFiInterface();
  swift_allocObject();
  result = sub_274158C94();
  qword_280946F10 = result;
  return result;
}

uint64_t sub_274158900(uint64_t a1)
{
  v3 = 7104878;
  v4 = sub_2741C6AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_2741C856C();

  v31 = 0xD00000000000001DLL;
  v32 = 0x80000002741E2230;
  sub_2740A6D94(a1, v28, &qword_2809395D8, &qword_2741CFF78);
  v9 = v29;
  if (v29)
  {
    v10 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v11 = (*(v10 + 32))(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    sub_27409D420(v28, &qword_2809395D8, &qword_2741CFF78);
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x2743E5FB0](v11, v13);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_beginAccess();
  v14 = v1[9];
  if (v14)
  {
    v15 = v1[10];
    v16 = __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
    v17 = *(v14 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v16);
    v20 = &v28[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20);
    v3 = (*(v15 + 32))(v14, v15);
    v22 = v21;
    (*(v17 + 8))(v20, v14);
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v3, v22);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  v23 = v31;
  v24 = v32;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v4, qword_280945DD8);
  (*(v5 + 16))(v8, v25, v4);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v23, v24);

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_274158C94()
{
  v1 = v0;
  v46 = *MEMORY[0x277D85DE8];
  v2 = sub_2741C6AFC();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  *(v1 + 24) = &unk_288325D90;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  v10 = MEMORY[0x277D84F90];
  *(v1 + 80) = 0;
  *(v1 + 88) = v10;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
  v11 = [objc_allocWithZone(MEMORY[0x277D02B18]) initWithServiceType_];
  *(v1 + 16) = v11;
  [v11 activate];
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = type metadata accessor for KnownNetwork();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = sub_2741C80DC();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v1;
  v19[5] = v12;
  v19[6] = v13;
  swift_retain_n();

  sub_2740CE980(0, 0, v9, &unk_2741D4940, v19);

  v18(v9, 1, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v1;

  sub_2740CE980(0, 0, v9, &unk_2741D4950, v20);

  v21 = *(v1 + 16);
  v44 = sub_27416098C;
  v45 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_27415885C;
  v43 = &block_descriptor_10;
  v22 = _Block_copy(&aBlock);
  v23 = v45;
  v24 = v21;

  [v24 setEventHandler_];
  _Block_release(v22);

  v25 = *(v1 + 24);
  v26 = v25[2];

  if (v26)
  {
    v27 = 0;
    while (1)
    {
      if (v27 >= v25[2])
      {
        __break(1u);
        goto LABEL_11;
      }

      v28 = v25[v27 + 4];
      v29 = *(v1 + 16);
      aBlock = 0;
      v30 = [v29 startMonitoringEventType:v28 error:&aBlock];
      v23 = aBlock;
      if (!v30)
      {
        break;
      }

      ++v27;
      v31 = aBlock;
      if (v26 == v27)
      {
        goto LABEL_6;
      }
    }

    v32 = aBlock;

    v26 = sub_2741C681C();

    swift_willThrow();
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_2741C856C();

    aBlock = 0xD000000000000021;
    v41 = 0x80000002741E22F0;
    swift_getErrorValue();
    v33 = sub_2741C877C();
    MEMORY[0x2743E5FB0](v33);

    v25 = aBlock;
    v23 = v41;
    if (qword_280937360 == -1)
    {
      goto LABEL_8;
    }

LABEL_11:
    swift_once();
LABEL_8:
    v34 = __swift_project_value_buffer(v2, qword_280945DD8);
    v35 = v39;
    (*(v39 + 16))(v5, v34, v2);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v25, v23);

    (*(v35 + 8))(v5, v2);
  }

  else
  {
LABEL_6:
  }

  v36 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_274159258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[110] = a5;
  v5[109] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630) - 8) + 64) + 15;
  v5[111] = swift_task_alloc();
  v5[112] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_274159308, 0, 0);
}

uint64_t sub_274159308()
{
  v1 = *(v0 + 872);
  v2 = [*(v1 + 16) currentScanResult];
  if (v2)
  {
    v3 = *(v0 + 880);
    v4 = v2;
    sub_27409D85C(v4, v0 + 328);
    swift_beginAccess();
    sub_274161418(v0 + 328, v3 + 16, &qword_280938340, &qword_2741D1660);
    swift_beginAccess();
    sub_2740A6D94(v3 + 16, v0 + 432, &qword_280938340, &qword_2741D1660);
    if (*(v0 + 440))
    {
      v5 = sub_2740F2248();
      v6 = swift_allocObject();
      v7 = *(v0 + 512);
      *(v6 + 80) = *(v0 + 496);
      *(v6 + 96) = v7;
      *(v6 + 112) = *(v0 + 528);
      v8 = *(v0 + 448);
      *(v6 + 16) = *(v0 + 432);
      *(v6 + 32) = v8;
      v9 = *(v0 + 480);
      *(v6 + 48) = *(v0 + 464);
      *(v6 + 64) = v9;
      v10 = &type metadata for ScannedNetwork;
    }

    else
    {
      sub_27409D420(v0 + 432, &qword_280938340, &qword_2741D1660);
      v6 = 0;
      v10 = 0;
      v5 = 0;
      *(v0 + 584) = 0u;
    }

    v11 = *(v0 + 872);
    *(v0 + 576) = v6;
    *(v0 + 600) = v10;
    *(v0 + 608) = v5;
    swift_beginAccess();
    sub_2740A6D94(v11 + 48, v0 + 616, &qword_2809395D8, &qword_2741CFF78);
    swift_beginAccess();
    sub_2740F22E4(v0 + 576, v11 + 48);
    swift_endAccess();
    sub_274158900(v0 + 616);
    sub_27409D420(v0 + 616, &qword_2809395D8, &qword_2741CFF78);
    sub_27409D420(v0 + 576, &qword_2809395D8, &qword_2741CFF78);
    v12 = [v4 matchingKnownNetworkProfile];
    if (v12)
    {
      v13 = *(v0 + 896);
      v14 = *(v0 + 888);
      sub_274117670(v12, v14);

      v15 = type metadata accessor for KnownNetwork();
      (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
      swift_beginAccess();
      sub_274161418(v14, v13, &qword_280938570, &qword_2741D1630);
    }

    else
    {
    }
  }

  v16 = *(v0 + 880);
  swift_beginAccess();
  sub_2740A6D94(v16 + 16, v0 + 16, &qword_280938340, &qword_2741D1660);
  v17 = *(v0 + 24);
  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = *(v0 + 872);
  swift_beginAccess();
  sub_2740A6D94(v18 + 48, v0 + 536, &qword_2809395D8, &qword_2741CFF78);
  v19 = *(v0 + 560);
  sub_27409D420(v0 + 536, &qword_2809395D8, &qword_2741CFF78);
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = *(v1 + 16);
  v21 = sub_2741BC2FC();

  if (v21)
  {
    *(v0 + 904) = sub_2741C80AC();
    *(v0 + 912) = sub_2741C809C();
    v22 = sub_2741C805C();
    v24 = v23;
    v25 = sub_274159710;
  }

  else
  {
LABEL_12:
    *(v0 + 944) = sub_2741C80AC();
    *(v0 + 952) = sub_2741C809C();
    v22 = sub_2741C805C();
    v24 = v26;
    v25 = sub_274159A50;
  }

  return MEMORY[0x2822009F8](v25, v22, v24);
}

uint64_t sub_274159710()
{
  v1 = *(v0 + 912);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2741597A8, 0, 0);
}

uint64_t sub_2741597A8()
{
  v1 = *(v0 + 904);
  *(v0 + 920) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159834, v3, v2);
}

uint64_t sub_274159834()
{
  v1 = *(v0 + 920);

  *(v0 + 928) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2741598B0, 0, 0);
}

uint64_t sub_2741598B0()
{
  v1 = *(v0 + 904);
  *(v0 + 936) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415993C, v3, v2);
}

uint64_t sub_27415993C()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 928);

  sub_2741BB034(1);

  return MEMORY[0x2822009F8](sub_2741599B8, 0, 0);
}

uint64_t sub_2741599B8()
{
  *(v0 + 944) = sub_2741C80AC();
  *(v0 + 952) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159A50, v2, v1);
}

uint64_t sub_274159A50()
{
  v1 = *(v0 + 952);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_274159AE8, 0, 0);
}

uint64_t sub_274159AE8()
{
  v1 = *(v0 + 944);
  *(v0 + 960) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159B74, v3, v2);
}

uint64_t sub_274159B74()
{
  v1 = *(v0 + 960);

  *(v0 + 968) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274159BF0, 0, 0);
}

uint64_t sub_274159BF0()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 880);
  swift_beginAccess();
  sub_2740A6D94(v2 + 16, v0 + 120, &qword_280938340, &qword_2741D1660);
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  *(v0 + 976) = sub_2741C809C();
  v4 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159CC4, v4, v3);
}

uint64_t sub_274159CC4()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);

  sub_2741B9380(v0 + 120, v0 + 224);

  sub_27409D420(v0 + 224, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_274159D74, 0, 0);
}

uint64_t sub_274159D74()
{
  v1 = *(v0 + 944);
  *(v0 + 984) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159E00, v3, v2);
}

uint64_t sub_274159E00()
{
  v1 = *(v0 + 984);

  return MEMORY[0x2822009F8](sub_274159E68, 0, 0);
}

uint64_t sub_274159E68()
{
  v1 = *(v0 + 944);
  *(v0 + 992) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274159EF4, v3, v2);
}

uint64_t sub_274159EF4()
{
  v1 = *(v0 + 992);

  *(v0 + 1000) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274159F70, 0, 0);
}

uint64_t sub_274159F70()
{
  v1 = v0[118];
  v2 = v0[112];
  v3 = v0[111];
  swift_beginAccess();
  sub_2740A6D94(v2, v3, &qword_280938570, &qword_2741D1630);
  v0[126] = sub_2741C809C();
  v5 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415A03C, v5, v4);
}

uint64_t sub_27415A03C()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[111];

  sub_2741B8B0C(v3);

  sub_27409D420(v3, &qword_280938570, &qword_2741D1630);

  v4 = v0[1];

  return v4();
}

void sub_27415A0D4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_2741C6AFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 type];
  if (v13 > 18)
  {
    if (v13 > 27)
    {
      if (v13 == 28)
      {
        v31 = [a1 description];
        v32 = sub_2741C7E7C();
        v34 = v33;

        sub_2740CB218(v32, v34, 0xD00000000000001DLL, 0x80000002741E2340);

        v35 = sub_2741C80DC();
        (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = a2;

        v17 = &unk_2741D4988;
        goto LABEL_24;
      }

      if (v13 == 30)
      {
        v23 = sub_2741C80DC();
        (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = a2;

        v17 = &unk_2741D4968;
        goto LABEL_24;
      }
    }

    else
    {
      if ((v13 - 19) < 2)
      {
        v14 = sub_2741C80DC();
        (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = a1;
        v16 = a1;
        v17 = &unk_2741D4960;
LABEL_24:
        sub_2740CE980(0, 0, v7, v17, v15);

        return;
      }

      if (v13 == 27)
      {
        v24 = sub_2741C80DC();
        (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = a2;

        v17 = &unk_2741D4978;
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

  if (v13 <= 5)
  {
    if (v13 == 1)
    {
      v25 = [a1 description];
      v26 = sub_2741C7E7C();
      v28 = v27;

      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v8, qword_280945DD8);
      (*(v9 + 16))(v12, v29, v8);
      sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v26, v28);

      (*(v9 + 8))(v12, v8);
      v30 = sub_2741C80DC();
      (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = a2;

      v17 = &unk_2741D49A8;
      goto LABEL_24;
    }

    if (v13 == 2)
    {
      v18 = [a1 description];
      v19 = sub_2741C7E7C();
      v21 = v20;

      sub_2740CB218(v19, v21, 0xD000000000000014, 0x80000002741E2360);

      v22 = sub_2741C80DC();
      (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = a2;

      v17 = &unk_2741D4998;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v13 != 6)
  {
    if (v13 == 7)
    {
      sub_27415A844(a1);
      return;
    }

LABEL_25:
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_2741C856C();

    v43 = 0xD000000000000010;
    v44 = 0x80000002741E2320;
    v36 = [a1 description];
    v37 = sub_2741C7E7C();
    v39 = v38;

    MEMORY[0x2743E5FB0](v37, v39);

    v41 = v43;
    v40 = v44;
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v8, qword_280945DD8);
    (*(v9 + 16))(v12, v42, v8);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v41, v40);

    (*(v9 + 8))(v12, v8);
    return;
  }

  sub_274160BCC(a1);
}

uint64_t sub_27415A844(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31[-v5];
  v7 = sub_2741C6AFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [a1 info];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = sub_2741C7D6C();

  v15 = *MEMORY[0x277D02A90];
  v16 = sub_2741C7E7C();
  if (!*(v14 + 16))
  {

    goto LABEL_11;
  }

  v18 = v1;
  v19 = sub_2741251AC(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_27409D308(*(v14 + 56) + 32 * v19, v31);

  sub_2740BA268(0, &qword_28093A6C0, 0x277D02B28);
  if (swift_dynamicCast())
  {
    v22 = v33;
    swift_beginAccess();
    sub_2740A6D94(v18 + 48, v31, &qword_2809395D8, &qword_2741CFF78);
    v23 = v32;
    sub_27409D420(v31, &qword_2809395D8, &qword_2741CFF78);
    if (!v23)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v7, qword_280945DD8);
      (*(v8 + 16))(v11, v24, v7);
      sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000039, 0x80000002741E2560);
      (*(v8 + 8))(v11, v7);
      v25 = sub_2741C80DC();
      (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v18;

      sub_2740CE980(0, 0, v6, &unk_2741D7DF0, v26);
    }

    v27 = sub_2741C80DC();
    (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v22;
    sub_2740CE980(0, 0, v6, &unk_2741D49C8, v28);
  }

LABEL_12:
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v7, qword_280945DD8);
  (*(v8 + 16))(v11, v30, v7);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000025, 0x80000002741E2530);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_27415AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 288) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630) - 8) + 64) + 15;
  *(v4 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415ADB8, 0, 0);
}

uint64_t sub_27415ADB8()
{
  *(v0 + 113) = [*(*(v0 + 288) + 16) powerOn];
  *(v0 + 304) = sub_2741C80AC();
  *(v0 + 312) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415AE68, v2, v1);
}

uint64_t sub_27415AE68()
{
  v1 = *(v0 + 312);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415AF00, 0, 0);
}

uint64_t sub_27415AF00()
{
  v1 = *(v0 + 304);
  *(v0 + 320) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415AF8C, v3, v2);
}

uint64_t sub_27415AF8C()
{
  v1 = *(v0 + 320);

  *(v0 + 328) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415B008, 0, 0);
}

uint64_t sub_27415B008()
{
  v1 = *(v0 + 304);
  *(v0 + 336) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B094, v3, v2);
}

uint64_t sub_27415B094()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 113);

  sub_2741BB460(v3);

  return MEMORY[0x2822009F8](sub_27415B110, 0, 0);
}

uint64_t sub_27415B110()
{
  v1 = *(v0 + 304);
  *(v0 + 344) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B19C, v3, v2);
}

uint64_t sub_27415B19C()
{
  v1 = *(v0 + 344);

  return MEMORY[0x2822009F8](sub_27415B204, 0, 0);
}

uint64_t sub_27415B204()
{
  v1 = *(v0 + 304);
  *(v0 + 352) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B290, v3, v2);
}

uint64_t sub_27415B290()
{
  v1 = *(v0 + 352);

  *(v0 + 360) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415B30C, 0, 0);
}

uint64_t sub_27415B30C()
{
  v1 = *(v0 + 288);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  swift_beginAccess();
  sub_2740A6D94(v1 + 48, v0 + 224, &qword_2809395D8, &qword_2741CFF78);
  if (*(v0 + 248))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 216) = 0;
      *(v0 + 200) = 0u;
      *(v0 + 184) = 0u;
      *(v0 + 168) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
    }
  }

  else
  {
    sub_27409D420(v0 + 224, &qword_2809395D8, &qword_2741CFF78);
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0;
  }

  v2 = *(v0 + 304);
  *(v0 + 368) = sub_2741C809C();
  v4 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B478, v4, v3);
}

uint64_t sub_27415B478()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  sub_2741B9380(v0 + 16, v0 + 120);

  sub_27409D420(v0 + 16, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);

  return MEMORY[0x2822009F8](sub_27415B524, 0, 0);
}

uint64_t sub_27415B524()
{
  v1 = *(v0 + 304);
  *(v0 + 376) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B5B0, v3, v2);
}

uint64_t sub_27415B5B0()
{
  v1 = *(v0 + 376);

  return MEMORY[0x2822009F8](sub_27415B618, 0, 0);
}

uint64_t sub_27415B618()
{
  v1 = *(v0 + 304);
  *(v0 + 384) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B6A4, v3, v2);
}

uint64_t sub_27415B6A4()
{
  v1 = *(v0 + 384);

  *(v0 + 392) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415B720, 0, 0);
}

uint64_t sub_27415B720()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = type metadata accessor for KnownNetwork();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v0[50] = sub_2741C809C();
  v5 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415B7EC, v5, v4);
}

uint64_t sub_27415B7EC()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[37];

  sub_2741B8B0C(v3);

  sub_27409D420(v3, &qword_280938570, &qword_2741D1630);

  return MEMORY[0x2822009F8](sub_27415B880, 0, 0);
}

uint64_t sub_27415B880()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 113);
  *(v0 + 408) = sub_2741C809C();
  v4 = sub_2741C805C();
  if (v2)
  {
    v5 = sub_27415BBA0;
  }

  else
  {
    v5 = sub_27415B928;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_27415B928()
{
  v1 = *(v0 + 408);

  return MEMORY[0x2822009F8](sub_27415B990, 0, 0);
}

uint64_t sub_27415B990()
{
  v1 = *(v0 + 304);
  *(v0 + 416) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415BA1C, v3, v2);
}

uint64_t sub_27415BA1C()
{
  v1 = *(v0 + 416);

  *(v0 + 424) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415BA98, 0, 0);
}

uint64_t sub_27415BA98()
{
  v1 = *(v0 + 304);
  *(v0 + 432) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415BB24, v3, v2);
}

uint64_t sub_27415BB24()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[37];

  sub_2741B8FB8(16);

  v4 = v0[1];

  return v4();
}

uint64_t sub_27415BBA0()
{
  v1 = *(v0 + 408);

  return MEMORY[0x2822009F8](sub_27415BC08, 0, 0);
}

uint64_t sub_27415BC08()
{
  v1 = *(v0 + 304);
  *(v0 + 440) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415BC94, v3, v2);
}

uint64_t sub_27415BC94()
{
  v1 = *(v0 + 440);

  *(v0 + 448) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415BD10, 0, 0);
}

uint64_t sub_27415BD10()
{
  v1 = *(v0 + 304);
  *(v0 + 456) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415BD9C, v3, v2);
}

uint64_t sub_27415BD9C()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[37];

  sub_2741B8FB8(2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_27415BE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[77] = a4;
  v5 = sub_2741C6AFC();
  v4[78] = v5;
  v6 = *(v5 - 8);
  v4[79] = v6;
  v7 = *(v6 + 64) + 15;
  v4[80] = swift_task_alloc();
  v8 = type metadata accessor for KnownNetwork();
  v4[81] = v8;
  v9 = *(v8 - 8);
  v4[82] = v9;
  v10 = *(v9 + 64) + 15;
  v4[83] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630) - 8) + 64) + 15;
  v4[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27415BF6C, 0, 0);
}

uint64_t sub_27415BF6C()
{
  *(v0 + 680) = sub_2741C80AC();
  *(v0 + 688) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415C004, v2, v1);
}

uint64_t sub_27415C004()
{
  v1 = *(v0 + 688);

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27415C09C, 0, 0);
}

uint64_t sub_27415C09C()
{
  v1 = *(v0 + 680);
  *(v0 + 696) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415C128, v3, v2);
}

uint64_t sub_27415C128()
{
  v1 = *(v0 + 696);

  *(v0 + 704) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415C1A4, 0, 0);
}

uint64_t sub_27415C1A4()
{
  v1 = *(v0 + 680);
  *(v0 + 712) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415C230, v3, v2);
}

uint64_t sub_27415C230()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  sub_2741BAB64(1, v0 + 408);

  return MEMORY[0x2822009F8](sub_27415C2B0, 0, 0);
}

uint64_t sub_27415C2B0()
{
  if (!*(v0 + 432))
  {
    sub_27409D420(v0 + 408, &qword_280939AF8, &qword_2741D11A0);
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A238, &qword_2741D4780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 400) = 0;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    goto LABEL_8;
  }

  if (!*(v0 + 392))
  {
LABEL_8:
    sub_27409D420(v0 + 368, &qword_28093A228, &unk_2741D4770);
    goto LABEL_9;
  }

  sub_27409D118((v0 + 368), v0 + 328);
  __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
  v1 = sub_2741613D0(&qword_28093A3E0, type metadata accessor for AssociationState);
  v2 = *(v1 + 16);
  v3 = type metadata accessor for AssociationState();
  if ((v2(v3, v1) | 2) == 3)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
LABEL_9:
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 640);
    v5 = *(v0 + 632);
    v6 = *(v0 + 624);
    v7 = __swift_project_value_buffer(v6, qword_280945DD8);
    (*(v5 + 16))(v4, v7, v6);
    sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, 0xD000000000000035, 0x80000002741E2380);
    (*(v5 + 8))(v4, v6);
    v8 = *(v0 + 672);
    v9 = *(v0 + 664);
    v10 = *(v0 + 640);

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 616);
  swift_beginAccess();
  sub_2740A6D94(v13 + 48, v0 + 448, &qword_2809395D8, &qword_2741CFF78);
  if (*(v0 + 472))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 112) = 0;
      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }
  }

  else
  {
    sub_27409D420(v0 + 448, &qword_2809395D8, &qword_2741CFF78);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0;
  }

  v14 = *(v0 + 672);
  v15 = *(v0 + 648);
  v16 = *(v0 + 616);
  v17 = *(*(v0 + 656) + 56);
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0;
  v17(v14, 1, 1, v15);
  v18 = [*(v16 + 16) currentScanResult];
  if (v18)
  {
    v19 = *(v0 + 616);
    v20 = v18;
    sub_27409D85C(v20, v0 + 224);
    *(v0 + 512) = &type metadata for ScannedNetwork;
    *(v0 + 520) = sub_2740F2248();
    v21 = swift_allocObject();
    *(v0 + 488) = v21;
    sub_2740ACAC8(v0 + 224, v21 + 16);
    sub_2740A6D94(v13 + 48, v0 + 528, &qword_2809395D8, &qword_2741CFF78);
    swift_beginAccess();
    sub_2740F22E4(v0 + 488, v13 + 48);
    swift_endAccess();
    sub_274158900(v0 + 528);
    sub_27409D420(v0 + 528, &qword_2809395D8, &qword_2741CFF78);
    sub_27409D420(v0 + 120, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v0 + 488, &qword_2809395D8, &qword_2741CFF78);
    sub_2740ACAC8(v0 + 224, v0 + 120);
    v22 = [v20 matchingKnownNetworkProfile];
    if (v22)
    {
      v23 = *(v0 + 672);
      v24 = *(v0 + 664);
      v25 = *(v0 + 648);
      sub_274117670(v22, v24);

      sub_2740ACB2C(v0 + 224);
      sub_27409D420(v23, &qword_280938570, &qword_2741D1630);
      sub_27409D240(v24, v23);
      v17(v23, 0, 1, v25);
    }

    else
    {
      sub_2740ACB2C(v0 + 224);
    }
  }

  v26 = *(v0 + 680);
  *(v0 + 720) = sub_2741C809C();
  v28 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415C82C, v28, v27);
}

uint64_t sub_27415C82C()
{
  v1 = *(v0 + 720);

  return MEMORY[0x2822009F8](sub_27415C894, 0, 0);
}

uint64_t sub_27415C894()
{
  v1 = *(v0 + 680);
  *(v0 + 728) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415C920, v3, v2);
}

uint64_t sub_27415C920()
{
  v1 = *(v0 + 728);

  *(v0 + 736) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415C99C, 0, 0);
}

uint64_t sub_27415C99C()
{
  v1 = *(v0 + 680);
  *(v0 + 744) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415CA28, v3, v2);
}

uint64_t sub_27415CA28()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  sub_2741B9380(v0 + 120, v0 + 16);

  return MEMORY[0x2822009F8](sub_27415CAA8, 0, 0);
}

uint64_t sub_27415CAA8()
{
  v1 = *(v0 + 680);
  *(v0 + 752) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415CB34, v3, v2);
}

uint64_t sub_27415CB34()
{
  v1 = *(v0 + 752);

  return MEMORY[0x2822009F8](sub_27415CB9C, 0, 0);
}

uint64_t sub_27415CB9C()
{
  v1 = *(v0 + 680);
  *(v0 + 760) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27415CC28, v3, v2);
}

uint64_t sub_27415CC28()
{
  v1 = *(v0 + 760);

  *(v0 + 768) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27415CCA4, 0, 0);
}