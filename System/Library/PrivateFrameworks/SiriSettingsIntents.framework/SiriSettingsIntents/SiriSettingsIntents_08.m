uint64_t sub_268DC4A90(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 352);
  *(v12 + 136) = *v2;
  v13 = (v12 + 136);
  *(v12 + 360) = a1;
  *(v12 + 368) = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268DC5060;
  }

  else
  {
    v9 = *(v12 + 336);
    v10 = *(v12 + 328);
    v11 = *(v12 + 320);

    v5 = *v13;
    v6 = sub_268DC4C44;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268DC4C44()
{
  v14 = MEMORY[0x277D5BD48];
  v1 = v0[45];
  v10 = v0[38];
  v11 = v0[35];
  v13 = v0[28];
  v9 = v0[27];
  v0[17] = v0;
  v0[25] = v1;
  sub_268F99804();

  v12 = swift_task_alloc();
  *(v12 + 16) = v13;
  *(v12 + 24) = v9;
  sub_268F99B94();

  v16 = (v14 + *v14);
  v2 = v14[1];
  v3 = swift_task_alloc();
  v15[47] = v3;
  *v3 = v15[17];
  v3[1] = sub_268DC4DBC;
  v4 = v15[45];
  v5 = v15[39];
  v6 = v15[38];
  v7 = v15[26];

  return v16(v7, v4, v6);
}

uint64_t sub_268DC4DBC()
{
  v7 = *v1;
  v2 = *(*v1 + 376);
  *(v7 + 136) = *v1;
  v8 = (v7 + 136);
  *(v7 + 384) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_268DC5214;
  }

  else
  {
    v3 = *v8;
    v4 = sub_268DC4F24;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268DC4F24()
{
  v8 = v0[45];
  v9 = v0[39];
  v1 = v0[38];
  v2 = v0[37];
  v3 = v0[36];
  v0[17] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v8);

  v4 = v0[38];
  v10 = v0[35];
  v11 = v0[34];
  v12 = v0[31];
  v13 = v0[29];

  v5 = *(v0[17] + 8);
  v6 = v0[17];

  return v5();
}

uint64_t sub_268DC5060()
{
  v1 = v0[43];
  v6 = v0[42];
  v7 = v0[41];
  v8 = v0[40];
  v0[17] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v6);

  v9 = v0[46];
  v10 = v0[39];
  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[34];
  v14 = v0[31];
  v15 = v0[29];
  v2 = v9;
  v0[22] = v9;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v3 = *(v0[17] + 8);
  v4 = v0[17];

  return v3();
}

uint64_t sub_268DC5214()
{
  v8 = v0[45];
  v1 = v0[38];
  v2 = v0[37];
  v3 = v0[36];
  v0[17] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v8);
  v9 = v0[48];
  v10 = v0[39];
  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[34];
  v14 = v0[31];
  v15 = v0[29];
  v4 = v9;
  v0[22] = v9;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v5 = *(v0[17] + 8);
  v6 = v0[17];

  return v5();
}

uint64_t sub_268DC53BC(void *a1, void *a2)
{
  v67[1] = 0;
  v63 = 0;
  v58 = 0;
  v56 = 0;
  v67[3] = a1;
  v67[2] = a2;
  sub_268D34954();
  v67[0] = sub_268F9B734();
  v50 = [a2 errorDetail];
  if (v50)
  {
    v43 = sub_268F9AE24();
    v44 = v2;
    MEMORY[0x277D82BD8](v50);
    v45 = v43;
    v46 = v44;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v42 = sub_268E07564(v45, v46, 0, 0);

  if (v42)
  {
    v20 = [a1 settingMetadata];
    if (v20)
    {
      v17 = [v20 settingId];
      v18._countAndFlagsBits = sub_268F9AE24();
      v18._object = v7;
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v17);
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v64 = v19;
    if (v19._object)
    {
      v65 = v64;
    }

    else
    {
      v65._countAndFlagsBits = sub_268F9AEF4();
      v65._object = v8;
    }

    BinarySettingIdentifier.init(rawValue:)(v65);
    v16 = v66;
    if (v66 != 65)
    {
      v63 = v66;
      v14 = v48[12];

      v62 = v16;
      v15 = sub_268E57758(&v62);

      if (v15)
      {
        v13 = v48[12];

        v61 = v16;
        v60 = [a2 updatedValue];
        v59 = 1;
        type metadata accessor for INBinarySettingValue();
        sub_268CD925C();
        sub_268F9B754();
        sub_268D34FD4();
        v12 = sub_268F9B314();
        v11 = sub_268E57258(&v61, v12);
        MEMORY[0x277D82BD8](v12);

        if (v11)
        {
          v58 = v11;
          MEMORY[0x277D82BE0](v11);
          v57 = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
          sub_268F9B064();
          MEMORY[0x277D82BD8](v11);
        }
      }
    }
  }

  else
  {
    v39 = v48[13];

    v40 = v48[20];

    v41 = [a1 settingMetadata];
    if (v41)
    {
      v34 = [v41 settingId];
      v35 = sub_268F9AE24();
      v36 = v3;
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v34);
      v37 = v35;
      v38 = v36;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    v33 = sub_268F36E44(v40, v37, v38);

    if (v33)
    {
      v56 = v33;
      v32 = sub_268F9B284();
      v4 = sub_268DC7D28();
      oslog = *v4;
      MEMORY[0x277D82BE0](*v4);
      MEMORY[0x277D82BE0](v33);
      v25 = swift_allocObject();
      *(v25 + 16) = v33;
      v27 = swift_allocObject();
      *(v27 + 16) = 32;
      v28 = swift_allocObject();
      *(v28 + 16) = 8;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_268D350F4;
      *(v26 + 24) = v25;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_268CD7608;
      *(v29 + 24) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      sub_268F9B734();
      v30 = v5;

      *v30 = sub_268CD7600;
      v30[1] = v27;

      v30[2] = sub_268CD7600;
      v30[3] = v28;

      v30[4] = sub_268CD7614;
      v30[5] = v29;
      sub_268CD0F7C();

      if (os_log_type_enabled(oslog, v32))
      {
        buf = sub_268F9B3A4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v23 = sub_268CD5448(0);
        v24 = sub_268CD5448(1);
        v55[0] = buf;
        v54 = v23;
        v53 = v24;
        sub_268CD549C(2, v55);
        sub_268CD549C(1, v55);
        v51 = sub_268CD7600;
        v52 = v27;
        sub_268CD54B0(&v51, v55, &v54, &v53);
        v51 = sub_268CD7600;
        v52 = v28;
        sub_268CD54B0(&v51, v55, &v54, &v53);
        v51 = sub_268CD7614;
        v52 = v29;
        sub_268CD54B0(&v51, v55, &v54, &v53);
        _os_log_impl(&dword_268CBE000, oslog, v32, "HandleBinarySettingFlowStrategy: rendered punchout button: %s", buf, 0xCu);
        sub_268CD54FC(v23);
        sub_268CD54FC(v24);
        sub_268F9B384();
      }

      else
      {
      }

      MEMORY[0x277D82BD8](oslog);
      MEMORY[0x277D82BE0](v33);
      v55[1] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
      sub_268F9B064();
      MEMORY[0x277D82BD8](v33);
    }

    else
    {
      sub_268F9B284();
      v6 = sub_268DC7D28();
      v21 = *v6;
      MEMORY[0x277D82BE0](*v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v21);
    }
  }

  v10 = v67[0];

  sub_268CD7930(v67);
  return v10;
}

uint64_t sub_268DC5E7C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v117 = a1;
  v119 = a2;
  v99 = sub_268DA6D94;
  v100 = sub_268CD7608;
  v101 = sub_268CD7600;
  v102 = sub_268CD7600;
  v103 = sub_268CD7614;
  v104 = sub_268DA6D94;
  v105 = sub_268CD7608;
  v106 = sub_268CD7600;
  v107 = sub_268CD7600;
  v108 = sub_268CD7614;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v137 = 0;
  v138 = 0;
  v109 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCA40, &qword_268F9FFF8);
  v110 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v111 = v40 - v110;
  v112 = sub_268F999A4();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v117);
  v116 = v40 - v115;
  v149 = v40 - v115;
  v148 = v5;
  v147 = v6;
  v146 = v3;
  v120 = *sub_268EAE4B0();

  MEMORY[0x277D82BE0](v119);
  sub_268EAE738(v117, v119, v116);
  v7 = v118;
  MEMORY[0x277D82BD8](v119);

  v123 = v143;
  sub_268CDE730(v7 + 120, v143);
  v122 = v144;
  v121 = v145;
  __swift_project_boxed_opaque_existential_1(v123, v144);
  v124 = (*(v121 + 24))(v122);
  __swift_destroy_boxed_opaque_existential_0(v123);
  if (v124)
  {
    v97 = [v117 settingMetadata];
    if (v97)
    {
      v96 = v97;
      v90 = v97;
      v91 = [v97 settingId];
      v92 = sub_268F9AE24();
      v93 = v8;
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v91);
      v94 = v92;
      v95 = v93;
    }

    else
    {
      v94 = 0;
      v95 = 0;
    }

    v139 = v94;
    v140 = v95;
    if (v95)
    {
      v141 = v139;
      v142 = v140;
    }

    else
    {
      v141 = sub_268F9AEF4();
      v142 = v9;
      if (v140)
      {
        sub_268CD9D30(&v139);
      }
    }

    v84 = v141;
    v85 = v142;
    v137 = v141;
    v138 = v142;
    v83 = *sub_268DC701C();

    v88 = &v136;
    v136 = v83;
    v87 = v135;
    v135[0] = v84;
    v135[1] = v85;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268DA6BFC();
    v89 = sub_268F9AFC4();
    sub_268CD7930(v88);
    if (v89)
    {
      v82 = sub_268F9B284();
      v81 = *sub_268DC7D28();
      MEMORY[0x277D82BE0](v81);

      v71 = 32;
      v72 = 7;
      v10 = swift_allocObject();
      v11 = v85;
      v73 = v10;
      *(v10 + 16) = v84;
      *(v10 + 24) = v11;
      v70 = 17;
      v75 = swift_allocObject();
      *(v75 + 16) = 32;
      v76 = swift_allocObject();
      *(v76 + 16) = 8;
      v12 = swift_allocObject();
      v13 = v73;
      v74 = v12;
      *(v12 + 16) = v104;
      *(v12 + 24) = v13;
      v14 = swift_allocObject();
      v15 = v74;
      v78 = v14;
      *(v14 + 16) = v105;
      *(v14 + 24) = v15;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v77 = sub_268F9B734();
      v79 = v16;

      v17 = v75;
      v18 = v79;
      *v79 = v106;
      v18[1] = v17;

      v19 = v76;
      v20 = v79;
      v79[2] = v107;
      v20[3] = v19;

      v21 = v78;
      v22 = v79;
      v79[4] = v108;
      v22[5] = v21;
      sub_268CD0F7C();

      if (os_log_type_enabled(v81, v82))
      {
        v23 = v109;
        v63 = sub_268F9B3A4();
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v64 = sub_268CD5448(0);
        v65 = sub_268CD5448(1);
        v66 = &v129;
        v129 = v63;
        v67 = &v128;
        v128 = v64;
        v68 = &v127;
        v127 = v65;
        sub_268CD549C(2, &v129);
        sub_268CD549C(1, v66);
        v125 = v106;
        v126 = v75;
        sub_268CD54B0(&v125, v66, v67, v68);
        v69 = v23;
        if (v23)
        {

          __break(1u);
        }

        else
        {
          v125 = v107;
          v126 = v76;
          sub_268CD54B0(&v125, &v129, &v128, &v127);
          v61 = 0;
          v125 = v108;
          v126 = v78;
          sub_268CD54B0(&v125, &v129, &v128, &v127);
          _os_log_impl(&dword_268CBE000, v81, v82, "Not creating Undo DirectInvocation for Setting: %s.", v63, 0xCu);
          sub_268CD54FC(v64);
          sub_268CD54FC(v65);
          sub_268F9B384();
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v81);
    }

    else
    {
      v60 = sub_268F9B284();
      v59 = *sub_268DC7D28();
      MEMORY[0x277D82BE0](v59);

      v49 = 32;
      v50 = 7;
      v24 = swift_allocObject();
      v25 = v85;
      v51 = v24;
      *(v24 + 16) = v84;
      *(v24 + 24) = v25;
      v48 = 17;
      v53 = swift_allocObject();
      *(v53 + 16) = 32;
      v54 = swift_allocObject();
      *(v54 + 16) = 8;
      v26 = swift_allocObject();
      v27 = v51;
      v52 = v26;
      *(v26 + 16) = v99;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v52;
      v56 = v28;
      *(v28 + 16) = v100;
      *(v28 + 24) = v29;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v55 = sub_268F9B734();
      v57 = v30;

      v31 = v53;
      v32 = v57;
      *v57 = v101;
      v32[1] = v31;

      v33 = v54;
      v34 = v57;
      v57[2] = v102;
      v34[3] = v33;

      v35 = v56;
      v36 = v57;
      v57[4] = v103;
      v36[5] = v35;
      sub_268CD0F7C();

      if (os_log_type_enabled(v59, v60))
      {
        v37 = v109;
        v41 = sub_268F9B3A4();
        v40[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v42 = sub_268CD5448(0);
        v43 = sub_268CD5448(1);
        v44 = &v134;
        v134 = v41;
        v45 = &v133;
        v133 = v42;
        v46 = &v132;
        v132 = v43;
        sub_268CD549C(2, &v134);
        sub_268CD549C(1, v44);
        v130 = v101;
        v131 = v53;
        sub_268CD54B0(&v130, v44, v45, v46);
        v47 = v37;
        if (v37)
        {

          __break(1u);
        }

        else
        {
          v130 = v102;
          v131 = v54;
          sub_268CD54B0(&v130, &v134, &v133, &v132);
          v40[1] = 0;
          v130 = v103;
          v131 = v56;
          sub_268CD54B0(&v130, &v134, &v133, &v132);
          _os_log_impl(&dword_268CBE000, v59, v60, "Making Undo DirectInvocation for Setting: %s", v41, 0xCu);
          sub_268CD54FC(v42);
          sub_268CD54FC(v43);
          sub_268F9B384();
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v59);
      v40[0] = 0;
      type metadata accessor for UndoBinarySetting();
      [v119 oldValue];
      sub_268D2C8A0(v84, v85);
      v38 = sub_268F99C24();
      (*(*(v38 - 8) + 56))(v111, 0, 1);
      sub_268F99934();
    }
  }

  (*(v113 + 16))(v98, v116, v112);
  (*(v113 + 56))(v98, 0, 1, v112);
  return (*(v113 + 8))(v116, v112);
}

uint64_t *sub_268DC701C()
{
  if (qword_2802DB378 != -1)
  {
    swift_once();
  }

  return &qword_2802DCA38;
}

uint64_t sub_268DC707C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  v4 = v0[20];

  return v6;
}

uint64_t sub_268DC7124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for HandleBinarySettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C68](a1, a2, v7, a4);
}

uint64_t sub_268DC71F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3D0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for HandleBinarySettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C70](a1, a2, v7, a4);
}

uint64_t sub_268DC72CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for HandleBinarySettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C48](a1, a2, v7, a4);
}

uint64_t sub_268DC73A0(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268DC0D90(a1, a2);
}

uint64_t sub_268DC7460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for HandleBinarySettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C60](a1, a2, v7, a4);
}

uint64_t sub_268DC7534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for HandleBinarySettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C58](a1, a2, v7, a4);
}

uint64_t sub_268DC7608(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268DC3E60(a1, a2);
}

uint64_t sub_268DC76E0(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for HandleBinarySettingIntentStrategy();
  v2 = sub_268DC7990();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

uint64_t sub_268DC7788()
{
  v16 = sub_268F9B734();
  v15 = v0;
  *v0 = BinarySettingIdentifier.rawValue.getter();
  v15[1] = v1;
  v15[2] = BinarySettingIdentifier.rawValue.getter();
  v15[3] = v2;
  v15[4] = BinarySettingIdentifier.rawValue.getter();
  v15[5] = v3;
  v15[6] = BinarySettingIdentifier.rawValue.getter();
  v15[7] = v4;
  v15[8] = BinarySettingIdentifier.rawValue.getter();
  v15[9] = v5;
  v15[10] = BinarySettingIdentifier.rawValue.getter();
  v15[11] = v6;
  v15[12] = BinarySettingIdentifier.rawValue.getter();
  v15[13] = v7;
  v15[14] = BinarySettingIdentifier.rawValue.getter();
  v15[15] = v8;
  v15[16] = BinarySettingIdentifier.rawValue.getter();
  v15[17] = v9;
  v15[18] = BinarySettingIdentifier.rawValue.getter();
  v15[19] = v10;
  v15[20] = BinarySettingIdentifier.rawValue.getter();
  v15[21] = v11;
  v12 = BinarySettingIdentifier.rawValue.getter();
  result = v16;
  v15[22] = v12;
  v15[23] = v14;
  sub_268CD0F7C();
  qword_2802DCA38 = v16;
  return result;
}

uint64_t sub_268DC7938()
{
  v1 = *sub_268DC701C();

  return v1;
}

unint64_t sub_268DC7990()
{
  v2 = qword_2802DCA48;
  if (!qword_2802DCA48)
  {
    type metadata accessor for HandleBinarySettingIntentStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DC7A24(uint64_t a1)
{
  result = sub_268DC7A50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268DC7A50()
{
  v2 = qword_2802DCA50;
  if (!qword_2802DCA50)
  {
    type metadata accessor for HandleBinarySettingIntentStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCA50);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268DC7AE8()
{
  if (qword_280FE55B8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8230;
}

uint64_t *sub_268DC7B48()
{
  if (qword_2802DB3A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1248;
}

uint64_t *sub_268DC7BA8()
{
  if (qword_280FE4AC0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8188;
}

uint64_t *sub_268DC7C08()
{
  if (qword_280FE55B0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8220;
}

uint64_t *sub_268DC7C68()
{
  if (qword_280FE2BB0 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FD8;
}

uint64_t *sub_268DC7CC8()
{
  if (qword_280FE28E0 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FA8;
}

uint64_t *sub_268DC7D28()
{
  if (qword_2802DB410 != -1)
  {
    swift_once();
  }

  return &qword_2802F12A8;
}

uint64_t *sub_268DC7D88()
{
  if (qword_2802DB478 != -1)
  {
    swift_once();
  }

  return &qword_2802F12F8;
}

uint64_t *sub_268DC7DE8()
{
  if (qword_2802DB398 != -1)
  {
    swift_once();
  }

  return &qword_2802F1240;
}

uint64_t *sub_268DC7E48()
{
  if (qword_2802DB400 != -1)
  {
    swift_once();
  }

  return &qword_2802F1298;
}

uint64_t *sub_268DC7EA8()
{
  if (qword_280FE57B8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8250;
}

uint64_t *sub_268DC7F08()
{
  if (qword_2802DB380 != -1)
  {
    swift_once();
  }

  return &qword_2802F1228;
}

uint64_t *sub_268DC7F68()
{
  if (qword_2802DB3C8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1268;
}

uint64_t *sub_268DC7FC8()
{
  if (qword_280FE5AC8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8298;
}

uint64_t sub_268DC8028()
{
  result = sub_268F9AEF4();
  qword_280FE8220 = result;
  qword_280FE8228 = v1;
  return result;
}

uint64_t sub_268DC806C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE8250 = result;
  return result;
}

uint64_t sub_268DC80EC()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1228 = result;
  return result;
}

uint64_t sub_268DC816C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1230 = result;
  return result;
}

uint64_t *sub_268DC81EC()
{
  if (qword_2802DB388 != -1)
  {
    swift_once();
  }

  return &qword_2802F1230;
}

uint64_t sub_268DC824C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1238 = result;
  return result;
}

uint64_t *sub_268DC82CC()
{
  if (qword_2802DB390 != -1)
  {
    swift_once();
  }

  return &qword_2802F1238;
}

uint64_t sub_268DC832C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1240 = result;
  return result;
}

uint64_t sub_268DC83AC()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE8398 = result;
  return result;
}

uint64_t *sub_268DC842C()
{
  if (qword_280FE6690 != -1)
  {
    swift_once();
  }

  return &qword_280FE8398;
}

uint64_t sub_268DC848C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1248 = result;
  return result;
}

uint64_t sub_268DC850C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE7FA0 = result;
  return result;
}

uint64_t *sub_268DC858C()
{
  if (qword_280FE28D0 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FA0;
}

uint64_t sub_268DC85EC()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE8050 = result;
  return result;
}

uint64_t *sub_268DC866C()
{
  if (qword_280FE32B8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8050;
}

uint64_t sub_268DC86CC()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE8188 = result;
  return result;
}

uint64_t sub_268DC874C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE8230 = result;
  return result;
}

uint64_t sub_268DC87CC()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1250 = result;
  return result;
}

uint64_t *sub_268DC884C()
{
  if (qword_2802DB3B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1250;
}

uint64_t sub_268DC88AC()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1258 = result;
  return result;
}

uint64_t *sub_268DC892C()
{
  if (qword_2802DB3B8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1258;
}

uint64_t sub_268DC898C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1260 = result;
  return result;
}

uint64_t *sub_268DC8A0C()
{
  if (qword_2802DB3C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1260;
}

uint64_t sub_268DC8A6C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1268 = result;
  return result;
}

uint64_t sub_268DC8AEC()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1270 = result;
  return result;
}

uint64_t *sub_268DC8B6C()
{
  if (qword_2802DB3D0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1270;
}

uint64_t sub_268DC8BCC()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE8108 = result;
  return result;
}

uint64_t *sub_268DC8C4C()
{
  if (qword_280FE3E58 != -1)
  {
    swift_once();
  }

  return &qword_280FE8108;
}

uint64_t sub_268DC8CAC()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1278 = result;
  return result;
}

uint64_t *sub_268DC8D2C()
{
  if (qword_2802DB3E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1278;
}

uint64_t sub_268DC8D8C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1280 = result;
  return result;
}

uint64_t *sub_268DC8E0C()
{
  if (qword_2802DB3E8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1280;
}

uint64_t sub_268DC8E6C()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1288 = result;
  return result;
}

uint64_t *sub_268DC8EFC()
{
  if (qword_2802DB3F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1288;
}

uint64_t sub_268DC8F5C()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1290 = result;
  return result;
}

uint64_t *sub_268DC8FEC()
{
  if (qword_2802DB3F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1290;
}

uint64_t sub_268DC904C()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1298 = result;
  return result;
}

uint64_t sub_268DC90DC()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12A0 = result;
  return result;
}

uint64_t *sub_268DC916C()
{
  if (qword_2802DB408 != -1)
  {
    swift_once();
  }

  return &qword_2802F12A0;
}

uint64_t sub_268DC91CC()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12A8 = result;
  return result;
}

uint64_t sub_268DC925C()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12B0 = result;
  return result;
}

uint64_t *sub_268DC92EC()
{
  if (qword_2802DB418 != -1)
  {
    swift_once();
  }

  return &qword_2802F12B0;
}

uint64_t sub_268DC934C()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12B8 = result;
  return result;
}

uint64_t *sub_268DC93DC()
{
  if (qword_2802DB420 != -1)
  {
    swift_once();
  }

  return &qword_2802F12B8;
}

uint64_t sub_268DC943C()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12C0 = result;
  return result;
}

uint64_t *sub_268DC94CC()
{
  if (qword_2802DB428 != -1)
  {
    swift_once();
  }

  return &qword_2802F12C0;
}

uint64_t sub_268DC952C()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE7FA8 = result;
  return result;
}

uint64_t sub_268DC95BC()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12C8 = result;
  return result;
}

uint64_t *sub_268DC964C()
{
  if (qword_2802DB438 != -1)
  {
    swift_once();
  }

  return &qword_2802F12C8;
}

uint64_t sub_268DC96AC()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE7FD8 = result;
  return result;
}

uint64_t sub_268DC973C()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12D0 = result;
  return result;
}

uint64_t *sub_268DC97D0()
{
  if (qword_2802DB448 != -1)
  {
    swift_once();
  }

  return &qword_2802F12D0;
}

uint64_t sub_268DC9830()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12D8 = result;
  return result;
}

uint64_t *sub_268DC98C0()
{
  if (qword_2802DB450 != -1)
  {
    swift_once();
  }

  return &qword_2802F12D8;
}

uint64_t sub_268DC9920()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12E0 = result;
  return result;
}

uint64_t *sub_268DC99B0()
{
  if (qword_2802DB458 != -1)
  {
    swift_once();
  }

  return &qword_2802F12E0;
}

uint64_t sub_268DC9A10()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12E8 = result;
  return result;
}

uint64_t *sub_268DC9AA0()
{
  if (qword_2802DB460 != -1)
  {
    swift_once();
  }

  return &qword_2802F12E8;
}

uint64_t sub_268DC9B00()
{
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_280FE8298 = result;
  return result;
}

uint64_t sub_268DC9B90()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12F0 = result;
  return result;
}

uint64_t *sub_268DC9C10()
{
  if (qword_2802DB470 != -1)
  {
    swift_once();
  }

  return &qword_2802F12F0;
}

uint64_t sub_268DC9C70()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F12F8 = result;
  return result;
}

uint64_t sub_268DC9CF0()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1300 = result;
  return result;
}

uint64_t *sub_268DC9D70()
{
  if (qword_2802DB480 != -1)
  {
    swift_once();
  }

  return &qword_2802F1300;
}

uint64_t sub_268DC9DD0()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1308 = result;
  return result;
}

uint64_t *sub_268DC9E50()
{
  if (qword_2802DB488 != -1)
  {
    swift_once();
  }

  return &qword_2802F1308;
}

uint64_t sub_268DC9EB0()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1310 = result;
  return result;
}

uint64_t *sub_268DC9F30()
{
  if (qword_2802DB490 != -1)
  {
    swift_once();
  }

  return &qword_2802F1310;
}

uint64_t sub_268DC9F90()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1318 = result;
  return result;
}

uint64_t *sub_268DCA010()
{
  if (qword_2802DB498 != -1)
  {
    swift_once();
  }

  return &qword_2802F1318;
}

uint64_t sub_268DCA070()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802F1320 = result;
  return result;
}

uint64_t *sub_268DCA0F0()
{
  if (qword_2802DB4A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1320;
}

uint64_t sub_268DCA168()
{
  type metadata accessor for SetSiriVolumeHandler();
  v2 = sub_268CDC590();
  v0 = sub_268DCA1E8();
  result = sub_268DCA218(v2, 1, v0);
  qword_2802F1328 = result;
  return result;
}

uint64_t sub_268DCA1E8()
{
  v1 = *sub_268E8F370();

  return v1;
}

uint64_t *sub_268DCA278()
{
  if (qword_2802DB4A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1328;
}

uint64_t sub_268DCA2D8()
{
  v1 = *sub_268DCA278();

  return v1;
}

uint64_t sub_268DCA41C()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_268DCA448(uint64_t a1, char a2, uint64_t a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  *(v3 + 32) = a3;

  return v8;
}

void sub_268DCA4DC(void *a1, void (*a2)(void), uint64_t a3)
{
  if (sub_268F70A08(a1))
  {

    v24 = sub_268F70C6C();
    a2();
    MEMORY[0x277D82BD8](v24);

    sub_268F9B284();
    v3 = sub_268DC7AE8();
    v25 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v25);
  }

  else
  {
    sub_268F9B284();
    v4 = sub_268DC7AE8();
    v20 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v19 = v5;
    MEMORY[0x277D82BE0](a1);
    sub_268D588E0();
    sub_268DCA900();
    v17 = sub_268F9AE74();
    v18 = v6;
    v19[3] = MEMORY[0x277D837D0];
    v19[4] = sub_268CDD224();
    *v19 = v17;
    v19[1] = v18;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v20);
    v21 = *(v29 + 16);

    sub_268D3BC60();

    sub_268F9B124();
    v22 = v7;
    v23 = [a1 numericValue];
    if (v23)
    {
      v14 = [v23 unit];
      MEMORY[0x277D82BD8](v23);
      v15 = v14;
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 1;
    }

    if (v16)
    {
      v13 = 0;
    }

    else
    {
      v13 = v15;
    }

    v8 = sub_268DBF464();
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v8 + 16);
    v12 = *(v29 + 24);

    sub_268F70D1C(a1, v13, v9, v10, v11, v12 & 1, a2, a3, v22, 0.06, 1.0, 0.1, sub_268DCA9F0, v29);
  }
}

unint64_t sub_268DCA900()
{
  v2 = qword_2802DE910;
  if (!qword_2802DE910)
  {
    sub_268D588E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE910);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DCA980(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);

  [a1 floatValue];
  sub_268D3C540(v2);
}

uint64_t sub_268DCAA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v6 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v6);
  v12 = *(v3 + 16);

  MEMORY[0x277D82BE0](a1);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v9;
  v11[5] = a1;
  sub_268D46844(sub_268DCC0E0, v11);
}

void sub_268DCABA4(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v181 = a5;
  v182 = a4;
  v183 = a3;
  v184 = a2;
  v187 = a1;
  v185 = 0;
  v202 = 0;
  v201 = 0.0;
  v200 = 0.0;
  v199 = 0.0;
  v198 = 0;
  v186 = 0;
  v207 = a1;
  v205 = a2;
  v206 = a3;
  v204 = a4;
  v203 = a5;
  v5 = a1;
  if (v187)
  {
    v180 = v187;
    v158 = v187;
    v202 = v187;
    sub_268F9B0F4();
    v162 = v6;
    v159 = v6;
    v201 = v6;
    v178 = sub_268F9B284();
    v160 = v178;
    v179 = *sub_268DC7AE8();
    v161 = v179;
    v7 = v179;
    v167 = 7;
    v168 = swift_allocObject();
    *(v168 + 16) = v162;
    v163 = 17;
    v172 = swift_allocObject();
    v164 = v172;
    *(v172 + 16) = 0;
    v173 = swift_allocObject();
    v165 = v173;
    *(v173 + 16) = 8;
    v166 = 32;
    v8 = swift_allocObject();
    v9 = v168;
    v169 = v8;
    *(v8 + 16) = sub_268DD1060;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v169;
    v176 = v10;
    v170 = v10;
    *(v10 + 16) = sub_268DD25B0;
    *(v10 + 24) = v11;
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v171 = v177;
    v174 = sub_268F9B734();
    v175 = v12;

    v13 = v172;
    v14 = v175;
    *v175 = sub_268CD7600;
    v14[1] = v13;

    v15 = v173;
    v16 = v175;
    v175[2] = sub_268CD7600;
    v16[3] = v15;

    v17 = v175;
    v18 = v176;
    v175[4] = sub_268DD25BC;
    v17[5] = v18;
    sub_268CD0F7C();

    if (os_log_type_enabled(v179, v178))
    {
      v152 = sub_268F9B3A4();
      v148 = v152;
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v150 = 0;
      v153 = sub_268CD5448(0);
      v151 = v153;
      v154 = sub_268CD5448(0);
      v192 = v152;
      v191 = v153;
      v190 = v154;
      v155 = &v192;
      sub_268CD549C(0, &v192);
      sub_268CD549C(1, &v192);
      v188 = sub_268CD7600;
      v189 = v164;
      sub_268CD54B0(&v188, &v192, &v191, &v190);
      v156 = v186;
      v157 = v186;
      if (v186)
      {
        v146 = 0;

        __break(1u);
      }

      else
      {
        v188 = sub_268CD7600;
        v189 = v165;
        sub_268CD54B0(&v188, &v192, &v191, &v190);
        v144 = 0;
        v145 = 0;
        v188 = sub_268DD25BC;
        v189 = v170;
        sub_268CD54B0(&v188, &v192, &v191, &v190);
        v142 = 0;
        v143 = 0;
        _os_log_impl(&dword_268CBE000, v161, v160, "Sidekick Siri volume before adjustment: %f.", v148, 0xCu);
        v141 = 0;
        sub_268CD54FC(v151);
        sub_268CD54FC(v154);
        sub_268F9B384();

        v147 = 0;
      }
    }

    else
    {

      v147 = v186;
    }

    v108 = v147;

    v113 = sub_268DD247C(1);
    v115 = v19;
    v109 = v113;
    v110 = v19;
    v200 = v113;
    v199 = v19;
    v139 = sub_268F9B284();
    v111 = v139;
    v140 = *sub_268DC7AE8();
    v112 = v140;
    v20 = v140;
    v114 = 24;
    v127 = 7;
    v118 = swift_allocObject();
    *(v118 + 16) = v113;
    v128 = swift_allocObject();
    *(v128 + 16) = v115;
    v122 = 17;
    v131 = swift_allocObject();
    v116 = v131;
    v121 = 0;
    *(v131 + 16) = 0;
    v132 = swift_allocObject();
    v117 = v132;
    v124 = 8;
    *(v132 + 16) = 8;
    v126 = 32;
    v21 = swift_allocObject();
    v22 = v118;
    v119 = v21;
    *(v21 + 16) = sub_268DD1060;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v119;
    v133 = v23;
    v120 = v23;
    *(v23 + 16) = sub_268DD25B0;
    *(v23 + 24) = v24;
    v134 = swift_allocObject();
    v123 = v134;
    *(v134 + 16) = v121;
    v135 = swift_allocObject();
    v125 = v135;
    *(v135 + 16) = v124;
    v25 = swift_allocObject();
    v26 = v128;
    v129 = v25;
    *(v25 + 16) = sub_268DD1060;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v129;
    v138 = v27;
    v130 = v27;
    *(v27 + 16) = sub_268DD25B0;
    *(v27 + 24) = v28;
    v136 = sub_268F9B734();
    v137 = v29;

    v30 = v131;
    v31 = v137;
    *v137 = sub_268CD7600;
    v31[1] = v30;

    v32 = v132;
    v33 = v137;
    v137[2] = sub_268CD7600;
    v33[3] = v32;

    v34 = v133;
    v35 = v137;
    v137[4] = sub_268DD25BC;
    v35[5] = v34;

    v36 = v134;
    v37 = v137;
    v137[6] = sub_268CD7600;
    v37[7] = v36;

    v38 = v135;
    v39 = v137;
    v137[8] = sub_268CD7600;
    v39[9] = v38;

    v40 = v137;
    v41 = v138;
    v137[10] = sub_268DD25BC;
    v40[11] = v41;
    sub_268CD0F7C();

    if (os_log_type_enabled(v140, v139))
    {
      v102 = sub_268F9B3A4();
      v98 = v102;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v100 = 0;
      v103 = sub_268CD5448(0);
      v101 = v103;
      v104 = sub_268CD5448(0);
      v197 = v102;
      v196 = v103;
      v195 = v104;
      v105 = &v197;
      sub_268CD549C(0, &v197);
      sub_268CD549C(2, &v197);
      v193 = sub_268CD7600;
      v194 = v116;
      sub_268CD54B0(&v193, &v197, &v196, &v195);
      v106 = v108;
      v107 = v108;
      if (v108)
      {
        v96 = 0;

        __break(1u);
      }

      else
      {
        v193 = sub_268CD7600;
        v194 = v117;
        sub_268CD54B0(&v193, &v197, &v196, &v195);
        v94 = 0;
        v95 = 0;
        v193 = sub_268DD25BC;
        v194 = v120;
        sub_268CD54B0(&v193, &v197, &v196, &v195);
        v92 = 0;
        v93 = 0;
        v193 = sub_268CD7600;
        v194 = v123;
        sub_268CD54B0(&v193, &v197, &v196, &v195);
        v90 = 0;
        v91 = 0;
        v193 = sub_268CD7600;
        v194 = v125;
        sub_268CD54B0(&v193, &v197, &v196, &v195);
        v88 = 0;
        v89 = 0;
        v193 = sub_268DD25BC;
        v194 = v130;
        sub_268CD54B0(&v193, &v197, &v196, &v195);
        v86 = 0;
        v87 = 0;
        _os_log_impl(&dword_268CBE000, v112, v111, "Min/Max volumes for sidekick: %f/%f.", v98, 0x16u);
        v85 = 0;
        sub_268CD54FC(v101);
        sub_268CD54FC(v104);
        sub_268F9B384();

        v97 = 0;
      }
    }

    else
    {

      v97 = v108;
    }

    v83 = v97;

    v84 = sub_268F7112C(v181, v159, v109, v110, 0.1);
    if (v42)
    {
      v67 = sub_268F9B294();
      v69 = *sub_268DC7AE8();
      v60 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v68 = sub_268F9B734();
      sub_268F9AC14();

      v70 = sub_268F710D8(0, 8);
      v184();

      v71 = v83;
    }

    else
    {
      v82 = v84;
      v43 = v83;
      v73 = v84;
      v198 = v84;
      v44 = sub_268DBF464();
      v78 = *v44;
      v74 = v44[1];
      v75 = *(v44 + 16);
      v76 = *sub_268DC7AE8();
      v72 = v76;
      v45 = v76;
      v77 = *(v182 + 24);
      v46 = v181;

      v47 = v158;
      v79 = v63;
      v48 = MEMORY[0x28223BE20](v78);
      v80 = v63;
      v62[2] = v49;
      v62[3] = v50;
      v62[4] = v51;
      v62[5] = v52;
      v62[6] = v184;
      v62[7] = v183;
      v62[8] = v53;
      *&v62[9] = v48;
      v62[10] = v54;
      sub_268DB944C(v55, v56, v57, v58, v59, sub_268DD2748, v62, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
      v81 = v43;

      if (v43)
      {
        __break(1u);
      }

      else
      {

        v71 = v81;
      }
    }
  }

  else
  {
    v63[1] = sub_268F9B294();
    v65 = *sub_268DC7AE8();
    v61 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v64 = sub_268F9B734();
    sub_268F9AC14();

    v66 = sub_268F710D8(0, 8);
    v184();

    v71 = v186;
  }
}

uint64_t sub_268DCC0F4(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v63 = 0;
  v74 = a1;
  v73 = a6;
  v72 = a7;
  v71 = a2;
  v69 = a3;
  v70 = a4;
  v68 = a8;
  v67 = a9;
  v66 = a5;
  v53 = [a1 numericValue];
  if (v53)
  {
    v40 = [v53 unit];
    MEMORY[0x277D82BD8](v53);
    v41 = v40;
    v42 = 0;
  }

  else
  {
    v41 = 0;
    v42 = 1;
  }

  v64 = v41;
  v65 = v42 & 1;
  if (v42)
  {
    v39 = 0;
  }

  else
  {
    v39 = v64;
  }

  v63 = v39;
  if (a6 == a7)
  {
    type metadata accessor for SetSiriVolumeHandler();
    sub_268DCD18C(a5, v39, a3, a7, a8, a9);
    return v52;
  }

  else
  {
    v62 = 2;
    v61 = 0;
    v60[4] = [a1 action];
    v60[3] = 2;
    type metadata accessor for INSettingAction();
    sub_268DD25C8();
    v38 = sub_268F9B754();
    MEMORY[0x277D82BE0](a1);
    if (v38)
    {
      v54 = [a1 numericValue];
      v37 = v54 == 0;
      sub_268D35038(&v54);
      v36 = v37;
    }

    else
    {
      v36 = 0;
    }

    MEMORY[0x277D82BD8](a1);
    if (v36)
    {
      v62 = 1;
      v34 = 1;
      v35 = v52;
    }

    else
    {
      v60[2] = [a1 action];
      v60[1] = 3;
      v33 = sub_268F9B754();
      MEMORY[0x277D82BE0](a1);
      if (v33)
      {
        v55 = [a1 numericValue];
        v32 = v55 == 0;
        sub_268D35038(&v55);
        v31 = v32;
      }

      else
      {
        v31 = 0;
      }

      MEMORY[0x277D82BD8](a1);
      if (v31)
      {
        v62 = 0;
        v29 = 0;
        v30 = v52;
      }

      else
      {
        sub_268D34FD4();
        v9 = sub_268E3E3B0();
        v10 = v61;
        v61 = v9;
        MEMORY[0x277D82BD8](v10);
        v28 = sub_268F9B284();
        v11 = sub_268DC7AE8();
        oslog = *v11;
        MEMORY[0x277D82BE0](*v11);
        v21 = swift_allocObject();
        *(v21 + 16) = a6;
        v23 = swift_allocObject();
        *(v23 + 16) = 0;
        v24 = swift_allocObject();
        *(v24 + 16) = 8;
        v22 = swift_allocObject();
        *(v22 + 16) = sub_268DD1060;
        *(v22 + 24) = v21;
        v25 = swift_allocObject();
        *(v25 + 16) = sub_268DD25B0;
        *(v25 + 24) = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
        sub_268F9B734();
        v26 = v12;

        *v26 = sub_268CD7600;
        v26[1] = v23;

        v26[2] = sub_268CD7600;
        v26[3] = v24;

        v26[4] = sub_268DD25BC;
        v26[5] = v25;
        sub_268CD0F7C();

        if (os_log_type_enabled(oslog, v28))
        {
          buf = sub_268F9B3A4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
          v19 = sub_268CD5448(0);
          v20 = sub_268CD5448(0);
          v60[0] = buf;
          v59 = v19;
          v58 = v20;
          sub_268CD549C(0, v60);
          sub_268CD549C(1, v60);
          v56 = sub_268CD7600;
          v57 = v23;
          sub_268CD54B0(&v56, v60, &v59, &v58);
          if (v52)
          {

            __break(1u);
          }

          else
          {
            v56 = sub_268CD7600;
            v57 = v24;
            sub_268CD54B0(&v56, v60, &v59, &v58);
            v56 = sub_268DD25BC;
            v57 = v25;
            sub_268CD54B0(&v56, v60, &v59, &v58);
            _os_log_impl(&dword_268CBE000, oslog, v28, "SetSiriVolumeHandler.handleSidekickSiriVolumeRequest requested value: %f.", buf, 0xCu);
            sub_268CD54FC(v19);
            sub_268CD54FC(v20);
            sub_268F9B384();

            v17 = 0;
          }
        }

        else
        {

          v17 = v52;
        }

        MEMORY[0x277D82BD8](oslog);
        v29 = 2;
        v30 = v17;
      }

      v34 = v29;
      v35 = v30;
    }

    v16 = *(a2 + 16);

    v15 = v61;
    MEMORY[0x277D82BE0](v61);
    MEMORY[0x277D82BE0](v15);

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    *(v14 + 32) = v15;
    *(v14 + 40) = a2;
    *(v14 + 48) = a7;
    *(v14 + 56) = v39;
    *(v14 + 64) = a8;
    *(v14 + 72) = a9;
    sub_268D45284(v15, v34, sub_268DD2790, v14);

    MEMORY[0x277D82BD8](v15);

    sub_268D35038(&v61);
    return v35;
  }
}

uint64_t sub_268DCCAC8(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  if (a1)
  {
    sub_268F9B294();
    v9 = sub_268DC7AE8();
    v26 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v25 = v10;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCA68, qword_268FA02D0);
    v23 = sub_268F9AE64();
    v24 = v12;
    v25[3] = MEMORY[0x277D837D0];
    v25[4] = sub_268CDD224();
    *v25 = v23;
    v25[1] = v24;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v26);

    v27 = sub_268F710D8(0, 8);
    a2();
    MEMORY[0x277D82BD8](v27);
  }

  else
  {
    sub_268F9B284();
    v14 = sub_268DC7AE8();
    v20 = *v14;
    MEMORY[0x277D82BE0](*v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v19 = v15;
    MEMORY[0x277D82BE0](a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC410, &qword_268F9E2B0);
    v17 = sub_268F9AE64();
    v18 = v16;
    v19[3] = MEMORY[0x277D837D0];
    v19[4] = sub_268CDD224();
    *v19 = v17;
    v19[1] = v18;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v20);
    v22 = *(a5 + 16);

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = a7;
    *(v21 + 40) = a6;
    *(v21 + 48) = a8;
    *(v21 + 56) = a9;
    sub_268D46844(sub_268DD27B4, v21);
  }
}

uint64_t sub_268DCCED0(uint64_t a1, void (*a2)(void), double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    sub_268F9B284();
    v7 = sub_268DC7AE8();
    v14 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v13 = v8;
    MEMORY[0x277D82BE0](a1);
    v13[3] = sub_268D34FD4();
    v13[4] = sub_268DD2648();
    *v13 = a1;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v14);
    type metadata accessor for SetSiriVolumeHandler();
    sub_268DCD18C(a1, a7, a2, a3, a4, a5);
    return MEMORY[0x277D82BD8](a1);
  }

  else
  {
    sub_268F9B294();
    v10 = sub_268DC7AE8();
    v11 = *v10;
    MEMORY[0x277D82BE0](*v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v11);

    v12 = sub_268F710D8(0, 8);
    a2();
    MEMORY[0x277D82BD8](v12);
  }
}

uint64_t sub_268DCD18C(uint64_t a1, uint64_t a2, void (*a3)(void), double a4, double a5, double a6)
{

  v13 = sub_268DD0040(a1, a2, a4, a5, a6);
  a3();
  MEMORY[0x277D82BD8](v13);
}

uint64_t sub_268DCD264(uint64_t a1)
{
  v2[23] = v1;
  v2[22] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[16] = 0;
  v2[18] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268DCD2DC, 0);
}

uint64_t sub_268DCD2DC()
{
  v5 = v0[23];
  v0[2] = v0;
  sub_268F9B284();
  v1 = sub_268DC7AE8();
  v4 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v0[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v4);
  v0[25] = *(v5 + 16);

  v2 = swift_task_alloc();
  *(v6 + 208) = v2;
  *v2 = *(v6 + 16);
  v2[1] = sub_268DCD43C;

  return sub_268D46DDC();
}

uint64_t sub_268DCD43C(uint64_t a1)
{
  v7 = *v1;
  v3 = *(*v1 + 208);
  v6 = *(*v1 + 200);
  *(v7 + 16) = *v1;
  *(v7 + 216) = a1;

  v4 = *(v7 + 16);

  return MEMORY[0x2822009F8](sub_268DCD578, 0);
}

uint64_t sub_268DCD578()
{
  v123 = v0;
  v1 = *(v0 + 216);
  *(v0 + 16) = v0;
  if (!v1)
  {
    v30 = *(v107 + 192);
    sub_268F9B294();
    v26 = sub_268DC7AE8();
    v31 = *v26;
    MEMORY[0x277D82BE0](*v26);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v31);
    v27 = sub_268DAB2DC();
    v40 = sub_268F710D8(0, v27);
    goto LABEL_37;
  }

  v97 = *(v107 + 216);
  *(v107 + 40) = v97;
  sub_268F9B0F4();
  v98 = v2;
  *(v107 + 224) = v2;
  *(v107 + 48) = v2;
  v106 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  oslog = *v3;
  MEMORY[0x277D82BE0](*v3);
  v99 = swift_allocObject();
  *(v99 + 16) = v98;
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  v102 = swift_allocObject();
  *(v102 + 16) = 8;
  v100 = swift_allocObject();
  *(v100 + 16) = sub_268DD1060;
  *(v100 + 24) = v99;
  v103 = swift_allocObject();
  *(v103 + 16) = sub_268DD25B0;
  *(v103 + 24) = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  sub_268F9B734();
  v104 = v4;

  *v104 = sub_268CD7600;
  v104[1] = v101;

  v104[2] = sub_268CD7600;
  v104[3] = v102;

  v104[4] = sub_268DD25BC;
  v104[5] = v103;
  sub_268CD0F7C();

  if (os_log_type_enabled(oslog, v106))
  {
    buf = sub_268F9B3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v95 = sub_268CD5448(0);
    v96 = sub_268CD5448(0);
    v118 = buf;
    v119 = v95;
    v120 = v96;
    sub_268CD549C(0, &v118);
    sub_268CD549C(1, &v118);
    v121 = sub_268CD7600;
    v122 = v101;
    sub_268CD54B0(&v121, &v118, &v119, &v120);
    v121 = sub_268CD7600;
    v122 = v102;
    sub_268CD54B0(&v121, &v118, &v119, &v120);
    v121 = sub_268DD25BC;
    v122 = v103;
    sub_268CD54B0(&v121, &v118, &v119, &v120);
    _os_log_impl(&dword_268CBE000, oslog, v106, "Sidekick Siri volume before adjustment: %f.", buf, 0xCu);
    sub_268CD54FC(v95);
    sub_268CD54FC(v96);
    sub_268F9B384();
  }

  else
  {
  }

  v5 = *(v107 + 184);
  MEMORY[0x277D82BD8](oslog);
  v79 = sub_268DD247C(1);
  v80 = v6;
  *(v107 + 232) = v79;
  *(v107 + 240) = v6;
  *(v107 + 56) = v79;
  *(v107 + 64) = v6;
  v93 = sub_268F9B284();
  v7 = sub_268DC7AE8();
  log = *v7;
  MEMORY[0x277D82BE0](*v7);
  v81 = swift_allocObject();
  *(v81 + 16) = v79;
  v83 = swift_allocObject();
  *(v83 + 16) = v80;
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = 8;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_268DD1060;
  *(v82 + 24) = v81;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_268DD25B0;
  *(v87 + 24) = v82;
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = 8;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_268DD1060;
  *(v84 + 24) = v83;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_268DD25B0;
  *(v90 + 24) = v84;
  sub_268F9B734();
  v91 = v8;

  *v91 = sub_268CD7600;
  v91[1] = v85;

  v91[2] = sub_268CD7600;
  v91[3] = v86;

  v91[4] = sub_268DD25BC;
  v91[5] = v87;

  v91[6] = sub_268CD7600;
  v91[7] = v88;

  v91[8] = sub_268CD7600;
  v91[9] = v89;

  v91[10] = sub_268DD25BC;
  v91[11] = v90;
  sub_268CD0F7C();

  if (os_log_type_enabled(log, v93))
  {
    v76 = sub_268F9B3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v77 = sub_268CD5448(0);
    v78 = sub_268CD5448(0);
    v113 = v76;
    v114 = v77;
    v115 = v78;
    sub_268CD549C(0, &v113);
    sub_268CD549C(2, &v113);
    v116 = sub_268CD7600;
    v117 = v85;
    sub_268CD54B0(&v116, &v113, &v114, &v115);
    v116 = sub_268CD7600;
    v117 = v86;
    sub_268CD54B0(&v116, &v113, &v114, &v115);
    v116 = sub_268DD25BC;
    v117 = v87;
    sub_268CD54B0(&v116, &v113, &v114, &v115);
    v116 = sub_268CD7600;
    v117 = v88;
    sub_268CD54B0(&v116, &v113, &v114, &v115);
    v116 = sub_268CD7600;
    v117 = v89;
    sub_268CD54B0(&v116, &v113, &v114, &v115);
    v116 = sub_268DD25BC;
    v117 = v90;
    sub_268CD54B0(&v116, &v113, &v114, &v115);
    _os_log_impl(&dword_268CBE000, log, v93, "Min/Max volumes for sidekick: %f/%f.", v76, 0x16u);
    sub_268CD54FC(v77);
    sub_268CD54FC(v78);
    sub_268F9B384();
  }

  else
  {
  }

  v74 = *(v107 + 176);
  MEMORY[0x277D82BD8](log);
  v75 = COERCE_DOUBLE(sub_268F7112C(v74, v98, v79, v80, 0.1));
  if (v9)
  {
    v32 = *(v107 + 192);
    sub_268F9B294();
    v24 = sub_268DC7AE8();
    v33 = *v24;
    MEMORY[0x277D82BE0](*v24);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v33);
    v25 = sub_268DAB2DC();
    v34 = sub_268F710D8(0, v25);
    v23 = MEMORY[0x277D82BD8](v97);
    v40 = v34;
    goto LABEL_37;
  }

  v67 = *(v107 + 184);
  v72 = *(v107 + 176);
  *(v107 + 72) = v75;
  v10 = sub_268DBF464();
  v70 = *v10;
  v68 = v10[1];
  v69 = *(v10 + 16);
  v11 = sub_268DC7AE8();
  v71 = *v11;
  MEMORY[0x277D82BE0](*v11);
  sub_268DB9934(v70, v68, v69, v71, *(v67 + 24) & 1);
  v12 = [v72 numericValue];
  v73 = v12;
  if (v12)
  {
    v64 = [v12 unit];
    MEMORY[0x277D82BD8](v73);
    v65 = v64;
    v66 = 0;
  }

  else
  {
    v65 = 0;
    v66 = 1;
  }

  if (v66)
  {
    v63 = 0;
  }

  else
  {
    v63 = v65;
  }

  *(v107 + 248) = v63;
  *(v107 + 80) = v63;
  if (v75 == v98)
  {
    v21 = sub_268DBF464();
    v37 = *v21;
    v35 = v21[1];
    v36 = *(v21 + 16);
    v22 = sub_268DC7AE8();
    v38 = *v22;
    MEMORY[0x277D82BE0](*v22);
    sub_268DB9B78(v37, v35, v36, v38);
    MEMORY[0x277D82BD8](v38);
    type metadata accessor for SetSiriVolumeHandler();
    v39 = sub_268DD0040(v97, v63, v98, v79, v80);
    v23 = MEMORY[0x277D82BD8](v97);
    v40 = v39;
LABEL_37:
    v28 = *(*(v107 + 16) + 8);
    v29 = *(v107 + 16);

    return v28(v40, v23);
  }

  v13 = *(v107 + 176);
  v61 = v13;
  *(v107 + 312) = 2;
  *(v107 + 88) = 0;
  *(v107 + 96) = [v13 action];
  *(v107 + 104) = 2;
  type metadata accessor for INSettingAction();
  sub_268DD25C8();
  v62 = sub_268F9B754();
  MEMORY[0x277D82BE0](v61);
  if (v62)
  {
    *(v107 + 168) = [*(v107 + 176) numericValue];
    v60 = *(v107 + 168) == 0;
    sub_268D35038((v107 + 168));
    v59 = v60;
  }

  else
  {
    v59 = 0;
  }

  *&v14 = MEMORY[0x277D82BD8](*(v107 + 176)).n128_u64[0];
  if (v59)
  {
    *(v107 + 312) = 1;
    v58 = 1;
  }

  else
  {
    v56 = *(v107 + 176);
    *(v107 + 112) = [v56 action];
    *(v107 + 120) = 3;
    v57 = sub_268F9B754();
    MEMORY[0x277D82BE0](v56);
    if (v57)
    {
      *(v107 + 160) = [*(v107 + 176) numericValue];
      v55 = *(v107 + 160) == 0;
      sub_268D35038((v107 + 160));
      v54 = v55;
    }

    else
    {
      v54 = 0;
    }

    MEMORY[0x277D82BD8](*(v107 + 176));
    if (v54)
    {
      *(v107 + 312) = 0;
      v53 = 0;
    }

    else
    {
      sub_268D34FD4();
      v15 = sub_268E3E3B0();
      v16 = *(v107 + 88);
      *(v107 + 88) = v15;
      MEMORY[0x277D82BD8](v16);
      v52 = sub_268F9B284();
      v17 = sub_268DC7AE8();
      v51 = *v17;
      MEMORY[0x277D82BE0](*v17);
      v45 = swift_allocObject();
      *(v45 + 16) = v75;
      v47 = swift_allocObject();
      *(v47 + 16) = 0;
      v48 = swift_allocObject();
      *(v48 + 16) = 8;
      v46 = swift_allocObject();
      *(v46 + 16) = sub_268DD1060;
      *(v46 + 24) = v45;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_268DD25B0;
      *(v49 + 24) = v46;
      sub_268F9B734();
      v50 = v18;

      *v50 = sub_268CD7600;
      v50[1] = v47;

      v50[2] = sub_268CD7600;
      v50[3] = v48;

      v50[4] = sub_268DD25BC;
      v50[5] = v49;
      sub_268CD0F7C();

      if (os_log_type_enabled(v51, v52))
      {
        v42 = sub_268F9B3A4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v43 = sub_268CD5448(0);
        v44 = sub_268CD5448(0);
        v108 = v42;
        v109 = v43;
        v110 = v44;
        sub_268CD549C(0, &v108);
        sub_268CD549C(1, &v108);
        v111 = sub_268CD7600;
        v112 = v47;
        sub_268CD54B0(&v111, &v108, &v109, &v110);
        v111 = sub_268CD7600;
        v112 = v48;
        sub_268CD54B0(&v111, &v108, &v109, &v110);
        v111 = sub_268DD25BC;
        v112 = v49;
        sub_268CD54B0(&v111, &v108, &v109, &v110);
        _os_log_impl(&dword_268CBE000, v51, v52, "SetSiriVolumeHandler.handleSidekickSiriVolumeRequest requested value: %f.", v42, 0xCu);
        sub_268CD54FC(v43);
        sub_268CD54FC(v44);
        sub_268F9B384();
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v51);
      v53 = 2;
    }

    v58 = v53;
  }

  *(v107 + 256) = *(*(v107 + 184) + 16);

  v41 = *(v107 + 88);
  *(v107 + 264) = v41;
  MEMORY[0x277D82BE0](v41);
  v19 = swift_task_alloc();
  *(v107 + 272) = v19;
  *v19 = *(v107 + 16);
  v19[1] = sub_268DCF528;

  return sub_268D455CC(v41, v58);
}

uint64_t sub_268DCF528(uint64_t a1)
{
  v8 = *v1;
  v3 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  v7 = *(*v1 + 256);
  *(v8 + 16) = *v1;
  *(v8 + 280) = a1;

  v4 = *(v8 + 16);

  return MEMORY[0x2822009F8](sub_268DCF684, 0);
}

uint64_t sub_268DCF684()
{
  v1 = v0[35];
  v0[2] = v0;
  v0[16] = v1;
  if (v1)
  {
    v26 = v29[35];
    v24 = v29[24];
    v27 = v29[27];
    sub_268F9B294();
    v2 = sub_268DC7AE8();
    v25 = *v2;
    MEMORY[0x277D82BE0](*v2);
    sub_268F9B734();
    v23 = v3;
    v4 = v26;
    v29[19] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCA68, qword_268FA02D0);
    v21 = sub_268F9AE64();
    v22 = v5;
    v23[3] = MEMORY[0x277D837D0];
    v23[4] = sub_268CDD224();
    *v23 = v21;
    v23[1] = v22;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v25);
    v6 = sub_268DAB2DC();
    v28 = sub_268F710D8(0, v6);

    sub_268D35038(v29 + 11);
    MEMORY[0x277D82BD8](v27);
    v7 = *(v29[2] + 8);
    v8 = v29[2];

    return v7(v28);
  }

  else
  {
    v18 = v29[24];
    v20 = v29[23];
    sub_268F9B284();
    v10 = sub_268DC7AE8();
    v19 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B734();
    v17 = v11;
    v14 = v29[11];
    MEMORY[0x277D82BE0](v14);
    v29[17] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC410, &qword_268F9E2B0);
    v15 = sub_268F9AE64();
    v16 = v12;
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v19);
    v29[36] = *(v20 + 16);

    v13 = swift_task_alloc();
    v29[37] = v13;
    *v13 = v29[2];
    v13[1] = sub_268DCFB68;

    return sub_268D46DDC();
  }
}

uint64_t sub_268DCFB68(uint64_t a1)
{
  v7 = *v1;
  v3 = *(*v1 + 296);
  v6 = *(*v1 + 288);
  *(v7 + 16) = *v1;
  *(v7 + 304) = a1;

  v4 = *(v7 + 16);

  return MEMORY[0x2822009F8](sub_268DCFCA4, 0);
}

uint64_t sub_268DCFCA4()
{
  v1 = *(v0 + 304);
  *(v0 + 16) = v0;
  if (v1)
  {
    v21 = *(v26 + 38);
    v22 = *(v26 + 35);
    v20 = *(v26 + 31);
    v19 = v26[30];
    v18 = v26[29];
    v17 = v26[28];
    v15 = *(v26 + 24);
    v23 = *(v26 + 27);
    *(v26 + 18) = v21;
    sub_268F9B284();
    v2 = sub_268DC7AE8();
    v16 = *v2;
    MEMORY[0x277D82BE0](*v2);
    sub_268F9B734();
    v14 = v3;
    MEMORY[0x277D82BE0](v21);
    v14[3] = sub_268D34FD4();
    v14[4] = sub_268DD2648();
    *v14 = v21;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v16);
    type metadata accessor for SetSiriVolumeHandler();
    v24 = sub_268DD0040(v21, v20, v17, v18, v19);
    MEMORY[0x277D82BD8](v21);

    sub_268D35038(v26 + 11);
    MEMORY[0x277D82BD8](v23);
    v25 = v24;
  }

  else
  {
    v11 = *(v26 + 35);
    v9 = *(v26 + 24);
    v12 = *(v26 + 27);
    sub_268F9B294();
    v4 = sub_268DC7AE8();
    v10 = *v4;
    MEMORY[0x277D82BE0](*v4);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v10);
    v5 = sub_268DAB2DC();
    v13 = sub_268F710D8(0, v5);

    sub_268D35038(v26 + 11);
    MEMORY[0x277D82BD8](v12);
    v25 = v13;
  }

  v6 = *(*(v26 + 2) + 8);
  v7 = *(v26 + 2);

  return v6(v25);
}

uint64_t sub_268DD0040(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v73 = a3;
  v52 = a1;
  v55 = a2;
  v53 = a4;
  v54 = a5;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "Swift/FloatingPointTypes.swift";
  v98 = 0.0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v71 = 0;
  v83 = sub_268F9B6F4();
  v81 = *(v83 - 8);
  v82 = v83 - 8;
  v69 = *(v81 + 64);
  v56 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = (MEMORY[0x28223BE20])(0);
  v57 = &v25 - v56;
  v58 = v56;
  v7 = (MEMORY[0x28223BE20])(v6);
  v59 = &v25 - v58;
  v60 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = (MEMORY[0x28223BE20])(v7);
  v61 = &v25 - v60;
  v62 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = (MEMORY[0x28223BE20])(v8);
  v63 = &v25 - v62;
  v64 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = (MEMORY[0x28223BE20])(v9);
  v65 = &v25 - v64;
  v66 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = (MEMORY[0x28223BE20])(v10);
  v67 = &v25 - v66;
  v68 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = (MEMORY[0x28223BE20])(v11);
  v84 = &v25 - v68;
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v12);
  v78 = &v25 - v70;
  v98 = v13;
  v97 = v14;
  v96 = v15;
  v95 = v16;
  v94 = v17;
  v93 = v5;
  v72 = sub_268DD26C8();
  v74 = sub_268D34FD4();
  v77 = sub_268E557EC(v73);
  v87 = MEMORY[0x277D84678];
  v18 = *MEMORY[0x277D84678];
  v75 = *(v81 + 104);
  v76 = v81 + 104;
  v75(v78, v18, v83);
  v92 = v77;
  v79 = *(v81 + 16);
  v80 = v81 + 16;
  v79(v84, v78, v83);
  v85 = *(v81 + 88);
  v86 = v81 + 88;
  v88 = v85(v84, v83);
  if (v88 == *v87)
  {
    v92 = round(v77);
    goto LABEL_15;
  }

  if (v88 == *MEMORY[0x277D84670])
  {
    v92 = rint(v77);
    goto LABEL_15;
  }

  if (v88 == *MEMORY[0x277D84680])
  {
    goto LABEL_13;
  }

  if (v88 != *MEMORY[0x277D84688])
  {
    if (v88 == *MEMORY[0x277D84660])
    {
      v92 = trunc(v77);
      goto LABEL_15;
    }

    if (v88 != *MEMORY[0x277D84668])
    {
      sub_268F9B114();
      (*(v81 + 8))(v84, v83);
      goto LABEL_15;
    }

    v48 = *&v77 >> 63;
    if (v77 < 0.0)
    {
      if (v48 != 1)
      {
        sub_268F9B584();
        __break(1u);
        goto LABEL_25;
      }

      goto LABEL_14;
    }

LABEL_13:
    v92 = ceil(v77);
    goto LABEL_15;
  }

LABEL_14:
  v92 = floor(v77);
LABEL_15:
  v43 = v92;
  v41 = *(v81 + 8);
  v42 = v81 + 8;
  v41(v78, v83);
  v19 = sub_268E3E3B0();
  v44 = sub_268E3E3F0(v19);
  sub_268F9B0F4();
  v45 = sub_268E557EC(v20);
  v46 = MEMORY[0x277D84678];
  v75(v67, *MEMORY[0x277D84678], v83);
  v91 = v45;
  v79(v65, v67, v83);
  v47 = v85(v65, v83);
  if (v47 == *v46)
  {
LABEL_25:
    v91 = round(v45);
    goto LABEL_32;
  }

  if (v47 == *MEMORY[0x277D84670])
  {
    v91 = rint(v45);
    goto LABEL_32;
  }

  if (v47 == *MEMORY[0x277D84680])
  {
    goto LABEL_30;
  }

  if (v47 != *MEMORY[0x277D84688])
  {
    if (v47 == *MEMORY[0x277D84660])
    {
      v91 = trunc(v45);
      goto LABEL_32;
    }

    if (v47 != *MEMORY[0x277D84668])
    {
      sub_268F9B114();
      v41(v65, v83);
      goto LABEL_32;
    }

    v40 = *&v45 >> 63;
    if (v45 < 0.0)
    {
      if (v40 != 1)
      {
        sub_268F9B584();
        __break(1u);
        goto LABEL_42;
      }

      goto LABEL_31;
    }

LABEL_30:
    v91 = ceil(v45);
    goto LABEL_32;
  }

LABEL_31:
  v91 = floor(v45);
LABEL_32:
  v35 = v91;
  v41(v67, v83);
  v21 = sub_268E3E3B0();
  v36 = sub_268E3E3F0(v21);
  v37 = sub_268E557EC(v53);
  v38 = MEMORY[0x277D84678];
  v75(v63, *MEMORY[0x277D84678], v83);
  v90 = v37;
  v79(v61, v63, v83);
  v39 = v85(v61, v83);
  if (v39 == *v38)
  {
LABEL_42:
    v90 = round(v37);
    goto LABEL_49;
  }

  if (v39 == *MEMORY[0x277D84670])
  {
    v90 = rint(v37);
    goto LABEL_49;
  }

  if (v39 == *MEMORY[0x277D84680])
  {
    goto LABEL_47;
  }

  if (v39 != *MEMORY[0x277D84688])
  {
    if (v39 == *MEMORY[0x277D84660])
    {
      v90 = trunc(v37);
      goto LABEL_49;
    }

    if (v39 != *MEMORY[0x277D84668])
    {
      sub_268F9B114();
      v41(v61, v83);
      goto LABEL_49;
    }

    v34 = *&v37 >> 63;
    if (v37 < 0.0)
    {
      if (v34 != 1)
      {
        sub_268F9B584();
        __break(1u);
        goto LABEL_59;
      }

      goto LABEL_48;
    }

LABEL_47:
    v90 = ceil(v37);
    goto LABEL_49;
  }

LABEL_48:
  v90 = floor(v37);
LABEL_49:
  v29 = v90;
  v41(v63, v83);
  v22 = sub_268E3E3B0();
  v30 = sub_268E3E3F0(v22);
  v31 = sub_268E557EC(v54);
  v32 = MEMORY[0x277D84678];
  v75(v59, *MEMORY[0x277D84678], v83);
  v89 = v31;
  v79(v57, v59, v83);
  v33 = v85(v57, v83);
  if (v33 == *v32)
  {
LABEL_59:
    v89 = round(v31);
    goto LABEL_66;
  }

  if (v33 == *MEMORY[0x277D84670])
  {
    v89 = rint(v31);
    goto LABEL_66;
  }

  if (v33 == *MEMORY[0x277D84680])
  {
    goto LABEL_64;
  }

  if (v33 == *MEMORY[0x277D84688])
  {
LABEL_65:
    v89 = floor(v31);
    goto LABEL_66;
  }

  if (v33 == *MEMORY[0x277D84660])
  {
    v89 = trunc(v31);
    goto LABEL_66;
  }

  if (v33 != *MEMORY[0x277D84668])
  {
    sub_268F9B114();
    v41(v57, v83);
LABEL_66:
    v25 = v89;
    v41(v59, v83);
    v23 = sub_268E3E3B0();
    v26 = sub_268E3E3F0(v23);
    v27 = sub_268F72AA8(0, v44, v36, v30, v26);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v44);
    return v27;
  }

  v28 = *&v31 >> 63;
  if (v31 >= 0.0)
  {
LABEL_64:
    v89 = ceil(v31);
    goto LABEL_66;
  }

  if (v28 == 1)
  {
    goto LABEL_65;
  }

  result = sub_268F9B584();
  __break(1u);
  return result;
}

uint64_t sub_268DD1068(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v15 = *(v6 + 16);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a1;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  sub_268D46844(sub_268DD272C, v14);
}

void sub_268DD117C(uint64_t a1, void (*a2)(void), double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    type metadata accessor for SetSiriVolumeHandler();
    sub_268DCD18C(a1, a7, a2, a3, a4, a5);
    MEMORY[0x277D82BD8](a1);
  }

  else
  {
    sub_268F9B294();
    v7 = sub_268DC7AE8();
    v8 = *v7;
    MEMORY[0x277D82BE0](*v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);

    v9 = sub_268F710D8(0, 8);
    a2();
    MEMORY[0x277D82BD8](v9);
  }
}

uint64_t sub_268DD1348(uint64_t a1, double a2, double a3, double a4)
{
  *(v5 + 104) = v4;
  *(v5 + 96) = a4;
  *(v5 + 88) = a3;
  *(v5 + 80) = a1;
  *(v5 + 72) = a2;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 24) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  v6 = *(v5 + 16);
  return MEMORY[0x2822009F8](sub_268DD13C8, 0);
}

uint64_t sub_268DD13C8()
{
  v1 = v0[13];
  v0[2] = v0;
  v0[14] = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v4 + 120) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268DD1484;

  return sub_268D46DDC();
}

uint64_t sub_268DD1484(uint64_t a1)
{
  v7 = *v1;
  v3 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  *(v7 + 16) = *v1;
  *(v7 + 128) = a1;

  v4 = *(v7 + 16);

  return MEMORY[0x2822009F8](sub_268DD15C0, 0);
}

uint64_t sub_268DD15C0()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v0;
  if (v1)
  {
    v13 = *(v16 + 16);
    v11 = v16[12];
    v10 = v16[11];
    v12 = *(v16 + 10);
    v9 = v16[9];
    *(v16 + 8) = v13;
    type metadata accessor for SetSiriVolumeHandler();
    v14 = sub_268DD0040(v13, v12, v9, v10, v11);
    v2 = MEMORY[0x277D82BD8](v13);
    v15 = v14;
  }

  else
  {
    sub_268F9B294();
    v3 = sub_268DC7AE8();
    v8 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);
    v4 = sub_268DAB2DC();
    v15 = sub_268F710D8(0, v4);
  }

  v5 = *(*(v16 + 2) + 8);
  v6 = *(v16 + 2);

  return v5(v15, v2);
}

BOOL sub_268DD17E4(void *a1)
{
  v9 = sub_268DD1C68(a1);
  MEMORY[0x277D82BE0](a1);
  if (v9)
  {
    [a1 action];
    type metadata accessor for INSettingAction();
    sub_268DD25C8();
    v6 = sub_268F9B754();
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x277D82BD8](a1);
  if (v6)
  {
    return 1;
  }

  else
  {
    v3 = *(v7 + 32);

    v1 = sub_268DD1B88();
    v4 = sub_268E8FBCC(v1);

    return v4;
  }
}

uint64_t sub_268DD1954()
{
  v5 = *(v0 + 32);

  v7 = sub_268E902AC();

  if (v7)
  {
    v2 = *(v6 + 16);

    v3 = sub_268D44174();

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_268DD1A1C()
{
  v5 = *(v0 + 32);

  v7 = sub_268E902AC();

  if (v7)
  {
    v2 = *(v6 + 16);

    v3 = sub_268D44174();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_268DD1AE0()
{
  v2 = *(v0 + 32);

  sub_268E902F4();
}

uint64_t sub_268DD1B2C()
{
  v2 = *(v0 + 16);

  v3 = sub_268D51E50();

  return v3 & 1;
}

uint64_t sub_268DD1B88()
{
  type metadata accessor for INSettingAction();
  sub_268DD25C8();
  if (sub_268F9B754())
  {
    return 1;
  }

  else if (sub_268F9B754())
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

BOOL sub_268DD1C68(void *a1)
{
  v51 = a1;
  v70 = 0;
  v69 = 0;
  v46 = sub_268F990E4();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v50 = &v14[-v49];
  v52 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v53 = &v14[-v52];
  v54 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v55 = &v14[-v54];
  v70 = v5;
  v69 = v1;
  v56 = [v5 temporalEventTrigger];
  if (v56)
  {
    v45 = v56;
    v42 = v56;
    v43 = [v56 dateComponentsRange];
    *&v6 = MEMORY[0x277D82BD8](v42).n128_u64[0];
    v7 = [v43 endDateComponents];
    v44 = v7;
    if (v7)
    {
      v41 = v44;
      v40 = v44;
      sub_268F99094();
      (*(v47 + 32))(v53, v50, v46);
      (*(v47 + 56))(v53, 0, 1, v46);
      MEMORY[0x277D82BD8](v40);
    }

    else
    {
      (*(v47 + 56))(v53, 1, 1, v46);
    }

    sub_268D29338(v53, v55);
    v8 = MEMORY[0x277D82BD8](v43);
    if ((*(v47 + 48))(v55, 1, v46, v8) != 1)
    {
      v36 = sub_268F990B4();
      v37 = v9;
      (*(v47 + 8))(v55, v46);
      v38 = v36;
      v39 = v37;
      goto LABEL_10;
    }

    sub_268D29460(v55);
  }

  v38 = 0;
  v39 = 1;
LABEL_10:
  v34 = v39;
  v35 = v38;
  v65 = v38;
  v66 = v39 & 1;
  v67 = 10000;
  v68 = 0;
  if (v39)
  {
    v33 = 0;
  }

  else
  {
    v57 = v35;
    v58 = v34 & 1;
    v33 = v35 == v67;
  }

  if (!v33)
  {
    v10 = [v51 settingMetadata];
    v31 = v10;
    if (v10)
    {
      v30 = v31;
      v24 = v31;
      v25 = [v31 settingId];
      v26 = sub_268F9AE24();
      v27 = v11;
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      v28 = v26;
      v29 = v27;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v22 = v29;
    v21 = v28;

    v64 = 8;
    v20 = NumericSettingIdentifier.rawValue.getter();
    v23 = v12;

    v62[0] = v21;
    v62[1] = v22;
    *&v63 = v20;
    *(&v63 + 1) = v23;
    if (v22)
    {
      sub_268D28874(v62, &v61);
      if (*(&v63 + 1))
      {
        v17 = &v60;
        v60 = v61;
        v16 = &v59;
        v59 = v63;
        v18 = MEMORY[0x26D62DB50](v61, *(&v61 + 1), v63, *(&v63 + 1));
        sub_268CD9D30(v16);
        sub_268CD9D30(v17);
        sub_268CD9D30(v62);
        v19 = v18;
LABEL_25:
        v15 = v19;

        return (v15 & 1) != 0;
      }

      sub_268CD9D30(&v61);
    }

    else if (!*(&v63 + 1))
    {
      sub_268CD9D30(v62);
      v19 = 1;
      goto LABEL_25;
    }

    sub_268D28550(v62);
    v19 = 0;
    goto LABEL_25;
  }

  return 1;
}

double sub_268DD247C(char a1)
{
  if (a1)
  {
    return 0.2;
  }

  else
  {
    return 0.06;
  }
}

uint64_t sub_268DD24E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v4;
}

unint64_t sub_268DD25C8()
{
  v2 = qword_2802DCA58;
  if (!qword_2802DCA58)
  {
    type metadata accessor for INSettingAction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCA58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DD2648()
{
  v2 = qword_2802DCA60;
  if (!qword_2802DCA60)
  {
    sub_268D34FD4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DD26C8()
{
  v2 = qword_280FE2778;
  if (!qword_280FE2778)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2778);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268DD282C(uint64_t a1, void (*a2)(void))
{

  sub_268CD795C();
  v4 = sub_268CD42AC(4, 0);
  a2();
  MEMORY[0x277D82BD8](v4);
}

uint64_t sub_268DD28D8(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268D82A48;

  return sub_268DD299C(a1);
}

uint64_t sub_268DD299C(uint64_t a1)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268DD29E8, 0);
}

uint64_t sub_268DD29E8()
{
  *(v0 + 16) = v0;
  sub_268CD795C();
  v1 = sub_268CD42AC(4, 0);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2(v1);
}

uint64_t *sub_268DD2AA8()
{
  if (qword_2802DB4B0 != -1)
  {
    swift_once();
  }

  return &qword_2802DCA70;
}

char *sub_268DD2B08()
{
  type metadata accessor for SetBinaryIntentHandler();
  memset(v4, 0, sizeof(v4));
  v1 = sub_268DD2BB4();
  v2 = sub_268DD2BE4();
  sub_268D58CB4(v3);
  result = sub_268DD2C14(v1, v2, v3, v4);
  qword_2802DCA70 = result;
  return result;
}

uint64_t sub_268DD2BB4()
{
  v1 = *sub_268F7AD98();

  return v1;
}

uint64_t sub_268DD2BE4()
{
  v1 = *sub_268F337EC();

  return v1;
}

uint64_t static SetBinaryIntentHandler.shared.getter()
{
  v0 = sub_268DD2AA8();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268DD2CA8()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_setHandlerProvider);

  return v2;
}

uint64_t sub_268DD2CE8()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_confirmationConfigProvider);

  return v2;
}

uint64_t sub_268DD2D60@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_deviceState);
  swift_beginAccess();
  sub_268D35D60(v3, a1);
  return swift_endAccess();
}

uint64_t *sub_268DD2DC4(uint64_t *a1)
{
  v5[5] = 0;
  v5[6] = a1;
  sub_268D35D60(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_deviceState);
  swift_beginAccess();
  sub_268DB7D70(v5, v3);
  swift_endAccess();
  return sub_268D28414(a1);
}

char *sub_268DD2EB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v21 = 0;
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v4 = OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_deviceState;
  *OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_deviceState = 0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;

  *&v21[OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_setHandlerProvider] = a1;

  *&v21[OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_confirmationConfigProvider] = a2;
  v6 = v21;
  sub_268CDE730(a3, v16);
  sub_268CDF978(v16, &v6[OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_settingsFeatureFlags]);
  v7 = v21;
  sub_268D35D60(a4, v15);
  v8 = &v7[OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_deviceState];
  swift_beginAccess();
  sub_268DB7D70(v15, v8);
  swift_endAccess();
  v14.receiver = v21;
  v14.super_class = type metadata accessor for SetBinaryIntentHandler();
  v13 = objc_msgSendSuper2(&v14, sel_init);
  MEMORY[0x277D82BE0](v13);
  v21 = v13;
  sub_268D28414(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);

  MEMORY[0x277D82BD8](v21);
  return v13;
}

double sub_268DD308C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v37 = 0;
  v35 = 0;
  v44 = a1;
  v42 = a2;
  v43 = a3;
  v41 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v30 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v30);
  sub_268DD2D60(v38);
  if (v39)
  {
    sub_268CDF978(v38, __dst);
  }

  else
  {
    sub_268F99C44();
    if (v39)
    {
      sub_268D28414(v38);
    }
  }

  v25 = sub_268F80E80(a1, __dst);
  __swift_destroy_boxed_opaque_existential_0(__dst);
  if (v25)
  {
    sub_268F9B284();
    v11 = sub_268DC7AE8();
    v13 = *v11;
    MEMORY[0x277D82BE0](*v11);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v13);
    sub_268CD795C();
    v37 = sub_268CD42AC(2, 0);
    MEMORY[0x277D82BE0](v37);
    [v37 _setRequiresAuthentication_];
    MEMORY[0x277D82BD8](v37);

    (a2)(v37);

    *&result = MEMORY[0x277D82BD8](v37).n128_u64[0];
    return result;
  }

  sub_268DAB218(a1);
  if (v36 != 65)
  {
    v35 = v36;
    v24 = *(v29 + OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_setHandlerProvider);

    v32 = v36;
    sub_268F7C430(&v32);

    if (v33[3])
    {
      sub_268CDF978(v33, v34);
      sub_268F9B284();
      v5 = sub_268DC7AE8();
      v21 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B734();
      v20 = v6;
      sub_268CDE730(v34, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
      v17 = sub_268F9AE64();
      v16 = v7;
      v18 = MEMORY[0x277D837D0];
      v20[3] = MEMORY[0x277D837D0];
      v19 = sub_268CDD224();
      v20[4] = v19;
      *v20 = v17;
      v20[1] = v16;
      v8 = sub_268F9AE64();
      v20[8] = v18;
      v20[9] = v19;
      v20[5] = v8;
      v20[6] = v9;
      sub_268CD0F7C();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v21);
      v22 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);

      v23 = swift_allocObject();
      *(v23 + 16) = a2;
      *(v23 + 24) = a3;
      (*(v22 + 8))(a1, sub_268DD561C);

      __swift_destroy_boxed_opaque_existential_0(v34);
      return result;
    }

    sub_268D28414(v33);
  }

  v10 = sub_268DC7AE8();
  v14 = *v10;
  MEMORY[0x277D82BE0](*v10);
  sub_268F9B274();
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v14);

  sub_268CD795C();
  v15 = sub_268CD42AC(7, 0);
  a2();
  MEMORY[0x277D82BD8](v15);

  return result;
}

uint64_t sub_268DD3694(uint64_t a1, void (*a2)(uint64_t))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v9 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v8 = v3;
  MEMORY[0x277D82BE0](a1);
  sub_268CD795C();
  sub_268DD674C();
  v6 = sub_268F9AE74();
  v7 = v4;
  v8[3] = MEMORY[0x277D837D0];
  v8[4] = sub_268CDD224();
  *v8 = v6;
  v8[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v9);

  a2(a1);
}

double sub_268DD390C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v23 = a3;
  v21 = v3;
  v4 = sub_268DBC784();
  v15 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 16);
  v5 = sub_268DC7AE8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](v3);

  v17 = a1;
  v18 = v3;
  v19 = a2;
  v20 = a3;
  v14 = MEMORY[0x277D84F78] + 8;
  v6 = sub_268DD2A90();
  sub_268DB944C(v15, v11, v12, v13, v6 & 1, sub_268DD5628, v16, v14, v3);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v3);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

void *sub_268DD3AB4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v26 = 0;
  v32 = a1;
  v31 = a2;
  v29 = a3;
  v30 = a4;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v23 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v23);
  sub_268DAB218(a1);
  if (v28 == 65 || (v26 = v28, v19 = *(a2 + OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_confirmationConfigProvider), , v25 = v28, sub_268F35C24(&v25, v33), , memcpy(__dst, v33, sizeof(__dst)), !__dst[2]))
  {
    sub_268F9B284();
    v6 = sub_268DC7AE8();
    v12 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B734();
    v11 = v7;
    MEMORY[0x277D82BE0](a1);
    v27 = a1;
    sub_268CD7620();
    sub_268D28940();
    v9 = sub_268F9AE74();
    v10 = v8;
    v11[3] = MEMORY[0x277D837D0];
    v11[4] = sub_268CDD224();
    *v11 = v9;
    v11[1] = v10;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v12);

    sub_268CD795C();
    v13 = sub_268CD42AC(2, 0);
    a3();
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    memcpy(v35, __dst, sizeof(v35));
    sub_268CD795C();
    v16 = sub_268CD42AC(2, 0);
    v17 = v35[2];

    MEMORY[0x277D82BE0](a1);
    v18 = v17(a1);
    MEMORY[0x277D82BD8](a1);

    type metadata accessor for INBinarySettingValue();
    sub_268D292B8();
    if (sub_268F9AE04())
    {
      v14 = v35[6];

      MEMORY[0x277D82BE0](v16);
      v15 = swift_allocObject();
      v15[2] = a3;
      v15[3] = a4;
      v15[4] = v16;
      v14(sub_268DD673C);
    }

    else
    {
      [v16 setOldValue_];

      (a3)(v16);
    }

    MEMORY[0x277D82BD8](v16);
    return sub_268DD57B4(v35);
  }
}

uint64_t sub_268DD3FC4(char a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a1 == 2)
  {

    sub_268CD795C();
    v6 = sub_268CD42AC(2, 0);
    a2();
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    if (a1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    [a4 setOldValue_];

    (a2)(a4);
  }
}

uint64_t sub_268DD41D4(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0;
  v3 = sub_268F99214();
  *(v2 + 80) = v3;
  v7 = *(v3 - 8);
  *(v2 + 88) = v7;
  v4 = *(v7 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v5 = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_268DD42EC, 0);
}

uint64_t sub_268DD42EC()
{
  v1 = v0[9];
  v0[2] = v0;
  v0[5] = [v1 temporalEventTrigger];
  if (!v0[5])
  {
    sub_268D35038((v19 + 40));
    sub_268DAB218(*(v19 + 72));
    if (v20 != 65)
    {
      v12 = *(v19 + 72);
      *(v19 + 104) = v20;
      *(v19 + 105) = v20;
      *(v19 + 106) = 45;
      sub_268D28AD4();
      v13 = sub_268F9B754();
      MEMORY[0x277D82BE0](v12);
      if (v13)
      {
        *(v19 + 56) = [*(v19 + 72) binaryValue];
        *(v19 + 64) = 2;
        type metadata accessor for INBinarySettingValue();
        sub_268CD925C();
        v11 = sub_268F9B754();
        MEMORY[0x277D82BD8](*(v19 + 72));
        if (v11)
        {
          v9 = *(v19 + 96);
          v8 = *(v19 + 80);
          v7 = *(v19 + 88);
          sub_268F991F4();
          v10 = sub_268DABB80(v9);
          (*(v7 + 8))(v9, v8);
          if (v10)
          {
            *(v19 + 48) = v10;
            v6 = [objc_opt_self() successWithResolvedTemporalEventTrigger_];
            MEMORY[0x277D82BD8](v10);
            v15 = v6;
            goto LABEL_15;
          }
        }
      }

      else
      {
        MEMORY[0x277D82BD8](*(v19 + 72));
      }
    }

    sub_268DD565C();
    v15 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_15;
  }

  sub_268D35038((v19 + 40));
  v16 = *(v19 + 72);
  v17 = objc_opt_self();
  v18 = [v16 temporalEventTrigger];
  if (!v18)
  {
    return sub_268F9B584();
  }

  v14 = [v17 successWithResolvedTemporalEventTrigger_];
  MEMORY[0x277D82BD8](v18);
  v15 = v14;
LABEL_15:
  v3 = *(v19 + 96);

  v4 = *(*(v19 + 16) + 8);
  v5 = *(v19 + 16);

  return v4(v15);
}

uint64_t sub_268DD48EC(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = sub_268DD49DC;

  return sub_268DD41D4(a1);
}

uint64_t sub_268DD49DC(void *a1)
{
  v9 = *v1;
  v2 = *(*v1 + 48);
  aBlock = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  *(v9 + 16) = *v1;

  aBlock[2](aBlock, a1);
  _Block_release(aBlock);

  v3 = *(*(v9 + 16) + 8);

  return v3();
}

uint64_t sub_268DD4B84(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v24 = &unk_268FA05A0;
  v27 = &unk_268FA05B0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v26 = &v17 - v17;
  v25 = 0;
  v3 = sub_268F9B0E4();
  (*(*(v3 - 8) + 56))(v26, 1);
  v20 = 48;
  v21 = 7;
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v4;
  v7 = v19;
  v28 = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v7;
  v6[5] = v5;
  v22 = v6[2];
  v23 = v6[3];
  swift_unknownObjectRetain();
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v8;
  v15 = v28;
  v14[2] = v22;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v15;
  sub_268DD6034(v11, v11, v12, v13, v14);
}

id sub_268DD4D24(uint64_t a1)
{
  v45 = 0;
  v42 = 0;
  v46 = a1;
  sub_268F9B284();
  v1 = sub_268DC7AE8();
  v39 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v39);
  sub_268DAB218(a1);
  if (v44 == 65 || (v42 = v44, v37 = *(v38 + OBJC_IVAR____TtC19SiriSettingsIntents22SetBinaryIntentHandler_confirmationConfigProvider), , v41 = v44, sub_268F35C24(&v41, v47), , memcpy(__dst, v47, sizeof(__dst)), !__dst[2]))
  {
    sub_268F9B284();
    v9 = sub_268DC7AE8();
    v16 = *v9;
    MEMORY[0x277D82BE0](*v9);
    sub_268F9B734();
    v15 = v10;
    MEMORY[0x277D82BE0](a1);
    v43 = a1;
    sub_268CD7620();
    sub_268D28940();
    v13 = sub_268F9AE74();
    v14 = v11;
    v15[3] = MEMORY[0x277D837D0];
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v16);
    sub_268CD795C();
    return sub_268CD42AC(2, 0);
  }

  else
  {
    memcpy(v49, __dst, sizeof(v49));
    v2 = sub_268DBC784();
    v32 = *v2;
    v30 = v2[1];
    v31 = *(v2 + 16);
    v3 = sub_268DC7AE8();
    v33 = *v3;
    MEMORY[0x277D82BE0](*v3);
    has_malloc_size = _swift_stdlib_has_malloc_size();
    sub_268DB9934(v32, v30, v31, v33, has_malloc_size & 1);
    MEMORY[0x277D82BD8](v33);
    v34 = swift_allocObject();
    sub_268CD795C();
    *(v34 + 16) = sub_268CD42AC(2, 0);
    v35 = v49[2];

    MEMORY[0x277D82BE0](a1);
    v36 = v35(a1);
    MEMORY[0x277D82BD8](a1);

    type metadata accessor for INBinarySettingValue();
    sub_268D292B8();
    if (sub_268F9AE04())
    {
      v17 = v49[6];

      v17(sub_268DD57AC, v34);

      v7 = sub_268DBC784();
      v20 = *v7;
      v18 = v7[1];
      v19 = *(v7 + 16);
      v8 = sub_268DC7AE8();
      v21 = *v8;
      MEMORY[0x277D82BE0](*v8);
      sub_268DB9B78(v20, v18, v19, v21);
      MEMORY[0x277D82BD8](v21);
      swift_beginAccess();
      v22 = *(v34 + 16);
      MEMORY[0x277D82BE0](v22);
      swift_endAccess();

      sub_268DD57B4(v49);
      return v22;
    }

    else
    {
      v23 = *(v34 + 16);
      MEMORY[0x277D82BE0](v23);
      [v23 setOldValue_];
      MEMORY[0x277D82BD8](v23);
      v5 = sub_268DBC784();
      v26 = *v5;
      v24 = v5[1];
      v25 = *(v5 + 16);
      v6 = sub_268DC7AE8();
      v27 = *v6;
      MEMORY[0x277D82BE0](*v6);
      sub_268DB9B78(v26, v24, v25, v27);
      MEMORY[0x277D82BD8](v27);
      v28 = *(v34 + 16);
      MEMORY[0x277D82BE0](v28);

      sub_268DD57B4(v49);
      return v28;
    }
  }
}

double sub_268DD5338(char a1, uint64_t a2)
{
  if (a1 == 2)
  {
    sub_268CD795C();
    v5 = sub_268CD42AC(2, 0);
    swift_beginAccess();
    v2 = *(a2 + 16);
    *(a2 + 16) = v5;
    MEMORY[0x277D82BD8](v2);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    MEMORY[0x277D82BE0](v4);
    swift_endAccess();
    if (a1)
    {
      [v4 setOldValue_];
    }

    else
    {
      [v4 setOldValue_];
    }

    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  return result;
}

id SetBinaryIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetBinaryIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268DD565C()
{
  v2 = qword_2802DCAB8;
  if (!qword_2802DCAB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCAB8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268DD56C0()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268DD48EC(v7, v5, v6);
}

void *sub_268DD57B4(void *a1)
{
  v1 = a1[3];

  v2 = a1[5];

  v3 = a1[7];

  v4 = a1[9];

  v5 = a1[11];

  return a1;
}

uint64_t dispatch thunk of SetBinaryIntentHandler.resolveTemporalEventTrigger(for:)(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v3 = *((*v1 & *MEMORY[0x277D85000]) + 0xA0);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v8(a1);
}

uint64_t sub_268DD5AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v10 = (*(a3 + 32) + **(a3 + 32));
  v4 = *(*(a3 + 32) + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v10(a1, a2, a3);
}

uint64_t sub_268DD5C24(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v8 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268CD7B50;

  return v8();
}

uint64_t sub_268DD5D30()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268DD5C24(v8, v5, v6);
}

uint64_t sub_268DD5E28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v9 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268CD7B50;

  return v9();
}

uint64_t sub_268DD5F34(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268DD5E28(a1, v6, v7, v8);
}

uint64_t sub_268DD6034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v47 = a4;
  v48 = a5;
  v49 = &unk_268FA05C8;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &unk_268FA05C0;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v56 = v16 - v55;
  sub_268CD95D4(v5, v16 - v55);
  v57 = sub_268F9B0E4();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_268CD96FC(v56);
    v44 = 0;
  }

  else
  {
    v43 = sub_268F9B0D4();
    (*(v58 + 8))(v56, v57);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v48 + 16);
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();
  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_268F9B0B4();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v22 = v46;
    v23 = sub_268F9AEA4();

    v24 = v23 + 32;

    v7 = swift_allocObject();
    v8 = v48;
    v9 = v31;
    v10 = v30;
    v25 = v7;
    *(v7 + 16) = v47;
    *(v7 + 24) = v8;
    v26 = 0;
    if (v9 != 0 || v10 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v31;
      v63[3] = v30;
      v26 = v63;
    }

    v60 = 7;
    v61 = v26;
    v62 = v24;
    v21 = swift_task_create();

    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  v20 = v27;
  if (v27)
  {
    v16[1] = v20;
    v16[0] = v20;
    sub_268CD96FC(v54);

    return v16[0];
  }

  else
  {

    sub_268CD96FC(v54);
    v11 = swift_allocObject();
    v12 = v48;
    v13 = v31;
    v14 = v30;
    v18 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v19 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v31;
      v64[3] = v30;
      v19 = v64;
    }

    return swift_task_create();
  }
}

uint64_t sub_268DD6654(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268CD5730(a1, v6);
}

unint64_t sub_268DD674C()
{
  v2 = qword_2802DCB48;
  if (!qword_2802DCB48)
  {
    sub_268CD795C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCB48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DD67CC()
{
  type metadata accessor for GetVoiceOverHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81E0 = result;
  return result;
}

uint64_t *sub_268DD6834()
{
  if (qword_280FE5198 != -1)
  {
    swift_once();
  }

  return &qword_280FE81E0;
}

uint64_t sub_268DD6894()
{
  v1 = *sub_268DD6834();

  return v1;
}

uint64_t sub_268DD68C4(void *a1, void (*a2)(id), uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v42 = a1;
  v37 = 0;
  v46 = 0;
  v36 = 0;
  v49 = a1;
  v47 = a2;
  v48 = a3;
  v39 = sub_268F9B284();
  v41 = *sub_268DC7AE8();
  v3 = v41;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v40 = sub_268F9B734();
  sub_268F9AC14();

  v44 = *sub_268E50B9C();

  v43 = [v42 settingMetadata];
  v45 = sub_268E50C88(v43);

  if (v45)
  {
    v19[1] = sub_268F9B294();
    v21 = *sub_268DC7AE8();
    v15 = v21;
    v20 = sub_268F9B734();
    sub_268F9AC14();

    sub_268E948B8();
    v22 = v16;
    v23 = sub_268E41B70();

    v35(v23);

    return v36;
  }

  else
  {
    v4 = v36;
    v5 = sub_268DBB7A4();
    v26 = *v5;
    v27 = v5[1];
    v28 = *(v5 + 16);
    v29 = *sub_268DC7AE8();
    v25 = v29;
    v6 = v29;
    v30 = *(v33 + 24);

    v7 = v42;

    v31 = v19;
    MEMORY[0x28223BE20](v26);
    v18[2] = v8;
    v18[3] = v42;
    v18[4] = v35;
    v18[5] = v9;
    sub_268DB944C(v10, v11, v12, v13, v14, sub_268DD6F58, v18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v32 = v4;

    return v32;
  }
}

double sub_268DD6C30(uint64_t a1, void *a2, void (*a3)(id))
{
  v15 = *(a1 + 16);

  v19 = sub_268D3DB58();

  sub_268CDD0DC();
  v16 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v18 = v3;
  v20 = [a2 settingMetadata];
  if (v19)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *v18 = sub_268E41954(v20, 0, 0, v13, 0, 0);
  sub_268CD0F7C();
  v8 = sub_268F9B004();

  [v16 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v8);
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v5;
  MEMORY[0x277D82BE0](v16);
  sub_268CDD1A4();
  v9 = sub_268F9AE74();
  v10 = v6;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);

  a3(v16);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t sub_268DD6F8C()
{
  type metadata accessor for GetAXIncreaseContrastHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8070 = result;
  return result;
}

uint64_t *sub_268DD6FF4()
{
  if (qword_280FE35D0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8070;
}

uint64_t sub_268DD7054()
{
  v1 = *sub_268DD6FF4();

  return v1;
}

double sub_268DD7084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBADD4();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268DD7508, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268DD72A0(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3E824();

  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v11 = sub_268E41A08(v15, 0, 0, v12, 0, 0);
  MEMORY[0x277D82BD8](v15);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](v11);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);

  a3(v11);

  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

uint64_t sub_268DD7560@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_name;
  swift_beginAccess();
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_268DD75EC(uint64_t a1)
{
  v11 = a1;
  v12 = sub_268F9A9C4();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_name;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_268DD7790()
{
  v2 = (v0 + OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_value);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_268DD77F0(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_value);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_268DD78B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_268DD7904(a1, a2);
}

uint64_t sub_268DD7904(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v11 = a2;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v15 = sub_268F9A9C4();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v3 = v12;
  v10 = &v6 - v6;
  v20 = v4;
  v19 = v11;
  v21 = v2;
  *(v2 + OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_value) = 0;
  v7 = v21;
  v9 = *(v3 + 16);
  v8 = v3 + 16;
  v9();
  (*(v12 + 32))(v7 + OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_name, v10, v15);
  (v9)(v10, v11, v15);
  v18 = sub_268F5038C(v10);

  v21 = v18;
  v17 = *(v12 + 8);
  v16 = v12 + 8;
  v17(v11, v15);
  v17(v14, v15);

  return v18;
}

uint64_t sub_268DD7ADC(char a1)
{

  v3 = (v1 + OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_value);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();

  return v5;
}

uint64_t sub_268DD7B70()
{
  type metadata accessor for SettingsMultiSetting();

  return sub_268DD7C30(v1);
}

uint64_t type metadata accessor for SettingsMultiSetting()
{
  v1 = qword_2802DCB78;
  if (!qword_2802DCB78)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268DD7C30(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_268DD7F50(a1);
}

void sub_268DD7C7C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268DD7CC8(v3);
}

uint64_t sub_268DD7D3C()
{
  v3 = OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_name;
  v1 = sub_268F9A9C4();
  return (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t sub_268DD7DA8()
{
  v3 = sub_268F504C0();
  v2 = OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_name;
  v0 = sub_268F9A9C4();
  (*(*(v0 - 8) + 8))(v3 + v2);
  return v3;
}

uint64_t sub_268DD7E28()
{
  v0 = *sub_268DD7DA8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_268DD7ECC@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_name;
  v2 = sub_268F9A9C4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268DD7F50(uint64_t a1)
{
  v17 = a1;
  v22 = 0;
  v21 = 0;
  v10 = sub_268F9A9C4();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v3;
  v21 = MEMORY[0x28223BE20](v17);
  v22 = v1;
  v8 = v1;
  v4 = v21 + OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_name;
  v5 = &v20;
  v11 = 32;
  v12 = 0;
  swift_beginAccess();
  (*(v6 + 16))(v9, v4, v10);
  swift_endAccess();
  (*(v6 + 32))(v8 + OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_name, v9, v10);
  v15 = v22;
  v13 = (v17 + OBJC_IVAR____TtCC19SiriSettingsIntents20SettingsMultiSetting7Builder_value);
  v14 = &v19;
  swift_beginAccess();
  v16 = *v13;
  swift_endAccess();
  *(v15 + OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_value) = v16;

  v18 = sub_268F50764(v17);

  v22 = v18;

  return v18;
}

uint64_t sub_268DD8138(uint64_t a1, int a2, uint64_t a3)
{
  v22 = a1;
  v16 = a2;
  v21 = a3;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v8[1] = 0;
  v23 = sub_268F9A9C4();
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v10 = v19[8];
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v14 = v8 - v9;
  v11 = v9;
  MEMORY[0x28223BE20](v3);
  v15 = v8 - v11;
  v30 = v4;
  v29 = v5 & 1;
  v28 = v6;
  type metadata accessor for SettingsMultiSetting.Builder();
  v13 = v19[2];
  v12 = v19 + 2;
  v13(v15, v22, v23);
  v13(v14, v21, v23);
  v17 = sub_268DD78B0(v15, v14);
  v18 = sub_268DD7ADC(v16 & 1);

  v27 = v18;

  v26 = sub_268DD7C30(v18);

  v31 = v26;

  v25 = v19[1];
  v24 = v19 + 1;
  v25(v21, v23);
  v25(v22, v23);

  return v26;
}

uint64_t type metadata accessor for SettingsMultiSetting.Builder()
{
  v1 = qword_2802DCB88;
  if (!qword_2802DCB88)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268DD83E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17[2] = 0;
  v17[3] = a1;
  v17[4] = a2;

  v17[0] = sub_268F9AEF4();
  v17[1] = v3;
  v16[2] = a1;
  v16[3] = a2;
  v15 = MEMORY[0x26D62DB50](v17[0], v3, a1, a2);
  sub_268CD9D30(v17);
  if (v15)
  {

    v9 = v12 + OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_name;
    v10 = sub_268F9A9C4();
    a3[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v9);
  }

  else
  {

    v16[0] = sub_268F9AEF4();
    v16[1] = v6;
    v8 = MEMORY[0x26D62DB50](v16[0], v6, a1, a2);
    sub_268CD9D30(v16);
    if (v8)
    {

      v7 = *(v12 + OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_value);
      a3[3] = MEMORY[0x277D839B0];
      *a3 = v7;
    }

    else
    {

      sub_268F508B4(a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_268DD85FC()
{
  sub_268F9B734();
  *v0 = "name";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  *(v0 + 24) = "value";
  *(v0 + 32) = 5;
  *(v0 + 40) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  if (!v4)
  {
    v3 = 0;
LABEL_6:

    return v3;
  }

  if (v4 == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_268DD8730()
{

  v2 = sub_268DD85FC();

  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 & 1;
  }
}

unint64_t sub_268DD88E0()
{
  v2 = qword_2802DCB50;
  if (!qword_2802DCB50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCB50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DD8A2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DD85FC();
  *a2 = result;
  return result;
}

uint64_t sub_268DD8A64@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DD87D4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DD8ABC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268DD8730();
  *a1 = result;
  return result;
}

unint64_t sub_268DD8B18()
{
  v2 = qword_2802DCB58;
  if (!qword_2802DCB58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCB58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DD8BC4(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v8 = sub_268DD8C50(a1);
  if (v6)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_268DD8C50(uint64_t *a1)
{
  v40 = a1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v35 = sub_268F9A9C4();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v39 = v13 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCB60, &qword_268FA06A0);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v45 = v13 - v44;
  v55 = v13 - v44;
  v53 = v2;
  v54 = v1;
  v47 = v2[3];
  v48 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v47);
  sub_268DD8B18();
  v3 = v46;
  sub_268F9B834();
  v49 = v3;
  v50 = v3;
  if (v3)
  {
    v20 = v50;
    v21 = 0;
  }

  else
  {
    v31 = v54;
    v32 = &v52;
    v52 = 0;
    sub_268DD91D4();
    v4 = v49;
    sub_268F9B654();
    v33 = v4;
    v34 = v4;
    if (v4)
    {
      v19 = v34;
      (*(v42 + 8))(v45, v41);
      v20 = v19;
      v21 = 0;
    }

    else
    {
      (*(v36 + 32))(v31 + OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_name, v39, v35);
      v5 = v33;
      v27 = v54;
      v51[46] = 1;
      v6 = sub_268F9B624();
      v28 = v5;
      v29 = v6;
      v30 = v5;
      if (v5)
      {
        v18 = v30;
        (*(v42 + 8))(v45, v41);
        v20 = v18;
        v21 = 1;
      }

      else
      {
        v7 = v40;
        *(v27 + OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_value) = v29 & 1;
        v23 = v51;
        sub_268CDE730(v7, v51);
        v8 = v28;
        v9 = SettingsSetting.init(from:)(v23);
        v24 = v8;
        v25 = v9;
        v26 = v8;
        if (!v8)
        {
          v22 = v25;

          v54 = v22;
          (*(v42 + 8))(v45, v41);
          __swift_destroy_boxed_opaque_existential_0(v40);

          return v22;
        }

        v17 = v26;
        (*(v42 + 8))(v45, v41);
        v20 = v17;
        v21 = 7;
      }
    }
  }

  v16 = v21;
  v15 = v20;
  __swift_destroy_boxed_opaque_existential_0(v40);
  if ((v16 & 4) == 0)
  {
    if (v16)
    {
      (*(v36 + 8))(v54 + OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_name, v35);
    }

    v14 = v54;
    type metadata accessor for SettingsMultiSetting();
    v11 = *(*v14 + 48);
    v12 = *(*v14 + 52);
    swift_deallocPartialClassInstance();
  }

  return v13[1];
}

unint64_t sub_268DD91D4()
{
  v2 = qword_2802DCB68;
  if (!qword_2802DCB68)
  {
    sub_268F9A9C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCB68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DD9254(void *a1)
{
  v31 = a1;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v20 = sub_268F9A9C4();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v24 = v9 - v23;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCB70, qword_268FA06A8);
  v3 = v25;
  v26 = v2;
  v27 = *(v2 - 8);
  v28 = v2 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v30 = v9 - v29;
  v38 = v9 - v29;
  v37 = v4;
  v36 = v1;

  sub_268F50E0C(v31);
  v32 = v3;
  v33 = v3;
  if (v3)
  {
    v10 = v33;

    v11 = v10;
  }

  else
  {

    v14 = v31[3];
    v15 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v14);
    sub_268DD8B18();
    sub_268F9B844();
    (*(v21 + 16))(v24, v19 + OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_name, v20);
    v16 = &v35;
    v35 = 0;
    sub_268DD95FC();
    v5 = v32;
    sub_268F9B6E4();
    v17 = v5;
    v18 = v5;
    if (v5)
    {
      v9[1] = v18;
      (*(v21 + 8))(v24, v20);
      return (*(v27 + 8))(v30, v26);
    }

    else
    {
      (*(v21 + 8))(v24, v20);
      v6 = v17;
      v7 = *(v19 + OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_value);
      v34 = 1;
      sub_268F9B6B4();
      v12 = v6;
      v13 = v6;
      if (v6)
      {
        v9[0] = v13;
      }

      return (*(v27 + 8))(v30, v26);
    }
  }

  return result;
}

unint64_t sub_268DD95FC()
{
  v2 = qword_280FE66A0;
  if (!qword_280FE66A0)
  {
    sub_268F9A9C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66A0);
    return WitnessTable;
  }

  return v2;
}

void sub_268DD967C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268DD96C8(v3);
}

uint64_t sub_268DD973C()
{
  v3 = OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_name;
  v1 = sub_268F9A9C4();
  return (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t sub_268DD97A8()
{
  v3 = SettingsSetting.deinit();
  v2 = OBJC_IVAR____TtC19SiriSettingsIntents20SettingsMultiSetting_name;
  v0 = sub_268F9A9C4();
  (*(*(v0 - 8) + 8))(v3 + v2);
  return v3;
}

uint64_t sub_268DD9828()
{
  v0 = *sub_268DD97A8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_268DD98A8()
{
  v2 = sub_268F9A9C4();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_268DD99A4()
{
  v2 = sub_268F9A9C4();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_268DD9AB0()
{
  v2 = qword_2802DCB98;
  if (!qword_2802DCB98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCB98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DD9B44()
{
  v2 = qword_2802DCBA0;
  if (!qword_2802DCBA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCBA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DD9BD8()
{
  v2 = qword_2802DCBA8;
  if (!qword_2802DCBA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCBA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DD9C54()
{
  type metadata accessor for SetZoomHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1350 = result;
  return result;
}

uint64_t *sub_268DD9CBC()
{
  if (qword_2802DB4B8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1350;
}

uint64_t sub_268DD9D1C()
{
  v1 = *sub_268DD9CBC();

  return v1;
}

uint64_t sub_268DD9D4C(uint64_t a1, void (*a2)(id))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v4);

  sub_268E948B8();
  v6 = sub_268DAB158();

  a2(v6);
  MEMORY[0x277D82BD8](v6);
}

double sub_268DD9EC4()
{
  sub_268F9B284();
  v0 = sub_268DC7AE8();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

id SetTemporalIntentHandler.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for SetTemporalIntentHandler();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id SetTemporalIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetTemporalIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_268DDA224()
{
  type metadata accessor for SetAXBoldTextHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1358 = result;
  return result;
}

uint64_t *sub_268DDA28C()
{
  if (qword_2802DB4C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1358;
}

uint64_t sub_268DDA2EC()
{
  v1 = *sub_268DDA28C();

  return v1;
}

uint64_t sub_268DDA31C(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v7 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v7);
  v9 = *(v3 + 16);

  v10 = sub_268D3E4E4();

  v5 = sub_268DBD074();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268DDA540, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268DDA540);
}

uint64_t sub_268DDA4D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3E514();
}

uint64_t sub_268DDA58C()
{
  result = sub_268F9AEF4();
  qword_280FE8360 = result;
  qword_280FE8368 = v1;
  return result;
}

uint64_t *sub_268DDA5D0()
{
  if (qword_280FE64B8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8360;
}

uint64_t sub_268DDA630()
{
  v0 = sub_268DDA5D0();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268DDA66C()
{
  result = sub_268F9AEF4();
  qword_2802F1360 = result;
  qword_2802F1368 = v1;
  return result;
}

uint64_t *sub_268DDA6B0()
{
  if (qword_2802DB4D0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1360;
}

uint64_t sub_268DDA710()
{
  v0 = sub_268DDA6B0();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268DDA74C()
{
  result = sub_268F9AEF4();
  qword_2802F1370 = result;
  qword_2802F1378 = v1;
  return result;
}

uint64_t *sub_268DDA790()
{
  if (qword_2802DB4D8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1370;
}

uint64_t sub_268DDA7F0()
{
  v0 = sub_268DDA790();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268DDA82C()
{
  result = sub_268F9AEF4();
  qword_2802F1380 = result;
  qword_2802F1388 = v1;
  return result;
}

uint64_t *sub_268DDA870()
{
  if (qword_2802DB4E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1380;
}

uint64_t sub_268DDA8D0()
{
  v0 = sub_268DDA870();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268DDA90C()
{
  result = sub_268F9AEF4();
  qword_2802F1390 = result;
  qword_2802F1398 = v1;
  return result;
}

uint64_t *sub_268DDA950()
{
  if (qword_2802DB4E8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1390;
}

uint64_t sub_268DDA9B0()
{
  v0 = sub_268DDA950();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268DDA9EC()
{
  result = sub_268F9AEF4();
  qword_2802F13A0 = result;
  qword_2802F13A8 = v1;
  return result;
}

uint64_t *sub_268DDAA30()
{
  if (qword_2802DB4F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F13A0;
}

uint64_t sub_268DDAA90()
{
  v0 = sub_268DDAA30();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268DDAACC()
{
  result = sub_268F9AEF4();
  qword_2802F13B0 = result;
  qword_2802F13B8 = v1;
  return result;
}

uint64_t *sub_268DDAB10()
{
  if (qword_2802DB4F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F13B0;
}

uint64_t sub_268DDAB70()
{
  v0 = sub_268DDAB10();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268DDABAC()
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCC10, qword_268FA0980);
  sub_268F9B734();
  v8 = v0;
  v5 = *(v11 + 48);
  v4 = *MEMORY[0x277D5E798];
  v9 = *(*(sub_268F9A144() - 8) + 104);
  (v9)(v8, v4);
  *(v8 + v5) = 2;
  v7 = *(*(v11 - 8) + 72);
  v6 = *(v11 + 48);
  v1 = *MEMORY[0x277D5E7B0];
  v9();
  *(v8 + v7 + v6) = 3;
  v10 = *(v11 + 48);
  v2 = *MEMORY[0x277D5E7B8];
  v9();
  *(v8 + 2 * v7 + v10) = 1;
  sub_268CD0F7C();
  type metadata accessor for INBoundedSettingValue();
  sub_268DDAD84();
  result = sub_268F9ADA4();
  qword_2802F13C0 = result;
  return result;
}

unint64_t sub_268DDAD84()
{
  v2 = qword_2802DCC18;
  if (!qword_2802DCC18)
  {
    sub_268F9A144();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCC18);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268DDAE04()
{
  if (qword_2802DB500 != -1)
  {
    swift_once();
  }

  return &qword_2802F13C0;
}

uint64_t sub_268DDAE64()
{
  v1 = *sub_268DDAE04();

  return v1;
}

uint64_t sub_268DDAE94()
{
  v7 = sub_268F9B734();
  v6 = v0;
  *v0 = sub_268E16100();
  v6[1] = v1;
  v6[2] = sub_268E16100();
  v6[3] = v2;
  v3 = sub_268E16100();
  result = v7;
  v6[4] = v3;
  v6[5] = v5;
  sub_268CD0F7C();
  qword_280FE8370 = v7;
  return result;
}

uint64_t *sub_268DDAF28()
{
  if (qword_280FE64C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8370;
}

uint64_t sub_268DDAF88()
{
  v1 = *sub_268DDAF28();

  return v1;
}

uint64_t sub_268DDAFB8()
{
  v7 = sub_268F9B734();
  v6 = v0;
  *v0 = sub_268E16100();
  v6[1] = v1;
  v6[2] = sub_268E16100();
  v6[3] = v2;
  v3 = sub_268E16100();
  result = v7;
  v6[4] = v3;
  v6[5] = v5;
  sub_268CD0F7C();
  qword_280FE8380 = v7;
  return result;
}

uint64_t *sub_268DDB04C()
{
  if (qword_280FE64E0 != -1)
  {
    swift_once();
  }

  return &qword_280FE8380;
}

uint64_t sub_268DDB0AC()
{
  v1 = *sub_268DDB04C();

  return v1;
}

uint64_t sub_268DDB0DC()
{
  v5 = sub_268F9B734();
  v4 = v0;
  v1 = sub_268E16100();
  result = v5;
  *v4 = v1;
  v4[1] = v3;
  sub_268CD0F7C();
  qword_2802F13C8 = v5;
  return result;
}

uint64_t *sub_268DDB148()
{
  if (qword_2802DB508 != -1)
  {
    swift_once();
  }

  return &qword_2802F13C8;
}

uint64_t sub_268DDB1A8()
{
  v1 = *sub_268DDB148();

  return v1;
}

uint64_t sub_268DDB1D8()
{
  v10 = sub_268F9B734();
  v9 = v0;
  *v0 = sub_268E16100();
  v9[1] = v1;
  v9[2] = sub_268E16100();
  v9[3] = v2;
  v9[4] = sub_268E16100();
  v9[5] = v3;
  v9[6] = sub_268E16100();
  v9[7] = v4;
  v9[8] = sub_268E16100();
  v9[9] = v5;
  v6 = sub_268E16100();
  result = v10;
  v9[10] = v6;
  v9[11] = v8;
  sub_268CD0F7C();
  qword_2802F13D0 = v10;
  return result;
}

uint64_t *sub_268DDB2A8()
{
  if (qword_2802DB510 != -1)
  {
    swift_once();
  }

  return &qword_2802F13D0;
}

uint64_t sub_268DDB308()
{
  v1 = *sub_268DDB2A8();

  return v1;
}

uint64_t sub_268DDB338()
{
  v16 = sub_268F9B734();
  v15 = v0;
  *v0 = BinarySettingIdentifier.rawValue.getter();
  v15[1] = v1;
  v15[2] = BinarySettingIdentifier.rawValue.getter();
  v15[3] = v2;
  v15[4] = BinarySettingIdentifier.rawValue.getter();
  v15[5] = v3;
  v15[6] = BinarySettingIdentifier.rawValue.getter();
  v15[7] = v4;
  v15[8] = BinarySettingIdentifier.rawValue.getter();
  v15[9] = v5;
  v15[10] = BinarySettingIdentifier.rawValue.getter();
  v15[11] = v6;
  v15[12] = BinarySettingIdentifier.rawValue.getter();
  v15[13] = v7;
  v15[14] = BinarySettingIdentifier.rawValue.getter();
  v15[15] = v8;
  v15[16] = BinarySettingIdentifier.rawValue.getter();
  v15[17] = v9;
  v15[18] = BinarySettingIdentifier.rawValue.getter();
  v15[19] = v10;
  v15[20] = BinarySettingIdentifier.rawValue.getter();
  v15[21] = v11;
  v12 = BinarySettingIdentifier.rawValue.getter();
  result = v16;
  v15[22] = v12;
  v15[23] = v14;
  sub_268CD0F7C();
  qword_2802F13D8 = v16;
  return result;
}

uint64_t *sub_268DDB4E8()
{
  if (qword_2802DB518 != -1)
  {
    swift_once();
  }

  return &qword_2802F13D8;
}

uint64_t sub_268DDB548()
{
  v1 = *sub_268DDB4E8();

  return v1;
}

uint64_t sub_268DDB578()
{
  v5 = *sub_268DDB4E8();

  sub_268F9B734();
  v4 = v0;
  *v0 = BinarySettingIdentifier.rawValue.getter();
  v4[1] = v1;
  v4[2] = BinarySettingIdentifier.rawValue.getter();
  v4[3] = v2;
  sub_268CD0F7C();
  v6 = sub_268F9B024();

  result = v6;
  qword_2802F13E0 = v6;
  return result;
}

uint64_t *sub_268DDB650()
{
  if (qword_2802DB520 != -1)
  {
    swift_once();
  }

  return &qword_2802F13E0;
}

uint64_t sub_268DDB6B0()
{
  v1 = sub_268DDB650();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t sub_268DDB708(uint64_t a1)
{
  v3 = sub_268DDB650();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_268DDB77C()
{
  v5 = sub_268F9B734();
  v4 = v0;
  v1 = sub_268E16100();
  result = v5;
  *v4 = v1;
  v4[1] = v3;
  sub_268CD0F7C();
  qword_280FE8378 = v5;
  return result;
}

uint64_t *sub_268DDB7E8()
{
  if (qword_280FE64D8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8378;
}

uint64_t sub_268DDB848()
{
  v1 = *sub_268DDB7E8();

  return v1;
}

uint64_t sub_268DDB88C()
{
  type metadata accessor for SetSmartSiriVolumeHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F13E8 = result;
  return result;
}

uint64_t *sub_268DDB8F4()
{
  if (qword_2802DB530 != -1)
  {
    swift_once();
  }

  return &qword_2802F13E8;
}

uint64_t sub_268DDB954()
{
  v1 = *sub_268DDB8F4();

  return v1;
}

uint64_t sub_268DDB984(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v18);
  v21 = *sub_268E50B9C();

  v20 = [a1 settingMetadata];
  v22 = sub_268E50C88(v20);
  MEMORY[0x277D82BD8](v20);

  if (v22)
  {
    v4 = sub_268DC7AE8();
    v13 = *v4;
    MEMORY[0x277D82BE0](*v4);
    sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v13);

    sub_268CD795C();
    v14 = sub_268CD42AC(7, 0);
    a2();
    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v7 = *(v17 + 16);

    v8 = sub_268D44174();

    v6 = sub_268DBE7C4();
    v9 = *v6;
    v10 = v6[1];
    v11 = *(v6 + 16);
    v12 = *(v17 + 24);

    sub_268DAAB84(v8 & 1, a1, v9, v10, v11, v12 & 1, a2, a3, sub_268DDBD18, v17, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268DDBD18);
  }
}

uint64_t sub_268DDBC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D44270();
}

uint64_t sub_268DDBD40()
{
  v2 = *(v0 + qword_2802DCC20);

  return v2;
}

uint64_t sub_268DDBD74()
{
  v2 = *(v0 + qword_2802DCC28);

  return v2;
}

uint64_t sub_268DDBDA8()
{
  v2 = *(v0 + qword_2802DCC30);

  return v2;
}

uint64_t sub_268DDBDDC()
{
  v2 = *(v0 + qword_2802DCC38);
  v3 = *(v0 + qword_2802DCC38 + 8);

  return v2;
}

uint64_t sub_268DDBE20()
{
  v2 = *(v0 + qword_2802DCC40);

  return v2;
}

uint64_t sub_268DDBE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_268DDBEC8(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268DDBEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  *qword_2802DCC20 = a1;

  *qword_2802DCC28 = a2;

  *qword_2802DCC30 = a3;

  v6 = qword_2802DCC38;
  *qword_2802DCC38 = a4;
  *(v6 + 8) = a5;

  *qword_2802DCC40 = a6;
  v14 = sub_268F99B04();

  return v14;
}

uint64_t sub_268DDC048(uint64_t a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v101 = 0;
  v98 = 0;
  v96 = 0;
  v86 = 0;
  v85 = 0;
  v80 = 0;
  v106 = a1;
  v105 = a2;
  v104 = a3;
  v102 = a4;
  v103 = a5;
  v5 = sub_268DC7F68();
  v73 = *v5;
  MEMORY[0x277D82BE0](*v5);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v72 = v6;
  MEMORY[0x277D82BE0](a3);
  v72[3] = sub_268CDD0DC();
  v72[4] = sub_268DDD064();
  *v72 = a3;
  sub_268CD0F7C();
  sub_268F9AC04();

  v100 = [a3 code];
  v99 = 3;
  type metadata accessor for INGetSettingIntentResponseCode();
  sub_268DDD0E4();
  if (sub_268F9B754())
  {
    v68 = [a2 settingMetadata];
    if (v68)
    {
      v65 = [v68 settingId];
      v66._countAndFlagsBits = sub_268F9AE24();
      v66._object = v8;
      MEMORY[0x277D82BD8](v68);
      *&v7 = MEMORY[0x277D82BD8](v65).n128_u64[0];
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    if (v67._object)
    {
      v98 = v67;
      v64 = [a3 settingResponseDatas];
      if (v64)
      {
        sub_268CDD140();
        v62 = sub_268F9B014();
        MEMORY[0x277D82BD8](v64);
        v63 = v62;
      }

      else
      {
        v63 = 0;
      }

      v97 = v63;
      if (v63)
      {
        sub_268CDD140();
        sub_268F9B094();
        sub_268CD7930(&v97);
        v61 = v75;
      }

      else
      {
        sub_268CD7930(&v97);
        v61 = 0;
      }

      if (v61)
      {
        v96 = v61;
        v60 = *(v71 + qword_2802DCC20);

        BinarySettingIdentifier.init(rawValue:)(v67);
        v93 = v94;
        if (v94 == 65)
        {
          v95 = 33;
        }

        else
        {
          v95 = v93;
        }

        v92 = v95;
        sub_268D34FD4();
        v91 = [v61 binaryValue];
        v90 = 1;
        type metadata accessor for INBinarySettingValue();
        sub_268CD925C();
        v9 = sub_268F9B754();
        v58 = sub_268DDD164(v9 & 1);
        v59 = sub_268E57258(&v92, v58);
        MEMORY[0x277D82BD8](v58);

        if (v59)
        {

          sub_268D34954();
          v57 = sub_268F9B734();
          v56 = v10;
          MEMORY[0x277D82BE0](v59);
          *v56 = v59;
          sub_268CD0F7C();
          a4();
          sub_268DADA74(v57, 0);

          MEMORY[0x277D82BD8](v59);
          MEMORY[0x277D82BD8](v61);
        }

        v55 = [v61 numericValue];
        if (v55)
        {
          v53 = [v55 value];
          MEMORY[0x277D82BD8](v55);
          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        if (v54)
        {
          v80 = v54;
          v52 = *(v71 + qword_2802DCC20);

          NumericSettingIdentifier.init(rawValue:)(v67);
          v77 = v78;
          if (v78 == 13)
          {
            v79 = 5;
          }

          else
          {
            v79 = v77;
          }

          v76 = v79;
          v51 = sub_268E574DC(&v76);

          if (v51)
          {

            sub_268D34954();
            v50 = sub_268F9B734();
            v49 = v12;
            MEMORY[0x277D82BE0](v51);
            *v49 = v51;
            sub_268CD0F7C();
            a4();
            sub_268DADA74(v50, 0);

            MEMORY[0x277D82BD8](v51);
            MEMORY[0x277D82BD8](v54);
            MEMORY[0x277D82BD8](v61);
          }

          MEMORY[0x277D82BD8](v54);
        }

        if (!sub_268F288D0(v67._countAndFlagsBits, v67._object))
        {
          goto LABEL_52;
        }

        v47 = *(v71 + qword_2802DCC40);

        v48 = sub_268F23C10();

        if (v48)
        {
          v13 = sub_268F42038();
          v43 = *v13;
          v44 = v13[1];

          v45 = sub_268F9AE14();

          v46 = [v48 valueForKey_];
          MEMORY[0x277D82BD8](v45);
          MEMORY[0x277D82BD8](v48);
          if (v46)
          {
            sub_268F9B404();
            sub_268D55CF0(v81, &v82);
            swift_unknownObjectRelease();
          }

          else
          {
            v82 = 0uLL;
            v83 = 0uLL;
          }

          v88 = v82;
          v89 = v83;
        }

        else
        {
          v88 = 0uLL;
          v89 = 0uLL;
        }

        if (*(&v89 + 1))
        {
          v42 = (swift_dynamicCast() & 1) != 0 ? v84 & 1 : 2;
          v41 = v42;
        }

        else
        {
          sub_268D28414(&v88);
          v41 = 2;
        }

        v87 = v41;
        v40 = v41 == 2 ? 0 : v87;
        v86 = v40 & 1;
        v38 = *(v71 + qword_2802DCC40);

        v39 = sub_268F23C10();

        if (v39)
        {
          v14 = sub_268F42038();
          v35 = *v14;
          v36 = v14[1];

          v37 = sub_268F9AE14();

          [v39 removeObjectForKey_];
          MEMORY[0x277D82BD8](v37);
          MEMORY[0x277D82BD8](v39);
        }

        if ((v40 & 1) == 0)
        {
          goto LABEL_52;
        }

        v33 = *(v71 + qword_2802DCC28);

        v32 = *(v71 + qword_2802DCC30);

        v30 = *(v71 + qword_2802DCC38);
        v31 = *(v71 + qword_2802DCC38 + 8);

        v34 = sub_268F36E44(v32, v30, v31);

        if (v34)
        {
          v85 = v34;
          v15 = sub_268DC7F68();
          v27 = *v15;
          MEMORY[0x277D82BE0](*v15);
          sub_268F9B274();
          sub_268F9B734();
          sub_268F9AC04();

          MEMORY[0x277D82BD8](v27);

          sub_268D34954();
          v29 = sub_268F9B734();
          v28 = v16;
          MEMORY[0x277D82BE0](v34);
          *v28 = v34;
          sub_268CD0F7C();
          a4();
          sub_268DADA74(v29, 0);

          MEMORY[0x277D82BD8](v34);
          MEMORY[0x277D82BD8](v61);
        }

        else
        {
LABEL_52:

          sub_268D34954();
          v26 = sub_268F9B734();
          a4();
          sub_268DADA74(v26, 0);

          MEMORY[0x277D82BD8](v61);
        }
      }

      else
      {
        v17 = sub_268DC7F68();
        v24 = *v17;
        MEMORY[0x277D82BE0](*v17);
        sub_268F9B274();
        sub_268F9B734();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v24);

        sub_268D34954();
        v25 = sub_268F9B734();
        a4();
        sub_268DADA74(v25, 0);
      }
    }

    else
    {
      v18 = sub_268DC7F68();
      v22 = *v18;
      MEMORY[0x277D82BE0](*v18);
      sub_268F9B274();
      sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v22);

      sub_268D34954();
      v23 = sub_268F9B734();
      a4();
      sub_268DADA74(v23, 0);
    }
  }

  else
  {
    v19 = sub_268DC7F68();
    v20 = *v19;
    MEMORY[0x277D82BE0](*v19);
    sub_268F9B274();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v20);

    sub_268D34954();
    v21 = sub_268F9B734();
    a4();
    sub_268DADA74(v21, 0);
  }
}

unint64_t sub_268DDD064()
{
  v2 = qword_2802DCC48;
  if (!qword_2802DCC48)
  {
    sub_268CDD0DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCC48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DDD0E4()
{
  v2 = qword_2802DCC50;
  if (!qword_2802DCC50)
  {
    type metadata accessor for INGetSettingIntentResponseCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCC50);
    return WitnessTable;
  }

  return v2;
}

void sub_268DDD1A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = sub_268DC7F68();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v12);
  v17 = *(v3 + qword_2802DCC28);

  v16 = *(v13 + qword_2802DCC30);

  v14 = *(v13 + qword_2802DCC38);
  v15 = *(v13 + qword_2802DCC38 + 8);

  v18 = sub_268F36E44(v16, v14, v15);

  if (v18)
  {

    sub_268D34954();
    v10 = sub_268F9B734();
    v9 = v5;
    MEMORY[0x277D82BE0](v18);
    *v9 = v18;
    sub_268CD0F7C();
    a3();
    sub_268DADA74(v10, 0);

    MEMORY[0x277D82BD8](v18);
  }

  else
  {
    v6 = sub_268DC7F68();
    v7 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B274();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v7);

    sub_268D34954();
    v8 = sub_268F9B734();
    a3();
    sub_268DADA74(v8, 0);
  }
}

void sub_268DDD4C4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268DDD500(v3);
}

uint64_t sub_268DDD568()
{
  v1 = *(v0 + qword_2802DCC20);

  v2 = *(v0 + qword_2802DCC28);

  v3 = *(v0 + qword_2802DCC30);

  sub_268CD9D30(v0 + qword_2802DCC38);
  v4 = *(v0 + qword_2802DCC40);
}

uint64_t sub_268DDD5E4()
{
  v5 = sub_268F99B14();
  v0 = *(v5 + qword_2802DCC20);

  v1 = *(v5 + qword_2802DCC28);

  v2 = *(v5 + qword_2802DCC30);

  sub_268CD9D30(v5 + qword_2802DCC38);
  v3 = *(v5 + qword_2802DCC40);

  return v5;
}

uint64_t type metadata accessor for GetSettingAceViewProvider()
{
  v1 = qword_2802DCC58;
  if (!qword_2802DCC58)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268DDD72C()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

id SettingIntent.deviceCategory.getter(uint64_t a1, uint64_t a2)
{
  v6 = (*(a2 + 24))();
  if (!v6)
  {
    return 0;
  }

  v5 = [v6 targetDevice];
  MEMORY[0x277D82BD8](v6);
  if (!v5)
  {
    return 0;
  }

  v3 = [v5 deviceCategory];
  MEMORY[0x277D82BD8](v5);
  return v3;
}

uint64_t SettingIntent.settingIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v6 = (*(a2 + 24))();
  if (!v6)
  {
    return 0;
  }

  v3 = [v6 settingId];
  v4 = sub_268F9AE24();
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_268DDDA20@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SettingIntentHandlerProvider.NoOpHandler();
  result = sub_268CDA260();
  a1[3] = v2;
  a1[4] = &protocol witness table for SettingIntentHandlerProvider.NoOpHandler;
  *a1 = result;
  return result;
}

id sub_268DDDB94()
{
  MEMORY[0x277D82BE0](v0);
  v2 = [v0 settingMetadata];
  MEMORY[0x277D82BD8](v0);
  return v2;
}

uint64_t sub_268DDDBF8(double a1, double a2)
{
  v7 = [v2 boundedValue];
  if (v7 == 1)
  {
    return *&a1;
  }

  if (v7 == 2)
  {
    return 0x3FE0000000000000;
  }

  if (v7 == 3)
  {
    return *&a2;
  }

  return 0;
}

unint64_t sub_268DDDD98()
{
  v2 = qword_2802DCC68;
  if (!qword_2802DCC68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCC68);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SettingsFeatureFlagsImpl(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for SettingsFeatureFlagsImpl(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_268DDE2BC()
{
  v2 = qword_2802DCC70;
  if (!qword_2802DCC70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCC70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DDE350(uint64_t a1, void (*a2)(void))
{

  sub_268CDD0DC();
  v4 = sub_268CD42AC(6, 0);
  a2();
  MEMORY[0x277D82BD8](v4);
}

uint64_t sub_268DDE3FC(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268D82A48;

  return sub_268DDE4C0(a1);
}

uint64_t sub_268DDE4C0(uint64_t a1)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268DDE50C, 0);
}

uint64_t sub_268DDE50C()
{
  *(v0 + 16) = v0;
  sub_268CDD0DC();
  v1 = sub_268CD42AC(6, 0);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2(v1);
}

uint64_t *sub_268DDE5B4()
{
  if (qword_280FE55C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8238;
}

id sub_268DDE614()
{
  type metadata accessor for GetIntentHandler();
  result = sub_268DDE670();
  qword_280FE8238 = result;
  return result;
}

uint64_t sub_268DDE698()
{
  v0 = sub_268DDE5B4();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268DDE6D8()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_confirmationConfigProvider);

  return v2;
}

uint64_t sub_268DDE718()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCC88, &qword_268FA0D80);
  sub_268F9B734();
  v135 = v0;
  *v0 = sub_268E7C600();
  v135[1] = v1;
  v66 = *sub_268F868A8();

  v135[5] = type metadata accessor for GetAirplaneModeHandler();
  v135[6] = &off_287998510;
  v135[2] = v66;
  v135[7] = sub_268E7C600();
  v135[8] = v2;
  v67 = *sub_268E65D24();

  AppearanceHandler = type metadata accessor for GetAppearanceHandler();
  v135[12] = AppearanceHandler;
  v135[13] = &off_287993138;
  v135[9] = v67;
  v135[14] = sub_268E7C600();
  v135[15] = v3;
  v68 = *sub_268E65D24();

  v135[19] = AppearanceHandler;
  v135[20] = &off_287993138;
  v135[16] = v68;
  v135[21] = sub_268E7C600();
  v135[22] = v4;
  v70 = *sub_268E65D24();

  v135[26] = AppearanceHandler;
  v135[27] = &off_287993138;
  v135[23] = v70;
  v135[28] = sub_268E7C600();
  v135[29] = v5;
  v71 = *sub_268F85590();

  v135[33] = type metadata accessor for GetAssistiveTouchHandler();
  v135[34] = &off_2879984C0;
  v135[30] = v71;
  v135[35] = sub_268E7C600();
  v135[36] = v6;
  v72 = *sub_268DACD68();

  v135[40] = type metadata accessor for GetAutoAnswerHandler();
  v135[41] = &off_28798E128;
  v135[37] = v72;
  v135[42] = sub_268E7C600();
  v135[43] = v7;
  v73 = *sub_268DB3B9C();

  v135[47] = type metadata accessor for GetAXAutoBrightnessHandler();
  v135[48] = &off_28798E790;
  v135[44] = v73;
  v135[49] = sub_268E7C600();
  v135[50] = v8;
  v74 = *sub_268F335A0();

  v135[54] = type metadata accessor for GetAutoCorrectHandler();
  v135[55] = &off_287995DC8;
  v135[51] = v74;
  v135[56] = sub_268E7C600();
  v135[57] = v9;
  v75 = *sub_268E96570();

  BassReduceHandler = type metadata accessor for GetBassReduceHandler();
  v135[61] = BassReduceHandler;
  v135[62] = &off_287993FD0;
  v135[58] = v75;
  v135[63] = sub_268E7C600();
  v135[64] = v10;
  v77 = *sub_268E96570();

  v135[68] = BassReduceHandler;
  v135[69] = &off_287993FD0;
  v135[65] = v77;
  v135[70] = sub_268E7C600();
  v135[71] = v11;
  v78 = *sub_268CDC618();

  v135[75] = type metadata accessor for GetBluetoothHandler();
  v135[76] = &off_28798C030;
  v135[72] = v78;
  v135[77] = sub_268E7C600();
  v135[78] = v12;
  v79 = *sub_268F525C8();

  v135[82] = type metadata accessor for GetAXColorFiltersBlueYellowHandler();
  v135[83] = &off_287997010;
  v135[79] = v79;
  v135[84] = sub_268E7C600();
  v135[85] = v13;
  v80 = *sub_268E15B2C();

  v135[89] = type metadata accessor for GetAXBoldTextHandler();
  v135[90] = &off_2879911E8;
  v135[86] = v80;
  v135[91] = sub_268E7C600();
  v135[92] = v14;
  v81 = *sub_268DB4694();

  v135[96] = type metadata accessor for GetAXButtonShapesHandler();
  v135[97] = &off_28798E7D8;
  v135[93] = v81;
  v135[98] = sub_268E7C600();
  v135[99] = v15;
  v82 = *sub_268E05278();

  v135[103] = type metadata accessor for GetCellularDataHandler();
  v135[104] = &off_287990E08;
  v135[100] = v82;
  v135[105] = sub_268E7C600();
  v135[106] = v16;
  v83 = *sub_268E5DFD8();

  v135[110] = type metadata accessor for GetAXClassicInvertColorsHandler();
  v135[111] = &off_287993020;
  v135[107] = v83;
  v135[112] = sub_268E7C600();
  v135[113] = v17;
  v84 = *sub_268E7E854();

  v135[117] = type metadata accessor for GetAXColorFiltersColorTintHandler();
  v135[118] = &off_287993A10;
  v135[114] = v84;
  v135[119] = sub_268E7C600();
  v135[120] = v18;
  v85 = *sub_268CDD738();

  v135[124] = type metadata accessor for GetConversationAwarenessHandler();
  v135[125] = &off_28798C0A8;
  v135[121] = v85;
  v135[126] = sub_268E7C600();
  v135[127] = v19;
  v86 = *sub_268DE1A10();

  v135[131] = type metadata accessor for GetDictationHandler();
  v135[132] = &off_28798FA18;
  v135[128] = v86;
  v135[133] = sub_268E7C600();
  v135[134] = v20;
  v87 = *sub_268F6B88C();

  v135[138] = type metadata accessor for GetAXDifferentiateWithoutColorHandler();
  v135[139] = &off_287997850;
  v135[135] = v87;
  v135[140] = sub_268E7C600();
  v135[141] = v21;
  v88 = *sub_268D8CF88();

  v135[145] = type metadata accessor for GetFlashlightHandler();
  v135[146] = &off_28798CF58;
  v135[142] = v88;
  v135[147] = sub_268E7C600();
  v135[148] = v22;
  v89 = *sub_268DB35C8();

  v135[152] = type metadata accessor for GetAXColorFiltersGrayscaleHandler();
  v135[153] = &off_28798E768;
  v135[149] = v89;
  v135[154] = sub_268E7C600();
  v135[155] = v23;
  v90 = *sub_268F4180C();

  v135[159] = type metadata accessor for GetAXColorFiltersGreenRedHandler();
  v135[160] = &off_287996628;
  v135[156] = v90;
  v135[161] = sub_268E7C600();
  v135[162] = v24;
  v91 = *sub_268E05A08();

  v135[166] = type metadata accessor for GetHeySiriHandler();
  v135[167] = &off_287990E30;
  v135[163] = v91;
  v135[168] = sub_268E7C600();
  v135[169] = v25;
  v92 = *sub_268DD6FF4();

  v135[173] = type metadata accessor for GetAXIncreaseContrastHandler();
  v135[174] = &off_28798F780;
  v135[170] = v92;
  v135[175] = sub_268E7C600();
  v135[176] = v26;
  v93 = *sub_268F59050();

  v135[180] = type metadata accessor for GetAXInvertColorsHandler();
  v135[181] = &off_287997168;
  v135[177] = v93;
  v135[182] = sub_268E7C600();
  v135[183] = v27;
  v94 = *sub_268F43B40();

  v135[187] = type metadata accessor for GetLocationServicesHandler();
  v135[188] = &off_2879966C8;
  v135[184] = v94;
  v135[189] = sub_268E7C600();
  v135[190] = v28;
  v95 = *sub_268DB2F6C();

  v135[194] = type metadata accessor for GetNightShiftHandler();
  v135[195] = &off_28798E740;
  v135[191] = v95;
  v135[196] = sub_268E7C600();
  v135[197] = v29;
  v96 = *sub_268F58714();

  v135[201] = type metadata accessor for GetAXOnOffLabelsHandler();
  v135[202] = &off_287997118;
  v135[198] = v96;
  v135[203] = sub_268E7C600();
  v135[204] = v30;
  v97 = *sub_268F85BFC();

  PersonalHotspotHandler = type metadata accessor for GetPersonalHotspotHandler();
  v135[208] = PersonalHotspotHandler;
  v135[209] = &off_2879984E8;
  v135[205] = v97;
  v135[210] = sub_268E7C600();
  v135[211] = v31;
  v99 = *sub_268F85BFC();

  v135[215] = PersonalHotspotHandler;
  v135[216] = &off_2879984E8;
  v135[212] = v99;
  v135[217] = sub_268E7C600();
  v135[218] = v32;
  v100 = *sub_268DE395C();

  v135[222] = type metadata accessor for GetPersonalizedVolumeHandler();
  v135[223] = &off_28798FA78;
  v135[219] = v100;
  v135[224] = sub_268E7C600();
  v135[225] = v33;
  v101 = *sub_268E40E14();

  v135[229] = type metadata accessor for GetLowPowerModeHandler();
  v135[230] = &off_287992158;
  v135[226] = v101;
  v135[231] = sub_268E7C600();
  v135[232] = v34;
  v102 = *sub_268DAF620();

  v135[236] = type metadata accessor for GetAXColorFiltersRedGreenHandler();
  v135[237] = &off_28798E1C8;
  v135[233] = v102;
  v135[238] = sub_268E7C600();
  v135[239] = v35;
  v103 = *sub_268E8E4E4();

  v135[243] = type metadata accessor for GetAXReduceTransparencyHandler();
  v135[244] = &off_287993D68;
  v135[240] = v103;
  v135[245] = sub_268E7C600();
  v135[246] = v36;
  v104 = *sub_268E8EAB8();

  v135[250] = type metadata accessor for GetAXReduceWhitePointHandler();
  v135[251] = &off_287993D90;
  v135[247] = v104;
  v135[252] = sub_268E7C600();
  v135[253] = v37;
  v105 = *sub_268E41D2C();

  v135[257] = type metadata accessor for GetSiriHandler();
  v135[258] = &off_2879921A0;
  v135[254] = v105;
  v135[259] = sub_268E7C600();
  v135[260] = v38;
  v106 = *sub_268F52F04();

  v135[264] = type metadata accessor for GetSmartSiriVolumeHandler();
  v135[265] = &off_287997060;
  v135[261] = v106;
  v135[266] = sub_268E7C600();
  v135[267] = v39;
  v107 = *sub_268EC5C48();

  v135[271] = type metadata accessor for GetAnnounceNotificationsHandler();
  v135[272] = &off_287995520;
  v135[268] = v107;
  v135[273] = sub_268E7C600();
  v135[274] = v40;
  v108 = *sub_268E152A8();

  v135[278] = type metadata accessor for GetAXVoiceControlHandler();
  v135[279] = &off_2879911C0;
  v135[275] = v108;
  v135[280] = sub_268E7C600();
  v135[281] = v41;
  v109 = *sub_268DD6834();

  v135[285] = type metadata accessor for GetVoiceOverHandler();
  v135[286] = &off_28798F758;
  v135[282] = v109;
  v135[287] = sub_268E7C600();
  v135[288] = v42;
  v110 = *sub_268E1505C();

  v135[292] = type metadata accessor for GetVpnHandler();
  v135[293] = &off_287991198;
  v135[289] = v110;
  v135[294] = sub_268E7C600();
  v135[295] = v43;
  v111 = *sub_268E89A1C();

  v135[299] = type metadata accessor for GetWifiHandler();
  v135[300] = &off_287993B68;
  v135[296] = v111;
  v135[301] = sub_268E7C600();
  v135[302] = v44;
  v112 = *sub_268E90F44();

  v135[306] = type metadata accessor for GetZoomHandler();
  v135[307] = &off_287993DE0;
  v135[303] = v112;
  v135[308] = sub_268E7C600();
  v135[309] = v45;
  v113 = *sub_268F41DE0();

  v135[313] = type metadata accessor for GetShakeMouseHandler();
  v135[314] = &off_287996650;
  v135[310] = v113;
  v135[315] = sub_268E7C600();
  v135[316] = v46;
  v114 = *sub_268F42098();

  FocusModeHandler = type metadata accessor for GetFocusModeHandler();
  v135[320] = FocusModeHandler;
  v135[321] = &off_287996678;
  v135[317] = v114;
  v135[322] = sub_268E7C600();
  v135[323] = v47;
  v115 = *sub_268F42098();

  v135[327] = FocusModeHandler;
  v135[328] = &off_287996678;
  v135[324] = v115;
  v135[329] = sub_268E7C600();
  v135[330] = v48;
  v116 = *sub_268F42098();

  v135[334] = FocusModeHandler;
  v135[335] = &off_287996678;
  v135[331] = v116;
  v135[336] = sub_268E7C600();
  v135[337] = v49;
  v117 = *sub_268F42098();

  v135[341] = FocusModeHandler;
  v135[342] = &off_287996678;
  v135[338] = v117;
  v135[343] = sub_268E7C600();
  v135[344] = v50;
  v118 = *sub_268F42098();

  v135[348] = FocusModeHandler;
  v135[349] = &off_287996678;
  v135[345] = v118;
  v135[350] = sub_268E7C600();
  v135[351] = v51;
  v119 = *sub_268F42098();

  v135[355] = FocusModeHandler;
  v135[356] = &off_287996678;
  v135[352] = v119;
  v135[357] = sub_268E7C600();
  v135[358] = v52;
  v120 = *sub_268F42098();

  v135[362] = FocusModeHandler;
  v135[363] = &off_287996678;
  v135[359] = v120;
  v135[364] = sub_268E7C600();
  v135[365] = v53;
  v122 = *sub_268F42098();

  v135[369] = FocusModeHandler;
  v135[370] = &off_287996678;
  v135[366] = v122;
  v135[371] = sub_268E7C600();
  v135[372] = v54;
  v123 = *sub_268E13548();

  NoiseManagementHandler = type metadata accessor for GetNoiseManagementHandler();
  v135[376] = NoiseManagementHandler;
  v135[377] = &off_287991170;
  v135[373] = v123;
  v135[378] = sub_268E7C600();
  v135[379] = v55;
  v124 = *sub_268E13548();

  v135[383] = NoiseManagementHandler;
  v135[384] = &off_287991170;
  v135[380] = v124;
  v135[385] = sub_268E7C600();
  v135[386] = v56;
  v126 = *sub_268E13548();

  v135[390] = NoiseManagementHandler;
  v135[391] = &off_287991170;
  v135[387] = v126;
  v135[392] = sub_268E7C600();
  v135[393] = v57;
  v127 = *sub_268E5C568();

  v135[397] = type metadata accessor for GetAXSwitchControlHandler();
  v135[398] = &off_287992FE0;
  v135[394] = v127;
  v135[399] = sub_268E7C600();
  v135[400] = v58;
  v128 = *sub_268F84A38();

  v135[404] = type metadata accessor for GetStandByHandler();
  v135[405] = &off_287998498;
  v135[401] = v128;
  v135[406] = sub_268E7C600();
  v135[407] = v59;
  v129 = *sub_268EC9C04();

  v135[411] = type metadata accessor for GetReduceLoudSoundsHandler();
  v135[412] = &off_287995648;
  v135[408] = v129;
  v135[413] = sub_268EB01F8();
  v135[414] = v60;
  v130 = *sub_268F69B3C();

  v135[418] = type metadata accessor for GetBatteryHandler();
  v135[419] = &off_287997828;
  v135[415] = v130;
  v135[420] = sub_268EB01F8();
  v135[421] = v61;
  v131 = *sub_268E4DC3C();

  v135[425] = type metadata accessor for GetDisplayBrightnessHandler();
  v135[426] = &off_287992700;
  v135[422] = v131;
  v135[427] = sub_268EB01F8();
  v135[428] = v62;
  v132 = *sub_268EAC798();

  SiriVolumeHandler = type metadata accessor for GetSiriVolumeHandler();
  v135[432] = SiriVolumeHandler;
  v135[433] = &off_287994600;
  v135[429] = v132;
  v135[434] = sub_268EB01F8();
  v135[435] = v63;
  v133 = *sub_268EAC798();

  v135[439] = SiriVolumeHandler;
  v135[440] = &off_287994600;
  v135[436] = v133;
  v135[441] = sub_268EB01F8();
  v135[442] = v64;
  v136 = *sub_268EAC798();

  v135[446] = SiriVolumeHandler;
  v135[447] = &off_287994600;
  v135[443] = v136;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCC90, &qword_268FA0D88);
  result = sub_268F9ADA4();
  qword_280FE55E0 = result;
  return result;
}

uint64_t *sub_268DDFB78()
{
  if (qword_280FE55D0 != -1)
  {
    swift_once();
  }

  return &qword_280FE55E0;
}

uint64_t sub_268DDFBD8()
{
  v1 = *sub_268DDFB78();

  return v1;
}

uint64_t sub_268DDFC10()
{
  v2 = (v0 + OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_settingIdentifierHandlers);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_268DDFC78(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_settingIdentifierHandlers);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

char *sub_268DDFD68()
{
  swift_getObjectType();
  v2 = *sub_268DDFB78();

  v0 = sub_268DDFE14();
  v3 = sub_268DDFE68(v2, v0);
  MEMORY[0x277D82BE0](v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  MEMORY[0x277D82BD8](v3);
  return v3;
}

uint64_t sub_268DDFE14()
{
  v1 = *sub_268F337EC();

  return v1;
}

char *sub_268DDFEAC(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v38 = a1;
  v37 = a2;

  *OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_settingIdentifierHandlers = a1;

  *&v39[OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_confirmationConfigProvider] = a2;
  v36 = 44;
  v8 = sub_268E7C600();
  v7 = v2;
  v6 = *sub_268E8F08C();

  SoundAnalysisHandler = type metadata accessor for GetSoundAnalysisHandler();
  v35 = &off_287993DB8;
  v33 = v6;
  v31 = v8;
  v32 = v7;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCCA0, &unk_268FA0D90);
  sub_268F9ADD4();
  swift_endAccess();
  v30 = 54;
  v11 = sub_268E7C600();
  v10 = v3;
  v9 = *sub_268E57A20();

  BackgroundSoundsHandler = type metadata accessor for GetBackgroundSoundsHandler();
  v29 = &off_287992EF0;
  v27 = v9;
  v25 = v11;
  v26 = v10;
  swift_beginAccess();
  sub_268F9ADD4();
  swift_endAccess();
  v24 = 30;
  v14 = sub_268E7C600();
  v13 = v4;
  v12 = *sub_268E12170();

  AXMotionCuesHandler = type metadata accessor for GetAXMotionCuesHandler();
  v23 = &off_287990FC0;
  v21 = v12;
  v19 = v14;
  v20 = v13;
  swift_beginAccess();
  sub_268F9ADD4();
  swift_endAccess();
  v18.receiver = v39;
  v18.super_class = type metadata accessor for GetIntentHandler();
  v17 = objc_msgSendSuper2(&v18, sel_init);
  MEMORY[0x277D82BE0](v17);
  v39 = v17;

  MEMORY[0x277D82BD8](v39);
  return v17;
}

uint64_t sub_268DE01EC(void *a1, void (*a2)(void), uint64_t a3)
{
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v36 = a1;
  v34 = a2;
  v35 = a3;
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v25 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  v27 = [a1 settingMetadata];
  if (v27)
  {
    v18 = [v27 settingId];
    v19 = sub_268F9AE24();
    v20 = v4;
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v18);
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (v22)
  {
    v31 = v21;
    v32 = v22;
    sub_268DE0918(v21, v22, v29);
    if (v29[3])
    {
      sub_268CDF978(v29, __dst);
      sub_268F9B284();
      v5 = sub_268DC7AE8();
      v15 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B734();
      v14 = v6;
      sub_268CDE730(__dst, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCC90, &qword_268FA0D88);
      v12 = sub_268F9AE64();
      v13 = v7;
      v14[3] = MEMORY[0x277D837D0];
      v14[4] = sub_268CDD224();
      *v14 = v12;
      v14[1] = v13;
      sub_268CD0F7C();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v15);
      v16 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      *(v17 + 24) = a3;
      (*(v16 + 8))(a1, sub_268DE0CD8);

      __swift_destroy_boxed_opaque_existential_0(__dst);
    }

    sub_268D28414(v29);
  }

  v9 = sub_268DC7AE8();
  v10 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268F9B274();
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v10);

  sub_268CDD0DC();
  v11 = sub_268CD42AC(6, 0);
  a2();
  MEMORY[0x277D82BD8](v11);
}

uint64_t sub_268DE06A0(uint64_t a1, void (*a2)(uint64_t))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v9 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v8 = v3;
  MEMORY[0x277D82BE0](a1);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v6 = sub_268F9AE74();
  v7 = v4;
  v8[3] = MEMORY[0x277D837D0];
  v8[4] = sub_268CDD224();
  *v8 = v6;
  v8[1] = v7;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v9);

  a2(a1);
}

uint64_t sub_268DE0918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v33 = v3;

  sub_268DDFC10();
  v30[0] = a1;
  v30[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCC90, &qword_268FA0D88);
  sub_268F9ADC4();
  sub_268CD9D30(v30);
  if (v31[3])
  {
    sub_268CDF978(v31, __dst);

    sub_268F9B284();
    v4 = sub_268DC7AE8();
    v23 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v22 = v5;

    v28 = a1;
    v29 = a2;
    v20 = MEMORY[0x277D837D0];
    v18 = sub_268F9AE84();
    v19 = v6;
    v22[3] = v20;
    v21 = sub_268CDD224();
    v22[4] = v21;
    *v22 = v18;
    v22[1] = v19;
    sub_268CDE730(__dst, v27);
    v7 = sub_268F9AE64();
    v22[8] = v20;
    v22[9] = v21;
    v22[5] = v7;
    v22[6] = v8;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v23);
    sub_268CDE730(__dst, a3);
    return __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    sub_268D28414(v31);

    sub_268F9B284();
    v10 = sub_268DC7AE8();
    v17 = *v10;
    MEMORY[0x277D82BE0](*v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v11;

    v13 = MEMORY[0x277D837D0];
    v14 = sub_268F9AE84();
    v15 = v12;
    v16[3] = v13;
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC14();

    result = MEMORY[0x277D82BD8](v17);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    a3[4] = 0;
  }

  return result;
}

double sub_268DE0CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v23 = a3;
  v21 = v3;
  v4 = sub_268DBC854();
  v15 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 16);
  v5 = sub_268DC7AE8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](v3);

  v17 = a1;
  v18 = v3;
  v19 = a2;
  v20 = a3;
  v14 = MEMORY[0x277D84F78] + 8;
  v6 = sub_268DD2A90();
  sub_268DB944C(v15, v11, v12, v13, v6 & 1, sub_268DE1298, v16, v14, v3);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v3);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

void *sub_268DE0E8C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v25 = 0;
  v34 = a1;
  v33 = a2;
  v31 = a3;
  v32 = a4;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v20 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v20);
  v28 = a1;
  v22 = sub_268D2E630();
  v27._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v22, &protocol witness table for INGetSettingIntent);
  v27._object = v5;
  if (v5)
  {
    rawValue = v27;
  }

  else
  {
    rawValue._countAndFlagsBits = sub_268F9AEF4();
    rawValue._object = v6;
  }

  BinarySettingIdentifier.init(rawValue:)(rawValue);
  v17 = v30;
  if (v30 == 65 || (v25 = v30, v16 = *(a2 + OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_confirmationConfigProvider), , v24 = v17, sub_268F35C24(&v24, v35), , memcpy(__dst, v35, sizeof(__dst)), !__dst[2]))
  {
    sub_268F9B284();
    v8 = sub_268DC7AE8();
    v14 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B734();
    v13 = v9;
    MEMORY[0x277D82BE0](a1);
    v26 = a1;
    sub_268D59CAC();
    v11 = sub_268F9AE74();
    v12 = v10;
    v13[3] = MEMORY[0x277D837D0];
    v13[4] = sub_268CDD224();
    *v13 = v11;
    v13[1] = v12;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v14);

    sub_268CDD0DC();
    v15 = sub_268CD42AC(2, 0);
    a3();
    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    memcpy(v37, __dst, sizeof(v37));
    sub_268CDD0DC();
    v23 = sub_268CD42AC(2, 0);

    (a3)(v23);

    MEMORY[0x277D82BD8](v23);
    return sub_268DD57B4(v37);
  }
}

id sub_268DE13A4(uint64_t a1)
{
  v34 = 0;
  v28 = 0;
  v35 = a1;
  sub_268F9B284();
  v1 = sub_268DC7AE8();
  v24 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v24);
  v31 = a1;
  v26 = sub_268D2E630();
  v30._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v26, &protocol witness table for INGetSettingIntent);
  v30._object = v2;
  if (v2)
  {
    rawValue = v30;
  }

  else
  {
    rawValue._countAndFlagsBits = sub_268F9AEF4();
    rawValue._object = v3;
  }

  BinarySettingIdentifier.init(rawValue:)(rawValue);
  v22 = v33;
  if (v33 == 65 || (v28 = v33, v21 = *(v23 + OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_confirmationConfigProvider), , v27 = v22, sub_268F35C24(&v27, v36), , memcpy(__dst, v36, sizeof(__dst)), !__dst[2]))
  {
    sub_268F9B284();
    v7 = sub_268DC7AE8();
    v14 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B734();
    v13 = v8;
    MEMORY[0x277D82BE0](a1);
    v29 = a1;
    sub_268D59CAC();
    v11 = sub_268F9AE74();
    v12 = v9;
    v13[3] = MEMORY[0x277D837D0];
    v13[4] = sub_268CDD224();
    *v13 = v11;
    v13[1] = v12;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v14);
    sub_268CDD0DC();
    return sub_268CD42AC(2, 0);
  }

  else
  {
    memcpy(v38, __dst, sizeof(v38));
    v4 = sub_268DBC784();
    v17 = *v4;
    v15 = v4[1];
    v16 = *(v4 + 16);
    v5 = sub_268DC7AE8();
    v18 = *v5;
    MEMORY[0x277D82BE0](*v5);
    has_malloc_size = _swift_stdlib_has_malloc_size();
    sub_268DB9934(v17, v15, v16, v18, has_malloc_size & 1);
    MEMORY[0x277D82BD8](v18);
    sub_268CDD0DC();
    v19 = sub_268CD42AC(2, 0);
    MEMORY[0x277D82BE0](v19);
    MEMORY[0x277D82BD8](v19);
    sub_268DD57B4(v38);
    return v19;
  }
}

id sub_268DE17BC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_268DE18D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v10 = (*(a3 + 32) + **(a3 + 32));
  v4 = *(*(a3 + 32) + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v10(a1, a2, a3);
}

uint64_t *sub_268DE1A10()
{
  if (qword_280FE5328 != -1)
  {
    swift_once();
  }

  return &qword_280FE81F0;
}

uint64_t sub_268DE1A70()
{
  type metadata accessor for GetDictationHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81F0 = result;
  return result;
}

uint64_t sub_268DE1AD8()
{
  v1 = *sub_268DE1A10();

  return v1;
}

uint64_t sub_268DE1B08(uint64_t a1, void (*a2)(id))
{
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v4);

  sub_268E948B8();
  v6 = sub_268E41B70();

  a2(v6);
  MEMORY[0x277D82BD8](v6);
}

uint64_t sub_268DE1C68(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v59 = a1;
  v56 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v55 = 0;
  v57 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v58 = v15 - v57;
  v69 = v2;
  v70 = v3;
  sub_268F9AB54();

  v61 = sub_268F9AB44();
  v63 = sub_268F999D4();
  v62 = v63;

  if (!v63)
  {
    v17 = *sub_268DC8E0C();
    v9 = v17;
    v15[1] = sub_268F9B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v18 = 0;
    v16 = sub_268F9B734();
    sub_268F9AC04();

    v27 = v18;
    v28 = v55;
    return v27;
  }

  v54 = v62;
  v52 = v62;
  v68 = v62;
  v49 = 0;
  v50 = sub_268F9AAD4();
  v51 = v50;
  v67 = sub_268F9B734();
  v53 = [v52 appNameMap];
  if (v53)
  {
    v48 = v53;
    v45 = v53;
    v46 = sub_268F9AD84();

    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v66 = v47;
  v44 = v47 != 0;
  v43 = v44;
  sub_268CD7930(&v66);
  if (!v43)
  {
    v30 = v55;
    goto LABEL_15;
  }

  v42 = [v52 appNameMap];
  if (v42)
  {
    v41 = v42;
    v38 = v42;
    v39 = sub_268F9AD84();

    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v37 = v40;
  if (v40)
  {
    v36 = v37;
  }

  else
  {
    LODWORD(v13) = 0;
    v12 = 26;
    v11 = 2;
    sub_268F9B584();
    __break(1u);
  }

  v4 = v55;
  v64 = v36;
  v31 = v15;
  MEMORY[0x28223BE20](v15);
  v32 = &v11;
  v13 = sub_268DE2368;
  v14 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCD10, qword_268FA0FA0);
  v5 = sub_268DE2EAC();
  v7 = sub_268DE25C8(sub_268DE2598, v32, v33, v51, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v6);
  v34 = v4;
  v35 = v7;
  if (!v4)
  {
    v29 = v35;
    sub_268CD7930(&v64);
    v67 = v29;

    v30 = v34;
LABEL_15:
    v26 = v30;
    v19 = 0;
    sub_268F9A974();
    v20 = sub_268F9A964();
    sub_268F9AEB4();
    v8 = sub_268F9A9C4();
    (*(*(v8 - 8) + 56))(v58, 0, 1);
    v22 = sub_268F9A954();
    sub_268D28588(v58);

    v21 = v67;

    v23 = sub_268F9A944();

    v65 = v23;

    v24 = sub_268F9A984();

    v71 = v24;

    sub_268CD7930(&v67);

    v25 = v24;

    v27 = v25;
    v28 = v26;
    return v27;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_268DE2368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v15 = a3;
  v16 = a4;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v9 - v10;
  v28 = MEMORY[0x28223BE20](v12);
  v29 = v4;
  v26 = v5;
  v27 = v6;
  v13 = 0;
  sub_268F9AAC4();
  v14 = sub_268F9AAB4();
  sub_268F9AEB4();
  v19 = sub_268F9A9C4();
  v7 = *(v19 - 8);
  v21 = *(v7 + 56);
  v20 = v7 + 56;
  v17 = 0;
  v18 = 1;
  v21(v22);
  v23 = sub_268F9AA94();
  sub_268D28588(v22);

  sub_268F9AEB4();
  (v21)(v22, v17, v18, v19);
  v24 = sub_268F9AA84();
  sub_268D28588(v22);

  v25 = sub_268F9AAA4();

  return v25;
}

uint64_t sub_268DE253C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  return result;
}

uint64_t sub_268DE25C8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a1;
  v38 = a2;
  v62 = a3;
  v52 = a4;
  v39 = a5;
  v61 = a6;
  v41 = a8;
  v42 = "Fatal error";
  v43 = "Range requires lowerBound <= upperBound";
  v44 = "Swift/Range.swift";
  v45 = "Index out of range";
  v46 = "invalid Collection: count differed in successive traversals";
  v47 = "Swift/ArrayShared.swift";
  v72[3] = a3;
  v72[2] = a4;
  v72[1] = a5;
  v48 = *(a5 - 8);
  v49 = a5 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v51 = &v18 - v50;
  v9 = *(v8 + 8);
  v53 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v53);
  v58 = &v18 - v57;
  v59 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v60 = &v18 - v59;
  v63 = swift_getAssociatedTypeWitness();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v62);
  v67 = &v18 - v66;
  v68 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v69 = &v18 - v68;
  v70 = sub_268F9B1F4();
  if (!v70)
  {
    goto LABEL_24;
  }

  v72[0] = sub_268F9B544();
  v36 = sub_268F9B554();
  sub_268F9B524();
  result = sub_268F9B1E4();
  if (v70 < 0)
  {
    sub_268F9B584();
    __break(1u);
LABEL_24:
    v20 = sub_268F9B034();
    v21 = v40;
    return v20;
  }

  if (!v70)
  {
LABEL_19:
    v26 = v40;
LABEL_20:
    v22 = v26;
    sub_268F9B204();
    v17 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = sub_268F9AE04();
    v23 = *(v64 + 8);
    v24 = v64 + 8;
    v23(v67, v63);
    if ((v25 & 1) == 0)
    {
      sub_268F9B5A4();
      __break(1u);
    }

    v23(v69, v63);
    v19 = v72[0];

    v20 = v19;
    v21 = v22;
    return v20;
  }

  v34 = 0;
  for (i = v40; ; i = v30)
  {
    v32 = i;
    v33 = v34;
    if (v34 < 0 || v33 >= v70)
    {
      goto LABEL_18;
    }

    if (v70 < 0)
    {
      sub_268F9B584();
      __break(1u);
LABEL_18:
      sub_268F9B5A4();
      __break(1u);
      goto LABEL_19;
    }

    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v29 = &v71;
    v28 = sub_268F9B264();
    (*(v55 + 16))(v58);
    v28();
    v16 = v32;
    v37(v58, v51);
    v30 = v16;
    if (v16)
    {
      (*(v55 + 8))(v58, AssociatedTypeWitness);
      (*(v64 + 8))(v69, v63);
      sub_268D287E8(v72);
      (*(v48 + 32))(v41, v51, v39);
      return v27;
    }

    (*(v55 + 8))(v58, AssociatedTypeWitness);
    sub_268F9B534();
    sub_268F9B214();
    if (v31 == v70)
    {
      v26 = v30;
      goto LABEL_20;
    }

    result = v30;
    v34 = v31;
  }

  __break(1u);
  return result;
}

unint64_t sub_268DE2EAC()
{
  v2 = qword_2802DCD18;
  if (!qword_2802DCD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DCD10, qword_268FA0FA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD18);
    return WitnessTable;
  }

  return v2;
}

uint64_t static SirikitApp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v36 = a2;
  v3 = v2;
  v4 = v25;
  v35 = v3;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v43 = sub_268F9A9C4();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v26 = (v41[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v27 = &v11[-v26];
  v28 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v11[-v26]);
  v29 = &v11[-v28];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCD20, qword_268FADE90);
  v30 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v44 = &v11[-v30];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v31 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v32 = &v11[-v31];
  v33 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v11[-v31]);
  v40 = &v11[-v33];
  v34 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v11[-v33]);
  v38 = &v11[-v34];
  v49 = v4;
  v48 = v9;
  v47 = v35;
  sub_268F9A934();
  sub_268F9A934();
  v39 = *(v37 + 48);
  sub_268D2A1F0(v38, v44);
  sub_268D2A1F0(v40, &v44[v39]);
  v45 = v41[6];
  v46 = v41 + 6;
  if (v45(v44, 1, v43) == 1)
  {
    if (v45(&v44[v39], 1, v43) == 1)
    {
      sub_268D28588(v44);
      v24 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    sub_268D2A1F0(v44, v32);
    if (v45(&v44[v39], 1, v43) != 1)
    {
      v20 = v41[4];
      v19 = v41 + 4;
      v20(v29, v32, v43);
      v20(v27, &v44[v39], v43);
      sub_268DE3648();
      v23 = sub_268F9AE04();
      v22 = v41[1];
      v21 = v41 + 1;
      v22(v27, v43);
      v22(v29, v43);
      sub_268D28588(v44);
      v24 = v23;
      goto LABEL_7;
    }

    (v41[1])(v32, v43);
  }

  sub_268DE349C(v44);
  v24 = 0;
LABEL_7:
  v18 = v24;
  sub_268D28588(v40);
  sub_268D28588(v38);

  if (v18)
  {
    v15 = sub_268F9A924();
    v14 = sub_268F9A924();
    v13 = sub_268F9AAD4();
    sub_268DE35C8();
    v16 = sub_268F9B084();

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v12 = v17;

  return v12 & 1;
}

uint64_t sub_268DE349C(uint64_t a1)
{
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCD20, qword_268FADE90) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_268DE35C8()
{
  v2 = qword_2802DCD28;
  if (!qword_2802DCD28)
  {
    sub_268F9AAD4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DE3648()
{
  v2 = qword_2802DCD30;
  if (!qword_2802DCD30)
  {
    sub_268F9A9C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE36EC()
{
  type metadata accessor for SetWifiNetworkHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1400 = result;
  return result;
}

uint64_t *sub_268DE3754()
{
  if (qword_2802DB540 != -1)
  {
    swift_once();
  }

  return &qword_2802F1400;
}

uint64_t sub_268DE37B4()
{
  v1 = *sub_268DE3754();

  return v1;
}

uint64_t sub_268DE37E4(uint64_t a1, void (*a2)(void))
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v5 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v5);
  v6 = *(v2 + 16);

  sub_268D391DC();

  sub_268DC0784();
  v8 = sub_268CD42AC(3, 0);
  a2();
  MEMORY[0x277D82BD8](v8);
}

uint64_t *sub_268DE395C()
{
  if (qword_280FE3458 != -1)
  {
    swift_once();
  }

  return &qword_280FE8060;
}

uint64_t sub_268DE39BC()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268DE3A00, 0);
}

uint64_t sub_268DE3A00()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 40);

  v2 = swift_task_alloc();
  *(v4 + 48) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268CDD500;

  return sub_268D51688();
}

uint64_t sub_268DE3ABC()
{
  type metadata accessor for GetPersonalizedVolumeHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268DE3B38(v2, v0 & 1);
  qword_280FE8060 = result;
  return result;
}

uint64_t sub_268DE3B90()
{
  v1 = *sub_268DE395C();

  return v1;
}

uint64_t sub_268DE3BC0(uint64_t a1, char a2)
{
  v3 = sub_268DBC1D4();
  v4 = v3[1];
  v5 = *(v3 + 16);
  *(v2 + 16) = *v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return v9;
}

uint64_t sub_268DE3C50()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7DB8;

  return sub_268DE39BC();
}

unint64_t sub_268DE3D5C()
{
  v2 = qword_2802DCD38;
  if (!qword_2802DCD38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE3DD8()
{
  sub_268F9B734();
  *v0 = "success";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  *(v0 + 24) = "intent_failed";
  *(v0 + 32) = 13;
  *(v0 + 40) = 2;
  *(v0 + 48) = "other_failure";
  *(v0 + 56) = 13;
  *(v0 + 64) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_8:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_8;
    case 2:
      v3 = 2;
      goto LABEL_8;
  }

  return 3;
}

uint64_t sub_268DE4020()
{
  sub_268F9B734();
  *v0 = "SettingsToggleDirectInvocationFlow";
  *(v0 + 8) = 34;
  *(v0 + 16) = 2;
  *(v0 + 24) = "ToggleSettingsInUISnippet";
  *(v0 + 32) = 25;
  *(v0 + 40) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  if (!v4)
  {
    v3 = 0;
LABEL_6:

    return v3;
  }

  if (v4 == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268DE424C()
{
  v2 = qword_2802DCD40;
  if (!qword_2802DCD40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE4398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DE3DD8();
  *a2 = result;
  return result;
}

uint64_t sub_268DE43D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DE3F54();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_268DE4450()
{
  v2 = qword_2802DCD48;
  if (!qword_2802DCD48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE459C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DE4020();
  *a2 = result;
  return result;
}

uint64_t sub_268DE45D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268DE4154();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268DE460C(char a1)
{
  sub_268D2CBA4(a1 & 1, 1);
  if (sub_268D2CBA4(a1 & 1, 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = 70;
  }

  sub_268DE4154();
  v4 = sub_268DE4154();
  v5 = v1;
  sub_268F99744();

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  *(v2 + 32) = v6;
  *(v2 + 36) = 0;
  sub_268F99734();
  sub_268F99684();
}

uint64_t sub_268DE482C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4;
  v11 = BYTE4(a4);
  v10 = *a1;

  sub_268F996F4();

  if (v11)
  {
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    v7 = *a1;

    sub_268DE3F54();
    sub_268F99704();
  }

  if (v9 == 70)
  {
    v6 = *a1;

    sub_268DE3F54();
    sub_268F99704();
  }

  else
  {
LABEL_7:
    v5 = *a1;

    sub_268DE3F54();
    sub_268F99704();
  }
}

uint64_t sub_268DE4998(uint64_t *a1)
{
  LODWORD(v3) = *(v1 + 32);
  BYTE4(v3) = *(v1 + 36) & 1;
  return sub_268DE482C(a1, *(v1 + 16), *(v1 + 24), v3);
}

unint64_t sub_268DE4A1C()
{
  v2 = qword_2802DCD50;
  if (!qword_2802DCD50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DE4AB0()
{
  v2 = qword_2802DCD58;
  if (!qword_2802DCD58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DE4B44()
{
  v2 = qword_2802DCD60;
  if (!qword_2802DCD60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE4BC0()
{
  sub_268F9B734();
  *v0 = "SetBinarySettingIntent#AppNotInstalledForAnnounceNotifications";
  *(v0 + 8) = 62;
  *(v0 + 16) = 2;
  *(v0 + 24) = "SetBinarySettingIntent#ApplicableDevicesNeverConnected";
  *(v0 + 32) = 54;
  *(v0 + 40) = 2;
  *(v0 + 48) = "SetBinarySettingIntent#BinaryValueWasUndone";
  *(v0 + 56) = 43;
  *(v0 + 64) = 2;
  *(v0 + 72) = "SetBinarySettingIntent#CannotConnectToWiFiNetwork";
  *(v0 + 80) = 49;
  *(v0 + 88) = 2;
  *(v0 + 96) = "SetBinarySettingIntent#CannotTemporarilyEnableAnnounceMessages";
  *(v0 + 104) = 62;
  *(v0 + 112) = 2;
  *(v0 + 120) = "SetBinarySettingIntent#ChangedBinaryValueTo";
  *(v0 + 128) = 43;
  *(v0 + 136) = 2;
  *(v0 + 144) = "SetBinarySettingIntent#ChangedBinaryValueToSpokenOnly";
  *(v0 + 152) = 53;
  *(v0 + 160) = 2;
  *(v0 + 168) = "SetBinarySettingIntent#ChangedMultiSettingValueTo";
  *(v0 + 176) = 49;
  *(v0 + 184) = 2;
  *(v0 + 192) = "SetBinarySettingIntent#ChangedMultiSettingValueToSpokenOnly";
  *(v0 + 200) = 59;
  *(v0 + 208) = 2;
  *(v0 + 216) = "SetBinarySettingIntent#ConfirmBeforeSeveringConnectionToSiri";
  *(v0 + 224) = 60;
  *(v0 + 232) = 2;
  *(v0 + 240) = "SetBinarySettingIntent#ConfirmBeforeTurningOffAnnounceNotifications";
  *(v0 + 248) = 67;
  *(v0 + 256) = 2;
  *(v0 + 264) = "SetBinarySettingIntent#ConfirmBeforeTurningOffLocationServices";
  *(v0 + 272) = 62;
  *(v0 + 280) = 2;
  *(v0 + 288) = "SetBinarySettingIntent#DescribeHotspotDiscoverability";
  *(v0 + 296) = 53;
  *(v0 + 304) = 2;
  *(v0 + 312) = "SetBinarySettingIntent#HotspotAirplaneModeEnabledOrCellularDisabled";
  *(v0 + 320) = 67;
  *(v0 + 328) = 2;
  *(v0 + 336) = "SetBinarySettingIntent#MissingSIMOrCellular";
  *(v0 + 344) = 43;
  *(v0 + 352) = 2;
  *(v0 + 360) = "SetBinarySettingIntent#NoNeedToChangeBinaryValueTo";
  *(v0 + 368) = 50;
  *(v0 + 376) = 2;
  *(v0 + 384) = "SetBinarySettingIntent#NoNeedToChangeMultiSettingValueTo";
  *(v0 + 392) = 56;
  *(v0 + 400) = 2;
  *(v0 + 408) = "SetBinarySettingIntent#RetainingCurrentBinaryValue";
  *(v0 + 416) = 50;
  *(v0 + 424) = 2;
  *(v0 + 432) = "SetBinarySettingIntent#SiriCanOnlyAnnounceMessagesInCarPlay";
  *(v0 + 440) = 59;
  *(v0 + 448) = 2;
  *(v0 + 456) = "SetBinarySettingIntent#SiriCannotDisableItself";
  *(v0 + 464) = 46;
  *(v0 + 472) = 2;
  *(v0 + 480) = "SetBinarySettingIntent#UnspecifiedActionForSupportedBinarySetting";
  *(v0 + 488) = 65;
  *(v0 + 496) = 2;
  *(v0 + 504) = "SetBinarySettingIntent#UnspecifiedActionForSupportedMultiSetting";
  *(v0 + 512) = 64;
  *(v0 + 520) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_46:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_46;
    case 2:
      v3 = 2;
      goto LABEL_46;
    case 3:
      v3 = 3;
      goto LABEL_46;
    case 4:
      v3 = 4;
      goto LABEL_46;
    case 5:
      v3 = 5;
      goto LABEL_46;
    case 6:
      v3 = 6;
      goto LABEL_46;
    case 7:
      v3 = 7;
      goto LABEL_46;
    case 8:
      v3 = 8;
      goto LABEL_46;
    case 9:
      v3 = 9;
      goto LABEL_46;
    case 10:
      v3 = 10;
      goto LABEL_46;
    case 11:
      v3 = 11;
      goto LABEL_46;
    case 12:
      v3 = 12;
      goto LABEL_46;
    case 13:
      v3 = 13;
      goto LABEL_46;
    case 14:
      v3 = 14;
      goto LABEL_46;
    case 15:
      v3 = 15;
      goto LABEL_46;
    case 16:
      v3 = 16;
      goto LABEL_46;
    case 17:
      v3 = 17;
      goto LABEL_46;
    case 18:
      v3 = 18;
      goto LABEL_46;
    case 19:
      v3 = 19;
      goto LABEL_46;
    case 20:
      v3 = 20;
      goto LABEL_46;
    case 21:
      v3 = 21;
      goto LABEL_46;
  }

  return 22;
}

unint64_t sub_268DE5688()
{
  v2 = qword_2802DCD68;
  if (!qword_2802DCD68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE57D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268DE4BC0();
  *a2 = result;
  return result;
}