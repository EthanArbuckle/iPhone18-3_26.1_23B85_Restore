uint64_t sub_21D0FC878()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t TTRAccountsListsInteractor.cloudKitNetworkActivity(for:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [a1 accountTypeHost];
  *(swift_allocObject() + 16) = v2;
  v5 = v2;
  sub_21DBFB2CC();

  *a2 = v7 & 1;
  return result;
}

uint64_t storeEnumTagSinglePayload for TTRReminderPrintingHTMLGenerator.HTMLGenerationError(uint64_t result, unsigned int a2, unsigned int a3)
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

void static TTRAccountsListsViewModel.generateAccountsCapabilities(_:)(uint64_t *a1@<X8>)
{
  v106 = a1;
  v117 = sub_21DBF695C();
  v1 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v118 = &v104[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_21DBF68DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v104[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v130 = &v104[-v8];
  v131 = sub_21DBF69AC();
  v9 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v122 = &v104[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v123 = &v104[-v12];
  MEMORY[0x28223BE20](v13);
  v124 = &v104[-v14];
  MEMORY[0x28223BE20](v15);
  v125 = &v104[-v16];
  MEMORY[0x28223BE20](v17);
  v126 = &v104[-v18];
  MEMORY[0x28223BE20](v19);
  v21 = &v104[-v20];
  v22 = sub_21DBF69CC();
  v24 = v22;
  v25 = *(v22 + 16);
  v105 = v25 == 0;
  v127 = v22;
  v128 = v25;
  if (!v25)
  {
    LODWORD(v121) = 0;
    goto LABEL_18;
  }

  v26 = 0;
  v110 = v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v109 = v9 + 16;
  v27 = v4 + 16;
  v28 = v4 + 88;
  LODWORD(v120) = *MEMORY[0x277D452F8];
  v119 = *MEMORY[0x277D452F0];
  v115 = (v4 + 96);
  v114 = *MEMORY[0x277D45300];
  v112 = (v1 + 8);
  v113 = (v1 + 32);
  v121 = (v4 + 8);
  v107 = (v9 + 8);
  v108 = v21;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      goto LABEL_249;
    }

    v29 = *(v9 + 72);
    v111 = v26;
    (*(v9 + 16))(v21, v110 + v29 * v26, v131);
    v30 = sub_21DBF694C();
    v31 = v30;
    v129 = *(v30 + 16);
    if (v129)
    {
      break;
    }

LABEL_3:
    v26 = v111 + 1;
    v21 = v108;
    (*v107)(v108, v131);

    v24 = v127;
    if (v26 == v128)
    {
      LODWORD(v121) = 0;
      v25 = v128;
      goto LABEL_18;
    }
  }

  v32 = 0;
  v116 = v30;
  while (1)
  {
    if (v32 >= *(v31 + 16))
    {
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      if (qword_280D0F4D0 != -1)
      {
        swift_once();
      }

      v102 = sub_21DBF84BC();
      __swift_project_value_buffer(v102, qword_280D0F4D8);
      v103 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v103);
      sub_21DAEAB00("Unknown list type", 17, 2);
      __break(1u);
      return;
    }

    v34 = *(v4 + 16);
    v35 = v130;
    v34(v130, v31 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, v3);
    v34(v6, v35, v3);
    v36 = (*(v4 + 88))(v6, v3);
    if (v36 == v120)
    {
      break;
    }

    if (v36 == v119)
    {
      v33 = *v121;
      (*v121)(v130, v3);
      v33(v6, v3);
    }

    else
    {
      if (v36 != v114)
      {
        goto LABEL_250;
      }

      v37 = v4;
      v38 = v28;
      v39 = v27;
      (*v115)(v6, v3);
      v40 = v117;
      v41 = v118;
      (*v113)(v118, v6, v117);
      v42 = sub_21DBF694C();
      (*v112)(v41, v40);
      (*v121)(v130, v3);
      v43 = *(v42 + 16);

      v27 = v39;
      v28 = v38;
      v4 = v37;
      v31 = v116;
      if (v43)
      {
        (*v107)(v108, v131);

        goto LABEL_16;
      }
    }

    if (v129 == ++v32)
    {
      goto LABEL_3;
    }
  }

  v44 = *v121;
  (*v121)(v130, v3);
  (*v107)(v108, v131);
  v44(v6, v3);
LABEL_16:
  LODWORD(v121) = 1;
  v24 = v127;
  v25 = v128;
LABEL_18:
  v45 = 0;
  v129 = v9 + 8;
  v130 = (v9 + 16);
  v46 = v131;
  do
  {
    v47 = v45;
    if (v25 == v45)
    {
      break;
    }

    v48 = *(v24 + 16);
    if (v45 >= v48)
    {
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      v91 = v23;
      v92 = v23;
      v93 = v23;
LABEL_231:
      v95 = v23;
LABEL_233:
      v90 = 8;
LABEL_234:
      v48 |= v90;
LABEL_235:
      v94 = v48;
      if ((~v48 & v95) == 0)
      {
        goto LABEL_237;
      }

LABEL_236:
      v94 |= v95;
      goto LABEL_237;
    }

    v49 = v126;
    (*(v9 + 16))(v126, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v45++, v46);
    v50 = sub_21DBF693C();
    v51 = [v50 capabilities];
    v52 = [v51 supportsGroups];

    (*(v9 + 8))(v49, v46);
  }

  while (!v52);
  v126 = v47;
  v53 = 0;
  do
  {
    v54 = v53;
    if (v25 == v53)
    {
      break;
    }

    v48 = *(v24 + 16);
    if (v53 >= v48)
    {
      goto LABEL_222;
    }

    v55 = v125;
    v56 = v131;
    (*(v9 + 16))(v125, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v53++, v131);
    v57 = v25;
    v58 = v54;
    v59 = sub_21DBF693C();
    v60 = [v59 capabilities];
    v61 = [v60 supportsFlagged];

    v54 = v58;
    v25 = v57;

    (*(v9 + 8))(v55, v56);
  }

  while (!v61);
  v120 = v54;
  v62 = 0;
  do
  {
    v63 = v62;
    if (v128 == v62)
    {
      break;
    }

    v48 = *(v24 + 16);
    if (v62 >= v48)
    {
      goto LABEL_223;
    }

    v64 = v124;
    v65 = v131;
    (*(v9 + 16))(v124, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v62++, v131);
    v66 = sub_21DBF693C();
    v67 = [v66 capabilities];
    v68 = [v67 supportsAssignments];

    (*(v9 + 8))(v64, v65);
  }

  while (!v68);
  v69 = 0;
  do
  {
    v70 = v69;
    if (v128 == v69)
    {
      break;
    }

    v48 = *(v24 + 16);
    if (v69 >= v48)
    {
      goto LABEL_224;
    }

    v71 = v123;
    v72 = v131;
    (*(v9 + 16))(v123, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v69++, v131);
    v73 = sub_21DBF693C();
    v74 = [v73 capabilities];
    v75 = [v74 supportsTemplates];

    (*(v9 + 8))(v71, v72);
  }

  while (!v75);
  v76 = 0;
  while (1)
  {
    v77 = v76;
    v78 = v126;
    if (v128 == v76)
    {
      break;
    }

    v48 = *(v24 + 16);
    if (v76 >= v48)
    {
      goto LABEL_225;
    }

    v79 = v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v76;
    v80 = v122;
    v81 = v131;
    (*(v9 + 16))(v122, v79, v131);
    ++v76;
    v82 = sub_21DBF693C();
    v83 = [v82 capabilities];
    v84 = [v83 supportsPinnedLists];

    v85 = v80;
    v24 = v127;
    (*(v9 + 8))(v85, v81);
    if (v84)
    {

      v86 = 0;
      v48 = 4;
      v78 = v126;
      goto LABEL_40;
    }
  }

  v87 = v128 != 0;

  v48 = 4 * v87;
  v86 = v105;
LABEL_40:
  if (!v121)
  {
    v88 = v128;
    if (v128 == v78)
    {
      if (v128 != v120)
      {
        if (v128 == v63)
        {
          if (v128 == v70)
          {
            if (v128 == v77)
            {
              v23 = 0;
              v94 = 0;
              v91 = 0;
              v92 = 0;
              v95 = 0;
              v90 = 0;
              v93 = 2;
              if (v86)
              {
                goto LABEL_238;
              }

              goto LABEL_178;
            }

            v92 = 0;
            v96 = 0;
            v95 = 0;
            v90 = 0;
            v97 = 1;
            goto LABEL_186;
          }

          v99 = 0;
          v95 = 0;
          v90 = 0;
          v100 = 1;
          goto LABEL_135;
        }

        if (v128 != v70)
        {
          v94 = 0;
          v95 = 0;
          v90 = 0;
          v23 = (v128 != v77) << 6;
          v93 = 2;
          v92 = 16;
          v91 = 32;
          if (v86)
          {
            goto LABEL_238;
          }

          goto LABEL_178;
        }

        if (v128 == v77)
        {
          v23 = 0;
          v94 = 0;
          v91 = 0;
          v95 = 0;
          v90 = 0;
          v93 = 2;
          v92 = 16;
          if (v86)
          {
            goto LABEL_238;
          }

          goto LABEL_178;
        }

        v97 = 0;
        v96 = 0;
        v95 = 0;
        v90 = 0;
        v98 = 1;
        goto LABEL_205;
      }

      v89 = v128;
      if (v128 == v63)
      {
        if (v128 == v70)
        {
          if (v128 != v77)
          {
            v92 = 0;
            v93 = 0;
            v95 = 0;
            v90 = 0;
            v97 = 1;
            goto LABEL_175;
          }

          v94 = 0;
          v23 = 0;
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v95 = 0;
          v90 = 0;
          if (v86)
          {
            goto LABEL_245;
          }

          goto LABEL_178;
        }

        v93 = 0;
        v95 = 0;
        v90 = 0;
        v99 = 1;
        goto LABEL_123;
      }

      if (v128 != v70)
      {
        v95 = 0;
        v90 = 0;
        v101 = 1;
        if (v128 != v77)
        {
          goto LABEL_144;
        }

LABEL_151:
        v23 = 0;
        if (!v86)
        {
          v93 = 0;
          v92 = 16;
          v91 = 32;
          goto LABEL_178;
        }

        if (v121)
        {
          v93 = 0;
          v92 = 16;
          goto LABEL_154;
        }

        v92 = 16;
        v91 = 32;
        if (v101)
        {
          v94 = 16;
          goto LABEL_241;
        }

        goto LABEL_247;
      }

      v93 = 0;
      v96 = 1;
      if (v128 == v77)
      {
        v97 = 1;
        v95 = 0;
        goto LABEL_99;
      }

      v97 = 0;
      v92 = 16;
      v98 = 1;
      v95 = 0;
    }

    else
    {
      if (v128 != v120)
      {
        if (v128 == v63)
        {
          if (v128 == v70)
          {
            if (v128 == v77)
            {
              v23 = 0;
              v94 = 0;
              v91 = 0;
              v92 = 0;
              v90 = 0;
              v95 = 1;
              v93 = 2;
              if (v86)
              {
                goto LABEL_236;
              }

              goto LABEL_178;
            }

            v92 = 0;
            v96 = 0;
            v98 = 0;
            v90 = 0;
            v97 = 1;
            v93 = 2;
            v95 = 1;
            if (!v86)
            {
              goto LABEL_176;
            }

            goto LABEL_206;
          }

          v99 = 0;
          v100 = 0;
          v90 = 0;
          goto LABEL_134;
        }

        if (v128 != v70)
        {
          v94 = 0;
          v90 = 0;
          v23 = (v128 != v77) << 6;
          v95 = 1;
          v93 = 2;
          v92 = 16;
          v91 = 32;
          if (v86)
          {
            goto LABEL_236;
          }

          goto LABEL_178;
        }

        if (v128 == v77)
        {
          v23 = 0;
          v94 = 0;
          v91 = 0;
          v90 = 0;
          v95 = 1;
          v93 = 2;
          v92 = 16;
          if (v86)
          {
            goto LABEL_236;
          }

          goto LABEL_178;
        }

        v97 = 0;
        v96 = 0;
        v98 = 0;
        v90 = 0;
LABEL_204:
        v95 = 1;
        goto LABEL_205;
      }

      if (v128 == v63)
      {
        if (v128 == v70)
        {
          if (v128 == v77)
          {
            v23 = 0;
            v94 = 0;
            v91 = 0;
            v92 = 0;
            v93 = 0;
            v90 = 0;
            v95 = 1;
            if (v86)
            {
              goto LABEL_236;
            }

            goto LABEL_178;
          }

          v92 = 0;
          v93 = 0;
          v98 = 0;
          v90 = 0;
          v96 = 1;
          v97 = 1;
          v95 = 1;
          if (!v86)
          {
            goto LABEL_176;
          }

          goto LABEL_206;
        }

        v93 = 0;
        v100 = 0;
        v90 = 0;
        v99 = 1;
        v95 = 1;
LABEL_136:
        if (v88 != v77)
        {
          goto LABEL_124;
        }

        goto LABEL_137;
      }

      if (v128 != v70)
      {
        v101 = 0;
        v90 = 0;
LABEL_150:
        v95 = 1;
        if (v88 != v77)
        {
          goto LABEL_144;
        }

        goto LABEL_151;
      }

      v93 = 0;
      v97 = 0;
      v95 = 1;
      if (v128 == v77)
      {
LABEL_99:
        v90 = 0;
        goto LABEL_100;
      }

      v92 = 16;
      v96 = 1;
      v98 = 0;
    }

    v90 = 0;
    if (!v86)
    {
      goto LABEL_176;
    }

    goto LABEL_206;
  }

  v88 = v128;
  if (v128 != v78)
  {
    if (v128 == v120)
    {
      if (v128 == v63)
      {
        if (v128 == v70)
        {
          if (v128 == v77)
          {
            v23 = 0;
            v95 = 1;
            if (!v86)
            {
              v91 = 0;
              v92 = 0;
              v93 = 0;
              goto LABEL_233;
            }

            v91 = 0;
            v92 = 0;
            v93 = 0;
            v48 = 8;
            goto LABEL_235;
          }

          v92 = 0;
          v93 = 0;
          v98 = 0;
          v95 = 1;
          v90 = 8;
          v97 = 1;
          v96 = 1;
          if (!v86)
          {
            goto LABEL_176;
          }

          goto LABEL_206;
        }

        v93 = 0;
        v100 = 0;
        v95 = 1;
        v90 = 8;
        v99 = 1;
        goto LABEL_136;
      }

      if (v128 == v70)
      {
        v97 = 0;
        v95 = 1;
        v90 = 8;
        if (v128 != v77)
        {
          v93 = 0;
          v92 = 16;
          v96 = 1;
          v98 = 0;
          if (!v86)
          {
            goto LABEL_176;
          }

          goto LABEL_206;
        }

        goto LABEL_100;
      }

      v101 = 0;
      v90 = 8;
      goto LABEL_150;
    }

    if (v128 == v63)
    {
      if (v128 == v70)
      {
        if (v128 == v77)
        {
          v23 = 0;
          v95 = 1;
          v93 = 2;
          if (!v86)
          {
            v91 = 0;
            v92 = 0;
            goto LABEL_233;
          }

          v91 = 0;
          v92 = 0;
          v48 = 8;
          goto LABEL_235;
        }

        v92 = 0;
        v96 = 0;
        v98 = 0;
        v95 = 1;
        v90 = 8;
        v93 = 2;
        v97 = 1;
        if (!v86)
        {
          goto LABEL_176;
        }

        goto LABEL_206;
      }

      v99 = 0;
      v100 = 0;
      v90 = 8;
LABEL_134:
      v95 = 1;
LABEL_135:
      v93 = 2;
      goto LABEL_136;
    }

    if (v128 != v70)
    {
      v23 = (v128 != v77) << 6;
      v95 = 1;
      v93 = 2;
      v92 = 16;
      v91 = 32;
      if (!v86)
      {
        goto LABEL_233;
      }

      v48 = 8;
      goto LABEL_235;
    }

    if (v128 == v77)
    {
      v23 = 0;
      v95 = 1;
      v93 = 2;
      v92 = 16;
      if (!v86)
      {
        v91 = 0;
        goto LABEL_233;
      }

      v91 = 0;
      v48 = 8;
      goto LABEL_235;
    }

    v97 = 0;
    v96 = 0;
    v98 = 0;
    v90 = 8;
    goto LABEL_204;
  }

  if (v128 != v120)
  {
    if (v128 == v63)
    {
      if (v128 == v70)
      {
        if (v128 == v77)
        {
          v23 = 0;
          v93 = 2;
          if (!v86)
          {
            v91 = 0;
            v92 = 0;
            goto LABEL_231;
          }

          v90 = 8;
          v48 = 0;
          v91 = 0;
          v92 = 0;
          goto LABEL_107;
        }

        v92 = 0;
        v96 = 0;
        v95 = 0;
        v97 = 1;
        v90 = 8;
LABEL_186:
        v93 = 2;
        v98 = 1;
        if (!v86)
        {
          goto LABEL_176;
        }

        goto LABEL_206;
      }

      v99 = 0;
      v95 = 0;
      v100 = 1;
      v90 = 8;
      goto LABEL_135;
    }

    if (v128 != v70)
    {
      v95 = 0;
      v23 = (v128 != v77) << 6;
      v93 = 2;
      v92 = 16;
      v91 = 32;
      if (!v86)
      {
        goto LABEL_233;
      }

      v48 = 8;
      goto LABEL_235;
    }

    if (v128 == v77)
    {
      v23 = 0;
      v93 = 2;
      v92 = 16;
      if (!v86)
      {
        v91 = 0;
        goto LABEL_231;
      }

      v90 = 8;
      v48 = 0;
      v91 = 0;
      goto LABEL_107;
    }

    v97 = 0;
    v96 = 0;
    v95 = 0;
    v98 = 1;
    v90 = 8;
LABEL_205:
    v93 = 2;
    v92 = 16;
    if (!v86)
    {
      goto LABEL_176;
    }

    goto LABEL_206;
  }

  v89 = v128;
  if (v128 == v63)
  {
    if (v128 == v70)
    {
      if (v128 == v77)
      {
        v23 = 0;
        if (!v86)
        {
          goto LABEL_226;
        }

        v90 = 8;
        v48 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
LABEL_107:
        v95 = 0;
        goto LABEL_234;
      }

      v92 = 0;
      v93 = 0;
      v95 = 0;
      v97 = 1;
      v90 = 8;
LABEL_175:
      v96 = 1;
      v98 = 1;
      if (!v86)
      {
LABEL_176:
        v91 = 0;
LABEL_177:
        v23 = 64;
LABEL_178:
        if ((~v48 & v90) != 0)
        {
          goto LABEL_234;
        }

        goto LABEL_235;
      }

LABEL_206:
      if (v121)
      {
        v91 = 0;
        v23 = 64;
        v48 = v90;
        goto LABEL_235;
      }

      v94 = 0;
      if (v98)
      {
        v91 = 0;
        if (v96)
        {
          v23 = 64;
          if (v97)
          {
            goto LABEL_244;
          }

          goto LABEL_240;
        }

        v23 = 64;
        goto LABEL_238;
      }

      v91 = 0;
      v95 = 1;
LABEL_218:
      v23 = 64;
      goto LABEL_236;
    }

    v93 = 0;
    v95 = 0;
    v99 = 1;
    v90 = 8;
LABEL_123:
    v100 = 1;
    if (v89 != v77)
    {
LABEL_124:
      if (v86)
      {
        if ((v121 & 1) == 0)
        {
          v94 = 0;
          if (v100)
          {
            v92 = 0;
            v91 = 32;
            v23 = 64;
            if (v99)
            {
              goto LABEL_242;
            }

            goto LABEL_238;
          }

          v92 = 0;
          v95 = 1;
          v91 = 32;
          goto LABEL_218;
        }

        v48 = 0;
        v92 = 0;
LABEL_147:
        v91 = 32;
        v23 = 64;
        goto LABEL_234;
      }

      v92 = 0;
      goto LABEL_171;
    }

LABEL_137:
    v23 = 0;
    if (!v86)
    {
      v92 = 0;
      v91 = 32;
      goto LABEL_178;
    }

    if ((v121 & 1) == 0)
    {
      v94 = 0;
      if (v100)
      {
        v92 = 0;
        v91 = 32;
        if (v99)
        {
          goto LABEL_242;
        }

        goto LABEL_238;
      }

      v92 = 0;
      v95 = 1;
      v91 = 32;
      goto LABEL_236;
    }

    v92 = 0;
LABEL_154:
    v91 = 32;
    v48 = v90;
    goto LABEL_235;
  }

  if (v128 != v70)
  {
    v95 = 0;
    v101 = 1;
    v90 = 8;
    if (v128 == v77)
    {
      goto LABEL_151;
    }

LABEL_144:
    if (v86)
    {
      if ((v121 & 1) == 0)
      {
        v94 = 0;
        v92 = 16;
        v91 = 32;
        v23 = 64;
        if (v101)
        {
          goto LABEL_240;
        }

        v95 = 1;
        v93 = 0;
        goto LABEL_236;
      }

      v48 = 0;
      v93 = 0;
      v92 = 16;
      goto LABEL_147;
    }

    v93 = 0;
    v92 = 16;
LABEL_171:
    v91 = 32;
    goto LABEL_177;
  }

  v93 = 0;
  v96 = 1;
  v90 = 8;
  if (v128 != v77)
  {
    v97 = 0;
    v92 = 16;
    v98 = 1;
    v95 = 0;
    if (!v86)
    {
      goto LABEL_176;
    }

    goto LABEL_206;
  }

  v97 = 1;
  v95 = 0;
LABEL_100:
  v23 = 0;
  if (!v86)
  {
    v91 = 0;
    v93 = 0;
    v92 = 16;
    goto LABEL_178;
  }

  if (v121)
  {
    v91 = 0;
    v93 = 0;
    v92 = 16;
    v48 = v90;
    goto LABEL_235;
  }

  v92 = 16;
  if (v97)
  {
    v91 = 0;
    v94 = 16;
    goto LABEL_241;
  }

  v91 = 0;
LABEL_247:
  v93 = 0;
  v94 = 1;
LABEL_237:
  if ((~v94 & v93) == 0)
  {
    goto LABEL_239;
  }

LABEL_238:
  v94 |= v93;
LABEL_239:
  if ((~v94 & v92) == 0)
  {
    goto LABEL_241;
  }

LABEL_240:
  v94 |= v92;
LABEL_241:
  if ((~v94 & v91) == 0)
  {
    goto LABEL_243;
  }

LABEL_242:
  v94 |= v91;
LABEL_243:
  if ((~v94 & v23) == 0)
  {
    goto LABEL_245;
  }

LABEL_244:
  v94 |= v23;
LABEL_245:
  *v106 = v94;
}

uint64_t sub_21D0FDEBC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_21D0F5590(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_21D0F5590(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_21D0D523C(v9, v11 + v18 + v15 * v13, &qword_27CE58180);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_21D0FE068(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (v37 - v7);
  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21D0FE4D8(a1);
  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = v13;
  if ((v14 & 1) == 0)
  {

LABEL_12:
    sub_21D0D3954(a1, v40, &qword_27CE58180);
    return;
  }

  v37[1] = v2;
  v16 = sub_21DBF67AC();
  v17 = [v15 uuid];
  sub_21DBF568C();

  if (!*(v16 + 16) || (v18 = sub_21D0F55D0(v12), (v19 & 1) == 0))
  {

    (*(v10 + 8))(v12, v9);
    goto LABEL_14;
  }

  v20 = v9;
  v21 = *(*(v16 + 56) + 8 * v18);
  (*(v10 + 8))(v12, v20);

  if (v21 < 1)
  {
LABEL_14:
    sub_21D0D3954(a1, v40, &qword_27CE58180);

    return;
  }

  v22 = objc_opt_self();
  v23 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v24 = v15;
  v25 = [v23 initWithInteger_];
  v26 = [v22 localizedStringFromNumber:v25 numberStyle:1];

  v27 = sub_21DBFA16C();
  v29 = v28;

  *v8 = v24;
  v8[1] = v27;
  v8[2] = v29;
  v8[3] = v21;
  type metadata accessor for TTRAccountsListsViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  v30 = v8 + *(v4 + 52);
  *v30 = 0;
  v30[8] = -1;
  *(v8 + *(v4 + 56)) = MEMORY[0x277D84F90];
  v31 = v40;
  sub_21D0D3954(a1, v40, &qword_27CE58180);
  sub_21D0D3954(v8, v39, &qword_27CE58180);
  v32 = *(v4 + 56);
  v33 = *(v31 + v32);
  v34 = v24;
  sub_21DBF8E0C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_21D0FBE34(0, v33[2] + 1, 1, v33);
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_21D0FBE34(v35 > 1, v36 + 1, 1, v33);
  }

  sub_21D0CF7E0(v8, &qword_27CE58180);
  v33[2] = v36 + 1;
  sub_21D0D523C(v39, v33 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36, &qword_27CE58180);
  *(v40 + v32) = v33;
}

uint64_t sub_21D0FE4D8(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(a1, v4, type metadata accessor for TTRAccountsListsViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 4:
      v8 = *(v4 + 2);

      result = v8;
      break;
    case 15:
    case 16:
      return result;
    default:
      v7 = sub_21DBF56BC();
      (*(*(v7 - 8) + 8))(v4, v7);
LABEL_3:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_21D0FE664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D0FE6CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D0FE734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *initializeWithCopy for TTRAccountsListsViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 8u:
    case 0xAu:
      v6 = sub_21DBF56BC();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      goto LABEL_18;
    case 2u:
      v32 = sub_21DBF56BC();
      (*(*(v32 - 8) + 16))(a1, a2, v32);
      v33 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      *&a1[*(v33 + 20)] = *&a2[*(v33 + 20)];
      a1[*(v33 + 24)] = a2[*(v33 + 24)];
      sub_21DBF8E0C();
      goto LABEL_18;
    case 3u:
      v36 = sub_21DBF56BC();
      (*(*(v36 - 8) + 16))(a1, a2, v36);
      v37 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v37[5]] = a2[v37[5]];
      *&a1[v37[6]] = *&a2[v37[6]];
      v38 = v37[7];
      v39 = &a1[v38];
      v40 = &a2[v38];
      v42 = *v40;
      v41 = *(v40 + 1);
      *v39 = v42;
      *(v39 + 1) = v41;
      *&a1[v37[8]] = *&a2[v37[8]];
      a1[v37[9]] = a2[v37[9]];
      v43 = v37[10];
      v44 = &a1[v43];
      v45 = &a2[v43];
      v46 = *(v45 + 1);
      *v44 = *v45;
      *(v44 + 1) = v46;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_18;
    case 4u:
      v12 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v12;
      v13 = *(a2 + 2);
      *(a1 + 2) = v13;
      a1[24] = a2[24];
      a1[25] = a2[25];
      *(a1 + 26) = *(a2 + 26);
      *(a1 + 15) = *(a2 + 15);
      sub_21DBF8E0C();
      v14 = v13;
      goto LABEL_18;
    case 5u:
    case 6u:
      v51 = *a2;
      v52 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v52;
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 24);
      v53 = *(a2 + 6);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 6) = v53;
      v54 = *(a2 + 8);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 8) = v54;
      v55 = *(a2 + 9);
      v56 = *(a2 + 10);
      v57 = *(a2 + 11);
      v58 = *(a2 + 12);
      v73 = *(a2 + 14);
      v75 = *(a2 + 13);
      v71 = a2[120];
      v59 = v51;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D0FB960(v55, v56, v57, v58, v75, v73, v71);
      *(a1 + 9) = v55;
      *(a1 + 10) = v56;
      *(a1 + 11) = v57;
      *(a1 + 12) = v58;
      *(a1 + 13) = v75;
      *(a1 + 14) = v73;
      a1[120] = v71;
      v60 = *(a2 + 16);
      v61 = *(a2 + 17);
      LOBYTE(v54) = a2[144];
      sub_21D0FB9BC(v60, v61, v54);
      *(a1 + 16) = v60;
      *(a1 + 17) = v61;
      a1[144] = v54;
      *(a1 + 145) = *(a2 + 145);
      *(a1 + 152) = *(a2 + 152);
      v62 = *(a2 + 22);
      *(a1 + 21) = *(a2 + 21);
      *(a1 + 22) = v62;
      v63 = *(a2 + 24);
      *(a1 + 23) = *(a2 + 23);
      *(a1 + 24) = v63;
      v64 = *(a2 + 26);
      *(a1 + 25) = *(a2 + 25);
      *(a1 + 26) = v64;
      *(a1 + 108) = *(a2 + 108);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v65 = v63;
      sub_21DBF8E0C();
      goto LABEL_18;
    case 7u:
      v47 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v47;
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      v49 = *(a2 + 6);
      v48 = *(a2 + 7);
      *(a1 + 6) = v49;
      *(a1 + 7) = v48;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v50 = v49;
      goto LABEL_18;
    case 9u:
      v23 = *a2;
      v24 = *(a2 + 1);
      v25 = *(a2 + 2);
      v26 = *(a2 + 3);
      v27 = *(a2 + 4);
      v28 = *(a2 + 5);
      v29 = *(a2 + 6);
      v69 = *(a2 + 8);
      v70 = *(a2 + 9);
      v72 = *(a2 + 10);
      v74 = a2[88];
      v30 = *a2;
      v31 = *(a2 + 7);
      sub_21D5D5C84(v30, v24, v25, v26, v27, v28, v29, v31, v69, v70, v72, v74);
      *a1 = v23;
      *(a1 + 1) = v24;
      *(a1 + 2) = v25;
      *(a1 + 3) = v26;
      *(a1 + 4) = v27;
      *(a1 + 5) = v28;
      *(a1 + 6) = v29;
      *(a1 + 7) = v31;
      *(a1 + 8) = v69;
      *(a1 + 9) = v70;
      *(a1 + 10) = v72;
      a1[88] = v74;
      goto LABEL_18;
    case 0xBu:
      v11 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v11;
      sub_21DBF8E0C();
      goto LABEL_18;
    case 0xCu:
      v15 = sub_21DBF56BC();
      v16 = *(*(v15 - 8) + 16);
      v16(a1, a2, v15);
      v17 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
      v18 = &a1[v17];
      v19 = &a2[v17];
      v20 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v19, 1, v20))
      {
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
        memcpy(v18, v19, *(*(v22 - 8) + 64));
      }

      else
      {
        v16(v18, v19, v15);
        *&v18[*(v20 + 20)] = *&v19[*(v20 + 20)];
        v18[*(v20 + 24)] = v19[*(v20 + 24)];
        v68 = *(v21 + 56);
        sub_21DBF8E0C();
        v68(v18, 0, 1, v20);
      }

      goto LABEL_18;
    case 0xDu:
      v66 = sub_21DBF56BC();
      (*(*(v66 - 8) + 16))(a1, a2, v66);
      v67 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
      *&a1[*(v67 + 20)] = *&a2[*(v67 + 20)];
      a1[*(v67 + 24)] = a2[*(v67 + 24)];
      sub_21DBF8E0C();
      goto LABEL_18;
    case 0xEu:
      v7 = *a2;
      v8 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v8;
      v9 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v9;
      v10 = v7;
      sub_21DBF8E0C();
LABEL_18:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v34 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v34);
      break;
  }

  return result;
}

uint64_t sub_21D0FF05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  *((*(v9 + 48) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 48) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D0FF130(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (v2 == 255)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  else
  {
    v3 = *a2;
    v4 = result;
    sub_21D0FF19C(*a2, *(a2 + 8));
    *v4 = v3;
    *(v4 + 8) = v2;
    return v4;
  }

  return result;
}

id sub_21D0FF19C(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return result;
    }

    return result;
  }

  return sub_21DBF8E0C();
}

uint64_t sub_21D0FF1DC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  (*(*(*(a2 + 24) - 8) + 8))((*(v4 + 56) + a1 + *(*(*(a2 + 24) - 8) + 80)) & ~*(*(*(a2 + 24) - 8) + 80));
}

void destroy for TTRAccountsListsViewModel.Item(uint64_t a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 8u:
    case 0xAu:
      v2 = sub_21DBF56BC();
      v3 = *(*(v2 - 8) + 8);

      v3(a1, v2);
      return;
    case 2u:
      v4 = sub_21DBF56BC();
      (*(*(v4 - 8) + 8))(a1, v4);
      type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      goto LABEL_17;
    case 3u:
      v10 = sub_21DBF56BC();
      (*(*(v10 - 8) + 8))(a1, v10);
      type metadata accessor for TTRAccountsListsViewModel.SmartList(0);

      goto LABEL_17;
    case 4u:

      v9 = *(a1 + 16);
      goto LABEL_13;
    case 5u:
    case 6u:

      sub_21D1078C0(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
      sub_21D0FB9F4(*(a1 + 128), *(a1 + 136), *(a1 + 144));

      goto LABEL_17;
    case 7u:

      v9 = *(a1 + 48);
LABEL_13:

      return;
    case 9u:
      sub_21D5D60A0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
      return;
    case 0xBu:
      goto LABEL_17;
    case 0xCu:
      v5 = sub_21DBF56BC();
      v6 = *(*(v5 - 8) + 8);
      v6(a1, v5);
      v7 = a1 + *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
      v8 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
      if ((*(*(v8 - 8) + 48))(v7, 1, v8))
      {
        return;
      }

      v6(v7, v5);
LABEL_17:

      return;
    case 0xDu:
      v11 = sub_21DBF56BC();
      (*(*(v11 - 8) + 8))(a1, v11);
      type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
      goto LABEL_17;
    case 0xEu:

      goto LABEL_17;
    default:
      return;
  }
}

void destroy for TTRAccountsListsViewModel.AuxiliaryData(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != 255)
  {
    sub_21D0FF670(*a1, v1);
  }
}

void sub_21D0FF670(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
LABEL_4:

    return;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    goto LABEL_4;
  }
}

char *sub_21D0FF6B0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

uint64_t TTRListType.PredefinedSmartListsDisplayOrder.orderingIncludingAllPossibleSmartLists.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    if (byte_282EA6970[v1 + 32] == 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21D0FF89C(0, *(v3 + 16) + 1, 1);
      }

      v5 = *(v3 + 16);
      v4 = *(v3 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_21D0FF89C((v4 > 1), v5 + 1, 1);
      }

      *(v3 + 16) = v5 + 1;
      *(v3 + v5 + 32) = 5;
    }

    ++v1;
  }

  while (v1 != 7);
  sub_21DBF8E0C();
  sub_21D0FF8CC(v3);
  return v2;
}

char *sub_21D0FF89C(char *a1, int64_t a2, char a3)
{
  result = sub_21D0FF6B0(a1, a2, a3, *v3, &qword_27CE58880);
  *v3 = result;
  return result;
}

uint64_t sub_21D0FF8CC(uint64_t result)
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

  result = sub_21D0F4EB4(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_21D0FF9B8(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D178);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v10);
  v30 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v29 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = (a3 + 32);
  v26 = v13;
  v18 = (v13 + 48);
  v19 = MEMORY[0x277D84F90];
  v27 = v10;
  v28 = a2;
  while (1)
  {
    v20 = *v17++;
    v31 = v20;
    a1(&v31, v14);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_21D0CF7E0(v9, &qword_27CE5D178);
    }

    else
    {
      v21 = v29;
      sub_21D100F60(v9, v29, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      sub_21D100F60(v21, v30, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_21D10109C(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_21D10109C(v22 > 1, v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      sub_21D100F60(v30, v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v10 = v27;
    }

    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_21D0FFC80@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v10 = *a1;
  v8 = v5;
  v9 = v4;
  return static TTRAccountsListsViewModel.generatePredefinedSmartList(with:reminderCounts:capabilities:smartListsVisibility:isEditing:)(&v10, v3, &v9, &v8, v6, a2);
}

uint64_t static TTRAccountsListsViewModel.generatePredefinedSmartList(with:reminderCounts:capabilities:smartListsVisibility:isEditing:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v192 = a5;
  v198 = a4;
  v199 = a6;
  v184 = a3;
  v193 = a2;
  v194 = a1;
  v6 = sub_21DBF676C();
  v189 = *(v6 - 8);
  v190 = v6;
  MEMORY[0x28223BE20](v6);
  v183 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v180 = &v180 - v9;
  MEMORY[0x28223BE20](v10);
  v182 = &v180 - v11;
  MEMORY[0x28223BE20](v12);
  v187 = &v180 - v13;
  MEMORY[0x28223BE20](v14);
  v186 = (&v180 - v15);
  MEMORY[0x28223BE20](v16);
  v185 = &v180 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v180 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v180 - v22;
  v24 = sub_21DBF56BC();
  v25 = *(v24 - 8);
  v200 = v24;
  v201 = v25;
  MEMORY[0x28223BE20](v24);
  v181 = (&v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v188 = &v180 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v180 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v180 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v180 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v180 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v180 - v42;
  v44 = sub_21DBF563C();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v180 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v197);
  v195 = &v180 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v49;
  v50 = *v194;
  v198 = *v198;
  if (v50 > 2)
  {
    if (v50 > 4)
    {
      v52 = v197;
      v53 = v195;
      if (v50 != 5)
      {
        v79 = v199;
        v125 = v200;
        if (qword_280D14F40 != -1)
        {
          swift_once();
        }

        v126 = __swift_project_value_buffer(v125, qword_280D14F48);
        v127 = *(v201 + 16);
        v128 = v181;
        v127(v181, v126, v125);
        v129 = v198;
        if (v198[2] && (v130 = sub_21D10186C(6u), (v131 & 1) != 0))
        {
          v132 = *(v129[7] + v130);
        }

        else
        {
          v132 = 0;
        }

        v127(v53, v128, v125);
        *(v53 + v52[5]) = 6;
        *(v53 + v52[6]) = 0;
        v149 = objc_opt_self();
        v150 = sub_21DBFABEC();
        v151 = [v149 localizedStringFromNumber:v150 numberStyle:1];

        v152 = sub_21DBFA16C();
        v154 = v153;

        (*(v201 + 8))(v128, v125);
        v194 = 0;
        v155 = (v53 + v52[7]);
        *v155 = v152;
        v155[1] = v154;
        *(v53 + v52[8]) = 0;
        *(v53 + v52[9]) = v132;
        v156 = (v53 + v52[10]);
        *v156 = 0;
        v156[1] = 0;
        if (v192)
        {
          goto LABEL_73;
        }

        goto LABEL_70;
      }

      v191 = 5;
      v79 = v199;
      v54 = v200;
      if (qword_280D19F80 != -1)
      {
        swift_once();
      }

      v82 = sub_21DBFA12C();
      CanShowSiriSuggestions = SGAppCanShowSiriSuggestions(v82);

      if (CanShowSiriSuggestions)
      {
        v84 = 0;
      }

      else
      {
        v84 = 2;
      }

      LODWORD(v187) = v84;
      v85 = v198;
      v86 = v188;
      if (qword_280D19B28 != -1)
      {
        swift_once();
      }

      v87 = __swift_project_value_buffer(v54, qword_280D19B30);
      v88 = *(v201 + 16);
      v88(v86, v87, v54);
      v194 = sub_21DBF678C();
      if (v85[2])
      {
        v89 = sub_21D10186C(5u);
        if (v90)
        {
          v66 = *(v85[7] + v89);
LABEL_45:
          v88(v53, v86, v54);
          v62 = 0;
          goto LABEL_55;
        }
      }
    }

    else
    {
      v51 = *v184;
      v191 = v50;
      v52 = v197;
      v53 = v195;
      if (v50 == 3)
      {
        if (qword_280D19C08 != -1)
        {
          swift_once();
        }

        LODWORD(v187) = ~v51 & 2;
        v54 = v200;
        v55 = __swift_project_value_buffer(v200, qword_280D19C10);
        v56 = *(v201 + 16);
        v188 = v34;
        v186 = v56;
        v56(v34, v55, v54);
        v57 = v180;
        sub_21DBF67CC();
        v194 = sub_21DBF673C();
        v58 = *(v189 + 8);
        v59 = v57;
        v60 = v190;
        v58(v59, v190);
        v61 = v183;
        sub_21DBF67CC();
        v62 = sub_21DBF675C();
        v58(v61, v60);
        v63 = v198;
        if (v198[2] && (v64 = sub_21D10186C(3u), (v65 & 1) != 0))
        {
          v66 = *(v63[7] + v64);
        }

        else
        {
          v66 = 0;
        }

        v86 = v188;
        v186(v53, v188, v54);
        v79 = v199;
LABEL_55:
        *(v53 + v52[5]) = v191;
        *(v53 + v52[6]) = v194;
        v141 = objc_opt_self();
        v142 = sub_21DBFABEC();
        v143 = [v141 localizedStringFromNumber:v142 numberStyle:1];

        v144 = sub_21DBFA16C();
        v146 = v145;

        (*(v201 + 8))(v86, v54);
        v147 = (v53 + v52[7]);
        *v147 = v144;
        v147[1] = v146;
        *(v53 + v52[8]) = v62;
        *(v53 + v52[9]) = v66;
        v148 = (v53 + v52[10]);
        *v148 = 0;
        v148[1] = 0;
        if (v187)
        {
LABEL_74:
          sub_21D101450(v53, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v178 = 1;
          return (*(v196 + 56))(v79, v178, 1, v52);
        }

LABEL_64:
        if (v192)
        {
          goto LABEL_65;
        }

LABEL_70:
        v177 = *(v53 + v52[9]);
        if (v177 >= 2 && (v177 == 2 || v194 <= 0))
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      v86 = v31;
      v79 = v199;
      if (qword_280D19BE0 != -1)
      {
        swift_once();
      }

      LODWORD(v187) = ~(v51 >> 3) & 2;
      v54 = v200;
      v121 = __swift_project_value_buffer(v200, qword_280D19BE8);
      v88 = *(v201 + 16);
      v88(v31, v121, v54);
      v194 = sub_21DBF677C();
      v122 = v198;
      if (v198[2])
      {
        v123 = sub_21D10186C(4u);
        if (v124)
        {
          v66 = *(v122[7] + v123);
          goto LABEL_45;
        }
      }
    }

    v66 = 3;
    goto LABEL_45;
  }

  v181 = v45;
  v194 = v44;
  v67 = v185;
  v68 = v186;
  v69 = v187;
  v188 = v37;
  v183 = v23;
  v184 = v20;
  v191 = v50;
  if (!v50)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v52 = v197;
    v91 = v200;
    if (qword_280D1B878 != -1)
    {
      swift_once();
    }

    v92 = qword_280D1B880;
    v93 = sub_21DBF55BC();
    v94 = [v92 stringFromDate_];

    v95 = sub_21DBFA16C();
    v187 = v96;
    v188 = v95;

    v181[1](v47, v194);
    v97 = v183;
    if (qword_280D19C30 != -1)
    {
      swift_once();
    }

    v98 = __swift_project_value_buffer(v91, qword_280D19C38);
    v99 = *(v201 + 16);
    v99(v43, v98, v91);
    sub_21DBF67BC();
    v194 = sub_21DBF673C();
    v100 = v190;
    v101 = *(v189 + 8);
    v101(v97, v190);
    v102 = v184;
    sub_21DBF67BC();
    v103 = sub_21DBF675C();
    v101(v102, v100);
    v104 = v198;
    v53 = v195;
    if (v198[2])
    {
      v105 = sub_21D10186C(0);
      v106 = v188;
      if (v107)
      {
        v108 = *(v104[7] + v105);
      }

      else
      {
        v108 = 0;
      }
    }

    else
    {
      v108 = 0;
      v106 = v188;
    }

    v157 = v200;
    v99(v53, v43, v200);
    *(v53 + v52[5]) = 0;
    *(v53 + v52[6]) = v194;
    v158 = objc_opt_self();
    v159 = sub_21DBFABEC();
    v160 = [v158 localizedStringFromNumber:v159 numberStyle:1];

    v161 = sub_21DBFA16C();
    v163 = v162;

    (*(v201 + 8))(v43, v157);
    v164 = (v53 + v52[7]);
    *v164 = v161;
    v164[1] = v163;
    *(v53 + v52[8]) = v103;
    *(v53 + v52[9]) = v108;
    v165 = (v53 + v52[10]);
    v166 = v187;
    *v165 = v106;
    v165[1] = v166;
    v79 = v199;
    goto LABEL_64;
  }

  v70 = v200;
  if (v50 == 1)
  {
    v53 = v195;
    if (qword_280D19B50 != -1)
    {
      swift_once();
    }

    v71 = __swift_project_value_buffer(v70, qword_280D19B58);
    v72 = *(v201 + 16);
    v188 = v40;
    v72(v40, v71, v70);
    sub_21DBF67FC();
    v194 = sub_21DBF673C();
    v73 = *(v189 + 8);
    v74 = v190;
    v73(v67, v190);
    sub_21DBF67FC();
    v75 = sub_21DBF675C();
    v73(v68, v74);
    v76 = v198;
    v77 = v198[2];
    v193 = v75;
    if (v77)
    {
      v78 = sub_21D10186C(1u);
      v79 = v199;
      v52 = v197;
      if (v80)
      {
        v81 = *(v76[7] + v78);
      }

      else
      {
        v81 = 0;
      }
    }

    else
    {
      v81 = 0;
      v79 = v199;
      v52 = v197;
    }

    v167 = v200;
    v168 = v188;
    v72(v53, v188, v200);
    *(v53 + v52[5]) = 1;
    *(v53 + v52[6]) = v194;
    v169 = objc_opt_self();
    v170 = sub_21DBFABEC();
    v171 = [v169 localizedStringFromNumber:v170 numberStyle:1];

    v172 = sub_21DBFA16C();
    v174 = v173;

    (*(v201 + 8))(v168, v167);
    v175 = (v53 + v52[7]);
    *v175 = v172;
    v175[1] = v174;
    *(v53 + v52[8]) = v193;
    *(v53 + v52[9]) = v81;
  }

  else
  {
    v53 = v195;
    if (qword_280D199A8 != -1)
    {
      swift_once();
    }

    v109 = __swift_project_value_buffer(v70, qword_280D199B0);
    v110 = *(v201 + 16);
    v110(v188, v109, v70);
    v111 = v69;
    sub_21DBF679C();
    v194 = sub_21DBF673C();
    v112 = *(v189 + 8);
    v113 = v111;
    v114 = v190;
    v112(v113, v190);
    v115 = v182;
    sub_21DBF679C();
    v116 = sub_21DBF675C();
    v112(v115, v114);
    v117 = v198;
    v79 = v199;
    v52 = v197;
    if (v198[2] && (v118 = sub_21D10186C(2u), (v119 & 1) != 0))
    {
      v120 = *(v117[7] + v118);
    }

    else
    {
      v120 = 0;
    }

    v133 = v188;
    v110(v53, v188, v70);
    *(v53 + v52[5]) = 2;
    *(v53 + v52[6]) = v194;
    v134 = objc_opt_self();
    v135 = sub_21DBFABEC();
    v136 = [v134 localizedStringFromNumber:v135 numberStyle:1];

    v137 = sub_21DBFA16C();
    v139 = v138;

    (*(v201 + 8))(v133, v70);
    v140 = (v53 + v52[7]);
    *v140 = v137;
    v140[1] = v139;
    *(v53 + v52[8]) = v116;
    *(v53 + v52[9]) = v120;
  }

  v176 = (v53 + v52[10]);
  *v176 = 0;
  v176[1] = 0;
  if ((v192 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_65:
  if (v191 == 5)
  {
    goto LABEL_74;
  }

LABEL_73:
  sub_21D100E28(v53, v79, type metadata accessor for TTRAccountsListsViewModel.SmartList);
  v178 = 0;
  return (*(v196 + 56))(v79, v178, 1, v52);
}

void sub_21D100D6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_21DBFA12C();
  [v0 setDateFormat_];

  qword_280D1B880 = v0;
}

uint64_t sub_21D100DE0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21DBF56BC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21DBF56AC();
}

uint64_t sub_21D100E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D100EA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF56BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D100F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D100FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

size_t sub_21D1010C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_21D1012D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D101330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D101390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D1013F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D101450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for TTRAccountsListsViewModel.SmartList(uint64_t a1)
{
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t SGAppCanShowSiriSuggestions(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

uint64_t sub_21D1015B4(uint64_t result, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 32);
    while (1)
    {
      v8 = *v7++;
      v9 = v8;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

unint64_t sub_21D101650(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v4 = *a2;
  v5 = 1;
  if (v4 > 2)
  {
    if (*a2 > 4u)
    {
      if (v4 == 5)
      {
        if (qword_280D19F80 != -1)
        {
          swift_once();
        }

        v6 = sub_21DBFA12C();
        CanShowSiriSuggestions = SGAppCanShowSiriSuggestions(v6);

        if (CanShowSiriSuggestions)
        {
          v5 = sub_21DBF678C() > 0;
        }

        else
        {
          v5 = 0;
        }
      }
    }

    else if (v4 == 3)
    {
      v5 = (a3 & 2) != 0;
    }

    else
    {
      v5 = (a3 & 0x10) != 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  result = sub_21D10175C(v5, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v10;
  return result;
}

unint64_t sub_21D10175C(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21D10186C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_21D226480();
      result = v17;
      goto LABEL_8;
    }

    sub_21D101C6C(v14, a3 & 1);
    result = sub_21D10186C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_21DBFC70C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1 & 1;
  }

  else
  {

    return sub_21D101FC0(result, a2, a1 & 1, v19);
  }

  return result;
}

unint64_t sub_21D10186C(unsigned __int8 a1)
{
  v2 = sub_21D1018B0();

  return sub_21D1019DC(a1, v2);
}

uint64_t sub_21D1018B0()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

unint64_t sub_21D1019DC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x656C756465686373;
          }

          else
          {
            v8 = 7105633;
          }

          if (v7 == 1)
          {
            v9 = 0xE900000000000064;
          }

          else
          {
            v9 = 0xE300000000000000;
          }
        }

        else
        {
          v9 = 0xE500000000000000;
          v8 = 0x7961646F74;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x6E756F4669726973;
          v9 = 0xEF737070416E4964;
        }

        else
        {
          v8 = 0x6574656C706D6F63;
          v9 = 0xE900000000000064;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x64656767616C66;
        }

        else
        {
          v8 = 0x64656E6769737361;
        }

        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      v10 = 0x6E756F4669726973;
      if (v6 != 5)
      {
        v10 = 0x6574656C706D6F63;
      }

      v11 = 0xEF737070416E4964;
      if (v6 != 5)
      {
        v11 = 0xE900000000000064;
      }

      v12 = 0x64656E6769737361;
      if (v6 == 3)
      {
        v12 = 0x64656767616C66;
      }

      v13 = 0xE700000000000000;
      if (v6 != 3)
      {
        v13 = 0xE800000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x656C756465686373;
      if (v6 != 1)
      {
        v14 = 7105633;
      }

      v15 = 0xE300000000000000;
      if (v6 == 1)
      {
        v15 = 0xE900000000000064;
      }

      if (!v6)
      {
        v14 = 0x7961646F74;
        v15 = 0xE500000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_21DBFC64C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_21D101C6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58188);
  result = sub_21DBFC3EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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
        goto LABEL_33;
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

    if (v30)
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_21D101FC0(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

void static TTRAccountsListsViewModel.generatePinnedLists(orderedPinnedLists:visiblePredefinedSmartLists:capabilities:pinnedListsContactsData:reminderCounts:includesNonEditablePredefinedSmartList:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, int a8)
{
  v192 = a8;
  v188 = a7;
  v178 = a6;
  v193 = a1;
  v194 = a2;
  v190 = sub_21DBF676C();
  v11 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v187 = &v173[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v186 = &v173[-v14];
  MEMORY[0x28223BE20](v15);
  v185 = &v173[-v16];
  v17 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v217 = *(v17 - 8);
  v218 = v17;
  MEMORY[0x28223BE20](v17);
  v189 = &v173[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v173[-v20];
  MEMORY[0x28223BE20](v22);
  v184 = &v173[-v23];
  MEMORY[0x28223BE20](v24);
  v183 = &v173[-v25];
  MEMORY[0x28223BE20](v26);
  v182 = &v173[-v27];
  MEMORY[0x28223BE20](v28);
  v181 = &v173[-v29];
  MEMORY[0x28223BE20](v30);
  v180 = &v173[-v31];
  MEMORY[0x28223BE20](v32);
  v179 = &v173[-v33];
  v34 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  v196 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v211 = &v173[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v36);
  v214 = &v173[-v37];
  MEMORY[0x28223BE20](v38);
  v206 = &v173[-v39];
  MEMORY[0x28223BE20](v40);
  v42 = &v173[-v41];
  MEMORY[0x28223BE20](v43);
  v208 = &v173[-v44];
  MEMORY[0x28223BE20](v45);
  v47 = &v173[-v46];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D178);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v173[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v51);
  v207 = &v173[-v52];
  v210 = sub_21DBF68BC();
  v213 = *(v210 - 8);
  v53 = MEMORY[0x28223BE20](v210);
  v209 = &v173[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = *a5;
  v212 = v34;
  if ((v55 & 0x40) == 0)
  {
    v56 = *(a4 + 16);
    v57 = MEMORY[0x277D84F90];
    v215 = a4;
    if (v56)
    {
      v58 = *(v196 + 72);
      v216 = (*(v196 + 80) + 32) & ~*(v196 + 80);
      v59 = a4 + v216;
      v60 = v206;
      do
      {
        sub_21D0FE734(v59, v42, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        if (v42[*(v34 + 20)] == 5)
        {
          sub_21D101450(v42, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        }

        else
        {
          sub_21D100E28(v42, v60, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v232 = v57;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21D18F738(0, *(v57 + 16) + 1, 1);
            v60 = v206;
            v57 = v232;
          }

          v63 = *(v57 + 16);
          v62 = *(v57 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_21D18F738(v62 > 1, v63 + 1, 1);
            v60 = v206;
            v57 = v232;
          }

          *(v57 + 16) = v63 + 1;
          sub_21D100E28(v60, v57 + v216 + v63 * v58, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v34 = v212;
        }

        v59 += v58;
        --v56;
      }

      while (v56);
    }

    v142 = *(v57 + 16);
    if (v142)
    {
      *&v232 = MEMORY[0x277D84F90];
      sub_21D18F6B0(0, v142, 0);
      v143 = v232;
      v144 = v57 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
      v145 = *(v196 + 72);
      do
      {
        sub_21D0FE734(v144, v21, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        swift_storeEnumTagMultiPayload();
        *&v232 = v143;
        v147 = v143[2];
        v146 = v143[3];
        if (v147 >= v146 >> 1)
        {
          sub_21D18F6B0(v146 > 1, v147 + 1, 1);
          v143 = v232;
        }

        v143[2] = v147 + 1;
        sub_21D100E28(v21, v143 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v147, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
        v144 += v145;
        --v142;
      }

      while (v142);
    }

    else
    {

      v143 = MEMORY[0x277D84F90];
    }

    v245 = v143;
    v195 = MEMORY[0x277D84F98];
    a4 = v215;
    goto LABEL_67;
  }

  v245 = MEMORY[0x277D84F90];
  v64 = *(a3 + 16);
  if (!v64)
  {
    v195 = MEMORY[0x277D84F98];
LABEL_67:
    v69 = v214;
    goto LABEL_68;
  }

  v65 = 0;
  v206 = (v213 + 16);
  v205 = v213 + 88;
  v204 = *MEMORY[0x277D452D0];
  v203 = (v213 + 96);
  v199 = (v196 + 56);
  v198 = (v196 + 48);
  v177 = *MEMORY[0x277D452D8];
  v195 = MEMORY[0x277D84F98];
  v176 = (v11 + 16);
  v191 = MEMORY[0x277D84F90];
  v174 = *MEMORY[0x277D452C8];
  v175 = (v11 + 8);
  v215 = a4;
  v200 = v50;
  v201 = a3;
  v202 = v64;
  v197 = v47;
  while (2)
  {
    v66 = v65;
    while (1)
    {
      if (v66 >= v64)
      {
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (__OFADD__(v66, 1))
      {
        goto LABEL_91;
      }

      v216 = v66 + 1;
      v70 = v213;
      v72 = v209;
      v71 = v210;
      (*(v213 + 16))(v209, a3 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v66, v210, v53);
      v73 = (*(v70 + 88))(v72, v71);
      if (v73 != v204)
      {
        break;
      }

      v74 = v34;
      (*v203)(v72, v71);
      v75 = *v72;
      v76 = *(a4 + 16);
      if (v76)
      {
        v77 = v215 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
        v78 = *(v196 + 72);
        while (1)
        {
          sub_21D0FE734(v77, v47, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v79 = sub_21DBFA16C();
          v81 = v80;
          if (v79 == sub_21DBFA16C() && v81 == v82)
          {
            break;
          }

          v84 = sub_21DBFC64C();

          if (v84)
          {
            goto LABEL_30;
          }

          sub_21D101450(v47, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v77 += v78;
          if (!--v76)
          {
            goto LABEL_28;
          }
        }

LABEL_30:
        v86 = v207;
        sub_21D100E28(v47, v207, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v85 = *v199;
        v87 = v86;
        v88 = 0;
      }

      else
      {
LABEL_28:
        v85 = *v199;
        v86 = v207;
        v87 = v207;
        v88 = 1;
      }

      v89 = v74;
      v85(v87, v88, 1, v74);
      v90 = v200;
      sub_21D0D3954(v86, v200, &qword_27CE5D178);
      v91 = (*v198)(v90, 1, v74);
      v92 = v201;
      v93 = v208;
      if (v91 == 1)
      {
        v67 = v74;
        sub_21D0CF7E0(v86, &qword_27CE5D178);

        v68 = v90;
      }

      else
      {
        sub_21D100E28(v90, v208, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v67 = v74;
        if (v93[*(v74 + 20)] != 5)
        {
          v121 = v179;
          sub_21D0FE734(v93, v179, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          swift_storeEnumTagMultiPayload();
          sub_21D0FE734(v121, v180, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          a3 = v92;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_21D103860(0, v191[2] + 1, 1, v191);
          }

          a4 = v215;
          v123 = v191[2];
          v122 = v191[3];
          v34 = v89;
          if (v123 >= v122 >> 1)
          {
            v191 = sub_21D103860(v122 > 1, v123 + 1, 1, v191);
          }

          v47 = v197;

          sub_21D101450(v179, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          sub_21D101450(v208, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          sub_21D0CF7E0(v86, &qword_27CE5D178);
          v124 = v191;
          v191[2] = v123 + 1;
          sub_21D100E28(v180, v124 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v123, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          v245 = v124;
          v64 = v202;
          goto LABEL_56;
        }

        sub_21D101450(v93, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v68 = v86;
      }

      a3 = v92;
      sub_21D0CF7E0(v68, &qword_27CE5D178);
      a4 = v215;
      v66 = v216;
      v64 = v202;
      v69 = v214;
      v34 = v67;
      v47 = v197;
      if (v216 == v202)
      {
        goto LABEL_68;
      }
    }

    if (v73 == v177)
    {
      (*v203)(v72, v71);
      v94 = *v72;
      v95 = [v94 objectID];
      v96 = v95;
      v97 = v178;
      if (*(v178 + 16) && (v98 = sub_21D17E07C(v95), (v99 & 1) != 0))
      {
        v100 = *(*(v97 + 56) + 8 * v98);
        sub_21DBF8E0C();
      }

      else
      {

        v100 = 0;
      }

      v125 = v185;
      MEMORY[0x223D3EFA0](v94);
      *&v232 = v100;
      v126 = v186;
      (*v176)(v186, v125, v190);
      v127 = v94;
      TTRAccountsListsViewModel.List.init(remList:sharingContactsData:reminderCounts:)(v127, &v232, v126, &v219);
      v242 = v229;
      v243 = v230;
      v244[0] = v231[0];
      *(v244 + 10) = *(v231 + 10);
      v238 = v225;
      v239 = v226;
      v240 = v227;
      v241 = v228;
      v234 = v221;
      v235 = v222;
      v236 = v223;
      v237 = v224;
      v232 = v219;
      v233 = v220;
      v128 = [v127 objectID];
      v129 = v195;
      v130 = swift_isUniquelyReferenced_nonNull_native();
      *&v219 = v129;
      sub_21D4799D0(v127, 0, v128, v130);

      v131 = v219;
      v132 = v243;
      v133 = v181;
      *(v181 + 10) = v242;
      v133[11] = v132;
      v133[12] = v244[0];
      *(v133 + 202) = *(v244 + 10);
      v134 = v239;
      v133[6] = v238;
      v133[7] = v134;
      v135 = v241;
      v133[8] = v240;
      v133[9] = v135;
      v136 = v235;
      v133[2] = v234;
      v133[3] = v136;
      v137 = v237;
      v133[4] = v236;
      v133[5] = v137;
      v138 = v233;
      *v133 = v232;
      v133[1] = v138;
      swift_storeEnumTagMultiPayload();
      sub_21D0FE734(v133, v182, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      sub_21D567868(&v232, &v219);
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v202;
      v195 = v131;
      if ((v139 & 1) == 0)
      {
        v191 = sub_21D103860(0, v191[2] + 1, 1, v191);
      }

      v141 = v191[2];
      v140 = v191[3];
      if (v141 >= v140 >> 1)
      {
        v191 = sub_21D103860(v140 > 1, v141 + 1, 1, v191);
      }

      sub_21D1077D8(&v232);

      sub_21D101450(v181, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      (*v175)(v185, v190);
      v118 = v191;
      v191[2] = v141 + 1;
      v119 = v118 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v141;
      v120 = v182;
    }

    else
    {
      if (v73 != v174)
      {
        if (qword_280D0F4D0 != -1)
        {
          swift_once();
        }

        v171 = sub_21DBF84BC();
        __swift_project_value_buffer(v171, qword_280D0F4D8);
        v172 = MEMORY[0x277D84F90];
        sub_21D17716C(MEMORY[0x277D84F90]);
        sub_21D17716C(v172);
        sub_21DAEAB00("Unknown list type", 17, 2);
        __break(1u);
        return;
      }

      (*v203)(v72, v71);
      v101 = *v72;
      v102 = v187;
      MEMORY[0x223D3EF90]();
      v103 = v186;
      (*v176)(v186, v102, v190);
      TTRAccountsListsViewModel.List.init(remSmartList:reminderCounts:parentList:)(v101, v103, 0, &v219);
      v242 = v229;
      v243 = v230;
      v244[0] = v231[0];
      *(v244 + 10) = *(v231 + 10);
      v238 = v225;
      v239 = v226;
      v240 = v227;
      v241 = v228;
      v234 = v221;
      v235 = v222;
      v236 = v223;
      v237 = v224;
      v232 = v219;
      v233 = v220;
      v104 = [v101 objectID];
      v105 = v195;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *&v219 = v105;
      sub_21D4799D0(v101, 1, v104, v106);

      v107 = v219;
      v108 = v243;
      v109 = v183;
      *(v183 + 10) = v242;
      v109[11] = v108;
      v109[12] = v244[0];
      *(v109 + 202) = *(v244 + 10);
      v110 = v239;
      v109[6] = v238;
      v109[7] = v110;
      v111 = v241;
      v109[8] = v240;
      v109[9] = v111;
      v112 = v235;
      v109[2] = v234;
      v109[3] = v112;
      v113 = v237;
      v109[4] = v236;
      v109[5] = v113;
      v114 = v233;
      *v109 = v232;
      v109[1] = v114;
      swift_storeEnumTagMultiPayload();
      sub_21D0FE734(v109, v184, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      sub_21D567868(&v232, &v219);
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v195 = v107;
      if ((v115 & 1) == 0)
      {
        v191 = sub_21D103860(0, v191[2] + 1, 1, v191);
      }

      v117 = v191[2];
      v116 = v191[3];
      if (v117 >= v116 >> 1)
      {
        v191 = sub_21D103860(v116 > 1, v117 + 1, 1, v191);
      }

      sub_21D1077D8(&v232);

      sub_21D101450(v183, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      (*v175)(v187, v190);
      v118 = v191;
      v191[2] = v117 + 1;
      v119 = v118 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v117;
      v120 = v184;
    }

    sub_21D100E28(v120, v119, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v245 = v118;
LABEL_56:
    v65 = v216;
    v69 = v214;
    if (v216 != v64)
    {
      continue;
    }

    break;
  }

LABEL_68:
  if (v192)
  {
    v148 = v34;
    v149 = *(a4 + 16);
    v150 = MEMORY[0x277D84F90];
    if (v149)
    {
      v151 = (*(v196 + 80) + 32) & ~*(v196 + 80);
      v152 = *(v196 + 72);
      v153 = a4 + v151;
      v154 = MEMORY[0x277D84F90];
      do
      {
        sub_21D0FE734(v153, v69, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        if (*(v69 + *(v148 + 20)) == 5)
        {
          sub_21D100E28(v69, v211, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v155 = swift_isUniquelyReferenced_nonNull_native();
          *&v232 = v154;
          if ((v155 & 1) == 0)
          {
            sub_21D18F738(0, *(v154 + 16) + 1, 1);
            v69 = v214;
            v154 = v232;
          }

          v157 = *(v154 + 16);
          v156 = *(v154 + 24);
          if (v157 >= v156 >> 1)
          {
            sub_21D18F738(v156 > 1, v157 + 1, 1);
            v69 = v214;
            v154 = v232;
          }

          *(v154 + 16) = v157 + 1;
          sub_21D100E28(v211, v154 + v151 + v157 * v152, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v148 = v212;
        }

        else
        {
          sub_21D101450(v69, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        }

        v153 += v152;
        --v149;
      }

      while (v149);
    }

    else
    {
      v154 = MEMORY[0x277D84F90];
    }

    v158 = *(v154 + 16);
    if (v158)
    {
      *&v232 = v150;
      sub_21D18F6B0(0, v158, 0);
      v159 = v232;
      v160 = v154 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
      v161 = *(v196 + 72);
      v162 = v189;
      do
      {
        sub_21D0FE734(v160, v162, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        swift_storeEnumTagMultiPayload();
        *&v232 = v159;
        v164 = *(v159 + 16);
        v163 = *(v159 + 24);
        if (v164 >= v163 >> 1)
        {
          sub_21D18F6B0(v163 > 1, v164 + 1, 1);
          v162 = v189;
          v159 = v232;
        }

        *(v159 + 16) = v164 + 1;
        sub_21D100E28(v162, v159 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v164, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
        v160 += v161;
        --v158;
      }

      while (v158);
    }

    else
    {

      v159 = MEMORY[0x277D84F90];
    }

    sub_21D563814(v159);
  }

  if (qword_280D15138 != -1)
  {
LABEL_92:
    swift_once();
  }

  v165 = sub_21DBF56BC();
  v166 = __swift_project_value_buffer(v165, qword_280D15140);
  v167 = v193;
  (*(*(v165 - 8) + 16))(v193, v166, v165);
  v168 = v245;
  v169 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
  *(v167 + *(v169 + 20)) = v168;
  *(v167 + *(v169 + 24)) = 1;
  v170 = v194;
  *v194 = v195;
  *(v170 + 8) = 3;
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.SmartList(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = a3[8];
  v10 = (a1 + v8);
  v11 = (a2 + v8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  *(a1 + v9) = *(a2 + v9);
  v13 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.PinnedList(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v6 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v6;
    v7 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = v7;
    v8 = *(a2 + 72);
    v9 = *(a2 + 80);
    v10 = *(a2 + 88);
    v11 = *(a2 + 96);
    v12 = *(a2 + 104);
    v33 = *(a2 + 112);
    v32 = *(a2 + 120);
    v13 = v4;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D0FB960(v8, v9, v10, v11, v12, v33, v32);
    *(a1 + 72) = v8;
    *(a1 + 80) = v9;
    *(a1 + 88) = v10;
    *(a1 + 96) = v11;
    *(a1 + 104) = v12;
    *(a1 + 112) = v33;
    *(a1 + 120) = v32;
    v14 = *(a2 + 128);
    v15 = *(a2 + 136);
    LOBYTE(v6) = *(a2 + 144);
    sub_21D0FB9BC(v14, v15, v6);
    *(a1 + 128) = v14;
    *(a1 + 136) = v15;
    *(a1 + 144) = v6;
    *(a1 + 145) = *(a2 + 145);
    *(a1 + 152) = *(a2 + 152);
    v16 = *(a2 + 176);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = v16;
    v17 = *(a2 + 192);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = v17;
    v18 = *(a2 + 208);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = v18;
    *(a1 + 216) = *(a2 + 216);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v19 = v17;
  }

  else
  {
    v20 = sub_21DBF56BC();
    (*(*(v20 - 8) + 16))(a1, a2, v20);
    v21 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    *(a1 + v21[5]) = *(a2 + v21[5]);
    *(a1 + v21[6]) = *(a2 + v21[6]);
    v22 = v21[7];
    v23 = (a1 + v22);
    v24 = (a2 + v22);
    v26 = *v24;
    v25 = v24[1];
    *v23 = v26;
    v23[1] = v25;
    *(a1 + v21[8]) = *(a2 + v21[8]);
    *(a1 + v21[9]) = *(a2 + v21[9]);
    v27 = v21[10];
    v28 = (a1 + v27);
    v29 = (a2 + v27);
    v30 = v29[1];
    *v28 = *v29;
    v28[1] = v30;
    sub_21DBF8E0C();
  }

  sub_21DBF8E0C();
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t destroy for TTRAccountsListsViewModel.PinnedList(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_21D1078C0(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
    sub_21D0FB9F4(*(a1 + 128), *(a1 + 136), *(a1 + 144));
  }

  else
  {
    v2 = sub_21DBF56BC();
    (*(*(v2 - 8) + 8))(a1, v2);
    type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  }
}

uint64_t sub_21D1039A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  sub_21DBF8E0C();
  return a1;
}

void sub_21D103A34(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_21D0FF670(a1, a2);
  }
}

uint64_t sub_21D103A48(uint64_t a1)
{
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(a1, v2);
}

unint64_t sub_21D103AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_21D0CF7E0(a4, &qword_27CE5D4C8);
  }

  if (v17 < 1)
  {
    return sub_21D0CF7E0(a4, &qword_27CE5D4C8);
  }

  result = sub_21D0D3954(a4, v15, &qword_27CE58180);
  if (v12 >= v17)
  {
    return sub_21D0CF7E0(a4, &qword_27CE5D4C8);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t TTRAccountsListsViewModel.Item.treeItemIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRAccountsListsViewModel.TipSection(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRAccountsListsViewModel.PermissionsSection(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v2, v26, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21D100E28(v26, v23, type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection);
      v43 = sub_21DBF56BC();
      (*(*(v43 - 8) + 32))(v57, v23, v43);
      goto LABEL_32;
    case 2u:
      sub_21D100E28(v26, v20, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
      v39 = sub_21DBF56BC();
      (*(*(v39 - 8) + 16))(v57, v20, v39);
      sub_21D101450(v20, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
      goto LABEL_32;
    case 3u:
      sub_21D100E28(v26, v17, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v40 = sub_21DBF56BC();
      (*(*(v40 - 8) + 16))(v57, v17, v40);
      sub_21D101450(v17, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      goto LABEL_32;
    case 4u:
      v33 = *(v26 + 2);
      v34 = [v33 uuid];
      sub_21DBF568C();

      type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
      return swift_storeEnumTagMultiPayload();
    case 5u:
    case 6u:
      v45 = *(v26 + 11);
      v67 = *(v26 + 10);
      v68 = v45;
      v69[0] = *(v26 + 12);
      *(v69 + 10) = *(v26 + 202);
      v46 = *(v26 + 7);
      v63 = *(v26 + 6);
      v64 = v46;
      v47 = *(v26 + 9);
      v65 = *(v26 + 8);
      v66 = v47;
      v48 = *(v26 + 3);
      v60 = *(v26 + 2);
      v61 = v48;
      v49 = *(v26 + 5);
      *v62 = *(v26 + 4);
      *&v62[16] = v49;
      v50 = *(v26 + 1);
      v58 = *v26;
      v59 = v50;
      v51 = [v58 uuid];
      sub_21DBF568C();

      sub_21D1077D8(&v58);
      goto LABEL_32;
    case 7u:
      v41 = *(v26 + 6);
      v42 = [v41 uuid];
      sub_21DBF568C();

      type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
      return swift_storeEnumTagMultiPayload();
    case 8u:
      sub_21D100E28(v26, v14, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
      v53 = sub_21DBF56BC();
      (*(*(v53 - 8) + 32))(v57, v14, v53);
      goto LABEL_32;
    case 9u:
      *&v62[9] = *(v26 + 73);
      v36 = *(v26 + 3);
      v60 = *(v26 + 2);
      v61 = v36;
      *v62 = *(v26 + 4);
      v37 = *(v26 + 1);
      v58 = *v26;
      v59 = v37;
      v38 = v62[24];
      sub_21DA264B0(&v58);
      if (v38 == 1)
      {
        if (qword_27CE56F78 != -1)
        {
          swift_once();
        }

        v28 = sub_21DBF56BC();
        v29 = v28;
        v30 = qword_27CE64B18;
      }

      else
      {
        if (qword_27CE56F70 != -1)
        {
          swift_once();
        }

        v28 = sub_21DBF56BC();
        v29 = v28;
        v30 = qword_27CE64B00;
      }

      goto LABEL_31;
    case 0xAu:
      sub_21D100E28(v26, v11, type metadata accessor for TTRAccountsListsViewModel.TipSection);
      v52 = sub_21DBF56BC();
      (*(*(v52 - 8) + 32))(v57, v11, v52);
      goto LABEL_32;
    case 0xBu:
      sub_21D101450(v26, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (qword_27CE56F68 != -1)
      {
        swift_once();
      }

      v28 = sub_21DBF56BC();
      v29 = v28;
      v30 = qword_27CE64AE8;
      goto LABEL_31;
    case 0xCu:
      sub_21D100E28(v26, v8, type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
      v35 = sub_21DBF56BC();
      (*(*(v35 - 8) + 16))(v57, v8, v35);
      sub_21D101450(v8, type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
      goto LABEL_32;
    case 0xDu:
      sub_21D100E28(v26, v5, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
      v44 = sub_21DBF56BC();
      (*(*(v44 - 8) + 16))(v57, v5, v44);
      sub_21D101450(v5, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
      goto LABEL_32;
    case 0xEu:
      v31 = *v26;
      v32 = [*v26 uuid];
      sub_21DBF568C();

      type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
      return swift_storeEnumTagMultiPayload();
    case 0xFu:
      if (qword_27CE56F80 != -1)
      {
        swift_once();
      }

      v28 = sub_21DBF56BC();
      v29 = v28;
      v30 = qword_27CE64B30;
      goto LABEL_31;
    case 0x10u:
      if (qword_27CE56F88 != -1)
      {
        swift_once();
      }

      v28 = sub_21DBF56BC();
      v29 = v28;
      v30 = qword_27CE64B48;
LABEL_31:
      v54 = __swift_project_value_buffer(v28, v30);
      (*(*(v29 - 8) + 16))(v57, v54, v29);
LABEL_32:
      type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
      break;
    default:
      v27 = sub_21DBF56BC();
      (*(*(v27 - 8) + 32))(v57, v26, v27);
      type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

char *assignWithTake for TTRAccountsListsViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload > 11)
    {
      if (EnumCaseMultiPayload == 12)
      {
        v14 = sub_21DBF56BC();
        v15 = *(*(v14 - 8) + 32);
        v15(a1, a2, v14);
        v16 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v17 = &a1[v16];
        v18 = &a2[v16];
        v19 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v18, 1, v19))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
          memcpy(v17, v18, *(*(v21 - 8) + 64));
        }

        else
        {
          v15(v17, v18, v14);
          *&v17[*(v19 + 20)] = *&v18[*(v19 + 20)];
          v17[*(v19 + 24)] = v18[*(v19 + 24)];
          (*(v20 + 56))(v17, 0, 1, v19);
        }

        goto LABEL_24;
      }

      if (EnumCaseMultiPayload == 13)
      {
        v10 = sub_21DBF56BC();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v11 + 20)] = *&a2[*(v11 + 20)];
        a1[*(v11 + 24)] = a2[*(v11 + 24)];
        goto LABEL_24;
      }
    }

    else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 10)
    {
      goto LABEL_5;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = sub_21DBF56BC();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      *&a1[*(v13 + 20)] = *&a2[*(v13 + 20)];
      a1[*(v13 + 24)] = a2[*(v13 + 24)];
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = sub_21DBF56BC();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      v9 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v9[5]] = a2[v9[5]];
      *&a1[v9[6]] = *&a2[v9[6]];
      *&a1[v9[7]] = *&a2[v9[7]];
      *&a1[v9[8]] = *&a2[v9[8]];
      a1[v9[9]] = a2[v9[9]];
      *&a1[v9[10]] = *&a2[v9[10]];
      goto LABEL_24;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_5:
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_24:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v22 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v22);
}

uint64_t sub_21D104C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  *((*(v9 + 24) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 24) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.AuxiliaryData(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 == 255)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 == 255)
    {
      v5 = result;
      sub_21D104D50(result);
      *v5 = *a2;
      *(v5 + 8) = *(a2 + 8);
    }

    else
    {
      v4 = *result;
      *result = *a2;
      *(result + 8) = v3;
      v5 = result;
      sub_21D0FF670(v4, v2);
    }

    return v5;
  }

  return result;
}

uint64_t sub_21D104E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D104E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D104EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D104F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D104FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D105014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D10507C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1050E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D10514C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1051B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D10521C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D105284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1052EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D105354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1053BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D105424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D10548C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1054F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D10555C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1055C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D10562C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D105694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1056FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D105764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1057CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D105834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D10589C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D105904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D10596C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1059D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D105A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_21D105AA4(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_21D0FF19C(result, a2);
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.hash(into:)()
{
  v1 = sub_21DBF56BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v0, v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x223D44FA0](EnumCaseMultiPayload);
  sub_21D0DCFD0(&qword_280D1B850, MEMORY[0x277CC95F0]);
  sub_21DBFA00C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21D105C74(uint64_t a1, void (*a2)(_BYTE *), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_21DBFC7DC();
  a2(v8);
  v5 = sub_21DBFC82C();

  return a3(a1, v5);
}

unint64_t sub_21D105D20(uint64_t a1, uint64_t a2)
{
  v5 = sub_21DBF56BC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v43 = &v43 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58398);
  MEMORY[0x28223BE20](v56);
  v13 = &v43 - v12;
  v14 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v15 = MEMORY[0x28223BE20](v14);
  v52 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v51 = &v43 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v50 = &v43 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  v24 = -1 << *(v2 + 32);
  v25 = a2 & ~v24;
  v55 = v2 + 64;
  if ((*(v2 + 64 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
  {
    v26 = *(v21 + 72);
    v53 = ~v24;
    v54 = v26;
    v27 = (v6 + 8);
    v48 = v2;
    v49 = (v6 + 32);
    v47 = a1;
    do
    {
      sub_21D107158(*(v2 + 48) + v54 * v25, v23, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v29 = *(v56 + 48);
      sub_21D107158(v23, v13, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D107158(a1, &v13[v29], type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v28 = v51;
          sub_21D107158(v13, v51, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_4;
          }

          v31 = &v13[v29];
          v32 = v44;
          (*v49)(v44, v31, v5);
          v33 = v51;
        }

        else
        {
          v28 = v52;
          sub_21D107158(v13, v52, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
LABEL_4:
            sub_21D107290(v23, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
            (*v27)(v28, v5);
            sub_21D0CF7E0(v13, &qword_27CE58398);
            goto LABEL_5;
          }

          v34 = &v13[v29];
          v32 = v45;
          (*v49)(v45, v34, v5);
          v33 = v52;
        }

        v35 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
        v36 = *v27;
        (*v27)(v32, v5);
        sub_21D107290(v23, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        v36(v33, v5);
        if (v35)
        {
          sub_21D107290(v13, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
          return v25;
        }

        sub_21D107290(v13, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        a1 = v47;
        v2 = v48;
      }

      else
      {
        v28 = v50;
        sub_21D107158(v13, v50, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_4;
        }

        v37 = v43;
        (*v49)(v43, &v13[v29], v5);
        v38 = v5;
        v39 = v50;
        v46 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
        v40 = *v27;
        (*v27)(v37, v38);
        sub_21D107290(v23, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        v41 = v39;
        v5 = v38;
        v40(v41, v38);
        a1 = v47;
        v2 = v48;
        sub_21D107290(v13, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        if (v46)
        {
          return v25;
        }
      }

LABEL_5:
      v25 = (v25 + 1) & v53;
    }

    while (((*(v55 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
  }

  return v25;
}

uint64_t sub_21D1062DC(uint64_t a1, int a2)
{
  v3 = v2;
  v53 = sub_21DBF56BC();
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A30);
  v54 = a2;
  v13 = v12;
  result = sub_21DBFC3EC();
  v15 = result;
  if (*(v12 + 16))
  {
    v45 = v2;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v5 + 8);
    v47 = (v5 + 32);
    v22 = result + 64;
    v48 = v13;
    v23 = v53;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v26 = (v20 - 1) & v20;
LABEL_15:
      v29 = v25 | (v16 << 6);
      v30 = *(v13 + 48);
      v56 = *(v50 + 72);
      v57 = v26;
      v31 = v30 + v56 * v29;
      if (v54)
      {
        sub_21D1073B0(v31, v11, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        v55 = *(*(v13 + 56) + 8 * v29);
      }

      else
      {
        sub_21D107480(v31, v11, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        v55 = *(*(v13 + 56) + 8 * v29);
      }

      sub_21DBFC7DC();
      v32 = v11;
      v33 = v49;
      sub_21D107480(v11, v49, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v35 = v52;
      (*v47)(v52, v33, v23);
      MEMORY[0x223D44FA0](EnumCaseMultiPayload);
      sub_21D0F1C20(&qword_280D1B850, MEMORY[0x277CC95F0]);
      sub_21DBFA00C();
      (*v46)(v35, v23);
      result = sub_21DBFC82C();
      v36 = -1 << *(v15 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v13 = v48;
        v11 = v32;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v24 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v13 = v48;
      v11 = v32;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_21D1073B0(v11, *(v15 + 48) + v56 * v24, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      *(*(v15 + 56) + 8 * v24) = v55;
      ++*(v15 + 16);
      v20 = v57;
    }

    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v17[v16];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v13 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v3 = v15;
  return result;
}

uint64_t sub_21D1067F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D1068B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D1069D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106A98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106BB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106C18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106D38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106D98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106E58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D106FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D107038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D107098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D1070F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D107158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1071C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D107228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D107290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D1072F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D107350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D1073B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D107418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D107480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D1074E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D107580(unint64_t result, void (*a2)(uint64_t))
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_21DBFBD7C();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D44740](v5, v3);
      }

      else
      {
      }

      ++v5;
      swift_weakAssign();
      swift_beginAccess();
      v6 = sub_21DBF8E0C();
      a2(v6);
    }

    while (v4 != v5);
  }

  return result;
}

unint64_t sub_21D1076A8(unint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = result;
  if (result >> 62)
  {
    result = sub_21DBFBD7C();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D44740](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      ++v6;
      swift_weakAssign();
      swift_beginAccess();
      v8 = sub_21DBF8E0C();
      a3(v8, v7);
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t destroy for TTRAccountsListsViewModel.List(uint64_t a1)
{

  sub_21D1078C0(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
  sub_21D0FB9F4(*(a1 + 128), *(a1 + 136), *(a1 + 144));
}

void sub_21D1078C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

uint64_t sub_21D1079A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490) - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_21D107EFC(a1, v6, a2);
}

uint64_t sub_21D107A34@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v30 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v12 = MEMORY[0x28223BE20](v30);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  sub_21D0D3954(a2, v11, &qword_27CE5A490);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE5A490);
    swift_beginAccess();
    v17 = *(v3 + 16);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x223D44740](a1);
      goto LABEL_6;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v18 = *(v17 + 8 * a1 + 32);

LABEL_6:
        swift_endAccess();
        v19 = *(*v18 + 120);
        swift_beginAccess();
        sub_21D104E74(v18 + v19, v32, type metadata accessor for TTRAccountsListsViewModel.Item);
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v14);
  sub_21D106918(v11, type metadata accessor for TTRAccountsListsViewModel.Item);
  sub_21D2A0DC8(v14, v16, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v21 = sub_21D2916C8(v16, sub_21D105CF4);
  if (!v21)
  {
LABEL_20:
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](125, 0xE100000000000000);
    result = sub_21DBFC31C();
    __break(1u);
    return result;
  }

  v22 = *(*v21 + 136);
  v23 = v21;
  swift_beginAccess();
  v24 = *(v23 + v22);
  sub_21DBF8E0C();

  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x223D44740](a1, v24);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v25 = *(v24 + 8 * a1 + 32);
  }

  sub_21D106918(v16, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v26 = *(*v25 + 120);
  swift_beginAccess();
  v27 = v25 + v26;
  v28 = v31;
  sub_21D104E74(v27, v31, type metadata accessor for TTRAccountsListsViewModel.Item);

  return sub_21D2A0DC8(v28, v32, type metadata accessor for TTRAccountsListsViewModel.Item);
}

uint64_t sub_21D107F28@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  TTRAccountsListsViewModel.resolveSectionProxyIfNeeded(for:)(a1, &v14 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    result = sub_21D0CF7E0(v10, &qword_27CE5A490);
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    sub_21D0FE734(v10, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v12 = *v7;
      v13 = v7[1];
    }

    else
    {
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      v12 = 0uLL;
      v13 = 0uLL;
    }

    *a2 = v12;
    a2[1] = v13;
    return sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.resolveSectionProxyIfNeeded(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v9);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v21 = a2;
    v19 = *(v11 + 32);
    v19(v14, v9, v10);
    v19(v16, v14, v10);
    (*(v11 + 16))(v7, v16, v10);
    swift_storeEnumTagMultiPayload();
    sub_21D1083C8(v7, v21);
    sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    return (*(v11 + 8))(v16, v10);
  }

  else
  {
    sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    sub_21D0FE734(a1, a2, type metadata accessor for TTRAccountsListsViewModel.Item);
    v17 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
  }
}

uint64_t sub_21D108408@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v11 = *(v5 + 24);
  if (*(v11 + 16) && (v12 = a2(a1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = *(*v14 + 120);
    swift_beginAccess();
    sub_21D104E74(v14 + v15, a5, a3);
    v16 = 0;
  }

  else
  {
    swift_endAccess();
    v16 = 1;
  }

  v17 = a4(0);
  return (*(*(v17 - 8) + 56))(a5, v16, 1, v17);
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.Account(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 30) = *(a2 + 30);
  sub_21DBF8E0C();
  v5 = v4;
  return a1;
}

void destroy for TTRReminderDetailViewModel.Person(uint64_t a1)
{

  v2 = *(a1 + 16);
}

Swift::Void __swiftcall TTRModuleState.modelDidReceive()()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[51];
  v0[48] = 1;
  if (v4)
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v1;
  v9 = v6 | v5;
  sub_21D0EF69C(v7 | v1 | v6 | v5);

  sub_21DAE0620(v8 | v9);
}

uint64_t sub_21D10863C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = MEMORY[0x28223BE20](a1);
  v9 = &v15[-1] - v8;
  *(v2 + *(v4 + 112)) |= 1uLL;
  v11 = v10 & 1;
  if (v6)
  {
    v11 = 2;
  }

  v15[0] = v11;
  v15[1] = v7;
  v16 = 0;
  v12 = sub_21DBF8E0C();
  sub_21D0E20B4(v12, v9);
  return TTRICollectionViewPresentationTreeUpdates.init(scope:presentationTree:)(v15, v9, v5, a2);
}

uint64_t sub_21D1087FC()
{
  swift_getAssociatedConformanceWitness();
  sub_21DBFABAC();
  return Set.removeAll(where:)();
}

uint64_t Set.removeAll(where:)()
{
  sub_21DBF8E0C();
  result = sub_21DBFAB1C();
  if (!v1)
  {
    v3 = result;

    *v0 = v3;
  }

  return result;
}

uint64_t TTRMutableTreeStorage.child(_:of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a3;
  v4 = *v3;
  v5 = *v3;
  v36 = a2;
  v37 = v5;
  v6 = *(v4 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v35 = &AssociatedTypeWitness - v8;
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &AssociatedTypeWitness - v11;
  v13 = *(v4 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &AssociatedTypeWitness - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &AssociatedTypeWitness - v18;
  (*(v10 + 16))(v12, v36, v9);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    (*(v10 + 8))(v12, v9);
    swift_beginAccess();
    v20 = *(v37 + 88);
    v21 = *(v37 + 104);
    v40 = v6;
    v41 = v20;
    v42 = v13;
    v43 = v21;
    type metadata accessor for TTRTreeStorageNode();
    sub_21DBFA78C();
    v22 = v44;
    swift_endAccess();
    v23 = *(*v22 + 120);
    swift_beginAccess();
    (*(v7 + 16))(v39, v22 + v23, v6);
  }

  else
  {
    v25 = v37;
    (*(v13 + 24))(v6, v13);
    (*(v7 + 8))(v12, v6);
    v26 = v17;
    v27 = AssociatedTypeWitness;
    (*(v14 + 32))(v19, v26, AssociatedTypeWitness);
    if (sub_21D109DEC())
    {
      swift_beginAccess();
      sub_21DBF8E0C();

      v28 = *(v25 + 88);
      v29 = *(v25 + 104);
      v40 = v6;
      v41 = v28;
      v42 = v13;
      v43 = v29;
      type metadata accessor for TTRTreeStorageNode();
      sub_21DBFA78C();

      (*(v14 + 8))(v19, v27);
      v30 = v44;
      v31 = *(*v44 + 120);
      swift_beginAccess();
      v32 = v30 + v31;
      v33 = v35;
      (*(v7 + 16))(v35, v32, v6);

      return (*(v7 + 32))(v39, v33, v6);
    }

    else
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_21DBFBEEC();
      MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
      sub_21DBFC5EC();
      MEMORY[0x223D42AA0](125, 0xE100000000000000);
      result = sub_21DBFC31C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D108F00()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 24);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

uint64_t sub_21D108FC4()
{
  sub_21DBFC7DC();
  TTRAccountsListsViewModel.ItemIdentifier.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v38 = sub_21DBF56BC();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v36 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58398);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v36 - v20;
  v23 = *(v22 + 56);
  sub_21D0FE734(a1, &v36 - v20, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D0FE734(v39, &v21[v23], type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D0FE734(v21, v15, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = &v21[v23];
        v26 = v36;
        v27 = v38;
        (*(v3 + 32))(v36, v25, v38);
        v28 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
        v29 = *(v3 + 8);
        v29(v26, v27);
        v30 = v15;
LABEL_9:
        v29(v30, v27);
LABEL_13:
        sub_21D101450(v21, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        return v28 & 1;
      }

      v12 = v15;
    }

    else
    {
      sub_21D0FE734(v21, v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = &v21[v23];
        v32 = v37;
        v27 = v38;
        (*(v3 + 32))(v37, v31, v38);
        v28 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
        v29 = *(v3 + 8);
        v29(v32, v27);
        v30 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_21D0FE734(v21, v18, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    if (!swift_getEnumCaseMultiPayload())
    {
      v33 = v38;
      (*(v3 + 32))(v9, &v21[v23], v38);
      v28 = _s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0();
      v34 = *(v3 + 8);
      v34(v9, v33);
      v34(v18, v33);
      goto LABEL_13;
    }

    v12 = v18;
  }

  (*(v3 + 8))(v12, v38);
  sub_21D0CF7E0(v21, &qword_27CE58398);
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_21D109454(uint64_t a1, uint64_t a2, void (**a3)(char *, unint64_t, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a4;
  v87 = a6;
  v77 = a3;
  v83 = a2;
  v78 = a1;
  swift_getAssociatedTypeWitness();
  v84 = a7;
  v85 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = sub_21DBFBA8C();
  v69 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v67 - v12;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v79 = &v67 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_21DBFBA8C();
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v70 = &v67 - v19;
  v88 = AssociatedTypeWitness;
  v71 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v74 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v67 - v23;
  v72 = v25;
  MEMORY[0x28223BE20](v22);
  v75 = &v67 - v26;
  v27 = sub_21DBFBA8C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v67 - v29;
  v32 = a5[3];
  v31 = a5[4];
  v82 = a5;
  __swift_project_boxed_opaque_existential_1(a5, v32);
  (*(v14 + 16))(v30, v78, v13);
  v68 = v14;
  (*(v14 + 56))(v30, 0, 1, v13);
  v33 = TTRTreeContentsQueryable.children(of:)(v30, v32, v31);
  (*(v28 + 8))(v30, v27);
  v93[0] = v33;
  v34 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  v36 = sub_21DBFACFC();
  if (v36)
  {
  }

  v67 = v33;
  v93[0] = v33;
  MEMORY[0x28223BE20](v36);
  v37 = v85;
  *(&v67 - 2) = v84;
  *(&v67 - 1) = v37;
  v78 = v34;
  v38 = v88;
  v40 = sub_21D0E5014(sub_21D108EC8, (&v67 - 4), v34, v88, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v39);
  v73 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_21DBF8D0C();
  sub_21DBF8C9C();
  sub_21DBF8E0C();
  v41 = sub_21DBFA6DC();
  v42 = v75;
  if (!v41)
  {
LABEL_13:

    v93[0] = v67;
    *&v92 = v40;
    v50 = sub_21DBFA74C();
    v51 = v78;
    v52 = swift_getWitnessTable();
    v53 = swift_getWitnessTable();
    sub_21DBFC6EC();

    v92 = v89;
    v93[0] = v51;
    v93[1] = v50;
    v77 = v50;
    AssociatedConformanceWitness = v52;
    v93[2] = v52;
    v93[3] = v53;
    v75 = v53;
    sub_21DBFBF5C();
    sub_21DBFBF2C();
    v74 = (TupleTypeMetadata2 - 8);
    v72 = (v68 + 32);
    v54 = (v71 + 32);
    v55 = (v71 + 56);
    v56 = (v69 + 8);
    v57 = (v68 + 8);
    v58 = v70;
    while (1)
    {
      *&v89 = v51;
      *(&v89 + 1) = v77;
      v90 = AssociatedConformanceWitness;
      v91 = v75;
      sub_21DBFBF4C();
      sub_21DBFBF3C();
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v58, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v59 = *(TupleTypeMetadata2 + 48);
      v60 = TupleTypeMetadata2;
      v61 = v79;
      v62 = v73;
      (*v72)(v79, v58, v73);
      v63 = &v58[v59];
      v64 = v80;
      v65 = v88;
      (*v54)(v80, v63, v88);
      (*v55)(v64, 0, 1, v65);
      sub_21D109454(v61, v83, v64, v86, v82, v87, v84, v85);
      (*v56)(v64, v81);
      v66 = v61;
      TupleTypeMetadata2 = v60;
      v51 = v78;
      (*v57)(v66, v62);
    }
  }

  v43 = 0;
  v77 = (v71 + 16);
  v44 = (v71 + 32);
  v45 = (v71 + 8);
  while (1)
  {
    v46 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v46)
    {
      v47 = *(v71 + 16);
      v47(v42, v40 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v43, v38);
      v48 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    result = sub_21DBFBF7C();
    if (v72 != 8)
    {
      break;
    }

    v93[0] = result;
    v47 = *v77;
    (*v77)(v42, v93, v38);
    swift_unknownObjectRelease();
    v48 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_7:
    v38 = v88;
    (*v44)(v24, v42, v88);
    if ((sub_21DBFAB6C() & 1) == 0)
    {
      v47(v74, v24, v38);
      sub_21DBFA74C();
      v42 = v75;
      sub_21DBFA6FC();
    }

    (*v45)(v24, v38);
    ++v43;
    if (v48 == sub_21DBFA6DC())
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D109DEC()
{
  v1 = *v0;
  swift_beginAccess();
  v3 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for TTRTreeStorageNode();
  swift_getAssociatedConformanceWitness();
  sub_21DBF9F5C();
  swift_endAccess();
  return v3;
}

uint64_t sub_21D109F04()
{
  sub_21DBFC7DC();
  TTRAccountsListsViewModel.ItemIdentifier.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t sub_21D109F40@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_21D10A1E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots();
  sub_21DBF8D0C();

  swift_getTupleTypeMetadata2();
  result = sub_21DBFA6DC();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = result - 1;
    a2[1] = v4;
    a2[2] = v3;
  }

  return result;
}

uint64_t sub_21D10A304(uint64_t a1, void *a2, void *a3, int a4)
{
  v5 = v4;
  v71 = a4;
  v70 = a3;
  v8 = *MEMORY[0x277D85000] & *a3;
  v9 = a2[1];
  v60 = *a2;
  v59 = v9;
  v10 = a2[3];
  v58 = a2[2];
  v57 = v10;
  v56[1] = a2[4];
  v11 = (v8 + *MEMORY[0x277D74D48]);
  v79 = *v11;
  v12 = *(v11 + 3);
  v13 = sub_21DBF8D0C();
  v14 = v79;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v67 = v56 - v17;
  v87 = v13;
  v78 = *(v13 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v81 = v56 - v19;
  v82 = v14;
  *&v77 = *(v14 - 8);
  MEMORY[0x28223BE20](v18);
  v80 = v56 - v20;
  v21 = swift_getTupleTypeMetadata2();
  v76 = sub_21DBFBA8C();
  v22 = *(v76 - 8);
  v23 = MEMORY[0x28223BE20](v76);
  v75 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = (v56 - v25);
  *&v27 = *(v11 + 2);
  *(&v27 + 1) = v12;
  v86 = v27;
  v85 = v79;
  *&v85 = *(a1 + *(type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots() + 52));
  v68 = TupleTypeMetadata2;
  v28 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x223D42CB0](v83, v28, WitnessTable);
  v84[0] = v83[0];
  sub_21DBFC38C();
  sub_21DBFC35C();
  v30 = a2;
  v74 = sub_21DBFC37C();
  v73 = (v22 + 32);
  v72 = v21 - 8;
  v65 = (v77 + 32);
  v64 = (v78 + 32);
  v62 = (v78 + 8);
  v61 = (v77 + 8);
  v69 = a2;
  v66 = v21;
  v63 = v26;
  while (1)
  {
    v36 = v75;
    sub_21DBFC36C();
    (*v73)(v26, v36, v76);
    if ((*(*(v21 - 8) + 48))(v26, 1, v21) == 1)
    {
      break;
    }

    v78 = *v26;
    *&v79 = v5;
    v37 = v26 + *(v21 + 48);
    v38 = *(v68 + 48);
    v39 = *v65;
    v40 = v67;
    v41 = v30;
    v42 = v82;
    (*v65)(v67, v37, v82);
    v43 = *v64;
    v44 = &v37[v38];
    v45 = v87;
    (*v64)(&v40[v38], v44, v87);
    v39(v80, v40, v42);
    v46 = v43(v81, &v40[v38], v45);
    v47 = *v41;
    if (*v41 == 1 || (v77 = *(v41 + 3), v48 = v41[2], sub_21D0D0E74(v60, v59), sub_21D0E61F4(v58, v57), v46 = sub_21D0D0E88(v47), !v77))
    {
      v48 = 0;
      v50 = 0;
      v49 = 0;
    }

    else
    {
      v46 = swift_allocObject();
      v49 = v46;
      *(v46 + 16) = v77;
      v50 = sub_21D11DA28;
    }

    v26 = v63;
    v83[0] = v48;
    v83[1] = v50;
    v83[2] = v49;
    MEMORY[0x28223BE20](v46);
    v56[-2] = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE67670);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B28);
    v52 = v79;
    sub_21D10AA90(sub_21D10AD38, &v56[-4], MEMORY[0x277D84A98], v51, v53, v84);
    v5 = v52;
    sub_21D0E5BE4(v48, v50);
    v54 = v84[0];
    if (v84[0])
    {
      v31 = v84[1];
      v32 = swift_allocObject();
      *(v32 + 16) = v54;
      *(v32 + 24) = v31;
      v33 = sub_21D11DA2C;
    }

    else
    {
      v33 = 0;
    }

    v30 = v69;
    v21 = v66;
    v35 = v80;
    v34 = v81;
    sub_21DBF8C0C();
    sub_21D0D0E88(v33);
    (*v62)(v34, v87);
    (*v61)(v35, v82);
  }
}

uint64_t sub_21D10AA90@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t sub_21D10AD58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  if (v5 == a2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_21D11DA2C;
    *(v9 + 24) = v8;

    v11 = sub_21D11DA28;
  }

  else
  {

    v11 = 0;
    v9 = 0;
  }

  *a3 = v11;
  a3[1] = v9;
  return result;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D10AFA8(a1, &v11);
  if (v12)
  {
    sub_21D0D0FD0(&v11, v13);
    v4 = v14;
    v5 = v15;
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    item_rdar101056925<A, B>(in:withID:)(v6, a1, AssociatedTypeWitness, v4, v5);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v9 = swift_getAssociatedTypeWitness();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_21D10AFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D85000] & *v2;
  v5 = *(v4 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - v7;
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  sub_21D0E6F44(&v14 - v11);
  if ((*(v6 + 48))(v12, 1, v5))
  {
    result = (*(v10 + 8))(v12, v9);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    (*(v6 + 16))(v8, v12, v5);
    (*(v10 + 8))(v12, v9);
    (*(*(v4 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8) + 24))(v5);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t TTRMutableTreeStorage.item(withID:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_21D109DEC();
  if (v4)
  {
    v5 = *(*v4 + 120);
    v6 = v4;
    swift_beginAccess();
    v7 = *(v3 + 80);
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6 + v5, v7);

    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    v10 = *(*(*(v3 + 80) - 8) + 56);

    return v10(a1, 1, 1);
  }
}

uint64_t sub_21D10B3DC()
{
  v0 = sub_21DBF604C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_280D17220 == 1)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277D44DE8], v0);
    v5 = sub_21DBF603C();
    result = (*(v1 + 8))(v3, v0);
  }

  else
  {
    v5 = 0;
  }

  byte_280D0C842 = v5 & 1;
  return result;
}

uint64_t sub_21D10B54C()
{
  result = sub_21DBFBA8C();
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

void sub_21D10B600(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t TTRViewModelObserver.init(didReceiveNewValue:)(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 56))(v2 + *(*v2 + 88), 1, 1);
  v5 = (v2 + *(*v2 + 104));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  *(v2 + *(*v2 + 112)) = 0;
  v6 = (v2 + *(*v2 + 96));
  *v6 = a1;
  v6[1] = a2;
  return v2;
}

uint64_t TTRObservableViewModelCollection.observableViewModel(forItemID:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v18 - v5;
  v7 = *(v3 + 80);
  v24 = sub_21DBFBA8C();
  v8 = *(v24 - 8);
  v9 = MEMORY[0x28223BE20](v24);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v22 = v18 - v12;
  swift_beginAccess();
  type metadata accessor for TTRObservableViewModel();
  v21 = *(v3 + 96);
  sub_21DBF9F5C();
  v13 = v25;
  if (v25)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v14 = v1[2];
    v19 = v6;
    v20 = v14;
    (*(*(v7 - 8) + 56))(v11, 1, 1, v7);
    v15 = v22;
    v18[1] = v1;
    v20(a1, v11);
    v20 = *(v8 + 8);
    v16 = v24;
    v20(v11, v24);
    (*(v8 + 16))(v11, v15, v16);
    v13 = TTRObservableViewModel.__allocating_init(value:)(v11);
    (*(v23 + 16))(v19, a1, v4);
    v25 = v13;
    swift_beginAccess();
    sub_21DBF9F4C();

    sub_21DBF9F6C();
    swift_endAccess();
    v20(v15, v16);
  }

  return v13;
}

uint64_t sub_21D10BC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21D10BD6C(a1, a2, 0, a3);
  }

  else
  {
    v7 = type metadata accessor for TTRCollectionViewItemObservedViewModel();
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t sub_21D10BD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v34 = a3;
  v37 = a2;
  v41 = a1;
  v43 = a4;
  v5 = *(*v4 + 88);
  v40 = *(*v4 + 104);
  v6 = type metadata accessor for TTRCollectionViewItemObservedViewModel();
  v38 = sub_21DBFBA8C();
  v36 = *(v38 - 8);
  v7 = MEMORY[0x28223BE20](v38);
  v9 = (&v34 - v8);
  v10 = *(v5 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = &v34 - v13;
  v14 = sub_21DBFBA8C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return (*(*(v6 - 8) + 56))(v43, 1, 1);
  }

  v35 = v6;
  v21 = v4[3];
  ObjectType = swift_getObjectType();
  (*(v21 + 48))(v4, v41, ObjectType, v21);
  swift_unknownObjectRelease();
  (*(v15 + 32))(v18, v20, v14);
  if ((*(v10 + 48))(v18, 1, v5) == 1)
  {
    (*(v15 + 8))(v18, v14);
    return (*(*(v35 - 8) + 56))(v43, 1, 1);
  }

  else
  {
    v24 = *(v10 + 32);
    v24(v42, v18, v5);
    v25 = v36;
    v26 = v38;
    (*(v36 + 16))(v9, v37, v38);
    v27 = v35;
    v28 = *(v35 - 8);
    v29 = (*(v28 + 48))(v9, 1, v35);
    v30 = v43;
    if (v29 == 1)
    {
      (*(v25 + 8))(v9, v26);
      v31 = 0;
    }

    else
    {
      v32 = *v9;
      (*(v28 + 8))(v9, v27);
      v31 = v32 + (v34 & 1);
    }

    v44 = v31;
    v33 = v39;
    v24(v39, v42, v5);
    TTRCollectionViewItemObservedViewModel.init(lazyViewModelVersion:intermediateViewModel:)(&v44, v33, v5, v30);
    return (*(v28 + 56))(v30, 0, 1, v27);
  }
}

char *sub_21D10C260(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_21D10C468(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

uint64_t TTRCollectionViewItemObservedViewModel.init(lazyViewModelVersion:intermediateViewModel:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for TTRCollectionViewItemObservedViewModel();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

void *sub_21D10C654(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

uint64_t sub_21D10C6C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t TTRObservableViewModel.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TTRObservableViewModel.init(value:)(a1);
  return v2;
}

uint64_t TTRViewModelObserver.subscribeIfNeeded(to:)(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = *(v3 + 80);
  TTRViewModelObserver.subscribeIfNeeded<A>(to:transformValue:)(a1, sub_21D10D2C4, v4);
}

void *TTRViewModelObserver.subscribeIfNeeded<A>(to:transformValue:)(void *result, uint64_t a2, uint64_t a3)
{
  v6 = result;
  v7 = *v3;
  v8 = *result;
  v9 = (v3 + *(*v3 + 104));
  v10 = *v9;
  if (*v9)
  {
    v11 = v10 == result;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || !*(v3 + *(v7 + 112)))
  {
    v12 = swift_allocObject();
    v13 = *(v7 + 80);
    v12[2] = v13;
    v12[3] = a2;
    v12[4] = a3;
    v12[5] = v6;
    *v9 = v6;
    v9[1] = sub_21D10D16C;
    v9[2] = v12;
    swift_retain_n();

    sub_21D10CCDC(v10);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = *(v8 + 80);
    v15[4] = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_21DAE9CF4;
    *(v16 + 24) = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
    sub_21D10CD1C();
    v17 = v3;
    v18 = sub_21DBF93CC();

    *(v17 + *(*v17 + 112)) = v18;

    return sub_21D10CD80(1);
  }

  return result;
}

uint64_t sub_21D10CBF4()
{

  return swift_deallocObject();
}

uint64_t sub_21D10CC34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21D10CC6C()
{

  return swift_deallocObject();
}

uint64_t sub_21D10CCA4()
{

  return swift_deallocObject();
}

uint64_t sub_21D10CCDC(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_21D10CD1C()
{
  result = qword_280D0C450;
  if (!qword_280D0C450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE5C9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C450);
  }

  return result;
}

uint64_t sub_21D10CD80(char a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  v9 = type metadata accessor for TTRViewModelObserver.ValueChangeInfo();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  v14 = (v1 + *(v3 + 104));
  if (*v14)
  {
    v15 = v4;
    v17 = v14 + 1;
    v16 = v14[1];
    v21[1] = v17[1];
    v22 = v16;
    v18 = a1;
    v19 = *(v15 + 88);
    v23 = result;
    swift_beginAccess();
    (*(v6 + 16))(v8, v1 + v19, v5);
    sub_21D10D0DC(v18 & 1, v8, v13);
    swift_unknownObjectRetain();

    v22(v20);
    swift_beginAccess();
    (*(v6 + 40))(v1 + v19, v8, v5);
    swift_endAccess();
    (*(v1 + *(*v1 + 96)))(v13);

    swift_unknownObjectRelease();
    return (*(v10 + 8))(v13, v23);
  }

  return result;
}

uint64_t sub_21D10D040()
{
  result = sub_21DBFBA8C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D10D0DC@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TTRViewModelObserver.ValueChangeInfo() + 28);
  v6 = sub_21DBFBA8C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_21D10D178(void (*a1)(char *), uint64_t a2, char *a3)
{
  v5 = *a3;
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v5 + 88);
  swift_beginAccess();
  (*(v7 + 16))(v9, &a3[v10], v6);
  a1(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21D10D2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBFBA8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t TTRViewModelObserver.localValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
  MEMORY[0x28223BE20](v0 - 8);
  v59 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.TipSection(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.PermissionsSection(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21DBF56BC();
  v20 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v61, v25, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21D100E28(v25, v19, type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection);
      v48 = sub_21DBF565C();
      sub_21D101450(v19, type metadata accessor for TTRAccountsListsViewModel.PinnedListsSection);
      return v48;
    case 2u:
      sub_21D100E28(v25, v16, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
      v29 = sub_21DBF565C();
      v40 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists;
      v41 = v16;
      goto LABEL_28;
    case 3u:
      sub_21D100E28(v25, v13, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v29 = sub_21DBF565C();
      v40 = type metadata accessor for TTRAccountsListsViewModel.SmartList;
      v41 = v13;
      goto LABEL_28;
    case 4u:
      v37 = *(v25 + 2);
      v38 = [v37 stringRepresentation];
      v39 = sub_21DBFA16C();

      return v39;
    case 5u:
    case 6u:
      v51 = *(v25 + 11);
      v71 = *(v25 + 10);
      v72 = v51;
      v73[0] = *(v25 + 12);
      *(v73 + 10) = *(v25 + 202);
      v52 = *(v25 + 7);
      v67 = *(v25 + 6);
      v68 = v52;
      v53 = *(v25 + 9);
      v69 = *(v25 + 8);
      v70 = v53;
      v54 = *(v25 + 3);
      v64 = *(v25 + 2);
      v65 = v54;
      v55 = *(v25 + 5);
      *v66 = *(v25 + 4);
      *&v66[16] = v55;
      v56 = *(v25 + 1);
      v62 = *v25;
      v63 = v56;
      v57 = [v62 stringRepresentation];
      v50 = sub_21DBFA16C();

      sub_21D1077D8(&v62);
      return v50;
    case 7u:
      v45 = *(v25 + 6);
      v46 = [v45 stringRepresentation];
      v47 = sub_21DBFA16C();

      return v47;
    case 8u:
      sub_21D100E28(v25, v10, type metadata accessor for TTRAccountsListsViewModel.PermissionsSection);
      v29 = sub_21DBF565C();
      v40 = type metadata accessor for TTRAccountsListsViewModel.PermissionsSection;
      v41 = v10;
      goto LABEL_28;
    case 9u:
      *&v66[9] = *(v25 + 73);
      v42 = *(v25 + 3);
      v64 = *(v25 + 2);
      v65 = v42;
      *v66 = *(v25 + 4);
      v43 = *(v25 + 1);
      v62 = *v25;
      v63 = v43;
      v44 = v66[24];
      sub_21DA264B0(&v62);
      if (v44 == 1)
      {
        if (qword_27CE56F78 != -1)
        {
          swift_once();
        }

        v30 = qword_27CE64B18;
      }

      else
      {
        if (qword_27CE56F70 != -1)
        {
          swift_once();
        }

        v30 = qword_27CE64B00;
      }

      goto LABEL_33;
    case 0xAu:
      sub_21D100E28(v25, v7, type metadata accessor for TTRAccountsListsViewModel.TipSection);
      v29 = sub_21DBF565C();
      v40 = type metadata accessor for TTRAccountsListsViewModel.TipSection;
      v41 = v7;
      goto LABEL_28;
    case 0xBu:
      sub_21D101450(v25, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (qword_27CE56F68 != -1)
      {
        swift_once();
      }

      v30 = qword_27CE64AE8;
      goto LABEL_33;
    case 0xCu:
      sub_21D100E28(v25, v4, type metadata accessor for TTRAccountsListsViewModel.HashtagsSection);
      v29 = sub_21DBF565C();
      v40 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection;
      v41 = v4;
LABEL_28:
      sub_21D101450(v41, v40);
      goto LABEL_29;
    case 0xDu:
      v49 = v59;
      sub_21D100E28(v25, v59, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
      v50 = sub_21DBF565C();
      sub_21D101450(v49, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
      return v50;
    case 0xEu:
      v31 = *v25;
      v32 = [*v25 uuid];
      sub_21DBF568C();

      v33 = sub_21DBF565C();
      v35 = v34;
      (*(v20 + 8))(v22, v60);
      *&v62 = v33;
      *(&v62 + 1) = v35;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](0xD000000000000014, 0x800000021DC73BB0);

      return v62;
    case 0xFu:
      if (qword_27CE56F80 != -1)
      {
        swift_once();
      }

      v30 = qword_27CE64B30;
      goto LABEL_33;
    case 0x10u:
      if (qword_27CE56F88 != -1)
      {
        swift_once();
      }

      v30 = qword_27CE64B48;
LABEL_33:
      __swift_project_value_buffer(v60, v30);
      result = sub_21DBF565C();
      break;
    default:
      v26 = v20;
      v27 = v60;
      (*(v20 + 32))(v22, v25, v60);
      *&v62 = sub_21DBF565C();
      *(&v62 + 1) = v28;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](0x79786F72705FLL, 0xE600000000000000);

      v29 = v62;
      (*(v26 + 8))(v22, v27);
LABEL_29:
      result = v29;
      break;
  }

  return result;
}

uint64_t sub_21D10DEE4(void (*a1)(void))
{
  a1(0);

  return sub_21DBF8E0C();
}

id TTRListBadgeView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo;
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  v10 = &v4[v9];
  swift_beginAccess();
  v11 = xmmword_280D1BAC8;
  v12 = qword_280D1BAD8;
  v13 = unk_280D1BAE0;
  v14 = xmmword_280D1BAE8;
  v15 = byte_280D1BAF8;
  *v10 = xmmword_280D1BAC8;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 2) = v14;
  v10[48] = v15;
  v16 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji];
  *v16 = 0;
  v16[1] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize] = 0x4030000000000000;
  v17 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageParams];
  v18 = objc_opt_self();
  sub_21D0FB960(v11, *(&v11 + 1), v12, v13, v14, *(&v14 + 1), v15);
  *v17 = [v18 whiteColor];
  *(v17 + 2) = 0;
  v17[12] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selected] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_isContextMenuTarget] = 0;
  v19 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams];
  *(v19 + 7) = 1;
  *(v19 + 4) = 0u;
  *(v19 + 5) = 0u;
  *(v19 + 24) = 0;
  *v19 = 2;
  *(v19 + 1) = 3;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 12) = 0;
  sub_21D10E2C8(3, 0, 0, 0, 0, 0);
  v19[100] = 0;
  v20 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowParams];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  v21 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectionParams];
  *v21 = [v18 tertiaryLabelColor];
  *(v21 + 8) = xmmword_21DC3F230;
  v22 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_contentInset];
  v23 = *(MEMORY[0x277D768C8] + 16);
  *v22 = *MEMORY[0x277D768C8];
  v22[1] = v23;
  *&v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_selectedLayer] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_shadowLayer] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_imageView] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView] = 0;
  v24 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_customSmartListActionViews];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_nonEmojiBackgroundLayerGradientSettings];
  *v25 = 1;
  *(v25 + 10) = 0;
  *(v25 + 24) = 0u;
  *(v25 + 8) = 0u;
  v26 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiBackgroundLayerGradientSettings];
  *v26 = 1;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 10) = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_layerColorsDirty] = 1;
  v27 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName];
  *v27 = 0;
  v27[1] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreTintColorValue] = 0;
  v28 = &v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_accessibilityDelegate];
  v29 = type metadata accessor for TTRListBadgeView.BackgroundLayer();
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0;
  v30 = [objc_allocWithZone(v29) init];
  *&v4[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer] = v30;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for TTRListBadgeView();
  v31 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D10E5F0();

  return v31;
}

uint64_t sub_21D10E2C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 3)
  {
    return sub_21DB3A9E8(result, a2, a3, a4, a5, a6, sub_21DB3D254);
  }

  return result;
}

id sub_21D10E348()
{
  v1 = &v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape];
  *(v1 + 4) = 0;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v1[40] = 2;
  v2 = &v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings];
  *v2 = 1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 38) = 0;
  *&v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_userInterfaceLayoutDirection] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_disableSublayerUpdates] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TTRListBadgeView.BackgroundLayer();
  v3 = objc_msgSendSuper2(&v8, sel_init);
  [v3 setMasksToBounds_];
  v4 = [objc_allocWithZone(type metadata accessor for TTRNoDefaultImplicitActionLayer()) init];
  [v3 bounds];
  [v4 setFrame_];
  [v3 addSublayer_];
  swift_unknownObjectWeakAssign();
  v5 = [objc_opt_self() clearColor];
  v6 = [v5 CGColor];

  [v3 setBackgroundColor_];
  return v3;
}

id sub_21D10E530(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_21D10E5F0()
{
  v1 = v0;
  [v0 setBackgroundColor_];
  [v0 setOpaque_];
  v2 = [v0 layer];
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  v5 = [v4 CGColor];

  [v2 setBackgroundColor_];
  v6 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer;
  v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer];
  v8 = [v1 effectiveUserInterfaceLayoutDirection];
  v9 = *&v7[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_userInterfaceLayoutDirection];
  *&v7[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_userInterfaceLayoutDirection] = v8;
  if (v8 != v9)
  {
    sub_21D10F428();
    [v7 setNeedsLayout];
  }

  v48 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.160784314 alpha:1.0];
  v45 = [v3 blackColor];
  v10 = v1;
  v11 = *&v1[v6] + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings;
  v13 = *v11;
  v12 = *(v11 + 16);
  *&v78[14] = *(v11 + 30);
  v77 = v13;
  *v78 = v12;
  v76 = *(v11 + 8);
  v14 = v13;
  v15 = *(&v12 + 1);
  v74 = *(v11 + 40);
  v75 = *(v11 + 44);
  if (v13 == 1)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    sub_21D10EC0C(*(&v12 + 1), *&v78[16]);
    v16 = v15;
    v17 = *&v78[16];
  }

  v67 = v76;
  v66 = v14;
  v68 = v15;
  v69 = *&v78[16];
  v70 = v74;
  v71 = v75;
  sub_21D10EA84(&v77, &v72);
  sub_21D10EABC(&v66);
  v18 = v10;
  v19 = (*&v10[v6] + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings);
  v20 = *(v19 + 30);
  v21 = v19[1];
  v72 = *v19;
  *v73 = v21;
  *&v73[14] = v20;
  v22 = *(v19 + 24);
  v64 = *(v19 + 8);
  v65 = v22;
  if (v72 == 1)
  {
    v23 = 26;
  }

  else
  {
    v23 = *(&v20 + 1) >> 16;
  }

  v44 = v23;
  v57 = v72;
  v58 = v64;
  v59 = v65;
  v60 = *(&v20 + 1) >> 16;
  v61 = HIWORD(v20);
  sub_21D10EA84(&v72, &v62);
  sub_21D10EABC(&v57);
  [v10 setAccessibilityIgnoresInvertColors_];
  v47 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.796078431 alpha:1.0];
  v46 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.701960784 alpha:1.0];
  v24 = (*&v10[v6] + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings);
  v25 = *(v24 + 30);
  v26 = v24[1];
  v62 = *v24;
  *v63 = v26;
  *&v63[14] = v25;
  v27 = *(v24 + 24);
  v55 = *(v24 + 8);
  v56 = v27;
  if (v62 == 1)
  {
    v28 = 26;
  }

  else
  {
    v28 = *(&v25 + 1) >> 16;
  }

  v42 = v28;
  v50 = v62;
  v51 = v55;
  v52 = v56;
  v53 = *&v63[24];
  v54 = HIWORD(v25);
  sub_21D10EA84(&v62, v49);
  sub_21D10EABC(&v50);
  v29 = &v10[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_nonEmojiBackgroundLayerGradientSettings];
  v43 = v6;
  v30 = *&v10[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_nonEmojiBackgroundLayerGradientSettings];
  v31 = *&v10[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_nonEmojiBackgroundLayerGradientSettings + 8];
  v33 = *&v10[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_nonEmojiBackgroundLayerGradientSettings + 16];
  v32 = *(v29 + 3);
  v34 = *(v29 + 4);
  *v29 = v48;
  *(v29 + 1) = v45;
  *(v29 + 2) = 27;
  *(v29 + 3) = v16;
  *(v29 + 4) = v17;
  *(v29 + 10) = v44;
  sub_21D10EC0C(v48, v45);
  sub_21D10EC0C(v16, v17);
  sub_21D10EC4C(v30, v31, v33, v32, v34);
  v35 = &v18[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiBackgroundLayerGradientSettings];
  v36 = *&v18[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiBackgroundLayerGradientSettings];
  v37 = *&v18[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiBackgroundLayerGradientSettings + 8];
  v38 = *&v18[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiBackgroundLayerGradientSettings + 16];
  v39 = *&v18[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiBackgroundLayerGradientSettings + 24];
  v40 = *&v18[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiBackgroundLayerGradientSettings + 32];
  *v35 = v47;
  *(v35 + 1) = v46;
  *(v35 + 2) = 2;
  *(v35 + 3) = 0;
  *(v35 + 4) = 0;
  *(v35 + 10) = v42;
  sub_21D10EC0C(v47, v46);
  sub_21D10EC0C(0, 0);
  sub_21D10EC4C(v36, v37, v38, v39, v40);
  v41 = [v18 layer];
  [v41 addSublayer_];

  sub_21D10EC98();
  sub_21D0D9834(v48, v45);
  sub_21D0D9834(v16, v17);
  sub_21D0D9834(v47, v46);
  sub_21D0D9834(0, 0);
}

uint64_t initializeWithCopy for TTRListBadgeView.BackgroundLayer.GradientAndBorderSettings(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (v3 == 1)
    {
      v4 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v4;
      *(result + 28) = *(a2 + 28);
      goto LABEL_10;
    }

    v5 = *(a2 + 8);
    *result = v3;
    *(result + 8) = v5;
    v6 = result;
    v7 = v3;
    v8 = v5;
    result = v6;
  }

  else
  {
    *result = *a2;
  }

  v9 = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  if (v9)
  {
    v10 = *(a2 + 32);
    *(result + 24) = v9;
    *(result + 32) = v10;
    v11 = result;
    v12 = v9;
    v13 = v10;
    result = v11;
  }

  else
  {
    *(result + 24) = *(a2 + 24);
  }

  *(result + 40) = *(a2 + 40);
LABEL_10:
  *(result + 44) = *(a2 + 44);
  return result;
}

void destroy for TTRListBadgeView.BackgroundLayer.GradientAndBorderSettings(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (v2 == 1)
    {
      return;
    }
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    v4 = *(a1 + 32);
  }
}

id sub_21D10EC0C(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_21D10EC4C(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  if (a1 != 1)
  {
    sub_21D0D9834(a1, a2);

    sub_21D0D9834(a4, a5);
  }
}

void sub_21D10EC98()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji;
  swift_beginAccess();
  v2 = *(v1 + 8) != 0;
  sub_21D10EDC4(v0, v2, &v13);
  v3 = v13;
  v4 = v14;
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = (v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams);
  swift_beginAccess();
  v9 = *v8;
  if (v9 == 2)
  {
    LOBYTE(v9) = v2;
  }

  v10 = *(v0 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer);
  v11 = v8[100];
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v9 & 1;
  v19 = v11;
  v12 = v10;
  sub_21D10EC0C(v3, *(&v3 + 1));
  sub_21D10EC0C(v5, v6);
  sub_21D10EFF0(&v13);
  sub_21D0D9834(v3, *(&v3 + 1));
  sub_21D0D9834(v5, v6);
}

uint64_t sub_21D10EDC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundParams;
  swift_beginAccess();
  v7 = *(v6 + 8);
  v8 = &OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiBackgroundLayerGradientSettings;
  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v8 = &OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_nonEmojiBackgroundLayerGradientSettings;
    }

    else
    {
      if (v7 != 3)
      {
        v19 = *(v6 + 48);
        v22 = *(v6 + 32);
        v21 = *(v6 + 40);
        v25 = v6 + 16;
        v24 = *(v6 + 16);
        v23 = *(v25 + 8);
        result = sub_21DB3A9E8(v7, v24, v23, v22, v21, v19, sub_21D10EC0C);
        goto LABEL_18;
      }

      if ((a2 & 1) == 0)
      {
        v8 = &OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_nonEmojiBackgroundLayerGradientSettings;
      }
    }
  }

  v9 = a1 + *v8;
  v7 = *v9;
  if (*v9 != 1)
  {
    LODWORD(v19) = *(v9 + 40);
    v22 = *(v9 + 24);
    v21 = *(v9 + 32);
    v24 = *(v9 + 8);
    v23 = *(v9 + 16);
    sub_21D10EC0C(*v9, v24);
    result = sub_21D10EC0C(v22, v21);
LABEL_18:
    *a3 = v7;
    *(a3 + 8) = v24;
    *(a3 + 16) = v23;
    *(a3 + 24) = v22;
    *(a3 + 32) = v21;
    goto LABEL_19;
  }

  v10 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer;
  v11 = (*(a1 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_backgroundLayer) + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings);
  v12 = *(v11 + 30);
  v13 = v11[1];
  v40 = *v11;
  v41[0] = v13;
  *(v41 + 14) = v12;
  v39[0] = *(v11 + 20);
  *(v39 + 10) = *(v11 + 30);
  v34 = v40;
  if (v40 == 1)
  {
    v14 = 27;
  }

  else
  {
    v14 = v13;
  }

  v35 = v13;
  *v36 = v39[0];
  *&v36[10] = *(v39 + 10);
  sub_21D10EA84(&v40, &v37);
  sub_21D10EABC(&v34);
  v15 = (*(a1 + v10) + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings);
  v16 = *(v15 + 30);
  v17 = v15[1];
  v37 = *v15;
  *v38 = v17;
  *&v38[14] = v16;
  v18 = *(v15 + 24);
  v32 = *(v15 + 8);
  v33 = v18;
  if (v37 == 1)
  {
    LODWORD(v19) = 26;
  }

  else
  {
    LODWORD(v19) = *(&v16 + 1) >> 16;
  }

  v27 = v37;
  v28 = v32;
  v29 = v33;
  v30 = *&v38[24];
  v31 = HIWORD(v16);
  sub_21D10EA84(&v37, &v26);
  result = sub_21D10EABC(&v27);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = v14;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
LABEL_19:
  *(a3 + 40) = v19;
  return result;
}

uint64_t sub_21D10EFF0(__int128 *a1)
{
  v2 = (v1 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings);
  v3 = *(v1 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 16);
  v12 = *(v1 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings);
  v13[0] = v3;
  *(v13 + 14) = *(v1 + OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 30);
  v14 = v12;
  v15[0] = v3;
  *(v15 + 14) = *(v13 + 14);
  v4 = a1[1];
  *v2 = *a1;
  v2[1] = v4;
  *(v2 + 30) = *(a1 + 30);
  sub_21D10EA84(&v12, &v18);
  sub_21D10EABC(&v14);
  v5 = v2[1];
  v16 = *v2;
  v17[0] = v5;
  *(v17 + 14) = *(v2 + 30);
  v6 = v2[1];
  v10 = *v2;
  v11[0] = v6;
  *(v11 + 14) = *(v2 + 30);
  v8 = v12;
  v9[0] = v13[0];
  *(v9 + 14) = *(v13 + 14);
  sub_21D10EA84(&v16, &v18);
  LOBYTE(v2) = sub_21D10F0DC(&v10, &v8);
  v18 = v10;
  v19[0] = v11[0];
  *(v19 + 14) = *(v11 + 14);
  sub_21D10EABC(&v18);
  if ((v2 & 1) == 0)
  {
    sub_21D10F428();
  }

  return sub_21D10EABC(&v12);
}

uint64_t sub_21D10F0DC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = *(a1 + 45);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 44);
  v17 = *(a2 + 45);
  if (*a1 == 1)
  {
    v39 = *(a2 + 24);
    v40 = *(a2 + 32);
    v34 = *(a2 + 44);
    v36 = *(a1 + 44);
    v32 = *(a2 + 45);
    v33 = *(a1 + 45);
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    sub_21D10F3DC(1, v2, v5, v4, v6);
    if (v11 == 1)
    {
      sub_21D10F3DC(1, v10, v12, v39, v40);
      sub_21D10EC4C(1, v2, v5, v18, v19);
      if (v36 == v34)
      {
        return v33 ^ v32 ^ 1u;
      }

      return 0;
    }

    sub_21D10F3DC(v11, v10, v12, v39, v40);
LABEL_8:
    sub_21D10EC4C(v3, v2, v5, v18, v19);
    sub_21D10EC4C(v11, v10, v12, v39, v40);
    return 0;
  }

  v47 = *a1;
  v48 = v2;
  v49 = v5;
  v50 = v4;
  v51 = v6;
  v52 = v7;
  if (v11 == 1)
  {
    v20 = v2;
    v21 = v13;
    v18 = v4;
    v37 = v2;
    v40 = v14;
    v19 = v6;
    v22 = v21;
    sub_21D10F3DC(v3, v20, v5, v4, v6);
    v39 = v22;
    v23 = v22;
    v2 = v37;
    sub_21D10F3DC(1, v10, v12, v23, v40);
    sub_21D10F3DC(v3, v37, v5, v18, v19);
    sub_21D0D9834(v3, v37);
    sub_21D0D9834(v18, v19);
    goto LABEL_8;
  }

  v35 = v16;
  v38 = v8;
  v32 = v17;
  v33 = v9;
  v41 = v11;
  v42 = v10;
  v43 = v12;
  v44 = v13;
  v45 = v14;
  v46 = v15;
  v30 = v6;
  v31 = v4;
  sub_21D10F3DC(v3, v2, v5, v4, v6);
  sub_21D10F3DC(v11, v10, v12, v13, v14);
  sub_21D10F3DC(v3, v2, v5, v31, v30);
  v25 = _s15RemindersUICore16TTRListBadgeViewC16GradientSettingsV2eeoiySbAE_AEtFZ_0(&v47, &v41);
  v26 = v44;
  v27 = v45;
  sub_21D0D9834(v41, v42);
  sub_21D0D9834(v26, v27);
  v28 = v50;
  v29 = v51;
  sub_21D0D9834(v47, v48);
  sub_21D0D9834(v28, v29);
  sub_21D10EC4C(v3, v2, v5, v31, v30);
  result = 0;
  if (v25 && ((v38 ^ v35) & 1) == 0)
  {
    return v33 ^ v32 ^ 1u;
  }

  return result;
}

id sub_21D10F3DC(id result, void *a2, uint64_t a3, void *a4, void *a5)
{
  if (result != 1)
  {
    sub_21D10EC0C(result, a2);

    return sub_21D10EC0C(a4, a5);
  }

  return result;
}

void sub_21D10F428()
{
  if ((v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_disableSublayerUpdates] & 1) == 0)
  {
    v1 = &v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings];
    v2 = v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_gradientAndBorderSettings + 44];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (v2 == 1)
    {
      if (Strong)
      {
        v4 = Strong;
        [Strong removeFromSuperlayer];
      }

      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        [v5 removeFromSuperlayer];
      }

      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      v7 = 0;
      v8 = 0;
      v9 = *(v1 + 1);
      v81 = *v1;
      *v82 = v9;
      *&v82[14] = *(v1 + 30);
      v80[0] = v9;
      *(v80 + 14) = *&v82[14];
      if (v81 != 1)
      {
        sub_21D10EC0C(v81, *(&v81 + 1));
        v8 = *(&v81 + 1);
        v7 = v81;
      }

      v76 = v81;
      v77[0] = v80[0];
      *(v77 + 14) = *(v80 + 14);
      sub_21D10EA84(&v81, &v78);
      sub_21D10EABC(&v76);
      v74 = v7;
      v75 = v8;
      v10 = *(v1 + 1);
      v78 = *v1;
      v79[0] = v10;
      *(v79 + 14) = *(v1 + 30);
      *v71 = *(v1 + 20);
      *&v71[10] = *(v1 + 30);
      v69 = v78;
      if (v78 == 1)
      {
        v11 = 27;
      }

      else
      {
        v11 = v10;
      }

      v70 = v10;
      sub_21D10EA84(&v78, &v72);
      sub_21D10EABC(&v69);
      v12 = sub_21DB398F8(&v74, v11);
      sub_21D0D9834(v74, v75);
      swift_unknownObjectWeakAssign();

      v13 = *(v1 + 1);
      v72 = *v1;
      *v73 = v13;
      *&v73[14] = *(v1 + 30);
      v68 = *(v1 + 8);
      v14 = v72;
      v15 = *&v73[8];
      v16 = *&v73[16];
      v66 = *(v1 + 10);
      v67 = *(v1 + 22);
      if (v72 == 1)
      {
        v17 = 0;
        v18 = 0;
      }

      else
      {
        sub_21D10EC0C(*&v73[8], *&v73[16]);
        v17 = v15;
        v18 = v16;
      }

      v58 = v14;
      v59 = v68;
      v60 = v15;
      v61 = v16;
      v62 = v66;
      v63 = v67;
      sub_21D10EA84(&v72, &v64);
      sub_21D10EABC(&v58);
      v56 = v17;
      v57 = v18;
      *&v65[14] = *(v1 + 30);
      v22 = *(v1 + 1);
      v64 = *v1;
      *v65 = v22;
      v52 = *(v1 + 8);
      v53 = *(v1 + 24);
      if (v64 == 1)
      {
        v23 = 26;
      }

      else
      {
        v23 = *&v65[24];
      }

      v51 = v64;
      v54 = *&v65[24];
      v55 = *&v65[28];
      sub_21D10EA84(&v64, &v50);
      sub_21D10EABC(&v51);
      v24 = sub_21DB398F8(&v56, v23);
      sub_21D0D9834(v56, v57);
      swift_unknownObjectWeakAssign();
    }

    else
    {
      if (Strong)
      {
        v19 = Strong;
        [Strong removeFromSuperlayer];
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        [v20 removeFromSuperlayer];
      }

      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
    }

    v25 = &v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape];
    if (v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_shape + 40] == 1)
    {
      v26 = [v0 mask];
      if (!v26)
      {
        v27 = [objc_allocWithZone(type metadata accessor for TTRNoDefaultImplicitActionShapeLayer()) init];
        [v27 setFillRule_];
        [v0 setMask_];
        swift_unknownObjectWeakAssign();
        v26 = v27;
      }

      v28 = [v0 mask];
      if (v28)
      {
        v29 = v28;
        [v0 bounds];
        [v29 setFrame_];
      }

      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        v32 = *(v25 + 4);
        v33 = v25[40];
        v34 = *(v25 + 1);
        v81 = *v25;
        *v82 = v34;
        *&v82[16] = v32;
        v82[24] = v33;
        [v0 bounds];
        sub_21D11350C(&v81, *&v0[OBJC_IVAR____TtCC15RemindersUICore16TTRListBadgeViewP33_3DF80B16FE3BCF93F419A82E393676A415BackgroundLayer_userInterfaceLayoutDirection], v35, v36, v37, v38);
        v40 = v39;
        [v31 setPath_];
      }
    }

    else
    {
      [v0 setMask_];
      swift_unknownObjectWeakAssign();
    }

    v41 = v1[45];
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v41 == 1)
    {
      if (v42)
      {
      }

      else
      {
        v44 = [objc_allocWithZone(type metadata accessor for TTRNoDefaultImplicitActionLayer()) init];
        [v44 setBorderWidth_];
        v45 = [objc_opt_self() quaternaryLabelColor];
        v46 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v47 = [v45 resolvedColorWithTraitCollection_];

        v48 = [v47 CGColor];
        [v44 setBorderColor_];

        v49 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        [v44 setCompositingFilter_];

        [v0 bounds];
        [v44 setFrame_];
        [v44 setMasksToBounds_];

        [v0 addSublayer_];
        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
      if (v42)
      {
        v43 = v42;
        [v42 removeFromSuperlayer];
      }

      swift_unknownObjectWeakAssign();
    }
  }
}

id sub_21D10FA9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a4];
  v8 = v7;
  if (a3)
  {
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v7)
    {
LABEL_9:
      v19 = 0;
LABEL_10:
      v20 = [objc_opt_self() preferredFontForTextStyle_];
      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE652B0);
    inited = swift_initStackObject();
    v22 = xmmword_21DC08D00;
    v10 = MEMORY[0x277D74430];
    *(inited + 16) = xmmword_21DC08D00;
    v11 = *v10;
    *(inited + 32) = v11;
    *(inited + 40) = a2;
    v12 = v11;
    v13 = sub_21D10FD44(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE652B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE652C0);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_21DC08D00;
    v15 = *MEMORY[0x277D74380];
    *(v14 + 32) = *MEMORY[0x277D74380];
    *(v14 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE652C8);
    *(v14 + 40) = v13;
    v16 = v15;
    sub_21D10FFE4(v14);
    swift_setDeallocating();
    sub_21D0CF7E0(v14 + 32, &qword_27CE58160);
    type metadata accessor for AttributeName(0);
    sub_21D11010C();
    v17 = sub_21DBF9E5C();

    v18 = [v8 fontDescriptorByAddingAttributes_];

    v8 = v18;
  }

  v19 = [v8 fontDescriptorWithDesign_];

  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v20;
}

unint64_t sub_21D10FD44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58168);
    v3 = sub_21DBFC40C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21D10FE34();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_21D10FE3C(uint64_t a1)
{
  sub_21DBFA16C();
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v2 = sub_21DBFC82C();

  return sub_21D10FECC(a1, v2);
}

unint64_t sub_21D10FECC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21DBFA16C();
      v8 = v7;
      if (v6 == sub_21DBFA16C() && v8 == v9)
      {
        break;
      }

      v11 = sub_21DBFC64C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21D10FFE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58158);
    v3 = sub_21DBFC40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21D0D3954(v4, &v11, &qword_27CE58160);
      v5 = v11;
      result = sub_21D10FE34(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21D0CF2E8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_21D11010C()
{
  result = qword_280D17718;
  if (!qword_280D17718)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17718);
  }

  return result;
}

uint64_t sub_21D110164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D1101FC()
{
  sub_21DBFA16C();
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v0 = sub_21DBFC82C();

  return v0;
}

uint64_t sub_21D110278()
{
  v0 = sub_21DBFA16C();
  v2 = v1;
  if (v0 == sub_21DBFA16C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21DBFC64C();
  }

  return v5 & 1;
}

id static UIColor.ttr_color(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() colorNamed:v4 inBundle:a3 compatibleWithTraitCollection:0];

  return v5;
}

double static CGSize.nuiUseDefault.getter()
{
  if (qword_280D0C1F8 != -1)
  {
    swift_once();
  }

  return *&xmmword_280D0C200;
}

__n128 sub_21D1103B4()
{
  result = *MEMORY[0x277CEC620];
  xmmword_280D0C200 = *MEMORY[0x277CEC620];
  return result;
}

void *sub_21D1103F0(void *result, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result[2];
    v15 = a2 + 32;
    v6 = result + 5;
    do
    {
      if (v5)
      {
        v7 = (v15 + 16 * v4);
        v8 = *v7;
        v9 = *(v7 + 8);
        v10 = v6;
        v11 = v5;
        do
        {
          v12 = *(v10 - 1);
          v13 = *v10;
          v10 += 4;
          LODWORD(a3) = v13;
          if (v9)
          {
            v14 = &selRef_setContentCompressionResistancePriority_forAxis_;
          }

          else
          {
            v14 = &selRef_setContentHuggingPriority_forAxis_;
          }

          result = [v12 *v14];
          --v11;
        }

        while (v11);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

char *TTRPinnedListBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillViewCornerRadius] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_selectionBorderWidth] = 0x4010000000000000;
  v4[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_isSelected] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_needsUpdateRadius] = 1;
  type metadata accessor for FillView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v10 setClipsToBounds_];
  *&v4[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_fillView] = v10;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v11 = v10;
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 addSubview_];
  v13 = OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_isSelected;
  swift_beginAccess();
  v14 = *&v12[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView];
  if (v12[v13] == 1)
  {
    if (v14)
    {
      v15 = *&v12[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_borderView];
    }

    else
    {
      v15 = sub_21D1E1408(v12);
      v14 = 0;
    }

    v16 = v14;
    [v15 setHidden_];
  }

  else if (v14)
  {
    [v14 setHidden_];
  }

  v17 = [v12 layer];
  [v17 setAllowsGroupBlending_];

  return v12;
}

id sub_21D11072C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_fillColor] = 0;
  v9 = &v4[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_glowRect];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = [objc_allocWithZone(type metadata accessor for TTRNoDefaultImplicitActionGradientLayer()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC08D20;
  v12 = objc_opt_self();
  v13 = v10;
  v14 = [v12 whiteColor];
  v15 = [v14 colorWithAlphaComponent_];

  v16 = [v15 CGColor];
  type metadata accessor for CGColor(0);
  v18 = v17;
  *(v11 + 56) = v17;
  *(v11 + 32) = v16;
  v19 = [v12 whiteColor];
  v20 = [v19 colorWithAlphaComponent_];

  v21 = [v20 &selRef_originalBoundingMapRect];
  *(v11 + 88) = v18;
  *(v11 + 64) = v21;
  v22 = sub_21DBFA5DC();

  [v13 setColors_];

  [v13 setStartPoint_];
  [v13 setEndPoint_];

  v23 = type metadata accessor for TTRNoDefaultImplicitActionLayer();
  v24 = [objc_allocWithZone(v23) init];
  v25 = [v12 whiteColor];
  v26 = [v25 colorWithAlphaComponent_];

  v27 = [v26 &selRef_originalBoundingMapRect];
  [v24 setBackgroundColor_];

  v28 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v24 setCompositingFilter_];

  v29 = [objc_allocWithZone(v23) init];
  v30 = *MEMORY[0x277CDA608];
  v31 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
  v32 = v29;
  v33 = [v31 initWithType_];
  [v32 setCompositingFilter_];

  v34 = [v12 whiteColor];
  v35 = [v34 colorWithAlphaComponent_];

  v36 = [v35 CGColor];
  [v32 setShadowColor_];

  LODWORD(v37) = 1.0;
  [v32 setShadowOpacity_];
  [v32 setShadowOffset_];
  [v32 setShadowRadius_];
  *&v4[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_gradientLayer] = v13;
  *&v4[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_desaturationLayer] = v24;
  *&v4[OBJC_IVAR____TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF160558FillView_glowLayer] = v32;
  v43.receiver = v4;
  v43.super_class = ObjectType;
  v38 = v13;
  v39 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v40 = [v39 layer];
  [v40 setAllowsGroupBlending_];
  [v40 addSublayer_];
  [v40 addSublayer_];
  [v40 addSublayer_];

  return v39;
}

uint64_t sub_21D110C88(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  v5.i64[0] = *&v2[v4];
  *&v2[v4] = a2;
  v6.n128_u64[0] = 0x3E50000000000000;
  result = sub_21D110D14(v5, v6, a2, v7);
  if ((result & 1) == 0)
  {
    v2[OBJC_IVAR____TtC15RemindersUICore27TTRPinnedListBackgroundView_needsUpdateRadius] = 1;
    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_21D110D14(int8x16_t a1, __n128 a2, double a3, int8x16_t a4)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (a1.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return sub_21D3A0F4C(a1, a2, a3, a4);
  }

  v4 = fabs(a3);
  v5 = fabs(*a1.i64);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (v4 <= 2.22507386e-308)
  {
    v4 = 2.22507386e-308;
  }

  return vabdd_f64(a3, *a1.i64) < v4 * a2.n128_f64[0];
}

uint64_t Array.chunked(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DBFA6DC();
  if (a1)
  {
    v11[7] = 0;
    v11[8] = result;
    v11[9] = a1;
    MEMORY[0x28223BE20](result);
    v11[2] = a3;
    v11[3] = a1;
    v11[4] = a2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59368);
    v8 = sub_21DBFA74C();
    v9 = sub_21D0D0F1C(&qword_280D0C158, &qword_27CE59368);
    return sub_21D110EC8(sub_21D1115BC, v11, v7, v8, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D110EC8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_21DBFBA8C();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_21DBFA4BC();
  v63 = sub_21DBFC06C();
  v58 = sub_21DBFC07C();
  sub_21DBFC00C();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_21DBFA40C();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_21DBFBAFC();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_21DBFC05C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_21DBFBAFC();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_21DBFC05C();
      sub_21DBFBAFC();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t *sub_21D1115E0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = *result;
  v4 = (*result + a2);
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_21DBFA6DC();
    if (result < v4)
    {
      result = sub_21DBFA6DC();
      v4 = result;
    }

    if (v4 >= v3)
    {
      sub_21DBFA77C();
      sub_21DBFBC2C();
      swift_getWitnessTable();
      result = sub_21DBFA76C();
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TTRAccountsListsViewModel.SmartList.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TTRListType.PredefinedSmartListType.title.getter()
{
  v1 = **(&unk_27832F608 + *v0);
  v2 = REMSmartListType.title.getter();
  v4 = v3;

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t REMSmartListType.title.getter()
{
  v0 = sub_21DBFA16C();
  v2 = v1;
  if (v0 == sub_21DBFA16C() && v2 == v3)
  {

LABEL_15:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_50:
    swift_once();
    return sub_21DBF516C();
  }

  v5 = sub_21DBFC64C();

  if (v5)
  {
    goto LABEL_15;
  }

  v6 = sub_21DBFA16C();
  v8 = v7;
  if (v6 == sub_21DBFA16C() && v8 == v9)
  {

LABEL_18:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_50;
  }

  v11 = sub_21DBFC64C();

  if (v11)
  {
    goto LABEL_18;
  }

  v12 = sub_21DBFA16C();
  v14 = v13;
  if (v12 == sub_21DBFA16C() && v14 == v15)
  {

    goto LABEL_21;
  }

  v17 = sub_21DBFC64C();

  if (v17)
  {
LABEL_21:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_50;
  }

  v18 = sub_21DBFA16C();
  v20 = v19;
  if (v18 == sub_21DBFA16C() && v20 == v21)
  {

    goto LABEL_27;
  }

  v22 = sub_21DBFC64C();

  if (v22)
  {
LABEL_27:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_50;
  }

  v23 = sub_21DBFA16C();
  v25 = v24;
  if (v23 == sub_21DBFA16C() && v25 == v26)
  {

    goto LABEL_33;
  }

  v27 = sub_21DBFC64C();

  if (v27)
  {
LABEL_33:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_50;
  }

  v28 = sub_21DBFA16C();
  v30 = v29;
  if (v28 == sub_21DBFA16C() && v30 == v31)
  {

    goto LABEL_39;
  }

  v32 = sub_21DBFC64C();

  if (v32)
  {
LABEL_39:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_50;
  }

  v33 = sub_21DBFA16C();
  v35 = v34;
  if (v33 == sub_21DBFA16C() && v35 == v36)
  {

    goto LABEL_46;
  }

  v37 = sub_21DBFC64C();

  if (v37)
  {
LABEL_46:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_50;
  }

  return 0;
}

uint64_t TTRAccountsListsViewModel.SmartList.countText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRAccountsListsViewModel.SmartList(0) + 28));
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRAccountsListsViewModel.SmartList.dynamicGlyph.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRAccountsListsViewModel.SmartList(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return sub_21DBF8E0C();
}

id TTRIDynamicDateGlyphCache.fetch(dayString:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v7 = v3[3];
  if (v7 && (v3[2] == a1 ? (v8 = v7 == a2) : (v8 = 0), (v8 || (v9 = a3, v10 = sub_21DBFC64C(), a3 = v9, (v10 & 1) != 0)) && (v11 = v3[4]) != 0))
  {

    return v11;
  }

  else
  {
    v13 = a3();
    v4[2] = a1;
    v4[3] = a2;

    v14 = v4[4];
    v4[4] = v13;
    sub_21DBF8E0C();
    v15 = v13;

    return v15;
  }
}

UIImage __swiftcall TTRIDateIconGenerator.generateTodaySmartListTemplateIcon(withText:)(Swift::String withText)
{
  object = withText._object;
  countAndFlagsBits = withText._countAndFlagsBits;
  v4 = *v1;
  type metadata accessor for RemindersUICoreBundleLookupObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21DBFA12C();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v8);
  v10 = v9;

  v11 = *MEMORY[0x277D74400];
  v12 = objc_opt_self();
  v13 = [v12 systemFontOfSize:16.0 weight:v11];
  v14 = [v13 fontDescriptor];
  v15 = [v14 fontDescriptorWithDesign_];

  if (v15)
  {
    v16 = [v12 fontWithDescriptor:v15 size:0.0];

    v13 = v16;
  }

  v17 = [objc_opt_self() blackColor];
  v31[0] = v10;
  v31[1] = v13;
  v31[2] = v17;
  v32 = xmmword_21DC10B80;
  v33 = xmmword_21DC10B90;
  sub_21D1123D0(countAndFlagsBits, object, v31, &v28);
  v18 = v28;
  [v10 size];
  v20 = v19;
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  v34 = v18;
  v35 = v29;
  v36 = v30;
  v37 = sub_21D336DE0;
  v38 = v23;
  MEMORY[0x28223BE20](v23);
  v27[2] = v31;
  v27[3] = &v34;
  v27[4] = v4;
  v24 = sub_21D112914(sub_21D112C28, v27, v20, v22);
  v25 = [v24 imageWithRenderingMode_];

  sub_21D112C9C(&v28);

  return v25;
}

void sub_21D1123D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v6 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  v8 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_21DC08D10;
  v9 = *v8;
  *(inited + 32) = *v8;
  v10 = *(a3 + 8);
  v11 = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 40) = v10;
  v12 = *MEMORY[0x277D740C0];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  v13 = *(a3 + 16);
  v14 = sub_21D0D8CF0(0, &qword_280D1B8F0);
  *(inited + 80) = v13;
  v15 = *MEMORY[0x277D74118];
  *(inited + 104) = v14;
  *(inited + 112) = v15;
  *(inited + 144) = sub_21D0D8CF0(0, &qword_280D17750);
  *(inited + 120) = v6;
  v42 = v9;
  v16 = v10;
  v17 = v12;
  v18 = v13;
  v19 = v15;
  v20 = v6;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v22 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v23 = sub_21DBF9E5C();

  v24 = [v21 initWithString:v22 attributes:v23];

  v25 = MEMORY[0x223D42B30](a1, a2);
  v26 = [objc_allocWithZone(MEMORY[0x277D74260]) init];
  [v26 setMinimumScaleFactor_];
  [v26 setMaximumNumberOfLines_];
  [v26 setWantsBaselineOffset_];
  v27 = *(a3 + 40);
  v28 = *(a3 + 48);
  v29 = v24;
  [v29 boundingRectWithSize:2 options:v26 context:{v27, v28}];
  v31 = ceil(v30);
  v33 = ceil(v32);
  v34 = *(a3 + 32);
  v35 = *(a3 + 24) - v31 * 0.5;
  [v16 pointSize];
  v37 = v36;
  [v26 actualScaleFactor];
  v39 = [v16 fontWithSize_];
  [v29 addAttribute:v42 value:v39 range:{0, v25}];

  *a4 = v29;
  *(a4 + 8) = v35;
  *(a4 + 16) = v34;
  *(a4 + 24) = v31;
  *(a4 + 32) = v33;
}

unint64_t sub_21D11274C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58280);
    v3 = sub_21DBFC40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_21D0D3954(v4, &v11, &unk_27CE5F2C0);
      v5 = v11;
      result = sub_21D10FE34(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21D0CF2E8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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