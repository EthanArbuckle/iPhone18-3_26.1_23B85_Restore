id sub_268F29294(uint64_t a1)
{
  v41 = a1;
  v37 = "ConverterUtils | Attempting to convert device category: %@.";
  v44 = 0;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v30 = &v13 - v29;
  v44 = v1;
  v38 = sub_268F9B284();
  v40 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v40);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v36 = sub_268F9B734();
  v34 = v2;

  v31 = &v43;
  v43 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE378, &unk_268FAA5D0);
  v32 = sub_268F9AE64();
  v33 = v3;
  v34[3] = MEMORY[0x277D837D0];
  v4 = sub_268CDD224();
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v4;
  v9 = v36;
  v34[4] = v8;
  *v7 = v5;
  v7[1] = v6;
  sub_268CD0F7C();
  v39 = v9;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v40);

  if (!v41)
  {
    goto LABEL_11;
  }

  v28 = v41;
  v26 = v41;
  sub_268F9AEF4();
  v25 = v10;
  v27 = sub_268F9A0A4();

  if (!v27)
  {
    goto LABEL_11;
  }

  v24 = v27;
  v20 = v27;
  v42 = v27;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268E30B2C();
  sub_268F9B234();

  v21 = sub_268F99F64();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  if ((*(v22 + 48))(v30, 1) == 1)
  {
    sub_268D9C0BC(v30);
LABEL_11:
    v17 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  v15 = sub_268F99F44();
  v16 = v11;
  (*(v22 + 8))(v30, v21);
  v17 = v15;
  v18 = v16;
LABEL_10:
  v13 = v18;
  v14 = sub_268F2B6D8(v17, v18);

  return v14;
}

uint64_t sub_268F29620(uint64_t a1)
{
  v92 = a1;
  v80 = sub_268F3292C;
  v81 = "ConverterUtils | Enable setting task attributeName is %@";
  v82 = sub_268F3292C;
  v115 = 0;
  v108 = 0;
  v106 = 0;
  v104 = 0;
  v83 = 0;
  v99 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v84 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v85 = &v21 - v84;
  v86 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v21 - v84);
  v87 = &v21 - v86;
  v115 = a1;
  v88 = *sub_268DDB7E8();

  v91 = &v114;
  v114 = v88;
  v4 = sub_268F9A6D4();
  v90 = v113;
  v113[0] = v4;
  v113[1] = v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v93 = sub_268F9AFC4();
  sub_268CD9D30(v90);
  sub_268CD7930(v91);

  if (v93)
  {
    v79 = 1;
  }

  else
  {
    v79 = sub_268F302C4();
  }

  v78 = v79;

  if (v78)
  {
    v77 = 1;
    return v77 & 1;
  }

  sub_268F9A204();

  if (v112[3])
  {
    sub_268F9A394();
    if (swift_dynamicCast())
    {
      v76 = v94;
    }

    else
    {
      v76 = 0;
    }

    v75 = v76;
  }

  else
  {
    sub_268D28414(v112);
    v75 = 0;
  }

  v74 = v75;
  if (!v75)
  {

    sub_268F9A204();

    if (v111[3])
    {
      sub_268F9A444();
      if (swift_dynamicCast())
      {
        v46 = v100;
      }

      else
      {
        v46 = 0;
      }

      v45 = v46;
    }

    else
    {
      sub_268D28414(v111);
      v45 = 0;
    }

    v44 = v45;
    if (!v45)
    {

      sub_268F9A204();

      if (v110[3])
      {
        sub_268F9A2A4();
        if (swift_dynamicCast())
        {
          v28 = v105;
        }

        else
        {
          v28 = 0;
        }

        v27 = v28;
      }

      else
      {
        sub_268D28414(v110);
        v27 = 0;
      }

      v26 = v27;
      if (v27)
      {
        v25 = v26;
        v106 = v26;

        v77 = 1;
      }

      else
      {

        sub_268F9A204();

        if (v109[3])
        {
          sub_268F9A2F4();
          if (swift_dynamicCast())
          {
            v24 = v107;
          }

          else
          {
            v24 = 0;
          }

          v23 = v24;
        }

        else
        {
          sub_268D28414(v109);
          v23 = 0;
        }

        v22 = v23;
        if (v23)
        {
          v21 = v22;
          v108 = v22;

          v77 = 1;
        }

        else
        {
          v77 = 0;
        }
      }

      return v77 & 1;
    }

    v43 = v44;
    v41 = v44;
    v104 = v44;

    sub_268F9A5C4();
    v42 = v101[1];

    if (v42)
    {
      v40 = v42;
      v38 = v42;
      v18 = sub_268DDA5D0();
      v36 = *v18;
      v37 = v18[1];

      v39 = sub_268F9A0A4();

      if (v39)
      {
        v35 = v39;
        v19 = v83;
        v101[0] = v39;
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v19)
        {
          goto LABEL_63;
        }

        sub_268CD7930(v101);
        v31 = sub_268F99F64();
        v32 = *(v31 - 8);
        v33 = v31 - 8;
        if ((*(v32 + 48))(v85, 1) != 1)
        {
          v29 = sub_268F99F44();
          v30 = v20;
          (*(v32 + 8))(v85, v31);
          v102 = v29;
          v103 = v30;
LABEL_41:
          sub_268CD9D30(&v102);

          v77 = 0;
          return v77 & 1;
        }

        sub_268D9C0BC(v85);
      }
    }

    v102 = 0;
    v103 = 0;
    goto LABEL_41;
  }

  v73 = v74;
  v71 = v74;
  v99 = v74;

  sub_268F9A5C4();
  v72 = v96[2];

  if (!v72)
  {
    goto LABEL_23;
  }

  v70 = v72;
  v68 = v72;
  v6 = sub_268DDA5D0();
  v66 = *v6;
  v67 = v6[1];

  v69 = sub_268F9A0A4();

  if (!v69)
  {
    goto LABEL_23;
  }

  v65 = v69;
  v7 = v83;
  v95 = v69;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v7)
  {
    sub_268CD7930(&v95);
    v61 = sub_268F99F64();
    v62 = *(v61 - 8);
    v63 = v61 - 8;
    if ((*(v62 + 48))(v87, 1) != 1)
    {
      v59 = sub_268F99F44();
      v60 = v9;
      (*(v62 + 8))(v87, v61);
      v97 = v59;
      v98 = v60;
LABEL_22:
      v55 = sub_268F9B284();
      v57 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v57);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v54 = sub_268F9B734();
      v52 = v10;
      v58 = &v97;
      v47 = v97;
      v48 = v98;

      v49 = v96;
      v96[0] = v47;
      v96[1] = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
      v50 = sub_268F9AE64();
      v51 = v11;
      v52[3] = MEMORY[0x277D837D0];
      v12 = sub_268CDD224();
      v13 = v50;
      v14 = v51;
      v15 = v52;
      v16 = v12;
      v17 = v54;
      v52[4] = v16;
      *v15 = v13;
      v15[1] = v14;
      sub_268CD0F7C();
      v56 = v17;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v57);
      sub_268CD9D30(v58);

      v77 = 0;
      return v77 & 1;
    }

    sub_268D9C0BC(v87);
LABEL_23:
    v97 = 0;
    v98 = 0;
    goto LABEL_22;
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_268F2A01C(uint64_t a1)
{
  v70 = a1;
  v64 = sub_268F329F8;
  v82 = 0;
  v78 = 0;
  v65 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v66 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v67 = &v20 - v66;
  v68 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE380, &unk_268FAA5E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v70);
  v69 = &v20 - v68;
  v82 = v2;

  sub_268F9A204();

  if (v81[3])
  {
    sub_268F9A524();
    if (swift_dynamicCast())
    {
      v63 = v71;
    }

    else
    {
      v63 = 0;
    }

    v62 = v63;
  }

  else
  {
    sub_268D28414(v81);
    v62 = 0;
  }

  v61 = v62;
  if (!v62)
  {
    v21 = *sub_268DDB148();

    v24 = &v80;
    v80 = v21;
    v18 = sub_268F9A6D4();
    v23 = v79;
    v79[0] = v18;
    v79[1] = v19;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268DA6BFC();
    v25 = sub_268F9AFC4();
    sub_268CD9D30(v23);
    sub_268CD7930(v24);
    v50 = v25;
    return v50 & 1;
  }

  v60 = v61;
  v58 = v61;
  v78 = v61;

  sub_268F9A324();
  v59 = v77;

  if (v59 && (v57 = v59, v55 = v59, v56 = sub_268F9A074(), , v56))
  {
    v54 = v56;
    v53 = v56;
    sub_268F9A334();
  }

  else
  {
    v4 = sub_268F9A344();
    (*(*(v4 - 8) + 56))(v69, 1);
  }

  v3 = sub_268F9A344();
  v52 = (*(*(v3 - 8) + 48))(v69, 1) != 1;
  v51 = v52;
  sub_268F32950(v69);
  if (v51)
  {

    v50 = 1;
    return v50 & 1;
  }

  sub_268F9A324();
  v49 = v74[1];

  if (!v49)
  {
    goto LABEL_27;
  }

  v48 = v49;
  v46 = v49;
  v5 = sub_268DDA5D0();
  v44 = *v5;
  v45 = v5[1];

  v47 = sub_268F9A0A4();

  if (!v47)
  {
    goto LABEL_27;
  }

  v43 = v47;
  v6 = v65;
  v72 = v47;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v6)
  {
    sub_268CD7930(&v72);
    v39 = sub_268F99F64();
    v40 = *(v39 - 8);
    v41 = v39 - 8;
    if ((*(v40 + 48))(v67, 1) != 1)
    {
      v37 = sub_268F99F44();
      v38 = v8;
      (*(v40 + 8))(v67, v39);
      v75 = v37;
      v76 = v38;
LABEL_26:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
      v27 = sub_268F9B734();
      v26 = v9;
      v10 = sub_268EC63FC();
      v11 = v26;
      *v26 = v10;
      v11[1] = v12;
      v13 = sub_268EC63FC();
      v14 = v26;
      v15 = v13;
      v16 = v27;
      v26[2] = v15;
      v14[3] = v17;
      sub_268CD0F7C();
      v34 = v74;
      v74[0] = v16;
      v35 = &v75;
      v29 = v75;
      v30 = v76;

      v33 = v73;
      v73[0] = v29;
      v73[1] = v30;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF38, &unk_268FA2B18);
      v32 = sub_268E0FC34();
      sub_268E0FCBC();
      v36 = sub_268F9AFC4();
      sub_268CD9D30(v33);
      sub_268CD7930(v34);
      sub_268CD9D30(v35);

      v50 = v36;
      return v50 & 1;
    }

    sub_268D9C0BC(v67);
LABEL_27:
    v75 = 0;
    v76 = 0;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_268F2A84C(uint64_t a1)
{
  v59 = a1;
  v49 = sub_268D9C164;
  v50 = "ConverterUtils shouldConvertToOpenSettingIntentChatGPT | Verb is enable, using .chatGPTSetup instead";
  v72 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v65 = 0;
  v51 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v52 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v53 = &v14 - v52;
  v54 = sub_268F99F64();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v58 = &v14 - v57;
  v72 = &v14 - v57;
  v71 = v2;

  sub_268F9A204();

  if (v70[3])
  {
    sub_268F9A394();
    if (swift_dynamicCast())
    {
      v48 = v60;
    }

    else
    {
      v48 = 0;
    }

    v47 = v48;
  }

  else
  {
    sub_268D28414(v70);
    v47 = 0;
  }

  v46 = v47;
  if (!v47)
  {
    goto LABEL_24;
  }

  v45 = v46;
  v43 = v46;
  v65 = v46;

  sub_268F9A5C4();
  v44 = v64;

  if (!v44)
  {
    goto LABEL_22;
  }

  v42 = v44;
  v40 = v44;
  v3 = sub_268DDA5D0();
  v38 = *v3;
  v39 = v3[1];

  v41 = sub_268F9A0A4();

  if (!v41)
  {
LABEL_22:
    (*(v55 + 56))(v53, 1, 1, v54);
LABEL_17:
    if ((*(v55 + 48))(v53, 1, v54) == 1)
    {
      sub_268D9C0BC(v53);
    }

    else
    {
      (*(v55 + 32))(v58, v53, v54);
      v32 = sub_268F99F44();
      v34 = v6;
      v63 = 55;
      v7 = BinarySettingIdentifier.rawValue.getter();
      v33 = v8;
      v35 = MEMORY[0x26D62DB50](v32, v34, v7);

      if (v35)
      {
        v25 = sub_268F9B284();
        v27 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v26 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v27);
        v62 = 56;
        v28 = BinarySettingIdentifier.rawValue.getter();
        v29 = v9;
        (*(v55 + 8))(v58, v54);

        v30 = v28;
        v31 = v29;
        return v30;
      }

      (*(v55 + 8))(v58, v54);
    }

LABEL_24:
    v23 = sub_268F30590(v59);
    v24 = v10;
    if (v10)
    {
      v21 = v23;
      v22 = v24;
      v18 = v24;
      v17 = v23;
      v68 = v23;
      v69 = v24;
      v67 = 55;
      v11 = BinarySettingIdentifier.rawValue.getter();
      v19 = v12;
      v20 = MEMORY[0x26D62DB50](v17, v18, v11);

      if (v20)
      {
        v66 = 55;
        v15 = BinarySettingIdentifier.rawValue.getter();
        v16 = v13;

        v30 = v15;
        v31 = v16;
        return v30;
      }
    }

    v30 = 0;
    v31 = 0;
    return v30;
  }

  v37 = v41;
  v4 = v51;
  v61 = v41;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v4)
  {
    sub_268CD7930(&v61);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_268F2AFA8(uint64_t a1)
{
  v41 = a1;
  v64 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v42 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v43 = v8 - v42;
  v64 = a1;
  v44 = *sub_268DDB04C();

  v48 = &v63;
  v63 = v44;
  v3 = sub_268F9A6D4();
  v47 = v62;
  v62[0] = v3;
  v62[1] = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  v46 = sub_268DA6BFC();
  v49 = sub_268F9AFC4();
  sub_268CD9D30(v47);
  sub_268CD7930(v48);
  if ((v49 & 1) == 0)
  {

    sub_268F9A204();

    if (v61[3])
    {
      sub_268F9A304();
      if (swift_dynamicCast())
      {
        v39 = v50;
      }

      else
      {
        v39 = 0;
      }

      v38 = v39;
    }

    else
    {
      sub_268D28414(v61);
      v38 = 0;
    }

    v37 = v38;
    v60 = v38;
    v59 = v38;
    v36 = v38 != 0;
    if (!v38)
    {
      goto LABEL_24;
    }

    if (v37)
    {
      v35 = v37;
      v33 = v37;
      sub_268F9A5C4();
      v34 = v52;

      if (v34)
      {
        v32 = v34;
        v30 = v34;
        v5 = sub_268DDA5D0();
        v28 = *v5;
        v29 = v5[1];

        v31 = sub_268F9A0A4();

        if (v31)
        {
          v27 = v31;
          v23 = v31;
          v51 = v31;
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268E30B2C();
          sub_268F9B234();

          v24 = sub_268F99F64();
          v25 = *(v24 - 8);
          v26 = v24 - 8;
          if ((*(v25 + 48))(v43, 1) != 1)
          {
            v18 = sub_268F99F44();
            v19 = v6;
            (*(v25 + 8))(v43, v24);
            v20 = v18;
            v21 = v19;
            goto LABEL_21;
          }

          sub_268D9C0BC(v43);
        }
      }
    }

    v20 = 0;
    v21 = 0;
LABEL_21:
    v16 = v21;
    v17 = v20;
    if (v21)
    {
      v14 = v17;
      v15 = v16;
      v12 = v16;
      v10 = v17;
      v57 = v17;
      v58 = v16;
      v8[0] = sub_268DDB650();
      v8[1] = &v56;
      swift_beginAccess();
      v9 = *v8[0];

      swift_endAccess();
      v11 = &v55;
      v55 = v9;
      v53 = v10;
      v54 = v12;
      v13 = sub_268F9AFC4();
      sub_268CD7930(v11);

      v40 = v13;
      return v40 & 1;
    }

LABEL_24:

    v40 = 0;
    return v40 & 1;
  }

  v40 = 1;
  return v40 & 1;
}

uint64_t *sub_268F2B678()
{
  if (qword_2802DB828 != -1)
  {
    swift_once();
  }

  return &qword_2802F16D8;
}

id sub_268F2B6D8(uint64_t a1, uint64_t a2)
{
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v23[2] = a1;
  v23[3] = a2;
  v23[0] = 0;
  v23[1] = 0;

  v21 = v20;
  if (*(&v20 + 1))
  {
    v22 = v21;
  }

  else
  {
    sub_268D28874(v23, &v22);
  }

  v19 = v22;
  if (*(&v22 + 1))
  {
    sub_268F9B284();
    v2 = sub_268DC7EA8();
    v18 = *v2;
    MEMORY[0x277D82BE0](*v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v3;

    *(v17 + 24) = MEMORY[0x277D837D0];
    *(v17 + 32) = sub_268CDD224();
    *v17 = v19;
    sub_268CD0F7C();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v18);
    sub_268F2D8D4(v19, *(&v19 + 1));
    if (v4)
    {
      sub_268F9B284();
      v8 = sub_268DC7EA8();
      v12 = *v8;
      MEMORY[0x277D82BE0](*v8);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v12);

      sub_268CD9D30(v23);
      return 0;
    }

    else
    {
      sub_268F9B284();
      v5 = sub_268DC7EA8();
      v14 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B734();
      v13 = v6;
      sub_268CD4334();
      v13[3] = MEMORY[0x277D83B88];
      v13[4] = MEMORY[0x277D83C10];
      *v13 = v7;
      sub_268CD0F7C();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v14);
      sub_268E62B3C();
      v15 = sub_268F2D990(v19, *(&v19 + 1), 0, 0);
      sub_268CD9D30(v23);
      return v15;
    }
  }

  else
  {
    sub_268F9B284();
    v9 = sub_268DC7EA8();
    v11 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v11);
    sub_268CD9D30(v23);
    return 0;
  }
}

uint64_t sub_268F2BB3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE388, &qword_268FAA5F0);
  sub_268F9B734();
  v18 = v0;
  *v0 = BinarySettingIdentifier.rawValue.getter();
  v18[1] = v1;
  v18[2] = sub_268F9AEF4();
  v18[3] = v2;
  v18[4] = BinarySettingIdentifier.rawValue.getter();
  v18[5] = v3;
  v18[6] = sub_268F9AEF4();
  v18[7] = v4;
  v18[8] = BinarySettingIdentifier.rawValue.getter();
  v18[9] = v5;
  v18[10] = sub_268F9AEF4();
  v18[11] = v6;
  v18[12] = BinarySettingIdentifier.rawValue.getter();
  v18[13] = v7;
  v18[14] = sub_268F9AEF4();
  v18[15] = v8;
  v18[16] = BinarySettingIdentifier.rawValue.getter();
  v18[17] = v9;
  v18[18] = sub_268F9AEF4();
  v18[19] = v10;
  v18[20] = BinarySettingIdentifier.rawValue.getter();
  v18[21] = v11;
  v18[22] = sub_268F9AEF4();
  v18[23] = v12;
  v18[24] = BinarySettingIdentifier.rawValue.getter();
  v18[25] = v13;
  v18[26] = sub_268F9AEF4();
  v18[27] = v14;
  v18[28] = BinarySettingIdentifier.rawValue.getter();
  v18[29] = v15;
  v18[30] = sub_268F9AEF4();
  v18[31] = v16;
  sub_268CD0F7C();
  result = sub_268F9ADA4();
  qword_2802F1688 = result;
  return result;
}

uint64_t *sub_268F2BDEC()
{
  if (qword_2802DB7F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1688;
}

unint64_t sub_268F2BE4C()
{
  v2 = qword_2802DE360;
  if (!qword_2802DE360)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DE360);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268F2BEB0()
{
  v1 = *sub_268F2BDEC();

  return v1;
}

uint64_t sub_268F2BEE0()
{
  result = sub_268F9AEF4();
  qword_2802F1690 = result;
  qword_2802F1698 = v1;
  return result;
}

uint64_t *sub_268F2BF24()
{
  if (qword_2802DB7F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1690;
}

uint64_t sub_268F2BF84()
{
  v0 = sub_268F2BF24();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268F2BFC0()
{
  result = sub_268F9AEF4();
  qword_2802F16A0 = result;
  qword_2802F16A8 = v1;
  return result;
}

uint64_t sub_268F2C004()
{
  result = sub_268F9AEF4();
  qword_2802F16B0 = result;
  qword_2802F16B8 = v1;
  return result;
}

uint64_t *sub_268F2C048()
{
  if (qword_2802DB808 != -1)
  {
    swift_once();
  }

  return &qword_2802F16B0;
}

uint64_t sub_268F2C0A8()
{
  v0 = sub_268F2C048();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268F2C0E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE390, &qword_268FAA5F8);
  sub_268F9B734();
  v18 = v0;
  *v0 = sub_268E42B68();
  v18[1] = v1;
  v18[2] = 1;
  v18[3] = sub_268E42B68();
  v18[4] = v2;
  v18[5] = 1;
  v18[6] = sub_268E42B68();
  v18[7] = v3;
  v18[8] = 9;
  v18[9] = sub_268E42B68();
  v18[10] = v4;
  v18[11] = 9;
  v18[12] = sub_268E42B68();
  v18[13] = v5;
  v18[14] = 9;
  v18[15] = sub_268E42B68();
  v18[16] = v6;
  v18[17] = 10;
  v18[18] = sub_268E42B68();
  v18[19] = v7;
  v18[20] = 9;
  v18[21] = sub_268E42B68();
  v18[22] = v8;
  v18[23] = 8;
  v18[24] = sub_268E42B68();
  v18[25] = v9;
  v18[26] = 13;
  v18[27] = sub_268E42B68();
  v18[28] = v10;
  v18[29] = 11;
  v18[30] = sub_268E42B68();
  v18[31] = v11;
  v18[32] = 12;
  v18[33] = sub_268E42B68();
  v18[34] = v12;
  v18[35] = 14;
  v18[36] = sub_268E42B68();
  v18[37] = v13;
  v18[38] = 3;
  v18[39] = sub_268E42B68();
  v18[40] = v14;
  v18[41] = 10;
  v18[42] = sub_268E42B68();
  v18[43] = v15;
  v18[44] = 7;
  v18[45] = sub_268E42B68();
  v18[46] = v16;
  v18[47] = 6;
  sub_268CD0F7C();
  type metadata accessor for INDeviceCategory();
  result = sub_268F9ADA4();
  qword_280FE8268 = result;
  return result;
}

uint64_t *sub_268F2C37C()
{
  if (qword_280FE5940 != -1)
  {
    swift_once();
  }

  return &qword_280FE8268;
}

uint64_t sub_268F2C3DC()
{
  v1 = *sub_268F2C37C();

  return v1;
}

uint64_t sub_268F2C40C()
{
  v12 = sub_268F9B734();
  v11 = v0;
  *v0 = BinarySettingIdentifier.rawValue.getter();
  v11[1] = v1;
  v11[2] = BinarySettingIdentifier.rawValue.getter();
  v11[3] = v2;
  v11[4] = BinarySettingIdentifier.rawValue.getter();
  v11[5] = v3;
  v11[6] = BinarySettingIdentifier.rawValue.getter();
  v11[7] = v4;
  v11[8] = BinarySettingIdentifier.rawValue.getter();
  v11[9] = v5;
  v11[10] = BinarySettingIdentifier.rawValue.getter();
  v11[11] = v6;
  v11[12] = BinarySettingIdentifier.rawValue.getter();
  v11[13] = v7;
  v8 = BinarySettingIdentifier.rawValue.getter();
  result = v12;
  v11[14] = v8;
  v11[15] = v10;
  sub_268CD0F7C();
  qword_2802F16C0 = v12;
  return result;
}

uint64_t *sub_268F2C54C()
{
  if (qword_2802DB818 != -1)
  {
    swift_once();
  }

  return &qword_2802F16C0;
}

uint64_t sub_268F2C5AC()
{
  v1 = *sub_268F2C54C();

  return v1;
}

uint64_t sub_268F2C5DC()
{
  result = sub_268F9AEF4();
  qword_280FE8278 = result;
  qword_280FE8280 = v1;
  return result;
}

uint64_t *sub_268F2C620()
{
  if (qword_280FE5950 != -1)
  {
    swift_once();
  }

  return &qword_280FE8278;
}

uint64_t sub_268F2C680()
{
  v0 = sub_268F2C620();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268F2C6BC()
{
  v10 = sub_268F9B734();
  v9 = v0;
  *v0 = sub_268F9AEF4();
  v9[1] = v1;
  v9[2] = sub_268F9AEF4();
  v9[3] = v2;
  v3 = sub_268F2C620();
  sub_268D28874(v3, v9 + 4);
  v9[6] = sub_268F9AEF4();
  v9[7] = v4;
  v9[8] = sub_268F9AEF4();
  v9[9] = v5;
  v6 = sub_268F9AEF4();
  result = v10;
  v9[10] = v6;
  v9[11] = v8;
  sub_268CD0F7C();
  qword_280FE8270 = v10;
  return result;
}

uint64_t sub_268F2C7F4()
{
  v1 = *sub_268F2848C();

  return v1;
}

uint64_t sub_268F2C824()
{
  result = sub_268F9AEF4();
  qword_2802F16C8 = result;
  qword_2802F16D0 = v1;
  return result;
}

uint64_t *sub_268F2C868()
{
  if (qword_2802DB820 != -1)
  {
    swift_once();
  }

  return &qword_2802F16C8;
}

uint64_t sub_268F2C8C8()
{
  v0 = sub_268F2C868();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268F2C904()
{
  v5 = sub_268F9B734();
  v4 = v0;
  v1 = sub_268F9AEF4();
  result = v5;
  *v4 = v1;
  v4[1] = v3;
  sub_268CD0F7C();
  qword_2802F16D8 = v5;
  return result;
}

uint64_t sub_268F2C984()
{
  v1 = *sub_268F2B678();

  return v1;
}

uint64_t sub_268F2C9B4()
{
  result = sub_268F9AEF4();
  qword_2802F16E0 = result;
  qword_2802F16E8 = v1;
  return result;
}

uint64_t sub_268F2C9F8()
{
  v0 = sub_268F2842C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268F2CA34()
{
  v5 = sub_268F9B734();
  v4 = v0;
  v1 = sub_268D8E300();
  sub_268D28874(v1, v4);
  v2 = sub_268D8E3E0();
  sub_268D28874(v2, v4 + 2);
  result = v5;
  sub_268CD0F7C();
  qword_2802F16F0 = v5;
  return result;
}

uint64_t *sub_268F2CAA0()
{
  if (qword_2802DB838 != -1)
  {
    swift_once();
  }

  return &qword_2802F16F0;
}

uint64_t sub_268F2CB00()
{
  v1 = *sub_268F2CAA0();

  return v1;
}

id sub_268F2CB30(void *a1)
{
  v75 = a1;
  v70 = "ConverterUtils | Determined connected HEADPHONES device";
  v71 = "ConverterUtils | Determined connected CARPLAY device";
  v72 = "ConverterUtils | DEVICE STATE UNAVAILABLE.";
  v73 = "ConverterUtils | Determined sidekick experience.";
  v74 = "ConverterUtils | NOT A SIDEKICK experience: %@";
  v96 = 0;
  v83 = 0;
  v76 = sub_268F9A794();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (v77[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75);
  v80 = &v19 - v79;
  v81 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v82 = &v19 - v81;
  v96 = v3;
  v94 = 0;
  v95 = 0;
  sub_268D35D60(v3, v90);
  if (v90[3])
  {
    p_dst = &__dst;
    sub_268CDF978(v90, &__dst);
    v69 = v92;
    v68 = v93;
    __swift_project_boxed_opaque_existential_1(p_dst, v92);
    if (sub_268F997F4())
    {
      v94 = sub_268F9AEF4();
      v95 = v4;

      v64 = sub_268F9B2A4();
      v66 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v65 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v66);
    }

    else
    {
      v57 = v92;
      v56 = v93;
      __swift_project_boxed_opaque_existential_1(&__dst, v92);
      sub_268F99794();
      v5 = *MEMORY[0x277D61C90];
      v58 = v77[13];
      v59 = v77 + 13;
      v58(v80, v5, v76);
      v60 = sub_268D2BDDC();
      v63 = sub_268F9B754();
      v62 = v77[1];
      v61 = v77 + 1;
      v62(v80, v76);
      v62(v82, v76);
      if (v63)
      {
        v55 = 1;
      }

      else
      {
        v53 = v92;
        v52 = v93;
        __swift_project_boxed_opaque_existential_1(&__dst, v92);
        sub_268F99794();
        v58(v80, *MEMORY[0x277D61CA0], v76);
        v54 = sub_268F9B754();
        v62(v80, v76);
        v62(v82, v76);
        v55 = v54;
      }

      if (v55)
      {
        v94 = sub_268F9AEF4();
        v95 = v6;

        v49 = sub_268F9B2A4();
        v51 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v50 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v51);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&__dst);
  }

  else
  {
    sub_268D28414(v90);
    v46 = sub_268F9B2A4();
    v48 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v47 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v48);
  }

  v88 = 0;
  v89 = 0;
  sub_268D35D60(v75, &v85);
  if (v86)
  {
    v43 = &v85;
    v42 = v86;
    v41 = v87;
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    v44 = sub_268F99774();
    __swift_destroy_boxed_opaque_existential_0(v43);
    v45 = v44 & 1;
  }

  else
  {
    sub_268D28414(&v85);
    v45 = 2;
  }

  v40 = v45;
  if (v45 == 2 || (v39 = v40, v83 = v39 & 1, (v39 & 1) == 0))
  {
    v33 = sub_268F9B284();
    v35 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v35);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v32 = sub_268F9B734();
    v30 = v8;
    v27 = &v84;
    sub_268D35D60(v75, &v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE398, &unk_268FAA600);
    v28 = sub_268F9AE64();
    v29 = v9;
    v30[3] = MEMORY[0x277D837D0];
    v10 = sub_268CDD224();
    v11 = v28;
    v12 = v29;
    v13 = v30;
    v14 = v10;
    v15 = v32;
    v30[4] = v14;
    *v13 = v11;
    v13[1] = v12;
    sub_268CD0F7C();
    v34 = v15;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v35);
  }

  else
  {
    v88 = sub_268F9AEF4();
    v89 = v7;

    v36 = sub_268F9B284();
    v38 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v37 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v38);
  }

  sub_268E62B3C();
  v25 = &v94;
  v22 = v94;
  v23 = v95;

  v24 = &v88;
  v20 = v88;
  v21 = v89;

  v16 = sub_268DB4108();
  v26 = sub_268E3D824(v22, v23, v20, v21, v16, v17 & 1);
  sub_268CD9D30(v24);
  sub_268CD9D30(v25);
  return v26;
}

uint64_t sub_268F2D5DC(uint64_t a1)
{
  v29 = a1;
  v16 = sub_268F99F54();
  v17 = v1;

  v15 = sub_268F9AEF4();
  v18 = v2;

  v27[0] = v16;
  v27[1] = v17;
  *&v28 = v15;
  *(&v28 + 1) = v18;
  if (v17)
  {
    sub_268D28874(v27, &v21);
    if (*(&v28 + 1))
    {
      v20 = v21;
      v19 = v28;
      v13 = MEMORY[0x26D62DB50](v21, *(&v21 + 1), v28, *(&v28 + 1));
      sub_268CD9D30(&v19);
      sub_268CD9D30(&v20);
      sub_268CD9D30(v27);
      v14 = v13;
      goto LABEL_7;
    }

    sub_268CD9D30(&v21);
    goto LABEL_9;
  }

  if (*(&v28 + 1))
  {
LABEL_9:
    sub_268D28550(v27);
    v14 = 0;
    goto LABEL_7;
  }

  sub_268CD9D30(v27);
  v14 = 1;
LABEL_7:

  if ((v14 & 1) == 0)
  {
    v9 = sub_268F99F54();
    v10 = v3;

    v8 = sub_268F9AEF4();
    v11 = v4;

    v25[0] = v9;
    v25[1] = v10;
    *&v26 = v8;
    *(&v26 + 1) = v11;
    if (v10)
    {
      sub_268D28874(v25, &v24);
      if (*(&v26 + 1))
      {
        v23 = v24;
        v22 = v26;
        v6 = MEMORY[0x26D62DB50](v24, *(&v24 + 1), v26, *(&v26 + 1));
        sub_268CD9D30(&v22);
        sub_268CD9D30(&v23);
        sub_268CD9D30(v25);
        v7 = v6;
LABEL_18:

        v12 = v7;
        return v12 & 1;
      }

      sub_268CD9D30(&v24);
    }

    else if (!*(&v26 + 1))
    {
      sub_268CD9D30(v25);
      v7 = 1;
      goto LABEL_18;
    }

    sub_268D28550(v25);
    v7 = 0;
    goto LABEL_18;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_268F2D8D4(uint64_t a1, uint64_t a2)
{
  v7[4] = a1;
  v7[5] = a2;
  v5 = *sub_268F2C37C();

  v7[0] = a1;
  v7[1] = a2;
  type metadata accessor for INDeviceCategory();
  sub_268F9ADC4();
  sub_268CD9D30(v7);
  v6 = v7[2];

  return v6;
}

id sub_268F2D9F0()
{
  v46 = 0;
  v45 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30);
  v11 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v35 = &v10 - v11;
  v12 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v11);
  v34 = &v10 - v12;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC860, &unk_268FA32E0);
  v13 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v25 = &v10 - v13;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC868, qword_268F9F890);
  v14 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v24 = &v10 - v14;
  v27 = 0;
  v41 = sub_268F990E4();
  v37 = *(v41 - 8);
  v38 = v41 - 8;
  v15 = (v37[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v39 = &v10 - v15;
  v46 = &v10 - v15;
  v16 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v40 = &v10 - v16;
  v45 = &v10 - v16;
  v17 = sub_268F99314();
  v6 = *(v17 - 8);
  v19 = *(v6 + 56);
  v18 = v6 + 56;
  v31 = 1;
  v19(v24, 1);
  v20 = sub_268F99344();
  v7 = *(v20 - 8);
  v22 = *(v7 + 56);
  v21 = v7 + 56;
  v22(v25, v31);
  v26 = 1;
  v23 = 1;
  v30 = 0;
  sub_268F990D4();
  (v19)(v24, v31, v31, v17);
  (v22)(v25, v31, v31, v20);
  sub_268F990D4();
  v36 = sub_268DAC8A8();
  sub_268DAC7EC();
  v29 = v37[2];
  v28 = v37 + 2;
  v29(v34, v40, v41);
  v33 = v37[7];
  v32 = v37 + 7;
  v33(v34, v30, v31, v41);
  v29(v35, v39, v41);
  v33(v35, v30, v31, v41);
  v8 = sub_268E305DC(v34, v35);
  v44 = sub_268DAC90C(v8);
  v43 = v37[1];
  v42 = v37 + 1;
  v43(v39, v41);
  v43(v40, v41);
  return v44;
}

uint64_t sub_268F2DFA4(uint64_t a1)
{
  v217 = a1;
  v168 = "Fatal error";
  v169 = "Unexpectedly found nil while unwrapping an Optional value";
  v170 = "SiriSettingsIntents/ConverterUtils.swift";
  v236 = 0;
  v235 = 0;
  v234 = 0;
  v233 = 0;
  v229 = 0;
  v230 = 0;
  v225 = 0;
  v226 = 0;
  v224 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30);
  v171 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v172 = v62 - v171;
  v173 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v171);
  v174 = v62 - v173;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3A0, &qword_268FAA610);
  v175 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v176 = v62 - v175;
  v177 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v175);
  v178 = v62 - v177;
  v179 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v177);
  v180 = v62 - v179;
  v181 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v179);
  v182 = v62 - v181;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC860, &unk_268FA32E0);
  v183 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v184 = v62 - v183;
  v185 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v183);
  v186 = v62 - v185;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC868, qword_268F9F890);
  v187 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v188 = v62 - v187;
  v189 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v187);
  v190 = v62 - v189;
  v215 = 0;
  v191 = sub_268F990E4();
  v192 = *(v191 - 8);
  v193 = v191 - 8;
  v194 = (v192[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v191);
  v195 = v62 - v194;
  v236 = v62 - v194;
  v196 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v197 = v62 - v196;
  v235 = v62 - v196;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3A8, qword_268FAA618);
  v198 = *(*(v13 - 8) + 64);
  v199 = (v198 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v200 = v62 - v199;
  v201 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v199);
  v202 = v62 - v201;
  v203 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v201);
  v204 = v62 - v203;
  v205 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v203);
  v206 = v62 - v205;
  v207 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v205);
  v208 = v62 - v207;
  v209 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v207);
  v210 = v62 - v209;
  v211 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v209);
  v212 = v62 - v211;
  v213 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62 - v211);
  v214 = v62 - v213;
  v216 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE368, &unk_268FAA5B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v215);
  v223 = v62 - v216;
  v222 = sub_268F99FE4();
  v220 = *(v222 - 8);
  v221 = v222 - 8;
  v218 = (*(v220 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v217);
  v219 = v62 - v218;
  v234 = v62 - v218;
  v233 = v21;
  sub_268F32A1C(v21, v22);
  if ((*(v220 + 48))(v223, 1, v222) == 1)
  {
    sub_268F32884(v223);
    return 0;
  }

  (*(v220 + 32))(v219, v223, v222);
  sub_268F99FC4();
  v163 = sub_268F9A024();
  v164 = *(v163 - 8);
  v165 = v163 - 8;
  v166 = *(v164 + 48);
  v167 = v164 + 48;
  if (v166(v214, 1) == 1)
  {
    sub_268F32B44(v214);
    v161 = 0;
    v162 = 1;
  }

  else
  {
    v159 = sub_268F9A014();
    v160 = v23;
    (*(v164 + 8))(v214, v163);
    v161 = v159;
    v162 = v160;
  }

  v231 = v161;
  v232 = v162 & 1;
  v158 = (v162 & 1) == 0;
  if (v162)
  {
    v152 = 0;
    v153 = 1;
LABEL_15:
    v149 = v153;
    v150 = v152;
    v229 = v152;
    v151 = 1;
    v230 = v153 & 1;
    sub_268F99FA4();
    if ((v166)(v210, v151, v163) == 1)
    {
      sub_268F32B44(v210);
      v147 = 0;
      v148 = 1;
    }

    else
    {
      v145 = sub_268F9A014();
      v146 = v27;
      (*(v164 + 8))(v210, v163);
      v147 = v145;
      v148 = v146;
    }

    v227 = v147;
    v228 = v148 & 1;
    v144 = (v148 & 1) == 0;
    if (v148)
    {
      v138 = 0;
      v139 = 1;
      goto LABEL_28;
    }

    sub_268F99FA4();
    if ((v166)(v208, 1, v163) == 1)
    {
      result = sub_268F32B44(v208);
      __break(1u);
    }

    else
    {
      v142 = sub_268F9A014();
      v143 = v28;
      result = (*(v164 + 8))(v208, v163);
      if (v143)
      {
        LOBYTE(v58) = 2;
        v59 = 489;
        LODWORD(v60) = 0;
        result = sub_268F9B584();
        __break(1u);
      }

      else
      {
        v141 = v142;
      }

      v140 = v141 + 1;
      if (!__OFADD__(v141, 1))
      {
        v138 = v140;
        v139 = 0;
LABEL_28:
        v128 = v139;
        v129 = v138;
        v225 = v138;
        v137 = 1;
        v226 = v139 & 1;
        v133 = 0;
        v130 = sub_268F99314();
        v30 = *(v130 - 8);
        v131 = *(v30 + 56);
        v132 = v30 + 56;
        v131(v190, v137);
        v134 = sub_268F99344();
        v31 = *(v134 - 8);
        v135 = *(v31 + 56);
        v136 = v31 + 56;
        v135(v186, v137);
        sub_268F99FC4();
        if ((v166)(v206, v137, v163) == 1)
        {
          sub_268F32B44(v206);
          v126 = 0;
          v127 = 1;
        }

        else
        {
          v124 = sub_268F9A004();
          v125 = v32;
          (*(v164 + 8))(v206, v163);
          v126 = v124;
          v127 = v125;
        }

        v122 = v127;
        v123 = v126;
        sub_268F99FC4();
        if ((v166)(v204, 1, v163) == 1)
        {
          sub_268F32B44(v204);
          v120 = 0;
          v121 = 1;
        }

        else
        {
          v118 = sub_268F99FF4();
          v119 = v33;
          (*(v164 + 8))(v204, v163);
          v120 = v118;
          v121 = v119;
        }

        v111 = v121;
        v112 = v120;
        sub_268F99FD4();
        v113 = sub_268F9A054();
        v114 = *(v113 - 8);
        v115 = v113 - 8;
        v116 = *(v114 + 48);
        v117 = v114 + 48;
        if (v116(v182, 1) == 1)
        {
          sub_268F32BEC(v182);
          v109 = 0;
          v110 = 1;
        }

        else
        {
          v107 = sub_268F9A044();
          v108 = v34;
          (*(v114 + 8))(v182, v113);
          v109 = v107;
          v110 = v108;
        }

        v105 = v110;
        v106 = v109;
        sub_268F99FD4();
        if ((v116)(v180, 1, v113) == 1)
        {
          sub_268F32BEC(v180);
          v103 = 0;
          v104 = 1;
        }

        else
        {
          v101 = sub_268F9A034();
          v102 = v35;
          (*(v114 + 8))(v180, v113);
          v103 = v101;
          v104 = v102;
        }

        v98 = 1;
        v100 = 1;
        v99 = &v40;
        v40 = v112;
        v41 = v111 & 1;
        v42 = v106;
        v43 = v105 & 1;
        v44 = v103;
        v45 = v104 & 1;
        v46 = 0;
        v47 = 1;
        v48 = 0;
        v49 = 1;
        v50 = 0;
        v51 = 1;
        v52 = 0;
        v53 = 1;
        v54 = 0;
        v55 = 1;
        v56 = 0;
        v57 = 1;
        v58 = 0;
        LOBYTE(v59) = 1;
        v60 = 0;
        v61 = 1;
        sub_268F990D4();
        (v131)(v188, v100, v100, v130);
        (v135)(v184, v100, v100, v134);
        sub_268F99FA4();
        if ((v166)(v202, v100, v163) == 1)
        {
          sub_268F32B44(v202);
          v96 = 0;
          v97 = 1;
        }

        else
        {
          v94 = sub_268F9A004();
          v95 = v36;
          (*(v164 + 8))(v202, v163);
          v96 = v94;
          v97 = v95;
        }

        v92 = v97;
        v93 = v96;
        sub_268F99FA4();
        if ((v166)(v200, 1, v163) == 1)
        {
          sub_268F32B44(v200);
          v90 = 0;
          v91 = 1;
        }

        else
        {
          v88 = sub_268F99FF4();
          v89 = v37;
          (*(v164 + 8))(v200, v163);
          v90 = v88;
          v91 = v89;
        }

        v86 = v91;
        v87 = v90;
        sub_268F99FB4();
        if ((v116)(v178, 1, v113) == 1)
        {
          sub_268F32BEC(v178);
          v84 = 0;
          v85 = 1;
        }

        else
        {
          v82 = sub_268F9A044();
          v83 = v38;
          (*(v114 + 8))(v178, v113);
          v84 = v82;
          v85 = v83;
        }

        v80 = v85;
        v81 = v84;
        sub_268F99FB4();
        if ((v116)(v176, 1, v113) == 1)
        {
          sub_268F32BEC(v176);
          v78 = 0;
          v79 = 1;
        }

        else
        {
          v76 = sub_268F9A034();
          v77 = v39;
          (*(v114 + 8))(v176, v113);
          v78 = v76;
          v79 = v77;
        }

        v62[3] = 1;
        v67 = 1;
        v63 = &v40;
        v40 = v87;
        v41 = v86 & 1;
        v42 = v81;
        v43 = v80 & 1;
        v44 = v78;
        v45 = v79 & 1;
        v70 = 0;
        v46 = 0;
        v47 = 1;
        v48 = 0;
        v49 = 1;
        v50 = 0;
        v51 = 1;
        v52 = 0;
        v53 = 1;
        v54 = 0;
        v55 = 1;
        v56 = 0;
        v57 = 1;
        v58 = 0;
        LOBYTE(v59) = 1;
        v60 = 0;
        v61 = 1;
        sub_268F990D4();
        sub_268DAC7EC();
        v65 = v192[2];
        v64 = v192 + 2;
        v65(v174, v197, v191);
        v69 = v192[7];
        v68 = v192 + 7;
        v66 = 0;
        v69(v174);
        v65(v172, v195, v191);
        (v69)(v172, v66, v67, v191);
        v71 = sub_268E305DC(v174, v172);
        v224 = v71;
        sub_268DAC8A8();
        v74 = sub_268DAC90C(v71);
        v73 = v192[1];
        v72 = v192 + 1;
        v73(v195, v191);
        v73(v197, v191);
        (*(v220 + 8))(v219, v222);
        return v74;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  sub_268F99FC4();
  if ((v166)(v212, 1, v163) != 1)
  {
    v156 = sub_268F9A014();
    v157 = v24;
    result = (*(v164 + 8))(v212, v163);
    if (v157)
    {
      LOBYTE(v58) = 2;
      v59 = 488;
      LODWORD(v60) = 0;
      result = sub_268F9B584();
      __break(1u);
    }

    else
    {
      v155 = v156;
    }

    v154 = v155 + 1;
    if (__OFADD__(v155, 1))
    {
      goto LABEL_61;
    }

    v152 = v154;
    v153 = 0;
    goto LABEL_15;
  }

  result = sub_268F32B44(v212);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

id sub_268F2FCDC(uint64_t a1)
{
  v18 = a1;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30);
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v37 = &v11 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v11 - v11);
  v36 = &v11 - v12;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC860, &unk_268FA32E0);
  v13 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v27 = &v11 - v13;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC868, qword_268F9F890);
  v14 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v26 = &v11 - v14;
  v29 = 0;
  v43 = sub_268F990E4();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v16 = v39[8];
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v41 = &v11 - v15;
  v49 = &v11 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v42 = &v11 - v17;
  v48 = &v11 - v17;
  v47 = v6;
  v19 = sub_268F99314();
  v7 = *(v19 - 8);
  v21 = *(v7 + 56);
  v20 = v7 + 56;
  v33 = 1;
  v21(v26, 1);
  v22 = sub_268F99344();
  v8 = *(v22 - 8);
  v24 = *(v8 + 56);
  v23 = v8 + 56;
  v24(v27, v33);
  v28 = 1;
  v25 = 1;
  v32 = 0;
  sub_268F990D4();
  (v21)(v26, v33, v33, v19);
  (v24)(v27, v33, v33, v22);
  sub_268F990D4();
  v38 = sub_268DAC8A8();
  sub_268DAC7EC();
  v31 = v39[2];
  v30 = v39 + 2;
  v31(v36, v42, v43);
  v35 = v39[7];
  v34 = v39 + 7;
  v35(v36, v32, v33, v43);
  v31(v37, v41, v43);
  v35(v37, v32, v33, v43);
  v9 = sub_268E305DC(v36, v37);
  v46 = sub_268DAC90C(v9);
  v45 = v39[1];
  v44 = v39 + 1;
  v45(v41, v43);
  v45(v42, v43);
  return v46;
}

uint64_t sub_268F302E0(uint64_t a1)
{
  v11[1] = a1;
  v5 = *sub_268F2CAA0();

  v11[0] = v5;
  v7 = sub_268F99F54();
  v8 = v1;
  if (v1)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = sub_268F9AEF4();
    v10 = v2;
  }

  v6[0] = v9;
  v6[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD9D30(v6);
  sub_268CD7930(v11);
  return v4 & 1;
}

uint64_t sub_268F30410(uint64_t a1)
{
  v15 = a1;
  v1 = sub_268F2C620();
  v7 = *v1;
  v8 = v1[1];

  v6 = sub_268F99F54();
  v9 = v2;

  v13[0] = v7;
  v13[1] = v8;
  *&v14 = v6;
  *(&v14 + 1) = v9;
  if (!v8)
  {
    if (!*(&v14 + 1))
    {
      sub_268CD9D30(v13);
      v5 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_268D28874(v13, &v12);
  if (!*(&v14 + 1))
  {
    sub_268CD9D30(&v12);
LABEL_8:
    sub_268D28550(v13);
    v5 = 0;
    goto LABEL_7;
  }

  v11 = v12;
  v10 = v14;
  v4 = MEMORY[0x26D62DB50](v12, *(&v12 + 1), v14, *(&v14 + 1));
  sub_268CD9D30(&v10);
  sub_268CD9D30(&v11);
  sub_268CD9D30(v13);
  v5 = v4;
LABEL_7:

  return v5 & 1;
}

uint64_t sub_268F30590(uint64_t a1)
{
  v162 = a1;
  v116 = sub_268D9C164;
  v117 = sub_268D9C164;
  v118 = sub_268D9C164;
  v119 = sub_268D9C164;
  v120 = sub_268D9C164;
  v121 = sub_268D9C164;
  v122 = sub_268D9C164;
  v123 = sub_268D9C164;
  v124 = sub_268D9C164;
  v125 = sub_268D9C164;
  v126 = sub_268D9C164;
  v201 = 0;
  v200 = 0;
  v198 = 0;
  v199 = 0;
  v184 = 0;
  v127 = 0;
  v182 = 0;
  v180 = 0;
  v178 = 0;
  v176 = 0;
  v174 = 0;
  v172 = 0;
  v170 = 0;
  v168 = 0;
  v166 = 0;
  v164 = 0;
  v131 = sub_268F99F64();
  v156 = *(v131 - 8);
  v130 = v131 - 8;
  v128 = (*(v156 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131);
  v129 = &v17 - v128;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v153 = *(*(v1 - 8) + 64);
  v132 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v133 = &v17 - v132;
  v134 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v132);
  v135 = &v17 - v134;
  v136 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v134);
  v137 = &v17 - v136;
  v138 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v136);
  v139 = &v17 - v138;
  v140 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v138);
  v141 = &v17 - v140;
  v142 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v140);
  v143 = &v17 - v142;
  v144 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v142);
  v145 = &v17 - v144;
  v146 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v144);
  v147 = &v17 - v146;
  v148 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v146);
  v149 = &v17 - v148;
  v150 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v148);
  v151 = &v17 - v150;
  v152 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v17 - v150);
  v154 = &v17 - v152;
  v155 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](&v17 - v152);
  v157 = &v17 - v155;
  v201 = &v17 - v155;
  v200 = v162;
  v158 = *(v156 + 56);
  v159 = v156 + 56;
  v158(v2);
  v3 = sub_268DDA5D0();
  v160 = *v3;
  v161 = v3[1];

  v198 = v160;
  v199 = v161;

  sub_268F9A204();

  if (!v197[3])
  {
    goto LABEL_124;
  }

  v115 = v196;
  sub_268F32C94(v197, v196);
  v114 = 0;
  sub_268F9A524();
  if (swift_dynamicCast())
  {
    v112 = v195;
    v164 = v195;

    sub_268F9A324();
    v113 = v163[1];

    if (!v113 || (v111 = v113, v109 = v113, v110 = sub_268F9A0A4(), , !v110))
    {
      (v158)(v154, 1, 1, v131);
      goto LABEL_11;
    }

    v108 = v110;
    v4 = v127;
    v163[0] = v110;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    sub_268DA5FC0();
    result = sub_268F9AF94();
    if (!v4)
    {
      sub_268CD7930(v163);
LABEL_11:
      sub_268F32D24(v154, v157);

      __swift_destroy_boxed_opaque_existential_0(v196);
      sub_268D28414(v197);
LABEL_125:
      if ((*(v156 + 48))(v157, 1, v131) == 0)
      {
        (*(v156 + 16))(v129, v157, v131);
        v20 = sub_268F99F44();
        v21 = v16;
        (*(v156 + 8))(v129, v131);
        v22 = v20;
        v23 = v21;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      v19 = v23;
      v18 = v22;

      sub_268D9C0BC(v157);
      v25 = v18;
      v26 = v19;
      return v25;
    }

    __break(1u);
    goto LABEL_131;
  }

  v106 = 0;
  sub_268F9A624();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v98 = 0;
    sub_268F9A394();
    if (swift_dynamicCast())
    {
      v96 = v193;
      v168 = v193;

      sub_268F9A5C4();
      v97 = v167[1];

      if (v97 && (v95 = v97, v93 = v97, v94 = sub_268F9A0A4(), , v94))
      {
        v92 = v94;
        v7 = v127;
        v167[0] = v94;
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v7)
        {
          goto LABEL_132;
        }

        sub_268CD7930(v167);
      }

      else
      {
        (v158)(v149, 1, 1, v131);
      }

      sub_268F32D24(v149, v157);

      __swift_destroy_boxed_opaque_existential_0(v196);
      sub_268D28414(v197);
      goto LABEL_125;
    }

    v90 = 0;
    sub_268F9A444();
    if (swift_dynamicCast())
    {
      v88 = v192;
      v170 = v192;

      sub_268F9A5C4();
      v89 = v169[1];

      if (v89 && (v87 = v89, v85 = v89, v86 = sub_268F9A0A4(), , v86))
      {
        v84 = v86;
        v8 = v127;
        v169[0] = v86;
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v8)
        {
          goto LABEL_133;
        }

        sub_268CD7930(v169);
      }

      else
      {
        (v158)(v147, 1, 1, v131);
      }

      sub_268F32D24(v147, v157);

      __swift_destroy_boxed_opaque_existential_0(v196);
      sub_268D28414(v197);
      goto LABEL_125;
    }

    v82 = 0;
    sub_268F9A304();
    if (swift_dynamicCast())
    {
      v80 = v191;
      v172 = v191;

      sub_268F9A5C4();
      v81 = v171[1];

      if (v81 && (v79 = v81, v77 = v81, v78 = sub_268F9A0A4(), , v78))
      {
        v76 = v78;
        v9 = v127;
        v171[0] = v78;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v9)
        {
          goto LABEL_134;
        }

        sub_268CD7930(v171);
      }

      else
      {
        (v158)(v145, 1, 1, v131);
      }

      sub_268F32D24(v145, v157);

      __swift_destroy_boxed_opaque_existential_0(v196);
      sub_268D28414(v197);
      goto LABEL_125;
    }

    v74 = 0;
    sub_268F9A514();
    if (swift_dynamicCast())
    {
      v72 = v190;
      v174 = v190;

      sub_268F9A664();
      v73 = v173[1];

      if (v73 && (v71 = v73, v69 = v73, v70 = sub_268F9A0A4(), , v70))
      {
        v68 = v70;
        v10 = v127;
        v173[0] = v70;
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v10)
        {
          goto LABEL_135;
        }

        sub_268CD7930(v173);
      }

      else
      {
        (v158)(v143, 1, 1, v131);
      }

      sub_268F32D24(v143, v157);

      __swift_destroy_boxed_opaque_existential_0(v196);
      sub_268D28414(v197);
      goto LABEL_125;
    }

    v66 = 0;
    sub_268F9A684();
    if (swift_dynamicCast())
    {
      v64 = v189;
      v176 = v189;

      sub_268F9A6A4();
      v65 = v175[1];

      if (v65 && (v63 = v65, v61 = v65, v62 = sub_268F9A0A4(), , v62))
      {
        v60 = v62;
        v11 = v127;
        v175[0] = v62;
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v11)
        {
          goto LABEL_136;
        }

        sub_268CD7930(v175);
      }

      else
      {
        (v158)(v141, 1, 1, v131);
      }

      sub_268F32D24(v141, v157);

      __swift_destroy_boxed_opaque_existential_0(v196);
      sub_268D28414(v197);
      goto LABEL_125;
    }

    v58 = 0;
    sub_268F9A594();
    if (swift_dynamicCast())
    {
      v56 = v188;
      v178 = v188;

      sub_268F9A664();
      v57 = v177[1];

      if (v57 && (v55 = v57, v53 = v57, v54 = sub_268F9A0A4(), , v54))
      {
        v52 = v54;
        v12 = v127;
        v177[0] = v54;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v12)
        {
          goto LABEL_137;
        }

        sub_268CD7930(v177);
      }

      else
      {
        (v158)(v139, 1, 1, v131);
      }

      sub_268F32D24(v139, v157);

      __swift_destroy_boxed_opaque_existential_0(v196);
      sub_268D28414(v197);
      goto LABEL_125;
    }

    v50 = 0;
    sub_268F9A674();
    if (swift_dynamicCast())
    {
      v48 = v187;
      v180 = v187;

      sub_268F9A6A4();
      v49 = v179[1];

      if (v49 && (v47 = v49, v45 = v49, v46 = sub_268F9A0A4(), , v46))
      {
        v44 = v46;
        v13 = v127;
        v179[0] = v46;
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v13)
        {
          goto LABEL_138;
        }

        sub_268CD7930(v179);
      }

      else
      {
        (v158)(v137, 1, 1, v131);
      }

      sub_268F32D24(v137, v157);

      __swift_destroy_boxed_opaque_existential_0(v196);
      sub_268D28414(v197);
      goto LABEL_125;
    }

    v42 = 0;
    sub_268F9A584();
    if (swift_dynamicCast())
    {
      v40 = v186;
      v182 = v186;

      sub_268F9A664();
      v41 = v181[1];

      if (v41 && (v39 = v41, v37 = v41, v38 = sub_268F9A0A4(), , v38))
      {
        v36 = v38;
        v14 = v127;
        v181[0] = v38;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v14)
        {
          goto LABEL_139;
        }

        sub_268CD7930(v181);
      }

      else
      {
        (v158)(v135, 1, 1, v131);
      }

      sub_268F32D24(v135, v157);

      __swift_destroy_boxed_opaque_existential_0(v196);
      sub_268D28414(v197);
      goto LABEL_125;
    }

    v34 = 0;
    sub_268F9A354();
    if (swift_dynamicCast())
    {
      v32 = v185;
      v184 = v185;

      sub_268F9A324();
      v33 = v183[1];

      if (v33 && (v31 = v33, v29 = v33, v30 = sub_268F9A0A4(), , v30))
      {
        v28 = v30;
        v15 = v127;
        v183[0] = v30;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v15)
        {
          goto LABEL_140;
        }

        sub_268CD7930(v183);
      }

      else
      {
        (v158)(v133, 1, 1, v131);
      }

      sub_268F32D24(v133, v157);

      __swift_destroy_boxed_opaque_existential_0(v196);
      sub_268D28414(v197);
      goto LABEL_125;
    }

    __swift_destroy_boxed_opaque_existential_0(v196);
LABEL_124:
    sub_268D28414(v197);

    sub_268D9C0BC(v157);
    v25 = 0;
    v26 = 0;
    return v25;
  }

  v104 = v194;
  v166 = v194;

  sub_268F9A324();
  v105 = v165[1];

  if (!v105 || (v103 = v105, v101 = v105, v102 = sub_268F9A0A4(), , !v102))
  {
    (v158)(v151, 1, 1, v131);
    goto LABEL_22;
  }

  v100 = v102;
  v6 = v127;
  v165[0] = v102;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v6)
  {
    sub_268CD7930(v165);
LABEL_22:
    sub_268F32D24(v151, v157);

    __swift_destroy_boxed_opaque_existential_0(v196);
    sub_268D28414(v197);
    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_268F31BAC(uint64_t a1)
{
  v67 = a1;
  v50 = sub_268D9C164;
  v51 = sub_268D9C164;
  v52 = sub_268D9C164;
  v53 = "ConverterUtils isNounlessSettingsTask | no nouns found on task";
  v82 = 0;
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v73 = 0;
  v54 = 0;
  v71 = 0;
  v69 = 0;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v56 = v19 - v55;
  v57 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v58 = v19 - v57;
  v59 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v60 = v19 - v59;
  v61 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v62 = v19 - v61;
  v63 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v64 = v19 - v63;
  v82 = v19 - v63;
  v81 = v9;
  v10 = sub_268DDA5D0();
  v65 = *v10;
  v66 = v10[1];

  v79 = v65;
  v80 = v66;

  sub_268F9A204();

  if (!v78[3])
  {
    goto LABEL_36;
  }

  v49 = &v77;
  sub_268F32C94(v78, &v77);
  v48 = 0;
  sub_268F9A354();
  if (swift_dynamicCast())
  {
    v46 = v76;
    v69 = v76;

    sub_268F9A324();
    v47 = v68[1];

    if (!v47 || (v45 = v47, v43 = v47, v44 = sub_268F9A0A4(), , !v44))
    {
      v13 = sub_268F99F64();
      (*(*(v13 - 8) + 56))(v62, 1);
      goto LABEL_11;
    }

    v42 = v44;
    v11 = v54;
    v68[0] = v44;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    sub_268DA5FC0();
    result = sub_268F9AF94();
    if (!v11)
    {
      sub_268CD7930(v68);
LABEL_11:
      sub_268DA69E0(v62, v64);

      __swift_destroy_boxed_opaque_existential_0(&v77);
      sub_268D28414(v78);
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_42;
  }

  v40 = 0;
  sub_268F9A594();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    sub_268F9A584();
    if (swift_dynamicCast())
    {
      v30 = v74;
      v73 = v74;

      sub_268F9A664();
      v31 = v72[1];

      if (v31 && (v29 = v31, v27 = v31, v28 = sub_268F9A0A4(), , v28))
      {
        v26 = v28;
        v16 = v54;
        v72[0] = v28;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v16)
        {
          goto LABEL_43;
        }

        sub_268CD7930(v72);
      }

      else
      {
        v17 = sub_268F99F64();
        (*(*(v17 - 8) + 56))(v58, 1);
      }

      sub_268DA69E0(v58, v64);

      __swift_destroy_boxed_opaque_existential_0(&v77);
      sub_268D28414(v78);
LABEL_37:
      sub_268D9BF94(v64, v56);
      v18 = sub_268F99F64();
      v23 = (*(*(v18 - 8) + 48))(v56, 1) == 1;
      v22 = v23;
      sub_268D9C0BC(v56);
      if (v22)
      {
        v19[1] = sub_268F9B284();
        v21 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v20 = sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v21);
        sub_268D9C0BC(v64);

        v24 = 1;
      }

      else
      {
        sub_268D9C0BC(v64);

        v24 = 0;
      }

      return v24 & 1;
    }

    __swift_destroy_boxed_opaque_existential_0(&v77);
LABEL_36:
    sub_268D28414(v78);

    v24 = 0;
    return v24 & 1;
  }

  v38 = v75;
  v71 = v75;

  sub_268F9A664();
  v39 = v70[1];

  if (!v39 || (v37 = v39, v35 = v39, v36 = sub_268F9A0A4(), , !v36))
  {
    v15 = sub_268F99F64();
    (*(*(v15 - 8) + 56))(v60, 1);
    goto LABEL_22;
  }

  v34 = v36;
  v14 = v54;
  v70[0] = v36;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v14)
  {
    sub_268CD7930(v70);
LABEL_22:
    sub_268DA69E0(v60, v64);

    __swift_destroy_boxed_opaque_existential_0(&v77);
    sub_268D28414(v78);
    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_268F325B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v14 = a1;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v8 = 0;
  v15 = sub_268F99DE4();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v7 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v21 = sub_268F99D24();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v9 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v17 = &v6 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v22 = &v6 - v10;
  v29 = &v6 - v10;
  v26 = sub_268F99E34();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v11 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14);
  v25 = &v6 - v11;
  v28 = &v6 - v11;
  v27 = v4;
  sub_268F99E24();
  sub_268F99D14();
  (*(v12 + 16))(v16, v14, v15);
  sub_268F99D04();
  (*(v19 + 16))(v17, v22, v21);
  sub_268F99E14();
  (*(v23 + 16))(v18, v25, v26);
  (*(v19 + 8))(v22, v21);
  return (*(v23 + 8))(v25, v26);
}

uint64_t sub_268F32884(uint64_t a1)
{
  v3 = sub_268F99FE4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268F32950(uint64_t a1)
{
  v3 = sub_268F9A344();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268F32A1C(const void *a1, void *a2)
{
  v6 = sub_268F99FE4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE368, &unk_268FAA5B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268F32B44(uint64_t a1)
{
  v3 = sub_268F9A024();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268F32BEC(uint64_t a1)
{
  v3 = sub_268F9A054();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268F32C94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

void *sub_268F32D24(const void *a1, void *a2)
{
  v7 = sub_268F99F64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

id sub_268F32F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_268F9AE14();
  v9 = [v5 initWithSettingId_targetDevice_targetApp_];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v8);

  return v9;
}

id sub_268F3301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = sub_268F9AE14();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a4)
  {
    v6 = sub_268F9AE14();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithDeviceName:v9 deviceModel:? deviceCategory:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v9);
  return v5;
}

id sub_268F33150(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_268F9AE14();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v3 = sub_268F9AE14();
  v4 = [v7 initWithIdentifier:v6 displayString:?];
  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](v6);
  return v4;
}

uint64_t sub_268F33238()
{
  type metadata accessor for SetAXColorFiltersBlueYellowHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F16F8 = result;
  return result;
}

uint64_t *sub_268F332A0()
{
  if (qword_2802DB840 != -1)
  {
    swift_once();
  }

  return &qword_2802F16F8;
}

uint64_t sub_268F33300()
{
  v1 = *sub_268F332A0();

  return v1;
}

uint64_t sub_268F33330(void *a1, void (*a2)(void), uint64_t a3)
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

  v10 = sub_268D3ECD4();

  v5 = sub_268DBD4F4();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268F33554, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F33554);
}

uint64_t sub_268F334E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3ED04();
}

uint64_t *sub_268F335A0()
{
  if (qword_280FE49C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8180;
}

uint64_t sub_268F33600()
{
  type metadata accessor for GetAutoCorrectHandler();
  result = sub_268CDA260();
  qword_280FE8180 = result;
  return result;
}

uint64_t sub_268F3365C()
{
  v1 = *sub_268F335A0();

  return v1;
}

uint64_t sub_268F3368C(uint64_t a1, void (*a2)(id))
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

uint64_t *sub_268F337EC()
{
  if (qword_280FE5F40 != -1)
  {
    swift_once();
  }

  return &qword_280FE5F48;
}

uint64_t sub_268F33A04()
{
  type metadata accessor for SettingsIntentConfirmationConfigProvider();
  result = sub_268F33A60();
  qword_280FE5F48 = result;
  return result;
}

uint64_t static SettingsIntentConfirmationConfigProvider.shared.getter()
{
  v1 = *sub_268F337EC();

  return v1;
}

uint64_t sub_268F33AD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3B0, &qword_268FAA710);
  sub_268F9B734();
  v5 = v0;
  *v0 = 29;
  v1 = sub_268F3436C();
  sub_268F34374(2, 0, v1, sub_268F34C58, 0, sub_268F34CD4, 0, sub_268F34CEC, v7, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 8, v7, 0x60uLL);
  v5[104] = 0;
  sub_268F34374(1, 1, 0, sub_268F34DC4, 0, sub_268F34E40, 0, sub_268F34EC8, v8, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 112, v8, 0x60uLL);
  v5[208] = 51;
  sub_268F34374(2, 1, 4, sub_268F34F5C, 0, sub_268F34E40, 0, sub_268F34FD8, v9, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 216, v9, 0x60uLL);
  v5[312] = 16;
  sub_268F34374(2, 1, 1, sub_268F3506C, 0, sub_268F34E40, 0, sub_268F350E8, v10, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 320, v10, 0x60uLL);
  v5[416] = 35;
  sub_268F34374(1, 0, 5, sub_268F3517C, 0, sub_268F34CD4, 0, sub_268F351F8, v11, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 424, v11, 0x60uLL);
  v5[520] = 36;
  sub_268F34374(1, 0, 6, sub_268F3528C, 0, sub_268F34CD4, 0, sub_268F35308, v12, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 528, v12, 0x60uLL);
  v5[624] = 45;
  sub_268F34374(2, 1, 3, sub_268F3539C, 0, sub_268F34CD4, 0, sub_268F3568C, v13, 0, sub_268F35774, 0, sub_268F34D80, 0);
  memcpy(v5 + 632, v13, 0x60uLL);
  v5[728] = 26;
  v2 = sub_268F3436C();
  sub_268F34374(2, 0, v2, sub_268F35784, 0, sub_268F34CD4, 0, sub_268F3579C, v14, 0, sub_268D2AAB4, 0, sub_268F35800, 0);
  memcpy(v5 + 736, v14, 0x60uLL);
  sub_268CD0F7C();
  sub_268E12E98();
  v3 = sub_268F9ADA4();
  result = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = 5;
  return result;
}

uint64_t sub_268F34254()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t sub_268F3428C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t sub_268F342C4()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t sub_268F342FC()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return v2;
}

uint64_t sub_268F34334()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2;
}

void *sub_268F34374@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  memset(__b, 0, sizeof(__b));
  v37 = a1;
  v36 = a2 & 1;
  v35 = a3;
  v33 = a4;
  v34 = a5;
  v31 = a6;
  v32 = a7;
  v29 = a8;
  v30 = a10;
  v27 = a11;
  v28 = a12;
  v25 = a13;
  v26 = a14;
  __b[0] = a1;
  LOBYTE(__b[1]) = a2;
  BYTE1(__b[1]) = a3;

  __b[2] = a4;
  __b[3] = a5;

  __b[4] = a6;
  __b[5] = a7;

  __b[6] = a8;
  __b[7] = a10;

  __b[8] = a11;
  __b[9] = a12;

  __b[10] = a13;
  __b[11] = a14;
  memcpy(__dst, __b, sizeof(__dst));
  sub_268F35A5C(__dst, v24);

  sub_268DD57B4(__b);
  return memcpy(a9, __dst, 0x60uLL);
}

uint64_t sub_268F345A8()
{
  LODWORD(v2) = *v0;
  BYTE4(v2) = *(v0 + 4) & 1;
  return v2;
}

uint64_t sub_268F345D0()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16) & 1;
  return result;
}

uint64_t sub_268F345E0()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v2;
}

void *sub_268F3462C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  memset(__b, 0, sizeof(__b));
  v21[8] = a1;
  LODWORD(__b[0]) = a1;
  BYTE4(__b[0]) = BYTE4(a1) & 1;
  __b[1] = a2;
  LOBYTE(__b[2]) = a3 & 1;
  LOBYTE(__b[5]) = a4;
  BYTE1(__b[5]) = a7;

  __b[6] = a8;
  __b[7] = a10;

  __b[3] = a5;
  __b[4] = a6;
  LODWORD(v21[0]) = a1;
  BYTE4(v21[0]) = BYTE4(a1) & 1;
  v21[1] = a2;
  LOBYTE(v21[2]) = a3 & 1;
  v21[3] = a5;
  v21[4] = a6;
  LOBYTE(v21[5]) = a4;
  BYTE1(v21[5]) = a7;
  v21[6] = a8;
  v21[7] = a10;

  sub_268F27288(__b);
  return memcpy(a9, v21, 0x40uLL);
}

uint64_t sub_268F34834()
{
  sub_268F9B734();
  *v0 = "AirplaneModeConfirmationCount";
  *(v0 + 8) = 29;
  *(v0 + 16) = 2;
  *(v0 + 24) = "CellularDataConfirmationCount";
  *(v0 + 32) = 29;
  *(v0 + 40) = 2;
  *(v0 + 48) = "";
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  *(v0 + 72) = "SpokenMessagesConfirmationCount";
  *(v0 + 80) = 31;
  *(v0 + 88) = 2;
  *(v0 + 96) = "WifiConfirmationCount";
  *(v0 + 104) = 21;
  *(v0 + 112) = 2;
  *(v0 + 120) = "PersonalHotspotConfirmation";
  *(v0 + 128) = 27;
  *(v0 + 136) = 2;
  *(v0 + 144) = "PersonalHotspotDiscoverabilityConfirmation";
  *(v0 + 152) = 42;
  *(v0 + 160) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_16:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_16;
    case 2:
      v3 = 2;
      goto LABEL_16;
    case 3:
      v3 = 3;
      goto LABEL_16;
    case 4:
      v3 = 4;
      goto LABEL_16;
    case 5:
      v3 = 5;
      goto LABEL_16;
    case 6:
      v3 = 6;
      goto LABEL_16;
  }

  return 7;
}

uint64_t sub_268F34BEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F34834();
  *a2 = result;
  return result;
}

uint64_t sub_268F34C24@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_268F3384C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268F34C58()
{
  v2 = *sub_268D35434();

  v3 = sub_268D37138();

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F34CEC(void (*a1)(void))
{

  v2 = *sub_268D35434();

  v3 = sub_268D37138();

  a1(v3 & 1);
}

uint64_t sub_268F34DC4()
{
  v2 = *sub_268D35434();

  v3 = sub_268D36960();

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F34E40(void *a1)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if ((*(v3 + 8))(v4))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F34EC8(void (*a1)(void))
{

  v2 = *sub_268D35434();

  v3 = sub_268D36960();

  a1(v3 & 1);
}

uint64_t sub_268F34F5C()
{
  v2 = *sub_268D35434();

  v3 = sub_268D39148();

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F34FD8(void (*a1)(void))
{

  v2 = *sub_268D35434();

  v3 = sub_268D39148();

  a1(v3 & 1);
}

uint64_t sub_268F3506C()
{
  v2 = *sub_268D35434();

  v3 = sub_268D38D64();

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F350E8(void (*a1)(void))
{

  v2 = *sub_268D35434();

  v3 = sub_268D38D64();

  a1(v3 & 1);
}

uint64_t sub_268F3517C()
{
  v2 = *sub_268D35434();

  v3 = sub_268D36D3C();

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F351F8(void (*a1)(void))
{

  v2 = *sub_268D35434();

  v3 = sub_268D36D3C();

  a1(v3 & 1);
}

uint64_t sub_268F3528C()
{
  v2 = *sub_268D35434();

  v3 = sub_268D36DD0();

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F35308(void (*a1)(void))
{

  v2 = *sub_268D35434();

  v3 = sub_268D36DD0();

  a1(v3 & 1);
}

uint64_t sub_268F3539C(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    v1 = [a1 settingMetadata];
    v20 = v1;
    if (v1 && (v19 = [v1 targetApp], MEMORY[0x277D82BD8](v20), v19))
    {
      v2 = [v19 bundleIdentifier];
      v18 = v2;
      if (v2)
      {
        v14 = sub_268F9AE24();
        v15 = v3;
        MEMORY[0x277D82BD8](v18);
        v16 = v14;
        v17 = v15;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      MEMORY[0x277D82BD8](v19);
      v12 = v16;
      v13 = v17;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    if (v13)
    {
      v10 = *sub_268D35434();

      v11 = sub_268D40380(v12, v13);

      if (v11)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      MEMORY[0x277D82BD8](a1);
      return v9;
    }

    MEMORY[0x277D82BD8](a1);
  }

  v6 = *sub_268D35434();

  v7 = sub_268D415B8();

  if (v7)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F3568C(uint64_t a1, uint64_t a2)
{
  v6 = *sub_268D35434();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_268D413E4(sub_268F36868, v5);
}

uint64_t sub_268F3579C(void (*a1)(void))
{
  v3 = *sub_268D35434();

  sub_268D3618C(a1);
}

uint64_t sub_268F35800(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1 && (v6 = [a1 settingMetadata], MEMORY[0x277D82BD8](a1), v6 && (v5 = objc_msgSend(v6, sel_targetDevice), MEMORY[0x277D82BD8](v6), v5)))
  {
    [v5 deviceCategory];
    MEMORY[0x277D82BD8](v5);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v3 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v3 = sub_268F9AE04();
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F35A5C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 9) = *(a1 + 9);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);

  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);

  result = a2;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  return result;
}

unint64_t sub_268F35B70()
{
  v2 = qword_2802DE3B8;
  if (!qword_2802DE3B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE3B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F35BEC()
{
  v2 = *(v0 + 16);

  return v2;
}

void *sub_268F35C24@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v8 = 0;
  v7 = 0;
  v8 = *a1;
  v7 = v2;
  v4 = *(v2 + 16);

  sub_268E12E98();
  sub_268F9ADC4();
  memcpy(__dst, v6, sizeof(__dst));

  return memcpy(a2, __dst, 0x60uLL);
}

void *sub_268F35CE8@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = *a1;
  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3C0, &qword_268FAA718);
  sub_268F9B734();
  v5 = v3;
  *v3 = 7;
  sub_268F35E30(v11);
  memcpy(v5 + 8, v11, 0x40uLL);
  sub_268CD0F7C();
  sub_268E571E0();
  v8 = sub_268F9ADA4();
  sub_268F9ADC4();
  memcpy(__dst, v7, sizeof(__dst));

  return memcpy(a2, __dst, 0x40uLL);
}

void *sub_268F35E30@<X0>(void *a1@<X8>)
{
  v9 = *sub_268D35434();

  v10 = sub_268D44174();

  if (v10)
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = 1120403456;
    v7 = 0;
  }

  if (v10)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = 3;
    v5 = 0;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v10 & 1;
  v1 = sub_268F3436C();
  LODWORD(v11) = v6;
  BYTE4(v11) = v7 & 1;
  sub_268F3462C(v11, v4, v5 & 1, 0, sub_268F36018, v3, v1, sub_268F36024, v12, 0);
  return memcpy(a1, v12, 0x40uLL);
}

float sub_268F36024()
{
  v1 = *sub_268D35434();

  v2 = sub_268D3BC60();

  return v2;
}

uint64_t sub_268F36140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268F36258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_268F3648C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 24) < 0x100000000uLL)
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268F365CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_268F367EC()
{
  v2 = qword_2802DE3C8;
  if (!qword_2802DE3C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE3C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F36878()
{
  if (qword_280FE5A18 != -1)
  {
    swift_once();
  }

  return &qword_280FE8288;
}

uint64_t sub_268F368D8()
{
  type metadata accessor for ButtonProvider();
  result = sub_268CDA260();
  qword_280FE8288 = result;
  return result;
}

id sub_268F36934(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a1;
  v44._countAndFlagsBits = a2;
  v44._object = a3;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v45 = 0;
  v46 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44._object);
  v43 = (&v15 - v42);
  v61 = v4;
  v59 = v5;
  v60 = v6;
  v58 = v3;

  v55 = v44;
  if (v44._object)
  {
    v56 = v55;
  }

  else
  {
    v56._countAndFlagsBits = sub_268F9AEF4();
    v56._object = v7;
    if (v55._object)
    {
      sub_268CD9D30(&v55);
    }
  }

  BinarySettingIdentifier.init(rawValue:)(v56);
  v39 = v57;
  if (v57 == 65)
  {
    return 0;
  }

  v38 = v39;
  v54 = v39;
  v53 = v39;
  v8 = sub_268E7B768();
  v36 = v8;
  v37 = v9;
  if (!v9)
  {
    return 0;
  }

  v34 = v36;
  v35 = v37;
  v30 = v37;
  v31 = v36;
  v51 = v36;
  v52 = v37;
  v32 = *(v40 + qword_2802F0740);

  v33 = type metadata accessor for SettingsBinarySetting();

  v49 = v44;
  if (v44._object)
  {
    v50 = v49;
  }

  else
  {
    v50._countAndFlagsBits = sub_268F9AEF4();
    v50._object = v10;
    if (v49._object)
    {
      sub_268CD9D30(&v49);
    }
  }

  v29 = SettingsBinarySetting.__allocating_init(settingId:value:)(v50._countAndFlagsBits, v50._object, 0);

  v47 = v44;
  if (v44._object)
  {
    v48 = v47;
  }

  else
  {
    v48._countAndFlagsBits = sub_268F9AEF4();
    v48._object = v11;
    if (v47._object)
    {
      sub_268CD9D30(&v47);
    }
  }

  object = v48._object;
  v26 = sub_268F288D0(v48._countAndFlagsBits, v48._object);

  sub_268F56768(v29, 0, v26);

  v27 = sub_268F9B824();
  v28 = v12;
  if (!v12)
  {
    sub_268D28378(v43);

    return 0;
  }

  v23 = v27;
  v24 = v28;
  v20 = v28;
  v21 = v27;
  v45 = v27;
  v46 = v28;
  sub_268D28378(v43);
  v13 = sub_268F394C4(v21, v20, v31, v30);
  v22 = v13;
  if (v13)
  {
    v19 = v22;
    v18 = v22;
  }

  else
  {
    v18 = 0;
  }

  v16 = v18;

  return v16;
}

id sub_268F36E44(uint64_t a1, uint64_t a2, void *a3)
{
  v362 = a1;
  v371._countAndFlagsBits = a2;
  v371._object = a3;
  v321 = sub_268F39974;
  v322 = sub_268CD7608;
  v323 = sub_268CD7600;
  v324 = sub_268CD7600;
  v325 = sub_268CD7614;
  v326 = sub_268F3997C;
  v327 = sub_268CD7608;
  v328 = sub_268DA6BE8;
  v329 = sub_268CD7608;
  v330 = sub_268CD7600;
  v331 = sub_268CD7600;
  v332 = sub_268CD7614;
  v333 = sub_268CD7600;
  v334 = sub_268CD7600;
  v335 = sub_268CD7614;
  v336 = sub_268F39964;
  v337 = sub_268CD7608;
  v338 = sub_268CD7600;
  v339 = sub_268CD7600;
  v340 = sub_268CD7614;
  v341 = sub_268F3996C;
  v342 = sub_268CD7608;
  v343 = sub_268DA6BE8;
  v344 = sub_268CD7608;
  v345 = sub_268CD7600;
  v346 = sub_268CD7600;
  v347 = sub_268CD7614;
  v348 = sub_268CD7600;
  v349 = sub_268CD7600;
  v350 = sub_268CD7614;
  v351 = sub_268DA6BE8;
  v352 = sub_268CD7608;
  v353 = sub_268CD7600;
  v354 = sub_268CD7600;
  v355 = sub_268CD7614;
  v435 = 0;
  v433 = 0;
  v434 = 0;
  v432 = 0;
  v356 = 0;
  v418 = 0;
  v416 = 0;
  v417 = 0;
  v409 = 0;
  v410 = 0;
  v407 = 0;
  v408 = 0;
  v401 = 0;
  v397 = 0;
  v398 = 0;
  v389 = 0;
  v390 = 0;
  v387 = 0;
  v388 = 0;
  v381 = 0;
  v378 = 0;
  v379 = 0;
  v372 = 0;
  v373 = 0;
  v357 = 0;
  v4 = sub_268F9A9C4();
  v358 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v359 = v118 - v358;
  v360 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v118 - v358);
  v361 = v118 - v360;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v367 = *(*(v363 - 8) + 64);
  v364 = (v367 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v371._object);
  v365 = (v118 - v364);
  v366 = (v367 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v368 = (v118 - v366);
  v369 = (v367 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v370 = (v118 - v369);
  v435 = v9;
  v433 = v10;
  v434 = v8;
  v432 = v3;

  v429 = v371;
  if (v371._object)
  {
    v430 = v429;
  }

  else
  {
    v430._countAndFlagsBits = sub_268F9AEF4();
    v430._object = v11;
    if (v429._object)
    {
      sub_268CD9D30(&v429);
    }
  }

  BinarySettingIdentifier.init(rawValue:)(v430);
  v320 = v431;
  if (v431 != 65)
  {
    v319 = v320;
    v381 = v320;
    v380 = v320;
    v12 = sub_268E7B768();
    v317 = v12;
    v318 = v13;
    if (v13)
    {
      v315 = v317;
      v316 = v318;
      v311 = v318;
      v312 = v317;
      v378 = v317;
      v379 = v318;

      v313 = *(v362 + qword_280FE80B0);

      v314 = type metadata accessor for SettingsBinarySetting();

      v376 = v371;
      if (v371._object)
      {
        v377 = v376;
      }

      else
      {
        v377._countAndFlagsBits = sub_268F9AEF4();
        v377._object = v14;
        if (v376._object)
        {
          sub_268CD9D30(&v376);
        }
      }

      v310 = SettingsBinarySetting.__allocating_init(settingId:value:)(v377._countAndFlagsBits, v377._object, 0);

      v374 = v371;
      if (v371._object)
      {
        v375 = v374;
      }

      else
      {
        v375._countAndFlagsBits = sub_268F9AEF4();
        v375._object = v15;
        if (v374._object)
        {
          sub_268CD9D30(&v374);
        }
      }

      object = v375._object;
      v307 = sub_268F288D0(v375._countAndFlagsBits, v375._object);

      sub_268F56768(v310, 0, v307);

      v308 = sub_268F9B824();
      v309 = v16;
      sub_268D28378(v370);
      if (v309)
      {
        v304 = v308;
        v305 = v309;
        v302 = v309;
        v372 = v308;
        v373 = v309;
        v17 = sub_268F394C4(v308, v309, v312, v311);
        v303 = v17;
        if (v17)
        {
          v301 = v303;
          v300 = v303;
        }

        else
        {
          v300 = 0;
        }

        v298 = v300;

        return v298;
      }
    }

    return v357;
  }

  v426 = v371;
  if (v371._object)
  {
    v427 = v426;
  }

  else
  {
    v427._countAndFlagsBits = sub_268F9AEF4();
    v427._object = v18;
    if (v426._object)
    {
      sub_268CD9D30(&v426);
    }
  }

  NumericSettingIdentifier.init(rawValue:)(v427);
  v297 = v428;
  if (v428 == 13)
  {

    v424 = v371;
    if (v371._object)
    {
      v425 = v424;
    }

    else
    {
      v425._countAndFlagsBits = sub_268F9AEF4();
      v425._object = v61;
      if (v424._object)
      {
        sub_268CD9D30(&v424);
      }
    }

    v216 = sub_268EC68A8();
    if (v216 == 5)
    {
      v138 = sub_268F9B284();
      v137 = *sub_268DC7F68();
      MEMORY[0x277D82BE0](v137);

      v127 = 32;
      v128 = 7;
      v103 = swift_allocObject();
      v104 = v371._object;
      v129 = v103;
      *(v103 + 16) = v371._countAndFlagsBits;
      *(v103 + 24) = v104;
      v126 = 17;
      v131 = swift_allocObject();
      *(v131 + 16) = 32;
      v132 = swift_allocObject();
      *(v132 + 16) = 8;
      v105 = swift_allocObject();
      v106 = v129;
      v130 = v105;
      *(v105 + 16) = v351;
      *(v105 + 24) = v106;
      v107 = swift_allocObject();
      v108 = v130;
      v134 = v107;
      *(v107 + 16) = v352;
      *(v107 + 24) = v108;
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v133 = sub_268F9B734();
      v135 = v109;

      v110 = v131;
      v111 = v135;
      *v135 = v353;
      v111[1] = v110;

      v112 = v132;
      v113 = v135;
      v135[2] = v354;
      v113[3] = v112;

      v114 = v134;
      v115 = v135;
      v135[4] = v355;
      v115[5] = v114;
      sub_268CD0F7C();

      if (os_log_type_enabled(v137, v138))
      {
        v116 = v356;
        v119 = sub_268F9B3A4();
        v118[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v120 = sub_268CD5448(0);
        v121 = sub_268CD5448(1);
        v122 = &v423;
        v423 = v119;
        v123 = &v422;
        v422 = v120;
        v124 = &v421;
        v421 = v121;
        sub_268CD549C(2, &v423);
        sub_268CD549C(1, v122);
        v419 = v353;
        v420 = v131;
        sub_268CD54B0(&v419, v122, v123, v124);
        v125 = v116;
        if (v116)
        {

          __break(1u);
        }

        else
        {
          v419 = v354;
          v420 = v132;
          sub_268CD54B0(&v419, &v423, &v422, &v421);
          v118[1] = 0;
          v419 = v355;
          v420 = v134;
          sub_268CD54B0(&v419, &v423, &v422, &v421);
          _os_log_impl(&dword_268CBE000, v137, v138, "Identifier is neither binary nor numeric: %s", v119, 0xCu);
          sub_268CD54FC(v120);
          sub_268CD54FC(v121);
          sub_268F9B384();
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v137);
      return v357;
    }

    else
    {
      v215 = v216;
      v201 = v216;
      v418 = v216;
      v214 = sub_268F9B284();
      v213 = *sub_268DC7F68();
      MEMORY[0x277D82BE0](v213);
      v202 = 17;
      v204 = 7;
      v205 = swift_allocObject();
      *(v205 + 16) = v201;
      v207 = swift_allocObject();
      *(v207 + 16) = 32;
      v208 = swift_allocObject();
      *(v208 + 16) = 8;
      v203 = 32;
      v62 = swift_allocObject();
      v63 = v205;
      v206 = v62;
      *(v62 + 16) = v336;
      *(v62 + 24) = v63;
      v64 = swift_allocObject();
      v65 = v206;
      v210 = v64;
      *(v64 + 16) = v337;
      *(v64 + 24) = v65;
      v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v209 = sub_268F9B734();
      v211 = v66;

      v67 = v207;
      v68 = v211;
      *v211 = v338;
      v68[1] = v67;

      v69 = v208;
      v70 = v211;
      v211[2] = v339;
      v70[3] = v69;

      v71 = v210;
      v72 = v211;
      v211[4] = v340;
      v72[5] = v71;
      sub_268CD0F7C();

      if (os_log_type_enabled(v213, v214))
      {
        v73 = v356;
        v194 = sub_268F9B3A4();
        v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v195 = sub_268CD5448(0);
        v196 = sub_268CD5448(1);
        v197 = &v406;
        v406 = v194;
        v198 = &v405;
        v405 = v195;
        v199 = &v404;
        v404 = v196;
        sub_268CD549C(2, &v406);
        sub_268CD549C(1, v197);
        v402 = v338;
        v403 = v207;
        sub_268CD54B0(&v402, v197, v198, v199);
        v200 = v73;
        if (v73)
        {

          __break(1u);
        }

        else
        {
          v402 = v339;
          v403 = v208;
          sub_268CD54B0(&v402, &v406, &v405, &v404);
          v191 = 0;
          v402 = v340;
          v403 = v210;
          sub_268CD54B0(&v402, &v406, &v405, &v404);
          v190 = 0;
          _os_log_impl(&dword_268CBE000, v213, v214, "Providing button for identifier: %s", v194, 0xCu);
          sub_268CD54FC(v195);
          sub_268CD54FC(v196);
          sub_268F9B384();

          v192 = v190;
        }
      }

      else
      {
        v74 = v356;

        v192 = v74;
      }

      v182 = v192;
      MEMORY[0x277D82BD8](v213);
      v185 = *(v362 + qword_280FE80B0);

      v183 = 0;
      type metadata accessor for SettingsBinarySetting();
      sub_268EC63FC();
      sub_268F9A9A4();
      sub_268EC63FC();
      sub_268F9A9A4();
      v75 = sub_268CDD6D4();
      v184 = sub_268F77F04(v361, v75 & 1, v359);
      sub_268F56768(v184, v183, 0);

      v186 = sub_268F9B824();
      v187 = v76;
      v416 = v186;
      v417 = v76;
      sub_268D28378(v365);
      v188 = sub_268EC6290();
      v189 = v77;
      if (v77)
      {
        v180 = v188;
        v181 = v189;
        v178 = v189;
        v179 = v188;
        v409 = v188;
        v410 = v189;

        if (v187)
        {
          v176 = v186;
          v177 = v187;
          v174 = v187;
          v407 = v186;
          v408 = v187;
          v78 = sub_268F394C4(v186, v187, v179, v178);
          v175 = v78;
          if (v78)
          {
            v173 = v175;
            v172 = v175;
          }

          else
          {
            v172 = 0;
          }

          v171 = v172;

          return v171;
        }
      }

      v170 = sub_268F9B284();
      v169 = *sub_268DC7F68();
      MEMORY[0x277D82BE0](v169);
      v155 = 17;
      v158 = 7;
      v152 = swift_allocObject();
      *(v152 + 16) = v201;

      v157 = 32;
      v79 = swift_allocObject();
      v80 = v187;
      v159 = v79;
      *(v79 + 16) = v186;
      *(v79 + 24) = v80;
      v161 = swift_allocObject();
      v154 = 32;
      *(v161 + 16) = 32;
      v162 = swift_allocObject();
      v156 = 8;
      *(v162 + 16) = 8;
      v81 = swift_allocObject();
      v82 = v152;
      v153 = v81;
      *(v81 + 16) = v341;
      *(v81 + 24) = v82;
      v83 = swift_allocObject();
      v84 = v153;
      v163 = v83;
      *(v83 + 16) = v342;
      *(v83 + 24) = v84;
      v164 = swift_allocObject();
      *(v164 + 16) = v154;
      v165 = swift_allocObject();
      *(v165 + 16) = v156;
      v85 = swift_allocObject();
      v86 = v159;
      v160 = v85;
      *(v85 + 16) = v343;
      *(v85 + 24) = v86;
      v87 = swift_allocObject();
      v88 = v160;
      v167 = v87;
      *(v87 + 16) = v344;
      *(v87 + 24) = v88;
      v166 = sub_268F9B734();
      v168 = v89;

      v90 = v161;
      v91 = v168;
      *v168 = v345;
      v91[1] = v90;

      v92 = v162;
      v93 = v168;
      v168[2] = v346;
      v93[3] = v92;

      v94 = v163;
      v95 = v168;
      v168[4] = v347;
      v95[5] = v94;

      v96 = v164;
      v97 = v168;
      v168[6] = v348;
      v97[7] = v96;

      v98 = v165;
      v99 = v168;
      v168[8] = v349;
      v99[9] = v98;

      v100 = v167;
      v101 = v168;
      v168[10] = v350;
      v101[11] = v100;
      sub_268CD0F7C();

      if (os_log_type_enabled(v169, v170))
      {
        v102 = v182;
        v144 = sub_268F9B3A4();
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v145 = sub_268CD5448(0);
        v146 = sub_268CD5448(2);
        v148 = &v415;
        v415 = v144;
        v149 = &v414;
        v414 = v145;
        v150 = &v413;
        v413 = v146;
        v147 = 2;
        sub_268CD549C(2, &v415);
        sub_268CD549C(v147, v148);
        v411 = v345;
        v412 = v161;
        sub_268CD54B0(&v411, v148, v149, v150);
        v151 = v102;
        if (v102)
        {

          __break(1u);
        }

        else
        {
          v411 = v346;
          v412 = v162;
          sub_268CD54B0(&v411, &v415, &v414, &v413);
          v142 = 0;
          v411 = v347;
          v412 = v163;
          sub_268CD54B0(&v411, &v415, &v414, &v413);
          v141 = 0;
          v411 = v348;
          v412 = v164;
          sub_268CD54B0(&v411, &v415, &v414, &v413);
          v140 = 0;
          v411 = v349;
          v412 = v165;
          sub_268CD54B0(&v411, &v415, &v414, &v413);
          v139 = 0;
          v411 = v350;
          v412 = v167;
          sub_268CD54B0(&v411, &v415, &v414, &v413);
          _os_log_impl(&dword_268CBE000, v169, v170, "Failed. Punchout: %s, Text: %s", v144, 0x16u);
          sub_268CD54FC(v145);
          sub_268CD54FC(v146);
          sub_268F9B384();
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v169);

      return v357;
    }
  }

  else
  {
    v296 = v297;
    v282 = v297;
    v401 = v297;
    v295 = sub_268F9B284();
    v294 = *sub_268DC7F68();
    MEMORY[0x277D82BE0](v294);
    v283 = 17;
    v285 = 7;
    v286 = swift_allocObject();
    *(v286 + 16) = v282;
    v288 = swift_allocObject();
    *(v288 + 16) = 32;
    v289 = swift_allocObject();
    *(v289 + 16) = 8;
    v284 = 32;
    v19 = swift_allocObject();
    v20 = v286;
    v287 = v19;
    *(v19 + 16) = v321;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v287;
    v291 = v21;
    *(v21 + 16) = v322;
    *(v21 + 24) = v22;
    v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v290 = sub_268F9B734();
    v292 = v23;

    v24 = v288;
    v25 = v292;
    *v292 = v323;
    v25[1] = v24;

    v26 = v289;
    v27 = v292;
    v292[2] = v324;
    v27[3] = v26;

    v28 = v291;
    v29 = v292;
    v292[4] = v325;
    v29[5] = v28;
    sub_268CD0F7C();

    if (os_log_type_enabled(v294, v295))
    {
      v30 = v356;
      v275 = sub_268F9B3A4();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v276 = sub_268CD5448(0);
      v277 = sub_268CD5448(1);
      v278 = &v386;
      v386 = v275;
      v279 = &v385;
      v385 = v276;
      v280 = &v384;
      v384 = v277;
      sub_268CD549C(2, &v386);
      sub_268CD549C(1, v278);
      v382 = v323;
      v383 = v288;
      sub_268CD54B0(&v382, v278, v279, v280);
      v281 = v30;
      if (v30)
      {

        __break(1u);
      }

      else
      {
        v382 = v324;
        v383 = v289;
        sub_268CD54B0(&v382, &v386, &v385, &v384);
        v272 = 0;
        v382 = v325;
        v383 = v291;
        sub_268CD54B0(&v382, &v386, &v385, &v384);
        v271 = 0;
        _os_log_impl(&dword_268CBE000, v294, v295, "Providing button for identifier: %s", v275, 0xCu);
        sub_268CD54FC(v276);
        sub_268CD54FC(v277);
        sub_268F9B384();

        v273 = v271;
      }
    }

    else
    {
      v31 = v356;

      v273 = v31;
    }

    v268 = v273;
    MEMORY[0x277D82BD8](v294);
    v269 = *(v362 + qword_280FE80B0);

    v270 = type metadata accessor for SettingsNumericSetting();

    v399 = v371;
    if (v371._object)
    {
      v400 = v399;
    }

    else
    {
      v400._countAndFlagsBits = sub_268F9AEF4();
      v400._object = v32;
      if (v399._object)
      {
        sub_268CD9D30(&v399);
      }
    }

    v261 = v400._object;
    countAndFlagsBits = v400._countAndFlagsBits;
    v260 = 0;
    sub_268D34FD4();
    v33 = sub_268F9B314();
    v263 = SettingsNumericSetting.__allocating_init(settingId:value:)(countAndFlagsBits, v261, v33);
    sub_268F55EF4(v263, 0);

    v264 = sub_268F9B824();
    v265 = v34;
    v397 = v264;
    v398 = v34;
    sub_268D28378(v368);
    v396 = v282;
    v266 = sub_268EB0030();
    v267 = v35;
    if (v35)
    {
      v258 = v266;
      v259 = v267;
      v256 = v267;
      v257 = v266;
      v389 = v266;
      v390 = v267;

      if (v265)
      {
        v254 = v264;
        v255 = v265;
        v252 = v265;
        v387 = v264;
        v388 = v265;
        v36 = sub_268F394C4(v264, v265, v257, v256);
        v253 = v36;
        if (v36)
        {
          v251 = v253;
          v250 = v253;
        }

        else
        {
          v250 = 0;
        }

        v249 = v250;

        return v249;
      }
    }

    v248 = sub_268F9B284();
    v247 = *sub_268DC7F68();
    MEMORY[0x277D82BE0](v247);
    v233 = 17;
    v236 = 7;
    v230 = swift_allocObject();
    *(v230 + 16) = v282;

    v235 = 32;
    v37 = swift_allocObject();
    v38 = v265;
    v237 = v37;
    *(v37 + 16) = v264;
    *(v37 + 24) = v38;
    v239 = swift_allocObject();
    v232 = 32;
    *(v239 + 16) = 32;
    v240 = swift_allocObject();
    v234 = 8;
    *(v240 + 16) = 8;
    v39 = swift_allocObject();
    v40 = v230;
    v231 = v39;
    *(v39 + 16) = v326;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v42 = v231;
    v241 = v41;
    *(v41 + 16) = v327;
    *(v41 + 24) = v42;
    v242 = swift_allocObject();
    *(v242 + 16) = v232;
    v243 = swift_allocObject();
    *(v243 + 16) = v234;
    v43 = swift_allocObject();
    v44 = v237;
    v238 = v43;
    *(v43 + 16) = v328;
    *(v43 + 24) = v44;
    v45 = swift_allocObject();
    v46 = v238;
    v245 = v45;
    *(v45 + 16) = v329;
    *(v45 + 24) = v46;
    v244 = sub_268F9B734();
    v246 = v47;

    v48 = v239;
    v49 = v246;
    *v246 = v330;
    v49[1] = v48;

    v50 = v240;
    v51 = v246;
    v246[2] = v331;
    v51[3] = v50;

    v52 = v241;
    v53 = v246;
    v246[4] = v332;
    v53[5] = v52;

    v54 = v242;
    v55 = v246;
    v246[6] = v333;
    v55[7] = v54;

    v56 = v243;
    v57 = v246;
    v246[8] = v334;
    v57[9] = v56;

    v58 = v245;
    v59 = v246;
    v246[10] = v335;
    v59[11] = v58;
    sub_268CD0F7C();

    if (os_log_type_enabled(v247, v248))
    {
      v60 = v268;
      v222 = sub_268F9B3A4();
      v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v223 = sub_268CD5448(0);
      v224 = sub_268CD5448(2);
      v226 = &v395;
      v395 = v222;
      v227 = &v394;
      v394 = v223;
      v228 = &v393;
      v393 = v224;
      v225 = 2;
      sub_268CD549C(2, &v395);
      sub_268CD549C(v225, v226);
      v391 = v330;
      v392 = v239;
      sub_268CD54B0(&v391, v226, v227, v228);
      v229 = v60;
      if (v60)
      {

        __break(1u);
      }

      else
      {
        v391 = v331;
        v392 = v240;
        sub_268CD54B0(&v391, &v395, &v394, &v393);
        v220 = 0;
        v391 = v332;
        v392 = v241;
        sub_268CD54B0(&v391, &v395, &v394, &v393);
        v219 = 0;
        v391 = v333;
        v392 = v242;
        sub_268CD54B0(&v391, &v395, &v394, &v393);
        v218 = 0;
        v391 = v334;
        v392 = v243;
        sub_268CD54B0(&v391, &v395, &v394, &v393);
        v217 = 0;
        v391 = v335;
        v392 = v245;
        sub_268CD54B0(&v391, &v395, &v394, &v393);
        _os_log_impl(&dword_268CBE000, v247, v248, "Failed. Punchout: %s, Text: %s", v222, 0x16u);
        sub_268CD54FC(v223);
        sub_268CD54FC(v224);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v247);

    return v357;
  }
}

uint64_t sub_268F393E0()
{
  sub_268EB0030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268F39474()
{
  sub_268EC6290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

id sub_268F394C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v21 = a2;
  v25 = a3;
  v24 = a4;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v11 - v19;
  v37 = MEMORY[0x28223BE20](v20);
  v38 = v5;
  v35 = v6;
  v36 = v7;
  v34 = v4;
  v27 = 0;
  sub_268F39984();
  v22 = sub_268CF0C44();
  v33 = v22;

  v23 = sub_268F9AE14();

  [v22 setText_];
  MEMORY[0x277D82BD8](v23);
  sub_268E0FA80();
  v26 = sub_268CF0C44();
  v32 = v26;
  sub_268F99134();
  v29 = sub_268F99144();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  if ((*(v30 + 48))(v28, 1) == 1)
  {
    v18 = 0;
  }

  else
  {
    v17 = sub_268F99114();
    (*(v30 + 8))(v28, v29);
    v18 = v17;
  }

  [v26 setPunchOutUri_];
  MEMORY[0x277D82BD8](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE408, qword_268FAA928);
  v13 = sub_268F9B734();
  v12 = v8;
  MEMORY[0x277D82BE0](v26);
  v9 = v13;
  *v12 = v26;
  sub_268CD0F7C();
  v15 = v9;
  v16 = sub_268F9B004();

  [v22 setCommands_];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v26);
  return v22;
}

BOOL sub_268F397B4(char *a1)
{
  v6 = 0;
  v5[2] = 0;
  v6 = *a1;
  if (v6 == 65)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = sub_268E7B768();
    v4 = v1;
  }

  v5[0] = v3;
  v5[1] = v4;
  sub_268CD9D30(v5);
  return v4 != 0;
}

BOOL sub_268F3988C(char *a1)
{
  v6 = 0;
  v5[2] = 0;
  v6 = *a1;
  if (v6 == 13)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = sub_268EB0030();
    v4 = v1;
  }

  v5[0] = v3;
  v5[1] = v4;
  sub_268CD9D30(v5);
  return v4 != 0;
}

unint64_t sub_268F39984()
{
  v2 = qword_2802DE3F8;
  if (!qword_2802DE3F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DE3F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268F399E8()
{
  type metadata accessor for SetEnvironmentHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268CDC5C0(v2, v0 & 1);
  qword_2802F1700 = result;
  return result;
}

uint64_t *sub_268F39A64()
{
  if (qword_2802DB850 != -1)
  {
    swift_once();
  }

  return &qword_2802F1700;
}

uint64_t sub_268F39AC4()
{
  v1 = *sub_268F39A64();

  return v1;
}

uint64_t sub_268F39AF4(uint64_t a1, void (*a2)(id))
{

  sub_268E948B8();
  v4 = sub_268E77AC0();

  a2(v4);
  MEMORY[0x277D82BD8](v4);
}

BOOL sub_268F39BAC(uint64_t a1)
{
  v22 = a1;
  v29 = 0;
  v28 = 0;
  v17 = sub_268F99214();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v21 = &v9 - v20;
  v23 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v24 = &v9 - v23;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v26 = &v9 - v25;
  v29 = v5;
  v28 = v1;
  v27 = [v5 temporalEventTrigger];
  if (v27)
  {
    v16 = v27;
    v13 = v27;
    v14 = [v27 dateComponentsRange];
    *&v6 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v15 = [v14 startDate];
    if (v15)
    {
      v12 = v15;
      v11 = v15;
      sub_268F991E4();
      (*(v18 + 32))(v24, v21, v17);
      (*(v18 + 56))(v24, 0, 1, v17);
      MEMORY[0x277D82BD8](v11);
    }

    else
    {
      (*(v18 + 56))(v24, 1, 1, v17);
    }

    sub_268E02F0C(v24, v26);
    v7 = MEMORY[0x277D82BD8](v14);
  }

  else
  {
    (*(v18 + 56))(v26, 1, 1, v17);
  }

  v10 = (*(v18 + 48))(v26, 1, v17, v7) != 1;
  v9 = v10;
  sub_268D54CB4(v26);
  return v9;
}

uint64_t sub_268F39F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v6 = a3;
  *(&v6 + 1) = a4;
  v8 = 0u;
  v9 = 0u;

  *&v8 = a1;
  *(&v8 + 1) = a2;

  v9 = v6;

  sub_268D28550(&v8);
  return a1;
}

uint64_t sub_268F39FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = sub_268F99C04();
  v15 = v3;
  v4 = (*(a3 + 32))(a2);
  v13 = sub_268F3AB40(v4, v5, v6, v7);
  v14 = v8;

  v16 = MEMORY[0x26D62DB50](v12, v15, v13, v14);

  return v16 & 1;
}

uint64_t sub_268F3A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268F3B2D0(a1, a2, a3);
  v5 = sub_268F9B334();
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t sub_268F3A148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v56 = a4;
  v57 = a1;
  v70 = a2;
  v71 = a3;
  v89 = *MEMORY[0x277D85DE8];
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v58 = 0;
  v85 = 0;
  v86 = 0;
  v80 = a2;
  v59 = sub_268F9B3B4();
  v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v61 = &v22 - v60;
  v62 = *(v5 - 8);
  v63 = v5 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v22 - v60);
  v65 = &v22 - v64;
  v66 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v22 - v64);
  v67 = &v22 - v66;
  v84 = &v22 - v66;
  v68 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v69 = &v22 - v68;
  v83 = &v22 - v68;
  v82 = a1;
  v74 = sub_268F99C04();
  v77 = v9;
  v10 = (*(v71 + 32))();
  v72 = v11;
  v73 = v12;
  v75 = sub_268F3AB40(v10, v11, v13, v12);
  v76 = v14;

  v78 = MEMORY[0x26D62DB50](v74, v77, v75, v76);

  if ((v78 & 1) == 0)
  {
    goto LABEL_17;
  }

  v88 = 0;
  v55 = objc_opt_self();
  v87 = sub_268F99C14();
  if (v87)
  {
    v79 = v87;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
    sub_268F9B734();
    v79 = sub_268F9ADA4();
    if (v87)
    {
      sub_268CD7930(&v87);
    }
  }

  v49 = v79;
  v53 = sub_268F9AD74();

  v50 = 0;
  type metadata accessor for WritingOptions();
  v51 = sub_268F9B734();
  sub_268CD8B9C();
  sub_268F9B424();
  v81[0] = v88;
  v54 = [v55 dataWithJSONObject:v53 options:v81[1] error:v81];
  v52 = v81[0];
  MEMORY[0x277D82BE0](v81[0]);
  v15 = v88;
  v88 = v52;
  MEMORY[0x277D82BD8](v15);
  swift_unknownObjectRelease();
  if (v54)
  {
    v48 = v54;
    v42 = v54;
    v43 = sub_268F99184();
    v44 = v16;
    MEMORY[0x277D82BD8](v42);
    v45 = v43;
    v46 = v44;
    v47 = v58;
  }

  else
  {
    v24 = v88;
    v25 = sub_268F990F4();
    MEMORY[0x277D82BD8](v24);
    swift_willThrow();
    v26 = 0;

    v45 = 0;
    v46 = 0xF000000000000000;
    v47 = v26;
  }

  v39 = v47;
  v40 = v46;
  v41 = v45;
  if ((v46 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_17;
  }

  v37 = v41;
  v38 = v40;
  v17 = v39;
  v34 = v40;
  v33 = v41;
  v85 = v41;
  v86 = v40;
  sub_268F99024();
  v35 = sub_268F99014();
  v18 = *(v71 + 8);
  sub_268F99004();
  v36 = v17;
  if (v17)
  {
    v23 = v36;

    (*(v62 + 56))(v61, 1, 1, v70);
  }

  else
  {

    (*(v62 + 56))(v61, 0, 1, v70);
  }

  if ((*(v62 + 48))(v61, 1, v70) == 1)
  {
    sub_268F3B370(v61, v70);
    sub_268D55C74(v33, v34);
LABEL_17:
    v21 = sub_268F99C24();
    (*(*(v21 - 8) + 8))(v57);
    result = (*(v62 + 56))(v56, 1, 1, v70);
    goto LABEL_18;
  }

  v28 = *(v62 + 32);
  v27 = v62 + 32;
  v28(v67, v61, v70);
  v30 = *(v62 + 16);
  v29 = v62 + 16;
  v30(v65, v67, v70);
  v28(v69, v65, v70);
  v32 = *(v62 + 8);
  v31 = v62 + 8;
  v32(v67, v70);
  sub_268D55C74(v33, v34);
  v30(v56, v69, v70);
  (*(v62 + 56))(v56, 0, 1, v70);
  v19 = sub_268F99C24();
  (*(*(v19 - 8) + 8))(v57);
  result = (v32)(v69, v70);
LABEL_18:
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268F3AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[0] = sub_268F9B724();
  v15[1] = v4;
  v5 = sub_268F9AEF4();
  MEMORY[0x26D62E360](v5);

  v14[0] = a1;
  v14[1] = a2;
  sub_268F9B704();
  sub_268CD9D30(v14);
  v6 = sub_268F9AEF4();
  MEMORY[0x26D62E360](v6);

  v13[0] = a3;
  v13[1] = a4;
  sub_268F9B704();
  sub_268CD9D30(v13);
  v7 = sub_268F9AEF4();
  MEMORY[0x26D62E360](v7);

  sub_268CD9D30(v15);
  return sub_268F9AED4();
}

id sub_268F3ACF8(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v12 = 0;
  v13 = a1;
  v6 = *(a1 - 8);
  v7 = a1 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v11 = &v4 - v5;
  v12 = v2;
  sub_268F3B414();
  (*(v6 + 16))(v11, v8, v9);
  return sub_268F3ADDC(v11, v9, v10);
}

id sub_268F3ADDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v28[3] = a1;
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = (*(a3 + 32))();
  sub_268F3AB40(v3, v4, v5, v6);
  v21 = sub_268F9AE14();

  v22 = [v20 initWithIdentifier_];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BE0](v22);
  v30 = 0;
  v23 = objc_opt_self();
  sub_268F99054();
  sub_268F99044();
  v7 = *(a3 + 16);
  v27 = sub_268F99034();
  v16 = v8;

  v18 = sub_268F99164();
  sub_268D55C74(v27, v16);
  type metadata accessor for ReadingOptions();
  sub_268F9B734();
  sub_268CD8CCC();
  sub_268F9B424();
  v28[0] = 0;
  v19 = [v23 JSONObjectWithData:v18 options:v28[1] error:v28];
  v17 = v28[0];
  MEMORY[0x277D82BE0](v28[0]);
  v9 = v30;
  v30 = v17;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v18);
  if (v19)
  {
    sub_268F9B404();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v30;
    v12 = sub_268F990F4();
    MEMORY[0x277D82BD8](v11);
    swift_willThrow();

    memset(v31, 0, sizeof(v31));
    v32 = 0;
  }

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE418, &qword_268FAA9B8);
    if (swift_dynamicCast())
    {
      v14 = v28[2];
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    sub_268D28414(v31);
    v15 = 0;
  }

  v29 = v15;
  if (!v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
    sub_268F9B734();
    sub_268F9ADA4();
    if (v29)
    {
      sub_268CD7930(&v29);
    }
  }

  sub_268F9B594();
  v13 = sub_268F9AD74();

  [v22 setUserData_];
  MEMORY[0x277D82BD8](v13);
  (*(*(a2 - 8) + 8))(a1);
  MEMORY[0x277D82BD8](v22);
  *MEMORY[0x277D85DE8];
  return v22;
}

id sub_268F3B2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = sub_268F3ACF8(a2, a3);
  v9 = [v7 runSiriKitExecutorCommandWithContext:a1 payload:?];
  MEMORY[0x277D82BD8](v8);
  return v9;
}

uint64_t sub_268F3B370(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

unint64_t sub_268F3B414()
{
  v2 = qword_2802DE410;
  if (!qword_2802DE410)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DE410);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_268F3B478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268F3B2D0(a1, a2, a3);
  v4 = objc_opt_self();
  MEMORY[0x277D82BE0](v6);
  v5 = [v4 wrapCommandInStartLocalRequest_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v6);
  return v5;
}

uint64_t sub_268F3B564()
{
  v0 = sub_268DDE5B4();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_280FE8158 = v2;
  return result;
}

uint64_t *sub_268F3B5A4()
{
  if (qword_280FE4618 != -1)
  {
    swift_once();
  }

  return &qword_280FE8158;
}

uint64_t sub_268F3B604()
{
  v0 = sub_268F3B5A4();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268F3B63C()
{
  v6 = 0;
  SettingFlow = type metadata accessor for GetSettingFlowStrategy.IntentConversionError();
  v3 = (*(*(SettingFlow - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2[1]);
  v5 = v2 - v3;
  v6 = v0;
  sub_268F3B754(v0, v2 - v3);
  return sub_268F9AE64();
}

uint64_t type metadata accessor for GetSettingFlowStrategy.IntentConversionError()
{
  v1 = qword_2802DE430;
  if (!qword_2802DE430)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_268F3B754(const void *a1, void *a2)
{
  SettingFlow = type metadata accessor for GetSettingFlowStrategy.IntentConversionError();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_268F99C34();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(SettingFlow - 8) + 64));
  }

  return a2;
}

uint64_t sub_268F3B87C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v5 = v0;
  v6 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  *v5 = sub_268F9AE24();
  v5[1] = v1;
  v2 = sub_268F3B63C();
  v5[5] = MEMORY[0x277D837D0];
  v5[2] = v2;
  v5[3] = v3;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v6);
  return sub_268F9ADA4();
}

unint64_t sub_268F3B9A0()
{
  v2 = qword_2802DE420;
  if (!qword_2802DE420)
  {
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE420);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F3BA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = a1;
  v3 = v2;
  v4 = v78;
  v98 = v3;
  v102 = "GetSettingFlowStrategy: actionForInput.";
  v79 = "GetSettingFlowStrategy: not a compatible type of parse. Ignoring.";
  v80 = "GetSettingFlowStrategy: %@ handling NLV3Intent.";
  v81 = "GetSettingFlowStrategy: Error parsing uso parse.";
  v121 = 0;
  v120 = 0;
  v123 = 0;
  v82 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v122 = 0;
  v112 = 0;
  v111 = 0;
  v100 = 0;
  v83 = sub_268F99CB4();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v87 = v32 - v86;
  v88 = sub_268F99C64();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100);
  v92 = v32 - v91;
  v123 = v32 - v91;
  v93 = sub_268F9A704();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100);
  v97 = v32 - v96;
  v122 = v32 - v96;
  v109 = sub_268F99C34();
  v106 = *(v109 - 8);
  v107 = v109 - 8;
  v99 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v109);
  v108 = v32 - v99;
  v121 = v4;
  v120 = v5;
  v103 = sub_268F9B284();
  v105 = *sub_268DC964C();
  MEMORY[0x277D82BE0](v105);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v104 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v105);
  sub_268F99BE4();
  v110 = (*(v106 + 88))(v108, v109);
  if (v110 == *MEMORY[0x277D5C128])
  {
    (*(v106 + 96))(v108, v109);
    (*(v94 + 32))(v97, v108, v93);
    v122 = v97;
    v75 = v114;
    memset(v114, 0, sizeof(v114));
    v74 = &v113;
    sub_268D8E52C(&v113);
    v76 = sub_268DA7690(v97, v75, v74);
    sub_268D28414(v74);
    sub_268D28414(v75);
    v112 = v76;
    MEMORY[0x277D82BE0](v76);
    if (v76)
    {
      v73 = v76;
      v71 = v76;
      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v70 = v72;
      }

      else
      {
        MEMORY[0x277D82BD8](v71);
        v70 = 0;
      }

      v69 = v70;
    }

    else
    {
      v69 = 0;
    }

    v66 = v69 != 0;
    v111 = v69 != 0;
    MEMORY[0x277D82BD8](v69);
    v64 = sub_268F9B284();
    v65 = *sub_268DC964C();
    MEMORY[0x277D82BE0](v65);
    v67 = sub_268F9B734();
    v68 = v6;
    if (v66)
    {
      v63 = sub_268F9AEF4();
      v62 = v7;
      v68[3] = MEMORY[0x277D837D0];
      v8 = sub_268CDD224();
      v9 = v62;
      v10 = v68;
      v11 = v8;
      v12 = v63;
    }

    else
    {
      v61 = sub_268F9AEF4();
      v60 = v13;
      v68[3] = MEMORY[0x277D837D0];
      v14 = sub_268CDD224();
      v9 = v60;
      v10 = v68;
      v11 = v14;
      v12 = v61;
    }

    v68[4] = v11;
    *v10 = v12;
    v10[1] = v9;
    v15 = v67;
    sub_268CD0F7C();
    v59 = v15;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v65);
    if (v66)
    {
      sub_268F99894();
    }

    else
    {
      sub_268F998A4();
    }

    v16 = MEMORY[0x277D82BD8](v76);
    return (*(v94 + 8))(v97, v93, v16);
  }

  else if (v110 == *MEMORY[0x277D5C160])
  {
    v17 = v82;
    v18 = v92;
    (*(v106 + 96))(v108, v109);
    (*(v89 + 32))(v18, v108, v88);
    v123 = v18;
    sub_268F99C54();
    v55 = &v119;
    sub_268F99C44();
    v56 = &v118;
    sub_268D8E52C(&v118);
    v57 = sub_268E17680(v87, v55, v56);
    v58 = v17;
    if (v17)
    {
      v38 = v58;
      sub_268D28414(&v118);
      sub_268D28414(&v119);
      (*(v84 + 8))(v87, v83);
      v30 = v38;
      v117 = v38;
      v35 = sub_268F9B294();
      v37 = *sub_268DC964C();
      MEMORY[0x277D82BE0](v37);
      v36 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v37);

      sub_268F998A4();
      return (*(v89 + 8))(v92, v88);
    }

    else
    {
      v54 = v57;
      sub_268D28414(&v118);
      sub_268D28414(&v119);
      (*(v84 + 8))(v87, v83);
      v116 = v54;
      MEMORY[0x277D82BE0](v54);
      if (v54)
      {
        v53 = v54;
        v51 = v54;
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          v50 = v52;
        }

        else
        {
          MEMORY[0x277D82BD8](v51);
          v50 = 0;
        }

        v49 = v50;
      }

      else
      {
        v49 = 0;
      }

      v46 = v49 != 0;
      v115 = v49 != 0;
      MEMORY[0x277D82BD8](v49);
      v44 = sub_268F9B284();
      v45 = *sub_268DC964C();
      MEMORY[0x277D82BE0](v45);
      v47 = sub_268F9B734();
      v48 = v19;
      if (v46)
      {
        v43 = sub_268F9AEF4();
        v42 = v20;
        v48[3] = MEMORY[0x277D837D0];
        v21 = sub_268CDD224();
        v22 = v42;
        v23 = v48;
        v24 = v21;
        v25 = v43;
      }

      else
      {
        v41 = sub_268F9AEF4();
        v40 = v26;
        v48[3] = MEMORY[0x277D837D0];
        v27 = sub_268CDD224();
        v22 = v40;
        v23 = v48;
        v24 = v27;
        v25 = v41;
      }

      v48[4] = v24;
      *v23 = v25;
      v23[1] = v22;
      v28 = v47;
      sub_268CD0F7C();
      v39 = v28;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v45);
      if (v46)
      {
        sub_268F99894();
      }

      else
      {
        sub_268F998A4();
      }

      v29 = MEMORY[0x277D82BD8](v54);
      return (*(v89 + 8))(v92, v88, v29);
    }
  }

  else
  {
    v32[3] = sub_268F9B284();
    v34 = *sub_268DC964C();
    MEMORY[0x277D82BE0](v34);
    v33 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v34);
    sub_268F998A4();
    return (*(v106 + 8))(v108, v109);
  }
}

uint64_t sub_268F3C9D0(uint64_t a1, uint64_t a2)
{
  v3[32] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[27] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v3[31] = 0;
  v4 = sub_268F99CB4();
  v3[33] = v4;
  v12 = *(v4 - 8);
  v3[34] = v12;
  v5 = *(v12 + 64) + 15;
  v3[35] = swift_task_alloc();
  v6 = sub_268F99C64();
  v3[36] = v6;
  v13 = *(v6 - 8);
  v3[37] = v13;
  v7 = *(v13 + 64) + 15;
  v3[38] = swift_task_alloc();
  v8 = sub_268F9A704();
  v3[39] = v8;
  v14 = *(v8 - 8);
  v3[40] = v14;
  v15 = *(v14 + 64);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v9 = sub_268F99C34();
  v3[43] = v9;
  v16 = *(v9 - 8);
  v3[44] = v16;
  v17 = *(v16 + 64);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = v2;
  v10 = v3[22];

  return MEMORY[0x2822009F8](sub_268F3CC84, 0);
}

uint64_t sub_268F3CC84()
{
  v98 = v0[46];
  v96 = v0[44];
  v97 = v0[43];
  v94 = v0[32];
  v0[22] = v0;
  sub_268F9B284();
  v1 = sub_268DC964C();
  v93 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  v2 = MEMORY[0x277D82BD8](v93);
  v95 = *(v96 + 16);
  (v95)(v98, v94, v97, v2);
  v99 = (*(v96 + 88))(v98, v97);
  if (v99 == *MEMORY[0x277D5C128])
  {
    v88 = v92[46];
    v3 = v92[43];
    v90 = v92[42];
    v89 = v92[39];
    v87 = v92[40];
    (*(v92[44] + 96))();
    (*(v87 + 32))(v90, v88, v89);
    v92[30] = v90;
    v92[12] = 0;
    v92[13] = 0;
    v92[14] = 0;
    v92[15] = 0;
    v92[16] = 0;
    sub_268D8E52C(v92 + 17);
    v91 = sub_268DA7690(v90, v92 + 12, v92 + 17);
    sub_268D28414(v92 + 17);
    sub_268D28414(v92 + 12);
    if (v91)
    {
      objc_opt_self();
      v86 = swift_dynamicCastObjCClass();
      if (v86)
      {
        v85 = v86;
      }

      else
      {
        MEMORY[0x277D82BD8](v91);
        v85 = 0;
      }

      v84 = v85;
    }

    else
    {
      v84 = 0;
    }

    if (v84)
    {
      v4 = v92[42];
      v5 = v92[40];
      v6 = v92[39];
      v92[31] = v84;
      (*(v5 + 8))(v4, v6);
      v83 = v84;
      goto LABEL_22;
    }

    v79 = v92[43];
    v81 = v92[42];
    v74 = v92[41];
    v82 = v92[39];
    v80 = v92[32];
    v73 = v92[40];
    v7 = sub_268DC964C();
    v78 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B294();
    sub_268F9B734();
    v77 = v8;
    (*(v73 + 16))(v74, v81, v82);
    sub_268DA7B0C();
    v75 = sub_268F9AE74();
    v76 = v9;
    v77[3] = MEMORY[0x277D837D0];
    v77[4] = sub_268CDD224();
    *v77 = v75;
    v77[1] = v76;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v78);
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError();
    sub_268F3DB94();
    swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v73 + 8))(v81, v82);
LABEL_25:
    v27 = v92[46];
    v30 = v92[45];
    v31 = v92[42];
    v32 = v92[41];
    v33 = v92[38];
    v34 = v92[35];

    v19 = v72;
    v20 = *(v92[22] + 8);
    v28 = v92[22];

    return v20(v19);
  }

  if (v99 != *MEMORY[0x277D5C160])
  {
    v56 = v92[46];
    v49 = v92[45];
    v57 = v92[43];
    v54 = v92[32];
    v55 = v92[44];
    v15 = sub_268DC964C();
    v53 = *v15;
    MEMORY[0x277D82BE0](*v15);
    sub_268F9B294();
    sub_268F9B734();
    v52 = v16;
    (v95)(v49, v54, v57);
    v50 = sub_268F9AE64();
    v51 = v17;
    v52[3] = MEMORY[0x277D837D0];
    v52[4] = sub_268CDD224();
    *v52 = v50;
    v52[1] = v51;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v53);
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError();
    sub_268F3DB94();
    swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v55 + 8))(v56, v57);
    goto LABEL_25;
  }

  v68 = v92[46];
  v10 = v92[43];
  v11 = v92[38];
  v69 = v92[36];
  v70 = v92[35];
  v67 = v92[37];
  (*(v92[44] + 96))();
  (*(v67 + 32))(v11, v68, v69);
  v92[26] = v11;
  sub_268F99C54();
  sub_268F99C44();
  sub_268D8E52C(v92 + 7);
  v71 = sub_268E17680(v70, v92 + 2, v92 + 7);
  v66 = v92[35];
  v65 = v92[33];
  v64 = v92[34];
  sub_268D28414(v92 + 7);
  sub_268D28414(v92 + 2);
  (*(v64 + 8))(v66, v65);
  if (v71)
  {
    objc_opt_self();
    v63 = swift_dynamicCastObjCClass();
    if (v63)
    {
      v62 = v63;
    }

    else
    {
      MEMORY[0x277D82BD8](v71);
      v62 = 0;
    }

    v61 = v62;
  }

  else
  {
    v61 = 0;
  }

  if (!v61)
  {
    v58 = v92[43];
    v59 = v92[32];
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError();
    sub_268F3DB94();
    v60 = swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v39 = v92[43];
    v42 = v92[38];
    v43 = v92[36];
    v40 = v92[32];
    v41 = v92[37];
    v22 = v60;
    v92[27] = v60;
    v23 = sub_268DC964C();
    v38 = *v23;
    MEMORY[0x277D82BE0](*v23);
    sub_268F9B294();
    sub_268F9B734();
    v37 = v24;
    v25 = v60;
    v92[28] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v35 = sub_268F9AE64();
    v36 = v26;
    v37[3] = MEMORY[0x277D837D0];
    v37[4] = sub_268CDD224();
    *v37 = v35;
    v37[1] = v36;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v38);
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError();
    sub_268F3DB94();
    swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v41 + 8))(v42, v43);
    goto LABEL_25;
  }

  v12 = v92[38];
  v13 = v92[37];
  v14 = v92[36];
  v92[29] = v61;
  (*(v13 + 8))(v12, v14);
  v83 = v61;
LABEL_22:
  v18 = v92[46];
  v44 = v92[45];
  v45 = v92[42];
  v46 = v92[41];
  v47 = v92[38];
  v48 = v92[35];

  v19 = v83;
  v20 = *(v92[22] + 8);
  v21 = v92[22];

  return v20(v19);
}

unint64_t sub_268F3DB94()
{
  v2 = qword_2802DE428;
  if (!qword_2802DE428)
  {
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE428);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F3DC38(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268F3C9D0(a1, a2);
}

uint64_t sub_268F3DD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B498] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D90](a1, a2, a3, SettingFlowStrategy, a5);
}

uint64_t sub_268F3DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B490] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D88](a1, a2, a3, SettingFlowStrategy, a5);
}

uint64_t sub_268F3DF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B488] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D80](a1, a2, a3, SettingFlowStrategy, a5);
}

uint64_t sub_268F3E008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5B480] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  *v8 = *(v11 + 16);
  v8[1] = sub_268D34238;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, SettingFlowStrategy, a6);
}

uint64_t sub_268F3E0EC(uint64_t a1, uint64_t a2)
{
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  v2 = sub_268F3E194();
  v3 = sub_268E04070(a1, a2, SettingFlowStrategy, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268F3E194()
{
  v2 = qword_280FE45F0;
  if (!qword_280FE45F0)
  {
    type metadata accessor for GetSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE45F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F3E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5B6D8] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  *v8 = *(v11 + 16);
  v8[1] = sub_268D34238;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, SettingFlowStrategy, a6);
}

unint64_t sub_268F3E310()
{
  v2 = qword_280FE45F8;
  if (!qword_280FE45F8)
  {
    type metadata accessor for GetSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE45F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F3E3A8()
{
  v2 = qword_280FE4608;
  if (!qword_280FE4608)
  {
    type metadata accessor for GetSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F3E428(uint64_t a1)
{
  result = sub_268F3E310();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268F3E484()
{
  v2 = qword_280FE4610;
  if (!qword_280FE4610)
  {
    type metadata accessor for GetSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4610);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F3E504()
{
  type metadata accessor for SetAXColorFiltersGreenRedHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1708 = result;
  return result;
}

uint64_t *sub_268F3E56C()
{
  if (qword_2802DB860 != -1)
  {
    swift_once();
  }

  return &qword_2802F1708;
}

uint64_t sub_268F3E5CC()
{
  v1 = *sub_268F3E56C();

  return v1;
}

uint64_t sub_268F3E5FC(void *a1, void (*a2)(void), uint64_t a3)
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

  v10 = sub_268D3EC44();

  v5 = sub_268DBD424();
  v12 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v15 = *(v8 + 24);

  sub_268DAAB84(v10, a1, v12, v13, v14, v15 & 1, a2, a3, sub_268F3E820, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F3E820);
}

uint64_t sub_268F3E7B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  sub_268D3EC74();
}

uint64_t sub_268F3E86C()
{
  v0 = sub_268DB61E0();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1710 = v2;
  return result;
}

uint64_t *sub_268F3E8AC()
{
  if (qword_2802DB868 != -1)
  {
    swift_once();
  }

  return &qword_2802F1710;
}

uint64_t sub_268F3E90C()
{
  v0 = sub_268F3E8AC();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268F3E944()
{
  v6 = 0;
  v4 = type metadata accessor for OpenSettingFlowStrategy.IntentConversionError();
  v3 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2[1]);
  v5 = v2 - v3;
  v6 = v0;
  sub_268F3EA5C(v0, v2 - v3);
  return sub_268F9AE64();
}

uint64_t type metadata accessor for OpenSettingFlowStrategy.IntentConversionError()
{
  v1 = qword_2802DE458;
  if (!qword_2802DE458)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_268F3EA5C(const void *a1, void *a2)
{
  v6 = type metadata accessor for OpenSettingFlowStrategy.IntentConversionError();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_268F99C34();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t sub_268F3EB84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v5 = v0;
  v6 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  *v5 = sub_268F9AE24();
  v5[1] = v1;
  v2 = sub_268F3E944();
  v5[5] = MEMORY[0x277D837D0];
  v5[2] = v2;
  v5[3] = v3;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v6);
  return sub_268F9ADA4();
}

unint64_t sub_268F3ECA8()
{
  v2 = qword_2802DE440;
  if (!qword_2802DE440)
  {
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE440);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F3ED70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = a1;
  v3 = v2;
  v4 = v78;
  v98 = v3;
  v102 = "OpenSettingFlowStrategy: actionForInput.";
  v79 = "OpenSettingFlowStrategy: not a compatible type of parse. Ignoring.";
  v80 = "OpenSettingFlowStrategy: %@ handling NLV3Intent.";
  v81 = "OpenSettingFlowStrategy: Error parsing uso parse.";
  v121 = 0;
  v120 = 0;
  v123 = 0;
  v82 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v122 = 0;
  v112 = 0;
  v111 = 0;
  v100 = 0;
  v83 = sub_268F99CB4();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v87 = v32 - v86;
  v88 = sub_268F99C64();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100);
  v92 = v32 - v91;
  v123 = v32 - v91;
  v93 = sub_268F9A704();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100);
  v97 = v32 - v96;
  v122 = v32 - v96;
  v109 = sub_268F99C34();
  v106 = *(v109 - 8);
  v107 = v109 - 8;
  v99 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v109);
  v108 = v32 - v99;
  v121 = v4;
  v120 = v5;
  v103 = sub_268F9B284();
  v105 = *sub_268DC97D0();
  MEMORY[0x277D82BE0](v105);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v104 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v105);
  sub_268F99BE4();
  v110 = (*(v106 + 88))(v108, v109);
  if (v110 == *MEMORY[0x277D5C128])
  {
    (*(v106 + 96))(v108, v109);
    (*(v94 + 32))(v97, v108, v93);
    v122 = v97;
    v75 = v114;
    memset(v114, 0, sizeof(v114));
    v74 = &v113;
    sub_268D8E52C(&v113);
    v76 = sub_268DA7690(v97, v75, v74);
    sub_268D28414(v74);
    sub_268D28414(v75);
    v112 = v76;
    MEMORY[0x277D82BE0](v76);
    if (v76)
    {
      v73 = v76;
      v71 = v76;
      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v70 = v72;
      }

      else
      {
        MEMORY[0x277D82BD8](v71);
        v70 = 0;
      }

      v69 = v70;
    }

    else
    {
      v69 = 0;
    }

    v66 = v69 != 0;
    v111 = v69 != 0;
    MEMORY[0x277D82BD8](v69);
    v64 = sub_268F9B284();
    v65 = *sub_268DC97D0();
    MEMORY[0x277D82BE0](v65);
    v67 = sub_268F9B734();
    v68 = v6;
    if (v66)
    {
      v63 = sub_268F9AEF4();
      v62 = v7;
      v68[3] = MEMORY[0x277D837D0];
      v8 = sub_268CDD224();
      v9 = v62;
      v10 = v68;
      v11 = v8;
      v12 = v63;
    }

    else
    {
      v61 = sub_268F9AEF4();
      v60 = v13;
      v68[3] = MEMORY[0x277D837D0];
      v14 = sub_268CDD224();
      v9 = v60;
      v10 = v68;
      v11 = v14;
      v12 = v61;
    }

    v68[4] = v11;
    *v10 = v12;
    v10[1] = v9;
    v15 = v67;
    sub_268CD0F7C();
    v59 = v15;
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v65);
    if (v66)
    {
      sub_268F99894();
    }

    else
    {
      sub_268F998A4();
    }

    v16 = MEMORY[0x277D82BD8](v76);
    return (*(v94 + 8))(v97, v93, v16);
  }

  else if (v110 == *MEMORY[0x277D5C160])
  {
    v17 = v82;
    v18 = v92;
    (*(v106 + 96))(v108, v109);
    (*(v89 + 32))(v18, v108, v88);
    v123 = v18;
    sub_268F99C54();
    v55 = &v119;
    sub_268F99C44();
    v56 = &v118;
    sub_268D8E52C(&v118);
    v57 = sub_268E17680(v87, v55, v56);
    v58 = v17;
    if (v17)
    {
      v38 = v58;
      sub_268D28414(&v118);
      sub_268D28414(&v119);
      (*(v84 + 8))(v87, v83);
      v30 = v38;
      v117 = v38;
      v35 = sub_268F9B294();
      v37 = *sub_268DC97D0();
      MEMORY[0x277D82BE0](v37);
      v36 = sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v37);

      sub_268F998A4();
      return (*(v89 + 8))(v92, v88);
    }

    else
    {
      v54 = v57;
      sub_268D28414(&v118);
      sub_268D28414(&v119);
      (*(v84 + 8))(v87, v83);
      v116 = v54;
      MEMORY[0x277D82BE0](v54);
      if (v54)
      {
        v53 = v54;
        v51 = v54;
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          v50 = v52;
        }

        else
        {
          MEMORY[0x277D82BD8](v51);
          v50 = 0;
        }

        v49 = v50;
      }

      else
      {
        v49 = 0;
      }

      v46 = v49 != 0;
      v115 = v49 != 0;
      MEMORY[0x277D82BD8](v49);
      v44 = sub_268F9B284();
      v45 = *sub_268DC97D0();
      MEMORY[0x277D82BE0](v45);
      v47 = sub_268F9B734();
      v48 = v19;
      if (v46)
      {
        v43 = sub_268F9AEF4();
        v42 = v20;
        v48[3] = MEMORY[0x277D837D0];
        v21 = sub_268CDD224();
        v22 = v42;
        v23 = v48;
        v24 = v21;
        v25 = v43;
      }

      else
      {
        v41 = sub_268F9AEF4();
        v40 = v26;
        v48[3] = MEMORY[0x277D837D0];
        v27 = sub_268CDD224();
        v22 = v40;
        v23 = v48;
        v24 = v27;
        v25 = v41;
      }

      v48[4] = v24;
      *v23 = v25;
      v23[1] = v22;
      v28 = v47;
      sub_268CD0F7C();
      v39 = v28;
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v45);
      if (v46)
      {
        sub_268F99894();
      }

      else
      {
        sub_268F998A4();
      }

      v29 = MEMORY[0x277D82BD8](v54);
      return (*(v89 + 8))(v92, v88, v29);
    }
  }

  else
  {
    v32[3] = sub_268F9B284();
    v34 = *sub_268DC97D0();
    MEMORY[0x277D82BE0](v34);
    v33 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v34);
    sub_268F998A4();
    return (*(v106 + 8))(v108, v109);
  }
}

uint64_t sub_268F3FCD8(uint64_t a1, uint64_t a2)
{
  v3[32] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[27] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v3[31] = 0;
  v4 = sub_268F99CB4();
  v3[33] = v4;
  v12 = *(v4 - 8);
  v3[34] = v12;
  v5 = *(v12 + 64) + 15;
  v3[35] = swift_task_alloc();
  v6 = sub_268F99C64();
  v3[36] = v6;
  v13 = *(v6 - 8);
  v3[37] = v13;
  v7 = *(v13 + 64) + 15;
  v3[38] = swift_task_alloc();
  v8 = sub_268F9A704();
  v3[39] = v8;
  v14 = *(v8 - 8);
  v3[40] = v14;
  v15 = *(v14 + 64);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v9 = sub_268F99C34();
  v3[43] = v9;
  v16 = *(v9 - 8);
  v3[44] = v16;
  v17 = *(v16 + 64);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = v2;
  v10 = v3[22];

  return MEMORY[0x2822009F8](sub_268F3FF8C, 0);
}

uint64_t sub_268F3FF8C()
{
  v98 = v0[46];
  v96 = v0[44];
  v97 = v0[43];
  v94 = v0[32];
  v0[22] = v0;
  sub_268F9B284();
  v1 = sub_268DC97D0();
  v93 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  v2 = MEMORY[0x277D82BD8](v93);
  v95 = *(v96 + 16);
  (v95)(v98, v94, v97, v2);
  v99 = (*(v96 + 88))(v98, v97);
  if (v99 == *MEMORY[0x277D5C128])
  {
    v88 = v92[46];
    v3 = v92[43];
    v90 = v92[42];
    v89 = v92[39];
    v87 = v92[40];
    (*(v92[44] + 96))();
    (*(v87 + 32))(v90, v88, v89);
    v92[30] = v90;
    v92[12] = 0;
    v92[13] = 0;
    v92[14] = 0;
    v92[15] = 0;
    v92[16] = 0;
    sub_268D8E52C(v92 + 17);
    v91 = sub_268DA7690(v90, v92 + 12, v92 + 17);
    sub_268D28414(v92 + 17);
    sub_268D28414(v92 + 12);
    if (v91)
    {
      objc_opt_self();
      v86 = swift_dynamicCastObjCClass();
      if (v86)
      {
        v85 = v86;
      }

      else
      {
        MEMORY[0x277D82BD8](v91);
        v85 = 0;
      }

      v84 = v85;
    }

    else
    {
      v84 = 0;
    }

    if (v84)
    {
      v4 = v92[42];
      v5 = v92[40];
      v6 = v92[39];
      v92[31] = v84;
      (*(v5 + 8))(v4, v6);
      v83 = v84;
      goto LABEL_22;
    }

    v79 = v92[43];
    v81 = v92[42];
    v74 = v92[41];
    v82 = v92[39];
    v80 = v92[32];
    v73 = v92[40];
    v7 = sub_268DC97D0();
    v78 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B294();
    sub_268F9B734();
    v77 = v8;
    (*(v73 + 16))(v74, v81, v82);
    sub_268DA7B0C();
    v75 = sub_268F9AE74();
    v76 = v9;
    v77[3] = MEMORY[0x277D837D0];
    v77[4] = sub_268CDD224();
    *v77 = v75;
    v77[1] = v76;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v78);
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError();
    sub_268F40E9C();
    swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v73 + 8))(v81, v82);
LABEL_25:
    v27 = v92[46];
    v30 = v92[45];
    v31 = v92[42];
    v32 = v92[41];
    v33 = v92[38];
    v34 = v92[35];

    v19 = v72;
    v20 = *(v92[22] + 8);
    v28 = v92[22];

    return v20(v19);
  }

  if (v99 != *MEMORY[0x277D5C160])
  {
    v56 = v92[46];
    v49 = v92[45];
    v57 = v92[43];
    v54 = v92[32];
    v55 = v92[44];
    v15 = sub_268DC97D0();
    v53 = *v15;
    MEMORY[0x277D82BE0](*v15);
    sub_268F9B294();
    sub_268F9B734();
    v52 = v16;
    (v95)(v49, v54, v57);
    v50 = sub_268F9AE64();
    v51 = v17;
    v52[3] = MEMORY[0x277D837D0];
    v52[4] = sub_268CDD224();
    *v52 = v50;
    v52[1] = v51;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v53);
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError();
    sub_268F40E9C();
    swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v55 + 8))(v56, v57);
    goto LABEL_25;
  }

  v68 = v92[46];
  v10 = v92[43];
  v11 = v92[38];
  v69 = v92[36];
  v70 = v92[35];
  v67 = v92[37];
  (*(v92[44] + 96))();
  (*(v67 + 32))(v11, v68, v69);
  v92[26] = v11;
  sub_268F99C54();
  sub_268F99C44();
  sub_268D8E52C(v92 + 7);
  v71 = sub_268E17680(v70, v92 + 2, v92 + 7);
  v66 = v92[35];
  v65 = v92[33];
  v64 = v92[34];
  sub_268D28414(v92 + 7);
  sub_268D28414(v92 + 2);
  (*(v64 + 8))(v66, v65);
  if (v71)
  {
    objc_opt_self();
    v63 = swift_dynamicCastObjCClass();
    if (v63)
    {
      v62 = v63;
    }

    else
    {
      MEMORY[0x277D82BD8](v71);
      v62 = 0;
    }

    v61 = v62;
  }

  else
  {
    v61 = 0;
  }

  if (!v61)
  {
    v58 = v92[43];
    v59 = v92[32];
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError();
    sub_268F40E9C();
    v60 = swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v39 = v92[43];
    v42 = v92[38];
    v43 = v92[36];
    v40 = v92[32];
    v41 = v92[37];
    v22 = v60;
    v92[27] = v60;
    v23 = sub_268DC97D0();
    v38 = *v23;
    MEMORY[0x277D82BE0](*v23);
    sub_268F9B294();
    sub_268F9B734();
    v37 = v24;
    v25 = v60;
    v92[28] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v35 = sub_268F9AE64();
    v36 = v26;
    v37[3] = MEMORY[0x277D837D0];
    v37[4] = sub_268CDD224();
    *v37 = v35;
    v37[1] = v36;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v38);
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError();
    sub_268F40E9C();
    swift_allocError();
    v95();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v41 + 8))(v42, v43);
    goto LABEL_25;
  }

  v12 = v92[38];
  v13 = v92[37];
  v14 = v92[36];
  v92[29] = v61;
  (*(v13 + 8))(v12, v14);
  v83 = v61;
LABEL_22:
  v18 = v92[46];
  v44 = v92[45];
  v45 = v92[42];
  v46 = v92[41];
  v47 = v92[38];
  v48 = v92[35];

  v19 = v83;
  v20 = *(v92[22] + 8);
  v21 = v92[22];

  return v20(v19);
}

unint64_t sub_268F40E9C()
{
  v2 = qword_2802DE448;
  if (!qword_2802DE448)
  {
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE448);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F40F40(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268F3FCD8(a1, a2);
}

uint64_t sub_268F4107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B498] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for OpenSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D90](a1, a2, a3, v8, a5);
}

uint64_t sub_268F41158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B490] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for OpenSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D88](a1, a2, a3, v8, a5);
}

uint64_t sub_268F41234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B488] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for OpenSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D80](a1, a2, a3, v8, a5);
}

uint64_t sub_268F41310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5B480] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for OpenSettingFlowStrategy();
  *v8 = *(v11 + 16);
  v8[1] = sub_268D34238;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v9, a6);
}

uint64_t sub_268F413F4(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for OpenSettingFlowStrategy();
  v2 = sub_268F4149C();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268F4149C()
{
  v2 = qword_2802DE450;
  if (!qword_2802DE450)
  {
    type metadata accessor for OpenSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE450);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5B6D8] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for OpenSettingFlowStrategy();
  *v8 = *(v11 + 16);
  v8[1] = sub_268D34238;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v9, a6);
}

unint64_t sub_268F41618()
{
  v2 = qword_2802DE468;
  if (!qword_2802DE468)
  {
    type metadata accessor for OpenSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F416B0()
{
  v2 = qword_2802DE470;
  if (!qword_2802DE470)
  {
    type metadata accessor for OpenSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F41730(uint64_t a1)
{
  result = sub_268F41618();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268F4178C()
{
  v2 = qword_2802DE478;
  if (!qword_2802DE478)
  {
    type metadata accessor for OpenSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE478);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F4180C()
{
  if (qword_280FE2F50 != -1)
  {
    swift_once();
  }

  return &qword_280FE8030;
}

uint64_t sub_268F4186C()
{
  type metadata accessor for GetAXColorFiltersGreenRedHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8030 = result;
  return result;
}

uint64_t sub_268F418D4()
{
  v1 = *sub_268F4180C();

  return v1;
}

double sub_268F41904(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v5 = sub_268DBAA94();
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
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F41D88, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268F41B20(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3EC44();

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

uint64_t *sub_268F41DE0()
{
  if (qword_280FE4B88 != -1)
  {
    swift_once();
  }

  return &qword_280FE8190;
}

uint64_t sub_268F41E40()
{
  type metadata accessor for GetShakeMouseHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8190 = result;
  return result;
}

uint64_t sub_268F41EA8()
{
  v1 = *sub_268F41DE0();

  return v1;
}

uint64_t sub_268F41ED8(uint64_t a1, void (*a2)(id))
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

uint64_t *sub_268F42038()
{
  if (qword_2802DB870 != -1)
  {
    swift_once();
  }

  return &qword_2802F1718;
}

uint64_t *sub_268F42098()
{
  if (qword_280FE5268 != -1)
  {
    swift_once();
  }

  return &qword_280FE81E8;
}

uint64_t sub_268F4211C()
{
  result = sub_268F9AEF4();
  qword_2802F1718 = result;
  qword_2802F1720 = v1;
  return result;
}

uint64_t sub_268F42160()
{
  v0 = sub_268F42038();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_268F4219C()
{
  type metadata accessor for GetFocusModeHandler();
  v2 = sub_268CDC590();
  v0 = sub_268F1C948();
  result = sub_268F4221C(v2, 1, v0);
  qword_280FE81E8 = result;
  return result;
}

uint64_t sub_268F4227C()
{
  v1 = *sub_268F42098();

  return v1;
}

uint64_t sub_268F422AC(uint64_t a1, char a2, uint64_t a3)
{

  *(v3 + 24) = a1;
  *(v3 + 16) = a2;

  *(v3 + 32) = a3;

  return v8;
}

double sub_268F42340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v5 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v5);
  return sub_268F42430(a1, a2, a3);
}

double sub_268F42430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBBFC4();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 16);

  MEMORY[0x277D82BE0](a1);

  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F42758, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

uint64_t sub_268F42650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(a1 + 24);

  MEMORY[0x277D82BE0](a2);

  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a2;
  v9[5] = a1;
  sub_268D48CFC(a2, sub_268F43B2C, v9);
}

uint64_t sub_268F4278C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6)
{
  v43[6] = a1;
  v43[7] = a2;
  v43[4] = a3;
  v43[5] = a4;
  v43[3] = a5;
  v43[2] = a6;
  if (a2 == -1)
  {
    v6 = sub_268DC7AE8();
    v37 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v37);

    v38 = sub_268E419BC(4);
    a3();
    MEMORY[0x277D82BD8](v38);
  }

  else if (a2 == 100)
  {
    v36 = [a5 settingMetadata];
    if (v36)
    {
      v31 = [v36 settingId];
      v32 = sub_268F9AE24();
      v33 = v8;
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v31);
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v42[0] = v34;
    v42[1] = v35;
    sub_268CD9D30(v42);
    if (v35)
    {
      v29 = *(a6 + 32);

      v30 = sub_268F23C10();

      if (v30)
      {
        v9 = sub_268F42038();
        v26 = *v9;
        v27 = v9[1];

        v28 = sub_268F9AE14();

        [v30 setBool:1 forKey:v28];
        MEMORY[0x277D82BD8](v28);
        MEMORY[0x277D82BD8](v30);
      }
    }

    v10 = sub_268DC7AE8();
    v24 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v24);

    sub_268E948B8();
    v25 = sub_268E41B70();

    (a3)(v25);
    MEMORY[0x277D82BD8](v25);
  }

  else
  {
    v23 = [a5 settingMetadata];
    if (v23)
    {
      v18 = [v23 settingId];
      v19 = sub_268F9AE24();
      v20 = v11;
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v18);
      v21 = v19;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v43[0] = v21;
    v43[1] = v22;
    sub_268CD9D30(v43);
    if (v22)
    {
      v16 = *(a6 + 32);

      v17 = sub_268F23C10();

      if (v17)
      {
        v12 = sub_268F42038();
        v13 = *v12;
        v14 = v12[1];

        v15 = sub_268F9AE14();

        [v17 setBool:0 forKey:v15];
        MEMORY[0x277D82BD8](v15);
        MEMORY[0x277D82BD8](v17);
      }
    }

    (a3)(a1);
  }
}

uint64_t sub_268F42D88(uint64_t a1)
{
  v2[12] = v1;
  v2[11] = a1;
  v2[8] = v2;
  v2[9] = 0;
  v2[10] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[9] = a1;
  v2[10] = v1;
  v3 = v2[8];
  return MEMORY[0x2822009F8](sub_268F42DE0, 0);
}

uint64_t sub_268F42DE0()
{
  v12 = v0[12];
  v0[8] = v0;
  v1 = sub_268DC7AE8();
  v7 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  v0[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v7);
  v2 = sub_268DBBFC4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7AE8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9934(v10, v8, v9, v11, *(v12 + 16) & 1);
  MEMORY[0x277D82BD8](v11);
  v0[14] = *(v12 + 24);

  v4 = swift_task_alloc();
  v13[15] = v4;
  *v4 = v13[8];
  v4[1] = sub_268F42FB0;
  v5 = v13[11];

  return sub_268D4AA24(v5);
}

uint64_t sub_268F42FB0(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v4 = *(*v2 + 120);
  v7 = *(*v2 + 112);
  v8[8] = *v2;
  v8[16] = a1;
  v8[17] = a2;

  v5 = v8[8];

  return MEMORY[0x2822009F8](sub_268F430F0, 0);
}

uint64_t sub_268F430F0()
{
  v1 = v0[17];
  v2 = v0[16];
  v0[8] = v0;
  v0[2] = v2;
  v0[3] = v1;
  if (v1 == -1)
  {
    v60 = *(v63 + 128);
    v54 = *(v63 + 104);
    v3 = sub_268DC7AE8();
    v55 = *v3;
    MEMORY[0x277D82BE0](*v3);
    sub_268F9B294();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v55);
    v4 = sub_268DBBFC4();
    v58 = *v4;
    v56 = v4[1];
    v57 = *(v4 + 16);
    v5 = sub_268DC7AE8();
    v59 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268DB9B78(v58, v56, v57, v59);
    MEMORY[0x277D82BD8](v59);
    v61 = sub_268E419BC(4);
    v6 = MEMORY[0x277D82BD8](v60);
    v62 = v61;
  }

  else if (*(v63 + 136) == 100)
  {
    v53 = [*(v63 + 88) settingMetadata];
    if (v53)
    {
      v48 = [v53 settingId];
      v49 = sub_268F9AE24();
      v50 = v7;
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v48);
      v51 = v49;
      v52 = v50;
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    *(v63 + 48) = v51;
    *(v63 + 56) = v52;
    if (*(v63 + 56))
    {
      sub_268CD9D30(v63 + 48);
      v8 = *(*(v63 + 96) + 32);

      v47 = sub_268F23C10();

      if (v47)
      {
        v9 = sub_268F42038();
        v44 = *v9;
        v45 = v9[1];

        v46 = sub_268F9AE14();

        [v47 setBool:1 forKey:v46];
        MEMORY[0x277D82BD8](v46);
        MEMORY[0x277D82BD8](v47);
      }
    }

    else
    {
      sub_268CD9D30(v63 + 48);
    }

    v42 = *(v63 + 128);
    v36 = *(v63 + 104);
    v10 = sub_268DC7AE8();
    v37 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v37);
    v11 = sub_268DBBFC4();
    v40 = *v11;
    v38 = v11[1];
    v39 = *(v11 + 16);
    v12 = sub_268DC7AE8();
    v41 = *v12;
    MEMORY[0x277D82BE0](*v12);
    sub_268DB9B78(v40, v38, v39, v41);
    MEMORY[0x277D82BD8](v41);
    sub_268E948B8();
    v43 = sub_268E41B70();

    v6 = MEMORY[0x277D82BD8](v42);
    v62 = v43;
  }

  else
  {
    v35 = [*(v63 + 88) settingMetadata];
    if (v35)
    {
      v30 = [v35 settingId];
      v31 = sub_268F9AE24();
      v32 = v13;
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v30);
      v33 = v31;
      v34 = v32;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    *(v63 + 32) = v33;
    *(v63 + 40) = v34;
    if (*(v63 + 40))
    {
      sub_268CD9D30(v63 + 32);
      v14 = *(*(v63 + 96) + 32);

      v29 = sub_268F23C10();

      if (v29)
      {
        v15 = sub_268F42038();
        v26 = *v15;
        v27 = v15[1];

        v28 = sub_268F9AE14();

        [v29 setBool:0 forKey:v28];
        MEMORY[0x277D82BD8](v28);
        MEMORY[0x277D82BD8](v29);
      }
    }

    else
    {
      sub_268CD9D30(v63 + 32);
    }

    v25 = *(v63 + 128);
    v16 = sub_268DBBFC4();
    v23 = *v16;
    v21 = v16[1];
    v22 = *(v16 + 16);
    v17 = sub_268DC7AE8();
    v24 = *v17;
    MEMORY[0x277D82BE0](*v17);
    sub_268DB9B78(v23, v21, v22, v24);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BE0](v25);
    v6 = MEMORY[0x277D82BD8](v25);
    v62 = *(v63 + 128);
  }

  v18 = *(*(v63 + 64) + 8);
  v19 = *(v63 + 64);

  return v18(v62, v6);
}

uint64_t sub_268F439AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v4;
}

uint64_t sub_268F43A74(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268D82A48;

  return sub_268F42D88(a1);
}

uint64_t *sub_268F43B40()
{
  if (qword_280FE3A80 != -1)
  {
    swift_once();
  }

  return &qword_280FE80D8;
}

uint64_t sub_268F43BA0()
{
  type metadata accessor for GetLocationServicesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80D8 = result;
  return result;
}

uint64_t sub_268F43C08()
{
  v1 = *sub_268F43B40();

  return v1;
}

double sub_268F43C38(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v5 = sub_268DBB594();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268F44154, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v15).n128_u64[0];
  return result;
}

double sub_268F43E50(uint64_t a1, void *a2, void (*a3)(id))
{
  v15 = *(a1 + 16);

  v19 = sub_268D37138();

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

uint64_t sub_268F441AC()
{
  type metadata accessor for SetShakeMouseHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1728 = result;
  return result;
}

uint64_t *sub_268F44214()
{
  if (qword_2802DB878 != -1)
  {
    swift_once();
  }

  return &qword_2802F1728;
}

uint64_t sub_268F44274()
{
  v1 = *sub_268F44214();

  return v1;
}

uint64_t sub_268F442A4(uint64_t a1, void (*a2)(id))
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

uint64_t sub_268F44440()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v5 = v0;
  v6 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  *v5 = sub_268F9AE24();
  v5[1] = v1;
  v2 = sub_268F4441C();
  v5[5] = MEMORY[0x277D837D0];
  v5[2] = v2;
  v5[3] = v3;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v6);
  return sub_268F9ADA4();
}

unint64_t sub_268F44560()
{
  v2 = qword_2802DE480;
  if (!qword_2802DE480)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F44624()
{
  v2 = qword_2802DE488;
  if (!qword_2802DE488)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE488);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4470C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v5 = v0;
  v6 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  *v5 = sub_268F9AE24();
  v5[1] = v1;
  v2 = sub_268F446E8();
  v5[5] = MEMORY[0x277D837D0];
  v5[2] = v2;
  v5[3] = v3;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v6);
  return sub_268F9ADA4();
}

unint64_t sub_268F4482C()
{
  v2 = qword_2802DE490;
  if (!qword_2802DE490)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F448F0()
{
  v2 = qword_2802DE498;
  if (!qword_2802DE498)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F44A0C()
{
  v2 = qword_2802DE4A0;
  if (!qword_2802DE4A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F44AB8()
{
  v2 = qword_2802DE4A8;
  if (!qword_2802DE4A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F44B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268E4F23C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268E4F2C8();
  v10[1] = v4;

  v10[5] = MEMORY[0x277D837D0];
  v10[2] = a1;
  v10[3] = a2;
  v10[6] = sub_268E4F2C8();
  v10[7] = v5;
  MEMORY[0x277D82BE0](a3);
  v10[11] = sub_268D34FD4();
  v10[8] = a3;
  sub_268CD0F7C();
  sub_268F9ADA4();
  return sub_268F99BF4();
}

uint64_t sub_268F44C8C()
{
  sub_268D2DF48();
  v0 = sub_268DC7C08();
  v2 = *v0;
  v3 = v0[1];

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802DE4B0 = result;
  return result;
}

uint64_t *sub_268F44D0C()
{
  if (qword_2802DB880 != -1)
  {
    swift_once();
  }

  return &qword_2802DE4B0;
}

uint64_t sub_268F44D6C()
{
  v7 = sub_268F9AEF4();
  v8 = v0;
  v1 = sub_268D2A940();
  result = sub_268F39F28(v1, v2, v7, v8);
  qword_2802F1730 = result;
  qword_2802F1738 = v4;
  qword_2802F1740 = v5;
  qword_2802F1748 = v6;
  return result;
}

uint64_t *sub_268F44DD8()
{
  if (qword_2802DB888 != -1)
  {
    swift_once();
  }

  return &qword_2802F1730;
}

uint64_t sub_268F44E38()
{
  v1 = sub_268F44DD8();
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  swift_endAccess();
  return v2;
}

uint64_t sub_268F44EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_268F44DD8();

  swift_beginAccess();
  v4 = v8[1];
  v9 = v8[3];
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;

  swift_endAccess();
}

uint64_t sub_268F44F74(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_268F9AEF4();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x26D62DB50](v12[0], v2, a1, a2);
  sub_268CD9D30(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_268F9AEF4();
  v11[1] = v3;
  v6 = MEMORY[0x26D62DB50](v11[0], v3, a1, a2);
  sub_268CD9D30(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268F45174()
{
  v2 = qword_2802DE4B8;
  if (!qword_2802DE4B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F452BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F44F74(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_268F45318()
{
  v2 = qword_2802DE4C0;
  if (!qword_2802DE4C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F453C4(uint64_t a1)
{
  v8 = a1;
  v25 = 0;
  v24 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE500, &unk_268FAB610);
  v9 = *(v19 - 8);
  v10 = v19 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v14 = v6 - v11;
  v25 = v2;
  v24 = v1;
  v12 = v2[3];
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v12);
  sub_268F45318();
  sub_268F9B844();
  v3 = v16;
  v17 = v15[2];
  v18 = v15[3];

  v23 = 0;
  sub_268F9B6A4();
  v20 = v3;
  v21 = v3;
  if (v3)
  {
    v6[1] = v21;

    return (*(v9 + 8))(v14, v19);
  }

  else
  {

    v4 = v20;
    v6[3] = v15[4];
    v6[4] = v15[5];

    v22 = 1;
    sub_268F9B6A4();
    v6[5] = v4;
    v7 = v4;
    if (v4)
    {
      v6[0] = v7;
    }

    return (*(v9 + 8))(v14, v19);
  }
}

uint64_t sub_268F45648(uint64_t *a1)
{
  swift_allocObject();
  v5 = sub_268F456D4(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268F456D4(uint64_t *a1)
{
  v29 = a1;
  v43 = 0;
  v42 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE4F8, &qword_268FAB608);
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v34 = v15 - v33;
  v43 = v2;
  v42 = v1;
  v36 = v2[3];
  v37 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v36);
  sub_268F45318();
  v3 = v35;
  sub_268F9B834();
  v38 = v3;
  v39 = v3;
  if (v3)
  {
    v18 = v39;
    v19 = 0;
    v16 = 0;
    v17 = v39;
    v15[2] = v28;
    v15[1] = v28;
    type metadata accessor for UndoNumericSetting();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(v29);
    return v15[0];
  }

  else
  {
    v41 = 0;
    v4 = sub_268F9B614();
    v24 = 0;
    v25 = v4;
    v26 = v5;
    v27 = 0;
    v6 = v28;
    *(v28 + 16) = v4;
    *(v6 + 24) = v5;
    v40 = 1;
    v7 = sub_268F9B614();
    v20 = 0;
    v21 = v7;
    v22 = v8;
    v23 = 0;
    v9 = v28;
    v10 = v30;
    v11 = v34;
    v12 = v31;
    v13 = v22;
    *(v28 + 32) = v21;
    *(v9 + 40) = v13;
    (*(v12 + 8))(v11, v10);
    __swift_destroy_boxed_opaque_existential_0(v29);
    return v28;
  }
}

uint64_t sub_268F45A3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268F45648(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_268F45B44()
{
  v2 = qword_2802DE4C8;
  if (!qword_2802DE4C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F45BD8()
{
  v2 = qword_2802DE4D0;
  if (!qword_2802DE4D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F45C6C()
{
  v2 = qword_2802DE4D8;
  if (!qword_2802DE4D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F45CE8(void *a1)
{
  a1[1] = sub_268F45D2C();
  a1[2] = sub_268F45DAC();
  result = sub_268F45E2C();
  a1[3] = result;
  return result;
}

unint64_t sub_268F45D2C()
{
  v2 = qword_2802DE4E0;
  if (!qword_2802DE4E0)
  {
    type metadata accessor for UndoNumericSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F45DAC()
{
  v2 = qword_2802DE4E8;
  if (!qword_2802DE4E8)
  {
    type metadata accessor for UndoNumericSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F45E2C()
{
  v2 = qword_2802DE4F0;
  if (!qword_2802DE4F0)
  {
    type metadata accessor for UndoNumericSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F45EAC()
{
  v1 = *sub_268D591A8();

  return v1;
}

uint64_t sub_268F45EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE508, &qword_268FAB620);
  v28 = *(v45 - 8);
  v29 = v45 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v44 = v20 - v30;
  v67 = v20 - v30;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE510, &qword_268FAB628);
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
  sub_268F464EC(v35, v34, v5, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE518, &qword_268FAB630);
  (*(v36 + 16))(v40, v38, v39);
  v41 = sub_268F995F4();
  v60 = v41;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  v6 = sub_268CDA260();
  v43 = &v59;
  v59 = v6;

  sub_268F46D3C();
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
    v20[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE520, &qword_268FAB638);
    sub_268F46DBC();
    v21 = sub_268F99644();

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE528, qword_268FAB640);
    v22[3] = v10;
    v11 = sub_268F46E44();
    v12 = v21;
    v13 = v22;
    v22[4] = v11;
    *v13 = v12;
  }

  else
  {

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE520, &qword_268FAB638);
    v22[3] = v15;
    v16 = sub_268F46DBC();
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

uint64_t sub_268F464EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v89 = a4;
  v94 = a1;
  v93 = a2;
  v92 = a3;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v109 = 0;
  v82 = 0;
  v25 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v58 = &v24 - v25;
  v35 = sub_268F99274();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v26 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v34 = &v24 - v26;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE510, &qword_268FAB628);
  v67 = *(v96 - 8);
  v68 = v96 - 8;
  v28 = *(v67 + 64);
  v27 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v82);
  v79 = &v24 - v27;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v95 = &v24 - v29;
  v118 = &v24 - v29;
  v117 = v5;
  v116 = v6;
  v115 = v7;
  v83 = sub_268D2E630();
  v84 = sub_268CDD0DC();
  sub_268F995E4();
  (*(v67 + 32))(v95, v79, v96);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5A8, qword_268F9E900);
  v40 = 1;
  v59 = sub_268F9AEF4();
  v52 = v8;
  v31 = v94[3];
  v30 = v94[4];
  __swift_project_boxed_opaque_existential_1(v94, v31);
  sub_268F99784();
  v36 = sub_268F99254();
  v37 = v9;
  (*(v32 + 8))(v34, v35);
  v45 = v114;
  v114[0] = v36;
  v114[1] = v37;
  v38 = 1;
  v10 = sub_268F9AEF4();
  v44 = v113;
  v113[0] = v10;
  v113[1] = v11;
  v12 = sub_268F9AEF4();
  v43 = v112;
  v112[0] = v12;
  v112[1] = v13;
  v39 = sub_268D58980();
  v41 = MEMORY[0x277D837D0];
  sub_268D58944();
  v53 = sub_268F9B3E4();
  v54 = v14;
  sub_268CD9D30(v43);
  sub_268CD9D30(v44);
  sub_268CD9D30(v45);
  v55 = v111;
  sub_268CDE730(v93, v111);
  v56 = v110;
  sub_268CDE730(v94, v110);
  v57 = sub_268D589F8();
  sub_268D58A5C();
  v46 = sub_268D58B9C();
  v47 = sub_268D58ABC();
  v48 = sub_268D58AF4();
  v49 = sub_268D58BD4();
  v50 = sub_268D58B64();
  v51 = sub_268D58C0C();
  v15 = sub_268D58C44();
  v88 = sub_268EEB954(v59, v52, v53, v54, v55, v56, v57, v58, v46, v47, v48, v49, v50, v51, v15);
  v109 = v88;
  v91 = *(v67 + 16);
  v90 = v67 + 16;
  v91(v79, v95, v96);
  SettingIntentStrategy = type metadata accessor for ConfirmGetSettingIntentStrategy();
  v60 = v108;
  sub_268CDE730(v94, v108);
  v61 = v107;
  sub_268CDE730(v93, v107);

  v62 = sub_268F45EAC();
  v63 = v106;
  sub_268D58CB4(v106);
  v64 = v105;
  sub_268D58CF4(v105);
  v16 = sub_268D86C08(v60, v61, v62, v88, v63, v64);
  v66 = &v104;
  v104 = v16;
  v17 = sub_268F46ECC();
  v69 = sub_268D5B7C4(v66, v92, v96, SettingIntentStrategy, v17);
  v70 = v18;

  v98 = *(v67 + 8);
  v97 = v67 + 8;
  v98(v79, v96);
  sub_268F995D4();
  v91(v79, v95, v96);
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  v76 = v103;
  sub_268CDE730(v94, v103);
  v71 = v102;
  sub_268CDE730(v93, v102);

  v72 = sub_268D587A8();
  v73 = sub_268D58ED0();
  v74 = v101;
  sub_268D58CB4(v101);
  v75 = v100;
  sub_268D58CF4(v100);
  v19 = sub_268F45EAC();
  v20 = sub_268D2E2B4(v76, v71, v72, v73, v88, v74, v75, v19);
  v78 = &v99;
  v99 = v20;
  sub_268F46F4C();
  v80 = sub_268D58F00(v78, v96);
  v81 = v21;

  v98(v79, v96);
  sub_268F995B4();
  sub_268F9AB54();
  v85 = sub_268F9AB34();
  v86 = sub_268F99594();
  v87 = v22;

  sub_268F995C4();

  v91(v89, v95, v96);

  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  return (v98)(v95, v96);
}

unint64_t sub_268F46D3C()
{
  v2 = qword_280FE4600;
  if (!qword_280FE4600)
  {
    type metadata accessor for GetSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F46DBC()
{
  v2 = qword_280FE66C0;
  if (!qword_280FE66C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DE520, &qword_268FAB638);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F46E44()
{
  v2 = qword_2802DE530;
  if (!qword_2802DE530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DE528, qword_268FAB640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F46ECC()
{
  v2 = qword_280FE32B0;
  if (!qword_280FE32B0)
  {
    type metadata accessor for ConfirmGetSettingIntentStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE32B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F46F4C()
{
  v2 = qword_280FE2AD8;
  if (!qword_280FE2AD8)
  {
    type metadata accessor for GetSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2AD8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268F46FE0()
{
  sub_268F9B734();
  *v0 = "OpenSettingIntent#OpenSettingSpokenOnly";
  *(v0 + 8) = 39;
  *(v0 + 16) = 2;
  sub_268CD0F7C();
  v2 = sub_268F9B5C4();

  return v2 != 0;
}

unint64_t sub_268F47138()
{
  v2 = qword_2802DE538;
  if (!qword_2802DE538)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE538);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268F47284@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_268F46FE0();
  *a2 = result;
  return result;
}

uint64_t sub_268F472C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F470B8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268F472F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsSetting();
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

uint64_t sub_268F4740C(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[8] = a2;
  v3[7] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  v4 = v3[4];
  return MEMORY[0x2822009F8](sub_268F47470, 0);
}

uint64_t sub_268F47470()
{
  v9 = MEMORY[0x277D55BE8];
  v1 = v0[8];
  v7 = v0[7];
  v0[4] = v0;
  v0[6] = sub_268D63D3C();
  v7(v0 + 6);
  v14 = sub_268F9AEF4();
  v11 = v2;
  v0[10] = v2;
  v8 = v0[6];

  v12 = sub_268F472F4(v8);
  v0[11] = v12;

  v13 = (v9 + *v9);
  v3 = v9[1];
  v4 = swift_task_alloc();
  v10[12] = v4;
  *v4 = v10[4];
  v4[1] = sub_268D73B74;
  v5 = v10[9];

  return v13(v14, v11, v12);
}

uint64_t sub_268F475C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268F47620(a1, a2, a3);
}

uint64_t sub_268F47620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v14 = a3;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v18 = sub_268F9AB24();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v12 = &v9 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v13 = &v9 - v11;
  v23 = v4;
  v22 = v5;
  v21 = v6;
  v24 = v3;
  sub_268CDC358(v4, &v9 - v11);
  (*(v15 + 16))(v12, v17, v18);
  MEMORY[0x277D82BE0](v14);
  v20 = sub_268F9A8D4();

  v24 = v20;
  v7 = MEMORY[0x277D82BD8](v14);
  (*(v15 + 8))(v17, v18, v7);
  sub_268CDC480(v19);

  return v20;
}

uint64_t sub_268F47804(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D7F90C;

  return sub_268F4740C(a1, a2);
}

uint64_t sub_268F478EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v12 = (*(a4 + 8) + **(a4 + 8));
  v5 = *(*(a4 + 8) + 4);
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_268D82A48;

  return v12(a1, a2, a3, a4);
}

uint64_t type metadata accessor for OpenSettingIntentCATPatternsExecutor()
{
  v1 = qword_2802DE540;
  if (!qword_2802DE540)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268F47AA4()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t sub_268F47B48()
{
  v2 = qword_2802DE550;
  if (!qword_2802DE550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE550);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F47BC4()
{
  if (qword_280FE6790 != -1)
  {
    swift_once();
  }

  return &qword_280FE6798;
}

uint64_t sub_268F47C24()
{
  type metadata accessor for AppearanceUtils();
  v0 = sub_268CDC590();
  result = sub_268D5DE80(v0);
  qword_280FE6798 = result;
  return result;
}

uint64_t static AppearanceUtils.shared.getter()
{
  v1 = *sub_268F47BC4();

  return v1;
}

uint64_t sub_268F47CBC()
{
  result = sub_268F47D04(0, 0);
  word_2802F1760 = result;
  return result;
}

uint64_t sub_268F47D04(char a1, char a2)
{
  LOBYTE(v3) = a1 & 1;
  HIBYTE(v3) = a2 & 1;
  return v3;
}

__int16 *sub_268F47D28()
{
  if (qword_2802DB898 != -1)
  {
    swift_once();
  }

  return &word_2802F1760;
}

uint64_t sub_268F47DBC()
{
  result = sub_268F47D04(1, 1);
  word_280FE8248 = result;
  return result;
}

__int16 *sub_268F47E04()
{
  if (qword_280FE57B0 != -1)
  {
    swift_once();
  }

  return &word_280FE8248;
}

BOOL sub_268F47E98(__int16 a1)
{
  v9 = a1;
  v10 = HIBYTE(a1);
  v11 = *(v1 + 16);

  v12 = sub_268D43E38();

  if (v12)
  {
    v5 = *(v8 + 16);

    v6 = sub_268D43D48(v10 & 1);

    return v6;
  }

  else
  {
    v3 = *(v8 + 16);

    v4 = sub_268D43C24(v9 & 1);

    return v4;
  }
}