void sub_23012C47C(uint64_t a1)
{
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v10[4] = sub_23012FCD8;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_2302956D0;
    v10[3] = &block_descriptor_5;
    v7 = _Block_copy(v10);
    v8 = v5;
    v9 = v1;

    [v4 openUserActivity:v9 usingApplicationRecord:a1 configuration:v8 completionHandler:v7];
    _Block_release(v7);
  }
}

id REMUserActivity.parsePhoneCall()@<X0>(char **a1@<X8>)
{
  v154 = a1;
  v152 = sub_23030E4F8();
  v147 = *(v152 - 8);
  v2 = MEMORY[0x28223BE20](v152);
  v143 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v140 = &v139 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v139 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v141 = &v139 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v142 = &v139 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v139 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v139 - v16;
  v18 = sub_23030E4A8();
  v145 = *(v18 - 8);
  v146 = v18;
  MEMORY[0x28223BE20](v18);
  v144 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149F8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v139 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v139 - v27;
  v149 = sub_23030E578();
  v29 = *(v149 - 8);
  v30 = MEMORY[0x28223BE20](v149);
  v32 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v139 - v34;
  MEMORY[0x28223BE20](v33);
  v148 = &v139 - v36;
  v37 = sub_23030E9B8();
  v38 = *(v37 - 8);
  v150 = v37;
  v151 = v38;
  MEMORY[0x28223BE20](v37);
  v153 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 type];
  if (result != 1)
  {
    goto LABEL_8;
  }

  result = [v1 universalLink];
  if (!result)
  {
    goto LABEL_8;
  }

  v139 = v29;
  v41 = v153;
  v42 = result;
  sub_23030E938();

  v43 = sub_23030E978();
  if (!v44)
  {
    result = (*(v151 + 8))(v41, v150);
LABEL_8:
    v49 = v154;
LABEL_9:
    v49[1] = 0;
    v49[2] = 0;
    *v49 = 2;
    *(v49 + 24) = 0;
    return result;
  }

  v45 = v44;
  v46 = v139;
  if (v43 == 7103860 && v44 == 0xE300000000000000)
  {
    goto LABEL_6;
  }

  v50 = v43;
  v51 = sub_230311048();
  v52 = v50;
  if (v51 & 1) != 0 || v50 == 0x656D697465636166 && v45 == 0xE800000000000000 || ((v71 = sub_230311048(), v52 = v50, v45 == 0xEE006F696475612DLL) ? (v72 = v50 == 0x656D697465636166) : (v72 = 0), v72 || (v71 & 1) != 0 || (v73 = sub_230311048(), v52 = v50, (v73)))
  {
    v46 = v139;
    if (v52 == 0x656D697465636166 && v45 == 0xE800000000000000)
    {

      v48 = 1;
      goto LABEL_16;
    }

LABEL_6:
    v47 = sub_230311048();

    v48 = v47 & 1;
LABEL_16:
    v53 = v153;
    sub_23030E538();
    v54 = v149;
    v55 = (*(v46 + 48))(v28, 1, v149);
    v32 = v148;
    if (v55 != 1)
    {
      (*(v46 + 32))(v148, v28, v54);
      v57 = sub_23030E558();
      if (v58)
      {
        v155 = v57;
        v156 = v58;
        v59 = v144;
        sub_23030E478();
        sub_2300A85F0();
        v60 = sub_230310558();
        v61 = v59;
        v63 = v62;
        (*(v145 + 8))(v61, v146);
        v146 = v60;
        if ((v63 & 0x2000000000000000) != 0)
        {
          v64 = HIBYTE(v63) & 0xF;
        }

        else
        {
          v64 = v60 & 0xFFFFFFFFFFFFLL;
        }

        if (v64)
        {
          v65 = sub_23030E518();
          if (v65)
          {
            v66 = v65;
            v144 = v48;
            v145 = v63;
            v67 = *(v65 + 16);
            if (v67)
            {
              v68 = 0;
              v69 = (v147 + 8);
              while (1)
              {
                if (v68 >= *(v66 + 16))
                {
                  __break(1u);
                  goto LABEL_103;
                }

                (*(v147 + 16))(v15, v66 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v68, v152);
                if (sub_23030E4D8() == 0x7954656C646E6168 && v70 == 0xEA00000000006570)
                {
                  break;
                }

                v32 = sub_230311048();

                if (v32)
                {
                  goto LABEL_56;
                }

                ++v68;
                (*v69)(v15, v152);
                if (v67 == v68)
                {
                  goto LABEL_32;
                }
              }

LABEL_56:

              v78 = v147 + 32;
              v79 = v152;
              (*(v147 + 32))(v17, v15, v152);
              sub_23030E4E8();
              v81 = v80;
              (*(v78 - 24))(v17, v79);
              v82 = v145;
              if (!v81)
              {
                goto LABEL_63;
              }

              v83 = sub_230310C08();

              v84 = v153;
              v86 = v148;
              v85 = v149;
              if (!v83)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
                v103 = swift_allocObject();
                *(v103 + 16) = xmmword_230315CE0;
                *(v103 + 32) = v146;
                *(v103 + 40) = v82;
                v104 = objc_allocWithZone(MEMORY[0x277D445D8]);
                v90 = sub_23030FCC8();

                v91 = sub_23030FCC8();
                v92 = [v104 initWithPhones:v90 emails:v91];
                v87 = v144;
                goto LABEL_74;
              }

              v87 = v144;
              if (v83 == 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
                v88 = swift_allocObject();
                *(v88 + 16) = xmmword_230315CE0;
                *(v88 + 32) = v146;
                *(v88 + 40) = v82;
                v89 = objc_allocWithZone(MEMORY[0x277D445D8]);
                v90 = sub_23030FCC8();
                v91 = sub_23030FCC8();

                v92 = [v89 initWithPhones:v90 emails:v91];
LABEL_74:

                (*(v139 + 8))(v86, v85);
                result = (*(v151 + 8))(v84, v150);
                v105 = v154;
                *v154 = v87;
                v105[1] = v92;
                v105[2] = 0;
                *(v105 + 24) = 0;
                return result;
              }

              (*(v139 + 8))(v86, v85);
              result = (*(v151 + 8))(v84, v150);
            }

            else
            {
LABEL_32:

LABEL_63:

              (*(v139 + 8))(v148, v149);
              result = (*(v151 + 8))(v153, v150);
            }

            goto LABEL_35;
          }
        }
      }

      (*(v46 + 8))(v32, v54);
      result = (*(v151 + 8))(v53, v150);
LABEL_35:
      v49 = v154;
      goto LABEL_9;
    }

    (*(v151 + 8))(v53, v150);
    v56 = v28;
LABEL_18:
    result = sub_230061918(v56, &qword_27DB149F8);
    goto LABEL_35;
  }

  if (v50 == 0x2D74696B6C6C6163 && v45 == 0xED00006F69647561)
  {
    goto LABEL_60;
  }

  v74 = sub_230311048();
  v75 = v50 == 0x2D74696B6C6C6163 && v45 == 0xED00006F65646976;
  v76 = v75;
  if (v75 || (v74 & 1) != 0 || (sub_230311048() & 1) != 0)
  {
    if (v76)
    {

      v77 = 1;
LABEL_61:
      v94 = v153;
      sub_23030E538();
      v95 = v139;
      v96 = v149;
      if ((*(v139 + 48))(v26, 1, v149) != 1)
      {
        (*(v95 + 32))(v35, v26, v96);
        result = sub_23030E518();
        if (result)
        {
          v97 = result;
          v143 = v77;
          v98 = *(result + 2);
          if (v98)
          {
            v99 = 0;
            v148 = (v147 + 16);
            v100 = (v147 + 8);
            while (1)
            {
              if (v99 >= v97[2])
              {
                __break(1u);
                goto LABEL_113;
              }

              (*(v147 + 16))(v8, v97 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v99, v152);
              if (sub_23030E4D8() == 0xD000000000000011 && 0x8000000230341850 == v101)
              {
                break;
              }

              v102 = sub_230311048();

              if (v102)
              {
                goto LABEL_83;
              }

              ++v99;
              result = (*v100)(v8, v152);
              if (v98 == v99)
              {
                goto LABEL_72;
              }
            }

LABEL_83:

            v110 = *(v147 + 32);
            v111 = v141;
            v112 = v152;
            v110(v141, v8, v152);
            v113 = v142;
            v110(v142, v111, v112);
            v114 = sub_23030E4E8();
            v94 = v153;
            v96 = v149;
            if (v115)
            {
              v155 = v114;
              v156 = v115;
              v116 = v144;
              sub_23030E478();
              sub_2300A85F0();
              v117 = sub_230310558();
              v119 = v118;
              (*(v145 + 8))(v116, v146);
              if ((v119 & 0x2000000000000000) != 0)
              {
                v120 = HIBYTE(v119) & 0xF;
              }

              else
              {
                v120 = v117 & 0xFFFFFFFFFFFFLL;
              }

              if (v120)
              {
                (*v100)(v113, v152);
                (*(v95 + 8))(v35, v96);
                result = (*(v151 + 8))(v94, v150);
                v121 = v154;
                *v154 = v143;
                v121[1] = v117;
                v121[2] = v119;
                v122 = 1;
                goto LABEL_111;
              }
            }

            (*v100)(v113, v152);
          }

          else
          {
LABEL_72:

            v94 = v153;
            v96 = v149;
          }
        }

        (*(v95 + 8))(v35, v96);
        result = (*(v151 + 8))(v94, v150);
        goto LABEL_35;
      }

      (*(v151 + 8))(v94, v150);
      v56 = v26;
      goto LABEL_18;
    }

LABEL_60:
    v93 = sub_230311048();

    v77 = v93 & 1;
    goto LABEL_61;
  }

  v106 = v139;
  if (v50 == 0x656D697465636166 && v45 == 0xEE0070756F72672DLL)
  {

    goto LABEL_80;
  }

  v107 = sub_230311048();

  if ((v107 & 1) == 0)
  {
    result = (*(v151 + 8))(v153, v150);
    goto LABEL_8;
  }

LABEL_80:
  v108 = v153;
  sub_23030E538();
  v109 = v149;
  if ((*(v106 + 48))(v23, 1, v149) == 1)
  {
    (*(v151 + 8))(v108, v150);
    result = sub_230061918(v23, &qword_27DB149F8);
  }

  else
  {
    (*(v106 + 32))(v32, v23, v109);
    result = sub_23030E518();
    if (result)
    {
      v123 = result;
      v124 = *(result + 2);
      if (v124)
      {
        v125 = 0;
        v126 = (v147 + 8);
        while (1)
        {
          if (v125 >= v123[2])
          {
LABEL_113:
            __break(1u);
            return result;
          }

          (*(v147 + 16))(v143, v123 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v125, v152);
          if (sub_23030E4D8() == 0x6F656469567369 && v127 == 0xE700000000000000)
          {
            break;
          }

          v128 = sub_230311048();

          if (v128)
          {
            goto LABEL_104;
          }

          ++v125;
          result = (*v126)(v143, v152);
          if (v124 == v125)
          {
            goto LABEL_97;
          }
        }

LABEL_103:

LABEL_104:

        v129 = v147 + 32;
        v130 = v140;
        v131 = v152;
        (*(v147 + 32))(v140, v143, v152);
        v132 = sub_23030E4E8();
        v134 = v133;
        (*(v129 - 24))(v130, v131);
        if (!v134)
        {
          goto LABEL_108;
        }

        v135 = sub_23012B574(v132, v134);
        v137 = v136;
        (*(v139 + 8))(v32, v149);
        result = (*(v151 + 8))(v153, v150);
        v138 = 1;
        if ((v137 & 1) == 0)
        {
          v138 = v135 != 0;
        }

        goto LABEL_110;
      }

LABEL_97:
    }

LABEL_108:
    (*(v139 + 8))(v32, v149);
    result = (*(v151 + 8))(v153, v150);
  }

  v138 = 1;
LABEL_110:
  v121 = v154;
  v154[1] = 0;
  v121[2] = 0;
  *v121 = v138;
  v122 = -1;
LABEL_111:
  *(v121 + 24) = v122;
  return result;
}

void sub_23012D75C(void *a1)
{
  v2 = v1;
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = [v2 type];
  if (v11 != 3)
  {
    if (v11 == 2)
    {
      v12 = [v2 userActivity];
      if (v12)
      {
        v13 = v12;
        sub_23012F320(v12, a1);
      }
    }

    else if (v11 == 1)
    {
      v14 = [v2 universalLink];
      if (v14)
      {
        v15 = v14;
        sub_23030E938();

        (*(v5 + 32))(v10, v8, v4);
        sub_23012F058(v10, a1);
        (*(v5 + 8))(v10, v4);
      }
    }

    else
    {
      if (qword_27DB13B10 != -1)
      {
        swift_once();
      }

      v16 = sub_23030EF48();
      __swift_project_value_buffer(v16, qword_27DB15900);
      v17 = MEMORY[0x277D84F90];
      sub_23008C5BC(MEMORY[0x277D84F90]);
      sub_23008C5BC(v17);
      sub_230166680("unknown user activity type", 26, 2);
      __break(1u);
    }
  }
}

uint64_t sub_23012D9A0()
{
  type metadata accessor for UniversalLinkAppIconBundleIDResolver();
  swift_allocObject();
  result = sub_23012E314();
  qword_27DB15918 = result;
  return result;
}

uint64_t sub_23012D9E0(id a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  if (!*(v7 + 16) || (v8 = sub_23005EE00(a2, a3), (v9 & 1) == 0))
  {
    v11 = [a1 bundleIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v15 = v14;

      if (v13 == a2 && v15 == a3)
      {
      }

      else
      {
        v17 = sub_230311048();

        if ((v17 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v20 = [a1 localizedName];
      goto LABEL_13;
    }

LABEL_10:
    v18 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v19 = sub_23012E508(a2, a3, 0);
    v20 = [v19 localizedName];

LABEL_13:
    v10 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

    return v10;
  }

  v10 = *(*(v7 + 56) + 16 * v8);

  return v10;
}

void sub_23012DB60(char a1, void *a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    if (qword_27DB13B10 != -1)
    {
      swift_once();
    }

    v5 = sub_23030EF48();
    __swift_project_value_buffer(v5, qword_27DB15900);
    v6 = a3;
    v7 = a2;
    oslog = sub_23030EF38();
    v8 = sub_230310288();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v9 = 138412546;
      *(v9 + 4) = v6;
      *v10 = v6;
      *(v9 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v12 = v6;
        v13 = sub_2303112D8();
        v15 = v14;
      }

      else
      {
        v16 = v6;
        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      v17 = sub_23004E30C(v13, v15, &v19);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_230044000, oslog, v8, "LSApplicationWorkspace cannot open the NSUserActivity. {userActivity: %@, error: %s}", v9, 0x16u);
      sub_230061918(v10, &qword_27DB15000);
      MEMORY[0x231914180](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x231914180](v11, -1, -1);
      MEMORY[0x231914180](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_23012DD88(uint64_t a1)
{
  v2 = v1;
  v41[11] = *MEMORY[0x277D85DE8];
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v41 - v13 + 32;
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15 + 32;
  v17 = sub_23030E8D8();
  v18 = [v1 URLOverrideForURL_];

  if (v18)
  {
    sub_23030E938();

    (*(v5 + 56))(v14, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v14, 1, 1, v4);
  }

  sub_23012F860(v14, v16);
  sub_23012FC68(v16, v11);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_23030E8D8();
    (*(v5 + 8))(v11, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230315CE0;
  *(inited + 32) = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v21;
  *(inited + 48) = 1;
  sub_23008C5BC(inited);
  swift_setDeallocating();
  sub_230061918(inited + 32, &qword_27DB146B0);
  v22 = sub_23030F638();

  v41[0] = 0;
  v23 = [v2 openURL:v19 withOptions:v22 error:v41];

  if (v23)
  {
    v24 = v41[0];
    sub_230061918(v16, &unk_27DB17070);
  }

  else
  {
    v25 = v41[0];
    v26 = sub_23030E808();

    swift_willThrow();
    sub_230061918(v16, &unk_27DB17070);
    if (qword_27DB13B10 != -1)
    {
      swift_once();
    }

    v27 = sub_23030EF48();
    __swift_project_value_buffer(v27, qword_27DB15900);
    (*(v5 + 16))(v7, a1, v4);
    v28 = v26;
    v29 = sub_23030EF38();
    v30 = sub_230310288();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v31 = 136315394;
      v33 = sub_23030E888();
      v35 = v34;
      (*(v5 + 8))(v7, v4);
      v36 = sub_23004E30C(v33, v35, v41);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v37 = sub_2303112D8();
      v39 = sub_23004E30C(v37, v38, v41);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_230044000, v29, v30, "Error launching URL via LSApplicationWorkspace {url: %s, error: %s}", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v32, -1, -1);
      MEMORY[0x231914180](v31, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_23012E314()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v3 = sub_23012E508(0xD000000000000015, 0x8000000230341920, 0);
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v5 = sub_23012E508(0xD000000000000012, 0x8000000230341940, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2303167B0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000230341920;
  if (v3)
  {
    v7 = [v3 localizedName];
    v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = 0x8000000230341940;
  if (v5)
  {
    v11 = [v5 localizedName];
    v12 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(inited + 80) = v12;
  *(inited + 88) = v14;
  v15 = sub_23008D444(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15938);
  swift_arrayDestroy();

  *(v1 + 16) = v15;
  return v1;
}

id sub_23012E508(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23030F8B8();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_23030E808();

    swift_willThrow();
  }

  return v6;
}

uint64_t _s19ReminderKitInternal31REMUserActivityPhoneCallContextV6CallerO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_23004CBA4(0, &qword_280C9B980);
      sub_2300A31EC(v6, v5, 0);
      sub_2300A31EC(v3, v2, 0);
      v10 = sub_230310448();
      sub_2300A31FC(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_11;
    }

LABEL_9:
    sub_2300A31EC(*a2, *(a2 + 8), v7);
    sub_2300A31EC(v3, v2, v4);
    sub_2300A31FC(v3, v2, v4);
    sub_2300A31FC(v6, v5, v7);
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v10 = sub_230311048();
    sub_2300A31EC(v6, v5, 1);
    sub_2300A31EC(v3, v2, 1);
    sub_2300A31FC(v3, v2, 1);
    v11 = v6;
    v12 = v5;
    v13 = 1;
LABEL_11:
    sub_2300A31FC(v11, v12, v13);
    return v10 & 1;
  }

  sub_2300A31EC(v8, v2, 1);
  sub_2300A31EC(v3, v2, 1);
  sub_2300A31FC(v3, v2, 1);
  sub_2300A31FC(v3, v2, 1);
  return 1;
}

BOOL _s19ReminderKitInternal31REMUserActivityPhoneCallContextV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v2;
  v19 = v3;
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = a1[24];
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  v10 = a2[24];
  if (v7 != 255)
  {
    v15 = *(a1 + 1);
    v16 = v5;
    v17 = v7;
    if (v10 != 255)
    {
      v12 = v9;
      v13 = v8;
      v14 = v10 & 1;
      sub_2300A3224(v6, v5, v7);
      sub_2300A3224(v9, v8, v10);
      sub_2300A3224(v6, v5, v7);
      v11 = _s19ReminderKitInternal31REMUserActivityPhoneCallContextV6CallerO2eeoiySbAE_AEtFZ_0(&v15, &v12);
      sub_2300A31FC(v12, v13, v14);
      sub_2300A31FC(v15, v16, v17);
      sub_2300A320C(v6, v5, v7);
      return (v11 & 1) != 0;
    }

    sub_2300A3224(v6, v5, v7);
    sub_2300A3224(v9, v8, 255);
    sub_2300A3224(v6, v5, v7);
    sub_2300A31FC(v6, v5, v7 & 1);
LABEL_10:
    sub_2300A320C(v6, v5, v7);
    sub_2300A320C(v9, v8, v10);
    return 0;
  }

  sub_2300A3224(*(a1 + 1), v5, 255);
  if (v10 != 255)
  {
    sub_2300A3224(v9, v8, v10);
    goto LABEL_10;
  }

  sub_2300A3224(v9, v8, 255);
  sub_2300A320C(v6, v5, 255);
  return 1;
}

uint64_t sub_23012E938(uint64_t a1, void *a2)
{
  v3 = sub_23030E4F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15940);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v48 - v11;
  v13 = [a2 bundleIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v17 = v16;

    v18 = sub_23030E978();
    if (!v19)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v18 = sub_23030E978();
    if (!v19)
    {
      goto LABEL_68;
    }
  }

  v20 = v18;
  v21 = v19;
  if (v18 == 7103860 && v19 == 0xE300000000000000 || (sub_230311048() & 1) != 0)
  {

    v17 = 0x8000000230341920;
    v15 = 0xD000000000000015;
    goto LABEL_69;
  }

  v49 = v4;
  if (v20 == 0x656D697465636166 && v21 == 0xE800000000000000 || ((v22 = sub_230311048(), v20 == 0x656D697465636166) ? (v23 = v21 == 0xEE006F696475612DLL) : (v23 = 0), !v23 ? (v24 = 0) : (v24 = 1), (v22 & 1) != 0 || (v24 & 1) != 0 || ((v25 = sub_230311048(), v20 == 0x656D697465636166) ? (v26 = v21 == 0xEE0070756F72672DLL) : (v26 = 0), !v26 ? (v27 = 0) : (v27 = 1), (v25 & 1) != 0 || (v27 & 1) != 0 || (sub_230311048() & 1) != 0)))
  {

    v17 = 0x8000000230341940;
    v15 = 0xD000000000000012;
    goto LABEL_69;
  }

  if (v20 == 1886680168 && v21 == 0xE400000000000000 || (sub_230311048() & 1) != 0 || v20 == 0x7370747468 && v21 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    if (!v17)
    {
      v15 = 0xD000000000000016;
      v17 = 0x8000000230341980;
    }

    goto LABEL_69;
  }

  if (v20 == 0x2D74696B6C6C6163 && v21 == 0xED00006F69647561 || ((v32 = sub_230311048(), v20 == 0x2D74696B6C6C6163) ? (v33 = v21 == 0xED00006F65646976) : (v33 = 0), !v33 ? (v34 = 0) : (v34 = 1), (v32 & 1) != 0 || (v34 & 1) != 0))
  {
  }

  else
  {
    v35 = sub_230311048();

    if ((v35 & 1) == 0)
    {
LABEL_68:
      if (v17)
      {
LABEL_69:
        v46 = objc_allocWithZone(MEMORY[0x277CC1E70]);

        v47 = sub_23012E508(v15, v17, 0);
        if (v47)
        {

          return v15;
        }

        return 0;
      }

      return 0;
    }
  }

  sub_23030E538();
  v28 = sub_23030E578();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v9, 1, v28) == 1)
  {
    v30 = &qword_27DB149F8;
    v31 = v9;
    goto LABEL_66;
  }

  v36 = sub_23030E518();
  result = (*(v29 + 8))(v9, v28);
  if (!v36)
  {
    return 0;
  }

  v38 = *(v36 + 16);
  if (!v38)
  {
LABEL_61:

    v43 = 1;
    v44 = v49;
LABEL_64:
    (*(v44 + 56))(v12, v43, 1, v3);
    if ((*(v44 + 48))(v12, 1, v3) != 1)
    {
      v15 = sub_23030E4E8();
      v17 = v45;
      (*(v44 + 8))(v12, v3);
      goto LABEL_68;
    }

    v30 = &qword_27DB15940;
    v31 = v12;
LABEL_66:
    sub_230061918(v31, v30);
    return 0;
  }

  v39 = 0;
  v48[1] = v49 + 16;
  v40 = (v49 + 8);
  while (v39 < *(v36 + 16))
  {
    (*(v49 + 16))(v6, v36 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39, v3);
    if (sub_23030E4D8() == 0xD000000000000013 && 0x8000000230341960 == v41)
    {

LABEL_63:

      v44 = v49;
      (*(v49 + 32))(v12, v6, v3);
      v43 = 0;
      goto LABEL_64;
    }

    v42 = sub_230311048();

    if (v42)
    {
      goto LABEL_63;
    }

    ++v39;
    result = (*v40)(v6, v3);
    if (v38 == v39)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23012F058(uint64_t a1, void *a2)
{
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DB13B18 != -1)
  {
    swift_once();
  }

  result = sub_23012E938(a1, a2);
  if (!v9)
  {
    v22[0] = 0;
    v10 = result;
    if (qword_27DB13B10 != -1)
    {
      swift_once();
    }

    v11 = sub_23030EF48();
    __swift_project_value_buffer(v11, qword_27DB15900);
    (*(v5 + 16))(v7, a1, v4);
    v12 = sub_23030EF38();
    v13 = sub_230310288();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = sub_23030E978();
      if (v17)
      {
        v22[1] = v16;
        v22[2] = v17;
        v18 = sub_23030F948();
        v20 = v19;
        (*(v5 + 8))(v7, v4);
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = sub_23004E30C(v18, v20, &v23);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_230044000, v12, v13, "Cannot resolve bundle ID for universal link {scheme: %s}", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x231914180](v15, -1, -1);
      MEMORY[0x231914180](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return v10;
  }

  return result;
}

uint64_t sub_23012F320(void *a1, id a2)
{
  v3 = [a2 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  }

  else
  {
    if (qword_27DB13B10 != -1)
    {
      swift_once();
    }

    v6 = sub_23030EF48();
    __swift_project_value_buffer(v6, qword_27DB15900);
    v7 = a1;
    v8 = sub_23030EF38();
    v9 = sub_230310288();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_230044000, v8, v9, "LSApplicationRecord bundle ID is nil for user activity %@", v10, 0xCu);
      sub_230061918(v11, &qword_27DB15000);
      MEMORY[0x231914180](v11, -1, -1);
      MEMORY[0x231914180](v10, -1, -1);
    }

    return 0;
  }

  return v5;
}

id sub_23012F4A4(void *a1, double a2)
{
  v4 = *MEMORY[0x277D1B240];
  v5 = [objc_opt_self() imageDescriptorNamed_];

  [v5 setScale_];
  [v5 setDrawBorder_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14880);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23031C0D0;
  *(v6 + 32) = v5;
  sub_23004CBA4(0, &qword_27DB15928);
  v7 = v5;
  v8 = sub_23030FCC8();

  [a1 prepareImagesForImageDescriptors_];

  v9 = [a1 CGImageForDescriptor_];
  return v9;
}

id sub_23012F5F4(uint64_t a1, unint64_t a2, char *a3, double a4)
{
  v7 = *a3;
  v8 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v9 = sub_23030F8B8();
  v10 = [v8 initWithBundleIdentifier_];

  if (qword_27DB13B10 != -1)
  {
    swift_once();
  }

  v11 = sub_23030EF48();
  __swift_project_value_buffer(v11, qword_27DB15900);
  v12 = v10;

  v13 = sub_23030EF38();
  v14 = sub_2303102A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 138413058;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v18 = v12;
    *(v15 + 14) = sub_23004E30C(a1, a2, &v24);
    *(v15 + 22) = 2080;
    v19 = sub_23030F948();
    v21 = sub_23004E30C(v19, v20, &v24);

    *(v15 + 24) = v21;
    *(v15 + 32) = 2048;
    *(v15 + 34) = a4;
    _os_log_impl(&dword_230044000, v13, v14, "resolved icon %@ for %s (format: %s, scale: %f)", v15, 0x2Au);
    sub_230061918(v16, &qword_27DB15000);
    MEMORY[0x231914180](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x231914180](v17, -1, -1);
    MEMORY[0x231914180](v15, -1, -1);
  }

  v25 = v7;
  v22 = sub_23012F4A4(v12, a4);

  return v22;
}

uint64_t sub_23012F860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23012F8D4()
{
  result = qword_27DB15920;
  if (!qword_27DB15920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15920);
  }

  return result;
}

void destroy for REMUserActivityPhoneCallContext(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 != 255)
  {
    sub_2300A31FC(*(a1 + 8), *(a1 + 16), v1 & 1);
  }
}

__n128 initializeWithCopy for REMUserActivityPhoneCallContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 24);
  if (v2 == 255)
  {
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = v2 & 1;
    sub_2300A31EC(v3, v4, v2 & 1);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t assignWithCopy for REMUserActivityPhoneCallContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  if (*(a1 + 24) == 255)
  {
    if (v3 == 255)
    {
      v15 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v15;
    }

    else
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
      v12 = v3 & 1;
      sub_2300A31EC(v10, v11, v3 & 1);
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 24) = v12;
    }
  }

  else if (v3 == 255)
  {
    sub_23012FAAC(a1 + 8);
    v14 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v14;
  }

  else
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = v3 & 1;
    sub_2300A31EC(v4, v5, v3 & 1);
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    sub_2300A31FC(v7, v8, v9);
  }

  return a1;
}

__n128 assignWithTake for REMUserActivityPhoneCallContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a1 + 24);
  if (v2 == 255)
  {
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v3 = *(a2 + 24);
    if (v3 == 255)
    {
      sub_23012FAAC(a1 + 8);
      result = *(a2 + 8);
      *(a1 + 8) = result;
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v3 & 1;
      sub_2300A31FC(v4, v5, v2 & 1);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMUserActivityPhoneCallContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REMUserActivityPhoneCallContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23012FC68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UnfairLock.__allocating_init(options:)(_DWORD *a1)
{
  v2 = swift_allocObject();
  LODWORD(a1) = *a1;
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  *(v2 + 24) = (a1 & 1) << 16;
  return v2;
}

uint64_t MutexLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  pthread_mutex_init(v1, 0);
  return v0;
}

uint64_t MutexLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  pthread_mutex_init(v1, 0);
  return v0;
}

uint64_t MutexLock.__deallocating_deinit()
{
  MEMORY[0x231914180](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

unint64_t sub_23012FE90()
{
  result = qword_27DB15948;
  if (!qword_27DB15948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15948);
  }

  return result;
}

unint64_t sub_23012FEE8()
{
  result = qword_27DB15950;
  if (!qword_27DB15950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15950);
  }

  return result;
}

uint64_t sub_23012FFFC()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15958);
  v1 = __swift_project_value_buffer(v0, qword_27DB15958);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void NSFileManager.rem_createDirectoryIfNecessary(at:)()
{
  v1 = v0;
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  sub_23030E968();
  v2 = sub_23030F8B8();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:&v12];

  if (v3)
  {
    if (v12)
    {
      return;
    }

    v4 = objc_opt_self();
    sub_230310848();

    v5 = sub_23030E968();
    MEMORY[0x231911790](v5);

    MEMORY[0x231911790](0xD000000000000026, 0x8000000230341A10);
    v6 = sub_23030F8B8();

    v7 = [v4 internalErrorWithDebugDescription_];
  }

  else
  {
    v8 = sub_23030E8D8();
    v11 = 0;
    v9 = [v1 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v11];

    if (v9)
    {
      v10 = v11;
      return;
    }

    v6 = v11;
    sub_23030E808();
  }

  swift_willThrow();
}

uint64_t sub_2301302A8(void *a1)
{
  v2 = sub_23030E9B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030E938();
  v6 = a1;
  NSFileManager.rem_createDirectoryIfNecessary(at:)();
  (*(v3 + 8))(v5, v2);

  return 1;
}

id NSFileManager.rem_fileExists(at:)()
{
  sub_23030E968();
  v1 = sub_23030F8B8();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:0];

  return v2;
}

id sub_230130460(void *a1)
{
  v2 = sub_23030E9B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030E938();
  v6 = a1;
  sub_23030E968();
  v7 = sub_23030F8B8();

  v8 = [v6 fileExistsAtPath:v7 isDirectory:0];

  (*(v3 + 8))(v5, v2);
  return v8;
}

id NSFileManager.rem_fileExists(at:isDirectory:)(uint64_t a1, uint64_t a2)
{
  sub_23030E968();
  v4 = sub_23030F8B8();

  v5 = [v2 fileExistsAtPath:v4 isDirectory:a2];

  return v5;
}

id sub_2301305F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23030E9B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030E938();
  v10 = a1;
  sub_23030E968();
  v11 = sub_23030F8B8();

  v12 = [v10 fileExistsAtPath:v11 isDirectory:a4];

  (*(v7 + 8))(v9, v6);
  return v12;
}

BOOL NSFileManager.rem_isEmptyDirectory(at:skipsHiddenFiles:)(uint64_t a1, char a2)
{
  v3 = v2;
  v28[1] = *MEMORY[0x277D85DE8];
  v27 = 0;
  v5 = sub_23030E8D8();
  v6 = [v2 rem:v5 fileExistsAtURL:&v27 isDirectory:?];

  if (v6 && v27 == 1)
  {
    v7 = sub_23030E8D8();
    if (a2)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    v28[0] = 0;
    v9 = [v3 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:v8 error:v28];

    v10 = v28[0];
    if (v9)
    {
      sub_23030E9B8();
      v11 = sub_23030FCD8();
      v12 = v10;

      v13 = *(v11 + 16);

      return v13 == 0;
    }

    v15 = v28[0];
    v16 = sub_23030E808();

    swift_willThrow();
    if (qword_27DB13B20 != -1)
    {
      swift_once();
    }

    v17 = sub_23030EF48();
    __swift_project_value_buffer(v17, qword_27DB15958);
    v18 = v16;
    v19 = sub_23030EF38();
    v20 = sub_230310288();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.rem_errorDescription.getter(v26);
      v25 = sub_23004E30C(v23, v24, v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_230044000, v19, v20, "rem_isEmptyDirectory: contentsOfDirectory throws error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x231914180](v22, -1, -1);
      MEMORY[0x231914180](v21, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

BOOL sub_2301309C4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_23030E9B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030E938();
  v10 = a1;
  v11 = NSFileManager.rem_isEmptyDirectory(at:skipsHiddenFiles:)(v9, a4);

  (*(v7 + 8))(v9, v6);
  return v11;
}

void RDVectorDistanceCalculator.distance(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!*v2)
  {
    swift_beginAccess();
    v5 = *(a1 + 24);
    if (v5 < 0)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

    if (!v5)
    {
      sqrt(0.0);
      return;
    }

    swift_beginAccess();
    swift_beginAccess();
    v6 = *(a1 + 16);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = *(a2 + 16);
      v9 = *(v8 + 16);
      if (!v9)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v10 = v6 + 32;
      v11 = v8 + 32;
      v12 = (*(v6 + 32) - *(v8 + 32)) * (*(v6 + 32) - *(v8 + 32));
      if (v5 == 1)
      {
LABEL_34:
        sqrt(v12);
        return;
      }

      v13 = v9 - 1;
      if (v9 - 1 >= v7 - 1)
      {
        v13 = v7 - 1;
      }

      if (v13 >= v5 - 2)
      {
        v13 = v5 - 2;
      }

      v14 = v13 + 1;
      if (v14 > 4)
      {
        v31 = v14 & 3;
        if ((v14 & 3) == 0)
        {
          v31 = 4;
        }

        v32 = v14 - v31;
        v15 = v32 + 1;
        v33 = (v6 + 56);
        v34 = (v8 + 56);
        do
        {
          v35 = vsubq_f64(v33[-1], v34[-1]);
          v36 = vsubq_f64(*v33, *v34);
          v37 = vmulq_f64(v35, v35);
          v38 = vmulq_f64(v36, v36);
          v12 = v12 + v37.f64[0] + v37.f64[1] + v38.f64[0] + v38.f64[1];
          v33 += 2;
          v34 += 2;
          v32 -= 4;
        }

        while (v32);
      }

      else
      {
        v15 = 1;
      }

      while (v7 != v15)
      {
        if (v15 >= v9)
        {
          goto LABEL_49;
        }

        v12 = v12 + (*(v10 + 8 * v15) - *(v11 + 8 * v15)) * (*(v10 + 8 * v15) - *(v11 + 8 * v15));
        if (v5 == ++v15)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  if (*v2 == 1)
  {
    sub_230130E64(a1, a2);
    return;
  }

  swift_beginAccess();
  v16 = *(a1 + 24);
  if (v16 < 0)
  {
    goto LABEL_51;
  }

  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  if (v16)
  {
    swift_beginAccess();
    swift_beginAccess();
    v20 = *(a1 + 16);
    v21 = *(v20 + 16);
    if (!v21)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v22 = *(a2 + 16);
    v23 = *(v22 + 16);
    if (!v23)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v24 = v20 + 32;
    v25 = *(v20 + 32);
    v26 = v22 + 32;
    v27 = *(v22 + 32);
    v19 = v25 * v25;
    v18 = v27 * v27;
    v17 = v25 * v27 + 0.0;
    if (v16 != 1)
    {
      v28 = v23 - 1;
      if (v23 - 1 >= v21 - 1)
      {
        v28 = v21 - 1;
      }

      if (v28 >= v16 - 2)
      {
        v28 = v16 - 2;
      }

      v29 = v28 + 1;
      if (v29 > 4)
      {
        v39 = v29 & 3;
        if ((v29 & 3) == 0)
        {
          v39 = 4;
        }

        v40 = v29 - v39;
        v30 = v40 + 1;
        v41 = (v20 + 56);
        v42 = (v22 + 56);
        do
        {
          v43 = v41[-1];
          v44 = v42[-1];
          v45 = vmulq_f64(v43, v43);
          v46 = vmulq_f64(*v41, *v41);
          v47 = vmulq_f64(v44, v44);
          v48 = vmulq_f64(*v42, *v42);
          v49 = vmulq_f64(v43, v44);
          v50 = vmulq_f64(*v41, *v42);
          v17 = v17 + v49.f64[0] + v49.f64[1] + v50.f64[0] + v50.f64[1];
          v18 = v18 + v47.f64[0] + v47.f64[1] + v48.f64[0] + v48.f64[1];
          v19 = v19 + v45.f64[0] + v45.f64[1] + v46.f64[0] + v46.f64[1];
          v41 += 2;
          v42 += 2;
          v40 -= 4;
        }

        while (v40);
      }

      else
      {
        v30 = 1;
      }

      while (v21 != v30)
      {
        if (v30 >= v23)
        {
          goto LABEL_48;
        }

        v51 = *(v24 + 8 * v30);
        v52 = *(v26 + 8 * v30);
        v19 = v19 + v51 * v51;
        v18 = v18 + v52 * v52;
        v17 = v17 + v51 * v52;
        if (v16 == ++v30)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_47;
    }
  }

LABEL_42:
  v53 = sqrt(v19);
  v54 = v53 * sqrt(v18);
  if (v54 == 0.0)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v17 / v54;
  }

  acos(v55);
}

void sub_230130E64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (v4)
    {
      swift_beginAccess();
      swift_beginAccess();
      v5 = MEMORY[0x277D84F90];
      v6 = 4;
      while (1)
      {
        v7 = *(a1 + 16);
        if ((v6 - 4) >= *(v7 + 16))
        {
          break;
        }

        v8 = *(a2 + 16);
        if ((v6 - 4) >= *(v8 + 16))
        {
          goto LABEL_38;
        }

        v9 = *(v7 + 8 * v6);
        v10 = *(v8 + 8 * v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_23007EB60(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_23007EB60((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        *&v5[8 * v12 + 32] = v9 - v10;
        ++v6;
        if (!--v4)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v5 = MEMORY[0x277D84F90];
LABEL_13:
    type metadata accessor for RDVector();
    inited = swift_initStackObject();
    *(inited + 16) = v5;
    v14 = *(v5 + 2);
    *(inited + 24) = v14;
    v15 = 32;
    do
    {
      if (!v14)
      {

        return;
      }

      v16 = *&v5[v15];
      v15 += 8;
      --v14;
    }

    while ((v16 & 0x7FFFFFFFFFFFFFFFLL) == 0);

    v17 = *(a1 + 24);
    if (v17 < 0)
    {
      goto LABEL_42;
    }

    if (v17)
    {
      swift_beginAccess();
      swift_beginAccess();
      v18 = *(a1 + 16);
      v19 = *(v18 + 16);
      if (!v19)
      {
        goto LABEL_39;
      }

      v20 = *(a2 + 16);
      v21 = *(v20 + 16);
      if (!v21)
      {
        goto LABEL_40;
      }

      v22 = v18 + 32;
      v23 = *(v18 + 32);
      v24 = v20 + 32;
      v25 = *(v20 + 32);
      v26 = v23 * v23;
      v27 = v25 * v25;
      v28 = v23 * v25 + 0.0;
      if (v17 != 1)
      {
        v29 = v21 - 1;
        if (v21 - 1 >= v19 - 1)
        {
          v29 = v19 - 1;
        }

        if (v29 >= v17 - 2)
        {
          v29 = v17 - 2;
        }

        v30 = v29 + 1;
        if (v30 > 4)
        {
          v32 = v30 & 3;
          if ((v30 & 3) == 0)
          {
            v32 = 4;
          }

          v33 = v30 - v32;
          v31 = v33 + 1;
          v34 = (v18 + 56);
          v35 = (v20 + 56);
          do
          {
            v36 = v34[-1];
            v37 = v35[-1];
            v38 = vmulq_f64(v36, v36);
            v39 = vmulq_f64(*v34, *v34);
            v40 = vmulq_f64(v37, v37);
            v41 = vmulq_f64(*v35, *v35);
            v42 = vmulq_f64(v36, v37);
            v43 = vmulq_f64(*v34, *v35);
            v28 = v28 + v42.f64[0] + v42.f64[1] + v43.f64[0] + v43.f64[1];
            v27 = v27 + v40.f64[0] + v40.f64[1] + v41.f64[0] + v41.f64[1];
            v26 = v26 + v38.f64[0] + v38.f64[1] + v39.f64[0] + v39.f64[1];
            v34 += 2;
            v35 += 2;
            v33 -= 4;
          }

          while (v33);
        }

        else
        {
          v31 = 1;
        }

        while (v19 != v31)
        {
          if (v31 >= v21)
          {
            goto LABEL_40;
          }

          v44 = *(v22 + 8 * v31);
          v45 = *(v24 + 8 * v31);
          v26 = v26 + v44 * v44;
          v27 = v27 + v45 * v45;
          v28 = v28 + v44 * v45;
          if (v17 == ++v31)
          {
            goto LABEL_36;
          }
        }

LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      v28 = 0.0;
      v27 = 0.0;
      v26 = 0.0;
    }

LABEL_36:
    v46 = sqrt(v26);
    vabdd_f64(1.0, v28 / (v46 * sqrt(v27)));
    return;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t RDVectorDistanceCalculator.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

unint64_t sub_230131264()
{
  result = qword_27DB15970;
  if (!qword_27DB15970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15970);
  }

  return result;
}

__C::REMSortingStyle_optional __swiftcall REMSortingStyle.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = *MEMORY[0x277D44BD8];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == stringValue._countAndFlagsBits && v4 == object)
  {
    goto LABEL_18;
  }

  v6 = sub_230311048();

  if (v6)
  {
    goto LABEL_19;
  }

  v3 = *MEMORY[0x277D44BF0];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v7 == object)
  {
    goto LABEL_18;
  }

  v9 = sub_230311048();

  if (v9)
  {
LABEL_19:

    goto LABEL_20;
  }

  v3 = *MEMORY[0x277D44BE8];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v10 == object)
  {
LABEL_18:

    goto LABEL_19;
  }

  v12 = sub_230311048();

  if (v12)
  {
    goto LABEL_19;
  }

  v3 = *MEMORY[0x277D44BE0];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v13 == object)
  {
    goto LABEL_18;
  }

  v17 = sub_230311048();

  if (v17)
  {
    goto LABEL_19;
  }

  v3 = *MEMORY[0x277D44C00];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v18 == object)
  {
    goto LABEL_18;
  }

  v19 = sub_230311048();

  if (v19)
  {
    goto LABEL_19;
  }

  v3 = *MEMORY[0x277D44BF8];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v20 == object)
  {
    goto LABEL_18;
  }

  v21 = sub_230311048();

  if (v21)
  {
    goto LABEL_19;
  }

  v3 = *MEMORY[0x277D44BD0];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v22 == object)
  {
    goto LABEL_18;
  }

  v23 = sub_230311048();

  if (v23)
  {
    goto LABEL_19;
  }

  v3 = *MEMORY[0x277D44BC8];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v24 == object)
  {
    goto LABEL_18;
  }

  v25 = sub_230311048();

  if (v25)
  {
    goto LABEL_19;
  }

  v3 = *MEMORY[0x277D44C08];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v26 == object)
  {
    goto LABEL_18;
  }

  v27 = sub_230311048();

  if (v27)
  {
    goto LABEL_19;
  }

  v3 = *MEMORY[0x277D44C10];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == countAndFlagsBits && v28 == object)
  {
    goto LABEL_18;
  }

  v29 = sub_230311048();

  if ((v29 & 1) == 0)
  {
    v3 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v14 = v3;
LABEL_21:
  v16 = v3;
  result.value._rawValue = v16;
  result.is_nil = v15;
  return result;
}

id REMSortingStyle.init(sortingStyle:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    v5 = MEMORY[0x277D44BE8];
    v6 = (v1 & 1) == 0;
    v7 = MEMORY[0x277D44C00];
    if (!v6)
    {
      v5 = MEMORY[0x277D44BE0];
      v7 = MEMORY[0x277D44BF8];
    }

    if (!v2)
    {
      v7 = v5;
    }
  }

  else
  {
    if (v2 == 2)
    {
      v3 = MEMORY[0x277D44BD0];
      v4 = MEMORY[0x277D44BC8];
LABEL_11:
      if (v1)
      {
        v7 = v4;
      }

      else
      {
        v7 = v3;
      }

      return *v7;
    }

    if (v2 == 3)
    {
      v3 = MEMORY[0x277D44C08];
      v4 = MEMORY[0x277D44C10];
      goto LABEL_11;
    }

    if (v1 == 128)
    {
      v7 = MEMORY[0x277D44BD8];
    }

    else
    {
      v7 = MEMORY[0x277D44BF0];
    }
  }

  return *v7;
}

uint64_t REMSortingStyle.dataViewSortingStyle.getter@<X0>(char *a1@<X8>)
{
  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v4 = v3;
  if (v2 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v4 == v5)
  {
    v9 = 0x80;
LABEL_8:

    goto LABEL_9;
  }

  v7 = sub_230311048();

  if (v7)
  {
    v9 = 0x80;
    goto LABEL_9;
  }

  v10 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v12 = v11;
  if (v10 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v12 == v13)
  {
    v9 = -127;
    goto LABEL_8;
  }

  v15 = sub_230311048();

  if (v15)
  {
    v9 = -127;
    goto LABEL_9;
  }

  v16 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v18 = v17;
  if (v16 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v18 == v19)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v20 = sub_230311048();

  v9 = 0;
  if (v20)
  {
    goto LABEL_9;
  }

  v21 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v23 = v22;
  if (v21 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v23 == v24)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v25 = sub_230311048();

  if (v25)
  {
    v9 = 1;
    goto LABEL_9;
  }

  v26 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v28 = v27;
  if (v26 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v28 == v29)
  {
    v9 = 32;
    goto LABEL_8;
  }

  v30 = sub_230311048();

  if (v30)
  {
    v9 = 32;
    goto LABEL_9;
  }

  v31 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v33 = v32;
  if (v31 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v33 == v34)
  {
    v9 = 33;
    goto LABEL_8;
  }

  v35 = sub_230311048();

  if (v35)
  {
    v9 = 33;
    goto LABEL_9;
  }

  v36 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v38 = v37;
  if (v36 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v38 == v39)
  {
    v9 = 64;
    goto LABEL_8;
  }

  v40 = sub_230311048();

  if (v40)
  {
    v9 = 64;
    goto LABEL_9;
  }

  v41 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v43 = v42;
  if (v41 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v43 == v44)
  {
    v9 = 65;
    goto LABEL_8;
  }

  v45 = sub_230311048();

  if (v45)
  {
    v9 = 65;
    goto LABEL_9;
  }

  v46 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v48 = v47;
  if (v46 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v48 == v49)
  {
    v9 = 96;
    goto LABEL_8;
  }

  v50 = sub_230311048();

  if (v50)
  {
    v9 = 96;
    goto LABEL_9;
  }

  v51 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v53 = v52;
  v9 = 97;
  if (v51 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v53 == v54)
  {
    goto LABEL_8;
  }

  v55 = sub_230311048();

  if (v55)
  {
    v9 = 97;
  }

  else
  {
    v9 = 0x80;
  }

LABEL_9:
  *a1 = v9;
  return result;
}

uint64_t Locale.languageCodeIdentifier.getter()
{
  v0 = sub_23030ED18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_23030ED28();
  sub_23030ECE8();
  (*(v1 + 8))(v3, v0);
  v7 = sub_23030EC18();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_230061918(v6, &unk_27DB18F90);
    return 0;
  }

  else
  {
    v10 = sub_23030EC08();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

uint64_t sub_230131D60()
{
  v0 = sub_23030ED38();
  __swift_allocate_value_buffer(v0, qword_27DB15978);
  __swift_project_value_buffer(v0, qword_27DB15978);
  return sub_23030EBF8();
}

uint64_t static Locale.rem_unitTestDefaultLocale.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DB13B28 != -1)
  {
    swift_once();
  }

  v2 = sub_23030ED38();
  v3 = __swift_project_value_buffer(v2, qword_27DB15978);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

__C::NLLanguage __swiftcall Locale.Components.rem_language()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15990);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_23030ECC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v28 = v0;
  sub_23030EBC8();
  sub_23030EC98();
  v14 = *(v5 + 8);
  v14(v10, v4);
  v15 = sub_23030EC18();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_230061918(v13, &unk_27DB18F90);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_23030EC08();
    v18 = v19;
    (*(v16 + 8))(v13, v15);
  }

  v31 = v17;
  v32 = v18;
  sub_23030EBC8();
  sub_23030ECB8();
  v14(v8, v4);
  v20 = sub_23030EC78();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v3, 1, v20) == 1)
  {
    sub_230061918(v3, &qword_27DB15990);
  }

  else
  {
    v22 = sub_23030EC08();
    v24 = v23;
    (*(v21 + 8))(v3, v20);
    v29 = 45;
    v30 = 0xE100000000000000;
    MEMORY[0x231911790](v22, v24);

    MEMORY[0x231911790](v29, v30);
  }

  v25 = sub_23030F8B8();

  return v25;
}

Swift::String __swiftcall Locale.Components.rem_languageAndScriptWithRegion()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15998);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v39 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15990);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - v4;
  v6 = sub_23030ECC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F90);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - v17;
  v40 = v0;
  sub_23030EBC8();
  sub_23030EC98();
  v19 = *(v7 + 8);
  v42 = v6;
  v19(v15, v6);
  v20 = sub_23030EC18();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_230061918(v18, &unk_27DB18F90);
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v22 = sub_23030EC08();
    v23 = v24;
    (*(v21 + 8))(v18, v20);
  }

  v45 = v22;
  v46 = v23;
  sub_23030EBC8();
  sub_23030ECB8();
  v19(v13, v42);
  v25 = sub_23030EC78();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v5, 1, v25) == 1)
  {
    sub_230061918(v5, &qword_27DB15990);
  }

  else
  {
    v27 = sub_23030EC08();
    v29 = v28;
    (*(v26 + 8))(v5, v25);
    v43 = 45;
    v44 = 0xE100000000000000;
    MEMORY[0x231911790](v27, v29);

    MEMORY[0x231911790](v43, v44);
  }

  sub_23030EBC8();
  v30 = v41;
  sub_23030ECA8();
  v19(v10, v42);
  v31 = sub_23030EC58();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_230061918(v30, &qword_27DB15998);
  }

  else
  {
    v33 = sub_23030EC08();
    v35 = v34;
    (*(v32 + 8))(v30, v31);
    v43 = 95;
    v44 = 0xE100000000000000;
    MEMORY[0x231911790](v33, v35);

    MEMORY[0x231911790](v43, v44);
  }

  v36 = v45;
  v37 = v46;
  result._object = v37;
  result._countAndFlagsBits = v36;
  return result;
}

uint64_t sub_2301326C8()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB159A0);
  v1 = __swift_project_value_buffer(v0, qword_27DB159A0);
  if (qword_280C9B438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMSmartListType.hasPredefinedObjectID.getter()
{
  v0 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v2 = v1;
  if (v0 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = sub_230311048();

  if ((v5 & 1) == 0)
  {
    v7 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v9 = v8;
    if (v7 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v9 != v10)
    {
      v12 = sub_230311048();

      if (v12)
      {
        return 1;
      }

      v13 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v15 = v14;
      if (v13 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v15 != v16)
      {
        v18 = sub_230311048();

        if (v18)
        {
          return 1;
        }

        v19 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v21 = v20;
        if (v19 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v21 != v22)
        {
          v23 = sub_230311048();

          if (v23)
          {
            return 1;
          }

          v24 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v26 = v25;
          if (v24 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v26 != v27)
          {
            v28 = sub_230311048();

            if (v28)
            {
              return 1;
            }

            v29 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
            v31 = v30;
            if (v29 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v31 != v32)
            {
              v33 = sub_230311048();

              if (v33)
              {
                return 1;
              }

              v34 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
              v36 = v35;
              if (v34 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v36 != v37)
              {
                v38 = sub_230311048();

                if (v38)
                {
                  return 1;
                }

                v39 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                v41 = v40;
                if (v39 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v41 != v42)
                {
                  v43 = sub_230311048();

                  if (v43)
                  {
                    return 1;
                  }

                  v44 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                  v46 = v45;
                  if (v44 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v46 != v47)
                  {
                    sub_230311048();
                  }

                  v6 = 0;
LABEL_15:

                  return v6;
                }
              }
            }
          }
        }
      }
    }

LABEL_14:
    v6 = 1;
    goto LABEL_15;
  }

  return 1;
}

uint64_t REMSmartListType.hasPredefinedManualOrderingObjectID.getter()
{
  v0 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v2 = v1;
  if (v0 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = sub_230311048();

  if ((v5 & 1) == 0)
  {
    v7 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v9 = v8;
    if (v7 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v9 != v10)
    {
      v12 = sub_230311048();

      if (v12)
      {
        return 1;
      }

      v13 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v15 = v14;
      if (v13 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v15 != v16)
      {
        v18 = sub_230311048();

        if (v18)
        {
          return 1;
        }

        v19 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v21 = v20;
        if (v19 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v21 != v22)
        {
          v23 = sub_230311048();

          if (v23)
          {
            return 1;
          }

          v24 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v26 = v25;
          if (v24 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v26 != v27)
          {
            v28 = sub_230311048();

            if (v28)
            {
              return 1;
            }

            v29 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
            v31 = v30;
            if (v29 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v31 != v32)
            {
              v33 = sub_230311048();

              if (v33)
              {
                return 1;
              }

              v34 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
              v36 = v35;
              if (v34 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v36 != v37)
              {
                v38 = sub_230311048();

                if (v38)
                {
                  return 1;
                }

                v39 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                v41 = v40;
                if (v39 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v41 != v42)
                {
                  v43 = sub_230311048();

                  v6 = 0;
                  if (v43)
                  {
                    return v6;
                  }

                  v44 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                  v46 = v45;
                  if (v44 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v46 != v47)
                  {
                    sub_230311048();
                  }
                }

                v6 = 0;
LABEL_15:

                return v6;
              }
            }
          }
        }
      }
    }

LABEL_14:
    v6 = 1;
    goto LABEL_15;
  }

  return 1;
}

uint64_t REMSmartListType.supportsUserDefinedVisibility.getter(void *a1)
{
  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v4 = v3;
  if (v2 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = sub_230311048();

  if (v7)
  {
    return 1;
  }

  v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v10 = v9;
  if (v8 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v10 == v11)
  {
LABEL_13:

    return 1;
  }

  v13 = sub_230311048();

  if (v13)
  {
    return 1;
  }

  v14 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v16 = v15;
  if (v14 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v16 == v17)
  {
    goto LABEL_13;
  }

  v19 = sub_230311048();

  if (v19)
  {
    return 1;
  }

  v20 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v22 = v21;
  if (v20 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v22 == v23)
  {
    goto LABEL_13;
  }

  v24 = sub_230311048();

  if (v24)
  {
    return 1;
  }

  v25 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v27 = v26;
  if (v25 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v27 == v28)
  {
    goto LABEL_13;
  }

  v29 = sub_230311048();

  if (v29)
  {
    return 1;
  }

  v30 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v32 = v31;
  if (v30 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v32 == v33)
  {
    goto LABEL_13;
  }

  v34 = sub_230311048();

  if (v34)
  {
    return 1;
  }

  v35 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v37 = v36;
  if (v35 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v37 != v38)
  {
    v39 = sub_230311048();

    if (v39)
    {
      return 0;
    }

    v40 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v42 = v41;
    if (v40 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v42 != v43)
    {
      v44 = sub_230311048();

      if (v44)
      {
        return 0;
      }

      v45 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v47 = v46;
      if (v45 != _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() || v47 != v48)
      {
        v49 = sub_230311048();

        if ((v49 & 1) == 0)
        {
          if (qword_27DB13B30 != -1)
          {
            swift_once();
          }

          v50 = sub_23030EF48();
          __swift_project_value_buffer(v50, qword_27DB159A0);
          v51 = a1;
          v52 = sub_23030EF38();
          v53 = sub_230310298();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v59 = v55;
            *v54 = 136315138;
            v56 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
            v58 = sub_23004E30C(v56, v57, &v59);

            *(v54 + 4) = v58;
            _os_log_impl(&dword_230044000, v52, v53, "REMSmartListType.supportsUserDefinedVisibility: Unhandled smartListType {smartListType: %s}", v54, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v55);
            MEMORY[0x231914180](v55, -1, -1);
            MEMORY[0x231914180](v54, -1, -1);
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

id sub_23013340C()
{
  v0 = sub_2301336B8();

  return v0;
}

id REMOrderedIdentifierMap.IdentifiableContainer.remObjectID.getter()
{
  v0 = sub_2301336B8();

  return v0;
}

char *REMOrderedIdentifierMap.IdentifiableContainer.__allocating_init(remObjectID:nonIdentifiable:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  *(v4 + 2) = a1;
  (*(*(*(v5 + 80) - 8) + 32))(&v4[*(v5 + 96)], a2);
  return v4;
}

char *REMOrderedIdentifierMap.IdentifiableContainer.init(remObjectID:nonIdentifiable:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 2) = a1;
  (*(*(*(v2 + 80) - 8) + 32))(&v1[*(v2 + 96)]);
  return v1;
}

id *REMOrderedIdentifierMap.IdentifiableContainer.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t REMOrderedIdentifierMap.IdentifiableContainer.__deallocating_deinit()
{
  REMOrderedIdentifierMap.IdentifiableContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2301336C0()
{
  result = swift_checkMetadataState();
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

uint64_t Result.eraseToCodableError()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  sub_230133BC4();
  return sub_2301339F0(sub_2301339E4, a1, a2);
}

void sub_2301338AC(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = sub_230310FF8();
  if (v8)
  {
    v9 = v8;
    (*(v5 + 8))(v7, a2);
  }

  else
  {
    v9 = swift_allocError();
    (*(v5 + 32))(v10, v7, a2);
  }

  CodableError.init(_:)(v9, a3);
}

uint64_t sub_2301339F0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v3, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
    sub_230311408();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v3, *(a2 + 16));
    sub_230311408();

    return swift_storeEnumTagMultiPayload();
  }
}

unint64_t sub_230133BC4()
{
  result = qword_280C9B728;
  if (!qword_280C9B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B728);
  }

  return result;
}

uint64_t Result.get(replacingErrorWith:failureDescription:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26[4] = a4;
  v26[6] = a3;
  v26[1] = a2;
  v26[9] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A20);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23030EF48();
  v26[10] = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v26[11] = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = *(*(a5 + 24) - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v26[0] = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v26[5] = v26 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v26 - v22;
  MEMORY[0x28223BE20](v21);
  (*(v24 + 16))(v15, v6, a5);
  v26[7] = a5;
  v26[8] = a6;
  return sub_23004B988(a5, v23, a6);
}

uint64_t Result.zip<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308);
  return sub_230134650(sub_230135CEC, a1);
}

uint64_t sub_2301342D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v37 = a5;
  v14 = sub_230311408();
  v35 = *(v14 - 8);
  v36 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = *(a4 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v35 - v22;
  v39 = a3;
  v40 = a6;
  v24 = sub_230311408();
  MEMORY[0x28223BE20](v24);
  (*(v26 + 16))(&v35 - v25, a1, v24);
  v27 = v42;
  sub_23004B988(v24, v23, a8);
  if (v27)
  {
    v28 = *(v18 + 32);
    v28(v21, v23, a4);
    v29 = sub_230310FF8();
    if (v29)
    {
      v30 = v29;
      result = (*(v18 + 8))(v21, a4);
    }

    else
    {
      v30 = swift_allocError();
      result = (v28)(v34, v21, a4);
    }

    *v41 = v30;
  }

  else
  {
    v32 = *(swift_getTupleTypeMetadata2() + 48);
    v33 = v36;
    (*(v35 + 16))(v17, v38, v36);
    return sub_23004B988(v33, &v43, a8 + v32);
  }

  return result;
}

uint64_t sub_230134650@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_230311408();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t Result.failureOrNil()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(a1 + 24);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t sub_2301349C8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(a2 + 24) - 8) + 32))(a3, v12, *(a2 + 24));
    sub_230311408();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v7 + 32))(v10, v12, v6);
    a1(v10);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_230134BD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_230134CA4(char a1)
{
  if (a1)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x54746E65746E6F63;
  }
}

uint64_t sub_230134CE4(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230134D5C()
{
  sub_230311358();
  sub_230125590(v2, *v0);
  return sub_2303113A8();
}

uint64_t sub_230134DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230134BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230134DD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23007DFC4();
  *a1 = result;
  return result;
}

uint64_t sub_230134E10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_230134E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_230134EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_230134F2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_230134F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_230135008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_230135078@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_230134CE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2301350A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_230134CFC(*v1);
  *a1 = result;
  return result;
}

uint64_t Result<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v54 = a5;
  v50 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v13;
  v65 = v14;
  v61 = v15;
  v66 = v15;
  v67 = v16;
  v55 = v16;
  v56 = v17;
  v59 = v18;
  v68 = v18;
  v69 = v17;
  v70 = v19;
  _s10CodingKeysOMa_0();
  swift_getWitnessTable();
  v62 = sub_230310D18();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v21 = &v46 - v20;
  v60 = a2;
  v57 = a4;
  v58 = a3;
  v22 = sub_230311408();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v46 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v63;
  sub_230311428();
  if (v26)
  {
    v32 = a1;
  }

  else
  {
    v46 = v25;
    v27 = v52;
    v47 = v23;
    v28 = v51;
    v48 = v22;
    v63 = a1;
    v30 = v53;
    v29 = v54;
    v31 = v58;
    v64 = v60;
    v65 = v58;
    v66 = v61;
    v67 = v55;
    v68 = v59;
    v69 = v56;
    v70 = v57;
    _s11ContentTypeOMa();
    LOBYTE(v64) = 0;
    swift_getWitnessTable();
    sub_230310CE8();
    v34 = v21;
    v35 = v60;
    LOBYTE(v64) = 1;
    if (v71)
    {
      v36 = v30;
      v37 = v31;
      v38 = v62;
      v39 = v34;
      sub_230310CE8();
      v43 = v29;
      (*(v28 + 8))(v39, v38);
      v44 = v46;
      (*(v50 + 32))(v46, v36, v37);
      v45 = v48;
    }

    else
    {
      v40 = v27;
      v41 = v62;
      v42 = v34;
      sub_230310CE8();
      v45 = v48;
      v43 = v29;
      (*(v28 + 8))(v42, v41);
      v44 = v46;
      (*(v49 + 32))(v46, v40, v35);
    }

    swift_storeEnumTagMultiPayload();
    (*(v47 + 32))(v43, v44, v45);
    v32 = v63;
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t Result<>.encode(to:)(void *a1, uint64_t a2)
{
  v38 = *(*(a2 + 24) - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(*(v6 + 16) - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 32);
  v45 = v16;
  v46 = v15;
  v53 = v16;
  v54 = v17;
  v50 = v17;
  v43 = v18;
  v44 = v19;
  v55 = v18;
  v56 = v15;
  v57 = v19;
  v58 = v20;
  v47 = v20;
  v41 = v14;
  v59 = v14;
  _s10CodingKeysOMa_0();
  swift_getWitnessTable();
  v21 = sub_230310E18();
  v51 = *(v21 - 8);
  v52 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v49 = v23;
  sub_230311448();
  (*(v10 + 16))(v12, v42, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v38;
    v25 = v40;
    v26 = v50;
    (*(v38 + 32))(v40, v12, v50);
    v60 = 256;
    v53 = v45;
    v54 = v26;
    v55 = v43;
    v56 = v46;
    v57 = v44;
    v58 = v47;
    v59 = v41;
    _s11ContentTypeOMa();
    swift_getWitnessTable();
    v27 = v52;
    v29 = v48;
    v28 = v49;
    sub_230310DF8();
    if (!v29)
    {
      LOBYTE(v53) = 1;
      sub_230310DF8();
    }

    (*(v24 + 8))(v25, v26);
    return (*(v51 + 8))(v28, v27);
  }

  else
  {
    v31 = v37;
    v32 = v39;
    v33 = v45;
    (*(v37 + 32))(v39, v12, v45);
    v60 = 0;
    v53 = v33;
    v54 = v50;
    v55 = v43;
    v56 = v46;
    v57 = v44;
    v58 = v47;
    v59 = v41;
    _s11ContentTypeOMa();
    swift_getWitnessTable();
    v34 = v52;
    v36 = v48;
    v35 = v49;
    sub_230310DF8();
    if (!v36)
    {
      LOBYTE(v53) = 1;
      sub_230310DF8();
    }

    (*(v31 + 8))(v32, v33);
    return (*(v51 + 8))(v35, v34);
  }
}

uint64_t sub_230135C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230135C84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230135E40(void *a1)
{
  result = (*(v1 + 32))(*(v1 + 48));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

id REMTemplate.publicLinkStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23030EB58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  result = [v2 mostRecentPublicLinkUpdateRequestDate];
  if (result)
  {
    v15 = result;
    sub_23030EB18();

    (*(v5 + 32))(v13, v11, v4);
    v16 = [v2 publicLink];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 lastModifiedDate];
      sub_23030EB18();

      LOBYTE(v18) = sub_23030EAB8();
      v19 = *(v5 + 8);
      v19(v8, v4);
      result = (v19)(v13, v4);
      v20 = v18 & 1;
    }

    else
    {
      result = (*(v5 + 8))(v13, v4);
      v20 = 0;
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
    v20 = 0;
  }

  *a1 = v17;
  *(a1 + 8) = v20;
  return result;
}

uint64_t _sSo11REMTemplateC19ReminderKitInternalE16PublicLinkStatusO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*a1)
  {
    if (!v4)
    {
      sub_2301363EC(0);
      sub_2301363EC(0);
      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_8;
  }

  if (v2 == 1)
  {
    if (v4 == 1)
    {
      v6 = 1;
      sub_2301363EC(1);
      sub_2301363EC(1);
      return v6 & 1;
    }

LABEL_8:
    sub_2301363DC(*a2);
    sub_2301363DC(v2);
    sub_2301363EC(v2);
    sub_2301363EC(v4);
    v6 = 0;
    return v6 & 1;
  }

  if (v4 < 2)
  {
    goto LABEL_8;
  }

  sub_2301363FC();
  sub_2301363DC(v4);
  sub_2301363DC(v2);
  v7 = sub_230310448();
  sub_2301363EC(v2);
  sub_2301363EC(v4);
  if (v7)
  {
    v6 = v5 ^ v3 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void _s16PublicLinkStatusOwxx(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

uint64_t _s16PublicLinkStatusOwca(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      *(a1 + 8) = *(a2 + 8);
      v7 = v5;
      return a1;
    }

LABEL_7:
    v8 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v8;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t _s16PublicLinkStatusOwta(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result < 0xFFFFFFFFuLL)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v4 = result;

      *v4 = *a2;
    }

    else
    {
      *result = *a2;
      v4 = result;
    }

    *(v4 + 8) = *(a2 + 8);
    return v4;
  }

  return result;
}

uint64_t _s16PublicLinkStatusOwet(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s16PublicLinkStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2301363AC(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

id sub_2301363DC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_2301363EC(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_2301363FC()
{
  result = qword_280C9B980;
  if (!qword_280C9B980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C9B980);
  }

  return result;
}

Swift::Bool __swiftcall REMGenerativeModelsAvailabilityManagerType.supportsFeature(_:)(ReminderKitInternal::REMGenerativeModelsFeature a1)
{
  v3 = *a1;
  (*(v1 + 8))(&var1, &v3);
  return var1 < 2u;
}

uint64_t sub_230136498()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C970C0);
  v1 = __swift_project_value_buffer(v0, qword_280C970C0);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t REMGenerativeModelsFeature.useCaseIdentifier.getter()
{
  if (*v0)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000026;
  }
}

uint64_t REMGenerativeModelsFeature.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t REMGenerativeModelsAvailability.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

Swift::Bool __swiftcall REMGenerativeModelsAvailabilityManagerType.isRestrictedFeature(_:)(ReminderKitInternal::REMGenerativeModelsFeature a1)
{
  v3 = *a1;
  (*(v1 + 8))(&var1, &v3);
  return var1 == 1;
}

uint64_t sub_230136714()
{
  type metadata accessor for REMGenerativeModelsAvailabilityManager();
  v0 = swift_allocObject();
  result = REMGenerativeModelsAvailabilityManager.init()();
  qword_280C97268 = v0;
  return result;
}

uint64_t REMGenerativeModelsAvailabilityManager.__allocating_init()()
{
  v0 = swift_allocObject();
  REMGenerativeModelsAvailabilityManager.init()();
  return v0;
}

uint64_t static REMGenerativeModelsAvailabilityManager.shared.getter()
{
  if (qword_280C97260 != -1)
  {
    swift_once();
  }
}

uint64_t REMGenerativeModelsAvailabilityManager.init()()
{
  v1 = v0;
  v47 = sub_23030EEA8();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v41 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23030EEE8();
  v3 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_23030EEC8();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23030EF18();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v12 = sub_23008CB2C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A28);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  *(v1 + 16) = v13;
  *(v1 + 24) = v11;
  sub_230136D3C();
  v14 = *MEMORY[0x277D0E2C0];
  v15 = byte_2844EA058;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
  v16 = swift_allocObject();
  v39 = xmmword_230315CE0;
  *(v16 + 16) = xmmword_230315CE0;
  v17 = "N,R,VremObjectID";
  v18 = 0xD000000000000026;
  if (v15)
  {
    v18 = 0xD000000000000027;
  }

  v37 = "igentReminderExtraction";
  v38 = "N,R,VremObjectID";
  if (!v15)
  {
    v17 = "igentReminderExtraction";
  }

  *(v16 + 32) = v18;
  *(v16 + 40) = v17 | 0x8000000000000000;
  sub_23013758C(v5);
  v19 = *(v3 + 104);
  v40 = v14;
  v43 = v3 + 104;
  v36 = v19;
  v19(v5, v14, v45);
  sub_23030EEB8();
  sub_23030EEF8();
  v20 = *(v6 + 8);
  v21 = v41;
  v42 = v6 + 8;
  v35 = v20;
  v20(v8, v44);
  v22 = v1;
  sub_23030EED8();
  v23 = *(v1 + 16);
  v50 = v15;
  v51 = v21;
  os_unfair_lock_lock((v23 + 24));
  sub_2301380CC((v23 + 16));
  os_unfair_lock_unlock((v23 + 24));
  v24 = *(v48 + 8);
  v48 += 8;
  v34 = v24;
  v24(v10, v46);
  v25 = *(v49 + 8);
  v49 += 8;
  v25(v21, v47);
  v26 = byte_2844EA059;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
  v27 = swift_allocObject();
  *(v27 + 16) = v39;
  v28 = 0xD000000000000026;
  if (v26)
  {
    v28 = 0xD000000000000027;
  }

  v29 = v38;
  if (!v26)
  {
    v29 = v37;
  }

  *(v27 + 32) = v28;
  *(v27 + 40) = v29 | 0x8000000000000000;
  sub_23013758C(v5);
  v36(v5, v40, v45);
  sub_23030EEB8();
  sub_23030EEF8();
  v35(v8, v44);
  v30 = sub_23030EED8();
  v31 = *(v22 + 16);
  MEMORY[0x28223BE20](v30);
  *(&v33 - 16) = v26;
  *(&v33 - 1) = v21;
  os_unfair_lock_lock((v31 + 24));
  sub_2301380CC((v31 + 16));
  os_unfair_lock_unlock((v31 + 24));
  v34(v10, v46);
  v25(v21, v47);
  return v22;
}

uint64_t sub_230136D3C()
{
  v1 = v0;
  v29 = sub_23030EEE8();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23030EEC8();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23030EF18();
  MEMORY[0x28223BE20](v27);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0;
  v26 = *MEMORY[0x277D0E2C0];
  v25 = (v2 + 104);
  v13 = (v12 + 8);
  v24 = xmmword_230315CE0;
  v22 = "igentReminderExtraction";
  v23 = "N,R,VremObjectID";
  do
  {
    v14 = v10;
    v15 = *(&unk_2844EA010 + v11 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
    v16 = swift_allocObject();
    *(v16 + 16) = v24;
    v17 = 0xD000000000000026;
    if (v15)
    {
      v17 = 0xD000000000000027;
    }

    v18 = v23;
    if (!v15)
    {
      v18 = v22;
    }

    *(v16 + 32) = v17;
    *(v16 + 40) = v18 | 0x8000000000000000;
    sub_23013758C(v4);
    (*v25)(v4, v26, v29);
    sub_23030EEB8();
    sub_23030EEF8();
    (*(v5 + 8))(v7, v28);
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    *(v19 + 24) = v15;

    sub_23030EF08();

    (*v13)(v9, v27);
    swift_beginAccess();

    MEMORY[0x231911A30](v20);
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23030FD18();
    }

    sub_23030FD68();
    swift_endAccess();

    v10 = 1;
    v11 = 1u;
  }

  while ((v14 & 1) == 0);
  return result;
}

ReminderKitInternal::REMGenerativeModelsAvailability __swiftcall REMGenerativeModelsAvailabilityManager.modelsAvailability(feature:)(ReminderKitInternal::REMGenerativeModelsFeature feature)
{
  v3 = v2;
  v4 = feature;
  v5 = v1;
  v6 = sub_23030EC18();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v4;
  v10 = *(v3 + 16);
  os_unfair_lock_lock((v10 + 24));
  sub_230137374((v10 + 16), v9, v30);
  os_unfair_lock_unlock((v10 + 24));
  LODWORD(v10) = LOBYTE(v30[0]);
  if (qword_280C970B8 != -1)
  {
    swift_once();
  }

  v11 = sub_23030EF48();
  __swift_project_value_buffer(v11, qword_280C970C0);

  v12 = sub_23030EF38();
  v13 = sub_2303102A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30[0] = v16;
    *v15 = 136315650;
    v29 = v10;
    v17 = sub_23030F948();
    v19 = sub_23004E30C(v17, v18, v30);
    v28 = v10;
    v10 = v19;

    *(v15 + 4) = v10;
    *(v15 + 12) = 2080;
    v29 = v9;
    v20 = sub_23030F948();
    v22 = sub_23004E30C(v20, v21, v30);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2080;
    sub_23013758C(v8);
    v23 = sub_23030F948();
    v25 = sub_23004E30C(v23, v24, v30);
    LOBYTE(v10) = v28;

    *(v15 + 24) = v25;
    _os_log_impl(&dword_230044000, v12, v13, "REMGenerativeModelAvailabilityManager: modelsAvailability: %s, feature: %s, locale: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231914180](v16, -1, -1);
    MEMORY[0x231914180](v15, -1, -1);
  }

  *v5 = v10;
  return result;
}

unint64_t sub_230137374@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v6 = sub_23030EEA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v21 - v12;
  result = MEMORY[0x28223BE20](v11);
  v16 = v21 - v15;
  v17 = *a1;
  if (!*(v17 + 16) || (result = sub_230081C64(a2 & 1), (v18 & 1) == 0))
  {
    *a3 = 2;
    return result;
  }

  (*(v7 + 16))(v13, *(v17 + 56) + *(v7 + 72) * result, v6);
  v19 = *(v7 + 32);
  v19(v16, v13, v6);
  v19(v10, v16, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D0DFA8])
  {
    v20 = 1;
  }

  else
  {
    if (result != *MEMORY[0x277D0DFB0] && result == *MEMORY[0x277D0E278])
    {
      *a3 = 0;
      return result;
    }

    v20 = 2;
  }

  *a3 = v20;
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23013758C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_23030ED18();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23030ED38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030EC88();
  sub_23030ED28();
  (*(v10 + 8))(v12, v9);
  sub_23030ECE8();
  (*(v6 + 8))(v8, v5);
  v13 = sub_23030EC18();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v4, v13);
  }

  sub_230061918(v4, &unk_27DB18F90);
  if (qword_280C970B8 != -1)
  {
    swift_once();
  }

  v15 = sub_23030EF48();
  __swift_project_value_buffer(v15, qword_280C970C0);
  v16 = sub_23030EF38();
  v17 = sub_230310288();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_230044000, v16, v17, "REMGenerativeModelAvailabilityManager: failed to get current language code, use 'en' as default", v18, 2u);
    MEMORY[0x231914180](v18, -1, -1);
  }

  return sub_23030EC28();
}

void sub_2301378A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_230138380((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_230137904(void *a1, char a2, uint64_t a3)
{
  v58 = a3;
  v6 = sub_23030EEA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v56 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v50[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A48);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v54 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v50[-v18];
  v55 = a1;
  v20 = *a1;
  v21 = *(v20 + 16);
  v59 = v3;
  if (v21)
  {
    v22 = &v50[-v18];
    v23 = a2;
    v24 = sub_230081C64(a2 & 1);
    if (v25)
    {
      v19 = v22;
      (*(v7 + 16))(v22, *(v20 + 56) + *(v7 + 72) * v24, v6);
      v26 = *(v7 + 56);
      v27 = v22;
      v28 = 0;
    }

    else
    {
      v26 = *(v7 + 56);
      v19 = v22;
      v27 = v22;
      v28 = 1;
    }

    v53 = v26;
    v26(v27, v28, 1, v6);
  }

  else
  {
    v23 = a2;
    v53 = *(v7 + 56);
    v53(&v50[-v18], 1, 1, v6);
  }

  v57 = v19;
  sub_2301382AC(v19, v17);
  v29 = v23;
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    sub_230061918(v17, &qword_27DB15A48);
    v30 = v58;
    v31 = v56;
  }

  else
  {
    (*(v7 + 32))(v11, v17, v6);
    v30 = v58;
    v32 = sub_23030EE98();
    (*(v7 + 8))(v11, v6);
    v31 = v56;
    if (v32)
    {
      return sub_230061918(v57, &qword_27DB15A48);
    }
  }

  if (qword_280C970B8 != -1)
  {
    swift_once();
  }

  v33 = sub_23030EF48();
  __swift_project_value_buffer(v33, qword_280C970C0);
  v56 = *(v7 + 16);
  (v56)(v31, v30, v6);
  v34 = sub_23030EF38();
  v35 = v7;
  v36 = sub_2303102A8();
  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v61 = v52;
    *v37 = 136315394;
    v51 = v29 & 1;
    v60 = v29 & 1;
    v38 = sub_23030F948();
    v40 = sub_23004E30C(v38, v39, &v61);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    sub_23013831C();
    v41 = sub_230310E58();
    v43 = v42;
    (*(v35 + 8))(v31, v6);
    v44 = sub_23004E30C(v41, v43, &v61);
    v45 = v51;

    *(v37 + 14) = v44;
    _os_log_impl(&dword_230044000, v34, v36, "REMGenerativeModelsAvailabilityManager: updateCachedSupportsGenerativeModelsAvailability: feature: %s, availability: %s", v37, 0x16u);
    v46 = v52;
    swift_arrayDestroy();
    MEMORY[0x231914180](v46, -1, -1);
    v47 = v37;
    v30 = v58;
    MEMORY[0x231914180](v47, -1, -1);
  }

  else
  {

    (*(v35 + 8))(v31, v6);
    v45 = v29 & 1;
  }

  v48 = v54;
  (v56)(v54, v30, v6);
  v53(v48, 0, 1, v6);
  sub_2301FE658(v48, v45);
  return sub_230061918(v57, &qword_27DB15A48);
}

uint64_t REMGenerativeModelsAvailabilityManager.deinit()
{

  return v0;
}

uint64_t REMGenerativeModelsAvailabilityManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL static REMModelsAvailabilityManagerWrapper.supportsAutoCategorizationGenerativeModels()()
{
  if (qword_280C97260 != -1)
  {
    swift_once();
  }

  v1[0] = 0;
  REMGenerativeModelsAvailabilityManager.modelsAvailability(feature:)(v1);
  return v1[1] < 2u;
}

id REMModelsAvailabilityManagerWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id REMModelsAvailabilityManagerWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id REMModelsAvailabilityManagerWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2301380F0()
{
  result = qword_280C97740;
  if (!qword_280C97740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97740);
  }

  return result;
}

unint64_t sub_230138148()
{
  result = qword_27DB15A30;
  if (!qword_27DB15A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15A30);
  }

  return result;
}

unint64_t sub_2301381B0()
{
  result = qword_27DB15A40;
  if (!qword_27DB15A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15A40);
  }

  return result;
}

uint64_t sub_2301382AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23013831C()
{
  result = qword_280C98518;
  if (!qword_280C98518)
  {
    sub_23030EEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98518);
  }

  return result;
}

uint64_t sub_230138430(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2301384DC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x231912650](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2303106D8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_230138604()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15A50);
  v1 = __swift_project_value_buffer(v0, qword_27DB15A50);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMCustomSmartListFilterDescriptor.Operation.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t REMCustomSmartListFilterDescriptor.FilterHashtags.hash(into:)()
{
  v1 = *v0;
  if (*v0 >= 2)
  {
    v2 = *(v0 + 16);
    v3 = v0[1];
    MEMORY[0x2319130E0](2);
    MEMORY[0x2319130E0](*(v1 + 16));
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = v1 + 40;
      do
      {

        sub_23030F9C8();

        v5 += 16;
        --v4;
      }

      while (v4);
    }

    MEMORY[0x2319130E0](*(v3 + 16));
    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = v3 + 40;
      do
      {

        sub_23030F9C8();

        v7 += 16;
        --v6;
      }

      while (v6);
    }

    v1 = v2 & 1;
  }

  return MEMORY[0x2319130E0](v1);
}

uint64_t REMCustomSmartListFilterDescriptor.FilterHashtags.hashValue.getter()
{
  sub_230311358();
  REMCustomSmartListFilterDescriptor.FilterHashtags.hash(into:)();
  return sub_2303113A8();
}

uint64_t sub_2301388A4()
{
  sub_230311358();
  REMCustomSmartListFilterDescriptor.FilterHashtags.hash(into:)();
  return sub_2303113A8();
}

uint64_t sub_2301388FC()
{
  sub_230311358();
  REMCustomSmartListFilterDescriptor.FilterHashtags.hash(into:)();
  return sub_2303113A8();
}

ReminderKitInternal::REMCustomSmartListFilterDescriptor::FilterDate::RelativeRange::Direction_optional __swiftcall REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_230138974@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

ReminderKitInternal::REMCustomSmartListFilterDescriptor::FilterDate::RelativeRange::Units_optional __swiftcall REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

ReminderKitInternal::REMCustomSmartListFilterDescriptor::FilterDate::RelativeRange __swiftcall REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)(ReminderKitInternal::REMCustomSmartListFilterDescriptor::FilterDate::RelativeRange::Direction direction, Swift::Int magnitude, ReminderKitInternal::REMCustomSmartListFilterDescriptor::FilterDate::RelativeRange::Units units, Swift::Bool includePastDue)
{
  v5 = *units;
  *v4 = *direction;
  *(v4 + 8) = magnitude;
  *(v4 + 16) = v5;
  *(v4 + 17) = includePastDue;
  result.magnitude = magnitude;
  result.units = units;
  result.direction = direction;
  return result;
}

uint64_t REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = v0[16];
  MEMORY[0x2319130E0](*v0);
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  return sub_230311378();
}

uint64_t REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  MEMORY[0x2319130E0](v3);
  sub_230311378();
  return sub_2303113A8();
}

uint64_t sub_230138AE8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  MEMORY[0x2319130E0](v3);
  sub_230311378();
  return sub_2303113A8();
}

uint64_t sub_230138B70()
{
  v1 = *(v0 + 1);
  v2 = v0[16];
  MEMORY[0x2319130E0](*v0);
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  return sub_230311378();
}

uint64_t sub_230138BD0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  MEMORY[0x2319130E0](v3);
  sub_230311378();
  return sub_2303113A8();
}

uint64_t REMCustomSmartListFilterDescriptor.FilterDate.hash(into:)()
{
  v1 = sub_23030EB58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2301453F8(v0, v10, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_230112AF4(v10, v7, &qword_27DB15A78);
        MEMORY[0x2319130E0](2);
        sub_23014553C(&qword_27DB15A80, MEMORY[0x277CC9578]);
        sub_23030F778();
        sub_23030F778();
        return sub_230061918(v7, &qword_27DB15A78);
      }

      else
      {
        MEMORY[0x2319130E0](1);
        return sub_230311378();
      }
    }

    if (EnumCaseMultiPayload == 2)
    {
      v14 = *v10;
      v15 = *(v10 + 1);
      v16 = v10[16];
      MEMORY[0x2319130E0](3);
      MEMORY[0x2319130E0](v14);
      MEMORY[0x2319130E0](v15);
      MEMORY[0x2319130E0](v16);
      return sub_230311378();
    }

    (*(v2 + 32))(v4, v10, v1);
    v13 = 4;
LABEL_15:
    MEMORY[0x2319130E0](v13);
    sub_23014553C(&qword_27DB15A80, MEMORY[0x277CC9578]);
    sub_23030F778();
    return (*(v2 + 8))(v4, v1);
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      (*(v2 + 32))(v4, v10, v1);
      v13 = 5;
    }

    else
    {
      (*(v2 + 32))(v4, v10, v1);
      v13 = 6;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v17 = 0;
  }

  else
  {
    v17 = 7;
  }

  return MEMORY[0x2319130E0](v17);
}

uint64_t REMCustomSmartListFilterDescriptor.FilterTime.matches(_:)(uint64_t a1)
{
  v3 = sub_23030EDE8();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23030EE08();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23030EB58();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A88);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = *v1;
  v18 = *(v14 + 56);
  *(&v28 - v15) = v17;
  sub_2301453F8(a1, &v28 + v18 - v15, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime.DateType);
  v19 = *v16;
  result = (*(v10 + 48))(&v16[v18], 1, v9);
  if (v19 == 5)
  {
    if (result != 1)
    {
      sub_2301454DC(&v16[v18], type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime.DateType);
      return 0;
    }
  }

  else if (result == 1)
  {
    return 0;
  }

  else if (v19)
  {
    (*(v10 + 32))(v12, &v16[v18], v9);
    sub_23030EDC8();
    v22 = v31;
    v21 = v32;
    (*(v31 + 104))(v5, *MEMORY[0x277CC9980], v32);
    v29 = sub_23030EDF8();
    (*(v22 + 8))(v5, v21);
    (*(v30 + 8))(v8, v6);
    v34 = v17;
    sub_230139408();
    v24 = v23;
    v33 = v17;
    sub_2301394A4();
    v26 = v25;
    (*(v10 + 8))(v12, v9);
    if (v24 >= v26)
    {
      return v29 >= v24 || v29 < v26;
    }

    else
    {
      return v29 >= v24 && v29 < v26;
    }
  }

  else
  {
    (*(v10 + 8))(&v16[v18], v9);
    return 1;
  }

  return result;
}

void sub_230139408()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v1 == 3 || v1 == 4)
  {
LABEL_6:
    REMTimeOfDay.startHour.getter();
  }
}

void sub_2301394A4()
{
  v1 = *v0;
  if (v1 > 2)
  {
    if (v1 == 3 || v1 == 4)
    {
      goto LABEL_6;
    }
  }

  else if (*v0)
  {
LABEL_6:
    REMTimeOfDay.endHour.getter();
  }
}

uint64_t REMCustomSmartListFilterDescriptor.FilterTime.matches(_:)(void *a1)
{
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime.DateType(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  if ([a1 isAllDay])
  {
    v12[14] = v6;
    v7 = sub_23030EB58();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  else
  {
    v12[15] = v6;
    v8 = [a1 date];
    sub_23030EB18();

    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  }

  v10 = REMCustomSmartListFilterDescriptor.FilterTime.matches(_:)(v5);
  sub_2301454DC(v5, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime.DateType);
  return v10 & 1;
}

uint64_t REMCustomSmartListFilterDescriptor.FilterTime.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

BOOL REMCustomSmartListFilterDescriptor.FilterLocation.matches(_:)(void *a1)
{
  if (!*(v1 + 48))
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (*(v1 + 48) == 1)
  {
    if ([a1 proximity] == v5)
    {
      v7 = v2;
      v8 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
      v9 = sub_23030F8B8();
      v10 = [v8 initWithCenter:v9 radius:v7 identifier:{v3, v4}];

      v11 = [a1 structuredLocation];
      v12 = REMStructuredLocation.clCircularRegion.getter();

      LOBYTE(v11) = CLCircularRegion.overlaps(_:)(v10);
      return v11 & 1;
    }

    return 0;
  }

  return (*(v1 + 8) | *v1 | *&v2 | *&v3 | *&v4 | v5) == 0;
}

{
  v2 = v1->i64[0];
  if (v1[3].i8[0])
  {
    if (v1[3].i8[0] == 1)
    {
      return 0;
    }

    v5 = vorrq_s8(v1[1], v1[2]);
    return (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v1->i64[1] | v2) == 0;
  }

  else
  {
    return [a1 event] == v2;
  }
}

Swift::Bool __swiftcall REMCustomSmartListFilterDescriptor.FilterLocation.matches(_:)(Swift::OpaquePointer_optional a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v38 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  if (!a1.value._rawValue)
  {
    v19 = 0;
    if (*(v1 + 48))
    {
      goto LABEL_37;
    }

LABEL_14:
    if (a1.value._rawValue)
    {
      rawValue = a1.value._rawValue;
      v17 = [a1.value._rawValue event];

      return v17 == v3;
    }

    goto LABEL_44;
  }

  v7 = a1.value._rawValue;
  v34 = *(v1 + 48);
  v35 = *(v1 + 8);
  v36 = *(v1 + 40);
  v37 = *(v1 + 32);
  v8 = a1.value._rawValue & 0xFFFFFFFFFFFFFF8;
  v9 = a1.value._rawValue >> 62;
  if (a1.value._rawValue >> 62)
  {
    goto LABEL_32;
  }

  v10 = *((a1.value._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_33;
  }

LABEL_4:
  v33 = v3;
  v11 = 0;
  v3 = 0x277D44000uLL;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x231912650](v11, v7);
    }

    else
    {
      if (v11 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v12 = *(v7 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v10 = sub_2303106D8();
        if (v10)
        {
          goto LABEL_4;
        }

LABEL_33:
        v19 = 0;
        if (!v9)
        {
          goto LABEL_18;
        }

LABEL_34:
        v20 = sub_2303106D8();
        if (!v20)
        {
          goto LABEL_35;
        }

LABEL_19:
        v21 = 0;
        v9 = 0x277D44000uLL;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x231912650](v21, v7);
          }

          else
          {
            if (v21 >= *(v8 + 16))
            {
              goto LABEL_31;
            }

            v22 = *(v7 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          objc_opt_self();
          a1.value._rawValue = swift_dynamicCastObjCClass();
          if (a1.value._rawValue)
          {
            goto LABEL_36;
          }

          ++v21;
          if (v24 == v20)
          {
            goto LABEL_35;
          }
        }
      }
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
      v19 = 0;
      goto LABEL_17;
    }
  }

  v19 = v15;
LABEL_17:
  v3 = v33;
  if (v9)
  {
    goto LABEL_34;
  }

LABEL_18:
  v20 = *(v8 + 16);
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_35:
  a1.value._rawValue = 0;
LABEL_36:
  v5 = v36;
  v4 = v37;
  v2 = v35;
  v6 = v34;
  if (!v34)
  {
    goto LABEL_14;
  }

LABEL_37:
  if (v6 == 1)
  {
    if (v19)
    {
      v25 = a1.value._rawValue;
      if ([v19 proximity] == v5)
      {
        v26 = v4;
        v27 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
        v28 = sub_23030F8B8();
        v29 = [v27 initWithCenter:v28 radius:v38 identifier:v26];

        v30 = [v19 structuredLocation];
        v31 = REMStructuredLocation.clCircularRegion.getter();

        LOBYTE(v30) = CLCircularRegion.overlaps(_:)(v29);
        return v30 & 1;
      }
    }

    else
    {
    }

    return 0;
  }

  if (v38 | v2 | v3 | *&v4 | v5 | *(&v38 + 1))
  {
    if (v19)
    {

LABEL_44:
      return 0;
    }

    v32 = a1.value._rawValue == 0;
  }

  else
  {
    if (v19)
    {

      return 1;
    }

    v32 = a1.value._rawValue != 0;
  }

  return v32;
}

uint64_t REMCustomSmartListFilterDescriptor.FilterLocation.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 48))
  {
    v2 = *(v0 + 16);
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = *(v0 + 40);
    if (*(v0 + 48) == 1)
    {
      MEMORY[0x2319130E0](2);
      sub_23030F9C8();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = 0;
      }

      MEMORY[0x231913110](v6);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x231913110](v7);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x231913110](v8);
      v1 = v5;
    }

    else if (v2 | *(v0 + 8) | v1 | v4 | v3 | v5)
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    MEMORY[0x2319130E0](1);
  }

  return MEMORY[0x2319130E0](v1);
}

uint64_t REMCustomSmartListFilterDescriptor.FilterLocation.hashValue.getter()
{
  sub_230311358();
  REMCustomSmartListFilterDescriptor.FilterLocation.hash(into:)();
  return sub_2303113A8();
}

uint64_t sub_230139D6C()
{
  sub_230311358();
  REMCustomSmartListFilterDescriptor.FilterLocation.hash(into:)();
  return sub_2303113A8();
}

uint64_t sub_230139DCC()
{
  sub_230311358();
  REMCustomSmartListFilterDescriptor.FilterLocation.hash(into:)();
  return sub_2303113A8();
}

uint64_t static REMCustomSmartListFilterDescriptor.FilterLists.== infix(_:_:)(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2300A77CC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2300A77CC(v2, v3);
}

void REMCustomSmartListFilterDescriptor.FilterLists.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  MEMORY[0x2319130E0](0);
  sub_230143A74(a1, v3);

  sub_230143A74(a1, v4);
}

uint64_t REMCustomSmartListFilterDescriptor.FilterLists.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_230311358();
  MEMORY[0x2319130E0](0);
  sub_230143A74(v4, v1);
  sub_230143A74(v4, v2);
  return sub_2303113A8();
}

uint64_t sub_230139F48(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2300A77CC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2300A77CC(v2, v3);
}

uint64_t sub_230139FA4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_230311358();
  MEMORY[0x2319130E0](0);
  sub_230143A74(v4, v1);
  sub_230143A74(v4, v2);
  return sub_2303113A8();
}

void sub_23013A00C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  MEMORY[0x2319130E0](0);
  sub_230143A74(a1, v3);

  sub_230143A74(a1, v4);
}

uint64_t sub_23013A068()
{
  v1 = *v0;
  v2 = v0[1];
  sub_230311358();
  MEMORY[0x2319130E0](0);
  sub_230143A74(v4, v1);
  sub_230143A74(v4, v2);
  return sub_2303113A8();
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicateType.description.getter()
{
  v1 = *v0;
  if (*v0 <= 31)
  {
    if (v1 <= 3)
    {
      if (v1 == 1)
      {
        v3 = 0xE800000000000000;
        v2 = 0x7367617468736168;
        goto LABEL_27;
      }

      if (v1 == 2)
      {
        v3 = 0xE400000000000000;
        v2 = 1702125924;
        goto LABEL_27;
      }
    }

    else
    {
      switch(v1)
      {
        case 4:
          v3 = 0xE900000000000079;
          v2 = 0x6144664F74726170;
          goto LABEL_27;
        case 8:
          v3 = 0xEA00000000007365;
          v2 = 0x697469726F697270;
          goto LABEL_27;
        case 16:
          v3 = 0xE700000000000000;
          v2 = 0x64656767616C66;
          goto LABEL_27;
      }
    }

LABEL_26:
    v3 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E75;
    goto LABEL_27;
  }

  if (v1 > 255)
  {
    switch(v1)
    {
      case 256:
        v3 = 0xE700000000000000;
        v2 = 0x746E756F636361;
        goto LABEL_27;
      case 512:
        v3 = 0xE300000000000000;
        v2 = 6581857;
        goto LABEL_27;
      case 1024:
        v3 = 0xE200000000000000;
        v2 = 29295;
        goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v1 == 32)
  {
    v3 = 0xE800000000000000;
    v2 = 0x6E6F697461636F6CLL;
    goto LABEL_27;
  }

  if (v1 == 64)
  {
    v3 = 0xE500000000000000;
    v2 = 0x737473696CLL;
    goto LABEL_27;
  }

  if (v1 != 128)
  {
    goto LABEL_26;
  }

  v2 = 0x6574656C706D6F63;
  v3 = 0xE900000000000064;
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15A90);
  v5 = sub_23030F948();
  MEMORY[0x231911790](0x203D206570797428, 0xE800000000000000);
  MEMORY[0x231911790](v2, v3);

  MEMORY[0x231911790](41, 0xE100000000000000);
  return v5;
}

void REMCustomSmartListFilterDescriptor.PostFetchPredicate.MatchingObjects.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) != 1)
    {
      MEMORY[0x2319130E0](0);
      return;
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x2319130E0](v4);

  sub_230121EC4(a1, v3);
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicate.MatchingObjects.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_230311358();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x2319130E0](0);
      return sub_2303113A8();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x2319130E0](v3);
  sub_230121EC4(v5, v1);
  return sub_2303113A8();
}

uint64_t sub_23013A490()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_230311358();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x2319130E0](0);
      return sub_2303113A8();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x2319130E0](v3);
  sub_230121EC4(v5, v1);
  return sub_2303113A8();
}

void sub_23013A510(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) != 1)
    {
      MEMORY[0x2319130E0](0);
      return;
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x2319130E0](v4);

  sub_230121EC4(a1, v3);
}

uint64_t sub_23013A594()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_230311358();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x2319130E0](0);
      return sub_2303113A8();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x2319130E0](v3);
  sub_230121EC4(v5, v1);
  return sub_2303113A8();
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.alarmTriggers.getter()
{
  type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0);
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(identifier:listIdentifier:accountIdentifier:displayDateDate:displayDateIsAllDay:displayDateSecondsFromGMT:alarmTriggers:priority:flagged:completed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13)
{
  sub_230112AF4(a1, a9, &qword_27DB14800);
  v18 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0);
  sub_230112AF4(a2, a9 + v18[5], &qword_27DB14800);
  sub_230112AF4(a3, a9 + v18[6], &qword_27DB14800);
  result = sub_230112AF4(a4, a9 + v18[7], &unk_27DB15AA0);
  *(a9 + v18[8]) = a5;
  v20 = a9 + v18[9];
  *v20 = a6;
  *(v20 + 8) = a7 & 1;
  *(a9 + v18[10]) = a8;
  v21 = a9 + v18[11];
  *v21 = a10;
  *(v21 + 8) = a11 & 1;
  *(a9 + v18[12]) = a12;
  *(a9 + v18[13]) = a13;
  return result;
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicate.evaluate(with:)(_BYTE *a1)
{
  v244 = a1;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB154A0);
  MEMORY[0x28223BE20](v228);
  v229 = &v208 - v1;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15AB0);
  v2 = MEMORY[0x28223BE20](v208);
  v210 = &v208 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v213 = &v208 - v4;
  v212 = sub_23030EE08();
  v215 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v211 = &v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15AB8);
  MEMORY[0x28223BE20](v6 - 8);
  v241 = &v208 - v7;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
  v221 = *(v222 - 8);
  v8 = MEMORY[0x28223BE20](v222);
  v209 = &v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v220 = &v208 - v10;
  v230 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  v11 = MEMORY[0x28223BE20](v230);
  v214 = &v208 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v240 = &v208 - v14;
  MEMORY[0x28223BE20](v13);
  v242 = &v208 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v239 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v223 = &v208 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v227 = &v208 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v219 = &v208 - v24;
  MEMORY[0x28223BE20](v23);
  v218 = &v208 - v25;
  v234 = sub_23030EBB8();
  v233 = *(v234 - 8);
  v26 = MEMORY[0x28223BE20](v234);
  v225 = &v208 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v224 = &v208 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v231 = &v208 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v238 = &v208 - v33;
  MEMORY[0x28223BE20](v32);
  v237 = &v208 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v217 = &v208 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v226 = &v208 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v216 = &v208 - v41;
  MEMORY[0x28223BE20](v40);
  v235 = &v208 - v42;
  v236 = sub_23030EB58();
  v232 = *(v236 - 8);
  v43 = MEMORY[0x28223BE20](v236);
  v45 = &v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v208 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v208 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v208 - v52;
  v54 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime.DateType(0);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = &v208 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate(0);
  v58 = *(Predicate - 8);
  v59 = MEMORY[0x28223BE20](Predicate);
  v61 = &v208 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v208 - v63;
  MEMORY[0x28223BE20](v62);
  v66 = (&v208 - v65);
  sub_2301453F8(v243, &v208 - v65, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v68 = *v66;
          v69 = v68 ^ v244[*(type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0) + 48)] ^ 1;
          return v69 & 1;
        }

        v117 = v233;
        v118 = v231;
        v119 = v234;
        v243 = *(v233 + 32);
        v243(v231, v66, v234);
        v120 = v227;
        (*(v117 + 16))(v227, v118, v119);
        (*(v117 + 56))(v120, 0, 1, v119);
        v121 = *(type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0) + 24);
        v122 = *(v228 + 48);
        v123 = v229;
        sub_230055F74(v120, v229, &qword_27DB14800);
        sub_230055F74(&v244[v121], v123 + v122, &qword_27DB14800);
        v124 = *(v117 + 48);
        if (v124(v123, 1, v119) == 1)
        {
          sub_230061918(v120, &qword_27DB14800);
          (*(v117 + 8))(v118, v119);
          if (v124(v123 + v122, 1, v119) == 1)
          {
            v83 = v123;
            goto LABEL_37;
          }

          goto LABEL_54;
        }

        v146 = v223;
        sub_230055F74(v123, v223, &qword_27DB14800);
        if (v124(v123 + v122, 1, v119) == 1)
        {
          sub_230061918(v120, &qword_27DB14800);
          v147 = *(v117 + 8);
          v147(v231, v119);
          v147(v146, v119);
LABEL_54:
          v129 = &qword_27DB154A0;
          v130 = v123;
          goto LABEL_80;
        }

        v162 = v224;
        v243(v224, (v123 + v122), v119);
        sub_23014553C(&qword_280C98520, MEMORY[0x277CC95F0]);
        v69 = sub_23030F818();
        v163 = *(v117 + 8);
        v163(v162, v119);
        v108 = &qword_27DB14800;
        sub_230061918(v120, &qword_27DB14800);
        v163(v231, v119);
        v163(v146, v119);
        v164 = v123;
LABEL_84:
        sub_230061918(v164, v108);
        return v69 & 1;
      }

      v98 = *v66;
      v99 = &v244[*(type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0) + 44)];
      if ((v99[8] & 1) == 0)
      {
        v69 = sub_2300A5A24(*v99, v98);

        return v69 & 1;
      }

LABEL_27:

      v69 = 0;
      return v69 & 1;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v100 = *v66;
      v101 = v244[*(type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0) + 52)];
      v69 = (v101 != 2) & (v100 ^ v101 ^ 1);
      return v69 & 1;
    }

    if (EnumCaseMultiPayload != 9)
    {
      v56 = 0;
      v85 = *v66;
      v84 = *(*v66 + 16);
      v125 = v244;
      while (v84 != v56)
      {
        v87 = *(v85 + 16);
        if (v56 >= v87)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        sub_2301453F8(v85 + ((v58[80] + 32) & ~v58[80]) + *(v58 + 9) * v56++, v61, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        v64 = REMCustomSmartListFilterDescriptor.PostFetchPredicate.evaluate(with:)(v125);
        sub_2301454DC(v61, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        if (v64)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_27;
    }

    v84 = 0;
    v85 = *v66;
    v86 = *(*v66 + 16);
    v45 = v244;
    while (v86 != v84)
    {
      v87 = *(v85 + 16);
      if (v84 >= v87)
      {
        __break(1u);
        goto LABEL_96;
      }

      sub_2301453F8(v85 + ((v58[80] + 32) & ~v58[80]) + *(v58 + 9) * v84++, v64, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v56 = REMCustomSmartListFilterDescriptor.PostFetchPredicate.evaluate(with:)(v45);
      sub_2301454DC(v64, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      if ((v56 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  v243 = v56;
  v70 = v235;
  v72 = v237;
  v71 = v238;
  v73 = v239;
  v74 = v240;
  v229 = v48;
  v228 = v45;
  v75 = v241;
  v231 = v51;
  v76 = v236;
  v77 = v242;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v111 = v66[1];
      v112 = v66[2];
      v113 = v66[3];
      v114 = v66[4];
      v115 = v66[5];
      v116 = *(v66 + 48);
      v245[0] = *v66;
      v110 = v245[0];
      v245[1] = v111;
      v245[2] = v112;
      v245[3] = v113;
      v245[4] = v114;
      v245[5] = v115;
      v246 = v116;
      v249.value._rawValue = *&v244[*(type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0) + 40)];
      v69 = REMCustomSmartListFilterDescriptor.FilterLocation.matches(_:)(v249);
      sub_230145584(v110, v111, v112, v113, v114, v115, v116);
      return v69 & 1;
    }

    v88 = *v66;
    v89 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0);
    v90 = v244[*(v89 + 32)];
    if (v90 == 2 || (v90 & 1) == 0)
    {
      sub_230055F74(&v244[*(v89 + 28)], v70, &unk_27DB15AA0);
      v126 = v232;
      v127 = (*(v232 + 48))(v70, 1, v76);
      v128 = v243;
      if (v127 != 1)
      {
        (*(v126 + 32))(v53, v70, v76);
        LOBYTE(v245[0]) = v88;
        (*(v126 + 16))(v128, v53, v76);
        (*(v126 + 56))(v128, 0, 1, v76);
        v69 = REMCustomSmartListFilterDescriptor.FilterTime.matches(_:)(v128);
        sub_2301454DC(v128, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime.DateType);
        (*(v126 + 8))(v53, v76);
        return v69 & 1;
      }

      v129 = &unk_27DB15AA0;
      v130 = v70;
LABEL_80:
      sub_230061918(v130, v129);
      v69 = 0;
      return v69 & 1;
    }

    LOBYTE(v245[0]) = v88;
    v91 = v243;
    (*(v232 + 56))(v243, 1, 1, v76);
    v69 = REMCustomSmartListFilterDescriptor.FilterTime.matches(_:)(v91);
    v92 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime.DateType;
LABEL_88:
    sub_2301454DC(v91, v92);
    return v69 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v93 = *v66;
    if (*(v66 + 8))
    {
      v94 = v234;
      v95 = v233;
      v96 = v244;
      if (*(v66 + 8) != 1)
      {
LABEL_43:
        v69 = 1;
        return v69 & 1;
      }

      if ((v93 & 0xC000000000000001) != 0)
      {
        v97 = sub_2303106D8();
      }

      else
      {
        v97 = *(v93 + 16);
      }

      if (!v97)
      {
        goto LABEL_42;
      }

      v172 = v96;
      v173 = v219;
      sub_230055F74(v172, v219, &qword_27DB14800);
      if ((*(v95 + 48))(v173, 1, v94) != 1)
      {
        (*(v95 + 32))(v71, v173, v94);
        v174 = objc_opt_self();
        v175 = sub_23030EB88();
        v176 = [v174 objectIDWithUUID_];

        v177 = sub_2300A590C(v176, v93);

        (*(v95 + 8))(v71, v94);
LABEL_105:
        v69 = v177 ^ 1;
        return v69 & 1;
      }
    }

    else
    {
      v158 = v234;
      v159 = v233;
      v160 = v244;
      if ((v93 & 0xC000000000000001) != 0)
      {
        v161 = sub_2303106D8();
      }

      else
      {
        v161 = *(v93 + 16);
      }

      if (!v161)
      {
        goto LABEL_27;
      }

      v178 = v160;
      v173 = v218;
      sub_230055F74(v178, v218, &qword_27DB14800);
      if ((*(v159 + 48))(v173, 1, v158) != 1)
      {
        (*(v159 + 32))(v72, v173, v158);
        v180 = objc_opt_self();
        v181 = sub_23030EB88();
        v182 = [v180 objectIDWithUUID_];

        v69 = sub_2300A590C(v182, v93);

        (*(v159 + 8))(v72, v158);
        return v69 & 1;
      }
    }

    v129 = &qword_27DB14800;
    v130 = v173;
    goto LABEL_80;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v78 = *v66;
    v79 = v66[1];
    v80 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0);
    sub_230055F74(&v244[*(v80 + 20)], v73, &qword_27DB14800);
    v81 = v233;
    v82 = v234;
    if ((*(v233 + 48))(v73, 1, v234) == 1)
    {

      v83 = v73;
LABEL_37:
      sub_230061918(v83, &qword_27DB14800);
      goto LABEL_43;
    }

    v131 = v225;
    (*(v81 + 32))(v225, v73, v82);
    v132 = objc_opt_self();
    v133 = sub_23030EB88();
    v134 = [v132 objectIDWithUUID_];

    if (v78 >> 62)
    {
      if (sub_2303106D8())
      {
        goto LABEL_49;
      }
    }

    else if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_49:
      v244 = v79;
      v135 = type metadata accessor for REMObjectID_Codable();
      v243 = objc_allocWithZone(v135);
      v136 = v134;
      v137 = [v136 uuid];
      v138 = v224;
      sub_23030EBA8();

      v139 = sub_23030EB88();
      v140 = *(v81 + 8);
      v141 = v138;
      v142 = v131;
      v140(v141, v82);
      v143 = [v136 entityName];
      if (!v143)
      {
        _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v143 = sub_23030F8B8();
        v142 = v225;
      }

      v248.receiver = v243;
      v248.super_class = v135;
      v144 = objc_msgSendSuper2(&v248, sel_initWithUUID_entityName_, v139, v143);

      v245[0] = v144;
      MEMORY[0x28223BE20](v145);
      *(&v208 - 2) = v245;
      v69 = sub_2301384DC(sub_2301454C0, (&v208 - 4), v78);

      v140(v142, v82);

      return v69 & 1;
    }

    if (v79 >> 62)
    {
      if (sub_2303106D8())
      {
        goto LABEL_102;
      }
    }

    else if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_102:
      v244 = v79;
      v198 = type metadata accessor for REMObjectID_Codable();
      v199 = objc_allocWithZone(v198);
      v200 = v134;
      v201 = [v200 uuid];
      v202 = v224;
      sub_23030EBA8();

      v203 = sub_23030EB88();
      v204 = *(v81 + 8);
      v204(v202, v82);
      v205 = [v200 entityName];
      if (!v205)
      {
        _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v205 = sub_23030F8B8();
      }

      v247.receiver = v199;
      v247.super_class = v198;
      v206 = objc_msgSendSuper2(&v247, sel_initWithUUID_entityName_, v203, v205);

      v245[0] = v206;
      MEMORY[0x28223BE20](v207);
      *(&v208 - 2) = v245;
      v177 = sub_2301384DC(sub_23014C608, (&v208 - 4), v244);

      v204(v225, v82);

      goto LABEL_105;
    }

    (*(v81 + 8))(v131, v82);
    goto LABEL_43;
  }

  sub_2301455BC(v66, v242, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  v102 = v74;
  sub_2301453F8(v77, v74, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  v103 = swift_getEnumCaseMultiPayload();
  if (v103 <= 2)
  {
    v104 = v244;
    v105 = v75;
    v106 = v226;
    if (v103 != 1)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v104 = v244;
    v105 = v75;
    v106 = v226;
    if ((v103 - 3) >= 3)
    {
      if (v103 == 6)
      {
        sub_2301454DC(v77, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
        v107 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0);
        v108 = &unk_27DB15AA0;
        v109 = v216;
        sub_230055F74(v104 + *(v107 + 28), v216, &unk_27DB15AA0);
        v69 = (*(v232 + 48))(v109, 1, v76) != 1;
      }

      else
      {
        sub_2301454DC(v77, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
        v179 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0);
        v108 = &unk_27DB15AA0;
        v109 = v217;
        sub_230055F74(v104 + *(v179 + 28), v217, &unk_27DB15AA0);
        v69 = (*(v232 + 48))(v109, 1, v76) == 1;
      }

      v164 = v109;
      goto LABEL_84;
    }
  }

  sub_2301454DC(v102, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
LABEL_57:
  v148 = v76;
  v149 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(0);
  sub_230055F74(v104 + *(v149 + 28), v106, &unk_27DB15AA0);
  v150 = v232;
  if ((*(v232 + 48))(v106, 1, v76) == 1)
  {
    sub_2301454DC(v77, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    v129 = &unk_27DB15AA0;
    v130 = v106;
    goto LABEL_80;
  }

  v151 = (v150 + 32);
  v243 = *(v150 + 32);
  v243(v231, v106, v148);
  v152 = v150;
  v153 = v77;
  v154 = v229;
  sub_23030EB48();
  REMCustomSmartListFilterDescriptor.FilterDate.closedRange(now:)(v154, v105);
  v155 = v75;
  v157 = *(v152 + 8);
  v156 = v152 + 8;
  v84 = v157;
  v157(v154, v148);
  if ((*(v221 + 48))(v155, 1, v222) == 1)
  {
    (v84)(v231, v148);
    sub_2301454DC(v153, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    v129 = &qword_27DB15AB8;
    v130 = v155;
    goto LABEL_80;
  }

  v232 = v156;
  v45 = v153;
  sub_230112AF4(v155, v220, &qword_27DB15A78);
  v165 = v244[*(v149 + 32)];
  if (v165 == 2 || (v165 & 1) == 0)
  {
    v168 = v84;
    sub_23014553C(&qword_280C9C418, MEMORY[0x277CC9578]);
    v169 = v231;
    v170 = v220;
    v171 = v148;
    v91 = v45;
    if (sub_23030F7E8())
    {
      v69 = sub_23030F7F8();
    }

    else
    {
      v69 = 0;
    }

    sub_230061918(v170, &qword_27DB15A78);
    v168(v169, v171);
    v92 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate;
    goto LABEL_88;
  }

  v166 = v153;
  v64 = v214;
  sub_2301453F8(v166, v214, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  v167 = swift_getEnumCaseMultiPayload();
  v66 = v148;
  v241 = v151;
  v58 = v213;
  v85 = v215;
  v56 = v228;
  if (((1 << v167) & 0x3A) != 0)
  {
    sub_2301454DC(v64, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    v61 = v212;
    v87 = v211;
    v51 = v229;
  }

  else
  {
    v61 = v212;
    v87 = v211;
    v51 = v229;
    if (((1 << v167) & 0xC1) == 0)
    {
LABEL_97:
      if (!*(v64 + 16))
      {
        sub_230061918(v220, &qword_27DB15A78);
        (v84)(v231, v66);
        sub_2301454DC(v45, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
        v69 = 0;
        return v69 & 1;
      }
    }
  }

  v244 = v84;
  v183 = v87;
  sub_23030EDC8();
  v184 = v231;
  sub_23030ED48();
  v185 = *(v85 + 8);
  v185(v183, v61);
  sub_23030EDC8();
  Calendar.endOfDay(for:)(v184, v56);
  v185(v183, v61);
  v240 = sub_23014553C(&qword_280C9C418, MEMORY[0x277CC9578]);
  result = sub_23030F7F8();
  if (result)
  {
    v187 = v243;
    v243(v58, v51, v66);
    v188 = v208;
    v187(&v58[*(v208 + 48)], v56, v66);
    v189 = v58;
    v190 = v58;
    v191 = v210;
    sub_230055F74(v190, v210, &qword_27DB15AB0);
    v192 = *(v188 + 48);
    v193 = v209;
    v187(v209, v191, v66);
    v194 = v244;
    (v244)(v191 + v192, v66);
    sub_230112AF4(v189, v191, &qword_27DB15AB0);
    v187(&v193[*(v222 + 36)], v191 + *(v188 + 48), v66);
    v195 = v193;
    v194(v191, v66);
    v196 = v220;
    if (sub_23030F7D8())
    {
      v69 = 0;
    }

    else
    {
      v69 = sub_23030F7D8() ^ 1;
    }

    v197 = v231;
    sub_230061918(v195, &qword_27DB15A78);
    sub_230061918(v196, &qword_27DB15A78);
    (v244)(v197, v66);
    sub_2301454DC(v242, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    return v69 & 1;
  }

  __break(1u);
  return result;
}

uint64_t REMCustomSmartListFilterDescriptor.FilterDate.closedRange(now:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15AB0);
  v3 = MEMORY[0x28223BE20](v42);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = sub_23030EB58();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AC0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v41 - v19;
  v21 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMCustomSmartListFilterDescriptor.FilterDate.range(now:)(a1, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_230061918(v20, &unk_27DB15AC0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    return (*(*(v25 - 8) + 56))(v45, 1, 1, v25);
  }

  else
  {
    sub_2301455BC(v20, v24, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange);
    sub_230055F74(v24, v11, &unk_27DB15AA0);
    v27 = *(v13 + 48);
    v28 = v13;
    if (v27(v11, 1, v12) == 1)
    {
      sub_23030EA68();
      if (v27(v11, 1, v12) != 1)
      {
        sub_230061918(v11, &unk_27DB15AA0);
      }
    }

    else
    {
      (*(v13 + 32))(v17, v11, v12);
    }

    sub_230055F74(&v24[*(v21 + 20)], v9, &unk_27DB15AA0);
    if (v27(v9, 1, v12) == 1)
    {
      v29 = v44;
      sub_23030EA78();
      if (v27(v9, 1, v12) != 1)
      {
        sub_230061918(v9, &unk_27DB15AA0);
      }
    }

    else
    {
      v29 = v44;
      (*(v13 + 32))(v44, v9, v12);
    }

    sub_23014553C(&qword_280C9C418, MEMORY[0x277CC9578]);
    v30 = sub_23030F7F8();
    result = sub_2301454DC(v24, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange);
    if (v30)
    {
      v31 = v29;
      v32 = *(v13 + 32);
      v33 = v41;
      v32(v41, v17, v12);
      v34 = v42;
      v32((v33 + *(v42 + 48)), v31, v12);
      v35 = v43;
      sub_230055F74(v33, v43, &qword_27DB15AB0);
      v36 = *(v34 + 48);
      v37 = v45;
      v32(v45, v35, v12);
      v38 = *(v28 + 8);
      v38(v35 + v36, v12);
      sub_230112AF4(v33, v35, &qword_27DB15AB0);
      v39 = *(v34 + 48);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v32(&v37[*(v40 + 36)], (v35 + v39), v12);
      v38(v35, v12);
      return (*(*(v40 - 8) + 56))(v37, 0, 1, v40);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicate.postFetchPredicateType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate(0);
  MEMORY[0x28223BE20](Predicate);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2301453F8(v2, v6, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 4)
  {
    if (result <= 1)
    {
      if (result)
      {
        result = sub_2301454DC(v6, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        v8 = 32;
      }

      else
      {
        v8 = 4;
      }

      goto LABEL_23;
    }

    if (result == 2)
    {
      result = sub_2301454DC(v6, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v8 = 1;
      goto LABEL_23;
    }

    if (result == 3)
    {
      result = sub_2301454DC(v6, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v8 = 64;
      goto LABEL_23;
    }

    v9 = 2;
LABEL_21:
    *a1 = v9;
    return sub_2301454DC(v6, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  }

  if (result > 7)
  {
    if (result == 8)
    {
      v8 = 128;
    }

    else if (result == 9)
    {
      result = sub_2301454DC(v6, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v8 = 512;
    }

    else
    {
      result = sub_2301454DC(v6, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v8 = 1024;
    }

    goto LABEL_23;
  }

  if (result == 5)
  {
    result = sub_2301454DC(v6, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    v8 = 8;
    goto LABEL_23;
  }

  if (result != 6)
  {
    v9 = 256;
    goto LABEL_21;
  }

  v8 = 16;
LABEL_23:
  *a1 = v8;
  return result;
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicate.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23030EBB8();
  v46[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate(0);
  v11 = *(Predicate - 8);
  v12 = MEMORY[0x28223BE20](Predicate);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v46 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v46 - v18;
  sub_2301453F8(v2, v46 - v18, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v34 = *v19;
        v35 = *(v19 + 1);
        v36 = *(v19 + 2);
        v37 = *(v19 + 3);
        v38 = *(v19 + 4);
        v39 = *(v19 + 5);
        v40 = v19[48];
        MEMORY[0x2319130E0](1);
        v46[1] = v34;
        v46[2] = v35;
        v46[3] = v36;
        v46[4] = v37;
        v46[5] = v38;
        v46[6] = v39;
        v47 = v40;
        REMCustomSmartListFilterDescriptor.FilterLocation.hash(into:)();
        return sub_230145584(v34, v35, v36, v37, v38, v39, v40);
      }

      else
      {
        v28 = *v19;
        MEMORY[0x2319130E0](0);
        return MEMORY[0x2319130E0](v28);
      }
    }

    if (EnumCaseMultiPayload == 2)
    {
      v30 = *v19;
      v31 = v19[8];
      MEMORY[0x2319130E0](2);
      if (v31)
      {
        if (v31 != 1)
        {
          return MEMORY[0x2319130E0](0);
        }

        v32 = 2;
      }

      else
      {
        v32 = 1;
      }

      MEMORY[0x2319130E0](v32);
      sub_230121EC4(a1, v30);
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        sub_2301455BC(v19, v9, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
        MEMORY[0x2319130E0](4);
        REMCustomSmartListFilterDescriptor.FilterDate.hash(into:)();
        return sub_2301454DC(v9, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
      }

      v22 = *v19;
      v23 = *(v19 + 1);
      MEMORY[0x2319130E0](3);
      MEMORY[0x2319130E0](0);
      sub_230143A74(a1, v22);
      sub_230143A74(a1, v23);
    }
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v21 = 8;
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v24 = *v19;
      MEMORY[0x2319130E0](9);
      MEMORY[0x2319130E0](*(v24 + 16));
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v27 = *(v11 + 72);
        do
        {
          sub_2301453F8(v26, v17, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
          REMCustomSmartListFilterDescriptor.PostFetchPredicate.hash(into:)(a1);
          sub_2301454DC(v17, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
          v26 += v27;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      v42 = *v19;
      MEMORY[0x2319130E0](10);
      MEMORY[0x2319130E0](*(v42 + 16));
      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = v42 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v45 = *(v11 + 72);
        do
        {
          sub_2301453F8(v44, v14, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
          REMCustomSmartListFilterDescriptor.PostFetchPredicate.hash(into:)(a1);
          sub_2301454DC(v14, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
          v44 += v45;
          --v43;
        }

        while (v43);
      }
    }
  }

  if (EnumCaseMultiPayload == 5)
  {
    v33 = *v19;
    MEMORY[0x2319130E0](5);
    sub_230121D94(a1, v33);
  }

  if (EnumCaseMultiPayload == 6)
  {
    v21 = 6;
LABEL_23:
    MEMORY[0x2319130E0](v21);
    return sub_230311378();
  }

  v41 = v46[0];
  (*(v46[0] + 32))(v6, v19, v4);
  MEMORY[0x2319130E0](7);
  sub_23014553C(&qword_280C98528, MEMORY[0x277CC95F0]);
  sub_23030F778();
  return (*(v41 + 8))(v6, v4);
}

uint64_t sub_23013D604(void (*a1)(_BYTE *))
{
  sub_230311358();
  a1(v3);
  return sub_2303113A8();
}

uint64_t sub_23013D664(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_230311358();
  a3(v5);
  return sub_2303113A8();
}

uint64_t sub_23013D6C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_230311358();
  a4(v6);
  return sub_2303113A8();
}

unint64_t REMCustomSmartListFilterDescriptor.hashtags.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags;
  v3 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  v4 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v2 + 16);
  return sub_230145624(v3);
}

uint64_t REMCustomSmartListFilterDescriptor.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location;
  v3 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v4 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 8);
  v5 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 16);
  v6 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 24);
  v7 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 32);
  v8 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v9 = *(v2 + 48);
  *(a1 + 48) = v9;
  return sub_230145634(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t REMCustomSmartListFilterDescriptor.lists.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  v3 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_230145660(v2);
}

id REMCustomSmartListFilterDescriptor.__allocating_init(operation:hashtags:date:time:priorities:flagged:location:lists:)(char *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6, uint64_t a7, uint64_t *a8)
{
  v15 = objc_allocWithZone(v8);
  v16 = *a1;
  v17 = *(a2 + 16);
  LOBYTE(a1) = *a4;
  v19 = *(a7 + 32);
  v18 = *(a7 + 40);
  v20 = *(a7 + 48);
  v21 = *a8;
  v22 = a8[1];
  v30 = v21;
  v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v16;
  v23 = &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  *v23 = *a2;
  v23[16] = v17;
  sub_230055F74(a3, &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = a1;
  *&v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = a5;
  v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = a6;
  v24 = &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  v25 = *(a7 + 16);
  *v24 = *a7;
  *(v24 + 1) = v25;
  *(v24 + 4) = v19;
  *(v24 + 5) = v18;
  v24[48] = v20;
  v26 = &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  *v26 = v30;
  v26[1] = v22;
  v32.receiver = v15;
  v32.super_class = v8;
  v27 = objc_msgSendSuper2(&v32, sel_init);
  sub_230061918(a3, &unk_27DB15AE0);
  return v27;
}

id REMCustomSmartListFilterDescriptor.init(operation:hashtags:date:time:priorities:flagged:location:lists:)(char *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6, uint64_t a7, uint64_t *a8)
{
  ObjectType = swift_getObjectType();
  v16 = *a1;
  v17 = *(a2 + 16);
  LOBYTE(a1) = *a4;
  v18 = *(a7 + 32);
  v19 = *(a7 + 40);
  v20 = *(a7 + 48);
  v21 = *a8;
  v22 = a8[1];
  v29 = v21;
  v8[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v16;
  v23 = &v8[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  *v23 = *a2;
  v23[16] = v17;
  sub_230055F74(a3, &v8[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v8[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = a1;
  *&v8[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = a5;
  v8[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = a6;
  v24 = &v8[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  v25 = *(a7 + 16);
  *v24 = *a7;
  *(v24 + 1) = v25;
  *(v24 + 4) = v18;
  *(v24 + 5) = v19;
  v24[48] = v20;
  v26 = &v8[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  *v26 = v29;
  v26[1] = v22;
  v32.receiver = v8;
  v32.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v32, sel_init);
  sub_230061918(a3, &unk_27DB15AE0);
  return v27;
}

id REMCustomSmartListFilterDescriptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id REMCustomSmartListFilterDescriptor.init()()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = objc_allocWithZone(ObjectType);
  v5[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = 0;
  v6 = &v5[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  *v6 = xmmword_2303167F0;
  v6[16] = 0;
  sub_230055F74(v3, &v5[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v5[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = 6;
  *&v5[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = 0;
  v5[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = 2;
  v7 = &v5[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  v7[48] = -1;
  v8 = &v5[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = v5;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_230061918(v3, &unk_27DB15AE0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id REMCustomSmartListFilterDescriptor.__allocating_init(source:operation:)(void *a1, unsigned __int8 *a2)
{
  v3 = sub_2301456A0(a1, a2);

  return v3;
}

id REMCustomSmartListFilterDescriptor.__allocating_init(source:hashtags:)(void *a1, uint64_t *a2)
{
  v3 = sub_230145930(a1, a2);

  return v3;
}

id REMCustomSmartListFilterDescriptor.__allocating_init(source:date:)(void *a1, uint64_t a2)
{
  v3 = sub_230145BA0(a1, a2);

  return v3;
}

id REMCustomSmartListFilterDescriptor.__allocating_init(source:time:)(void *a1, unsigned __int8 *a2)
{
  v3 = sub_230145E3C(a1, a2);

  return v3;
}

id REMCustomSmartListFilterDescriptor.__allocating_init(source:priorities:)(void *a1, uint64_t a2)
{
  v3 = sub_2301460C8(a1, a2);

  return v3;
}

id REMCustomSmartListFilterDescriptor.__allocating_init(source:flagged:)(void *a1, int a2)
{
  v3 = sub_230146338(a1, a2);

  return v3;
}

id REMCustomSmartListFilterDescriptor.__allocating_init(source:location:)(void *a1, __int128 *a2)
{
  v3 = sub_2301465B0(a1, a2);

  return v3;
}

id REMCustomSmartListFilterDescriptor.__allocating_init(source:lists:)(_BYTE *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = *a2;
  v40 = a2[1];
  v41 = v9;
  v37 = a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation];
  v10 = *&a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8];
  v30 = *&a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  v11 = v30;
  v36 = v10;
  LOBYTE(a2) = a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16];
  v29 = a2;
  v38 = &v28 - v7;
  sub_230055F74(&a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &v28 - v7, &unk_27DB15AE0);
  v35 = a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time];
  v34 = *&a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities];
  v33 = a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged];
  v12 = *&a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 8];
  v28 = *&a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  v13 = v28;
  v15 = *&a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 16];
  v14 = *&a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 24];
  v31 = v12;
  v32 = v14;
  v16 = *&a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 32];
  v17 = *&a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 40];
  v18 = a1[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48];
  v19 = objc_allocWithZone(v3);
  v19[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v37;
  v20 = &v19[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  *v20 = v11;
  *(v20 + 1) = v36;
  v20[16] = a2;
  sub_230055F74(v8, &v19[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v19[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = v35;
  *&v19[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = v34;
  v19[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = v33;
  v21 = &v19[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  *v21 = v13;
  v22 = v31;
  v23 = v32;
  *(v21 + 1) = v31;
  *(v21 + 2) = v15;
  *(v21 + 3) = v23;
  *(v21 + 4) = v16;
  *(v21 + 5) = v17;
  v21[48] = v18;
  v24 = &v19[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  v25 = v40;
  *v24 = v41;
  v24[1] = v25;
  sub_230145624(v30);

  sub_230145634(v28, v22, v15, v23, v16, v17, v18);
  v42.receiver = v19;
  v42.super_class = v39;
  v26 = objc_msgSendSuper2(&v42, sel_init);

  sub_230061918(v38, &unk_27DB15AE0);
  return v26;
}

Swift::Void __swiftcall REMCustomSmartListFilterDescriptor.encode(with:)(NSCoder with)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter();
  v4 = v2 != *MEMORY[0x277D44CC8] && v2 == *MEMORY[0x277D44CB8];
  LOBYTE(v18[0]) = v4;
  sub_2301730E0(v18);
  v5 = objc_opt_self();
  v6 = sub_23030F638();

  v18[0] = 0;
  v7 = [v5 dataWithJSONObject:v6 options:0 error:v18];

  v8 = v18[0];
  if (v7)
  {
    v9 = sub_23030EA18();
    v11 = v10;

    v12 = sub_23030E9F8();
    v13 = sub_23030F8B8();
    [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

    v14 = REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter();
    v15 = sub_23030F8B8();
    [(objc_class *)with.super.isa encodeInteger:v14 forKey:v15];

    sub_23005FE3C(v9, v11);
  }

  else
  {
    v16 = v8;
    v17 = sub_23030E808();

    swift_willThrow();
  }
}

char *REMCustomSmartListFilterDescriptor.init(coder:)(void *a1)
{
  sub_23004CBA4(0, &qword_280C9B3F8);
  v2 = sub_2303103D8();
  if (v2)
  {
    v3 = v2;
    v4 = sub_23030EA18();
    v6 = v5;

    v7 = sub_23030F8B8();
    v8 = [a1 decodeIntegerForKey_];

    swift_getObjectType();
    v10 = v8 != *MEMORY[0x277D44CC8] && v8 == *MEMORY[0x277D44CB8];
    v13 = v10;
    v11 = sub_23017872C(v4, v6, &v13);

    swift_deallocPartialClassInstance();
    return v11;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t REMCustomSmartListFilterDescriptor.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v58 - v11);
  sub_230055F74(a1, &v70, &qword_27DB14810);
  if (!v73)
  {
    v13 = &qword_27DB14810;
    v14 = &v70;
LABEL_6:
    sub_230061918(v14, v13);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v15 = 0;
    return v15 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation) != v63[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation])
  {

    goto LABEL_7;
  }

  v61 = v4;
  v62 = v63;
  v18 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  v17 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8);
  v19 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16);
  v21 = *&v63[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  v20 = *&v63[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8];
  v22 = v63[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16];
  if (v18 == 2)
  {
    if (v21 == 2)
    {
      sub_230145624(2uLL);
      sub_230145624(2uLL);
      sub_2301467EC(2uLL);
      goto LABEL_17;
    }

    sub_230145624(*&v63[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags]);
    sub_230145624(2uLL);

LABEL_15:
    sub_2301467EC(v18);
    sub_2301467EC(v21);
    goto LABEL_7;
  }

  v70 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  v71 = v17;
  LOBYTE(v72) = v19;
  if (v21 == 2)
  {
    sub_230145624(2uLL);
    sub_230145624(v18);
    sub_230145624(v18);

    sub_230122CDC(v18);
    goto LABEL_15;
  }

  v63 = v21;
  v64 = v20;
  LOBYTE(v65) = v22;
  sub_230145624(v21);
  sub_230145624(v18);
  sub_230145624(v18);
  v23 = _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC0G8HashtagsO2eeoiySbAE_AEtFZ_0(&v70, &v63);
  sub_230122CDC(v63);
  sub_230122CDC(v70);
  sub_2301467EC(v18);
  if (!v23)
  {
LABEL_44:

    goto LABEL_7;
  }

LABEL_17:
  v24 = OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date;
  v25 = *(v10 + 48);
  sub_230055F74(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, v12, &unk_27DB15AE0);
  v26 = v62;
  sub_230055F74(&v62[v24], v12 + v25, &unk_27DB15AE0);
  v27 = *(v61 + 48);
  if (v27(v12, 1, v3) == 1)
  {
    if (v27(v12 + v25, 1, v3) == 1)
    {
      sub_230061918(v12, &unk_27DB15AE0);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  sub_230055F74(v12, v9, &unk_27DB15AE0);
  if (v27(v12 + v25, 1, v3) == 1)
  {

    sub_2301454DC(v9, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
LABEL_23:
    v13 = &unk_27DB15AF0;
    v14 = v12;
    goto LABEL_6;
  }

  sub_2301455BC(v12 + v25, v6, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  v28 = _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC0G4DateO2eeoiySbAE_AEtFZ_0(v9, v6);
  sub_2301454DC(v6, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  sub_2301454DC(v9, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  sub_230061918(v12, &unk_27DB15AE0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_25:
  v29 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
  v30 = v26[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time];
  if (v29 == 6)
  {
    if (v30 != 6)
    {
      goto LABEL_40;
    }
  }

  else if (v30 == 6 || v29 != v30)
  {
    goto LABEL_40;
  }

  v31 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities);
  v32 = *&v26[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities];
  if (v31)
  {
    if (!v32 || (sub_2300A80A0(v31, v32) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v32)
  {
    goto LABEL_40;
  }

  v33 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
  v34 = v26[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged];
  if (v33 == 2)
  {
    if (v34 == 2)
    {
      goto LABEL_41;
    }

LABEL_40:

    goto LABEL_7;
  }

  if (v34 == 2 || ((v34 ^ v33) & 1) != 0)
  {
    goto LABEL_40;
  }

LABEL_41:
  v36 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v35 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 8);
  v38 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 16);
  v37 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 24);
  v40 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 32);
  v39 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 40);
  v41 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
  v42 = &v26[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  v44 = *&v26[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  v43 = *(v42 + 1);
  v45 = *(v42 + 2);
  v46 = *(v42 + 3);
  v47 = *(v42 + 4);
  v48 = *(v42 + 5);
  v49 = v42[48];
  if (v41 == 255)
  {
    if (v49 == 255)
    {
      sub_230145634(v44, v43, v45, v46, v47, v48, 255);
      sub_230145634(v36, v35, v38, v37, v40, v39, 255);
      sub_230146810(v36, v35, v38, v37, v40, v39, 255);
      goto LABEL_50;
    }

    v60 = *(v42 + 2);
    v61 = v43;
    v58 = v47;
    v59 = v46;
    v51 = v48;
    sub_230145634(v44, v43, v45, v46, v47, v48, v49);
    sub_230145634(v36, v35, v38, v37, v40, v39, 255);

LABEL_48:
    sub_230146810(v36, v35, v38, v37, v40, v39, v41);
    sub_230146810(v44, v61, v60, v59, v58, v51, v49);
    goto LABEL_7;
  }

  v70 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v71 = v35;
  v72 = v38;
  v73 = v37;
  v74 = v40;
  v75 = v39;
  v76 = v41;
  if (v49 == 255)
  {
    v60 = v45;
    v61 = v43;
    v58 = v47;
    v59 = v46;
    v51 = v48;
    sub_230145634(v44, v43, v45, v46, v47, v48, 255);
    sub_230145634(v36, v35, v38, v37, v40, v39, v41);
    sub_230145634(v36, v35, v38, v37, v40, v39, v41);

    sub_230145584(v36, v35, v38, v37, v40, v39, v41);
    goto LABEL_48;
  }

  v63 = v44;
  v64 = v43;
  v65 = v45;
  v66 = v46;
  v67 = v47;
  v68 = v48;
  v69 = v49;
  sub_230145634(v44, v43, v45, v46, v47, v48, v49);
  sub_230145634(v36, v35, v38, v37, v40, v39, v41);
  sub_230145634(v36, v35, v38, v37, v40, v39, v41);
  v50 = _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC0G8LocationO2eeoiySbAE_AEtFZ_0(&v70, &v63);
  sub_230145584(v63, v64, v65, v66, v67, v68, v69);
  sub_230145584(v70, v71, v72, v73, v74, v75, v76);
  sub_230146810(v36, v35, v38, v37, v40, v39, v41);
  if ((v50 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_50:
  v52 = v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists;
  v54 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  v53 = *(v52 + 8);
  v55 = v62;
  v57 = *&v62[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  v56 = *&v62[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists + 8];
  if (!v54)
  {
    sub_230145660(*&v62[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists]);
    sub_230145660(0);

    if (!v57)
    {
      sub_230146824(0);
      v15 = 1;
      return v15 & 1;
    }

    goto LABEL_57;
  }

  if (!v57)
  {
    sub_230145660(0);
    sub_230145660(v54);

LABEL_57:
    sub_230146824(v54);
    sub_230146824(v57);
    goto LABEL_7;
  }

  sub_230145660(*&v62[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists]);
  sub_230145660(v57);
  sub_230145660(v54);
  if (sub_2300A77CC(v54, v57))
  {
    v15 = sub_2300A77CC(v53, v56);
  }

  else
  {
    v15 = 0;
  }

  sub_230146824(v57);

  sub_230146824(v57);
  sub_230146824(v54);
  return v15 & 1;
}

uint64_t REMCustomSmartListFilterDescriptor.description.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59[-v4];
  v60[0] = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15B00);
  v60[0] = sub_23030F948();
  v60[1] = v6;
  MEMORY[0x231911790](40, 0xE100000000000000);
  v8 = v60[0];
  v7 = v60[1];
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  MEMORY[0x231911790](0x6F6974617265706FLL, 0xEA00000000003A6ELL);
  v59[15] = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation);
  sub_230310A28();
  MEMORY[0x231911790](44, 0xE100000000000000);
  v9 = v60[0];
  v10 = v60[1];
  v60[0] = v8;
  v60[1] = v7;

  MEMORY[0x231911790](v9, v10);

  v11 = v60[0];
  v12 = v60[1];
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_230310848();

  v60[0] = 0xD000000000000012;
  v60[1] = 0x8000000230341C50;
  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags) == 2)
  {
    v13 = 0x65736C6166;
  }

  else
  {
    v13 = 1702195828;
  }

  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags) == 2)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x231911790](v13, v14);

  MEMORY[0x231911790](44, 0xE100000000000000);
  v15 = v60[0];
  v16 = v60[1];
  v60[0] = v11;
  v60[1] = v12;

  MEMORY[0x231911790](v15, v16);

  v18 = v60[0];
  v17 = v60[1];
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_230310848();

  strcpy(v60, "hasDateFilter:");
  HIBYTE(v60[1]) = -18;
  sub_230055F74(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, v5, &unk_27DB15AE0);
  v19 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  v20 = (*(*(v19 - 8) + 48))(v5, 1, v19);
  sub_230061918(v5, &unk_27DB15AE0);
  if (v20 == 1)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = 1702195828;
  }

  if (v20 == 1)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x231911790](v21, v22);

  MEMORY[0x231911790](44, 0xE100000000000000);
  v23 = v60[0];
  v24 = v60[1];
  v60[0] = v18;
  v60[1] = v17;

  MEMORY[0x231911790](v23, v24);

  v26 = v60[0];
  v25 = v60[1];
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_230310848();

  strcpy(v60, "hasTimeFilter:");
  HIBYTE(v60[1]) = -18;
  v27 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
  if (v27 == 6)
  {
    v28 = 0x65736C6166;
  }

  else
  {
    v28 = 1702195828;
  }

  if (v27 == 6)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x231911790](v28, v29);

  MEMORY[0x231911790](8236, 0xE200000000000000);
  v30 = v60[0];
  v31 = v60[1];
  v60[0] = v26;
  v60[1] = v25;

  MEMORY[0x231911790](v30, v31);

  v33 = v60[0];
  v32 = v60[1];
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_230310848();

  v60[0] = 0xD000000000000014;
  v60[1] = 0x8000000230341C70;
  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities))
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x231911790](v34, v35);

  MEMORY[0x231911790](44, 0xE100000000000000);
  v36 = v60[0];
  v37 = v60[1];
  v60[0] = v33;
  v60[1] = v32;

  MEMORY[0x231911790](v36, v37);

  v39 = v60[0];
  v38 = v60[1];
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_230310848();

  v60[0] = 0xD000000000000011;
  v60[1] = 0x8000000230341C90;
  v40 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
  if (v40 == 2)
  {
    v41 = 0x65736C6166;
  }

  else
  {
    v41 = 1702195828;
  }

  if (v40 == 2)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x231911790](v41, v42);

  MEMORY[0x231911790](44, 0xE100000000000000);
  v43 = v60[0];
  v44 = v60[1];
  v60[0] = v39;
  v60[1] = v38;

  MEMORY[0x231911790](v43, v44);

  v46 = v60[0];
  v45 = v60[1];
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_230310848();

  v60[0] = 0xD000000000000012;
  v60[1] = 0x8000000230341CB0;
  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48) == 255)
  {
    v47 = 0x65736C6166;
  }

  else
  {
    v47 = 1702195828;
  }

  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48) == 255)
  {
    v48 = 0xE500000000000000;
  }

  else
  {
    v48 = 0xE400000000000000;
  }

  MEMORY[0x231911790](v47, v48);

  MEMORY[0x231911790](44, 0xE100000000000000);
  v49 = v60[0];
  v50 = v60[1];
  v60[0] = v46;
  v60[1] = v45;

  MEMORY[0x231911790](v49, v50);

  v52 = v60[0];
  v51 = v60[1];
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_230310848();

  v60[0] = 0x737473694C736168;
  v60[1] = 0xEF3A7265746C6946;
  v53 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  if (v53)
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (v53)
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  MEMORY[0x231911790](v54, v55);

  v56 = v60[0];
  v57 = v60[1];
  v60[0] = v52;
  v60[1] = v51;

  MEMORY[0x231911790](v56, v57);

  MEMORY[0x231911790](41, 0xE100000000000000);

  return v60[0];
}

uint64_t REMCustomSmartListFilterDescriptor.isEmpty.getter()
{
  ObjectType = swift_getObjectType();
  v2[0] = [objc_allocWithZone(ObjectType) init];
  v0 = REMCustomSmartListFilterDescriptor.isEqual(_:)(v2);
  sub_230061918(v2, &qword_27DB14810);
  return v0 & 1;
}

uint64_t REMCustomSmartListFilterDescriptor.enabledFilterCount.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v38 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  v5 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8);
  if (v4 == 2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v46 = 0;
  }

  else
  {
    LOBYTE(v46) = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16);
    v8 = &type metadata for REMCustomSmartListFilterDescriptor.FilterHashtags;
    v6 = v4;
    v7 = v5;
  }

  v44 = v6;
  v45 = v7;
  v47 = v8;
  sub_230055F74(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, v3, &unk_27DB15AE0);
  v9 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  if ((*(*(v9 - 8) + 48))(v3, 1, v9) == 1)
  {
    sub_230145624(v4);
    sub_230061918(v3, &unk_27DB15AE0);
    v48 = 0u;
    v49 = 0u;
  }

  else
  {
    *(&v49 + 1) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_2301455BC(v3, boxed_opaque_existential_0, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    sub_230145624(v4);
  }

  if (*(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time) == 6)
  {
    v11 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  else
  {
    LOBYTE(v50) = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
    v11 = &type metadata for REMCustomSmartListFilterDescriptor.FilterTime;
  }

  v53 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities);
  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15B08);
    v14 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v55 = 0;
    v56 = 0;
  }

  v54 = v14;
  v57 = v13;
  v15 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
  if (v15 == 2)
  {
    v16 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
  }

  else
  {
    LOBYTE(v58) = v15 & 1;
    v16 = MEMORY[0x277D839B0];
  }

  v61 = v16;
  v17 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v18 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 8);
  v19 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 16);
  v20 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 24);
  v21 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 32);
  v22 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 40);
  v23 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
  v38[1] = v12;
  if (v23 == 255)
  {
    v24 = 0;
    v25 = 0;
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    *(v24 + 24) = v18;
    *(v24 + 32) = v19;
    *(v24 + 40) = v20;
    *(v24 + 48) = v21;
    *(v24 + 56) = v22;
    v25 = &type metadata for REMCustomSmartListFilterDescriptor.FilterLocation;
    *(v24 + 64) = v23;
  }

  v62 = v24;
  v65 = v25;
  v26 = v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists;
  v27 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  v28 = *(v26 + 8);
  if (v27)
  {
    v29 = &type metadata for REMCustomSmartListFilterDescriptor.FilterLists;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v68 = 0;
  }

  v66 = v30;
  v67 = v31;
  v69 = v29;

  sub_230145634(v17, v18, v19, v20, v21, v22, v23);
  sub_230145660(v27);
  v32 = MEMORY[0x277D84F90];
  for (i = 32; i != 256; i += 32)
  {
    sub_230055F74(&v43[i], &v41, &qword_27DB14810);
    v39[0] = v41;
    v39[1] = v42;
    if (*(&v42 + 1))
    {
      sub_230061914(v39, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_23007EEA4(0, *(v32 + 2) + 1, 1, v32);
      }

      v35 = *(v32 + 2);
      v34 = *(v32 + 3);
      if (v35 >= v34 >> 1)
      {
        v32 = sub_23007EEA4((v34 > 1), v35 + 1, 1, v32);
      }

      *(v32 + 2) = v35 + 1;
      sub_230061914(v40, &v32[32 * v35 + 32]);
    }

    else
    {
      sub_230061918(v39, &qword_27DB14810);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
  swift_arrayDestroy();
  v36 = *(v32 + 2);

  return v36;
}

void *REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v90 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v88 - v6;
  v92 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  v8 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate(0);
  v96 = *(Predicate - 8);
  v97 = Predicate;
  v11 = MEMORY[0x28223BE20](Predicate);
  v94 = (&v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v91 = (&v88 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v88 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v93 = &v88 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v88 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v88 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v88 - v26);
  v28 = sub_2300A5A24(8, a1);
  v95 = a1;
  if (v28)
  {
    if (*(v2 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities))
    {

      v30 = sub_2300B3ADC(v29);

      *v27 = v30;
      swift_storeEnumTagMultiPayload();
      v31 = sub_23007F698(0, 1, 1, MEMORY[0x277D84F90]);
      v33 = v31[2];
      v32 = v31[3];
      if (v33 >= v32 >> 1)
      {
        v31 = sub_23007F698(v32 > 1, v33 + 1, 1, v31);
      }

      v31[2] = v33 + 1;
      sub_2301455BC(v27, v31 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v33, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v3 = v2;
      a1 = v95;
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
      v3 = v2;
    }
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  if (sub_2300A5A24(16, a1))
  {
    v34 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
    if (v34 != 2)
    {
      *v25 = v34 & 1;
      swift_storeEnumTagMultiPayload();
      v35 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_23007F698(0, v31[2] + 1, 1, v31);
      }

      v37 = v31[2];
      v36 = v31[3];
      if (v37 >= v36 >> 1)
      {
        v31 = sub_23007F698(v36 > 1, v37 + 1, 1, v31);
      }

      v31[2] = v37 + 1;
      sub_2301455BC(v25, v31 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v37, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      a1 = v35;
    }
  }

  if (sub_2300A5A24(2, a1))
  {
    sub_230055F74(v3 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, v7, &unk_27DB15AE0);
    if ((*(v8 + 48))(v7, 1, v92) == 1)
    {
      sub_230061918(v7, &unk_27DB15AE0);
    }

    else
    {
      v38 = v7;
      v39 = v89;
      sub_2301455BC(v38, v89, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
      sub_2301453F8(v39, v22, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_23007F698(0, v31[2] + 1, 1, v31);
      }

      v41 = v31[2];
      v40 = v31[3];
      if (v41 >= v40 >> 1)
      {
        v31 = sub_23007F698(v40 > 1, v41 + 1, 1, v31);
      }

      sub_2301454DC(v39, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
      v31[2] = v41 + 1;
      sub_2301455BC(v22, v31 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v41, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    }
  }

  if (sub_2300A5A24(4, a1))
  {
    v42 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
    if (v42 != 6)
    {
      *v93 = v42;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_23007F698(0, v31[2] + 1, 1, v31);
      }

      v44 = v31[2];
      v43 = v31[3];
      if (v44 >= v43 >> 1)
      {
        v31 = sub_23007F698(v43 > 1, v44 + 1, 1, v31);
      }

      v31[2] = v44 + 1;
      sub_2301455BC(v93, v31 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v44, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    }
  }

  if (sub_2300A5A24(32, a1))
  {
    v45 = (v3 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
    v46 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
    if (v46 != 255)
    {
      v47 = v3;
      v49 = v45[4];
      v48 = v45[5];
      v51 = v45[2];
      v50 = v45[3];
      v53 = *v45;
      v52 = v45[1];
      *v17 = *v45;
      *(v17 + 1) = v52;
      *(v17 + 2) = v51;
      *(v17 + 3) = v50;
      *(v17 + 4) = v49;
      *(v17 + 5) = v48;
      v17[48] = v46;
      swift_storeEnumTagMultiPayload();
      sub_230145648(v53, v52, v51, v50, v49, v48, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_23007F698(0, v31[2] + 1, 1, v31);
      }

      v55 = v31[2];
      v54 = v31[3];
      v3 = v47;
      a1 = v95;
      if (v55 >= v54 >> 1)
      {
        v31 = sub_23007F698(v54 > 1, v55 + 1, 1, v31);
      }

      v31[2] = v55 + 1;
      sub_2301455BC(v17, v31 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v55, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    }
  }

  if (sub_2300A5A24(1, a1))
  {
    v56 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
    if (v56)
    {
      if (v56 == 1)
      {
        v57 = v90[3];
        v58 = v90[4];
        __swift_project_boxed_opaque_existential_1(v90, v57);
        v59 = (*(v58 + 16))(v57, v58);
        sub_230140B68(v59);
        v72 = v71;

        v73 = 0;
      }

      else
      {
        if (v56 == 2)
        {
          a1 = v95;
          goto LABEL_50;
        }

        v63 = v3;
        v64 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16);
        v65 = v90[3];
        v66 = v90[4];
        __swift_project_boxed_opaque_existential_1(v90, v65);

        v68 = sub_2300B38E4(v67);

        v70 = sub_2300B38E4(v69);

        LODWORD(v93) = v64 & 1;
        LOBYTE(v98[0]) = v64 & 1;
        v75 = (*(v66 + 8))(v68, v70, v98, v65, v66);

        sub_230140B68(v75);
        v72 = v76;

        v73 = 0;
        v3 = v63;
      }
    }

    else
    {
      v60 = v90[3];
      v61 = v90[4];
      __swift_project_boxed_opaque_existential_1(v90, v60);
      v62 = (*(v61 + 16))(v60, v61);
      sub_230140B68(v62);
      v72 = v74;

      v73 = 1;
    }

    a1 = v95;
    v77 = v91;
    *v91 = v72;
    *(v77 + 8) = v73;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_23007F698(0, v31[2] + 1, 1, v31);
    }

    v79 = v31[2];
    v78 = v31[3];
    if (v79 >= v78 >> 1)
    {
      v31 = sub_23007F698(v78 > 1, v79 + 1, 1, v31);
    }

    v31[2] = v79 + 1;
    sub_2301455BC(v77, v31 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v79, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  }

LABEL_50:
  if (sub_2300A5A24(64, a1))
  {
    v80 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
    if (v80)
    {
      v81 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists + 8);
      v82 = v94;
      *v94 = v80;
      v82[1] = v81;
      swift_storeEnumTagMultiPayload();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_23007F698(0, v31[2] + 1, 1, v31);
      }

      v84 = v31[2];
      v83 = v31[3];
      if (v84 >= v83 >> 1)
      {
        v31 = sub_23007F698(v83 > 1, v84 + 1, 1, v31);
      }

      v31[2] = v84 + 1;
      sub_2301455BC(v94, v31 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v84, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    }
  }

  if (*(v3 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation) == 1 && v31[2] >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15B10);
    v85 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_230315CE0;
    *(v86 + v85) = v31;
    swift_storeEnumTagMultiPayload();
    return v86;
  }

  return v31;
}

void sub_230140B68(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_2303106D8())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15BD0);
  v3 = sub_2303107E8();
LABEL_6:
  if (sub_23004CBA4(0, &qword_280C9C478) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_230310698();
      type metadata accessor for REMObjectID_Codable();
      sub_23014553C(&qword_280C995D0, type metadata accessor for REMObjectID_Codable);
      sub_23030FF88();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_230310718())
        {
LABEL_55:
          sub_2300F525C();

          return;
        }

        type metadata accessor for REMObjectID_Codable();
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_230143934(v35);
    }
  }

  if (v2)
  {

    sub_230310698();
    type metadata accessor for REMObjectID_Codable();
    sub_23014553C(&qword_280C995D0, type metadata accessor for REMObjectID_Codable);
    sub_23030FF88();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_230310718())
    {
      goto LABEL_55;
    }

    type metadata accessor for REMObjectID_Codable();
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = sub_230310438();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_230141064(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15BC0);
    v2 = sub_2303107E8();
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
    v21 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    type metadata accessor for Dataclass(0);
    v13 = v21;
    swift_dynamicCast();
    result = sub_230310748();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v24;
    *v11 = v22;
    *(v11 + 16) = v23;
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

id REMCustomSmartListFilterDescriptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange.contains(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = sub_23030EB58();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_230055F74(v1, v7, &unk_27DB15AA0);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_230061918(v7, &unk_27DB15AA0);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v16 = sub_23030EAC8();
    (*(v9 + 8))(v14, v8);
    if (v16)
    {
      return 0;
    }
  }

  v17 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
  sub_230055F74(v1 + *(v17 + 20), v5, &unk_27DB15AA0);
  if (v15(v5, 1, v8) != 1)
  {
    (*(v9 + 32))(v12, v5, v8);
    v18 = sub_23030EAB8();
    (*(v9 + 8))(v12, v8);
    return (v18 & 1) == 0;
  }

  sub_230061918(v5, &unk_27DB15AA0);
  return 1;
}

uint64_t REMCustomSmartListFilterDescriptor.FilterDate.range(now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a1;
  v139 = a2;
  v142 = sub_23030EB58();
  v140 = *(v142 - 8);
  v3 = MEMORY[0x28223BE20](v142);
  v5 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v137 = &v128 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v128 - v9;
  MEMORY[0x28223BE20](v8);
  v132 = &v128 - v11;
  v12 = sub_23030EDE8();
  v133 = *(v12 - 8);
  v134 = v12;
  MEMORY[0x28223BE20](v12);
  v136 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
  MEMORY[0x28223BE20](v14);
  v16 = &v128 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v131 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v130 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v129 = &v128 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v128 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v128 - v27;
  v29 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_23030EE08();
  v138 = *(v141 - 8);
  v32 = MEMORY[0x28223BE20](v141);
  v34 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v143 = &v128 - v35;
  sub_23030EDC8();
  sub_2301453F8(v2, v31, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 6) < 2)
    {
      (*(v138 + 8))(v143, v141);
      v42 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
      return (*(*(v42 - 8) + 56))(v139, 1, 1, v42);
    }

    if (EnumCaseMultiPayload == 4)
    {
      v56 = v140;
      v57 = v142;
      (*(v140 + 32))(v10, v31, v142);
      sub_23030EDC8();
      v58 = v139;
      sub_23030ED48();
      v137 = *(v138 + 8);
      v59 = v141;
      (v137)(v34, v141);
      v138 = *(v56 + 56);
      (v138)(v58, 0, 1, v57);
      v60 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
      v61 = *(v60 + 20);
      sub_23030EDC8();
      Calendar.endOfDay(for:)(v10, v58 + v61);
      v62 = v34;
      v63 = v137;
      (v137)(v62, v59);
      v64 = v142;
      (*(v56 + 8))(v10, v142);
      v63(v143, v59);
      v65 = v58 + v61;
      v66 = v64;
LABEL_38:
      (v138)(v65, 0, 1, v66);
LABEL_39:
      v82 = *(*(v60 - 8) + 56);
      v83 = v58;
      return v82(v83, 0, 1, v60);
    }

    v84 = v140;
    v85 = *(v140 + 32);
    v86 = v142;
    v85(v10, v31, v142);
    v87 = v137;
    v88 = v143;
    Calendar.beginningOfNextDay(_:)(v10, v137);
    (*(v84 + 8))(v10, v86);
    (*(v138 + 8))(v88, v141);
    v89 = v139;
    v85(v139, v87, v86);
    v90 = *(v84 + 56);
    v90(v89, 0, 1, v86);
    v60 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
    v90(v89 + *(v60 + 20), 1, 1, v86);
    v82 = *(*(v60 - 8) + 56);
    v83 = v89;
    return v82(v83, 0, 1, v60);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v73 = v140;
      v136 = *(v140 + 32);
      v74 = v142;
      (v136)(v10, v31, v142);
      Calendar.beginningOfPreviousDay(_:)(v10, v5);
      sub_23030EDC8();
      Calendar.endOfDay(for:)(v5, v137);
      v75 = *(v138 + 8);
      v76 = v34;
      v77 = v141;
      v75(v76, v141);
      v78 = *(v73 + 8);
      v78(v5, v74);
      v78(v10, v74);
      v75(v143, v77);
      v79 = *(v73 + 56);
      v80 = v139;
      v79(v139, 1, 1, v74);
      v60 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
      v81 = *(v60 + 20);
      (v136)(v80 + v81, v137, v74);
      v79(v80 + v81, 0, 1, v74);
      v82 = *(*(v60 - 8) + 56);
      v83 = v80;
      return v82(v83, 0, 1, v60);
    }

    v44 = *v31;
    v45 = *(v31 + 1);
    v46 = v31[16];
    v47 = *(v133 + 104);
    v48 = qword_2788BC790[v46];
    LODWORD(v137) = v31[17];
    v49 = qword_23031D748[v46];
    result = v47(v136, *v48, v134);
    if ((v45 * v49) >> 64 == (v45 * v49) >> 63)
    {
      v50 = 1;
      if (!v44)
      {
        v50 = -1;
      }

      v51 = v142;
      v52 = v140;
      v53 = v132;
      v54 = v135;
      if ((v45 * v49 * v50) >> 64 == (v45 * v49 * v50) >> 63)
      {
        sub_23030EDA8();
        v55 = *(v52 + 48);
        if (v55(v26, 1, v51) == 1)
        {
          (*(v52 + 16))(v53, v54, v51);
          if (v55(v26, 1, v51) != 1)
          {
            sub_230061918(v26, &unk_27DB15AA0);
          }
        }

        else
        {
          (*(v52 + 32))(v53, v26, v51);
        }

        if (v46 - 2 < 3)
        {
          if (v44)
          {
            v96 = v138;
            if (v137)
            {
              v97 = 1;
              v98 = v131;
            }

            else
            {
              sub_23030EDC8();
              v98 = v131;
              sub_23030ED48();
              (*(v96 + 8))(v34, v141);
              v97 = 0;
            }

            v138 = *(v52 + 56);
            v111 = v142;
            (v138)(v98, v97, 1, v142);
            v58 = v139;
            sub_230055F74(v98, v139, &unk_27DB15AA0);
            v60 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
            v112 = *(v60 + 20);
            v137 = v112;
            sub_23030EDC8();
            v113 = v132;
            Calendar.endOfDay(for:)(v132, v58 + v112);
            v114 = *(v96 + 8);
            v115 = v34;
            v116 = v141;
            v114(v115, v141);
            sub_230061918(v98, &unk_27DB15AA0);
            (*(v52 + 8))(v113, v111);
            (*(v133 + 8))(v136, v134);
            v114(v143, v116);
            v65 = v58 + v137;
            v66 = v111;
            goto LABEL_38;
          }

          sub_23030EDC8();
          v102 = v52;
          v103 = v139;
          sub_23030ED48();
          v104 = *(v138 + 8);
          v105 = v141;
          v104(v34, v141);
          v138 = *(v102 + 56);
          v106 = v142;
          (v138)(v103, 0, 1, v142);
          v60 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
          v107 = *(v60 + 20);
          v137 = v107;
          sub_23030EDC8();
          Calendar.endOfDay(for:)(v135, v103 + v107);
          v104(v34, v105);
          (*(v102 + 8))(v132, v106);
          (*(v133 + 8))(v136, v134);
          v104(v143, v105);
          (v138)(v103 + v137, 0, 1, v106);
          v82 = *(*(v60 - 8) + 56);
          v83 = v103;
          return v82(v83, 0, 1, v60);
        }

        if (v46)
        {
          if (v44)
          {
            if (v137)
            {
              v108 = 1;
              v109 = v142;
              v110 = v130;
            }

            else
            {
              v110 = v130;
              v109 = v142;
              (*(v52 + 16))(v130, v54, v142);
              v108 = 0;
            }

            v137 = *(v52 + 56);
            (v137)(v110, v108, 1, v109);
            v58 = v139;
            sub_230055F74(v110, v139, &unk_27DB15AA0);
            v60 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
            v122 = v110;
            v123 = *(v60 + 20);
            sub_23030EDC8();
            Calendar.endOfDay(for:)(v53, v58 + v123);
            v124 = *(v138 + 8);
            v125 = v34;
            v126 = v141;
            v124(v125, v141);
            sub_230061918(v122, &unk_27DB15AA0);
            v127 = v142;
            (*(v52 + 8))(v53, v142);
            (*(v133 + 8))(v136, v134);
            v124(v143, v126);
            (v137)(v58 + v123, 0, 1, v127);
            goto LABEL_39;
          }

          sub_23030EDC8();
          v117 = v139;
          sub_23030ED48();
          v118 = *(v138 + 8);
          v119 = v141;
          v118(v34, v141);
          v99 = v142;
          (*(v52 + 8))(v53, v142);
          (*(v133 + 8))(v136, v134);
          v118(v143, v119);
        }

        else
        {
          (*(v133 + 8))(v136, v134);
          (*(v138 + 8))(v143, v141);
          if (v44)
          {
            v99 = v142;
            if (v137)
            {
              v100 = 1;
              v101 = v129;
            }

            else
            {
              v101 = v129;
              (*(v52 + 16))(v129, v54, v142);
              v100 = 0;
            }

            v120 = *(v52 + 56);
            v120(v101, v100, 1, v99);
            v117 = v139;
            sub_230112AF4(v101, v139, &unk_27DB15AA0);
            v60 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
            v121 = *(v60 + 20);
            (*(v52 + 32))(v117 + v121, v53, v99);
            goto LABEL_47;
          }

          v117 = v139;
          v99 = v142;
          (*(v52 + 32))(v139, v53, v142);
        }

        v120 = *(v52 + 56);
        v120(v117, 0, 1, v99);
        v60 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
        v121 = *(v60 + 20);
        (*(v52 + 16))(v117 + v121, v54, v99);
LABEL_47:
        v120(v117 + v121, 0, 1, v99);
        v82 = *(*(v60 - 8) + 56);
        v83 = v117;
        return v82(v83, 0, 1, v60);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload)
  {
    sub_230112AF4(v31, v16, &qword_27DB15A78);
    sub_23030EDC8();
    v67 = v139;
    sub_23030ED48();
    v138 = *(v138 + 8);
    v68 = v141;
    (v138)(v34, v141);
    v140 = *(v140 + 56);
    (v140)(v67, 0, 1, v142);
    v69 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
    v70 = *(v69 + 20);
    v71 = *(v14 + 36);
    sub_23030EDC8();
    Calendar.endOfDay(for:)(&v16[v71], v67 + v70);
    v72 = v138;
    (v138)(v34, v68);
    sub_230061918(v16, &qword_27DB15A78);
    v72(v143, v68);
    (v140)(v67 + v70, 0, 1, v142);
    return (*(*(v69 - 8) + 56))(v67, 0, 1, v69);
  }

  else
  {
    v37 = v141;
    if (*v31)
    {
      v38 = 1;
      v39 = v142;
      v40 = v140;
      v41 = v138;
    }

    else
    {
      sub_23030EDC8();
      sub_23030ED48();
      v41 = v138;
      (*(v138 + 8))(v34, v37);
      v38 = 0;
      v39 = v142;
      v40 = v140;
    }

    v91 = *(v40 + 56);
    v140 = v40 + 56;
    v91(v28, v38, 1, v39);
    v92 = v139;
    sub_230055F74(v28, v139, &unk_27DB15AA0);
    v93 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(0);
    v94 = *(v93 + 20);
    sub_23030EDC8();
    Calendar.endOfDay(for:)(v135, v92 + v94);
    v95 = *(v41 + 8);
    v95(v34, v37);
    sub_230061918(v28, &unk_27DB15AA0);
    v95(v143, v37);
    v91((v92 + v94), 0, 1, v39);
    return (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
  }
}

unint64_t REMCustomSmartListFilterDescriptor.FilterHashtags.init(hashtagLabelSpecifier:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (!*result)
  {
    v4 = 0;
    v3 = 1;
    goto LABEL_13;
  }

  if (v2 == 1)
  {
    v3 = 0;
    v2 = 0;
    v4 = 0;
LABEL_13:
    *a2 = v3;
    *(a2 + 8) = v2;
    *(a2 + 16) = v4;
    return result;
  }

  v12 = a2;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(v2 + 16);
  if (!v7)
  {

    v3 = MEMORY[0x277D84F90];
    v9 = *(v5 + 16);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_11:

    result = sub_230122CDC(v2);
    v2 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v3 = sub_23009D850(v7, 0);
  v8 = sub_23009DE30(&v13, (v3 + 32), v7, v2);

  result = sub_2300F525C();
  if (v8 != v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(v5 + 16);
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_8:
  v10 = sub_23009D850(v9, 0);
  v11 = sub_23009DE30(&v13, v10 + 4, v9, v5);
  result = sub_2300F525C();
  if (v11 == v9)
  {
    result = sub_230122CDC(v2);
    v2 = v10;
LABEL_12:
    v4 = (v6 ^ 1) & 1;
    a2 = v12;
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_230142B0C(uint64_t a1)
{
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate(0);
  v3 = MEMORY[0x28223BE20](Predicate);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v20 - v7);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  result = MEMORY[0x277D84FA0];
  v21 = MEMORY[0x277D84FA0];
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    while (1)
    {
      sub_2301453F8(v14, v11, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      sub_2301453F8(v11, v8, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v17 = 1 << swift_getEnumCaseMultiPayload();
      if ((v17 & 0xBE) != 0)
      {
        break;
      }

      if ((v17 & 0x141) != 0)
      {
        goto LABEL_9;
      }

      v19 = sub_230142B0C(*v8);

      sub_23014C934(v19);
LABEL_5:
      sub_2301454DC(v11, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v14 += v15;
      if (!--v13)
      {
        return v21;
      }
    }

    sub_2301454DC(v8, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
LABEL_9:
    sub_2301453F8(v11, v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_2301454DC(v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
          v16 = 32;
        }

        else
        {
          v16 = 4;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_2301454DC(v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        v16 = 1;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_2301454DC(v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        v16 = 64;
      }

      else
      {
        sub_2301454DC(v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        v16 = 2;
      }
    }

    else if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v16 = 128;
      }

      else if (EnumCaseMultiPayload == 9)
      {
        sub_2301454DC(v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        v16 = 512;
      }

      else
      {
        sub_2301454DC(v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        v16 = 1024;
      }
    }

    else if (EnumCaseMultiPayload == 5)
    {
      sub_2301454DC(v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v16 = 8;
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v16 = 16;
    }

    else
    {
      sub_2301454DC(v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v16 = 256;
    }

    sub_2300A9440(&v20, v16);
    goto LABEL_5;
  }

  return result;
}

uint64_t Sequence<>.postFetchPredicateTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15B18);
  sub_23030FBC8();
  return v1;
}

uint64_t sub_230142F54(uint64_t a1, uint64_t a2)
{
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate(0);
  MEMORY[0x28223BE20](Predicate);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2301453F8(a2, v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  v6 = 1 << swift_getEnumCaseMultiPayload();
  if ((v6 & 0xBE) != 0)
  {
    sub_2301454DC(v5, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  }

  else if ((v6 & 0x141) == 0)
  {
    v8 = sub_230142B0C(*v5);

    return sub_23014C934(v8);
  }

  REMCustomSmartListFilterDescriptor.PostFetchPredicate.postFetchPredicateType.getter(&v10);
  return sub_2300A9440(&v11, v10);
}