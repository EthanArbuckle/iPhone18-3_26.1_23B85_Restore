uint64_t sub_268D4A9E0()
{
  v0 = sub_268F276D4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268D4AA24(uint64_t a1)
{
  *(v2 + 752) = v1;
  *(v2 + 744) = a1;
  *(v2 + 640) = v2;
  *(v2 + 648) = 0;
  *(v2 + 656) = 0;
  *(v2 + 664) = 0;
  *(v2 + 672) = 0;
  *(v2 + 688) = 0;
  *(v2 + 696) = 0;
  *(v2 + 712) = 0;
  *(v2 + 480) = 0;
  *(v2 + 488) = 0;
  *(v2 + 720) = 0;
  *(v2 + 592) = 0;
  *(v2 + 600) = 0;
  *(v2 + 608) = 0;
  *(v2 + 616) = 0;
  *(v2 + 648) = a1;
  *(v2 + 656) = v1;
  v3 = *(v2 + 640);
  return MEMORY[0x2822009F8](sub_268D4AAAC, 0);
}

uint64_t sub_268D4AAAC()
{
  v35 = v0[93];
  v0[80] = v0;
  sub_268D55A50();
  v34 = sub_268CF0C44();
  v0[95] = v34;
  v0[83] = v34;
  [v34 setShouldRunHandleIntent_];
  v1 = sub_268F2736C(v35);
  v36 = v1;
  v0[96] = v1;
  if (v1)
  {
    v33[84] = v1;
    v2 = sub_268DC7AE8();
    v29 = *v2;
    MEMORY[0x277D82BE0](*v2);
    sub_268F9B284();
    v33[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v28 = v3;
    MEMORY[0x277D82BE0](v36);
    v33[85] = v36;
    sub_268D55AB4();
    sub_268D55B18();
    v26 = sub_268F9AE74();
    v27 = v4;
    v28[3] = MEMORY[0x277D837D0];
    v5 = sub_268CDD224();
    v33[98] = v5;
    v28[4] = v5;
    *v28 = v26;
    v28[1] = v27;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v29);
    sub_268D55B98();
    v30 = sub_268CF0C44();
    v33[99] = v30;
    v33[86] = v30;
    v31 = [v36 backingStore];
    v32 = [v31 data];
    if (v32)
    {
      v22 = sub_268F99184();
      v23 = v6;
      MEMORY[0x277D82BD8](v32);
      v24 = v22;
      v25 = v23;
    }

    else
    {
      v24 = 0;
      v25 = 0xF000000000000000;
    }

    if ((v25 & 0xF000000000000000) == 0xF000000000000000)
    {
      v21 = 0;
    }

    else
    {
      v20 = sub_268F99164();
      sub_268D55C74(v24, v25);
      v21 = v20;
    }

    v19 = v33[94];
    [v30 setData_];
    v17 = [v36 typeName];
    sub_268F9AE24();
    v18 = sub_268F9AE14();

    [v30 setTypeName_];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BE0](v30);
    [v34 setIntent_];
    MEMORY[0x277D82BD8](v30);
    sub_268D35D60((v19 + 56), v33 + 7);
    if (v33[10])
    {
      sub_268CDF978(v33 + 7, v33 + 2);
    }

    else
    {
      sub_268F99754();
      if (v33[10])
      {
        sub_268D28414(v33 + 7);
      }
    }

    v16 = v33[5];
    v15 = v33[6];
    __swift_project_boxed_opaque_existential_1(v33 + 2, v16);
    v7 = *(MEMORY[0x277D5BFB8] + 4);
    v8 = swift_task_alloc();
    v33[100] = v8;
    v9 = sub_268D353D0();
    *v8 = v33[80];
    v8[1] = sub_268D4B188;

    return MEMORY[0x2821BB6A0](v34, v16, v9, v15);
  }

  else
  {
    v14 = sub_268E419BC(6);
    v10 = MEMORY[0x277D82BD8](v34);
    v11 = *(v33[80] + 8);
    v12 = v33[80];

    return v11(v14, -1, v10);
  }
}

uint64_t sub_268D4B188(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 80;
  v4 = *(*v2 + 800);
  v10[80] = *v2;
  v10[101] = a1;
  v10[102] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_268D4D27C;
  }

  else
  {
    v5 = *v9;
    v6 = sub_268D4B2FC;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D4B2FC()
{
  v117 = *(v0 + 808);
  *(v0 + 640) = v0;
  objc_opt_self();
  v118 = swift_dynamicCastObjCClass();
  if (v118)
  {
    v115 = v118;
  }

  else
  {
    MEMORY[0x277D82BD8](*(v116 + 808));
    v115 = 0;
  }

  if (!v115)
  {
    v31 = *(v116 + 792);
    v29 = *(v116 + 776);
    v33 = *(v116 + 760);
    v32 = *(v116 + 768);
    v25 = sub_268DC7AE8();
    v30 = *v25;
    MEMORY[0x277D82BE0](*v25);
    sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v30);
    v34 = sub_268E419BC(6);
    __swift_destroy_boxed_opaque_existential_0((v116 + 16));
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    v4 = MEMORY[0x277D82BD8](v33);
    v103 = v34;
    v104 = -1;
    goto LABEL_81;
  }

  *(v116 + 712) = v115;
  v114 = [v115 lastAttemptedStep];
  if (v114)
  {
    v110 = sub_268F9AE24();
    v111 = v1;
    MEMORY[0x277D82BD8](v114);
    v112 = v110;
    v113 = v111;
  }

  else
  {
    v112 = 0;
    v113 = 0;
  }

  v107 = *MEMORY[0x277D484A0];
  MEMORY[0x277D82BE0](*MEMORY[0x277D484A0]);
  v108 = sub_268F9AE24();
  v109 = v2;

  *(v116 + 384) = v112;
  *(v116 + 392) = v113;
  *(v116 + 96) = v108;
  *(v116 + 104) = v109;
  sub_268D28874((v116 + 384), (v116 + 112));
  if (*(v116 + 104))
  {
    sub_268D28874((v116 + 96), (v116 + 560));
    if (*(v116 + 120))
    {
      *(v116 + 576) = *(v116 + 112);
      v105 = MEMORY[0x26D62DB50](*(v116 + 560), *(v116 + 568), *(v116 + 576), *(v116 + 584));
      sub_268CD9D30(v116 + 576);
      sub_268CD9D30(v116 + 560);
      sub_268CD9D30(v116 + 96);
      v106 = v105;
      goto LABEL_14;
    }

    sub_268CD9D30(v116 + 560);
    goto LABEL_16;
  }

  if (*(v116 + 120))
  {
LABEL_16:
    sub_268D28550(v116 + 96);
    v106 = 0;
    goto LABEL_14;
  }

  sub_268CD9D30(v116 + 96);
  v106 = 1;
LABEL_14:

  MEMORY[0x277D82BD8](v107);
  if (v106)
  {
    v99 = *(v116 + 792);
    v97 = *(v116 + 776);
    v101 = *(v116 + 760);
    v100 = *(v116 + 768);

    v3 = sub_268DC7AE8();
    v98 = *v3;
    MEMORY[0x277D82BE0](*v3);
    sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v98);
    v102 = sub_268E419BC(6);

    MEMORY[0x277D82BD8](v115);
    __swift_destroy_boxed_opaque_existential_0((v116 + 16));
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v100);
    v4 = MEMORY[0x277D82BD8](v101);
    v103 = v102;
    v104 = -1;
    goto LABEL_81;
  }

  v94 = *MEMORY[0x277D48490];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48490]);
  v95 = sub_268F9AE24();
  v96 = v5;

  *(v116 + 400) = v112;
  *(v116 + 408) = v113;
  *(v116 + 128) = v95;
  *(v116 + 136) = v96;
  sub_268D28874((v116 + 400), (v116 + 144));
  if (*(v116 + 136))
  {
    sub_268D28874((v116 + 128), (v116 + 528));
    if (*(v116 + 152))
    {
      *(v116 + 544) = *(v116 + 144);
      v92 = MEMORY[0x26D62DB50](*(v116 + 528), *(v116 + 536), *(v116 + 544), *(v116 + 552));
      sub_268CD9D30(v116 + 544);
      sub_268CD9D30(v116 + 528);
      sub_268CD9D30(v116 + 128);
      v93 = v92;
      goto LABEL_25;
    }

    sub_268CD9D30(v116 + 528);
    goto LABEL_27;
  }

  if (*(v116 + 152))
  {
LABEL_27:
    sub_268D28550(v116 + 128);
    v93 = 0;
    goto LABEL_25;
  }

  sub_268CD9D30(v116 + 128);
  v93 = 1;
LABEL_25:

  MEMORY[0x277D82BD8](v94);
  if (v93)
  {
    v88 = *(v116 + 792);
    v86 = *(v116 + 776);
    v90 = *(v116 + 760);
    v89 = *(v116 + 768);

    v6 = sub_268DC7AE8();
    v87 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v87);
    v91 = sub_268E419BC(6);

    MEMORY[0x277D82BD8](v115);
    __swift_destroy_boxed_opaque_existential_0((v116 + 16));
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v89);
    v4 = MEMORY[0x277D82BD8](v90);
    v103 = v91;
    v104 = -1;
    goto LABEL_81;
  }

  v83 = *MEMORY[0x277D48498];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48498]);
  v84 = sub_268F9AE24();
  v85 = v7;

  *(v116 + 416) = v112;
  *(v116 + 424) = v113;
  *(v116 + 160) = v84;
  *(v116 + 168) = v85;
  sub_268D28874((v116 + 416), (v116 + 176));
  if (*(v116 + 168))
  {
    sub_268D28874((v116 + 160), (v116 + 496));
    if (*(v116 + 184))
    {
      *(v116 + 512) = *(v116 + 176);
      v81 = MEMORY[0x26D62DB50](*(v116 + 496), *(v116 + 504), *(v116 + 512), *(v116 + 520));
      sub_268CD9D30(v116 + 512);
      sub_268CD9D30(v116 + 496);
      sub_268CD9D30(v116 + 160);
      v82 = v81;
      goto LABEL_36;
    }

    sub_268CD9D30(v116 + 496);
    goto LABEL_38;
  }

  if (*(v116 + 184))
  {
LABEL_38:
    sub_268D28550(v116 + 160);
    v82 = 0;
    goto LABEL_36;
  }

  sub_268CD9D30(v116 + 160);
  v82 = 1;
LABEL_36:

  MEMORY[0x277D82BD8](v83);
  if (v82)
  {
    v77 = *(v116 + 776);
    v8 = *(v116 + 752);

    v9 = sub_268DC7AE8();
    v78 = *v9;
    MEMORY[0x277D82BE0](*v9);
    sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v78);
    v79 = sub_268D4A9E0();
    v80 = sub_268D4D4C8(v115, v79, v10);

    *(v116 + 720) = v80;
    MEMORY[0x277D82BE0](v80);
    if (v80)
    {
      sub_268F9AEF4();
      v75 = sub_268F9AE14();

      v76 = [v80 valueForKey_];
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v80);
      if (v76)
      {
        sub_268F9B404();
        sub_268D55CF0(v116 + 352, v116 + 320);
        swift_unknownObjectRelease();
      }

      else
      {
        *(v116 + 320) = 0;
        *(v116 + 328) = 0;
        *(v116 + 336) = 0;
        *(v116 + 344) = 0;
      }

      *(v116 + 192) = *(v116 + 320);
      *(v116 + 208) = *(v116 + 336);
    }

    else
    {
      *(v116 + 192) = 0;
      *(v116 + 200) = 0;
      *(v116 + 208) = 0;
      *(v116 + 216) = 0;
    }

    if (*(v116 + 216))
    {
      if (swift_dynamicCast())
      {
        v73 = *(v116 + 736);
        v74 = 0;
      }

      else
      {
        v73 = 0;
        v74 = 1;
      }

      v71 = v73;
      v72 = v74;
    }

    else
    {
      sub_268D28414((v116 + 192));
      v71 = 0;
      v72 = 1;
    }

    *(v116 + 592) = v71;
    *(v116 + 600) = v72 & 1;
    MEMORY[0x277D82BE0](v80);
    if (v80)
    {
      sub_268F9AEF4();
      v69 = sub_268F9AE14();

      v70 = [v80 valueForKey_];
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v80);
      if (v70)
      {
        sub_268F9B404();
        sub_268D55CF0(v116 + 288, v116 + 256);
        swift_unknownObjectRelease();
      }

      else
      {
        *(v116 + 256) = 0;
        *(v116 + 264) = 0;
        *(v116 + 272) = 0;
        *(v116 + 280) = 0;
      }

      *(v116 + 224) = *(v116 + 256);
      *(v116 + 240) = *(v116 + 272);
    }

    else
    {
      *(v116 + 224) = 0;
      *(v116 + 232) = 0;
      *(v116 + 240) = 0;
      *(v116 + 248) = 0;
    }

    if (*(v116 + 248))
    {
      if (swift_dynamicCast())
      {
        v67 = *(v116 + 728);
        v68 = 0;
      }

      else
      {
        v67 = 0;
        v68 = 1;
      }

      v65 = v67;
      v66 = v68;
    }

    else
    {
      sub_268D28414((v116 + 224));
      v65 = 0;
      v66 = 1;
    }

    v59 = *(v116 + 784);
    v61 = *(v116 + 776);
    v63 = *(v116 + 744);
    *(v116 + 608) = v65;
    *(v116 + 616) = v66 & 1;
    v11 = sub_268DC7AE8();
    v62 = *v11;
    MEMORY[0x277D82BE0](*v11);
    sub_268F9B284();
    sub_268F9B734();
    v60 = v12;
    *(v116 + 624) = v65;
    *(v116 + 632) = v66 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC488, &qword_268F9E318);
    v13 = sub_268F9AE64();
    v60[3] = MEMORY[0x277D837D0];
    v60[4] = v59;
    *v60 = v13;
    v60[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC04();

    v64 = [v63 settingMetadata];
    if ((v72 & 1) != 0 || v71 != 1)
    {
      v58 = 2;
    }

    else
    {
      v58 = 1;
    }

    v15 = sub_268D4AA1C();
    v57 = sub_268E41A08(v64, 0, v15, v58, 0, 0);
    MEMORY[0x277D82BD8](v64);
    if (v66)
    {
      v56 = -1;
    }

    else
    {
      v56 = v65;
    }

    v53 = *(v116 + 792);
    v55 = *(v116 + 760);
    v54 = *(v116 + 768);
    MEMORY[0x277D82BD8](v80);

    MEMORY[0x277D82BD8](v115);
    __swift_destroy_boxed_opaque_existential_0((v116 + 16));
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    v4 = MEMORY[0x277D82BD8](v55);
    v103 = v57;
    v104 = v56;
  }

  else
  {

    *(v116 + 432) = sub_268F9B724();
    *(v116 + 440) = v16;
    v17 = sub_268F9AEF4();
    MEMORY[0x26D62E360](v17);

    v18 = [v115 lastAttemptedStep];
    v52 = v18;
    if (v18)
    {
      v48 = sub_268F9AE24();
      v49 = v19;
      MEMORY[0x277D82BD8](v52);
      v50 = v48;
      v51 = v49;
    }

    else
    {
      v50 = 0;
      v51 = 0;
    }

    *(v116 + 448) = v50;
    *(v116 + 456) = v51;
    if (*(v116 + 456))
    {
      v119 = *(v116 + 448);
      v120 = *(v116 + 456);
    }

    else
    {
      v119 = sub_268F9AEF4();
      v120 = v20;
      if (*(v116 + 456))
      {
        sub_268CD9D30(v116 + 448);
      }
    }

    v44 = *(v116 + 792);
    v38 = *(v116 + 784);
    v41 = *(v116 + 776);
    v46 = *(v116 + 760);
    v45 = *(v116 + 768);
    *(v116 + 464) = v119;
    *(v116 + 472) = v120;
    v37 = MEMORY[0x277D837D0];
    sub_268F9B704();
    sub_268CD9D30(v116 + 464);
    v21 = sub_268F9AEF4();
    MEMORY[0x26D62E360](v21);

    v36 = *(v116 + 432);
    v35 = *(v116 + 440);

    sub_268CD9D30(v116 + 432);
    v39 = sub_268F9AED4();
    v43 = v22;
    *(v116 + 480) = v39;
    *(v116 + 488) = v22;
    v23 = sub_268DC7AE8();
    v42 = *v23;
    MEMORY[0x277D82BE0](*v23);
    sub_268F9B284();
    sub_268F9B734();
    v40 = v24;

    v40[3] = v37;
    v40[4] = v38;
    *v40 = v39;
    v40[1] = v43;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v42);
    v47 = sub_268E419BC(6);

    MEMORY[0x277D82BD8](v115);
    __swift_destroy_boxed_opaque_existential_0((v116 + 16));
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    v4 = MEMORY[0x277D82BD8](v46);
    v103 = v47;
    v104 = -1;
  }

LABEL_81:
  v26 = *(*(v116 + 640) + 8);
  v27 = *(v116 + 640);

  return v26(v103, v104, v4);
}

uint64_t sub_268D4D27C()
{
  v15 = v0[102];
  v16 = v0[99];
  v11 = v0[98];
  v13 = v0[97];
  v17 = v0[96];
  v18 = v0[95];
  v0[80] = v0;
  v1 = v15;
  v0[87] = v15;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B284();
  sub_268F9B734();
  v12 = v3;
  v4 = v15;
  v0[88] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v14);

  v19 = sub_268E419BC(6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v7 = MEMORY[0x277D82BD8](v18);
  v8 = *(v0[80] + 8);
  v9 = v0[80];

  return v8(v19, -1, v7);
}

id sub_268D4D4C8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 handleIntentCompleted];
  v8 = sub_268D4D58C(v7, a2, a3);
  MEMORY[0x277D82BD8](v7);
  if (v8)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

id sub_268D4D58C(void *a1, uint64_t a2, uint64_t a3)
{
  v146 = a1;
  v140 = a2;
  v139 = a3;
  v130 = "Fatal error";
  v131 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v132 = "SiriSettingsIntents/SettingsNativeApiClient.swift";
  v133 = "Intent response: %@ %@";
  v134 = &dword_268CBE000;
  v135 = "Could not construct IntentResponse from HandleIntentCompleted: %@";
  v136 = "Could not decode JSON intent response from UTF-8";
  v137 = "HandleIntentCompleted has no JSON nor Protobuf, can not extract intent";
  v167 = 0;
  v165 = 0;
  v166 = 0;
  v164 = 0;
  v162 = 0;
  v163 = 0;
  v158 = 0;
  v159 = 0;
  v156 = 0;
  v157 = 0;
  v148 = 0;
  v147 = 0;
  v138 = 0;
  v141 = sub_268F9AE54();
  v142 = *(v141 - 8);
  v143 = v141 - 8;
  v144 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v146);
  v145 = &v36 - v144;
  v167 = v4;
  v165 = v5;
  v166 = v6;
  v164 = v3;
  MEMORY[0x277D82BE0](v4);
  if (v146)
  {
    v129 = v146;
    v126 = v146;
    v127 = [v146 intentResponse];
    *&v7 = MEMORY[0x277D82BD8](v126).n128_u64[0];
    v128 = v127;
  }

  else
  {
    v128 = 0;
  }

  v125 = v128;
  if (v128)
  {
    v124 = v125;
    v122 = v125;
    v147 = v125;
    v123 = [v125 data];
    if (v123)
    {
      v121 = v123;
      v116 = v123;
      v117 = sub_268F99184();
      v118 = v9;
      *&v8 = MEMORY[0x277D82BD8](v116).n128_u64[0];
      v119 = v117;
      v120 = v118;
    }

    else
    {
      v119 = 0;
      v120 = 0xF000000000000000;
    }

    v114 = v120;
    v115 = v119;
    if ((v120 & 0xF000000000000000) == 0xF000000000000000)
    {
      sub_268F9B584();
      __break(1u);
    }

    else
    {
      v112 = v115;
      v113 = v114;
    }

    v162 = v112;
    v163 = v113;
    v111 = [v122 typeName];
    if (v111)
    {
      v110 = v111;
      v105 = v111;
      v106 = sub_268F9AE24();
      v107 = v10;
      MEMORY[0x277D82BD8](v105);
      v108 = v106;
      v109 = v107;
    }

    else
    {
      v108 = 0;
      v109 = 0;
    }

    v102 = v109;
    v101 = v108;

    v160 = v101;
    v161 = v102;
    MEMORY[0x277D82BD8](v122);
    v103 = v101;
    v104 = v102;
  }

  else
  {
    MEMORY[0x277D82BE0](v146);
    if (v146)
    {
      v100 = v146;
      v98 = v146;
      v99 = [v146 jsonEncodedIntentResponse];
      if (v99)
      {
        v97 = v99;
        v92 = v99;
        v93 = sub_268F9AE24();
        v94 = v11;
        MEMORY[0x277D82BD8](v92);
        v95 = v93;
        v96 = v94;
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      v89 = v96;
      v88 = v95;
      MEMORY[0x277D82BD8](v98);
      v90 = v88;
      v91 = v89;
    }

    else
    {
      v90 = 0;
      v91 = 0;
    }

    v86 = v91;
    v87 = v90;
    if (!v91)
    {
      v73 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v73);
      v71 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v72 = sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v73);
      return v138;
    }

    v84 = v87;
    v85 = v86;
    v81 = v86;
    v80 = v87;
    v158 = v87;
    v159 = v86;
    sub_268F9AE44();
    sub_268CDD6D4();
    v82 = sub_268F9AE34();
    v83 = v12;
    (*(v142 + 8))(v145, v141);
    if ((v83 & 0xF000000000000000) == 0xF000000000000000)
    {
      v76 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v76);
      v74 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v75 = sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v76);

      return v138;
    }

    v78 = v82;
    v79 = v83;
    v68 = v83;
    v67 = v82;
    v156 = v82;
    v157 = v83;
    sub_268D55D0C(v82, v83);
    v162 = v67;
    v163 = v68;
    v13 = sub_268F9AEF4();
    v66 = v14;
    v69 = MEMORY[0x26D62DB30](v140, v139, v13);
    v70 = v15;

    v160 = v69;
    v161 = v70;
    sub_268D55C74(v67, v68);

    v103 = v69;
    v104 = v70;
  }

  v65 = v104;
  v64 = v103;
  v63 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v63);
  v61 = sub_268F9B284();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v59 = sub_268F9B734();
  v58 = v16;
  v50 = v162;
  v51 = v163;
  sub_268D55D0C(v162, v163);
  v52 = v155;
  v155[0] = v50;
  v155[1] = v51;
  sub_268D55D88();
  v53 = sub_268F9AE74();
  v54 = v17;
  v56 = MEMORY[0x277D837D0];
  v58[3] = MEMORY[0x277D837D0];
  v18 = sub_268CDD224();
  v19 = v53;
  v20 = v54;
  v21 = v58;
  v57 = v18;
  v58[4] = v18;
  *v21 = v19;
  v21[1] = v20;

  v55 = v154;
  v154[0] = v64;
  v154[1] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  v22 = sub_268F9AE64();
  v23 = v57;
  v24 = v58;
  v25 = v22;
  v26 = v59;
  v58[8] = v56;
  v24[9] = v23;
  v24[5] = v25;
  v24[6] = v27;
  sub_268CD0F7C();
  v62 = v26;
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v63);
  v150 = v64;
  v151 = v65;

  if (v151)
  {
    v152 = v150;
    v153 = v151;
  }

  else
  {

    v152 = v140;
    v153 = v139;
    if (v151)
    {
      sub_268CD9D30(&v150);
    }
  }

  v44 = v153;
  v48 = sub_268F9AE14();

  v46 = v162;
  v45 = v163;
  sub_268D55D0C(v162, v163);
  v47 = sub_268F99164();
  sub_268D55C74(v46, v45);
  v49 = INIntentResponseCreate();
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  if (v49)
  {
    v43 = v49;
    v42 = v49;
    v148 = v49;
    sub_268CD9D30(&v160);
    sub_268D55E00(&v162);
    return v42;
  }

  else
  {
    v41 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v41);
    v39 = sub_268F9B284();
    v38 = sub_268F9B734();
    v37 = v28;
    MEMORY[0x277D82BE0](v146);
    v36 = &v149;
    v149 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC498, &qword_268F9E320);
    v29 = sub_268F9AE64();
    v30 = v57;
    v31 = v37;
    v32 = v29;
    v33 = v38;
    v37[3] = MEMORY[0x277D837D0];
    v31[4] = v30;
    *v31 = v32;
    v31[1] = v34;
    sub_268CD0F7C();
    v40 = v33;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v41);
    sub_268CD9D30(&v160);
    sub_268D55E00(&v162);
    return v138;
  }
}

double sub_268D4E4F0(void *a1, void (*a2)(void), uint64_t a3)
{
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v33 = a1;
  v31 = a2;
  v32 = a3;
  v3 = sub_268DC7B48();
  v22 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v22);
  sub_268D55A50();
  v23 = sub_268CF0C44();
  v29 = v23;
  [v23 setShouldRunHandleIntent_];
  v25 = sub_268F27734(a1);
  if (v25)
  {
    v28 = v25;
    sub_268D55B98();
    v16 = sub_268CF0C44();
    v27 = v16;
    v17 = [v25 backingStore];
    v18 = [v17 data];
    if (v18)
    {
      v12 = sub_268F99184();
      v13 = v4;
      MEMORY[0x277D82BD8](v18);
      v14 = v12;
      v15 = v13;
    }

    else
    {
      v14 = 0;
      v15 = 0xF000000000000000;
    }

    if ((v15 & 0xF000000000000000) == 0xF000000000000000)
    {
      v11 = 0;
    }

    else
    {
      v10 = sub_268F99164();
      sub_268D55C74(v14, v15);
      v11 = v10;
    }

    [v16 setData_];
    v7 = [v25 typeName];
    sub_268F9AE24();
    v8 = sub_268F9AE14();

    [v16 setTypeName_];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BE0](v16);
    [v23 setIntent_];
    MEMORY[0x277D82BD8](v16);
    sub_268F99764();
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);

    MEMORY[0x277D82BE0](a1);
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = v21;
    v9[5] = a1;
    sub_268D55C10();
    sub_268F99A24();

    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v25);
    *&result = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  else
  {

    v6 = sub_268DA9A7C(7, 0);
    a2();
    MEMORY[0x277D82BD8](v6);

    *&result = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  return result;
}

uint64_t sub_268D4E9B4(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v47 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v44 = "DNDToggleDoNotDisturbIntent response: %@";
  v42 = &dword_268CBE000;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v52 = 0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC538, &qword_268F9E7E8);
  v34 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v49 = (&v23 - v34);
  v35 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v36 = (&v23 - v35);
  v56 = v7;
  v54 = v8;
  v55 = v9;
  v53 = v10;
  v52 = v11;
  v46 = *sub_268DC7B48();
  MEMORY[0x277D82BE0](v46);
  v43 = sub_268F9B284();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v41 = sub_268F9B734();
  v39 = v12;
  sub_268D5751C(v47, v36);
  v37 = sub_268F9AE64();
  v38 = v13;
  v39[3] = MEMORY[0x277D837D0];
  v14 = sub_268CDD224();
  v15 = v37;
  v16 = v38;
  v17 = v39;
  v18 = v14;
  v19 = v41;
  v39[4] = v18;
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  v45 = v19;
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v46);
  sub_268D5751C(v47, v49);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_268D575F8(v49);

    v29 = sub_268DA9A7C(7, 0);
    v30();
    MEMORY[0x277D82BD8](v29);
  }

  else
  {
    MEMORY[0x277D82BD8](*v49);

    v21 = [v33 binaryValue];
    v28 = &v51;
    v51 = v21;
    v26 = &v50;
    v50 = 1;
    v27 = type metadata accessor for INBinarySettingValue();
    sub_268CD925C();
    if (sub_268F9B754())
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v22 = [v33 binaryValue];
    v24 = sub_268D4FC9C(0, v23, v22);
    v30();
    MEMORY[0x277D82BD8](v24);
  }
}

uint64_t sub_268D4ED60(uint64_t a1)
{
  v2[25] = v1;
  v2[24] = a1;
  v2[12] = v2;
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[16] = 0;
  v2[17] = 0;
  v2[18] = 0;
  v2[20] = 0;
  v2[13] = a1;
  v2[14] = v1;
  v3 = v2[12];
  return MEMORY[0x2822009F8](sub_268D4EDC4, 0);
}

uint64_t sub_268D4EDC4()
{
  v29 = v0[24];
  v0[12] = v0;
  v1 = sub_268DC7B48();
  v27 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v27);
  sub_268D55A50();
  v28 = sub_268CF0C44();
  v0[27] = v28;
  v0[15] = v28;
  [v28 setShouldRunHandleIntent_];
  v2 = sub_268F27734(v29);
  v30 = v2;
  v0[28] = v2;
  if (v2)
  {
    v26[16] = v2;
    sub_268D55B98();
    v23 = sub_268CF0C44();
    v26[29] = v23;
    v26[17] = v23;
    v24 = [v30 backingStore];
    v25 = [v24 data];
    if (v25)
    {
      v19 = sub_268F99184();
      v20 = v3;
      MEMORY[0x277D82BD8](v25);
      v21 = v19;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0xF000000000000000;
    }

    if ((v22 & 0xF000000000000000) == 0xF000000000000000)
    {
      v18 = 0;
    }

    else
    {
      v17 = sub_268F99164();
      sub_268D55C74(v21, v22);
      v18 = v17;
    }

    v16 = v26[25];
    [v23 setData_];
    v14 = [v30 typeName];
    sub_268F9AE24();
    v15 = sub_268F9AE14();

    [v23 setTypeName_];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BE0](v23);
    [v28 setIntent_];
    MEMORY[0x277D82BD8](v23);
    sub_268D35D60((v16 + 56), v26 + 7);
    if (v26[10])
    {
      sub_268CDF978(v26 + 7, v26 + 2);
    }

    else
    {
      sub_268F99754();
      if (v26[10])
      {
        sub_268D28414(v26 + 7);
      }
    }

    v13 = v26[5];
    v12 = v26[6];
    __swift_project_boxed_opaque_existential_1(v26 + 2, v13);
    v4 = *(MEMORY[0x277D5BFB8] + 4);
    v5 = swift_task_alloc();
    v26[30] = v5;
    v6 = sub_268D353D0();
    *v5 = v26[12];
    v5[1] = sub_268D4F3F0;

    return MEMORY[0x2821BB6A0](v28, v13, v6, v12);
  }

  else
  {
    v11 = sub_268DA9A7C(7, 0);
    v7 = MEMORY[0x277D82BD8](v28);
    v8 = *(v26[12] + 8);
    v9 = v26[12];

    return v8(v11, v7);
  }
}

uint64_t sub_268D4F3F0(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 240);
  v9[12] = *v2;
  v10 = v9 + 12;
  v9[31] = a1;
  v9[32] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268D4FA40;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268D4F560;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D4F560()
{
  v27 = *(v0 + 248);
  *(v0 + 96) = v0;
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v25 = v28;
  }

  else
  {
    MEMORY[0x277D82BD8](*(v26 + 248));
    v25 = 0;
  }

  if (v25)
  {
    v22 = *(v26 + 208);
    v24 = *(v26 + 192);
    *(v26 + 160) = v25;
    v1 = sub_268DC7B48();
    v23 = *v1;
    MEMORY[0x277D82BE0](*v1);
    sub_268F9B284();
    sub_268F9B734();
    v21 = v2;
    MEMORY[0x277D82BE0](v25);
    *(v26 + 168) = v25;
    sub_268D55C10();
    sub_268D55E48();
    v19 = sub_268F9AE74();
    v20 = v3;
    v21[3] = MEMORY[0x277D837D0];
    v21[4] = sub_268CDD224();
    *v21 = v19;
    v21[1] = v20;
    sub_268CD0F7C();
    sub_268F9AC04();

    *(v26 + 176) = [v24 binaryValue];
    *(v26 + 184) = 1;
    type metadata accessor for INBinarySettingValue();
    sub_268CD925C();
    if (sub_268F9B754())
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v13 = *(v26 + 232);
    v15 = *(v26 + 216);
    v4 = *(v26 + 200);
    v14 = *(v26 + 224);
    v16 = sub_268D4FC9C(0, v18, [*(v26 + 192) binaryValue]);
    MEMORY[0x277D82BD8](v25);
    __swift_destroy_boxed_opaque_existential_0((v26 + 16));
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    v5 = MEMORY[0x277D82BD8](v15);
    v17 = v16;
  }

  else
  {
    v9 = *(v26 + 232);
    v11 = *(v26 + 216);
    v10 = *(v26 + 224);
    v12 = sub_268DA9A7C(7, 0);
    __swift_destroy_boxed_opaque_existential_0((v26 + 16));
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v5 = MEMORY[0x277D82BD8](v11);
    v17 = v12;
  }

  v6 = *(*(v26 + 96) + 8);
  v7 = *(v26 + 96);

  return v6(v17, v5);
}

uint64_t sub_268D4FA40()
{
  v15 = v0[32];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[27];
  v13 = v0[26];
  v0[12] = v0;
  v1 = v15;
  v0[18] = v15;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v15;
  v0[19] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v14);
  v19 = sub_268DA9A7C(7, 0);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v6 = MEMORY[0x277D82BD8](v18);
  v7 = *(v0[12] + 8);
  v8 = v0[12];

  return v7(v19, v6);
}

id sub_268D4FC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268CD795C();
  MEMORY[0x277D82BE0](a1);
  v7 = sub_268CD42AC(3, a1);
  [v7 setOldValue_];
  [v7 setUpdatedValue_];
  return v7;
}

uint64_t sub_268D4FD50(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 73) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 72) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 72) = a1 & 1;
  *(v2 + 24) = v1;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268D4FDB4, 0);
}

uint64_t sub_268D4FDB4()
{
  v8 = *(v0 + 73);
  *(v0 + 16) = v0;
  sub_268D55EC8();
  v9 = sub_268CF0C44();
  *(v0 + 48) = v9;
  *(v0 + 32) = v9;
  if (v8)
  {
    v6 = *MEMORY[0x277D48988];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48988]);
    sub_268F9AE24();
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v5 = *MEMORY[0x277D48990];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48990]);
    sub_268F9AE24();
    MEMORY[0x277D82BD8](v5);
  }

  v4 = sub_268F9AE14();

  [v9 setNoiseManagementOption_];
  MEMORY[0x277D82BD8](v4);
  v1 = swift_task_alloc();
  v7[7] = v1;
  *v1 = v7[2];
  v1[1] = sub_268D4FFC4;
  v2 = v7[5];

  return sub_268D54438(v9);
}

uint64_t sub_268D4FFC4()
{
  v7 = *v1;
  v2 = *(*v1 + 56);
  *(v7 + 16) = *v1;
  v8 = (v7 + 16);
  *(v7 + 64) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_268D501CC;
  }

  else
  {
    v3 = *v8;
    v4 = sub_268D5012C;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268D5012C()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

uint64_t sub_268D501CC()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = v0;
  v3 = *(*(v0 + 16) + 8);
  v4 = *(v0 + 16);
  v5 = *(v2 + 64);

  return v3();
}

double sub_268D50278(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D48988];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48988]);
  v2 = sub_268F9AE24();
  sub_268D51E80(v2, v3, a1, a2);

  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

uint64_t sub_268D50304()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268D50340, 0);
}

uint64_t sub_268D50340()
{
  v0[2] = v0;
  v5 = *MEMORY[0x277D48988];
  v0[5] = *MEMORY[0x277D48988];
  MEMORY[0x277D82BE0](v5);
  v8 = sub_268F9AE24();
  v7 = v1;
  v0[6] = v1;
  v2 = swift_task_alloc();
  v6[7] = v2;
  *v2 = v6[2];
  v2[1] = sub_268D50428;
  v3 = v6[4];

  return sub_268D52FFC(v8, v7);
}

uint64_t sub_268D50428(unsigned int a1)
{
  v7 = *v1;
  v2 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  *(v7 + 16) = *v1;

  v3 = *(*(v7 + 16) + 8);

  return v3(a1);
}

uint64_t sub_268D505A4(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 73) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 72) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 72) = a1 & 1;
  *(v2 + 24) = v1;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268D50608, 0);
}

uint64_t sub_268D50608()
{
  v8 = *(v0 + 73);
  *(v0 + 16) = v0;
  sub_268D55EC8();
  v9 = sub_268CF0C44();
  *(v0 + 48) = v9;
  *(v0 + 32) = v9;
  if (v8)
  {
    v6 = *MEMORY[0x277D48978];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48978]);
    sub_268F9AE24();
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v5 = *MEMORY[0x277D48990];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48990]);
    sub_268F9AE24();
    MEMORY[0x277D82BD8](v5);
  }

  v4 = sub_268F9AE14();

  [v9 setNoiseManagementOption_];
  MEMORY[0x277D82BD8](v4);
  v1 = swift_task_alloc();
  v7[7] = v1;
  *v1 = v7[2];
  v1[1] = sub_268D4FFC4;
  v2 = v7[5];

  return sub_268D54438(v9);
}

double sub_268D50818(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D48978];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48978]);
  v2 = sub_268F9AE24();
  sub_268D51E80(v2, v3, a1, a2);

  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

uint64_t sub_268D508A4()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268D508E0, 0);
}

uint64_t sub_268D508E0()
{
  v0[2] = v0;
  v5 = *MEMORY[0x277D48978];
  v0[5] = *MEMORY[0x277D48978];
  MEMORY[0x277D82BE0](v5);
  v8 = sub_268F9AE24();
  v7 = v1;
  v0[6] = v1;
  v2 = swift_task_alloc();
  v6[7] = v2;
  *v2 = v6[2];
  v2[1] = sub_268D50428;
  v3 = v6[4];

  return sub_268D52FFC(v8, v7);
}

uint64_t sub_268D509C8(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 73) = a1 & 1;
  *(v2 + 16) = v2;
  *(v2 + 72) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 72) = a1 & 1;
  *(v2 + 24) = v1;
  v3 = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_268D50A2C, 0);
}

uint64_t sub_268D50A2C()
{
  v8 = *(v0 + 73);
  *(v0 + 16) = v0;
  sub_268D55EC8();
  v9 = sub_268CF0C44();
  *(v0 + 48) = v9;
  *(v0 + 32) = v9;
  if (v8)
  {
    v6 = *MEMORY[0x277D48980];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48980]);
    sub_268F9AE24();
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v5 = *MEMORY[0x277D48990];
    MEMORY[0x277D82BE0](*MEMORY[0x277D48990]);
    sub_268F9AE24();
    MEMORY[0x277D82BD8](v5);
  }

  v4 = sub_268F9AE14();

  [v9 setNoiseManagementOption_];
  MEMORY[0x277D82BD8](v4);
  v1 = swift_task_alloc();
  v7[7] = v1;
  *v1 = v7[2];
  v1[1] = sub_268D4FFC4;
  v2 = v7[5];

  return sub_268D54438(v9);
}

double sub_268D50C3C(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D48980];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48980]);
  v2 = sub_268F9AE24();
  sub_268D51E80(v2, v3, a1, a2);

  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

uint64_t sub_268D50CC8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_268D50D04, 0);
}

uint64_t sub_268D50D04()
{
  v0[2] = v0;
  v5 = *MEMORY[0x277D48980];
  v0[5] = *MEMORY[0x277D48980];
  MEMORY[0x277D82BE0](v5);
  v8 = sub_268F9AE24();
  v7 = v1;
  v0[6] = v1;
  v2 = swift_task_alloc();
  v6[7] = v2;
  *v2 = v6[2];
  v2[1] = sub_268D50428;
  v3 = v6[4];

  return sub_268D52FFC(v8, v7);
}

uint64_t sub_268D50DEC(void *a1)
{
  v4 = [a1 status];
  if (v4 == 2)
  {
    v2 = 0;
  }

  else if (v4 == 3)
  {
    v2 = 1;
  }

  else if (v4 == 4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277D82BD8](a1);
  return v2;
}

BOOL sub_268D50EB8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_268D510FC(char a1)
{
  *(v2 + 217) = a1 & 1;
  *(v2 + 144) = v2;
  *(v2 + 216) = 0;
  *(v2 + 152) = 0;
  *(v2 + 168) = 0;
  *(v2 + 216) = a1 & 1;
  *(v2 + 152) = v1;
  v3 = *(v2 + 144);
  return MEMORY[0x2822009F8](sub_268D51160, 0);
}

uint64_t sub_268D51160()
{
  v3 = *(v0 + 217);
  *(v0 + 144) = v0;
  v4 = [objc_opt_self() sharedPreferences];
  *(v0 + 208) = v4;
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_268D512C0;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC4B8, &qword_268F9E370);
  *(v0 + 112) = v2;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_268D515BC;
  *(v0 + 104) = &block_descriptor_48;
  [v4 setPersonalVolumeForCurrentlyRoutedDevice:v3 & 1 withCompletion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_268D512C0()
{
  v3 = *v0;
  *(v3 + 144) = *v0;
  v1 = *(v3 + 144);

  return MEMORY[0x2822009F8](sub_268D513BC, 0);
}

uint64_t sub_268D513BC()
{
  v1 = v0[26];
  v0[18] = v0;
  v9 = v0[20];
  v0[21] = v9;
  MEMORY[0x277D82BD8](v1);
  v0[22] = [v9 status];
  v0[23] = 1;
  type metadata accessor for AFBluetoothDeviceSettingResponseStatus();
  sub_268D55FE8();
  if (sub_268F9AE04())
  {
    v8[24] = [v9 value];
    v8[25] = 2;
    type metadata accessor for AFBluetoothDeviceSettingBooleanValue();
    sub_268D56068();
    v5 = sub_268F9B754();
    MEMORY[0x277D82BD8](v9);
    v6 = v5 & 1;
    v7 = 0;
  }

  else
  {
    v6 = sub_268D50DEC(v9);
    v7 = 1;
  }

  LOBYTE(v10) = v6;
  v2 = *(v8[18] + 8);
  v3 = v8[18];

  HIBYTE(v10) = v7 & 1;
  return v2(v10);
}

uint64_t sub_268D515BC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  MEMORY[0x277D82BE0](a2);
  v7 = a2;
  v2 = sub_268D5743C();
  sub_268D51654(v5, &v7, v2);
  return MEMORY[0x277D82BD8](a2);
}

uint64_t sub_268D51688()
{
  v1[18] = v1;
  v1[19] = 0;
  v1[21] = 0;
  v1[19] = v0;
  v2 = v1[18];
  return MEMORY[0x2822009F8](sub_268D516C8, 0);
}

uint64_t sub_268D516C8()
{
  *(v0 + 144) = v0;
  v3 = [objc_opt_self() sharedPreferences];
  *(v0 + 208) = v3;
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_268D51814;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC4B8, &qword_268F9E370);
  *(v0 + 112) = v2;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_268D515BC;
  *(v0 + 104) = &block_descriptor_51;
  [v3 getPersonalVolumeForCurrentlyRoutedDeviceWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_268D51814()
{
  v3 = *v0;
  *(v3 + 144) = *v0;
  v1 = *(v3 + 144);

  return MEMORY[0x2822009F8](sub_268D51910, 0);
}

uint64_t sub_268D51910()
{
  v1 = v0[26];
  v0[18] = v0;
  v9 = v0[20];
  v0[21] = v9;
  MEMORY[0x277D82BD8](v1);
  v0[22] = [v9 status];
  v0[23] = 1;
  type metadata accessor for AFBluetoothDeviceSettingResponseStatus();
  sub_268D55FE8();
  if (sub_268F9AE04())
  {
    v8[24] = [v9 value];
    v8[25] = 2;
    type metadata accessor for AFBluetoothDeviceSettingBooleanValue();
    sub_268D56068();
    v5 = sub_268F9B754();
    MEMORY[0x277D82BD8](v9);
    v6 = v5 & 1;
    v7 = 0;
  }

  else
  {
    v6 = sub_268D50DEC(v9);
    v7 = 1;
  }

  LOBYTE(v10) = v6;
  v2 = *(v8[18] + 8);
  v3 = v8[18];

  HIBYTE(v10) = v7 & 1;
  return v2(v10);
}

uint64_t sub_268D51B00(char a1)
{
  *(v2 + 217) = a1 & 1;
  *(v2 + 144) = v2;
  *(v2 + 216) = 0;
  *(v2 + 152) = 0;
  *(v2 + 168) = 0;
  *(v2 + 216) = a1 & 1;
  *(v2 + 152) = v1;
  v3 = *(v2 + 144);
  return MEMORY[0x2822009F8](sub_268D51B64, 0);
}

uint64_t sub_268D51B64()
{
  v3 = *(v0 + 217);
  *(v0 + 144) = v0;
  v4 = [objc_opt_self() sharedPreferences];
  *(v0 + 208) = v4;
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_268D512C0;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC4B8, &qword_268F9E370);
  *(v0 + 112) = v2;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_268D515BC;
  *(v0 + 104) = &block_descriptor_54;
  [v4 setConversationAwarenessForCurrentlyRoutedDevice:v3 & 1 withCompletion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_268D51CC4()
{
  v1[18] = v1;
  v1[19] = 0;
  v1[21] = 0;
  v1[19] = v0;
  v2 = v1[18];
  return MEMORY[0x2822009F8](sub_268D51D04, 0);
}

uint64_t sub_268D51D04()
{
  *(v0 + 144) = v0;
  v3 = [objc_opt_self() sharedPreferences];
  *(v0 + 208) = v3;
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_268D51814;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC4B8, &qword_268F9E370);
  *(v0 + 112) = v2;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_268D515BC;
  *(v0 + 104) = &block_descriptor_57;
  [v3 getConversationAwarenessForCurrentlyRoutedDeviceWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

double sub_268D51E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __dst[6] = 0;
  __dst[9] = a1;
  __dst[10] = a2;
  __dst[7] = a3;
  __dst[8] = a4;
  sub_268D561A8();
  v18 = sub_268CF0C44();
  __dst[5] = v18;
  sub_268D35D60((v17 + 16), v19);
  if (v20)
  {
    sub_268CDF978(v19, __dst);
  }

  else
  {
    sub_268F99764();
    if (v20)
    {
      sub_268D28414(v19);
    }
  }

  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v18);
  sub_268D5620C();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v11);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  sub_268D353D0();
  sub_268F99A24();

  __swift_destroy_boxed_opaque_existential_0(__dst);
  *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  return result;
}

void sub_268D52140(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v133 = a1;
  v130 = a2;
  v131 = a3;
  *&v132 = a4;
  *(&v132 + 1) = a5;
  v118 = "Submitting Ace Command failed: %@";
  v119 = "Ace Command not the expected SASettingNoiseManagementEntity: %@";
  v120 = "Payload of Ace Command response is null: %@";
  v121 = "Error while getting response of Ace Command: %@";
  v155 = 0;
  v153 = 0;
  v154 = 0;
  v151 = 0;
  v152 = 0;
  v122 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v123 = sub_268F99A44();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v126 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123);
  v127 = v52 - v126;
  v128 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52 - v126);
  v129 = v52 - v128;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v137 = *(*(v140 - 1) + 64);
  v134 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v133);
  v135 = (v52 - v134);
  v136 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v138 = v52 - v136;
  v139 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v141 = (v52 - v139);
  v155 = v8;
  v153 = v9;
  v154 = v10;
  v151 = v11;
  v152 = v12;
  sub_268D570CC(v8, (v52 - v139));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v124 + 8))(v141, v123);
    v114 = sub_268F9B294();
    v116 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v116);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v113 = sub_268F9B734();
    v111 = v15;
    sub_268D570CC(v133, v135);
    v109 = sub_268F9AE64();
    v110 = v16;
    v111[3] = MEMORY[0x277D837D0];
    v17 = sub_268CDD224();
    v18 = v109;
    v19 = v110;
    v20 = v111;
    v21 = v17;
    v22 = v113;
    v111[4] = v21;
    *v20 = v18;
    v20[1] = v19;
    sub_268CD0F7C();
    v115 = v22;
    v117 = 2;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v116);

    v130(v117);

    return;
  }

  v13 = v122;
  v14 = v138;
  sub_268D571A8(v141);
  sub_268D570CC(v133, v14);
  sub_268D2DFAC(v140, v129, &v150);
  if (v13)
  {
    v53 = *(v124 + 32);
    v52[1] = v124 + 32;
    v53(v127, v129, v123);
    sub_268D5724C();
    v62 = swift_allocError();
    v53(v42, v127, v123);
    v43 = v62;
    v149 = v62;
    v59 = sub_268F9B294();
    v61 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v61);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v58 = sub_268F9B734();
    v56 = v44;
    sub_268D570CC(v133, v135);
    v54 = sub_268F9AE64();
    v55 = v45;
    v56[3] = MEMORY[0x277D837D0];
    v46 = sub_268CDD224();
    v47 = v54;
    v48 = v55;
    v49 = v56;
    v50 = v46;
    v51 = v58;
    v56[4] = v50;
    *v49 = v47;
    v49[1] = v48;
    sub_268CD0F7C();
    v60 = v51;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v61);

    goto LABEL_31;
  }

  v107 = v150;
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  v108 = v23;
  if (v23)
  {
    v106 = v108;
  }

  else
  {
    MEMORY[0x277D82BD8](v107);
    v106 = 0;
  }

  v105 = v106;
  if (!v106)
  {
    v68 = sub_268F9B294();
    v70 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v70);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v67 = sub_268F9B734();
    v65 = v34;
    sub_268D570CC(v133, v135);
    v63 = sub_268F9AE64();
    v64 = v35;
    v65[3] = MEMORY[0x277D837D0];
    v36 = sub_268CDD224();
    v37 = v63;
    v38 = v64;
    v39 = v65;
    v40 = v36;
    v41 = v67;
    v65[4] = v40;
    *v39 = v37;
    v39[1] = v38;
    sub_268CD0F7C();
    v69 = v41;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v70);
LABEL_31:

    v130(2);

    return;
  }

  v104 = v105;
  v102 = v105;
  v148 = v105;
  MEMORY[0x277D82BE0](v105);
  v103 = [v102 setting];
  MEMORY[0x277D82BD8](v102);
  if (v103)
  {
    v101 = v103;
    v98 = v103;
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    v99 = v24;
    if (v24)
    {
      v97 = v99;
    }

    else
    {
      MEMORY[0x277D82BD8](v98);
      v97 = 0;
    }

    v100 = v97;
  }

  else
  {
    v100 = 0;
  }

  v96 = v100;
  if (v100)
  {
    v95 = v96;
    v93 = v96;
    v147 = v96;

    v94 = [v93 value];
    if (v94)
    {
      v92 = v94;
      v87 = v94;
      v88 = sub_268F9AE24();
      v89 = v25;
      MEMORY[0x277D82BD8](v87);
      v90 = v88;
      v91 = v89;
    }

    else
    {
      v90 = 0;
      v91 = 0;
    }

    v86 = v91;
    v85 = v90;

    v145[0] = v85;
    v145[1] = v86;
    v146 = v132;
    if (v86)
    {
      sub_268D28874(v145, &v144);
      if (*(&v146 + 1))
      {
        v82 = &v143;
        v143 = v144;
        v81 = &v142;
        v142 = v146;
        v83 = MEMORY[0x26D62DB50](v144, *(&v144 + 1), v146, *(&v146 + 1));
        sub_268CD9D30(v81);
        sub_268CD9D30(v82);
        sub_268CD9D30(v145);
        v84 = v83;
LABEL_26:
        v80 = v84;

        v130(v80 & 1);

        MEMORY[0x277D82BD8](v93);
        MEMORY[0x277D82BD8](v102);
        return;
      }

      sub_268CD9D30(&v144);
    }

    else if (!*(&v146 + 1))
    {
      sub_268CD9D30(v145);
      v84 = 1;
      goto LABEL_26;
    }

    sub_268D28550(v145);
    v84 = 0;
    goto LABEL_26;
  }

  v76 = sub_268F9B294();
  v78 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v78);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v75 = sub_268F9B734();
  v73 = v26;
  sub_268D570CC(v133, v135);
  v71 = sub_268F9AE64();
  v72 = v27;
  v73[3] = MEMORY[0x277D837D0];
  v28 = sub_268CDD224();
  v29 = v71;
  v30 = v72;
  v31 = v73;
  v32 = v28;
  v33 = v75;
  v73[4] = v32;
  *v31 = v29;
  v31[1] = v30;
  sub_268CD0F7C();
  v77 = v33;
  v79 = 2;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v78);

  v130(v79);

  MEMORY[0x277D82BD8](v102);
}

uint64_t sub_268D52FFC(uint64_t a1, uint64_t a2)
{
  v3[35] = v2;
  v3[34] = a2;
  v3[33] = a1;
  v3[24] = v3;
  v3[16] = 0;
  v3[17] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[28] = 0;
  v3[30] = 0;
  v3[31] = 0;
  v3[32] = 0;
  v3[16] = a1;
  v3[17] = a2;
  v3[25] = v2;
  v4 = v3[24];
  return MEMORY[0x2822009F8](sub_268D5306C, 0);
}

uint64_t sub_268D5306C()
{
  v16 = v0[35];
  v0[24] = v0;
  sub_268D561A8();
  v17 = sub_268CF0C44();
  v0[36] = v17;
  v0[26] = v17;
  sub_268D35D60((v16 + 56), v0 + 7);
  if (v0[10])
  {
    sub_268CDF978(v15 + 7, v15 + 2);
  }

  else
  {
    sub_268F99754();
    if (v15[10])
    {
      sub_268D28414(v15 + 7);
    }
  }

  sub_268F9B284();
  v1 = sub_268DC7AE8();
  v12 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v15[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v2;
  MEMORY[0x277D82BE0](v17);
  v15[27] = v17;
  sub_268D5620C();
  v9 = sub_268F9AE74();
  v10 = v3;
  v11[3] = MEMORY[0x277D837D0];
  v4 = sub_268CDD224();
  v15[38] = v4;
  v11[4] = v4;
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);
  v14 = v15[5];
  v13 = v15[6];
  __swift_project_boxed_opaque_existential_1(v15 + 2, v14);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v15[39] = v6;
  v7 = sub_268D353D0();
  *v6 = v15[24];
  v6[1] = sub_268D5337C;

  return MEMORY[0x2821BB6A0](v17, v14, v7, v13);
}

uint64_t sub_268D5337C(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 312);
  v9[24] = *v2;
  v10 = v9 + 24;
  v9[40] = a1;
  v9[41] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268D53D5C;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268D534EC;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D534EC()
{
  v1 = v0[40];
  v0[24] = v0;
  v0[30] = v1;
  MEMORY[0x277D82BE0](v1);
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v33 = v35;
  }

  else
  {
    MEMORY[0x277D82BD8](*(v34 + 320));
    v33 = 0;
  }

  if (v33)
  {
    *(v34 + 248) = v33;
    MEMORY[0x277D82BE0](v33);
    v32 = [v33 setting];
    MEMORY[0x277D82BD8](v33);
    if (v32)
    {
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (v31)
      {
        v30 = v31;
      }

      else
      {
        MEMORY[0x277D82BD8](v32);
        v30 = 0;
      }

      v29 = v30;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      *(v34 + 256) = v29;
      v28 = [v29 value];
      if (v28)
      {
        v24 = sub_268F9AE24();
        v25 = v2;
        MEMORY[0x277D82BD8](v28);
        v26 = v24;
        v27 = v25;
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      v23 = *(v34 + 272);
      v22 = *(v34 + 264);

      *(v34 + 96) = v26;
      *(v34 + 104) = v27;
      *(v34 + 112) = v22;
      *(v34 + 120) = v23;
      if (*(v34 + 104))
      {
        sub_268D28874((v34 + 96), (v34 + 144));
        if (*(v34 + 120))
        {
          *(v34 + 160) = *(v34 + 144);
          *(v34 + 176) = *(v34 + 112);
          v20 = MEMORY[0x26D62DB50](*(v34 + 160), *(v34 + 168), *(v34 + 176), *(v34 + 184));
          sub_268CD9D30(v34 + 176);
          sub_268CD9D30(v34 + 160);
          sub_268CD9D30(v34 + 96);
          v21 = v20;
LABEL_20:
          v17 = *(v34 + 320);
          v18 = *(v34 + 288);

          MEMORY[0x277D82BD8](v29);
          MEMORY[0x277D82BD8](v33);
          MEMORY[0x277D82BD8](v17);
          __swift_destroy_boxed_opaque_existential_0((v34 + 16));
          v3 = MEMORY[0x277D82BD8](v18);
          v19 = v21 & 1;
          goto LABEL_26;
        }

        sub_268CD9D30(v34 + 144);
      }

      else if (!*(v34 + 120))
      {
        sub_268CD9D30(v34 + 96);
        v21 = 1;
        goto LABEL_20;
      }

      sub_268D28550(v34 + 96);
      v21 = 0;
      goto LABEL_20;
    }

    v15 = *(v34 + 320);
    v13 = *(v34 + 296);
    v16 = *(v34 + 288);
    sub_268F9B284();
    v4 = sub_268DC7AE8();
    v14 = *v4;
    MEMORY[0x277D82BE0](*v4);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v15);
    __swift_destroy_boxed_opaque_existential_0((v34 + 16));
    v3 = MEMORY[0x277D82BD8](v16);
    v19 = 2;
  }

  else
  {
    v11 = *(v34 + 320);
    v9 = *(v34 + 296);
    v12 = *(v34 + 288);
    sub_268F9B284();
    v5 = sub_268DC7AE8();
    v10 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    __swift_destroy_boxed_opaque_existential_0((v34 + 16));
    v3 = MEMORY[0x277D82BD8](v12);
    v19 = 2;
  }

LABEL_26:
  v6 = *(*(v34 + 192) + 8);
  v7 = *(v34 + 192);

  return v6(v19, v3);
}

uint64_t sub_268D53D5C()
{
  v15 = v0[41];
  v11 = v0[38];
  v13 = v0[37];
  v16 = v0[36];
  v0[24] = v0;
  v1 = v15;
  v0[28] = v15;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B284();
  sub_268F9B734();
  v12 = v3;
  v4 = v15;
  v0[29] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v14);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = MEMORY[0x277D82BD8](v16);
  v8 = *(v0[24] + 8);
  v9 = v0[24];

  return v8(2, v7);
}

uint64_t sub_268D53F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __dst[5] = 0;
  __dst[8] = a1;
  __dst[6] = a2;
  __dst[7] = a3;
  sub_268D35D60((v3 + 16), v16);
  if (v17)
  {
    sub_268CDF978(v16, __dst);
  }

  else
  {
    sub_268F99764();
    if (v17)
    {
      sub_268D28414(v16);
    }
  }

  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](a1);
  sub_268D562A0();
  sub_268D56304();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v11);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  sub_268D353D0();
  sub_268F99A24();

  return __swift_destroy_boxed_opaque_existential_0(__dst);
}

uint64_t sub_268D541D8(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v13 = a1;
  v11 = a2;
  v12 = a3;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v10 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v20 = (&v9 - v10);
  v14 = sub_268F99A44();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v13);
  v18 = &v9 - v17;
  v24 = &v9 - v17;
  v23 = v3;
  v21 = v4;
  v22 = v5;
  sub_268D570CC(v3, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v18, v20, v14);

    sub_268D5724C();
    v9 = swift_allocError();
    (*(v15 + 16))(v8, v18, v14);
    v11(v9);

    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    sub_268D571A8(v20);

    v11(0);
  }
}

uint64_t sub_268D54438(uint64_t a1)
{
  v2[17] = v1;
  v2[16] = a1;
  v2[12] = v2;
  v2[13] = 0;
  v2[14] = 0;
  v2[13] = a1;
  v2[14] = v1;
  v3 = v2[12];
  return MEMORY[0x2822009F8](sub_268D54488, 0);
}

uint64_t sub_268D54488()
{
  v1 = v0[17];
  v0[12] = v0;
  sub_268D35D60((v1 + 56), v0 + 7);
  if (v0[10])
  {
    sub_268CDF978(v17 + 7, v17 + 2);
  }

  else
  {
    sub_268F99754();
    if (v17[10])
    {
      sub_268D28414(v17 + 7);
    }
  }

  v10 = v17[16];
  sub_268F9B284();
  v2 = sub_268DC7AE8();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v13 = v3;
  MEMORY[0x277D82BE0](v10);
  v17[15] = v10;
  sub_268D562A0();
  sub_268D56304();
  v11 = sub_268F9AE74();
  v12 = v4;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v14);
  v16 = v17[5];
  v15 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v16);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v17[18] = v6;
  v7 = sub_268D353D0();
  *v6 = v17[12];
  v6[1] = sub_268D54750;
  v8 = v17[16];

  return MEMORY[0x2821BB6A0](v8, v16, v7, v15);
}

uint64_t sub_268D54750(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 144);
  v9[12] = *v2;
  v10 = v9 + 12;
  v9[19] = a1;
  v9[20] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268D54964;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268D548C0;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268D548C0()
{
  v1 = v0[19];
  v0[12] = v0;
  MEMORY[0x277D82BD8](v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = *(v0[12] + 8);
  v3 = v0[12];

  return v2();
}

uint64_t sub_268D54964()
{
  *(v0 + 96) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(*(v5 + 96) + 8);
  v2 = *(v5 + 96);
  v3 = *(v5 + 160);

  return v1();
}

uint64_t SettingsNativeApiClient.deinit()
{
  sub_268D28414((v0 + 16));
  sub_268D28414((v0 + 56));
  return v2;
}

unint64_t sub_268D54AA8()
{
  v2 = qword_2802DC380;
  if (!qword_2802DC380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC380);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D54B0C()
{
  v2 = qword_2802DC388;
  if (!qword_2802DC388)
  {
    type metadata accessor for AXSMotionCuesMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC388);
    return WitnessTable;
  }

  return v2;
}

void *sub_268D54B8C(const void *a1, void *a2)
{
  v6 = sub_268F99214();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D54CB4(uint64_t a1)
{
  v3 = sub_268F99214();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_268D54D5C()
{
  v2 = qword_2802DC398;
  if (!qword_2802DC398)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC398);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D54DC0()
{
  v2 = qword_2802DC3A0;
  if (!qword_2802DC3A0)
  {
    sub_268D54D5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC3A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268D54E40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_268D54E80();
  return a1;
}

unint64_t sub_268D54EC4()
{
  v2 = qword_2802DC3B0;
  if (!qword_2802DC3B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC3B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D54F28()
{
  v2 = qword_2802DC3B8;
  if (!qword_2802DC3B8)
  {
    type metadata accessor for UNNotificationSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC3B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_268D5500C()
{
  v2 = qword_2802DC3C0;
  if (!qword_2802DC3C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC3C0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_268D55158()
{
  v2 = qword_2802DC3C8;
  if (!qword_2802DC3C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC3C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D551BC()
{
  v2 = qword_2802DC3D0;
  if (!qword_2802DC3D0)
  {
    type metadata accessor for UNNotificationAnnouncementCarPlaySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5523C()
{
  v2 = qword_2802DC3D8;
  if (!qword_2802DC3D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC3D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D552B8()
{
  v2 = qword_2802DC3E0;
  if (!qword_2802DC3E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC3E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D55330()
{
  v2 = qword_2802DC3E8;
  if (!qword_2802DC3E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC3E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D55394()
{
  v2 = qword_280FE2758;
  if (!qword_280FE2758)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2758);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D553F8()
{
  v2 = qword_2802DC3F0;
  if (!qword_2802DC3F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC3F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D55474()
{
  v2 = qword_2802DC3F8;
  if (!qword_2802DC3F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D554F0()
{
  v2 = qword_2802DC400;
  if (!qword_2802DC400)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC400);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D55554()
{
  v2 = qword_2802DC408;
  if (!qword_2802DC408)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC408);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D555C4()
{
  v2 = qword_2802DC418;
  if (!qword_2802DC418)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC418);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D55628()
{
  v2 = qword_2802DC420;
  if (!qword_2802DC420)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC420);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D55698()
{
  v2 = qword_2802DC428;
  if (!qword_2802DC428)
  {
    sub_268D353D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D55718()
{
  v2 = qword_2802DC430;
  if (!qword_2802DC430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D55794()
{
  v2 = qword_280FE2820;
  if (!qword_280FE2820)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2820);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D557F8()
{
  v2 = qword_2802DC440;
  if (!qword_2802DC440)
  {
    type metadata accessor for BCBatteryDeviceAccessoryCategory();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D55878()
{
  v2 = qword_280FE2760;
  if (!qword_280FE2760)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2760);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D558DC()
{
  v2 = qword_280FE2830;
  if (!qword_280FE2830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC448, &qword_268F9E2F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D55964()
{
  v2 = qword_2802DC450;
  if (!qword_2802DC450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC448, &qword_268F9E2F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D559EC()
{
  v2 = qword_280FE2818;
  if (!qword_280FE2818)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2818);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D55A50()
{
  v2 = qword_2802DC460;
  if (!qword_2802DC460)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC460);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D55AB4()
{
  v2 = qword_2802DC468;
  if (!qword_2802DC468)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC468);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D55B18()
{
  v2 = qword_2802DC470;
  if (!qword_2802DC470)
  {
    sub_268D55AB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D55B98()
{
  v2 = qword_2802DC478;
  if (!qword_2802DC478)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC478);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D55C10()
{
  v2 = qword_2802DC480;
  if (!qword_2802DC480)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC480);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D55C74(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

__n128 sub_268D55CF0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_268D55D0C(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t sub_268D55D88()
{
  v2 = qword_2802DC490;
  if (!qword_2802DC490)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D55E48()
{
  v2 = qword_2802DC4A0;
  if (!qword_2802DC4A0)
  {
    sub_268D55C10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC4A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D55EC8()
{
  v2 = qword_2802DC4A8;
  if (!qword_2802DC4A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC4A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D55F2C()
{
  v2 = qword_2802DC4B0;
  if (!qword_2802DC4B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC4B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D55FE8()
{
  v2 = qword_2802DC4C0;
  if (!qword_2802DC4C0)
  {
    type metadata accessor for AFBluetoothDeviceSettingResponseStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC4C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D56068()
{
  v2 = qword_2802DC4C8;
  if (!qword_2802DC4C8)
  {
    type metadata accessor for AFBluetoothDeviceSettingBooleanValue();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D561A8()
{
  v2 = qword_2802DC4D0;
  if (!qword_2802DC4D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC4D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D5620C()
{
  v2 = qword_2802DC4D8;
  if (!qword_2802DC4D8)
  {
    sub_268D561A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC4D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D562A0()
{
  v2 = qword_2802DC4E0;
  if (!qword_2802DC4E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC4E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D56304()
{
  v2 = qword_2802DC4E8;
  if (!qword_2802DC4E8)
  {
    sub_268D562A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC4E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D56614(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268D5677C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_268D569DC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268D56B44(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_268D56D6C()
{
  v2 = qword_2802DC4F0;
  if (!qword_2802DC4F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC4F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D56E00()
{
  v2 = qword_2802DC4F8;
  if (!qword_2802DC4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D56E94()
{
  v2 = qword_2802DC500;
  if (!qword_2802DC500)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D56F28()
{
  v2 = qword_2802DC508;
  if (!qword_2802DC508)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D56FBC()
{
  v2 = qword_2802DC510;
  if (!qword_2802DC510)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D57050()
{
  v2 = qword_2802DC518;
  if (!qword_2802DC518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC518);
    return WitnessTable;
  }

  return v2;
}

void *sub_268D570CC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_268F99A44();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;
    MEMORY[0x277D82BE0](*a1);
    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_268D571A8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_268F99A44();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    MEMORY[0x277D82BD8](*a1);
  }

  return a1;
}

unint64_t sub_268D5724C()
{
  v2 = qword_2802DC528;
  if (!qword_2802DC528)
  {
    sub_268F99A44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC528);
    return WitnessTable;
  }

  return v2;
}

id sub_268D572CC(uint64_t a1)
{
  v4 = [v1 initWithQueue_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_268D57344()
{
  v2 = [v0 initWithDelegate_];
  swift_unknownObjectRelease();
  return v2;
}

id sub_268D5738C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_268F9AE14();

    v2 = [v7 initWithSuiteName_];
  }

  else
  {
    v2 = [v7 initWithSuiteName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

unint64_t sub_268D5743C()
{
  v2 = qword_2802DC530;
  if (!qword_2802DC530)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC530);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_268D5751C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC538, &qword_268F9E7E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_268F99A44();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;
    MEMORY[0x277D82BE0](*a1);
    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_268D575F8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC538, &qword_268F9E7E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_268F99A44();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    MEMORY[0x277D82BD8](*a1);
  }

  return a1;
}

unint64_t sub_268D5769C()
{
  v2 = qword_2802DC540;
  if (!qword_2802DC540)
  {
    sub_268F99A44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5771C()
{
  v2 = qword_2802DC550;
  if (!qword_2802DC550)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC550);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268D57780()
{
  v2 = qword_2802DC558;
  if (!qword_2802DC558)
  {
    sub_268D5771C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC558);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_268D57874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v26 = a1;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v46 = 0;
  v42 = 0;
  v41 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC568, &qword_268F9E800);
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v15 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v32 = &v14 - v15;
  v53 = &v14 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC570, &qword_268F9E808);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v16 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v20 = &v14 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v37 = &v14 - v17;
  v52 = &v14 - v17;
  v51 = v4;
  v40 = &v50;
  sub_268F99C44();
  v39 = &v49;
  sub_268F99764();
  v19 = v48;
  sub_268CDE730(v40, v48);
  v18 = v47;
  sub_268CDE730(v39, v47);
  v5 = sub_268D57C40();
  sub_268D57C70(v19, v18, v5, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC578, &qword_268F9E810);
  (*(v35 + 16))(v20, v37, v38);
  v34 = sub_268F995F4();
  v46 = v34;
  v25 = 0;
  v23 = type metadata accessor for NumericSettingFlowStrategy();
  v22 = v45;
  sub_268CDE730(v40, v45);
  v21 = v44;
  sub_268CDE730(v39, v44);
  v6 = sub_268D587A8();
  v7 = sub_268E6687C(v22, v21, v6);
  v24 = &v43;
  v43 = v7;

  sub_268D587D8();
  sub_268F998C4();
  sub_268F9AB54();
  sub_268F9AEF4();
  v29 = sub_268F9AB34();
  v42 = v29;
  v28 = sub_268F998B4();
  v41 = v28;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC588, &qword_268F9E818);
  v27[3] = v8;
  v9 = sub_268D58858();
  v10 = v27;
  v11 = v9;
  v12 = v28;
  v27[4] = v11;
  *v10 = v12;

  (*(v30 + 8))(v32, v33);

  (*(v35 + 8))(v37, v38);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return __swift_destroy_boxed_opaque_existential_0(v40);
}

uint64_t sub_268D57C40()
{
  v1 = *sub_268F23A60();

  return v1;
}

uint64_t sub_268D57C70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v122 = a4;
  v127 = a1;
  v126 = a2;
  v125 = a3;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v147 = 0;
  v141 = 0;
  v114 = 0;
  v32 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v92 = &v32 - v32;
  v65 = sub_268F99274();
  v39 = *(v65 - 8);
  v40 = v65 - 8;
  v33 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v64 = &v32 - v33;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC570, &qword_268F9E808);
  v101 = *(v129 - 8);
  v102 = v129 - 8;
  v35 = *(v101 + 64);
  v34 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v111 = &v32 - v34;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v128 = &v32 - v36;
  v159 = &v32 - v36;
  v158 = v5;
  v157 = v6;
  v156 = v7;
  v115 = sub_268D588E0();
  v116 = sub_268CDA484();
  sub_268F995E4();
  (*(v101 + 32))(v128, v111, v129);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5A0, qword_268F9E820);
  v72 = 1;
  v59 = sub_268F9AEF4();
  v53 = v8;
  v47 = &v153;
  sub_268F99C44();
  v38 = v154;
  v37 = v155;
  __swift_project_boxed_opaque_existential_1(v47, v154);
  sub_268F99784();
  v41 = sub_268F99254();
  v42 = v9;
  v63 = *(v39 + 8);
  v62 = v39 + 8;
  v63(v64, v65);
  v46 = v152;
  v152[0] = v41;
  v152[1] = v42;
  v68 = "-";
  v70 = 1;
  v10 = sub_268F9AEF4();
  v45 = v151;
  v151[0] = v10;
  v151[1] = v11;
  v69 = "_";
  v12 = sub_268F9AEF4();
  v44 = v150;
  v150[0] = v12;
  v150[1] = v13;
  v71 = sub_268D58980();
  v73 = MEMORY[0x277D837D0];
  sub_268D58944();
  v54 = sub_268F9B3E4();
  v55 = v14;
  sub_268CD9D30(v44);
  sub_268CD9D30(v45);
  sub_268CD9D30(v46);
  __swift_destroy_boxed_opaque_existential_0(v47);
  v56 = &v149;
  sub_268F99764();
  v57 = &v148;
  sub_268F99C44();
  v58 = sub_268D589F8();
  sub_268D58A5C();
  v48 = sub_268D58A84();
  v49 = sub_268D58ABC();
  v50 = sub_268D58AF4();
  v51 = sub_268D58B2C();
  v52 = sub_268D58B64();
  v15 = sub_268D58B9C();
  v121 = sub_268EC9E48(v59, v53, v54, v55, v56, v57, v58, v92, v48, v49, v50, v51, v52, v15);
  v147 = v121;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5A8, qword_268F9E900);
  v93 = sub_268F9AEF4();
  v86 = v16;
  v61 = v127[3];
  v60 = v127[4];
  __swift_project_boxed_opaque_existential_1(v127, v61);
  sub_268F99784();
  v66 = sub_268F99254();
  v67 = v17;
  v63(v64, v65);
  v77 = v146;
  v146[0] = v66;
  v146[1] = v67;
  v18 = sub_268F9AEF4();
  v76 = v145;
  v145[0] = v18;
  v145[1] = v19;
  v20 = sub_268F9AEF4();
  v75 = v144;
  v144[0] = v20;
  v144[1] = v21;
  sub_268D58944();
  v87 = sub_268F9B3E4();
  v88 = v22;
  sub_268CD9D30(v75);
  sub_268CD9D30(v76);
  sub_268CD9D30(v77);
  v89 = v143;
  sub_268CDE730(v126, v143);
  v90 = v142;
  sub_268CDE730(v127, v142);
  v79 = sub_268D2E630();
  v78 = sub_268CDD0DC();
  v91 = sub_268D589F8();
  sub_268D58A5C();
  v80 = sub_268D58B9C();
  v81 = sub_268D58ABC();
  v82 = sub_268D58AF4();
  v83 = sub_268D58BD4();
  v84 = sub_268D58B64();
  v85 = sub_268D58C0C();
  v23 = sub_268D58C44();
  v120 = sub_268EEB954(v93, v86, v87, v88, v89, v90, v91, v92, v80, v81, v82, v83, v84, v85, v23);
  v141 = v120;
  v124 = *(v101 + 16);
  v123 = v101 + 16;
  v124(v111, v128, v129);
  v99 = type metadata accessor for ConfirmNumericSettingIntentStrategy();
  v94 = v140;
  sub_268CDE730(v127, v140);
  v95 = v139;
  sub_268CDE730(v126, v139);

  v96 = sub_268D58C84();
  v97 = v138;
  sub_268D58CB4(v138);
  v98 = v137;
  sub_268D58CF4(v137);
  v24 = sub_268D86C08(v94, v95, v96, v121, v97, v98);
  v100 = &v136;
  v136 = v24;
  v25 = sub_268D58E50();
  v103 = sub_268D58D4C(v100, v125, v129, v99, v25);
  v104 = v26;

  v131 = *(v101 + 8);
  v130 = v101 + 8;
  v131(v111, v129);
  sub_268F995D4();
  v124(v111, v128, v129);
  v109 = type metadata accessor for HandleNumericSettingFlowStrategy();
  v108 = v135;
  sub_268CDE730(v127, v135);
  v105 = v134;
  sub_268CDE730(v126, v134);

  v106 = sub_268D587A8();
  v107 = v133;
  sub_268D58CB4(v133);
  v27 = sub_268D58ED0();
  v28 = sub_268EE5168(v108, v105, v106, v121, v107, v27, v120);
  v110 = &v132;
  v132 = v28;
  sub_268D58F58();
  v112 = sub_268D58F00(v110, v129);
  v113 = v29;

  v131(v111, v129);
  sub_268F995B4();
  sub_268F9AB54();
  v117 = sub_268F9AB34();
  v118 = sub_268F99594();
  v119 = v30;

  sub_268F995C4();

  v124(v122, v128, v129);

  __swift_destroy_boxed_opaque_existential_0(v126);
  __swift_destroy_boxed_opaque_existential_0(v127);
  return (v131)(v128, v129);
}

uint64_t sub_268D587A8()
{
  v1 = *sub_268E56C9C();

  return v1;
}

unint64_t sub_268D587D8()
{
  v2 = qword_2802DC580;
  if (!qword_2802DC580)
  {
    type metadata accessor for NumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D58858()
{
  v2 = qword_2802DC590;
  if (!qword_2802DC590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC588, &qword_268F9E818);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D588E0()
{
  v2 = qword_2802DC598;
  if (!qword_2802DC598)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC598);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268D58944()
{
  sub_268D590FC(0);

  return 0;
}

unint64_t sub_268D58980()
{
  v2 = qword_280FE2888[0];
  if (!qword_280FE2888[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_280FE2888);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D589F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C0, &unk_268FA2B50);
  sub_268F9B734();
  return sub_268F9ADA4();
}

uint64_t sub_268D58A84()
{
  v1 = *sub_268E56C9C();

  return v1;
}

uint64_t sub_268D58ABC()
{
  v1 = *sub_268E12744();

  return v1;
}

uint64_t sub_268D58AF4()
{
  v1 = *sub_268F88868();

  return v1;
}

uint64_t sub_268D58B2C()
{
  v1 = *sub_268DCA278();

  return v1;
}

uint64_t sub_268D58B64()
{
  v1 = *sub_268D35434();

  return v1;
}

uint64_t sub_268D58B9C()
{
  v1 = *sub_268F36878();

  return v1;
}

uint64_t sub_268D58BD4()
{
  v1 = *sub_268EAC798();

  return v1;
}

uint64_t sub_268D58C0C()
{
  v1 = *sub_268F47BC4();

  return v1;
}

uint64_t sub_268D58C44()
{
  v0 = sub_268DDE5B4();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268D58C84()
{
  v1 = *sub_268E04568();

  return v1;
}

uint64_t sub_268D58CB4@<X0>(uint64_t a1@<X8>)
{
  result = sub_268E53518();
  *(a1 + 24) = &type metadata for SettingsFeatureFlagsImpl;
  *(a1 + 32) = &protocol witness table for SettingsFeatureFlagsImpl;
  return result;
}

uint64_t sub_268D58CF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_268F999C4();
  result = sub_268F999B4();
  a1[3] = v2;
  a1[4] = MEMORY[0x277D5BD58];
  *a1 = result;
  return result;
}

uint64_t sub_268D58D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);

  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a2;
  v12 = sub_268F995A4();

  return v12;
}

unint64_t sub_268D58E50()
{
  v2 = qword_2802DC5B0;
  if (!qword_2802DC5B0)
  {
    type metadata accessor for ConfirmNumericSettingIntentStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC5B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D58ED0()
{
  v1 = *sub_268F36878();

  return v1;
}

uint64_t sub_268D58F00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_268F99584();
}

unint64_t sub_268D58F58()
{
  v2 = qword_2802DC5B8;
  if (!qword_2802DC5B8)
  {
    type metadata accessor for HandleNumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC5B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D58FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[9] = a3;
  v9[8] = a4;
  v9[7] = a5;
  v9[6] = a1;
  v9[5] = a2;
  sub_268F99B54();
  v7 = sub_268F99B44();
  v6 = sub_268F99B24();
  sub_268F99C44();
  v8 = sub_268F23E0C(v7, v6);
  __swift_destroy_boxed_opaque_existential_0(v9);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  return v8 & 1;
}

uint64_t sub_268D590FC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for CompareOptions();
    v1 = sub_268F9B044();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t *sub_268D591A8()
{
  if (qword_280FE2BF8 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FF0;
}

uint64_t sub_268D59208()
{
  type metadata accessor for GetBinarySettingNLContextProvider();
  result = sub_268D592B0();
  qword_280FE7FF0 = result;
  return result;
}

uint64_t type metadata accessor for GetBinarySettingNLContextProvider()
{
  v1 = qword_280FE2BE0;
  if (!qword_280FE2BE0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268D592B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_268D5931C();
}

uint64_t sub_268D592EC()
{
  v1 = *sub_268D591A8();

  return v1;
}

uint64_t sub_268D5931C()
{
  v1 = sub_268F99B74();

  return v1;
}

uint64_t sub_268D5936C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v17 = a4;
  v22 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v17);
  v16 = &v11 - v12;
  v22 = v6;
  v21 = v7;
  v19 = v8;
  v20 = v5;
  v18 = v4;

  sub_268D594BC(v13, v14, v16);
  v9 = sub_268F999A4();
  (*(*(v9 - 8) + 56))(v16, 0, 1);
  v15(v16);
  sub_268D34AC0(v16);
}

uint64_t sub_268D594BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v89 = a1;
  v69 = a2;
  v60 = "Forming NL Context update for confirmation. Intent: %@, Update: %@";
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v61 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v62 = v45 - v61;
  v63 = 0;
  v64 = sub_268F9ACE4();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v68 = v45 - v67;
  v97 = v45 - v67;
  v70 = sub_268F999A4();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v74 = *(v71 + 64);
  v73 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v89);
  v75 = v45 - v73;
  v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v88 = v45 - v76;
  v96 = v45 - v76;
  v95 = v5;
  v94 = v6;
  v93 = v7;
  sub_268F99994();
  v82 = 1;
  sub_268F9AEF4();
  sub_268F99964();
  sub_268F99944();
  v79 = 1;
  v87 = MEMORY[0x277D837D0];
  v78 = sub_268F9B734();
  v77 = v8;
  v83 = "com.apple.siri.nl.SettingConfirmation.Value.CANCEL";
  v84 = 50;
  v9 = sub_268F9AEF4();
  v10 = v77;
  *v77 = v9;
  v10[1] = v11;
  sub_268CD0F7C();
  sub_268F99954();
  v81 = sub_268F9B734();
  v80 = v12;
  v13 = sub_268F9AEF4();
  v14 = v80;
  *v80 = v13;
  v14[1] = v15;
  sub_268CD0F7C();
  sub_268F99984();
  v86 = sub_268F9B734();
  v85 = v16;
  v17 = sub_268F9AEF4();
  v18 = v85;
  *v85 = v17;
  v18[1] = v19;
  v20 = sub_268F9AEF4();
  v21 = v85;
  v85[2] = v20;
  v21[3] = v22;
  v23 = sub_268F9AEF4();
  v24 = v85;
  v85[4] = v23;
  v24[5] = v25;
  sub_268CD0F7C();
  sub_268F99974();
  sub_268F27D28();
  sub_268F99924();
  v90 = [v89 settingMetadata];
  if (v90)
  {
    v58 = v90;
    v57 = v90;
    v91 = v90;
    sub_268E5B124(v62);
    if ((*(v65 + 48))(v62, 1, v64) == 1)
    {
      sub_268D59D2C(v62);
    }

    else
    {
      (*(v65 + 32))(v68, v62, v64);
      v56 = sub_268F9B734();
      (*(v65 + 16))(v26, v68, v64);
      sub_268CD0F7C();
      sub_268F99914();
      (*(v65 + 8))(v68, v64);
    }

    MEMORY[0x277D82BD8](v57);
  }

  v53 = sub_268F9B284();
  v55 = *sub_268DC7DE8();
  MEMORY[0x277D82BE0](v55);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v51 = sub_268F9B734();
  v50 = v27;
  MEMORY[0x277D82BE0](v89);
  v45[2] = &v92;
  v92 = v89;
  v45[1] = sub_268D2E630();
  sub_268D59CAC();
  v46 = sub_268F9AE74();
  v47 = v28;
  v48 = MEMORY[0x277D837D0];
  v50[3] = MEMORY[0x277D837D0];
  v29 = sub_268CDD224();
  v30 = v46;
  v31 = v47;
  v32 = v50;
  v33 = v71;
  v34 = v88;
  v35 = v70;
  v36 = v29;
  v37 = v75;
  v49 = v36;
  v50[4] = v36;
  *v32 = v30;
  v32[1] = v31;
  (*(v33 + 16))(v37, v34, v35);
  v38 = sub_268F9AE64();
  v39 = v49;
  v40 = v50;
  v41 = v38;
  v42 = v51;
  v50[8] = v48;
  v40[9] = v39;
  v40[5] = v41;
  v40[6] = v43;
  sub_268CD0F7C();
  v54 = v42;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v55);
  return (*(v71 + 32))(v59, v88, v70);
}

unint64_t sub_268D59CAC()
{
  v2 = qword_280FE27C0;
  if (!qword_280FE27C0)
  {
    sub_268D2E630();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE27C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D59D2C(uint64_t a1)
{
  v3 = sub_268F9ACE4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268D59DD4(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v16 = a4;
  v21 = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v16);
  v15 = &v10 - v11;
  v21 = v6;
  v20 = v7;
  v18 = v8;
  v19 = v5;
  v17 = v4;

  sub_268D59EE4(v12, v13, v15);
  v14(v15);
  sub_268D34AC0(v15);
}

uint64_t sub_268D59EE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v31 = a1;
  v25 = a2;
  v16 = "There was no setting ID to donate in makeContextForHandleIntent.";
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v18 = v9 - v17;
  v19 = 0;
  v20 = sub_268F9ACE4();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v24 = v9 - v23;
  v38 = v9 - v23;
  v26 = sub_268F999A4();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v31);
  v30 = v9 - v29;
  v37 = v9 - v29;
  v36 = v5;
  v35 = v6;
  v34 = v3;
  sub_268F99994();
  v32 = [v31 settingMetadata];
  if (v32)
  {
    v14 = v32;
    v13 = v32;
    v33 = v32;
    sub_268E5B124(v18);
    if ((*(v21 + 48))(v18, 1, v20) != 1)
    {
      (*(v21 + 32))(v24, v18, v20);
      v12 = sub_268F9B734();
      (*(v21 + 16))(v7, v24, v20);
      sub_268CD0F7C();
      sub_268F99914();
      (*(v27 + 16))(v15, v30, v26);
      (*(v27 + 56))(v15, 0, 1, v26);
      (*(v21 + 8))(v24, v20);
      MEMORY[0x277D82BD8](v13);
      return (*(v27 + 8))(v30, v26);
    }

    sub_268D59D2C(v18);
    MEMORY[0x277D82BD8](v13);
  }

  v9[1] = sub_268F9B284();
  v11 = *sub_268DC7DE8();
  MEMORY[0x277D82BE0](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v10 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v11);
  (*(v27 + 56))(v15, 1, 1, v26);
  return (*(v27 + 8))(v30, v26);
}

uint64_t sub_268D5A390()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268D5A4B0()
{
  v1 = *sub_268DFC80C();

  return v1;
}

uint64_t sub_268D5A4E8()
{
  v1 = *sub_268F7AD98();

  return v1;
}

uint64_t sub_268D5A520@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v51 = a1;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v60 = 0;
  v58 = 0;
  v57 = 0;
  v47 = 0;
  v23 = sub_268F99A74();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v27 = v20 - v26;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5D0, &qword_268F9E8D0);
  v28 = *(v45 - 8);
  v29 = v45 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v44 = v20 - v30;
  v67 = v20 - v30;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5D8, &qword_268F9E8D8);
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v31 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v40 = v20 - v31;
  v32 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v38 = v20 - v32;
  v66 = v20 - v32;
  v65 = v4;
  v49 = v64;
  sub_268F99C44();
  v33 = v63;
  sub_268F99764();
  v35 = v62;
  sub_268CDE730(v49, v62);
  v34 = v61;
  sub_268CDE730(v33, v61);
  v5 = sub_268D57C40();
  sub_268D5AB30(v35, v34, v5, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5E0, &qword_268F9E8E0);
  (*(v36 + 16))(v40, v38, v39);
  v41 = sub_268F995F4();
  v60 = v41;
  v42 = type metadata accessor for FlowStrategy();
  v6 = sub_268CDA260();
  v43 = &v59;
  v59 = v6;

  sub_268D5B714();
  sub_268F998C4();
  sub_268F9AB54();
  sub_268F9AEF4();
  v46 = sub_268F9AB34();
  v58 = v46;
  v48 = sub_268F998B4();
  v57 = v48;
  type metadata accessor for AuthenticationHandler();
  v50 = v56;
  sub_268CDE730(v49, v56);
  v7 = sub_268CDC590();
  v52 = sub_268E4C814(v50, v7);
  v53 = sub_268E4CA7C(v51);

  if (v53)
  {
    v20[5] = &v55;
    v55 = v48;
    v20[1] = 0;
    v20[7] = sub_268F99544();
    v20[4] = sub_268F99574();
    v20[3] = sub_268F9B734();
    v20[2] = v8;
    sub_268F99A54();
    sub_268F99564();
    (*(v24 + 8))(v27, v23);
    sub_268CD0F7C();
    v9 = sub_268F99534();
    v20[8] = &v54;
    v54 = v9;
    v20[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5F0, &qword_268F9E8E8);
    sub_268D5B8C8();
    v21 = sub_268F99644();

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC600, &qword_268F9E8F0);
    v22[3] = v10;
    v11 = sub_268D5B950();
    v12 = v21;
    v13 = v22;
    v22[4] = v11;
    *v13 = v12;
  }

  else
  {

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5F0, &qword_268F9E8E8);
    v22[3] = v15;
    v16 = sub_268D5B8C8();
    v17 = v22;
    v18 = v16;
    v19 = v48;
    v22[4] = v18;
    *v17 = v19;
  }

  (*(v28 + 8))(v44, v45);

  (*(v36 + 8))(v38, v39);
  __swift_destroy_boxed_opaque_existential_0(v63);
  return __swift_destroy_boxed_opaque_existential_0(v64);
}

uint64_t sub_268D5AB30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v127 = a4;
  v132 = a1;
  v131 = a2;
  v130 = a3;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v152 = 0;
  v146 = 0;
  v119 = 0;
  v32 = (*(*(sub_268F99214() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v53 = &v31 - v32;
  v33 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v119);
  v96 = &v31 - v33;
  v69 = sub_268F99274();
  v40 = *(v69 - 8);
  v41 = v69 - 8;
  v34 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v68 = &v31 - v34;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5D8, &qword_268F9E8D8);
  v105 = *(v134 - 8);
  v106 = v134 - 8;
  v36 = *(v105 + 64);
  v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v119);
  v116 = &v31 - v35;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v133 = &v31 - v37;
  v164 = &v31 - v37;
  v163 = v5;
  v162 = v6;
  v161 = v7;
  v120 = sub_268CD7620();
  v121 = sub_268CD795C();
  sub_268F995E4();
  (*(v105 + 32))(v133, v116, v134);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC610, &qword_268F9E8F8);
  v76 = 1;
  v63 = sub_268F9AEF4();
  v57 = v8;
  v48 = &v158;
  sub_268F99C44();
  v39 = v159;
  v38 = v160;
  __swift_project_boxed_opaque_existential_1(v48, v159);
  sub_268F99784();
  v42 = sub_268F99254();
  v43 = v9;
  v67 = *(v40 + 8);
  v66 = v40 + 8;
  v67(v68, v69);
  v47 = v157;
  v157[0] = v42;
  v157[1] = v43;
  v72 = "-";
  v74 = 1;
  v10 = sub_268F9AEF4();
  v46 = v156;
  v156[0] = v10;
  v156[1] = v11;
  v73 = "_";
  v12 = sub_268F9AEF4();
  v45 = v155;
  v155[0] = v12;
  v155[1] = v13;
  v75 = sub_268D58980();
  v77 = MEMORY[0x277D837D0];
  sub_268D58944();
  v58 = sub_268F9B3E4();
  v59 = v14;
  sub_268CD9D30(v45);
  sub_268CD9D30(v46);
  sub_268CD9D30(v47);
  __swift_destroy_boxed_opaque_existential_0(v48);
  v60 = &v154;
  sub_268F99764();
  v61 = &v153;
  sub_268F99C44();
  v62 = sub_268D589F8();
  sub_268D58A5C();
  v49 = sub_268D58A84();
  v50 = sub_268D58B9C();
  v51 = sub_268D58ABC();
  v52 = sub_268D58AF4();
  sub_268D5A488();
  v54 = sub_268D58B64();
  v55 = sub_268D58C0C();
  v56 = sub_268D5A4B0();
  v15 = sub_268D5A4E8();
  v126 = sub_268CDEAF0(v63, v57, v58, v59, v60, v61, v62, v96, v49, v50, v51, v52, v53, v54, v55, v56, v15);
  v152 = v126;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5A8, qword_268F9E900);
  v97 = sub_268F9AEF4();
  v90 = v16;
  v65 = v132[3];
  v64 = v132[4];
  __swift_project_boxed_opaque_existential_1(v132, v65);
  sub_268F99784();
  v70 = sub_268F99254();
  v71 = v17;
  v67(v68, v69);
  v81 = v151;
  v151[0] = v70;
  v151[1] = v71;
  v18 = sub_268F9AEF4();
  v80 = v150;
  v150[0] = v18;
  v150[1] = v19;
  v20 = sub_268F9AEF4();
  v79 = v149;
  v149[0] = v20;
  v149[1] = v21;
  sub_268D58944();
  v91 = sub_268F9B3E4();
  v92 = v22;
  sub_268CD9D30(v79);
  sub_268CD9D30(v80);
  sub_268CD9D30(v81);
  v93 = v148;
  sub_268CDE730(v131, v148);
  v94 = v147;
  sub_268CDE730(v132, v147);
  v83 = sub_268D2E630();
  v82 = sub_268CDD0DC();
  v95 = sub_268D589F8();
  sub_268D58A5C();
  v84 = sub_268D58B9C();
  v85 = sub_268D58ABC();
  v86 = sub_268D58AF4();
  v87 = sub_268D58BD4();
  v88 = sub_268D58B64();
  v89 = sub_268D58C0C();
  v23 = sub_268D58C44();
  v125 = sub_268EEB954(v97, v90, v91, v92, v93, v94, v95, v96, v84, v85, v86, v87, v88, v89, v23);
  v146 = v125;
  v129 = *(v105 + 16);
  v128 = v105 + 16;
  v129(v116, v133, v134);
  v103 = type metadata accessor for ConfirmBinarySettingIntentStrategy();
  v98 = v145;
  sub_268CDE730(v132, v145);
  v99 = v144;
  sub_268CDE730(v131, v144);

  v100 = sub_268D5B794();
  v101 = v143;
  sub_268D58CB4(v143);
  v102 = v142;
  sub_268D58CF4(v142);
  v24 = sub_268D86C08(v98, v99, v100, v126, v101, v102);
  v104 = &v141;
  v141 = v24;
  v25 = sub_268D5B9D8();
  v107 = sub_268D5B7C4(v104, v130, v134, v103, v25);
  v108 = v26;

  v136 = *(v105 + 8);
  v135 = v105 + 8;
  v136(v116, v134);
  sub_268F995D4();
  v129(v116, v133, v134);
  v114 = type metadata accessor for HandleBinarySettingIntentStrategy();
  v109 = v140;
  sub_268CDE730(v132, v140);
  v110 = v139;
  sub_268CDE730(v131, v139);

  v111 = sub_268D587A8();
  v112 = sub_268D58ED0();
  v113 = v138;
  sub_268D58CB4(v138);
  v27 = sub_268DC0948(v109, v110, v111, v112, v126, v113, v125);
  v115 = &v137;
  v137 = v27;
  sub_268D5BA58();
  v117 = sub_268D58F00(v115, v134);
  v118 = v28;

  v136(v116, v134);
  sub_268F995B4();
  sub_268F9AB54();
  v122 = sub_268F9AB34();
  v123 = sub_268F99594();
  v124 = v29;

  sub_268F995C4();

  v129(v127, v133, v134);

  __swift_destroy_boxed_opaque_existential_0(v131);
  __swift_destroy_boxed_opaque_existential_0(v132);
  return (v136)(v133, v134);
}

unint64_t sub_268D5B714()
{
  v2 = qword_2802DC5E8;
  if (!qword_2802DC5E8)
  {
    type metadata accessor for FlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC5E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D5B794()
{
  v1 = *sub_268EAE4B0();

  return v1;
}

uint64_t sub_268D5B7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);

  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a2;
  v12 = sub_268F995A4();

  return v12;
}

unint64_t sub_268D5B8C8()
{
  v2 = qword_2802DC5F8;
  if (!qword_2802DC5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC5F0, &qword_268F9E8E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC5F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5B950()
{
  v2 = qword_2802DC608;
  if (!qword_2802DC608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC600, &qword_268F9E8F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5B9D8()
{
  v2 = qword_2802DC618;
  if (!qword_2802DC618)
  {
    type metadata accessor for ConfirmBinarySettingIntentStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5BA58()
{
  v2 = qword_2802DC620;
  if (!qword_2802DC620)
  {
    type metadata accessor for HandleBinarySettingIntentStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC620);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D5BAEC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

uint64_t sub_268D5BB3C()
{
  type metadata accessor for SetPersonalHotspotHandler();
  v0 = sub_268CDC590();
  result = sub_268D5BBA4(v0, 1);
  qword_2802F07A8 = result;
  return result;
}

uint64_t *sub_268D5BBFC()
{
  if (qword_2802DAF90 != -1)
  {
    swift_once();
  }

  return &qword_2802F07A8;
}

uint64_t sub_268D5BC5C()
{
  v1 = *sub_268D5BBFC();

  return v1;
}

uint64_t sub_268D5BC8C()
{
  swift_beginAccess();
  v2 = *(v0 + 25);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268D5BCDC(char a1)
{
  swift_beginAccess();
  *(v1 + 25) = a1;
  return swift_endAccess();
}

uint64_t sub_268D5BD84(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v5 = *(v2 + 16);

  v6 = sub_268D36D3C();

  *(v8 + 25) = v6 & 1;

  return v8;
}

uint64_t sub_268D5BE3C(void *a1, void (*a2)(void), uint64_t a3)
{
  v112 = a1;
  v111 = a2;
  v109 = a3;
  v90 = "SetPersonalHotspotHandler handling intent; Siri cannot change setting: Personal Hotspot";
  v91 = "SetPersonalHotspotHandler handling intent";
  v92 = "Device doesn't support personal hotspot.";
  v93 = "Device does not have valid SIM card inserted.";
  v94 = "Valid SIM card presented.";
  v95 = "Airplane mode is enabled. Offer to disable it and then enable personal hotspot.";
  v96 = "Cellular data is disabled. Offer to enable it and then enable personal hotspot.";
  v97 = sub_268D5CF7C;
  v137 = 0;
  v135 = 0;
  v136 = 0;
  v134 = 0;
  v130 = 0;
  v129 = 0.0;
  v103 = 0;
  v98 = sub_268F9AD14();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v102 = v19 - v101;
  v104 = sub_268F9AD34();
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v108 = v19 - v107;
  v113 = sub_268F9AD54();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v117 = *(v114 + 64);
  v116 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v112);
  v118 = v19 - v116;
  v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v120 = v19 - v119;
  v137 = v4;
  v135 = v5;
  v136 = v6;
  v134 = v7;
  sub_268E53518();
  if (SettingsFeatureFlagsImpl.isGetSetHotspotEnabled()())
  {
    v85 = sub_268F9B284();
    v87 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v87);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v86 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v87);
    v88 = *(v110 + 16);

    v89 = sub_268D370FC();

    if (v89)
    {
      v83 = 1;
    }

    else
    {
      v81 = *(v110 + 16);

      v82 = sub_268D38D28();

      v83 = v82;
    }

    v80 = v83;

    if (v80)
    {
      v78 = *(v110 + 16);

      v79 = sub_268D3841C();

      if (v79)
      {
        v77 = 1;
      }

      else
      {
        v75 = *(v110 + 16);

        v76 = sub_268D38140();

        v77 = v76;
      }

      v74 = v77;

      if (v74)
      {
        v56 = sub_268F9B284();
        v58 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v58);
        v62 = 0;
        v57 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v58);
        v59 = *(v110 + 16);

        v60 = sub_268D36D3C();

        v61 = &v133;
        swift_beginAccess();
        *(v110 + 25) = v60 & 1;
        swift_endAccess();
        v10 = [v112 binaryValue];
        v65 = &v132;
        v132 = v10;
        v63 = &v131;
        v131 = 1;
        v64 = type metadata accessor for INBinarySettingValue();
        sub_268CD925C();
        v66 = sub_268F9B754();
        v130 = v66 & 1;
        v129 = 0.0;

        if (v66)
        {
          v53 = *(v110 + 16);

          v54 = sub_268D36960();

          v55 = v54;
        }

        else
        {
          v55 = 0;
        }

        v52 = v55;

        if (v52)
        {
          v47 = sub_268F9B284();
          v49 = *sub_268DC7AE8();
          MEMORY[0x277D82BE0](v49);
          v48 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v49);
          v50 = *(v110 + 16);

          sub_268D3699C(0);

          v129 = 1.0;
          v51 = 1.0;
        }

        else
        {
          v51 = 0.0;
        }

        v46 = v51;

        if (v66)
        {
          v43 = *(v110 + 16);

          v44 = sub_268D38D64();

          v45 = v44 ^ 1;
        }

        else
        {
          v45 = 0;
        }

        v42 = v45;

        if (v42)
        {
          v37 = sub_268F9B284();
          v39 = *sub_268DC7AE8();
          MEMORY[0x277D82BE0](v39);
          v38 = sub_268F9B734();
          sub_268F9AC14();

          MEMORY[0x277D82BD8](v39);
          v40 = *(v110 + 16);

          sub_268D390F0(1);

          v41 = &v121;
          swift_beginAccess();
          *(v110 + 25) = 0;
          swift_endAccess();
        }

        sub_268CDD000();
        v36 = sub_268F9B2C4();
        sub_268F9AD44();
        sub_268F9AD64();
        v35 = *(v114 + 8);
        v34 = v114 + 8;
        v35(v118, v113);

        MEMORY[0x277D82BE0](v112);

        v11 = swift_allocObject();
        v12 = v112;
        v13 = v66;
        v14 = v111;
        v15 = v109;
        v16 = v97;
        *(v11 + 16) = v110;
        *(v11 + 24) = v12;
        *(v11 + 32) = v13 & 1;
        *(v11 + 40) = v14;
        *(v11 + 48) = v15;
        v127 = v16;
        v128 = v11;
        aBlock = MEMORY[0x277D85DD0];
        v123 = 1107296256;
        v124 = 0;
        v125 = sub_268D5BAEC;
        v126 = &block_descriptor_1;
        v33 = _Block_copy(&aBlock);

        sub_268D5D06C();
        sub_268D5D084();
        MEMORY[0x26D62DF00](v120, v108, v102, v33);
        (*(v99 + 8))(v102, v98);
        (*(v105 + 8))(v108, v104);
        _Block_release(v33);
        v35(v120, v113);
        return MEMORY[0x277D82BD8](v36);
      }

      else
      {
        v67 = sub_268F9B294();
        v69 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v69);
        v70 = 0;
        v68 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v69);

        v71 = sub_268E948B8();
        v72 = v8;
        v73 = sub_268DAB158();

        v111(v73);
        MEMORY[0x277D82BD8](v73);
      }
    }

    else
    {
      v26 = sub_268F9B294();
      v28 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v28);
      v29 = 0;
      v27 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v28);

      v30 = sub_268E948B8();
      v31 = v17;
      v32 = sub_268DAB158();

      v111(v32);
      MEMORY[0x277D82BD8](v32);
    }
  }

  else
  {
    v19[1] = sub_268F9B284();
    v21 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v22 = 0;
    v20 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v21);

    v23 = sub_268E948B8();
    v24 = v18;
    v25 = sub_268DAB158();

    v111(v25);
    MEMORY[0x277D82BD8](v25);
  }
}

uint64_t sub_268D5CE9C(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{

  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  sub_268D5D124(a2, a3 & 1, sub_268D5DE14, v10);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_268D5CFFC(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);
}

uint64_t sub_268D5D084()
{
  sub_268E8E3CC(0);
  sub_268F9AD14();
  sub_268D5DD0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC630, &unk_268F9E9C0);
  sub_268D5DD8C();
  return sub_268F9B4A4();
}

uint64_t sub_268D5D124(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v46 = 0;
  v50 = a1;
  v49 = a2 & 1;
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v27 = sub_268CD7620();
  v28 = SettingIntent.settingIdentifier.getter(v27, &protocol witness table for INSetBinarySettingIntent);
  v29 = v4;

  v44 = 36;
  v30 = BinarySettingIdentifier.rawValue.getter();
  v31 = v5;

  v43[0] = v28;
  v43[1] = v29;
  v41[0] = v30;
  v41[1] = v31;
  sub_268D28874(v43, &v42);
  if (v31)
  {
    sub_268D28874(v41, v33);
    if (*(&v42 + 1))
    {
      v32 = v42;
      v21 = MEMORY[0x26D62DB50](v33[0], v33[1], v42, *(&v42 + 1));
      sub_268CD9D30(&v32);
      sub_268CD9D30(v33);
      sub_268CD9D30(v41);
      v22 = v21;
      goto LABEL_7;
    }

    sub_268CD9D30(v33);
    goto LABEL_9;
  }

  if (*(&v42 + 1))
  {
LABEL_9:
    sub_268D28550(v41);
    v22 = 0;
    goto LABEL_7;
  }

  sub_268CD9D30(v41);
  v22 = 1;
LABEL_7:

  if (v22)
  {

    sub_268D5D644(a1, a2 & 1, a3);
  }

  v40 = 35;
  v19 = BinarySettingIdentifier.rawValue.getter();
  v20 = v7;

  v39[0] = v28;
  v39[1] = v29;
  v36 = v19;
  v37 = v20;
  sub_268D28874(v39, &v38);
  if (!v37)
  {
    if (!*(&v38 + 1))
    {
      sub_268CD9D30(&v36);
      v18 = 1;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  sub_268D28874(&v36, v35);
  if (!*(&v38 + 1))
  {
    sub_268CD9D30(v35);
LABEL_21:
    sub_268D28550(&v36);
    v18 = 0;
    goto LABEL_18;
  }

  v34 = v38;
  v17 = MEMORY[0x26D62DB50](v35[0], v35[1], v38, *(&v38 + 1));
  sub_268CD9D30(&v34);
  sub_268CD9D30(v35);
  sub_268CD9D30(&v36);
  v18 = v17;
LABEL_18:

  if (v18)
  {
    sub_268D5D8CC(a1, a2 & 1, a3, a4);
  }

  else
  {
    sub_268F9B284();
    v8 = sub_268DC7AE8();
    v15 = *v8;
    MEMORY[0x277D82BE0](*v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v14 = v9;
    v35[4] = a1;
    v35[2] = SettingIntent.settingIdentifier.getter(v27, &protocol witness table for INSetBinarySettingIntent);
    v35[3] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
    v12 = sub_268F9AE64();
    v13 = v11;
    v14[3] = MEMORY[0x277D837D0];
    v14[4] = sub_268CDD224();
    *v14 = v12;
    v14[1] = v13;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v15);

    sub_268E948B8();
    v16 = sub_268DAB158();

    (a3)(v16);
    MEMORY[0x277D82BD8](v16);
  }
}

uint64_t sub_268D5D644(uint64_t a1, char a2, void (*a3)(void))
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v12 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);
  if (a2)
  {
    v9 = *(v11 + 16);

    sub_268D36DD0();

    sub_268E948B8();
    v7 = *(v11 + 16);

    sub_268D36CE4(1);

    v8 = sub_268DAB158();
    a3();
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    v5 = *(v11 + 16);

    sub_268D36D78(0);

    sub_268E948B8();
    v6 = sub_268DAB158();

    (a3)(v6);
    MEMORY[0x277D82BD8](v6);
  }
}

uint64_t sub_268D5D8CC(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v23 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v23);

  if (a2)
  {
    v17 = *(v24 + 16);

    v18 = sub_268D36D3C();

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v14 = *(v24 + 16);

    v15 = sub_268D36DD0();

    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v12 = *(v24 + 16);

    sub_268D36D78(1);

    sub_268E948B8();
    v13 = sub_268DAB158();

    (a3)(v13);
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    swift_beginAccess();
    v7 = *(v24 + 25);
    swift_endAccess();
    v6 = sub_268DB9D14();
    v8 = *v6;
    v9 = v6[1];
    v10 = *(v6 + 16);
    v11 = *(v24 + 24);

    sub_268DAAB84(v7 & 1, a1, v8, v9, v10, v11 & 1, a3, a4, sub_268D5DC80, v24, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268D5DC80);
  }
}

uint64_t sub_268D5DC10(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  sub_268D36CE4(a1 & 1);
}

unint64_t sub_268D5DD0C()
{
  v2 = qword_2802DC628;
  if (!qword_2802DC628)
  {
    sub_268F9AD14();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC628);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268D5DD8C()
{
  v2 = qword_2802DC638;
  if (!qword_2802DC638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC630, &unk_268F9E9C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC638);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D5DE20()
{
  type metadata accessor for SetAHandler();
  v0 = sub_268CDC590();
  result = sub_268D5DE80(v0);
  qword_2802F07B0 = result;
  return result;
}

uint64_t *sub_268D5DECC()
{
  if (qword_2802DAF98 != -1)
  {
    swift_once();
  }

  return &qword_2802F07B0;
}

uint64_t sub_268D5DF2C()
{
  v1 = *sub_268D5DECC();

  return v1;
}

uint64_t sub_268D5DF5C(uint64_t a1)
{

  *(v1 + 16) = a1;

  return v4;
}

uint64_t sub_268D5DFB0(uint64_t a1, void (*a2)(void))
{

  sub_268CDA484();
  v4 = sub_268CD42AC(3, 0);
  a2();
  MEMORY[0x277D82BD8](v4);
}

uint64_t sub_268D5E0BC()
{
  sub_268F9B734();
  *v0 = "SetBinarySettingIntent#ChangedBinaryValueTo";
  *(v0 + 8) = 43;
  *(v0 + 16) = 2;
  *(v0 + 24) = "SetBinarySettingIntent#NoNeedToChangeBinaryValueTo";
  *(v0 + 32) = 50;
  *(v0 + 40) = 2;
  *(v0 + 48) = "SetBinarySettingIntent#CannotConnectToWiFiNetwork";
  *(v0 + 56) = 49;
  *(v0 + 64) = 2;
  *(v0 + 72) = "SetBinarySettingIntent#UnspecifiedActionForSupportedBinarySetting";
  *(v0 + 80) = 65;
  *(v0 + 88) = 2;
  *(v0 + 96) = "SetBinarySettingIntent#ApplicableDevicesNeverConnected";
  *(v0 + 104) = 54;
  *(v0 + 112) = 2;
  *(v0 + 120) = "SetBinarySettingIntent#RetainingCurrentBinaryValue";
  *(v0 + 128) = 50;
  *(v0 + 136) = 2;
  *(v0 + 144) = "SetBinarySettingIntent#AppNotInstalledForAnnounceNotifications";
  *(v0 + 152) = 62;
  *(v0 + 160) = 2;
  *(v0 + 168) = "SetBinarySettingIntent#ConfirmBeforeSeveringConnectionToSiri";
  *(v0 + 176) = 60;
  *(v0 + 184) = 2;
  *(v0 + 192) = "SetBinarySettingIntent#ChangedMultiSettingValueToSpokenOnly";
  *(v0 + 200) = 59;
  *(v0 + 208) = 2;
  *(v0 + 216) = "SetBinarySettingIntent#ConfirmBeforeTurningOffLocationServices";
  *(v0 + 224) = 62;
  *(v0 + 232) = 2;
  *(v0 + 240) = "SetBinarySettingIntent#SiriCanOnlyAnnounceMessagesInCarPlay";
  *(v0 + 248) = 59;
  *(v0 + 256) = 2;
  *(v0 + 264) = "SetBinarySettingIntent#UnspecifiedActionForSupportedMultiSetting";
  *(v0 + 272) = 64;
  *(v0 + 280) = 2;
  *(v0 + 288) = "SetBinarySettingIntent#ChangedMultiSettingValueTo";
  *(v0 + 296) = 49;
  *(v0 + 304) = 2;
  *(v0 + 312) = "SetBinarySettingIntent#ConfirmBeforeTurningOffAnnounceNotifications";
  *(v0 + 320) = 67;
  *(v0 + 328) = 2;
  *(v0 + 336) = "SetBinarySettingIntent#MissingSIMOrCellular";
  *(v0 + 344) = 43;
  *(v0 + 352) = 2;
  *(v0 + 360) = "SetBinarySettingIntent#SiriCannotDisableItself";
  *(v0 + 368) = 46;
  *(v0 + 376) = 2;
  *(v0 + 384) = "SetBinarySettingIntent#CannotTemporarilyEnableAnnounceMessages";
  *(v0 + 392) = 62;
  *(v0 + 400) = 2;
  *(v0 + 408) = "SetBinarySettingIntent#ChangedBinaryValueToSpokenOnly";
  *(v0 + 416) = 53;
  *(v0 + 424) = 2;
  *(v0 + 432) = "SetBinarySettingIntent#NoNeedToChangeMultiSettingValueTo";
  *(v0 + 440) = 56;
  *(v0 + 448) = 2;
  *(v0 + 456) = "SetBinarySettingIntent#HotspotAirplaneModeEnabledOrCellularDisabled";
  *(v0 + 464) = 67;
  *(v0 + 472) = 2;
  *(v0 + 480) = "SetBinarySettingIntent#DescribeHotspotDiscoverability";
  *(v0 + 488) = 53;
  *(v0 + 496) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_44:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_44;
    case 2:
      v3 = 2;
      goto LABEL_44;
    case 3:
      v3 = 3;
      goto LABEL_44;
    case 4:
      v3 = 4;
      goto LABEL_44;
    case 5:
      v3 = 5;
      goto LABEL_44;
    case 6:
      v3 = 6;
      goto LABEL_44;
    case 7:
      v3 = 7;
      goto LABEL_44;
    case 8:
      v3 = 8;
      goto LABEL_44;
    case 9:
      v3 = 9;
      goto LABEL_44;
    case 10:
      v3 = 10;
      goto LABEL_44;
    case 11:
      v3 = 11;
      goto LABEL_44;
    case 12:
      v3 = 12;
      goto LABEL_44;
    case 13:
      v3 = 13;
      goto LABEL_44;
    case 14:
      v3 = 14;
      goto LABEL_44;
    case 15:
      v3 = 15;
      goto LABEL_44;
    case 16:
      v3 = 16;
      goto LABEL_44;
    case 17:
      v3 = 17;
      goto LABEL_44;
    case 18:
      v3 = 18;
      goto LABEL_44;
    case 19:
      v3 = 19;
      goto LABEL_44;
    case 20:
      v3 = 20;
      goto LABEL_44;
  }

  return 21;
}

unint64_t sub_268D5EB10()
{
  v2 = qword_2802DC640;
  if (!qword_2802DC640)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC640);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268D5EC5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268D5E0BC();
  *a2 = result;
  return result;
}

uint64_t sub_268D5EC94@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268D5E71C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268D5ECC8()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_268D5ECF4(uint64_t a1)
{

  v2 = *v1;
  *v1 = a1;
}

uint64_t sub_268D5ED30()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_268D5ED5C(uint64_t a1)
{

  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
}

uint64_t type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters()
{
  v1 = qword_2802DC648;
  if (!qword_2802DC648)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268D5EE50(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 28)));
  return sub_268D28588(v8);
}

uint64_t sub_268D5EF38(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 32)));
  return sub_268D28588(v8);
}

uint64_t sub_268D5EFE8()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters() + 36));

  return v2;
}

uint64_t sub_268D5F020(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters() + 36));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_268D5F0A4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 40)));
  return sub_268D28588(v8);
}

uint64_t sub_268D5F18C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 44)));
  return sub_268D28588(v8);
}

uint64_t sub_268D5F274(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 48)));
  return sub_268D28588(v8);
}

uint64_t sub_268D5F35C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 52)));
  return sub_268D28588(v8);
}

uint64_t sub_268D5F444(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 56)));
  return sub_268D28588(v8);
}

uint64_t sub_268D5F52C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 60)));
  return sub_268D28588(v8);
}

uint64_t sub_268D5F614(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 64)));
  return sub_268D28588(v8);
}

uint64_t sub_268D5F71C()
{
  v197 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v174 = *(*(v1 - 8) + 64);
  v175 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v176 = &v138 - v175;
  v177 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v138 - v175);
  v178 = &v138 - v177;
  v179 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v138 - v177);
  v180 = &v138 - v179;
  v181 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v138 - v179);
  v182 = &v138 - v181;
  v183 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v138 - v181);
  v184 = &v138 - v183;
  v185 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v138 - v183);
  v186 = &v138 - v185;
  v187 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v138 - v185);
  v188 = &v138 - v187;
  v189 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v138 - v187);
  v190 = &v138 - v189;
  v191 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v138 - v189);
  v192 = &v138 - v191;
  v197 = v0;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v194 = sub_268F9B734();
  v195 = v10;
  v11 = sub_268F9AEF4();
  v12 = v195;
  *v195 = v11;
  v12[1] = v13;
  v196 = *v0;

  if (v196)
  {
    v172 = v196;
    v171 = v196;
    v14 = sub_268F9A994();
    v15 = v195;
    v16 = v171;
    v195[5] = v14;
    v15[2] = v16;
  }

  else
  {
    v137 = v195;
    v195[2] = 0;
    v137[3] = 0;
    v137[4] = 0;
    v137[5] = 0;
  }

  v17 = sub_268F9AEF4();
  v18 = v195;
  v19 = v173;
  v195[6] = v17;
  v18[7] = v20;
  v170 = *(v19 + 8);

  if (v170)
  {
    v169 = v170;
    v168 = v170;
    v21 = sub_268F9AA44();
    v22 = v195;
    v23 = v168;
    v195[11] = v21;
    v22[8] = v23;
  }

  else
  {
    v136 = v195;
    v195[8] = 0;
    v136[9] = 0;
    v136[10] = 0;
    v136[11] = 0;
  }

  v162 = 1;
  v24 = sub_268F9AEF4();
  v25 = v195;
  v26 = v173;
  v195[12] = v24;
  v25[13] = v27;
  LOBYTE(v26) = *(v26 + 16);
  v25[17] = MEMORY[0x277D839B0];
  *(v25 + 112) = v26;
  v159 = v25 + 20;
  v28 = sub_268F9AEF4();
  v29 = v195;
  v195[18] = v28;
  v29[19] = v30;
  v161 = 0;
  v160 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D2A1F0((v173 + *(v160 + 28)), v192);
  v163 = sub_268F9A9C4();
  v164 = *(v163 - 8);
  v165 = v163 - 8;
  v166 = *(v164 + 48);
  v167 = v164 + 48;
  if (v166(v192, v162) == 1)
  {
    sub_268D28588(v192);
    v135 = v195;
    v195[20] = 0;
    v135[21] = 0;
    v135[22] = 0;
    v135[23] = 0;
  }

  else
  {
    v31 = v159;
    v195[23] = v163;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(v164 + 32))(boxed_opaque_existential_1, v192, v163);
  }

  v157 = v195 + 26;
  v158 = 1;
  v33 = sub_268F9AEF4();
  v34 = v195;
  v35 = v160;
  v36 = v173;
  v38 = v37;
  v39 = v190;
  v195[24] = v33;
  v34[25] = v38;
  sub_268D2A1F0((v36 + *(v35 + 32)), v39);
  if ((v166)(v190, v158, v163) == 1)
  {
    sub_268D28588(v190);
    v134 = v195;
    v195[26] = 0;
    v134[27] = 0;
    v134[28] = 0;
    v134[29] = 0;
  }

  else
  {
    v40 = v157;
    v195[29] = v163;
    v41 = __swift_allocate_boxed_opaque_existential_1(v40);
    (*(v164 + 32))(v41, v190, v163);
  }

  v42 = sub_268F9AEF4();
  v43 = v195;
  v44 = v160;
  v45 = v173;
  v195[30] = v42;
  v43[31] = v46;
  v156 = *(v45 + *(v44 + 36));

  if (v156)
  {
    v155 = v156;
    v154 = v156;
    v47 = type metadata accessor for SettingsBinarySetting();
    v48 = v195;
    v49 = v154;
    v195[35] = v47;
    v48[32] = v49;
  }

  else
  {
    v133 = v195;
    v195[32] = 0;
    v133[33] = 0;
    v133[34] = 0;
    v133[35] = 0;
  }

  v152 = v195 + 38;
  v153 = 1;
  v50 = sub_268F9AEF4();
  v51 = v195;
  v52 = v160;
  v53 = v173;
  v55 = v54;
  v56 = v188;
  v195[36] = v50;
  v51[37] = v55;
  sub_268D2A1F0((v53 + *(v52 + 40)), v56);
  if ((v166)(v188, v153, v163) == 1)
  {
    sub_268D28588(v188);
    v132 = v195;
    v195[38] = 0;
    v132[39] = 0;
    v132[40] = 0;
    v132[41] = 0;
  }

  else
  {
    v57 = v152;
    v195[41] = v163;
    v58 = __swift_allocate_boxed_opaque_existential_1(v57);
    (*(v164 + 32))(v58, v188, v163);
  }

  v150 = v195 + 44;
  v151 = 1;
  v59 = sub_268F9AEF4();
  v60 = v195;
  v61 = v160;
  v62 = v173;
  v64 = v63;
  v65 = v186;
  v195[42] = v59;
  v60[43] = v64;
  sub_268D2A1F0((v62 + *(v61 + 44)), v65);
  if ((v166)(v186, v151, v163) == 1)
  {
    sub_268D28588(v186);
    v131 = v195;
    v195[44] = 0;
    v131[45] = 0;
    v131[46] = 0;
    v131[47] = 0;
  }

  else
  {
    v66 = v150;
    v195[47] = v163;
    v67 = __swift_allocate_boxed_opaque_existential_1(v66);
    (*(v164 + 32))(v67, v186, v163);
  }

  v148 = v195 + 50;
  v149 = 1;
  v68 = sub_268F9AEF4();
  v69 = v195;
  v70 = v160;
  v71 = v173;
  v73 = v72;
  v74 = v184;
  v195[48] = v68;
  v69[49] = v73;
  sub_268D2A1F0((v71 + *(v70 + 48)), v74);
  if ((v166)(v184, v149, v163) == 1)
  {
    sub_268D28588(v184);
    v130 = v195;
    v195[50] = 0;
    v130[51] = 0;
    v130[52] = 0;
    v130[53] = 0;
  }

  else
  {
    v75 = v148;
    v195[53] = v163;
    v76 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(v164 + 32))(v76, v184, v163);
  }

  v146 = v195 + 56;
  v147 = 1;
  v77 = sub_268F9AEF4();
  v78 = v195;
  v79 = v160;
  v80 = v173;
  v82 = v81;
  v83 = v182;
  v195[54] = v77;
  v78[55] = v82;
  sub_268D2A1F0((v80 + *(v79 + 64)), v83);
  if ((v166)(v182, v147, v163) == 1)
  {
    sub_268D28588(v182);
    v129 = v195;
    v195[56] = 0;
    v129[57] = 0;
    v129[58] = 0;
    v129[59] = 0;
  }

  else
  {
    v84 = v146;
    v195[59] = v163;
    v85 = __swift_allocate_boxed_opaque_existential_1(v84);
    (*(v164 + 32))(v85, v182, v163);
  }

  v145 = 1;
  v86 = sub_268F9AEF4();
  v87 = v195;
  v88 = v160;
  v89 = v173;
  v195[60] = v86;
  v87[61] = v90;
  LOBYTE(v89) = *(v89 + *(v88 + 68));
  v143 = MEMORY[0x277D839B0];
  v87[65] = MEMORY[0x277D839B0];
  *(v87 + 496) = v89;
  v91 = sub_268F9AEF4();
  v92 = v143;
  v93 = v195;
  v94 = v160;
  v95 = v173;
  v195[66] = v91;
  v93[67] = v96;
  LOBYTE(v95) = *(v95 + *(v94 + 72));
  v93[71] = v92;
  *(v93 + 544) = v95;
  v144 = v93 + 74;
  v97 = sub_268F9AEF4();
  v98 = v195;
  v99 = v160;
  v100 = v173;
  v102 = v101;
  v103 = v180;
  v195[72] = v97;
  v98[73] = v102;
  sub_268D2A1F0((v100 + *(v99 + 52)), v103);
  if ((v166)(v180, v145, v163) == 1)
  {
    sub_268D28588(v180);
    v128 = v195;
    v195[74] = 0;
    v128[75] = 0;
    v128[76] = 0;
    v128[77] = 0;
  }

  else
  {
    v104 = v144;
    v195[77] = v163;
    v105 = __swift_allocate_boxed_opaque_existential_1(v104);
    (*(v164 + 32))(v105, v180, v163);
  }

  v141 = v195 + 80;
  v142 = 1;
  v106 = sub_268F9AEF4();
  v107 = v195;
  v108 = v160;
  v109 = v173;
  v111 = v110;
  v112 = v178;
  v195[78] = v106;
  v107[79] = v111;
  sub_268D2A1F0((v109 + *(v108 + 56)), v112);
  if ((v166)(v178, v142, v163) == 1)
  {
    sub_268D28588(v178);
    v127 = v195;
    v195[80] = 0;
    v127[81] = 0;
    v127[82] = 0;
    v127[83] = 0;
  }

  else
  {
    v113 = v141;
    v195[83] = v163;
    v114 = __swift_allocate_boxed_opaque_existential_1(v113);
    (*(v164 + 32))(v114, v178, v163);
  }

  v139 = v195 + 86;
  v140 = 1;
  v115 = sub_268F9AEF4();
  v116 = v195;
  v117 = v160;
  v118 = v173;
  v120 = v119;
  v121 = v176;
  v195[84] = v115;
  v116[85] = v120;
  sub_268D2A1F0((v118 + *(v117 + 60)), v121);
  if ((v166)(v176, v140, v163) == 1)
  {
    sub_268D28588(v176);
    v126 = v195;
    v195[86] = 0;
    v126[87] = 0;
    v126[88] = 0;
    v126[89] = 0;
  }

  else
  {
    v122 = v139;
    v195[89] = v163;
    v123 = __swift_allocate_boxed_opaque_existential_1(v122);
    (*(v164 + 32))(v123, v176, v163);
  }

  v124 = v194;
  sub_268CD0F7C();
  v138 = v124;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

int *sub_268D60698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, const void *a4@<X3>, const void *a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, char a15, char a16)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v23 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters();
  sub_268D84F40(a4, (a9 + v23[7]));
  sub_268D84F40(a5, (a9 + v23[8]));
  *(a9 + v23[9]) = a6;
  sub_268D84F40(a7, (a9 + v23[10]));
  sub_268D84F40(a8, (a9 + v23[11]));
  sub_268D84F40(a10, (a9 + v23[12]));
  sub_268D84F40(a11, (a9 + v23[13]));
  sub_268D84F40(a12, (a9 + v23[14]));
  sub_268D84F40(a13, (a9 + v23[15]));
  sub_268D84F40(a14, (a9 + v23[16]));
  result = v23;
  *(a9 + v23[17]) = a15;
  *(a9 + v23[18]) = a16;
  return result;
}

uint64_t type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters()
{
  v1 = qword_2802DC678;
  if (!qword_2802DC678)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268D608D8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 20)));
  return sub_268D28588(v8);
}

uint64_t sub_268D60988()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters() + 24));

  return v2;
}

uint64_t sub_268D609C0(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters() + 24));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_268D60A44(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 28)));
  return sub_268D28588(v8);
}

uint64_t sub_268D60B2C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 32)));
  return sub_268D28588(v8);
}

uint64_t sub_268D60C14(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 36)));
  return sub_268D28588(v8);
}

uint64_t sub_268D60CFC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 40)));
  return sub_268D28588(v8);
}

uint64_t sub_268D60DE4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 44)));
  return sub_268D28588(v8);
}

uint64_t sub_268D60ECC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 48)));
  return sub_268D28588(v8);
}

uint64_t sub_268D60FB4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 52)));
  return sub_268D28588(v8);
}

uint64_t sub_268D61064()
{
  v155 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v134 = *(*(v1 - 8) + 64);
  v135 = (v134 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v136 = &v104 - v135;
  v137 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v104 - v135);
  v138 = &v104 - v137;
  v139 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v104 - v137);
  v140 = &v104 - v139;
  v141 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v104 - v139);
  v142 = &v104 - v141;
  v143 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v104 - v141);
  v144 = &v104 - v143;
  v145 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v104 - v143);
  v146 = &v104 - v145;
  v147 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v104 - v145);
  v148 = &v104 - v147;
  v149 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v104 - v147);
  v150 = &v104 - v149;
  v155 = v0;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v152 = sub_268F9B734();
  v153 = v9;
  v10 = sub_268F9AEF4();
  v11 = v153;
  *v153 = v10;
  v11[1] = v12;
  v154 = *v0;

  if (v154)
  {
    v132 = v154;
    v131 = v154;
    v13 = sub_268F9AA44();
    v14 = v153;
    v15 = v131;
    v153[5] = v13;
    v14[2] = v15;
  }

  else
  {
    v103 = v153;
    v153[2] = 0;
    v103[3] = 0;
    v103[4] = 0;
    v103[5] = 0;
  }

  v122 = v153 + 8;
  v125 = 1;
  v16 = sub_268F9AEF4();
  v17 = v153;
  v153[6] = v16;
  v17[7] = v18;
  v124 = 0;
  v123 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  sub_268D2A1F0((v133 + *(v123 + 20)), v150);
  v126 = sub_268F9A9C4();
  v127 = *(v126 - 8);
  v128 = v126 - 8;
  v129 = *(v127 + 48);
  v130 = v127 + 48;
  if (v129(v150, v125) == 1)
  {
    sub_268D28588(v150);
    v102 = v153;
    v153[8] = 0;
    v102[9] = 0;
    v102[10] = 0;
    v102[11] = 0;
  }

  else
  {
    v19 = v122;
    v153[11] = v126;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(v127 + 32))(boxed_opaque_existential_1, v150, v126);
  }

  v21 = sub_268F9AEF4();
  v22 = v153;
  v23 = v123;
  v24 = v133;
  v153[12] = v21;
  v22[13] = v25;
  v121 = *(v24 + *(v23 + 24));

  if (v121)
  {
    v120 = v121;
    v119 = v121;
    v26 = type metadata accessor for SettingsBinarySetting();
    v27 = v153;
    v28 = v119;
    v153[17] = v26;
    v27[14] = v28;
  }

  else
  {
    v101 = v153;
    v153[14] = 0;
    v101[15] = 0;
    v101[16] = 0;
    v101[17] = 0;
  }

  v117 = v153 + 20;
  v118 = 1;
  v29 = sub_268F9AEF4();
  v30 = v153;
  v31 = v123;
  v32 = v133;
  v34 = v33;
  v35 = v148;
  v153[18] = v29;
  v30[19] = v34;
  sub_268D2A1F0((v32 + *(v31 + 28)), v35);
  if ((v129)(v148, v118, v126) == 1)
  {
    sub_268D28588(v148);
    v100 = v153;
    v153[20] = 0;
    v100[21] = 0;
    v100[22] = 0;
    v100[23] = 0;
  }

  else
  {
    v36 = v117;
    v153[23] = v126;
    v37 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v127 + 32))(v37, v148, v126);
  }

  v115 = v153 + 26;
  v116 = 1;
  v38 = sub_268F9AEF4();
  v39 = v153;
  v40 = v123;
  v41 = v133;
  v43 = v42;
  v44 = v146;
  v153[24] = v38;
  v39[25] = v43;
  sub_268D2A1F0((v41 + *(v40 + 32)), v44);
  if ((v129)(v146, v116, v126) == 1)
  {
    sub_268D28588(v146);
    v99 = v153;
    v153[26] = 0;
    v99[27] = 0;
    v99[28] = 0;
    v99[29] = 0;
  }

  else
  {
    v45 = v115;
    v153[29] = v126;
    v46 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(v127 + 32))(v46, v146, v126);
  }

  v113 = v153 + 32;
  v114 = 1;
  v47 = sub_268F9AEF4();
  v48 = v153;
  v49 = v123;
  v50 = v133;
  v52 = v51;
  v53 = v144;
  v153[30] = v47;
  v48[31] = v52;
  sub_268D2A1F0((v50 + *(v49 + 36)), v53);
  if ((v129)(v144, v114, v126) == 1)
  {
    sub_268D28588(v144);
    v98 = v153;
    v153[32] = 0;
    v98[33] = 0;
    v98[34] = 0;
    v98[35] = 0;
  }

  else
  {
    v54 = v113;
    v153[35] = v126;
    v55 = __swift_allocate_boxed_opaque_existential_1(v54);
    (*(v127 + 32))(v55, v144, v126);
  }

  v111 = v153 + 38;
  v112 = 1;
  v56 = sub_268F9AEF4();
  v57 = v153;
  v58 = v123;
  v59 = v133;
  v61 = v60;
  v62 = v142;
  v153[36] = v56;
  v57[37] = v61;
  sub_268D2A1F0((v59 + *(v58 + 52)), v62);
  if ((v129)(v142, v112, v126) == 1)
  {
    sub_268D28588(v142);
    v97 = v153;
    v153[38] = 0;
    v97[39] = 0;
    v97[40] = 0;
    v97[41] = 0;
  }

  else
  {
    v63 = v111;
    v153[41] = v126;
    v64 = __swift_allocate_boxed_opaque_existential_1(v63);
    (*(v127 + 32))(v64, v142, v126);
  }

  v109 = v153 + 44;
  v110 = 1;
  v65 = sub_268F9AEF4();
  v66 = v153;
  v67 = v123;
  v68 = v133;
  v70 = v69;
  v71 = v140;
  v153[42] = v65;
  v66[43] = v70;
  sub_268D2A1F0((v68 + *(v67 + 40)), v71);
  if ((v129)(v140, v110, v126) == 1)
  {
    sub_268D28588(v140);
    v96 = v153;
    v153[44] = 0;
    v96[45] = 0;
    v96[46] = 0;
    v96[47] = 0;
  }

  else
  {
    v72 = v109;
    v153[47] = v126;
    v73 = __swift_allocate_boxed_opaque_existential_1(v72);
    (*(v127 + 32))(v73, v140, v126);
  }

  v107 = v153 + 50;
  v108 = 1;
  v74 = sub_268F9AEF4();
  v75 = v153;
  v76 = v123;
  v77 = v133;
  v79 = v78;
  v80 = v138;
  v153[48] = v74;
  v75[49] = v79;
  sub_268D2A1F0((v77 + *(v76 + 44)), v80);
  if ((v129)(v138, v108, v126) == 1)
  {
    sub_268D28588(v138);
    v95 = v153;
    v153[50] = 0;
    v95[51] = 0;
    v95[52] = 0;
    v95[53] = 0;
  }

  else
  {
    v81 = v107;
    v153[53] = v126;
    v82 = __swift_allocate_boxed_opaque_existential_1(v81);
    (*(v127 + 32))(v82, v138, v126);
  }

  v105 = v153 + 56;
  v106 = 1;
  v83 = sub_268F9AEF4();
  v84 = v153;
  v85 = v123;
  v86 = v133;
  v88 = v87;
  v89 = v136;
  v153[54] = v83;
  v84[55] = v88;
  sub_268D2A1F0((v86 + *(v85 + 48)), v89);
  if ((v129)(v136, v106, v126) == 1)
  {
    sub_268D28588(v136);
    v94 = v153;
    v153[56] = 0;
    v94[57] = 0;
    v94[58] = 0;
    v94[59] = 0;
  }

  else
  {
    v90 = v105;
    v153[59] = v126;
    v91 = __swift_allocate_boxed_opaque_existential_1(v90);
    (*(v127 + 32))(v91, v136, v126);
  }

  v92 = v152;
  sub_268CD0F7C();
  v104 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268D61C34@<X0>(char *a1@<X8>)
{
  v19 = a1;
  v20 = 0;
  v12 = 0;
  v13 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters();
  v10 = (*(*(v13 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = &v9 - v10;
  v20 = &v9 - v10;
  *v18 = 0;
  v11 = *(v1 + 20);
  v15 = sub_268F9A9C4();
  v2 = *(v15 - 8);
  v17 = *(v2 + 56);
  v16 = v2 + 56;
  v14 = 1;
  v17(&v18[v11], 1);
  v3 = v13;
  v4 = v14;
  v5 = v15;
  v6 = v17;
  v7 = v18;
  *&v18[v13[6]] = v12;
  (v6)(&v7[v3[7]], v4, v4, v5);
  (v17)(&v18[v13[8]], v14, v14, v15);
  (v17)(&v18[v13[9]], v14, v14, v15);
  (v17)(&v18[v13[10]], v14, v14, v15);
  (v17)(&v18[v13[11]], v14, v14, v15);
  (v17)(&v18[v13[12]], v14, v14, v15);
  (v17)(&v18[v13[13]], v14, v14, v15);
  return sub_268D863AC(v18, v19);
}

uint64_t type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters()
{
  v1 = qword_2802DC688;
  if (!qword_2802DC688)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268D61F38(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 20)));
  return sub_268D28588(v8);
}

uint64_t sub_268D61FE8()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters() + 24));

  return v2;
}

uint64_t sub_268D62020(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters() + 24));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_268D62090(unsigned int a1)
{
  v2 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters();
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

uint64_t sub_268D620C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v1;
  *v1 = sub_268F9AEF4();
  v10[1] = v2;
  v11 = *v0;

  if (v11)
  {
    v10[5] = sub_268F9AA44();
    v10[2] = v11;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v3;
  v7 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters();
  v8 = *(v9 + *(v7 + 24));

  if (v8)
  {
    v10[11] = type metadata accessor for SettingsBinarySetting();
    v10[8] = v8;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v4;
  v6 = *(v9 + *(v7 + 28));
  if (v6 == 2)
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  else
  {
    v10[17] = MEMORY[0x277D839B0];
    *(v10 + 112) = v6 & 1;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268D62310@<X0>(char *a1@<X8>)
{
  v13 = a1;
  v14 = 0;
  v10 = 0;
  v11 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters();
  v8 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v7 - v8;
  v14 = &v7 - v8;
  *v12 = 0;
  v9 = *(v1 + 20);
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 56))(&v12[v9], 1);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  *&v12[*(v11 + 24)] = v10;
  v4[*(v3 + 28)] = 2;
  return sub_268D861FC(v4, v5);
}

uint64_t type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters()
{
  v1 = qword_2802DC6A0;
  if (!qword_2802DC6A0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268D624CC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 20)));
  return sub_268D28588(v8);
}

uint64_t sub_268D6257C()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters() + 24));

  return v2;
}

uint64_t sub_268D625B4(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters() + 24));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_268D62638(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 28)));
  return sub_268D28588(v8);
}

uint64_t sub_268D62720(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 32)));
  return sub_268D28588(v8);
}

uint64_t sub_268D62808(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 36)));
  return sub_268D28588(v8);
}

uint64_t sub_268D628F0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 40)));
  return sub_268D28588(v8);
}

uint64_t sub_268D629D8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 44)));
  return sub_268D28588(v8);
}

uint64_t sub_268D62AC0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 48)));
  return sub_268D28588(v8);
}

uint64_t sub_268D62BA8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 52)));
  return sub_268D28588(v8);
}

uint64_t sub_268D62C7C(unsigned int a1)
{
  v2 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  result = a1;
  *(v1 + *(v2 + 56)) = a1;
  return result;
}

uint64_t sub_268D62CB4()
{
  v166 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v144 = *(*(v1 - 8) + 64);
  v145 = (v144 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v146 = &v112 - v145;
  v147 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v112 - v145);
  v148 = &v112 - v147;
  v149 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v112 - v147);
  v150 = &v112 - v149;
  v151 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v112 - v149);
  v152 = &v112 - v151;
  v153 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v112 - v151);
  v154 = &v112 - v153;
  v155 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v112 - v153);
  v156 = &v112 - v155;
  v157 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v112 - v155);
  v158 = &v112 - v157;
  v159 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v112 - v157);
  v160 = &v112 - v159;
  v166 = v0;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v163 = 11;
  v162 = sub_268F9B734();
  v164 = v9;
  v10 = sub_268F9AEF4();
  v11 = v164;
  *v164 = v10;
  v11[1] = v12;
  v165 = *v0;

  if (v165)
  {
    v142 = v165;
    v141 = v165;
    v13 = sub_268F9AA44();
    v14 = v164;
    v15 = v141;
    v164[5] = v13;
    v14[2] = v15;
  }

  else
  {
    v111 = v164;
    v164[2] = 0;
    v111[3] = 0;
    v111[4] = 0;
    v111[5] = 0;
  }

  v132 = v164 + 8;
  v135 = 1;
  v16 = sub_268F9AEF4();
  v17 = v164;
  v164[6] = v16;
  v17[7] = v18;
  v134 = 0;
  v133 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  sub_268D2A1F0((v143 + *(v133 + 20)), v160);
  v136 = sub_268F9A9C4();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = *(v137 + 48);
  v140 = v137 + 48;
  if (v139(v160, v135) == 1)
  {
    sub_268D28588(v160);
    v110 = v164;
    v164[8] = 0;
    v110[9] = 0;
    v110[10] = 0;
    v110[11] = 0;
  }

  else
  {
    v19 = v132;
    v164[11] = v136;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(v137 + 32))(boxed_opaque_existential_1, v160, v136);
  }

  v21 = sub_268F9AEF4();
  v22 = v164;
  v23 = v133;
  v24 = v143;
  v164[12] = v21;
  v22[13] = v25;
  v131 = *(v24 + *(v23 + 24));

  if (v131)
  {
    v130 = v131;
    v129 = v131;
    v26 = type metadata accessor for SettingsBinarySetting();
    v27 = v164;
    v28 = v129;
    v164[17] = v26;
    v27[14] = v28;
  }

  else
  {
    v109 = v164;
    v164[14] = 0;
    v109[15] = 0;
    v109[16] = 0;
    v109[17] = 0;
  }

  v127 = v164 + 20;
  v128 = 1;
  v29 = sub_268F9AEF4();
  v30 = v164;
  v31 = v133;
  v32 = v143;
  v34 = v33;
  v35 = v158;
  v164[18] = v29;
  v30[19] = v34;
  sub_268D2A1F0((v32 + *(v31 + 28)), v35);
  if ((v139)(v158, v128, v136) == 1)
  {
    sub_268D28588(v158);
    v108 = v164;
    v164[20] = 0;
    v108[21] = 0;
    v108[22] = 0;
    v108[23] = 0;
  }

  else
  {
    v36 = v127;
    v164[23] = v136;
    v37 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v137 + 32))(v37, v158, v136);
  }

  v125 = v164 + 26;
  v126 = 1;
  v38 = sub_268F9AEF4();
  v39 = v164;
  v40 = v133;
  v41 = v143;
  v43 = v42;
  v44 = v156;
  v164[24] = v38;
  v39[25] = v43;
  sub_268D2A1F0((v41 + *(v40 + 32)), v44);
  if ((v139)(v156, v126, v136) == 1)
  {
    sub_268D28588(v156);
    v107 = v164;
    v164[26] = 0;
    v107[27] = 0;
    v107[28] = 0;
    v107[29] = 0;
  }

  else
  {
    v45 = v125;
    v164[29] = v136;
    v46 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(v137 + 32))(v46, v156, v136);
  }

  v123 = v164 + 32;
  v124 = 1;
  v47 = sub_268F9AEF4();
  v48 = v164;
  v49 = v133;
  v50 = v143;
  v52 = v51;
  v53 = v154;
  v164[30] = v47;
  v48[31] = v52;
  sub_268D2A1F0((v50 + *(v49 + 36)), v53);
  if ((v139)(v154, v124, v136) == 1)
  {
    sub_268D28588(v154);
    v106 = v164;
    v164[32] = 0;
    v106[33] = 0;
    v106[34] = 0;
    v106[35] = 0;
  }

  else
  {
    v54 = v123;
    v164[35] = v136;
    v55 = __swift_allocate_boxed_opaque_existential_1(v54);
    (*(v137 + 32))(v55, v154, v136);
  }

  v121 = v164 + 38;
  v122 = 1;
  v56 = sub_268F9AEF4();
  v57 = v164;
  v58 = v133;
  v59 = v143;
  v61 = v60;
  v62 = v152;
  v164[36] = v56;
  v57[37] = v61;
  sub_268D2A1F0((v59 + *(v58 + 52)), v62);
  if ((v139)(v152, v122, v136) == 1)
  {
    sub_268D28588(v152);
    v105 = v164;
    v164[38] = 0;
    v105[39] = 0;
    v105[40] = 0;
    v105[41] = 0;
  }

  else
  {
    v63 = v121;
    v164[41] = v136;
    v64 = __swift_allocate_boxed_opaque_existential_1(v63);
    (*(v137 + 32))(v64, v152, v136);
  }

  v119 = v164 + 44;
  v120 = 1;
  v65 = sub_268F9AEF4();
  v66 = v164;
  v67 = v133;
  v68 = v143;
  v70 = v69;
  v71 = v150;
  v164[42] = v65;
  v66[43] = v70;
  sub_268D2A1F0((v68 + *(v67 + 40)), v71);
  if ((v139)(v150, v120, v136) == 1)
  {
    sub_268D28588(v150);
    v104 = v164;
    v164[44] = 0;
    v104[45] = 0;
    v104[46] = 0;
    v104[47] = 0;
  }

  else
  {
    v72 = v119;
    v164[47] = v136;
    v73 = __swift_allocate_boxed_opaque_existential_1(v72);
    (*(v137 + 32))(v73, v150, v136);
  }

  v117 = v164 + 50;
  v118 = 1;
  v74 = sub_268F9AEF4();
  v75 = v164;
  v76 = v133;
  v77 = v143;
  v79 = v78;
  v80 = v148;
  v164[48] = v74;
  v75[49] = v79;
  sub_268D2A1F0((v77 + *(v76 + 44)), v80);
  if ((v139)(v148, v118, v136) == 1)
  {
    sub_268D28588(v148);
    v103 = v164;
    v164[50] = 0;
    v103[51] = 0;
    v103[52] = 0;
    v103[53] = 0;
  }

  else
  {
    v81 = v117;
    v164[53] = v136;
    v82 = __swift_allocate_boxed_opaque_existential_1(v81);
    (*(v137 + 32))(v82, v148, v136);
  }

  v115 = v164 + 56;
  v116 = 1;
  v83 = sub_268F9AEF4();
  v84 = v164;
  v85 = v133;
  v86 = v143;
  v88 = v87;
  v89 = v146;
  v164[54] = v83;
  v84[55] = v88;
  sub_268D2A1F0((v86 + *(v85 + 48)), v89);
  if ((v139)(v146, v116, v136) == 1)
  {
    sub_268D28588(v146);
    v102 = v164;
    v164[56] = 0;
    v102[57] = 0;
    v102[58] = 0;
    v102[59] = 0;
  }

  else
  {
    v90 = v115;
    v164[59] = v136;
    v91 = __swift_allocate_boxed_opaque_existential_1(v90);
    (*(v137 + 32))(v91, v146, v136);
  }

  v92 = sub_268F9AEF4();
  v93 = v164;
  v94 = v133;
  v95 = v143;
  v164[60] = v92;
  v93[61] = v96;
  v114 = *(v95 + *(v94 + 56));
  if (v114 == 2)
  {
    v101 = v164;
    v164[62] = 0;
    v101[63] = 0;
    v101[64] = 0;
    v101[65] = 0;
  }

  else
  {
    v113 = v114;
    v97 = v164;
    v98 = v114;
    v164[65] = MEMORY[0x277D839B0];
    *(v97 + 496) = v98 & 1;
  }

  v99 = v162;
  sub_268CD0F7C();
  v112 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268D6398C@<X0>(char *a1@<X8>)
{
  v21 = a1;
  v22 = 0;
  v14 = 0;
  v19 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters();
  v12 = (*(*(v19 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v20 = &v11 - v12;
  v22 = &v11 - v12;
  *v20 = 0;
  v13 = *(v1 + 20);
  v16 = sub_268F9A9C4();
  v2 = *(v16 - 8);
  v18 = *(v2 + 56);
  v17 = v2 + 56;
  v15 = 1;
  v18(&v20[v13], 1);
  v3 = v15;
  v4 = v16;
  v5 = v18;
  v6 = v19;
  v7 = v20;
  *&v20[v19[6]] = v14;
  v5(&v7[v6[7]], v3, v3, v4);
  (v18)(&v20[v19[8]], v15, v15, v16);
  (v18)(&v20[v19[9]], v15, v15, v16);
  (v18)(&v20[v19[10]], v15, v15, v16);
  (v18)(&v20[v19[11]], v15, v15, v16);
  (v18)(&v20[v19[12]], v15, v15, v16);
  (v18)(&v20[v19[13]], v15, v15, v16);
  v8 = v20;
  v9 = v21;
  v20[v19[14]] = 2;
  return sub_268D8597C(v8, v9);
}

uint64_t sub_268D63C24(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9A994();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268D63D3C()
{
  v1 = 0;
  sub_268D287E8(&v1);
  return 0;
}

uint64_t type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters()
{
  v1 = qword_2802DC6B0;
  if (!qword_2802DC6B0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268D63E2C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 24)));
  return sub_268D28588(v8);
}

uint64_t sub_268D63F08()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters() + 32));

  return v2;
}

uint64_t sub_268D63F40(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters() + 32));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_268D63FC4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 36)));
  return sub_268D28588(v8);
}

uint64_t sub_268D640AC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 40)));
  return sub_268D28588(v8);
}

uint64_t sub_268D64194(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 44)));
  return sub_268D28588(v8);
}

uint64_t sub_268D6427C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 48)));
  return sub_268D28588(v8);
}

uint64_t sub_268D64364(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 52)));
  return sub_268D28588(v8);
}

uint64_t sub_268D6444C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 56)));
  return sub_268D28588(v8);
}

uint64_t sub_268D644FC()
{
  v150 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v131 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v132 = v102 - v131;
  v133 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v102 - v131);
  v134 = v102 - v133;
  v135 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v102 - v133);
  v136 = v102 - v135;
  v137 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v102 - v135);
  v138 = v102 - v137;
  v139 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v102 - v137);
  v140 = v102 - v139;
  v141 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v102 - v139);
  v142 = v102 - v141;
  v143 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v102 - v141);
  v144 = v102 - v143;
  v150 = v0;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v147 = 11;
  v146 = sub_268F9B734();
  v148 = v8;
  v9 = sub_268F9AEF4();
  v10 = v148;
  *v148 = v9;
  v10[1] = v11;
  v149 = *v0;

  if (v149)
  {
    v129 = v149;
    v128 = v149;
    v12 = sub_268F9AA44();
    v13 = v148;
    v14 = v128;
    v148[5] = v12;
    v13[2] = v14;
  }

  else
  {
    v101 = v148;
    v148[2] = 0;
    v101[3] = 0;
    v101[4] = 0;
    v101[5] = 0;
  }

  v122 = 1;
  v15 = sub_268F9AEF4();
  v16 = v148;
  v17 = v130;
  v148[6] = v15;
  v16[7] = v18;
  LOBYTE(v17) = *(v17 + 8);
  v16[11] = MEMORY[0x277D839B0];
  *(v16 + 64) = v17;
  v119 = v16 + 14;
  v19 = sub_268F9AEF4();
  v20 = v148;
  v148[12] = v19;
  v20[13] = v21;
  v121 = 0;
  v120 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  sub_268D2A1F0((v130 + *(v120 + 24)), v144);
  v123 = sub_268F9A9C4();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v126 = *(v124 + 48);
  v127 = v124 + 48;
  if (v126(v144, v122) == 1)
  {
    sub_268D28588(v144);
    v100 = v148;
    v148[14] = 0;
    v100[15] = 0;
    v100[16] = 0;
    v100[17] = 0;
  }

  else
  {
    v22 = v119;
    v148[17] = v123;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    (*(v124 + 32))(boxed_opaque_existential_1, v144, v123);
  }

  v117 = 1;
  v24 = sub_268F9AEF4();
  v25 = v148;
  v26 = v120;
  v27 = v130;
  v148[18] = v24;
  v25[19] = v28;
  LOBYTE(v27) = *(v27 + *(v26 + 28));
  v25[23] = MEMORY[0x277D839B0];
  *(v25 + 160) = v27;
  v29 = sub_268F9AEF4();
  v30 = v148;
  v31 = v120;
  v32 = v130;
  v148[24] = v29;
  v30[25] = v33;
  v118 = *(v32 + *(v31 + 32));

  if (v118)
  {
    v116 = v118;
    v115 = v118;
    v34 = type metadata accessor for SettingsBinarySetting();
    v35 = v148;
    v36 = v115;
    v148[29] = v34;
    v35[26] = v36;
  }

  else
  {
    v99 = v148;
    v148[26] = 0;
    v99[27] = 0;
    v99[28] = 0;
    v99[29] = 0;
  }

  v113 = v148 + 32;
  v114 = 1;
  v37 = sub_268F9AEF4();
  v38 = v148;
  v39 = v120;
  v40 = v130;
  v42 = v41;
  v43 = v142;
  v148[30] = v37;
  v38[31] = v42;
  sub_268D2A1F0((v40 + *(v39 + 36)), v43);
  if ((v126)(v142, v114, v123) == 1)
  {
    sub_268D28588(v142);
    v98 = v148;
    v148[32] = 0;
    v98[33] = 0;
    v98[34] = 0;
    v98[35] = 0;
  }

  else
  {
    v44 = v113;
    v148[35] = v123;
    v45 = __swift_allocate_boxed_opaque_existential_1(v44);
    (*(v124 + 32))(v45, v142, v123);
  }

  v111 = v148 + 38;
  v112 = 1;
  v46 = sub_268F9AEF4();
  v47 = v148;
  v48 = v120;
  v49 = v130;
  v51 = v50;
  v52 = v140;
  v148[36] = v46;
  v47[37] = v51;
  sub_268D2A1F0((v49 + *(v48 + 40)), v52);
  if ((v126)(v140, v112, v123) == 1)
  {
    sub_268D28588(v140);
    v97 = v148;
    v148[38] = 0;
    v97[39] = 0;
    v97[40] = 0;
    v97[41] = 0;
  }

  else
  {
    v53 = v111;
    v148[41] = v123;
    v54 = __swift_allocate_boxed_opaque_existential_1(v53);
    (*(v124 + 32))(v54, v140, v123);
  }

  v109 = v148 + 44;
  v110 = 1;
  v55 = sub_268F9AEF4();
  v56 = v148;
  v57 = v120;
  v58 = v130;
  v60 = v59;
  v61 = v138;
  v148[42] = v55;
  v56[43] = v60;
  sub_268D2A1F0((v58 + *(v57 + 44)), v61);
  if ((v126)(v138, v110, v123) == 1)
  {
    sub_268D28588(v138);
    v96 = v148;
    v148[44] = 0;
    v96[45] = 0;
    v96[46] = 0;
    v96[47] = 0;
  }

  else
  {
    v62 = v109;
    v148[47] = v123;
    v63 = __swift_allocate_boxed_opaque_existential_1(v62);
    (*(v124 + 32))(v63, v138, v123);
  }

  v107 = v148 + 50;
  v108 = 1;
  v64 = sub_268F9AEF4();
  v65 = v148;
  v66 = v120;
  v67 = v130;
  v69 = v68;
  v70 = v136;
  v148[48] = v64;
  v65[49] = v69;
  sub_268D2A1F0((v67 + *(v66 + 48)), v70);
  if ((v126)(v136, v108, v123) == 1)
  {
    sub_268D28588(v136);
    v95 = v148;
    v148[50] = 0;
    v95[51] = 0;
    v95[52] = 0;
    v95[53] = 0;
  }

  else
  {
    v71 = v107;
    v148[53] = v123;
    v72 = __swift_allocate_boxed_opaque_existential_1(v71);
    (*(v124 + 32))(v72, v136, v123);
  }

  v105 = v148 + 56;
  v106 = 1;
  v73 = sub_268F9AEF4();
  v74 = v148;
  v75 = v120;
  v76 = v130;
  v78 = v77;
  v79 = v134;
  v148[54] = v73;
  v74[55] = v78;
  sub_268D2A1F0((v76 + *(v75 + 52)), v79);
  if ((v126)(v134, v106, v123) == 1)
  {
    sub_268D28588(v134);
    v94 = v148;
    v148[56] = 0;
    v94[57] = 0;
    v94[58] = 0;
    v94[59] = 0;
  }

  else
  {
    v80 = v105;
    v148[59] = v123;
    v81 = __swift_allocate_boxed_opaque_existential_1(v80);
    (*(v124 + 32))(v81, v134, v123);
  }

  v103 = v148 + 62;
  v104 = 1;
  v82 = sub_268F9AEF4();
  v83 = v148;
  v84 = v120;
  v85 = v130;
  v87 = v86;
  v88 = v132;
  v148[60] = v82;
  v83[61] = v87;
  sub_268D2A1F0((v85 + *(v84 + 56)), v88);
  if ((v126)(v132, v104, v123) == 1)
  {
    sub_268D28588(v132);
    v93 = v148;
    v148[62] = 0;
    v93[63] = 0;
    v93[64] = 0;
    v93[65] = 0;
  }

  else
  {
    v89 = v103;
    v148[65] = v123;
    v90 = __swift_allocate_boxed_opaque_existential_1(v89);
    (*(v124 + 32))(v90, v132, v123);
  }

  v91 = v146;
  sub_268CD0F7C();
  v102[1] = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268D65024@<X0>(uint64_t a1@<X0>, char a2@<W1>, const void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, const void *a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11, const void *a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v19 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters();
  sub_268D84F40(a3, (a9 + v19[6]));
  *(a9 + v19[7]) = a4;
  *(a9 + v19[8]) = a5;
  sub_268D84F40(a6, (a9 + v19[9]));
  sub_268D84F40(a7, (a9 + v19[10]));
  sub_268D84F40(a8, (a9 + v19[11]));
  sub_268D84F40(a10, (a9 + v19[12]));
  sub_268D84F40(a11, (a9 + v19[13]));
  return sub_268D84F40(a12, (a9 + v19[14]));
}

uint64_t type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters()
{
  v1 = qword_2802DC6C0;
  if (!qword_2802DC6C0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268D65208(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 32)));
  return sub_268D28588(v8);
}

uint64_t sub_268D652F0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 36)));
  return sub_268D28588(v8);
}

uint64_t sub_268D653A0()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters() + 40));

  return v2;
}

uint64_t sub_268D653D8(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters() + 40));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_268D6545C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 44)));
  return sub_268D28588(v8);
}

uint64_t sub_268D65544(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 48)));
  return sub_268D28588(v8);
}

uint64_t sub_268D6562C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 52)));
  return sub_268D28588(v8);
}

uint64_t sub_268D65714(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 56)));
  return sub_268D28588(v8);
}

uint64_t sub_268D657FC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 60)));
  return sub_268D28588(v8);
}

uint64_t sub_268D658E4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 64)));
  return sub_268D28588(v8);
}

uint64_t sub_268D659CC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 68)));
  return sub_268D28588(v8);
}

uint64_t sub_268D65AD4()
{
  v203 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v180 = *(*(v1 - 8) + 64);
  v181 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v182 = v143 - v181;
  v183 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143 - v181);
  v184 = v143 - v183;
  v185 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143 - v183);
  v186 = v143 - v185;
  v187 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143 - v185);
  v188 = v143 - v187;
  v189 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143 - v187);
  v190 = v143 - v189;
  v191 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143 - v189);
  v192 = v143 - v191;
  v193 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143 - v191);
  v194 = v143 - v193;
  v195 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143 - v193);
  v196 = v143 - v195;
  v197 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143 - v195);
  v198 = v143 - v197;
  v203 = v0;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v200 = sub_268F9B734();
  v201 = v10;
  v11 = sub_268F9AEF4();
  v12 = v201;
  *v201 = v11;
  v12[1] = v13;
  v202 = *v0;

  if (v202)
  {
    v178 = v202;
    v177 = v202;
    v14 = sub_268F9A994();
    v15 = v201;
    v16 = v177;
    v201[5] = v14;
    v15[2] = v16;
  }

  else
  {
    v142 = v201;
    v201[2] = 0;
    v142[3] = 0;
    v142[4] = 0;
    v142[5] = 0;
  }

  v17 = sub_268F9AEF4();
  v18 = v201;
  v19 = v179;
  v201[6] = v17;
  v18[7] = v20;
  v176 = *(v19 + 8);

  if (v176)
  {
    v175 = v176;
    v174 = v176;
    v21 = sub_268F9AA44();
    v22 = v201;
    v23 = v174;
    v201[11] = v21;
    v22[8] = v23;
  }

  else
  {
    v141 = v201;
    v201[8] = 0;
    v141[9] = 0;
    v141[10] = 0;
    v141[11] = 0;
  }

  v168 = 1;
  v24 = sub_268F9AEF4();
  v25 = v201;
  v26 = v179;
  v201[12] = v24;
  v25[13] = v27;
  LOBYTE(v26) = *(v26 + 16);
  v164 = MEMORY[0x277D839B0];
  v25[17] = MEMORY[0x277D839B0];
  *(v25 + 112) = v26;
  v28 = sub_268F9AEF4();
  v29 = v164;
  v30 = v201;
  v31 = v179;
  v201[18] = v28;
  v30[19] = v32;
  LOBYTE(v31) = *(v31 + 17);
  v30[23] = v29;
  *(v30 + 160) = v31;
  v165 = v30 + 26;
  v33 = sub_268F9AEF4();
  v34 = v201;
  v201[24] = v33;
  v34[25] = v35;
  v167 = 0;
  v166 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D2A1F0((v179 + *(v166 + 32)), v198);
  v169 = sub_268F9A9C4();
  v170 = *(v169 - 8);
  v171 = v169 - 8;
  v172 = *(v170 + 48);
  v173 = v170 + 48;
  if (v172(v198, v168) == 1)
  {
    sub_268D28588(v198);
    v140 = v201;
    v201[26] = 0;
    v140[27] = 0;
    v140[28] = 0;
    v140[29] = 0;
  }

  else
  {
    v36 = v165;
    v201[29] = v169;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v170 + 32))(boxed_opaque_existential_1, v198, v169);
  }

  v162 = v201 + 32;
  v163 = 1;
  v38 = sub_268F9AEF4();
  v39 = v201;
  v40 = v166;
  v41 = v179;
  v43 = v42;
  v44 = v196;
  v201[30] = v38;
  v39[31] = v43;
  sub_268D2A1F0((v41 + *(v40 + 36)), v44);
  if ((v172)(v196, v163, v169) == 1)
  {
    sub_268D28588(v196);
    v139 = v201;
    v201[32] = 0;
    v139[33] = 0;
    v139[34] = 0;
    v139[35] = 0;
  }

  else
  {
    v45 = v162;
    v201[35] = v169;
    v46 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(v170 + 32))(v46, v196, v169);
  }

  v47 = sub_268F9AEF4();
  v48 = v201;
  v49 = v166;
  v50 = v179;
  v201[36] = v47;
  v48[37] = v51;
  v161 = *(v50 + *(v49 + 40));

  if (v161)
  {
    v160 = v161;
    v159 = v161;
    v52 = type metadata accessor for SettingsMultiSetting();
    v53 = v201;
    v54 = v159;
    v201[41] = v52;
    v53[38] = v54;
  }

  else
  {
    v138 = v201;
    v201[38] = 0;
    v138[39] = 0;
    v138[40] = 0;
    v138[41] = 0;
  }

  v157 = v201 + 44;
  v158 = 1;
  v55 = sub_268F9AEF4();
  v56 = v201;
  v57 = v166;
  v58 = v179;
  v60 = v59;
  v61 = v194;
  v201[42] = v55;
  v56[43] = v60;
  sub_268D2A1F0((v58 + *(v57 + 44)), v61);
  if ((v172)(v194, v158, v169) == 1)
  {
    sub_268D28588(v194);
    v137 = v201;
    v201[44] = 0;
    v137[45] = 0;
    v137[46] = 0;
    v137[47] = 0;
  }

  else
  {
    v62 = v157;
    v201[47] = v169;
    v63 = __swift_allocate_boxed_opaque_existential_1(v62);
    (*(v170 + 32))(v63, v194, v169);
  }

  v155 = v201 + 50;
  v156 = 1;
  v64 = sub_268F9AEF4();
  v65 = v201;
  v66 = v166;
  v67 = v179;
  v69 = v68;
  v70 = v192;
  v201[48] = v64;
  v65[49] = v69;
  sub_268D2A1F0((v67 + *(v66 + 48)), v70);
  if ((v172)(v192, v156, v169) == 1)
  {
    sub_268D28588(v192);
    v136 = v201;
    v201[50] = 0;
    v136[51] = 0;
    v136[52] = 0;
    v136[53] = 0;
  }

  else
  {
    v71 = v155;
    v201[53] = v169;
    v72 = __swift_allocate_boxed_opaque_existential_1(v71);
    (*(v170 + 32))(v72, v192, v169);
  }

  v153 = v201 + 56;
  v154 = 1;
  v73 = sub_268F9AEF4();
  v74 = v201;
  v75 = v166;
  v76 = v179;
  v78 = v77;
  v79 = v190;
  v201[54] = v73;
  v74[55] = v78;
  sub_268D2A1F0((v76 + *(v75 + 52)), v79);
  if ((v172)(v190, v154, v169) == 1)
  {
    sub_268D28588(v190);
    v135 = v201;
    v201[56] = 0;
    v135[57] = 0;
    v135[58] = 0;
    v135[59] = 0;
  }

  else
  {
    v80 = v153;
    v201[59] = v169;
    v81 = __swift_allocate_boxed_opaque_existential_1(v80);
    (*(v170 + 32))(v81, v190, v169);
  }

  v151 = v201 + 62;
  v152 = 1;
  v82 = sub_268F9AEF4();
  v83 = v201;
  v84 = v166;
  v85 = v179;
  v87 = v86;
  v88 = v188;
  v201[60] = v82;
  v83[61] = v87;
  sub_268D2A1F0((v85 + *(v84 + 56)), v88);
  if ((v172)(v188, v152, v169) == 1)
  {
    sub_268D28588(v188);
    v134 = v201;
    v201[62] = 0;
    v134[63] = 0;
    v134[64] = 0;
    v134[65] = 0;
  }

  else
  {
    v89 = v151;
    v201[65] = v169;
    v90 = __swift_allocate_boxed_opaque_existential_1(v89);
    (*(v170 + 32))(v90, v188, v169);
  }

  v150 = 1;
  v91 = sub_268F9AEF4();
  v92 = v201;
  v93 = v166;
  v94 = v179;
  v201[66] = v91;
  v92[67] = v95;
  LOBYTE(v94) = *(v94 + *(v93 + 72));
  v148 = MEMORY[0x277D839B0];
  v92[71] = MEMORY[0x277D839B0];
  *(v92 + 544) = v94;
  v96 = sub_268F9AEF4();
  v97 = v148;
  v98 = v201;
  v99 = v166;
  v100 = v179;
  v201[72] = v96;
  v98[73] = v101;
  LOBYTE(v100) = *(v100 + *(v99 + 76));
  v98[77] = v97;
  *(v98 + 592) = v100;
  v149 = v98 + 80;
  v102 = sub_268F9AEF4();
  v103 = v201;
  v104 = v166;
  v105 = v179;
  v107 = v106;
  v108 = v186;
  v201[78] = v102;
  v103[79] = v107;
  sub_268D2A1F0((v105 + *(v104 + 60)), v108);
  if ((v172)(v186, v150, v169) == 1)
  {
    sub_268D28588(v186);
    v133 = v201;
    v201[80] = 0;
    v133[81] = 0;
    v133[82] = 0;
    v133[83] = 0;
  }

  else
  {
    v109 = v149;
    v201[83] = v169;
    v110 = __swift_allocate_boxed_opaque_existential_1(v109);
    (*(v170 + 32))(v110, v186, v169);
  }

  v146 = v201 + 86;
  v147 = 1;
  v111 = sub_268F9AEF4();
  v112 = v201;
  v113 = v166;
  v114 = v179;
  v116 = v115;
  v117 = v184;
  v201[84] = v111;
  v112[85] = v116;
  sub_268D2A1F0((v114 + *(v113 + 64)), v117);
  if ((v172)(v184, v147, v169) == 1)
  {
    sub_268D28588(v184);
    v132 = v201;
    v201[86] = 0;
    v132[87] = 0;
    v132[88] = 0;
    v132[89] = 0;
  }

  else
  {
    v118 = v146;
    v201[89] = v169;
    v119 = __swift_allocate_boxed_opaque_existential_1(v118);
    (*(v170 + 32))(v119, v184, v169);
  }

  v144 = v201 + 92;
  v145 = 1;
  v120 = sub_268F9AEF4();
  v121 = v201;
  v122 = v166;
  v123 = v179;
  v125 = v124;
  v126 = v182;
  v201[90] = v120;
  v121[91] = v125;
  sub_268D2A1F0((v123 + *(v122 + 68)), v126);
  if ((v172)(v182, v145, v169) == 1)
  {
    sub_268D28588(v182);
    v131 = v201;
    v201[92] = 0;
    v131[93] = 0;
    v131[94] = 0;
    v131[95] = 0;
  }

  else
  {
    v127 = v144;
    v201[95] = v169;
    v128 = __swift_allocate_boxed_opaque_existential_1(v127);
    (*(v170 + 32))(v128, v182, v169);
  }

  v129 = v200;
  sub_268CD0F7C();
  v143[1] = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

int *sub_268D66A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, uint64_t a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, char a16, char a17)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  v23 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters();
  sub_268D84F40(a5, (a9 + v23[8]));
  sub_268D84F40(a6, (a9 + v23[9]));
  *(a9 + v23[10]) = a7;
  sub_268D84F40(a8, (a9 + v23[11]));
  sub_268D84F40(a10, (a9 + v23[12]));
  sub_268D84F40(a11, (a9 + v23[13]));
  sub_268D84F40(a12, (a9 + v23[14]));
  sub_268D84F40(a13, (a9 + v23[15]));
  sub_268D84F40(a14, (a9 + v23[16]));
  sub_268D84F40(a15, (a9 + v23[17]));
  result = v23;
  *(a9 + v23[18]) = a16;
  *(a9 + v23[19]) = a17;
  return result;
}

uint64_t type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters()
{
  v1 = qword_2802DC6D8;
  if (!qword_2802DC6D8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268D66CE4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 20)));
  return sub_268D28588(v8);
}

uint64_t sub_268D66D94()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters() + 24));

  return v2;
}

uint64_t sub_268D66DCC(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters() + 24));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_268D66E50(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 28)));
  return sub_268D28588(v8);
}

uint64_t sub_268D66F38(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 32)));
  return sub_268D28588(v8);
}

uint64_t sub_268D67020(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 36)));
  return sub_268D28588(v8);
}

uint64_t sub_268D67108(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 40)));
  return sub_268D28588(v8);
}

uint64_t sub_268D671F0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 44)));
  return sub_268D28588(v8);
}

uint64_t sub_268D672D8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 48)));
  return sub_268D28588(v8);
}

uint64_t sub_268D67388()
{
  v139 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v121 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v122 = v93 - v121;
  v123 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93 - v121);
  v124 = v93 - v123;
  v125 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93 - v123);
  v126 = v93 - v125;
  v127 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93 - v125);
  v128 = v93 - v127;
  v129 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93 - v127);
  v130 = v93 - v129;
  v131 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93 - v129);
  v132 = v93 - v131;
  v133 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93 - v131);
  v134 = v93 - v133;
  v139 = v0;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v136 = sub_268F9B734();
  v137 = v8;
  v9 = sub_268F9AEF4();
  v10 = v137;
  *v137 = v9;
  v10[1] = v11;
  v138 = *v0;

  if (v138)
  {
    v119 = v138;
    v118 = v138;
    v12 = sub_268F9AA44();
    v13 = v137;
    v14 = v118;
    v137[5] = v12;
    v13[2] = v14;
  }

  else
  {
    v92 = v137;
    v137[2] = 0;
    v92[3] = 0;
    v92[4] = 0;
    v92[5] = 0;
  }

  v109 = v137 + 8;
  v112 = 1;
  v15 = sub_268F9AEF4();
  v16 = v137;
  v137[6] = v15;
  v16[7] = v17;
  v111 = 0;
  v110 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters();
  sub_268D2A1F0((v120 + *(v110 + 20)), v134);
  v113 = sub_268F9A9C4();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = *(v114 + 48);
  v117 = v114 + 48;
  if (v116(v134, v112) == 1)
  {
    sub_268D28588(v134);
    v91 = v137;
    v137[8] = 0;
    v91[9] = 0;
    v91[10] = 0;
    v91[11] = 0;
  }

  else
  {
    v18 = v109;
    v137[11] = v113;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(v114 + 32))(boxed_opaque_existential_1, v134, v113);
  }

  v20 = sub_268F9AEF4();
  v21 = v137;
  v22 = v110;
  v23 = v120;
  v137[12] = v20;
  v21[13] = v24;
  v108 = *(v23 + *(v22 + 24));

  if (v108)
  {
    v107 = v108;
    v106 = v108;
    v25 = type metadata accessor for SettingsBinarySetting();
    v26 = v137;
    v27 = v106;
    v137[17] = v25;
    v26[14] = v27;
  }

  else
  {
    v90 = v137;
    v137[14] = 0;
    v90[15] = 0;
    v90[16] = 0;
    v90[17] = 0;
  }

  v104 = v137 + 20;
  v105 = 1;
  v28 = sub_268F9AEF4();
  v29 = v137;
  v30 = v110;
  v31 = v120;
  v33 = v32;
  v34 = v132;
  v137[18] = v28;
  v29[19] = v33;
  sub_268D2A1F0((v31 + *(v30 + 28)), v34);
  if ((v116)(v132, v105, v113) == 1)
  {
    sub_268D28588(v132);
    v89 = v137;
    v137[20] = 0;
    v89[21] = 0;
    v89[22] = 0;
    v89[23] = 0;
  }

  else
  {
    v35 = v104;
    v137[23] = v113;
    v36 = __swift_allocate_boxed_opaque_existential_1(v35);
    (*(v114 + 32))(v36, v132, v113);
  }

  v102 = v137 + 26;
  v103 = 1;
  v37 = sub_268F9AEF4();
  v38 = v137;
  v39 = v110;
  v40 = v120;
  v42 = v41;
  v43 = v130;
  v137[24] = v37;
  v38[25] = v42;
  sub_268D2A1F0((v40 + *(v39 + 32)), v43);
  if ((v116)(v130, v103, v113) == 1)
  {
    sub_268D28588(v130);
    v88 = v137;
    v137[26] = 0;
    v88[27] = 0;
    v88[28] = 0;
    v88[29] = 0;
  }

  else
  {
    v44 = v102;
    v137[29] = v113;
    v45 = __swift_allocate_boxed_opaque_existential_1(v44);
    (*(v114 + 32))(v45, v130, v113);
  }

  v100 = v137 + 32;
  v101 = 1;
  v46 = sub_268F9AEF4();
  v47 = v137;
  v48 = v110;
  v49 = v120;
  v51 = v50;
  v52 = v128;
  v137[30] = v46;
  v47[31] = v51;
  sub_268D2A1F0((v49 + *(v48 + 36)), v52);
  if ((v116)(v128, v101, v113) == 1)
  {
    sub_268D28588(v128);
    v87 = v137;
    v137[32] = 0;
    v87[33] = 0;
    v87[34] = 0;
    v87[35] = 0;
  }

  else
  {
    v53 = v100;
    v137[35] = v113;
    v54 = __swift_allocate_boxed_opaque_existential_1(v53);
    (*(v114 + 32))(v54, v128, v113);
  }

  v98 = v137 + 38;
  v99 = 1;
  v55 = sub_268F9AEF4();
  v56 = v137;
  v57 = v110;
  v58 = v120;
  v60 = v59;
  v61 = v126;
  v137[36] = v55;
  v56[37] = v60;
  sub_268D2A1F0((v58 + *(v57 + 40)), v61);
  if ((v116)(v126, v99, v113) == 1)
  {
    sub_268D28588(v126);
    v86 = v137;
    v137[38] = 0;
    v86[39] = 0;
    v86[40] = 0;
    v86[41] = 0;
  }

  else
  {
    v62 = v98;
    v137[41] = v113;
    v63 = __swift_allocate_boxed_opaque_existential_1(v62);
    (*(v114 + 32))(v63, v126, v113);
  }

  v96 = v137 + 44;
  v97 = 1;
  v64 = sub_268F9AEF4();
  v65 = v137;
  v66 = v110;
  v67 = v120;
  v69 = v68;
  v70 = v124;
  v137[42] = v64;
  v65[43] = v69;
  sub_268D2A1F0((v67 + *(v66 + 44)), v70);
  if ((v116)(v124, v97, v113) == 1)
  {
    sub_268D28588(v124);
    v85 = v137;
    v137[44] = 0;
    v85[45] = 0;
    v85[46] = 0;
    v85[47] = 0;
  }

  else
  {
    v71 = v96;
    v137[47] = v113;
    v72 = __swift_allocate_boxed_opaque_existential_1(v71);
    (*(v114 + 32))(v72, v124, v113);
  }

  v94 = v137 + 50;
  v95 = 1;
  v73 = sub_268F9AEF4();
  v74 = v137;
  v75 = v110;
  v76 = v120;
  v78 = v77;
  v79 = v122;
  v137[48] = v73;
  v74[49] = v78;
  sub_268D2A1F0((v76 + *(v75 + 48)), v79);
  if ((v116)(v122, v95, v113) == 1)
  {
    sub_268D28588(v122);
    v84 = v137;
    v137[50] = 0;
    v84[51] = 0;
    v84[52] = 0;
    v84[53] = 0;
  }

  else
  {
    v80 = v94;
    v137[53] = v113;
    v81 = __swift_allocate_boxed_opaque_existential_1(v80);
    (*(v114 + 32))(v81, v122, v113);
  }

  v82 = v136;
  sub_268CD0F7C();
  v93[1] = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268D67DF4@<X0>(char *a1@<X8>)
{
  v19 = a1;
  v20 = 0;
  v12 = 0;
  v13 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters();
  v10 = (*(*(v13 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = &v9 - v10;
  v20 = &v9 - v10;
  *v18 = 0;
  v11 = *(v1 + 20);
  v15 = sub_268F9A9C4();
  v2 = *(v15 - 8);
  v17 = *(v2 + 56);
  v16 = v2 + 56;
  v14 = 1;
  v17(&v18[v11], 1);
  v3 = v13;
  v4 = v14;
  v5 = v15;
  v6 = v17;
  v7 = v18;
  *&v18[v13[6]] = v12;
  (v6)(&v7[v3[7]], v4, v4, v5);
  (v17)(&v18[v13[8]], v14, v14, v15);
  (v17)(&v18[v13[9]], v14, v14, v15);
  (v17)(&v18[v13[10]], v14, v14, v15);
  (v17)(&v18[v13[11]], v14, v14, v15);
  (v17)(&v18[v13[12]], v14, v14, v15);
  return sub_268D85218(v18, v19);
}

uint64_t type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters()
{
  v1 = qword_2802DC6E8;
  if (!qword_2802DC6E8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268D680C8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_268D2A1F0(v2, &v5 - v6);
  v3 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters();
  sub_268D29FC8(v7, (v1 + *(v3 + 20)));
  return sub_268D28588(v8);
}

uint64_t sub_268D68178()
{
  v2 = *(v0 + *(type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters() + 24));

  return v2;
}

uint64_t sub_268D681B0(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters() + 24));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_268D68220(unsigned int a1)
{
  v2 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters();
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

uint64_t sub_268D68258()
{
  v58 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v52 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v53 = v37 - v52;
  v58 = v0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v55 = sub_268F9B734();
  v56 = v2;
  v3 = sub_268F9AEF4();
  v4 = v56;
  *v56 = v3;
  v4[1] = v5;
  v57 = *v0;

  if (v57)
  {
    v50 = v57;
    v49 = v57;
    v6 = sub_268F9AA44();
    v7 = v56;
    v8 = v49;
    v56[5] = v6;
    v7[2] = v8;
  }

  else
  {
    v36 = v56;
    v56[2] = 0;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
  }

  v9 = sub_268F9AEF4();
  v10 = v56;
  v56[6] = v9;
  v10[7] = v11;
  v47 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters();
  v48 = *(v51 + *(v47 + 24));

  if (v48)
  {
    v46 = v48;
    v45 = v48;
    v12 = type metadata accessor for SettingsMultiSetting();
    v13 = v56;
    v14 = v45;
    v56[11] = v12;
    v13[8] = v14;
  }

  else
  {
    v35 = v56;
    v56[8] = 0;
    v35[9] = 0;
    v35[10] = 0;
    v35[11] = 0;
  }

  v40 = v56 + 14;
  v41 = 1;
  v15 = sub_268F9AEF4();
  v16 = v56;
  v17 = v47;
  v18 = v51;
  v20 = v19;
  v21 = v53;
  v56[12] = v15;
  v16[13] = v20;
  sub_268D2A1F0((v18 + *(v17 + 20)), v21);
  v42 = sub_268F9A9C4();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  if ((*(v43 + 48))(v53, v41) == 1)
  {
    sub_268D28588(v53);
    v34 = v56;
    v56[14] = 0;
    v34[15] = 0;
    v34[16] = 0;
    v34[17] = 0;
  }

  else
  {
    v22 = v40;
    v56[17] = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    (*(v43 + 32))(boxed_opaque_existential_1, v53, v42);
  }

  v24 = sub_268F9AEF4();
  v25 = v56;
  v26 = v47;
  v27 = v51;
  v56[18] = v24;
  v25[19] = v28;
  v39 = *(v27 + *(v26 + 28));
  if (v39 == 2)
  {
    v33 = v56;
    v56[20] = 0;
    v33[21] = 0;
    v33[22] = 0;
    v33[23] = 0;
  }

  else
  {
    v38 = v39;
    v29 = v56;
    v30 = v39;
    v56[23] = MEMORY[0x277D839B0];
    *(v29 + 160) = v30 & 1;
  }

  v31 = v55;
  sub_268CD0F7C();
  v37[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}