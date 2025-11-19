uint64_t sub_26F437304@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  return sub_26F4368A4(v1[4], a1);
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_280F66AC0;
  if (!qword_280F66AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F437388()
{
  sub_26F49DC28();
  if (v0 <= 0x3F)
  {
    sub_26F49DBF8();
    if (v1 <= 0x3F)
    {
      sub_26F43742C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26F43742C()
{
  if (!qword_280F663C8)
  {
    sub_26F49DC68();
    v0 = sub_26F49FFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F663C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for Signpost.Operation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Signpost.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F4375D8()
{
  result = qword_2806E0878;
  if (!qword_2806E0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0878);
  }

  return result;
}

uint64_t sub_26F43762C@<X0>(char a1@<W1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_26F49DBF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Signpost();
  v31 = *(v14 + 24);
  *(a3 + v31) = 0;
  v15 = v14;
  sub_26F49DC18();
  *(a3 + *(v15 + 28)) = a1;
  v16 = *(v15 + 20);
  sub_26F49DC08();
  result = sub_26F49DBD8();
  if ((a2 & 1) == 0)
  {
    v30 = sub_26F437D50(a1);
    v18 = v7;
    v19 = *(v7 + 16);
    v19(v13, a3 + v16, v6);
    v20 = sub_26F49DC08();
    v21 = sub_26F49FEC8();
    result = sub_26F49FFA8();
    if (result)
    {
      v29 = v7;
      if (!v30)
      {
        __break(1u);
        return result;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_26F49DBE8();
      _os_signpost_emit_with_name_impl(&dword_26F39E000, v20, v21, v23, v30, "", v22, 2u);
      MEMORY[0x274391F70](v22, -1, -1);
      v18 = v29;
    }

    v19(v10, v13, v6);
    v24 = sub_26F49DC68();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_26F49DC58();
    result = (*(v18 + 8))(v13, v6);
    *(a3 + v31) = v27;
  }

  return result;
}

uint64_t sub_26F437948(char a1)
{
  v3 = sub_26F49DBF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Signpost();
  (*(v4 + 16))(v7, v1 + *(v8 + 20), v3);
  v9 = sub_26F49DC08();
  v10 = sub_26F49FED8();
  if (sub_26F49FFA8())
  {
    if (a1)
    {
      v11 = "failure";
    }

    else
    {
      v11 = "success";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_26F49DBE8();
    _os_signpost_emit_with_name_impl(&dword_26F39E000, v9, v10, v13, v11, "", v12, 2u);
    MEMORY[0x274391F70](v12, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26F437AD0()
{
  v1 = sub_26F49DC38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_26F49DBF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = type metadata accessor for Signpost();
  if (*(v0 + *(result + 24)))
  {
    v12 = sub_26F437D50(*(v0 + *(result + 28)));

    v13 = sub_26F49DC08();
    sub_26F49DC48();
    v18 = sub_26F49FEB8();
    result = sub_26F49FFA8();
    if (result)
    {
      if (!v12)
      {
        __break(1u);
        return result;
      }

      sub_26F49DC78();

      if ((*(v2 + 88))(v5, v1) == *MEMORY[0x277D85B00])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v2 + 8))(v5, v1);
        v14 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_26F49DBE8();
      _os_signpost_emit_with_name_impl(&dword_26F39E000, v13, v18, v16, v12, v14, v15, 2u);
      MEMORY[0x274391F70](v15, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

const char *sub_26F437D50(char a1)
{
  result = "lid_pass";
  switch(a1)
  {
    case 1:
      result = "translate_pass";
      break;
    case 2:
      result = "network_path";
      break;
    case 3:
      result = "ondevice_path";
      break;
    case 4:
      result = "cache_path";
      break;
    case 5:
      result = "read_status";
      break;
    case 6:
      result = "read_available";
      break;
    case 7:
      result = "read_selected";
      break;
    case 8:
      result = "read_installed";
      break;
    case 9:
      result = "download";
      break;
    case 10:
      result = "pair_state";
      break;
    case 11:
      result = "passthrough_pair";
      break;
    case 12:
      result = "network_available";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26F437E54()
{
  v1 = sub_26F49DBF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_26F49DC28();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Signpost();
  v15 = *(result + 24);
  if (!*(v0 + v15))
  {
    v16 = result;
    v30 = v10;
    (*(v10 + 16))(v13, v0, v9);
    v28 = sub_26F437D50(*(v0 + *(v16 + 28)));
    v17 = *(v16 + 20);
    v18 = *(v2 + 16);
    v31 = v0;
    v29 = v18;
    v18(v8, (v0 + v17), v1);
    v19 = sub_26F49DC08();
    v27 = sub_26F49FEC8();
    result = sub_26F49FFA8();
    if (result)
    {
      v26 = v2;
      if (!v28)
      {
        __break(1u);
        return result;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_26F49DBE8();
      _os_signpost_emit_with_name_impl(&dword_26F39E000, v19, v27, v21, v28, "", v20, 2u);
      MEMORY[0x274391F70](v20, -1, -1);
      v2 = v26;
    }

    v29(v5, v8, v1);
    v22 = sub_26F49DC68();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = sub_26F49DC58();
    (*(v2 + 8))(v8, v1);
    result = (*(v30 + 8))(v13, v9);
    *(v31 + v15) = v25;
  }

  return result;
}

uint64_t sub_26F438134()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SimpleExpandingText() + 44));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26F49FDE8();
    v9 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_26F438288@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SimpleExpandingText();
  sub_26F3B8DD4(v1 + *(v12 + 48), v11, &qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26F49E2E8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_26F49FDE8();
    v16 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t SimpleExpandingText.init(_:isExpanded:_:buttonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = type metadata accessor for SimpleExpandingText();
  v14 = v13[6];
  v15 = sub_26F49DAB8();
  (*(*(v15 - 8) + 56))(a9 + v14, 1, 1, v15);
  v16 = (a9 + v13[7]);
  v17 = a9 + v13[8];
  sub_26F49F338();
  *v17 = v29;
  *(v17 + 8) = v30;
  v18 = (a9 + v13[9]);
  sub_26F49F338();
  *v18 = v29;
  v18[1] = v30;
  v19 = a9 + v13[10];
  sub_26F49F338();
  *v19 = v29;
  *(v19 + 8) = v30;
  v20 = a9 + v13[11];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v13[12];
  *(a9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  swift_storeEnumTagMultiPayload();
  v22 = a9 + v13[13];
  sub_26F49EE48();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  result = sub_26F3D27D4(a6, a9 + v14);
  *v16 = a7;
  v16[1] = a8;
  return result;
}

uint64_t type metadata accessor for SimpleExpandingText()
{
  result = qword_2806E0898;
  if (!qword_2806E0898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_26F4386B0()
{
  v1 = type metadata accessor for SimpleExpandingText();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v78 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4B8, &qword_26F4A41C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4C0, &qword_26F4A8460);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v93 = &v78 - v13;
  v14 = sub_26F49EE38();
  v15 = *(v14 - 8);
  v96 = v14;
  v97 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v94 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26F49EE58();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v92 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  v25 = (v0 + *(v1 + 36));
  v26 = *v25;
  v27 = v25[1];
  v99 = *v25;
  v100 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F348();
  if (v98 <= 0.0)
  {
    if (qword_2806DE798 != -1)
    {
      swift_once();
    }

    v71 = sub_26F49DCA8();
    __swift_project_value_buffer(v71, qword_2806EA8D8);
    sub_26F43AEC4(v0, v4);
    v65 = sub_26F49DC88();
    v72 = sub_26F49FDC8();
    if (os_log_type_enabled(v65, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 134217984;
      v74 = *v4;
      v75 = v4[1];
      v76 = sub_26F49F9B8();
      sub_26F43B860(v4);
      *(v73 + 4) = v76;
      _os_log_impl(&dword_26F39E000, v65, v72, "Text of len %ld hard isMultiline due to: zero availableWidth", v73, 0xCu);
      MEMORY[0x274391F70](v73, -1, -1);
    }

    else
    {
      sub_26F43B860(v4);
    }

    v62 = 1;
  }

  else
  {
    v89 = v7;
    v99 = v26;
    v100 = v27;
    sub_26F49F348();
    v28 = v19[2];
    v79 = *(v1 + 52);
    v81 = v28;
    v28(v24, (v0 + v79), v18);
    v29 = sub_26F438134();
    v90 = v18;
    v91 = v0;
    if (!v29)
    {
      sub_26F49ECA8();
    }

    v30 = sub_26F49EEA8();
    v32 = v31;
    v34 = v33;

    v35 = sub_26F49EE08();
    v36 = *(v35 - 8);
    v87 = *(v36 + 56);
    v88 = v35;
    v86 = v36 + 56;
    v87(v93, 1, 1);
    v37 = sub_26F49EEB8();
    v38 = *(v37 - 8);
    v39 = *(v38 + 56);
    v85 = v37;
    v84 = v39;
    v83 = v38 + 56;
    (v39)(v95, 1, 1);
    v40 = v94;
    sub_26F49EE28();
    sub_26F49EE18();
    v42 = v41;
    sub_26F3B8D40(v30, v32, v34 & 1);

    v43 = *(v97 + 8);
    v97 += 8;
    v82 = v43;
    v43(v40, v96);
    v44 = v24;
    v45 = v90;
    v80 = v19[1];
    v80(v44, v90);
    v46 = v91;
    v81(v92, v91 + v79, v45);
    v47 = v46[1];
    v99 = *v46;
    v100 = v47;
    sub_26F3BDC0C();

    v48 = sub_26F49EED8();
    v50 = v49;
    v52 = v51;
    if (!sub_26F438134())
    {
      sub_26F49ECA8();
    }

    v53 = sub_26F49EEA8();
    v55 = v54;
    v57 = v56;
    sub_26F3B8D40(v48, v50, v52 & 1);

    (v87)(v93, 1, 1, v88);
    v84(v95, 1, 1, v85);
    v58 = v94;
    sub_26F49EE28();
    v59 = v92;
    sub_26F49EE18();
    v61 = v60;
    sub_26F3B8D40(v53, v55, v57 & 1);

    v82(v58, v96);
    v80(v59, v90);
    v62 = v42 < v61;
    if (qword_2806DE798 != -1)
    {
      swift_once();
    }

    v63 = sub_26F49DCA8();
    __swift_project_value_buffer(v63, qword_2806EA8D8);
    v64 = v89;
    sub_26F43AEC4(v91, v89);
    v65 = sub_26F49DC88();
    v66 = sub_26F49FDC8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 67109376;
      *(v67 + 4) = v42 < v61;
      *(v67 + 8) = 2048;
      v68 = *v64;
      v69 = v64[1];
      v70 = sub_26F49F9B8();
      sub_26F43B860(v64);
      *(v67 + 10) = v70;
      _os_log_impl(&dword_26F39E000, v65, v66, "isMultiline: %{BOOL}d for text of %ld characters (approx)", v67, 0x12u);
      MEMORY[0x274391F70](v67, -1, -1);
    }

    else
    {
      sub_26F43B860(v64);
    }
  }

  return v62;
}

uint64_t sub_26F438EE8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF528, &qword_26F4A4218);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF530, &unk_26F4A83F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  v18 = sub_26F49F258();
  if (a1)
  {
    sub_26F49E768();
    v19 = sub_26F49EEC8();
    v71 = v18;
    v72 = v14;
    v20 = v19;
    v69 = v6;
    v22 = v21;
    v23 = v17;
    v25 = v24;
    sub_26F49ECA8();
    v73 = a3;
    v66 = sub_26F49EEA8();
    v67 = v10;
    v68 = a2;
    v27 = v26;
    v70 = v7;
    v29 = v28;
    v31 = v30;

    v32 = v25 & 1;
    v17 = v23;
    sub_26F3B8D40(v20, v22, v32);

    LOBYTE(v22) = sub_26F49EC78();
    sub_26F49DF78();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v29 &= 1u;
    LOBYTE(v91) = v29;
    LOBYTE(v88) = 0;
    v41 = sub_26F49F248();
    KeyPath = swift_getKeyPath();
    v43 = sub_26F49EC78();
    sub_26F49DF78();
    LOBYTE(v88) = 0;
    *&v91 = v66;
    *(&v91 + 1) = v27;
    LOBYTE(v92[0]) = v29;
    *(&v92[0] + 1) = v31;
    LOBYTE(v92[1]) = v22;
    *(&v92[1] + 1) = v34;
    *&v92[2] = v36;
    *(&v92[2] + 1) = v38;
    *&v92[3] = v40;
    BYTE8(v92[3]) = 0;
    *&v92[4] = KeyPath;
    *(&v92[4] + 1) = v41;
    LOBYTE(v92[5]) = v43;
    v18 = v71;
    *(&v92[5] + 1) = v44;
    *&v92[6] = v45;
    *(&v92[6] + 1) = v46;
    *&v92[7] = v47;
    BYTE8(v92[7]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF540, &unk_26F4A8430);
    sub_26F3D3734();
    v48 = v67;
    v14 = v72;
    sub_26F49F078();
    v77[6] = v92[5];
    v78[0] = v92[6];
    *(v78 + 9) = *(&v92[6] + 9);
    v77[2] = v92[1];
    v77[3] = v92[2];
    v77[4] = v92[3];
    v77[5] = v92[4];
    v77[0] = v91;
    v77[1] = v92[0];
    sub_26F3B6B4C(v77, &qword_2806DF540, &unk_26F4A8430);
    v49 = sub_26F49E6D8();
    v76 = 0;
    sub_26F4394DC(&v91);
    v83 = v92[3];
    v84 = v92[4];
    v85 = v92[5];
    v79 = v91;
    v80 = v92[0];
    v81 = v92[1];
    v82 = v92[2];
    v86[0] = v91;
    v86[1] = v92[0];
    v86[2] = v92[1];
    v86[3] = v92[2];
    v86[4] = v92[3];
    v86[5] = v92[4];
    v87 = v92[5];
    sub_26F3B8DD4(&v79, &v88, &qword_2806DF570, &qword_26F4A4260);
    a3 = v73;
    sub_26F3B6B4C(v86, &qword_2806DF570, &qword_26F4A4260);
    *(&v75[3] + 7) = v82;
    *(&v75[4] + 7) = v83;
    *(&v75[5] + 7) = v84;
    *(v75 + 7) = v79;
    *(&v75[1] + 7) = v80;
    *(&v75[6] + 7) = v85;
    *(&v75[2] + 7) = v81;
    LOBYTE(v22) = v76;
    v50 = sub_26F49F5A8();
    v88 = v49;
    LOBYTE(v89[0]) = v22;
    *(&v89[3] + 1) = v75[3];
    v51 = v75[3];
    v52 = v75[4];
    *(&v89[4] + 1) = v75[4];
    v53 = v75[5];
    *(&v89[5] + 1) = v75[5];
    *(&v89[5] + 10) = *(&v75[5] + 9);
    *(v89 + 1) = v75[0];
    v54 = v75[0];
    v55 = v75[1];
    *(&v89[1] + 1) = v75[1];
    v56 = v75[2];
    *(&v89[2] + 1) = v75[2];
    *&v90 = v50;
    *(&v90 + 1) = v57;
    v58 = v69;
    v59 = (v48 + *(v69 + 36));
    v60 = v89[6];
    v59[6] = v89[5];
    v59[7] = v60;
    v59[8] = v90;
    v61 = v89[2];
    v59[2] = v89[1];
    v59[3] = v61;
    v62 = v89[4];
    v59[4] = v89[3];
    v59[5] = v62;
    v63 = v89[0];
    *v59 = v88;
    v59[1] = v63;
    *(&v92[3] + 1) = v51;
    *(&v92[4] + 1) = v52;
    *(&v92[5] + 1) = v53;
    *(&v92[5] + 10) = *(&v75[5] + 9);
    *(v92 + 1) = v54;
    *(&v92[1] + 1) = v55;
    v91 = v49;
    LOBYTE(v92[0]) = v22;
    *(&v92[2] + 1) = v56;
    *&v92[7] = v50;
    *(&v92[7] + 1) = v57;
    sub_26F3B8DD4(&v88, &v74, &qword_2806DF578, &unk_26F4A8440);
    sub_26F3B6B4C(&v91, &qword_2806DF578, &unk_26F4A8440);
    sub_26F3BBAEC(v48, v17, &qword_2806DF528, &qword_26F4A4218);
    (*(v70 + 56))(v17, 0, 1, v58);
  }

  else
  {
    (*(v7 + 56))(v17, 1, 1, v6);
  }

  sub_26F3B8DD4(v17, v14, &qword_2806DF530, &unk_26F4A83F0);
  *a3 = v18;
  *(a3 + 8) = 256;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF538, &qword_26F4A4220);
  sub_26F3B8DD4(v14, a3 + *(v64 + 48), &qword_2806DF530, &unk_26F4A83F0);

  sub_26F3B6B4C(v17, &qword_2806DF530, &unk_26F4A83F0);
  sub_26F3B6B4C(v14, &qword_2806DF530, &unk_26F4A83F0);
}

uint64_t sub_26F4394DC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF580, &qword_26F4A4268);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26F4A3B80;
  sub_26F49F258();
  sub_26F4396B4();
  v3 = sub_26F49F268();

  *(v2 + 32) = v3;
  sub_26F49F258();
  sub_26F4396B4();
  v4 = sub_26F49F268();

  *(v2 + 40) = v4;
  sub_26F49F678();
  sub_26F49F688();
  MEMORY[0x274390330](v2);
  sub_26F49E268();
  sub_26F49F5A8();
  sub_26F49E0C8();
  v5 = sub_26F49F248();
  v6 = v19;
  v12[2] = v18;
  v12[3] = v19;
  v12[4] = v20;
  v7 = v20;
  v8 = v21;
  v13 = v21;
  v10 = v17;
  v12[0] = v16;
  v9 = v16;
  v12[1] = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 80) = v8;
  *(a1 + 88) = v5;
  *(a1 + 96) = 256;
  sub_26F3B8DD4(v12, v14, &qword_2806DF588, &unk_26F4A8450);
  v14[2] = v18;
  v14[3] = v19;
  v14[4] = v20;
  v15 = v21;
  v14[0] = v16;
  v14[1] = v17;
  return sub_26F3B6B4C(v14, &qword_2806DF588, &unk_26F4A8450);
}

uint64_t sub_26F4396B4()
{
  v1 = sub_26F49E2E8();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = sub_26F49DA98();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v16 = sub_26F49DAB8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SimpleExpandingText();
  sub_26F3B8DD4(v0 + *(v21 + 24), v15, &qword_2806DEFD8, &qword_26F4A3670);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F438288(v7);
    v23 = v30;
    v22 = v31;
    (*(v30 + 104))(v4, *MEMORY[0x277CDFA90], v31);
    v24 = sub_26F49E2D8();
    v25 = *(v23 + 8);
    v25(v4, v22);
    v25(v7, v22);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_26F49DAA8();
    v26 = sub_26F49DA78();
    (*(v28 + 8))(v11, v29);
    (*(v17 + 8))(v20, v16);
    v24 = v26 == 2;
  }

  return v24 & 1;
}

uint64_t SimpleExpandingText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v57 = sub_26F49E2E8();
  v55 = *(v57 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF420, &qword_26F4A8290);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v49 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0880, &qword_26F4A8298);
  v10 = *(v9 - 8);
  v53 = v9 - 8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0888, &unk_26F4A82A0);
  v14 = *(v13 - 8);
  v58 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v56 = &v49 - v16;
  v17 = type metadata accessor for SimpleExpandingText();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F43AEC4(v1, v20);
  sub_26F49FBD8();
  v21 = sub_26F49FBC8();
  v22 = *(v18 + 80);
  v23 = (v22 + 32) & ~v22;
  v52 = v19;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v21;
  *(v24 + 24) = v25;
  sub_26F43AF28(v20, v24 + v23);
  sub_26F43AEC4(v1, v20);
  v26 = sub_26F49FBC8();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  sub_26F43AF28(v20, v27 + v23);
  sub_26F49F478();
  v28 = v60;
  v49 = v60;
  LODWORD(v26) = v61;
  *v8 = sub_26F49F5C8();
  v8[1] = v29;
  v30 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3D8, &qword_26F4A3F48) + 44);
  v50 = v2;
  sub_26F43A12C(v2, v28, *(&v28 + 1), v26, v30);
  KeyPath = swift_getKeyPath();
  v32 = sub_26F4396B4();
  v33 = v54;
  v34 = v55;
  v35 = MEMORY[0x277CDFA90];
  if ((v32 & 1) == 0)
  {
    v35 = MEMORY[0x277CDFA88];
  }

  v36 = v57;
  (*(v55 + 104))(v54, *v35, v57);
  v37 = v51;
  v38 = &v51[*(v53 + 44)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3E0, &qword_26F4A82B0);
  (*(v34 + 32))(v38 + *(v39 + 28), v33, v36);
  *v38 = KeyPath;
  sub_26F3BBAEC(v8, v37, &qword_2806DF420, &qword_26F4A8290);
  sub_26F49F5A8();
  sub_26F49E3D8();

  v40 = v56;
  sub_26F3BBAEC(v37, v56, &qword_2806E0880, &qword_26F4A8298);
  v41 = (v40 + *(v58 + 44));
  v42 = v65;
  v41[4] = v64;
  v41[5] = v42;
  v41[6] = v66;
  v43 = v61;
  *v41 = v60;
  v41[1] = v43;
  v44 = v63;
  v41[2] = v62;
  v41[3] = v44;
  sub_26F43AEC4(v50, v20);
  v45 = swift_allocObject();
  sub_26F43AF28(v20, v45 + ((v22 + 16) & ~v22));
  v46 = v59;
  sub_26F3BBAEC(v40, v59, &qword_2806E0888, &unk_26F4A82A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0890, &qword_26F4A82B8);
  v48 = (v46 + *(result + 36));
  *v48 = sub_26F43AE1C;
  v48[1] = 0;
  v48[2] = sub_26F43B2E8;
  v48[3] = v45;
  return result;
}

void *sub_26F439F94@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *(a1 + 32) & 1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    result = MEMORY[0x274390240](&v11, v3);
  }

  else
  {
    v5 = (a1 + *(type metadata accessor for SimpleExpandingText() + 32));
    v7 = *v5;
    v9 = *(v5 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
    result = sub_26F49F348();
  }

  *a2 = v11;
  return result;
}

uint64_t sub_26F43A048(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*(a4 + 24))
  {
    v7 = *(a4 + 16);
    v10 = *(a4 + 32) & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    sub_26F49F458();
  }

  else
  {
    v6 = (a4 + *(type metadata accessor for SimpleExpandingText() + 32));
    v8 = *v6;
    v9 = *(v6 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
    return sub_26F49F358();
  }
}

uint64_t sub_26F43A12C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v107 = a4;
  v106 = a3;
  v105 = a2;
  v114 = a5;
  v97 = sub_26F49E358();
  v96 = *(v97 - 8);
  v6 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for SimpleExpandingText();
  v88 = *(v98 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v98);
  v89 = v9;
  v90 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4C8, &unk_26F4A8360);
  v93 = *(v94 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v87 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4D0, &qword_26F4A41C8);
  v110 = *(v112 - 8);
  v12 = *(v110 + 64);
  MEMORY[0x28223BE20](v112);
  v91 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4D8, &unk_26F4A8370);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v113 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v111 = &v87 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4E0, &qword_26F4A41D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v87 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4E8, &unk_26F4A8380);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v87 - v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4F0, &qword_26F4A41D8);
  v27 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v87 - v28;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4F8, &unk_26F4A8390);
  v29 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v109 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v87 - v32;
  MEMORY[0x28223BE20](v34);
  v108 = &v87 - v35;
  v36 = a1[1];
  *&v119 = *a1;
  *(&v119 + 1) = v36;
  sub_26F3BDC0C();

  v101 = sub_26F49EED8();
  v100 = v37;
  LOBYTE(v36) = v38;
  v99 = v39;
  sub_26F49F578();
  sub_26F49E3D8();
  v40 = v36 & 1;
  v126 = v36 & 1;
  v41 = a1;
  if (sub_26F4386B0())
  {
    v42 = v105;
    v116 = v105;
    v43 = v106;
    v117 = v106;
    v44 = v107 & 1;
    v118 = v107 & 1;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    MEMORY[0x274390240](&v115, v45);
    if (v115)
    {
      v46 = 0;
    }

    else
    {
      v47 = v41 + *(v98 + 40);
      v48 = *v47;
      v49 = *(v47 + 8);
      LOBYTE(v116) = v48;
      v117 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
      sub_26F49F348();
      v46 = v115;
    }
  }

  else
  {
    v42 = v105;
    v43 = v106;
    v46 = 0;
    v44 = v107 & 1;
  }

  *v22 = sub_26F49E6D8();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF500, &qword_26F4A41E0);
  sub_26F438EE8(v46, v41, &v22[*(v50 + 44)]);
  sub_26F3BBAEC(v22, &v26[*(v23 + 36)], &qword_2806DF4E0, &qword_26F4A41D0);
  v51 = v100;
  *v26 = v101;
  *(v26 + 1) = v51;
  v26[16] = v40;
  *(v26 + 3) = v99;
  v52 = v124;
  *(v26 + 6) = v123;
  *(v26 + 7) = v52;
  *(v26 + 8) = v125;
  v53 = v120;
  *(v26 + 2) = v119;
  *(v26 + 3) = v53;
  v54 = v122;
  *(v26 + 4) = v121;
  *(v26 + 5) = v54;
  v55 = v42;
  v116 = v42;
  v117 = v43;
  v56 = v43;
  v118 = v44;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v115);
  v58 = v115;
  v59 = (v115 & 1) == 0;
  KeyPath = swift_getKeyPath();
  v61 = v26;
  v62 = v102;
  sub_26F3BBAEC(v61, v102, &qword_2806DF4E8, &unk_26F4A8380);
  v63 = v62 + *(v104 + 36);
  *v63 = KeyPath;
  *(v63 + 8) = v59;
  *(v63 + 16) = v58;
  sub_26F3BBAEC(v62, v33, &qword_2806DF4F0, &qword_26F4A41D8);
  v33[*(v103 + 36)] = 0;
  v64 = v108;
  sub_26F3BBAEC(v33, v108, &qword_2806DF4F8, &unk_26F4A8390);
  if (sub_26F4386B0())
  {
    v116 = v55;
    v117 = v56;
    v118 = v44;
    MEMORY[0x274390240](&v115, v57);
    v65 = v111;
    if ((v115 & 1) != 0 || (v66 = v41 + *(v98 + 40), v67 = *v66, v68 = *(v66 + 8), LOBYTE(v116) = v67, v117 = v68, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00), sub_26F49F348(), v115 != 1))
    {
      v81 = 1;
      v80 = v112;
    }

    else
    {
      v69 = v90;
      sub_26F43AEC4(v41, v90);
      v70 = (*(v88 + 80) + 33) & ~*(v88 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = v55;
      *(v71 + 24) = v56;
      *(v71 + 32) = v44;
      v72 = sub_26F43AF28(v69, v71 + v70);
      MEMORY[0x28223BE20](v72);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF510, &unk_26F4A83E0);
      sub_26F3D36B0();
      v73 = v92;
      sub_26F49F398();
      v74 = v95;
      sub_26F49E348();
      sub_26F3B18CC(&qword_2806DF520, &qword_2806DF4C8, &unk_26F4A8360);
      sub_26F3CAB30();
      v75 = v91;
      v76 = v94;
      v77 = v97;
      sub_26F49EF48();
      (*(v96 + 8))(v74, v77);
      (*(v93 + 8))(v73, v76);
      v78 = sub_26F49F228();
      v79 = v112;
      *(v75 + *(v112 + 36)) = v78;
      sub_26F3BBAEC(v75, v65, &qword_2806DF4D0, &qword_26F4A41C8);
      v80 = v79;
      v81 = 0;
    }
  }

  else
  {
    v81 = 1;
    v80 = v112;
    v65 = v111;
  }

  (*(v110 + 56))(v65, v81, 1, v80);
  v82 = v109;
  sub_26F3B8DD4(v64, v109, &qword_2806DF4F8, &unk_26F4A8390);
  v83 = v113;
  sub_26F3A2864(v65, v113);
  v84 = v114;
  sub_26F3B8DD4(v82, v114, &qword_2806DF4F8, &unk_26F4A8390);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF508, &unk_26F4A83D0);
  sub_26F3A2864(v83, v84 + *(v85 + 48));
  sub_26F3A7F94(v65);
  sub_26F3B6B4C(v64, &qword_2806DF4F8, &unk_26F4A8390);
  sub_26F3A7F94(v83);
  return sub_26F3B6B4C(v82, &qword_2806DF4F8, &unk_26F4A8390);
}

uint64_t sub_26F43AC38(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v9 = a1;
  v10 = a2;
  v11 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v8);
  LOBYTE(v9) = (v8 & 1) == 0;
  sub_26F49F458();

  result = type metadata accessor for SimpleExpandingText();
  v6 = a4 + *(result + 28);
  if (*v6)
  {
    v7 = *(v6 + 8);
    return (*v6)();
  }

  return result;
}

uint64_t sub_26F43AD0C@<X0>(uint64_t a1@<X8>)
{
  sub_26F49E768();
  v2 = sub_26F49EEC8();
  v4 = v3;
  v6 = v5;
  sub_26F49ECA8();
  v7 = sub_26F49EEA8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_26F3B8D40(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_26F49EC78();
  result = sub_26F49DF78();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_26F43AE1C@<X0>(void *a1@<X8>)
{
  result = sub_26F49E158();
  *a1 = v3;
  return result;
}

uint64_t sub_26F43AE48(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for SimpleExpandingText() + 36));
  v5 = *v3;
  v6 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  return sub_26F49F358();
}

uint64_t sub_26F43AEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleExpandingText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F43AF28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleExpandingText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_26F43AF8C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for SimpleExpandingText() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26F439F94(v6, a1);
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for SimpleExpandingText();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  if (*(v0 + v2 + 24))
  {
    v7 = *(v5 + 16);

    v8 = *(v5 + 24);
  }

  v9 = v1[6];
  v10 = sub_26F49DAB8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v5 + v1[7]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = *(v5 + v1[8] + 8);

  v15 = *(v5 + v1[9] + 8);

  v16 = *(v5 + v1[10] + 8);

  v17 = (v5 + v1[11]);
  v18 = *v17;
  v19 = *(v17 + 8);
  j__swift_release();
  v20 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_26F49E2E8();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  v23 = v1[13];
  v24 = sub_26F49EE58();
  (*(*(v24 - 8) + 8))(v5 + v23, v24);

  return swift_deallocObject();
}

uint64_t sub_26F43B274(char *a1)
{
  v3 = *(type metadata accessor for SimpleExpandingText() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26F43A048(a1, v4, v5, v6);
}

uint64_t sub_26F43B2E8(uint64_t *a1)
{
  v3 = *(type metadata accessor for SimpleExpandingText() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F43AE48(a1, v4);
}

void sub_26F43B39C()
{
  sub_26F3D33AC(319, &qword_2806DF450, &qword_2806DEDE8, &qword_26F4A3110, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26F3D3410(319, &qword_280F66C80, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26F3D33AC(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26F3D3360(319, &qword_2806DF468);
        if (v3 <= 0x3F)
        {
          sub_26F3D3360(319, &qword_2806DEA48);
          if (v4 <= 0x3F)
          {
            sub_26F3D33AC(319, &qword_2806DF478, &qword_2806DF480, &qword_26F4A3FD0, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_26F3D3410(319, &qword_2806DF488, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_26F49EE58();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26F43B5C8()
{
  result = qword_2806E08A8;
  if (!qword_2806E08A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0890, &qword_26F4A82B8);
    sub_26F43B680();
    sub_26F3B18CC(&qword_2806E08C0, &qword_2806E08C8, &unk_26F4A8350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E08A8);
  }

  return result;
}

unint64_t sub_26F43B680()
{
  result = qword_2806E08B0;
  if (!qword_2806E08B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0888, &unk_26F4A82A0);
    sub_26F43B70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E08B0);
  }

  return result;
}

unint64_t sub_26F43B70C()
{
  result = qword_2806E08B8;
  if (!qword_2806E08B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0880, &qword_26F4A8298);
    sub_26F3B18CC(&qword_2806DF418, &qword_2806DF420, &qword_26F4A8290);
    sub_26F3B18CC(&qword_2806DF430, &qword_2806DF3E0, &qword_26F4A82B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E08B8);
  }

  return result;
}

uint64_t sub_26F43B7F0()
{
  v1 = *(type metadata accessor for SimpleExpandingText() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_26F43AC38(v2, v3, v4, v5);
}

uint64_t sub_26F43B860(uint64_t a1)
{
  v2 = type metadata accessor for SimpleExpandingText();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSAttributedString __swiftcall String.applyingAttributes(from:)(NSAttributedString from)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v3 = sub_26F49F898();
  v4 = [v2 initWithString_];

  v5 = [(objc_class *)from.super.isa length];
  v6 = v4;
  v7 = [v6 length];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  [v6 beginEditing];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26F43BCD0;
  *(v10 + 24) = v9;
  v15[4] = sub_26F43BCD8;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_26F43BC30;
  v15[3] = &block_descriptor_8;
  v11 = _Block_copy(v15);
  v12 = v6;

  [(objc_class *)from.super.isa enumerateAttributesInRange:0 options:v8 usingBlock:0, v11];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    [v12 endEditing];

    return v12;
  }

  return result;
}

uint64_t sub_26F43BAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = sub_26F43BDE0(&v25))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(*(a1 + 48) + 8 * v17);
    sub_26F3B2DBC(*(a1 + 56) + 32 * v17, &v26);
    v25 = v18;
    sub_26F43BD70(&v25, &v23);
    v19 = v23;
    v20 = v18;

    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v21 = sub_26F4A0448();
    __swift_destroy_boxed_opaque_existential_0(v24);
    [a5 addAttribute:v20 value:v21 range:{a2, a3}];
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26F43BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_26F43BD18();
  v10 = sub_26F49F7F8();
  v9(v10, a3, a4, a5);
}

uint64_t sub_26F43BCD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26F43BD18()
{
  result = qword_2806DE8E8;
  if (!qword_2806DE8E8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DE8E8);
  }

  return result;
}

uint64_t sub_26F43BD70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEF80, &unk_26F4A3640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F43BDE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEF80, &unk_26F4A3640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static String.TRANSLATION_LIMIT.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_2806E08D0 = a1;
  return result;
}

id String.isWhitespaceOnly.getter()
{
  v0 = sub_26F49F898();
  v1 = [v0 lt_isWhiteSpaceOnlyString];

  return v1;
}

Swift::tuple_Bool_String __swiftcall String.truncated(limit:)(Swift::Int limit)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_26F49D768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26F49F9B8() >= limit)
  {
    v28 = v6;
    v12 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
    v13 = sub_26F49F898();
    [v12 setString_];

    sub_26F49F9D8();
    v14 = sub_26F49FDA8();
    v16 = v15;
    v31 = v14;
    v32 = v15;
    v29 = v4;
    v30 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08D8, &qword_26F4A8468);
    sub_26F43C1F0();
    sub_26F3BDC0C();
    sub_26F49FF98();
    if (v17 >= 21)
    {
      v16 = sub_26F49F9D8();
    }

    v18 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v18 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v11 = v16 >> 14 < 4 * v18;
    sub_26F49F9C8();
    v19 = sub_26F49FA68();
    v20 = MEMORY[0x274390760](v19);
    v22 = v21;

    v31 = v20;
    v32 = v22;
    sub_26F49D748();
    v4 = sub_26F49FFE8();
    v3 = v23;

    (*(v7 + 8))(v10, v28);
  }

  else
  {

    v11 = 0;
  }

  v24 = v11;
  v25 = v4;
  v26 = v3;
  result._1._object = v26;
  result._1._countAndFlagsBits = v25;
  result._0 = v24;
  return result;
}

unint64_t sub_26F43C1F0()
{
  result = qword_2806E08E0;
  if (!qword_2806E08E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E08D8, &qword_26F4A8468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E08E0);
  }

  return result;
}

Swift::tuple_Bool_NSAttributedString __swiftcall NSAttributedString.truncated(limit:)(Swift::Int limit)
{
  v3 = [v1 string];
  sub_26F49F8C8();

  v4 = sub_26F49F9B8();

  if (v4 >= limit)
  {
    v7 = [v1 string];
    sub_26F49F8C8();

    v13 = String.truncated(limit:)(limit);
    v6 = v13._0;
    countAndFlagsBits = v13._1._countAndFlagsBits;
    object = v13._1._object;

    v10 = MEMORY[0x274390820](countAndFlagsBits, object);

    v5 = [v1 attributedSubstringFromRange_];
  }

  else
  {
    v5 = v1;
    v6 = 0;
  }

  v11 = v6;
  result._1.super.isa = v5;
  result._0 = v11;
  return result;
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26F43C3A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_26F43C3F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_26F43C498()
{
  sub_26F3E5B60(319, &qword_2806E0900, &qword_2806E0908, &qword_26F4AB220, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_26F3E5B60(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26F43C5A8(void *a1)
{
  v3 = type metadata accessor for SystemWideConsentView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_26F49DFD8();
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v70 - v12;
  v76 = [a1 view];
  if (!v76)
  {
    __break(1u);
    return;
  }

  sub_26F3B0C24(0, &qword_2806E09C8, 0x277D73520);
  v14 = [objc_opt_self() _viewControllerForFullScreenPresentationFromView_];
  if (v14)
  {
    v15 = v14;
    v73 = a1;
    v74 = v6;
    v71 = v4;
    v72 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = v15;
    if ([v17 isKindOfClass_])
    {
      v18 = [v17 presentingViewController];

      v17 = v18;
      if (!v18)
      {
        return;
      }
    }

    else
    {

      while (1)
      {
        v19 = [v17 presentedViewController];
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if ([v19 isKindOfClass_])
        {

          break;
        }

        v21 = [v20 presentedViewController];

        v17 = v21;
        if (!v21)
        {
          goto LABEL_10;
        }
      }
    }

    v23 = v17;
    v24 = *v1;
    v25 = *(v1 + 1);
    v76 = v1;
    aBlock = v24;
    LODWORD(v26) = v1[16];
    v78 = v25;
    LOBYTE(v79) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    MEMORY[0x274390240](&v83);
    v28 = v23;
    if (v83 == 1)
    {
      v29 = [v23 presentedViewController];
      if (!v29)
      {
        v70 = v23;
        if (qword_2806DE788 != -1)
        {
          swift_once();
        }

        v45 = sub_26F49DCA8();
        __swift_project_value_buffer(v45, qword_2806EA8A8);
        v46 = sub_26F49DC88();
        v47 = sub_26F49FDF8();
        v48 = os_log_type_enabled(v46, v47);
        v49 = v72;
        if (v48)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_26F39E000, v46, v47, "Creating new instance of system wide controller to present.", v50, 2u);
          MEMORY[0x274391F70](v50, -1, -1);
        }

        v51 = [objc_allocWithZone(MEMORY[0x277D73520]) initWithNibName:0 bundle:0];
        [v51 setModalPresentationStyle_];
        [v51 setConsentDisplayOnly_];
        sub_26F43D1A8(type metadata accessor for SystemWideConsentView, v13);
        v52 = v74;
        v53 = v75;
        (*(v75 + 104))(v9, *MEMORY[0x277CDF3C0], v74);
        v54 = sub_26F49DFC8();
        v55 = *(v53 + 8);
        v55(v9, v52);
        v55(v13, v52);
        if (v54)
        {
          v56 = 2;
        }

        else
        {
          v56 = 1;
        }

        [v51 setOverrideUserInterfaceStyle_];
        v57 = [v51 sheetPresentationController];
        if (v57)
        {
          v58 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_26F4A7E50;
          v60 = objc_opt_self();
          *(v59 + 32) = [v60 mediumDetent];
          *(v59 + 40) = [v60 largeDetent];
          sub_26F3B0C24(0, &qword_2806E09D0, 0x277D75A28);
          v61 = sub_26F49FAD8();

          [v58 setDetents_];
        }

        v62 = [v51 popoverPresentationController];
        if (v62)
        {
          v63 = v62;
          v64 = [v73 view];
          [v63 setSourceView_];
        }

        v65 = [v51 popoverPresentationController];

        v66 = v76;
        if (v65)
        {
          [v65 setSourceRect_];
        }

        sub_26F43EF1C(v66, v49, type metadata accessor for SystemWideConsentView);
        v67 = (*(v71 + 80) + 24) & ~*(v71 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = v51;
        sub_26F43EDDC(v49, v68 + v67, type metadata accessor for SystemWideConsentView);
        v81 = sub_26F43EF84;
        v82 = v68;
        aBlock = MEMORY[0x277D85DD0];
        v78 = 1107296256;
        v79 = sub_26F3B3308;
        v80 = &block_descriptor_32;
        v69 = _Block_copy(&aBlock);
        v42 = v51;

        [v42 setDismissCompletionHandler_];
        _Block_release(v69);
        v23 = v70;
        [v70 presentViewController:v42 animated:1 completion:0];

        goto LABEL_46;
      }

      v28 = v29;
    }

    v72 = v27;

    v30 = [v23 presentedViewController];
    if (v30)
    {
      v31 = v30;
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32)
      {
        v33 = v32;
        v70 = v31;
        sub_26F43D1A8(type metadata accessor for SystemWideConsentView, v13);
        v34 = *MEMORY[0x277CDF3C0];
        LODWORD(v71) = v26;
        v26 = v75;
        v35 = *(v75 + 104);
        v76 = v25;
        v36 = v74;
        v35(v9, v34, v74);
        v37 = sub_26F49DFC8();
        v38 = *(v26 + 8);
        v38(v9, v36);
        v39 = v36;
        v25 = v76;
        v38(v13, v39);
        LOBYTE(v26) = v71;
        if (v37)
        {
          v40 = 2;
        }

        else
        {
          v40 = 1;
        }

        [v33 setOverrideUserInterfaceStyle_];
      }
    }

    v41 = [v23 presentedViewController];
    if (v41)
    {
      v42 = v41;
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (!v43)
      {
LABEL_46:

        return;
      }

      v44 = v43;
      aBlock = v24;
      v78 = v25;
      LOBYTE(v79) = v26;
      MEMORY[0x274390240](&v83, v72);
      if ((v83 & 1) == 0 && [v44 consentDisplayOnly])
      {
        [v73 dismissViewControllerAnimated:1 completion:0];
        goto LABEL_46;
      }
    }

    return;
  }

LABEL_10:
  v22 = v76;
}

void sub_26F43CEE4(void *a1, uint64_t a2)
{
  if (qword_2806DE788 != -1)
  {
    swift_once();
  }

  v4 = sub_26F49DCA8();
  __swift_project_value_buffer(v4, qword_2806EA8A8);
  v5 = a1;
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = [v5 userConsentConfirmed];

    _os_log_impl(&dword_26F39E000, v6, v7, "System wide dismissed, consent: %{BOOL,public}d", v8, 8u);
    MEMORY[0x274391F70](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v9([v5 userConsentConfirmed]);
  }
}

uint64_t sub_26F43D028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F43ED2C(&qword_2806E09E0, type metadata accessor for SystemWideConsentView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F43D0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F43ED2C(&qword_2806E09E0, type metadata accessor for SystemWideConsentView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F43D150()
{
  sub_26F43ED2C(&qword_2806E09E0, type metadata accessor for SystemWideConsentView);
  sub_26F49EB98();
  __break(1u);
}

uint64_t sub_26F43D1A8@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26F49E678();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0910, &qword_26F4A85E8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v20 - v13);
  v15 = a1(0, v12);
  sub_26F3B8DD4(v2 + *(v15 + 28), v14, &qword_2806E0910, &qword_26F4A85E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_26F49DFD8();
    return (*(*(v16 - 8) + 32))(a2, v14, v16);
  }

  else
  {
    v18 = *v14;
    sub_26F49FDE8();
    v19 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

void sub_26F43D3B8(void *a1)
{
  v102 = type metadata accessor for SystemWideSheetView(0);
  v104 = *(v102 - 8);
  v2 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v105 = v3;
  v103 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F49DFD8();
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = *(v110 + 64);
  MEMORY[0x28223BE20](v4);
  v109 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = &v100 - v8;
  v9 = sub_26F49DAB8();
  v10 = *(v9 - 1);
  v106 = v9;
  v107 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v101 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v114 = &v100 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v113 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v100 - v20;
  v115 = type metadata accessor for VisualTranslationModel(0);
  v22 = *(v115 - 8);
  v23 = *(v22 + 64);
  *&v24 = MEMORY[0x28223BE20](v115).n128_u64[0];
  v112 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = [a1 view];
  if (!v27)
  {
    goto LABEL_49;
  }

  v28 = v27;
  sub_26F3B0C24(0, &qword_2806E09C8, 0x277D73520);
  v29 = [objc_opt_self() _viewControllerForFullScreenPresentationFromView_];
  if (!v29)
  {
LABEL_10:

    v34 = v26;
LABEL_11:
    v32 = v34;
    goto LABEL_14;
  }

  v30 = v29;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = v30;
  if ([v32 isKindOfClass_])
  {
    v33 = [v32 presentingViewController];

    v32 = v33;
    v34 = v26;
    if (v33)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  while (1)
  {
    v35 = [v32 presentedViewController];
    if (!v35)
    {
      break;
    }

    v36 = v35;
    if ([v35 isKindOfClass_])
    {

      break;
    }

    v37 = [v36 presentedViewController];

    v32 = v37;
    if (!v37)
    {
      goto LABEL_10;
    }
  }

  v34 = v26;
LABEL_14:
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08E8, &unk_26F4A84F0);
  MEMORY[0x274390240]();
  v39 = (v22 + 48);
  v40 = *(v22 + 48);
  v41 = v115;
  v42 = v40(v21, 1, v115);
  v43 = v114;
  if (v42 == 1)
  {
    sub_26F43ED74(v21);
LABEL_18:
    v47 = [v32 presentedViewController];
    if (v47)
    {
      v48 = v47;
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (v49)
      {
        v50 = v49;
        v106 = v48;
        v51 = v108;
        sub_26F43D1A8(type metadata accessor for SystemWideSheetView, v108);
        v52 = *MEMORY[0x277CDF3C0];
        v112 = v38;
        v54 = v110;
        v53 = v111;
        v55 = *(v110 + 104);
        v114 = v39;
        v56 = v109;
        v55(v109, v52, v111);
        v57 = sub_26F49DFC8();
        v107 = v40;
        v58 = v34;
        v59 = v57;
        v60 = *(v54 + 8);
        v60(v56, v53);
        v60(v51, v53);
        v38 = v112;
        v41 = v115;
        v61 = (v59 & 1) == 0;
        v34 = v58;
        v40 = v107;
        if (v61)
        {
          v62 = 1;
        }

        else
        {
          v62 = 2;
        }

        [v50 setOverrideUserInterfaceStyle_];
      }
    }

    v63 = v113;
    MEMORY[0x274390240](v38);
    if (v40(v63, 1, v41) == 1)
    {
      sub_26F43ED74(v63);
      v64 = [v32 presentedViewController];
      if (v64)
      {

        [v34 dismissViewControllerAnimated:1 completion:0];
      }
    }

    else
    {

      sub_26F43ED74(v63);
    }

    return;
  }

  v44 = v21;
  v45 = v112;
  sub_26F43EDDC(v44, v112, type metadata accessor for VisualTranslationModel);
  v46 = [v32 presentedViewController];
  if (v46)
  {

    sub_26F43EEBC(v45, type metadata accessor for VisualTranslationModel);
    goto LABEL_18;
  }

  v65 = v34;
  v66 = [objc_allocWithZone(MEMORY[0x277D73520]) initWithNibName:0 bundle:0];
  [v66 setModalPresentationStyle_];
  v67 = *(v45 + *(v41 + 28));
  Array<A>.sourceParagraph.getter(v67);
  v68 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v69 = sub_26F49F898();

  v70 = [v68 initWithString_];

  [v66 setText_];
  v71 = *(v67 + 16);
  if (v71)
  {
    v72 = type metadata accessor for TextModel();
    sub_26F3B8DD4(v67 + *(v72 + 28) + ((*(*(v72 - 8) + 80) + 32) & ~*(*(v72 - 8) + 80)), v43, &qword_2806DEFD8, &qword_26F4A3670);
    v73 = v106;
    v74 = 0;
    if ((*(v107 + 6))(v43, 1, v106) != 1)
    {
      v74 = sub_26F49D9F8();
      (*(v107 + 1))(v43, v73);
    }
  }

  else
  {
    v73 = v106;
    (*(v107 + 7))(v43, 1, 1, v106);
    v74 = 0;
  }

  [v66 setSourceLocale_];

  if (!v71)
  {
    v78 = 0;
    goto LABEL_38;
  }

  if (!*(v67 + 16))
  {
    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  v75 = type metadata accessor for TextModel();
  v76 = v107;
  v77 = v101;
  (*(v107 + 2))(v101, v67 + *(v75 + 36) + ((*(*(v75 - 8) + 80) + 32) & ~*(*(v75 - 8) + 80)), v73);
  v78 = sub_26F49D9F8();
  v76[1](v77, v73);
LABEL_38:
  [v66 setTargetLocale_];

  v79 = v108;
  sub_26F43D1A8(type metadata accessor for SystemWideSheetView, v108);
  v81 = v109;
  v80 = v110;
  v82 = v111;
  (*(v110 + 104))(v109, *MEMORY[0x277CDF3C0], v111);
  v83 = sub_26F49DFC8();
  v84 = *(v80 + 8);
  v84(v81, v82);
  v84(v79, v82);
  if (v83)
  {
    v85 = 2;
  }

  else
  {
    v85 = 1;
  }

  [v66 setOverrideUserInterfaceStyle_];
  v86 = [v66 sheetPresentationController];
  if (v86)
  {
    v87 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_26F4A7E50;
    v89 = objc_opt_self();
    *(v88 + 32) = [v89 mediumDetent];
    *(v88 + 40) = [v89 largeDetent];
    sub_26F3B0C24(0, &qword_2806E09D0, 0x277D75A28);
    v90 = sub_26F49FAD8();

    [v87 setDetents_];
  }

  v91 = [v66 popoverPresentationController];
  if (v91)
  {
    v92 = v91;
    v93 = [v65 view];
    [v92 setSourceView_];
  }

  v94 = [v66 popoverPresentationController];

  v95 = v116;
  if (v94)
  {
    [v94 setSourceRect_];
  }

  v96 = v103;
  sub_26F43EF1C(v95, v103, type metadata accessor for SystemWideSheetView);
  v97 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v98 = swift_allocObject();
  sub_26F43EDDC(v96, v98 + v97, type metadata accessor for SystemWideSheetView);
  aBlock[4] = sub_26F43EE44;
  aBlock[5] = v98;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3B3308;
  aBlock[3] = &block_descriptor_9;
  v99 = _Block_copy(aBlock);

  [v66 setDismissCompletionHandler_];
  _Block_release(v99);
  [v32 presentViewController:v66 animated:1 completion:0];

  sub_26F43EEBC(v112, type metadata accessor for VisualTranslationModel);
}

uint64_t sub_26F43E064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for VisualTranslationModel(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_26F3B8DD4(v8, v5, &qword_2806E0908, &qword_26F4AB220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E08E8, &unk_26F4A84F0);
  sub_26F49F458();
  sub_26F43ED74(v8);
  result = type metadata accessor for SystemWideSheetView(0);
  v11 = a1 + *(result + 24);
  if (*v11)
  {
    v12 = *(v11 + 8);
    return (*v11)();
  }

  return result;
}

uint64_t sub_26F43E1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F43ED2C(&qword_2806E09D8, type metadata accessor for SystemWideSheetView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26F43E248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F43ED2C(&qword_2806E09D8, type metadata accessor for SystemWideSheetView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26F43E2DC()
{
  sub_26F43ED2C(&qword_2806E09D8, type metadata accessor for SystemWideSheetView);
  sub_26F49EB98();
  __break(1u);
}

uint64_t sub_26F43E334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = type metadata accessor for SystemWideSheetView(0);
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3B8DD4(v5, v12, &qword_2806E08E8, &unk_26F4A84F0);
  v13 = (v5 + *(a2 + 20));
  v14 = (v5 + *(a2 + 24));
  v15 = *v14;
  v16 = v14[1];
  v17 = v9[9];
  v18 = &v12[v9[8]];
  v19 = *v13;
  v29 = v13[1];
  v30 = v19;
  *&v12[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0910, &qword_26F4A85E8);
  swift_storeEnumTagMultiPayload();
  v20 = &v12[v9[7]];
  v21 = v29;
  *v20 = v30;
  *(v20 + 1) = v21;
  *v18 = v15;
  v18[1] = v16;
  v22 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0918, &qword_26F4A85F0) + 36);
  sub_26F43EF1C(v12, v22, type metadata accessor for SystemWideSheetView);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0920, &qword_26F4A85F8) + 36)) = 0;
  sub_26F3ACF68(v15);
  sub_26F43EEBC(v12, type metadata accessor for SystemWideSheetView);
  v23 = sub_26F49F5A8();
  v25 = v24;
  v26 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0928, &qword_26F4A8600) + 36));
  *v26 = v23;
  v26[1] = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0930, &qword_26F4A8608);
  return (*(*(v27 - 8) + 16))(a3, a1, v27);
}

uint64_t sub_26F43E540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(v2 + 16);
  v7 = v2[7];
  v8 = v2[8];
  KeyPath = swift_getKeyPath();
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0938, &qword_26F4A8610) + 36);
  *(v10 + *(type metadata accessor for SystemWideConsentView(0) + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0910, &qword_26F4A85E8);
  swift_storeEnumTagMultiPayload();
  *v10 = v5;
  *(v10 + 8) = v4;
  *(v10 + 16) = v6;
  v11 = *(v2 + 3);
  *(v10 + 40) = *(v2 + 5);
  *(v10 + 24) = v11;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0940, &qword_26F4A8618) + 36)) = 0;

  sub_26F3ACF68(v7);
  v12 = sub_26F49F5A8();
  v14 = v13;
  v15 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0948, &qword_26F4A8620) + 36));
  *v15 = v12;
  v15[1] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0950, &qword_26F4A8628);
  v17 = *(*(v16 - 8) + 16);

  return v17(a2, a1, v16);
}

uint64_t sub_26F43E708(uint64_t a1)
{
  v2 = sub_26F49DFD8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_26F49E448();
}

void sub_26F43E818()
{
  sub_26F3E5B60(319, &qword_2806E0900, &qword_2806E0908, &qword_26F4AB220, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_26F3E5B60(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26F43E924();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F43E924()
{
  if (!qword_2806E0970)
  {
    sub_26F49DFD8();
    v0 = sub_26F49DFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2806E0970);
    }
  }
}

void sub_26F43E9A4()
{
  sub_26F43EA84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_26F3E5B60(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26F43E924();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F43EA84()
{
  if (!qword_2806DEDC0)
  {
    v0 = sub_26F49F488();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DEDC0);
    }
  }
}

unint64_t sub_26F43EAD4()
{
  result = qword_2806E0988;
  if (!qword_2806E0988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0918, &qword_26F4A85F0);
    sub_26F3B18CC(&qword_2806E0990, &qword_2806E0930, &qword_26F4A8608);
    sub_26F3B18CC(&qword_2806E0998, &qword_2806E0928, &qword_26F4A8600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0988);
  }

  return result;
}

unint64_t sub_26F43EBB8()
{
  result = qword_2806E09A0;
  if (!qword_2806E09A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0938, &qword_26F4A8610);
    sub_26F3B18CC(&qword_2806E09A8, &qword_2806E0950, &qword_26F4A8628);
    sub_26F3B18CC(&qword_2806E09B0, &qword_2806E0948, &qword_26F4A8620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E09A0);
  }

  return result;
}

uint64_t sub_26F43ED2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F43ED74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F43EDDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F43EE44()
{
  v1 = *(type metadata accessor for SystemWideSheetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F43E064(v2);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F43EEBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F43EF1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_26F43EF84()
{
  v1 = *(type metadata accessor for SystemWideConsentView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_26F43CEE4(v2, v3);
}

uint64_t TaskHint.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

unint64_t sub_26F43F0A8()
{
  result = qword_2806E09E8;
  if (!qword_2806E09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E09E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F43F25C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0xD000000000000017;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7075736E5564696CLL;
    if (a1 != 5)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7165527974706D65;
    v2 = 0x6E6F636E4964696CLL;
    v3 = 0x7365526F4E64696CLL;
    if (a1 != 3)
    {
      v3 = 0x6544746F4E64696CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x756C63784564696CLL;
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
}

uint64_t sub_26F43F3DC()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F43F25C(v1);
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F43F440()
{
  sub_26F43F25C(*v0);
  sub_26F49F9A8();
}

uint64_t sub_26F43F494()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F43F25C(v1);
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F43F4F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F43F6C4();
  *a2 = result;
  return result;
}

unint64_t sub_26F43F524@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26F43F25C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26F43F57C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_26F43F25C(*a1);
  v5 = v4;
  if (v3 == sub_26F43F25C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26F4A0458();
  }

  return v8 & 1;
}

unint64_t sub_26F43F608()
{
  result = qword_2806E09F0;
  if (!qword_2806E09F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E09F8, qword_26F4A88C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E09F0);
  }

  return result;
}

unint64_t sub_26F43F670()
{
  result = qword_2806E0A00;
  if (!qword_2806E0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0A00);
  }

  return result;
}

uint64_t sub_26F43F6C4()
{
  v0 = sub_26F4A02A8();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F43F710(uint64_t (*a1)(), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20);
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v61 - v6;
  v7 = type metadata accessor for Signpost();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v61 - v11;
  v72 = type metadata accessor for TextModel();
  v12 = *(v72 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v72);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (v16)
  {
    v64 = v8;
    v65 = v9;
    v66 = v5;
    v63 = a1;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26F403380(0, v16, 0);
    v17 = aBlock[0];
    v18 = (a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
    v19 = *(v12 + 72);
    v62 = v18;
    do
    {
      sub_26F44277C(v18, v15, type metadata accessor for TextModel);
      v20 = &v15[*(v72 + 24)];
      v21 = *v20;
      v22 = *(v20 + 1);

      sub_26F442914(v15, type metadata accessor for TextModel);
      aBlock[0] = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_26F403380((v23 > 1), v24 + 1, 1);
        v17 = aBlock[0];
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v18 += v19;
      --v16;
    }

    while (v16);
    a1 = v63;
    v26 = *&v62[*(v72 + 48)];
    goto LABEL_9;
  }

  v17 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    v64 = v8;
    v65 = v9;
    v66 = v5;
    v26 = 0;
LABEL_9:
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v27 = sub_26F49DCA8();
    __swift_project_value_buffer(v27, qword_280F67E98);
    v28 = sub_26F49DC88();
    v29 = sub_26F49FDC8();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v64;
    v72 = v26;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v73 = v26;
      aBlock[0] = v33;
      *v32 = 136446210;
      type metadata accessor for _LTTextLanguageDetectorStrategy(0);
      v34 = sub_26F49F938();
      v36 = sub_26F3B38D0(v34, v35, aBlock);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_26F39E000, v28, v29, "Text LID request strategy: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x274391F70](v33, -1, -1);
      MEMORY[0x274391F70](v32, -1, -1);
    }

    v37 = v71;
    sub_26F43762C(0, 0, v71);
    v62 = objc_opt_self();
    v61 = sub_26F49FAD8();
    v63 = type metadata accessor for Signpost;
    v38 = v37;
    v39 = v67;
    sub_26F44277C(v38, v67, type metadata accessor for Signpost);
    v41 = v68;
    v40 = v69;
    v42 = v70;
    (*(v69 + 16))(v68, a1, v70);
    v43 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v44 = (v65 + *(v40 + 80) + v43) & ~*(v40 + 80);
    v45 = (v66 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_26F442B98(v39, v46 + v43, type metadata accessor for Signpost);
    (*(v40 + 32))(v46 + v44, v41, v42);
    *(v46 + v45) = v17;
    v47 = v72;
    *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v72;
    aBlock[4] = sub_26F4427E4;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26F44057C;
    aBlock[3] = &block_descriptor_10;
    v48 = _Block_copy(aBlock);

    v49 = v61;
    [v62 languagesForText:v61 usingModel:1 strategy:v47 useDedicatedTextMachPort:1 completion:v48];
    _Block_release(v48);

    return sub_26F442914(v71, v63);
  }

  if (qword_280F66AD0 != -1)
  {
    swift_once();
  }

  v51 = sub_26F49DCA8();
  __swift_project_value_buffer(v51, qword_280F67E98);
  v52 = sub_26F49DC88();
  v53 = sub_26F49FDD8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    sub_26F442974();
    v56 = swift_allocError();
    *v57 = 0;
    v58 = sub_26F49D7E8();

    *(v54 + 4) = v58;
    *v55 = v58;
    _os_log_impl(&dword_26F39E000, v52, v53, "Failed to do LID since text is empty: %@", v54, 0xCu);
    sub_26F3B6B4C(v55, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v55, -1, -1);
    MEMORY[0x274391F70](v54, -1, -1);
  }

  sub_26F442974();
  v59 = swift_allocError();
  *v60 = 0;
  aBlock[0] = v59;
  return sub_26F49FB78();
}

uint64_t sub_26F43FE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_26F49DAB8();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  if (a1)
  {
    v71 = a1;
    v21 = [v71 dominantLocale];
    if (v21)
    {
      v68 = a5;
      v22 = v21;
      sub_26F49DA18();

      if (qword_280F66AD0 != -1)
      {
        swift_once();
      }

      v23 = sub_26F49DCA8();
      __swift_project_value_buffer(v23, qword_280F67E98);
      v69 = v11[2];
      v70 = v11 + 2;
      v69(v17, v20, v10);

      v24 = sub_26F49DC88();
      v25 = sub_26F49FDC8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v66 = a3;
        v27 = v26;
        v65 = swift_slowAlloc();
        v73 = v65;
        *v27 = 134349827;
        *(v27 + 4) = *(a4 + 16);

        *(v27 + 12) = 2082;
        v64 = v25;
        v28 = sub_26F49D988();
        v67 = a2;
        v30 = v29;
        v62 = a4;
        v63 = v24;
        v31 = v11[1];
        v31(v17, v10);
        v32 = sub_26F3B38D0(v28, v30, &v73);

        *(v27 + 14) = v32;
        *(v27 + 22) = 2082;
        v72 = v68;
        type metadata accessor for _LTTextLanguageDetectorStrategy(0);
        v33 = sub_26F49F938();
        v35 = sub_26F3B38D0(v33, v34, &v73);

        *(v27 + 24) = v35;
        *(v27 + 32) = 2085;
        v36 = MEMORY[0x274390900](v62, MEMORY[0x277D837D0]);
        v38 = sub_26F3B38D0(v36, v37, &v73);

        *(v27 + 34) = v38;
        v39 = v63;
        _os_log_impl(&dword_26F39E000, v63, v64, "Successfully identified text of length %{public}ld as %{public}s using strategy: %{public}s; text: %{sensitive}s", v27, 0x2Au);
        v40 = v65;
        swift_arrayDestroy();
        MEMORY[0x274391F70](v40, -1, -1);
        MEMORY[0x274391F70](v27, -1, -1);
      }

      else
      {

        v31 = v11[1];
        v31(v17, v10);
      }

      v69(v14, v20, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20);
      sub_26F49FB88();

      v31(v20, v10);
    }

    else
    {
      if (qword_280F66AD0 != -1)
      {
        swift_once();
      }

      v51 = sub_26F49DCA8();
      __swift_project_value_buffer(v51, qword_280F67E98);
      v52 = sub_26F49DC88();
      v53 = sub_26F49FDD8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        sub_26F442974();
        v56 = swift_allocError();
        *v57 = 2;
        v58 = sub_26F49D7E8();

        *(v54 + 4) = v58;
        *v55 = v58;
        _os_log_impl(&dword_26F39E000, v52, v53, "Failed to get dominant result for text LID: %@", v54, 0xCu);
        sub_26F3B6B4C(v55, &qword_2806DF258, &qword_26F4A6220);
        MEMORY[0x274391F70](v55, -1, -1);
        MEMORY[0x274391F70](v54, -1, -1);
      }

      sub_26F442974();
      v59 = swift_allocError();
      *v60 = 2;
      v73 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20);
      sub_26F49FB78();
    }
  }

  else
  {
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v41 = sub_26F49DCA8();
    __swift_project_value_buffer(v41, qword_280F67E98);
    v42 = sub_26F49DC88();
    v43 = sub_26F49FDD8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      sub_26F442974();
      v46 = swift_allocError();
      *v47 = 3;
      v48 = sub_26F49D7E8();

      *(v44 + 4) = v48;
      *v45 = v48;
      _os_log_impl(&dword_26F39E000, v42, v43, "Faield to get result for text LID: %@", v44, 0xCu);
      sub_26F3B6B4C(v45, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v45, -1, -1);
      MEMORY[0x274391F70](v44, -1, -1);
    }

    sub_26F442974();
    v49 = swift_allocError();
    *v50 = 3;
    v73 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20);
    sub_26F49FB78();
  }

  return sub_26F437AD0();
}

void sub_26F44057C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t static TextIdentificationService.identify(_:grouped:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A08, &unk_26F4A89F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  v10[16] = a2;
  v11 = a1;
  type metadata accessor for TextModel();
  (*(v5 + 104))(v8, *MEMORY[0x277D85778], v4);
  return sub_26F49FC78();
}

uint64_t sub_26F44070C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = sub_26F49FC08();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  (*(v7 + 32))(v17 + v16, v10, v6);

  sub_26F40570C(0, 0, v14, &unk_26F4A8A48, v17);
}

uint64_t sub_26F440924(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 168) = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A20, &qword_26F4A8A50);
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  v10 = type metadata accessor for TextModel();
  *(v6 + 56) = v10;
  v11 = *(v10 - 8);
  *(v6 + 64) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v13 = sub_26F49DAB8();
  *(v6 + 104) = v13;
  v14 = *(v13 - 8);
  *(v6 + 112) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F440ADC, 0, 0);
}

uint64_t sub_26F440ADC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 168);
  v3 = swift_task_alloc();
  v4 = v3;
  *(v0 + 136) = v3;
  *(v3 + 16) = v1;
  if (v2 == 1)
  {
    v5 = *(MEMORY[0x277D85A40] + 4);
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = sub_26F440C90;
    v7 = *(v0 + 128);
    v8 = *(v0 + 104);

    return MEMORY[0x2822008A0](v7, 0, 0, 0x796669746E656469, 0xEC000000293A5F28, sub_26F442B90, v4, v8);
  }

  else
  {
    *(v3 + 24) = *(v0 + 24);
    v9 = *(MEMORY[0x277D858E8] + 4);
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_26F441530;

    return MEMORY[0x282200600]();
  }
}

uint64_t sub_26F440C90()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_26F4411C8;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_26F440DAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26F440DAC()
{
  v52 = v0;
  if (qword_280F66AD0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[2];
  v6 = sub_26F49DCA8();
  __swift_project_value_buffer(v6, qword_280F67E98);
  v7 = *(v4 + 16);
  v7(v1, v2, v3);

  v8 = sub_26F49DC88();
  v9 = sub_26F49FDC8();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[13];
  v14 = v0[2];
  v47 = v7;
  if (v10)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v51 = v16;
    *v15 = 134218242;
    *(v15 + 4) = *(v14 + 16);

    *(v15 + 12) = 2082;
    v17 = sub_26F49D988();
    v19 = v18;
    v42 = *(v12 + 8);
    v42(v11, v13);
    v20 = sub_26F3B38D0(v17, v19, &v51);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_26F39E000, v8, v9, "Successfully identified %ld text models as: %{public}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x274391F70](v16, -1, -1);
    MEMORY[0x274391F70](v15, -1, -1);
  }

  else
  {

    v42 = *(v12 + 8);
    v42(v11, v13);
  }

  v21 = v0[2];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[8];
    v46 = v0[7];
    v24 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v45 = (v0[14] + 56);
    v43 = *(v23 + 72);
    v44 = (v0[5] + 8);
    do
    {
      v25 = v0[16];
      v27 = v0[12];
      v26 = v0[13];
      v28 = v0[10];
      v29 = v0[11];
      v50 = v0[4];
      v48 = v0[6];
      v49 = v0[3];
      sub_26F44277C(v24, v27, type metadata accessor for TextModel);
      sub_26F44277C(v27, v29, type metadata accessor for TextModel);
      v30 = *(v46 + 28);
      sub_26F3B6B4C(v29 + v30, &qword_2806DEFD8, &qword_26F4A3670);
      v47(v29 + v30, v25, v26);
      (*v45)(v29 + v30, 0, 1, v26);
      sub_26F44277C(v29, v28, type metadata accessor for TextModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
      sub_26F49FC38();
      (*v44)(v48, v50);
      sub_26F442914(v27, type metadata accessor for TextModel);
      sub_26F442914(v29, type metadata accessor for TextModel);
      v24 += v43;
      --v22;
    }

    while (v22);
  }

  v31 = v0[14] + 8;
  v42(v0[16], v0[13]);
  v33 = v0[15];
  v32 = v0[16];
  v35 = v0[11];
  v34 = v0[12];
  v37 = v0[9];
  v36 = v0[10];
  v38 = v0[6];
  v39 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC48();

  v40 = v0[1];

  return v40();
}

uint64_t sub_26F4411C8()
{
  v1 = *(v0 + 136);

  if (qword_280F66AD0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v3 = *(v0 + 16);
  v4 = sub_26F49DCA8();
  __swift_project_value_buffer(v4, qword_280F67E98);

  v5 = v2;
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDD8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134218242;
    *(v10 + 4) = *(v9 + 16);

    *(v10 + 12) = 2112;
    v12 = sub_26F49D7E8();
    *(v10 + 14) = v12;
    *v11 = v12;
    _os_log_impl(&dword_26F39E000, v6, v7, "Failed to identify text in %ld models: %@", v10, 0x16u);
    sub_26F3B6B4C(v11, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v11, -1, -1);
    MEMORY[0x274391F70](v10, -1, -1);
  }

  else
  {
    v13 = *(v0 + 16);
  }

  v14 = *(v0 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v0 + 64);
    v37 = *(v0 + 56);
    v38 = *(v0 + 152);
    v17 = v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v35 = (*(v0 + 40) + 8);
    v36 = *(v16 + 72);
    do
    {
      v18 = *(v0 + 152);
      v20 = *(v0 + 80);
      v19 = *(v0 + 88);
      v21 = *(v0 + 72);
      v41 = *(v0 + 32);
      v39 = *(v0 + 48);
      v40 = *(v0 + 24);
      sub_26F44277C(v17, v21, type metadata accessor for TextModel);
      sub_26F44277C(v21, v19, type metadata accessor for TextModel);
      v22 = *(v37 + 44);
      v23 = *(v19 + v22);
      v24 = v18;

      *(v19 + v22) = v38;
      sub_26F44277C(v19, v20, type metadata accessor for TextModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
      sub_26F49FC38();
      (*v35)(v39, v41);
      sub_26F442914(v21, type metadata accessor for TextModel);
      sub_26F442914(v19, type metadata accessor for TextModel);
      v17 += v36;
      --v15;
    }

    while (v15);
  }

  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v28 = *(v0 + 88);
  v27 = *(v0 + 96);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 48);
  v32 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC48();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_26F441530()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26F441648, 0, 0);
}

uint64_t sub_26F441648()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];
  v8 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC48();

  v9 = v0[1];

  return v9();
}

uint64_t sub_26F44171C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = *(type metadata accessor for TextModel() - 8);
  v4[18] = v8;
  v4[19] = *(v8 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4418A4, 0, 0);
}

uint64_t sub_26F4418A4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v37 = **(v0 + 72);
    v38 = *(v0 + 104);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v35 = *(v3 + 72);
    v36 = v4;
    v34 = v4 + *(v0 + 152);
    v33 = *(v0 + 112) + 7;
    do
    {
      v43 = v2;
      v9 = *(v0 + 160);
      v10 = *(v0 + 168);
      v11 = *(v0 + 136);
      v39 = v11;
      v41 = *(v0 + 128);
      v12 = *(v0 + 120);
      v13 = *(v0 + 88);
      v14 = *(v0 + 96);
      v40 = *(v0 + 80);
      v42 = v5;
      sub_26F44277C(v5, v10, type metadata accessor for TextModel);
      v15 = sub_26F49FC08();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v11, 1, 1, v15);
      sub_26F44277C(v10, v9, type metadata accessor for TextModel);
      (*(v38 + 16))(v12, v13, v14);
      v17 = (v34 + *(v38 + 80)) & ~*(v38 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      v19 = (v18 + 16);
      *(v18 + 24) = 0;
      sub_26F442B98(v9, v18 + v36, type metadata accessor for TextModel);
      (*(v38 + 32))(v18 + v17, v12, v14);
      *(v18 + ((v33 + v17) & 0xFFFFFFFFFFFFFFF8)) = v40;
      sub_26F40E5D4(v39, v41);
      LODWORD(v13) = (*(v16 + 48))(v41, 1, v15);

      v20 = *(v0 + 128);
      if (v13 == 1)
      {
        sub_26F3B6B4C(*(v0 + 128), &unk_2806E0710, &qword_26F4A60A0);
        if (*v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_26F49FBF8();
        (*(v16 + 8))(v20, v15);
        if (*v19)
        {
LABEL_9:
          v23 = *(v18 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v21 = sub_26F49FB68();
          v22 = v24;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v21 = 0;
      v22 = 0;
LABEL_10:
      v25 = swift_allocObject();
      *(v25 + 16) = &unk_26F4A8A78;
      *(v25 + 24) = v18;

      if (v22 | v21)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v22;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 168);
      v8 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v37;
      swift_task_create();

      sub_26F3B6B4C(v8, &unk_2806E0710, &qword_26F4A60A0);
      sub_26F442914(v7, type metadata accessor for TextModel);
      v5 = v42 + v35;
      v2 = v43 - 1;
    }

    while (v43 != 1);
  }

  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v29 = *(v0 + 128);
  v28 = *(v0 + 136);
  v30 = *(v0 + 120);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_26F441CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A20, &qword_26F4A8A50);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for TextModel();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v13 = sub_26F49DAB8();
  v6[12] = v13;
  v14 = *(v13 - 8);
  v6[13] = v14;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F441E80, 0, 0);
}

uint64_t sub_26F441E80()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0118, &qword_26F4ABEF0);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *(v0 + 160) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 128) = v6;
  *(v6 + 16) = xmmword_26F4A3150;
  sub_26F44277C(v2, v6 + v5, type metadata accessor for TextModel);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_26F441FE8;
  v10 = *(v0 + 120);
  v11 = *(v0 + 96);

  return MEMORY[0x2822008A0](v10, 0, 0, 0x796669746E656469, 0xEC000000293A5F28, sub_26F442E4C, v7, v11);
}

uint64_t sub_26F441FE8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(v2 + 152) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {

    v6 = sub_26F4424AC;
  }

  else
  {
    v7 = *(v2 + 128);
    v8 = *(v2 + 64);
    v9 = (*(v2 + 160) + 32) & ~*(v2 + 160);
    swift_setDeallocating();
    v10 = *(v7 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v6 = sub_26F442164;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F442164()
{
  v38 = v0;
  if (qword_280F66AD0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = sub_26F49DCA8();
  __swift_project_value_buffer(v5, qword_280F67E98);
  v36 = *(v4 + 16);
  v36(v1, v2, v3);
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDC8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136446210;
    v14 = sub_26F49D988();
    v16 = v15;
    v35 = *(v10 + 8);
    v35(v9, v11);
    v17 = sub_26F3B38D0(v14, v16, &v37);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_26F39E000, v6, v7, "Successfully identified text as: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x274391F70](v13, -1, -1);
    MEMORY[0x274391F70](v12, -1, -1);
  }

  else
  {

    v35 = *(v10 + 8);
    v35(v9, v11);
  }

  v18 = v0[15];
  v20 = v0[12];
  v19 = v0[13];
  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[7];
  v24 = v0[8];
  v25 = v0[6];
  v33 = v0[3];
  v34 = v0[5];
  sub_26F44277C(v0[2], v21, type metadata accessor for TextModel);
  v26 = *(v24 + 28);
  sub_26F3B6B4C(v21 + v26, &qword_2806DEFD8, &qword_26F4A3670);
  v36(v21 + v26, v18, v20);
  (*(v19 + 56))(v21 + v26, 0, 1, v20);
  sub_26F44277C(v21, v22, type metadata accessor for TextModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC38();
  (*(v25 + 8))(v23, v34);
  v27 = v0[11];
  v28 = v0[14];
  v29 = v0[10];
  v30 = v0[7];
  v35(v0[15], v0[12]);
  sub_26F442914(v27, type metadata accessor for TextModel);

  v31 = v0[1];

  return v31();
}

uint64_t sub_26F4424AC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = (*(v0 + 160) + 32) & ~*(v0 + 160);
  swift_setDeallocating();
  v4 = *(v1 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_280F66AD0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 152);
  v6 = *(v0 + 32);
  v7 = sub_26F49DCA8();
  __swift_project_value_buffer(v7, qword_280F67E98);

  v8 = v5;
  v9 = sub_26F49DC88();
  v10 = sub_26F49FDD8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 152);
    v12 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 134349314;
    *(v13 + 4) = *(v12 + 16);

    *(v13 + 12) = 2112;
    v15 = sub_26F49D7E8();
    *(v13 + 14) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26F39E000, v9, v10, "Failed to identify language of %{public}ld models: %@", v13, 0x16u);
    sub_26F3B6B4C(v14, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v14, -1, -1);
    MEMORY[0x274391F70](v13, -1, -1);
  }

  else
  {
    v16 = *(v0 + 32);
  }

  v17 = *(v0 + 152);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 56);
  v21 = *(v0 + 64);
  v22 = *(v0 + 48);
  v23 = *(v0 + 24);
  sub_26F44277C(*(v0 + 16), v19, type metadata accessor for TextModel);
  v24 = *(v21 + 44);

  *(v19 + v24) = v17;
  sub_26F44277C(v19, v18, type metadata accessor for TextModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  sub_26F49FC38();
  v26 = *(v0 + 112);
  v25 = *(v0 + 120);
  v28 = *(v0 + 80);
  v27 = *(v0 + 88);
  (*(v22 + 8))(*(v0 + 56), *(v0 + 40));
  sub_26F442914(v27, type metadata accessor for TextModel);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_26F44277C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F4427E4(void *a1)
{
  v3 = *(type metadata accessor for Signpost() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A10, &unk_26F4A8A20) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F43FE6C(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F442914(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26F442974()
{
  result = qword_280F663D0;
  if (!qword_280F663D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F663D0);
  }

  return result;
}

uint64_t sub_26F4429C8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26F3CEEAC;

  return sub_26F440924(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_26F442ADC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26F3CF3AC;

  return sub_26F44171C(a1, a2, v7, v6);
}

uint64_t sub_26F442B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F442C00(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TextModel() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26F3CF3AC;

  return sub_26F441CE0(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_26F442D94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F3CEEAC;

  return sub_26F496FDC(a1, v5);
}

uint64_t sub_26F442E50(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for TextModel();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_26F403444(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_26F403444(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_26F446958(v10, v12 + v19 + v16 * v14);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

void *sub_26F442FE4(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_26F4A00A8();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = MEMORY[0x274390F80](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_26F4A01D8();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          sub_26F4A0208();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          sub_26F4A0218();
          v3 = &v22;
          sub_26F4A01E8();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

uint64_t sub_26F4431A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 4 * v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_26F403424(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_26F403424((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 4 * v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t Array<A>.sourceParagraph.getter(uint64_t a1)
{
  v2 = type metadata accessor for TextModel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v21 = v5;
    v22 = MEMORY[0x277D84F90];
    sub_26F403380(0, v8, 0);
    v10 = v21;
    v9 = v22;
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_26F446844(v11, v7);
      v13 = &v7[*(v10 + 24)];
      v15 = *v13;
      v14 = *(v13 + 1);

      sub_26F4468A8(v7);
      v22 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_26F403380((v16 > 1), v17 + 1, 1);
        v10 = v21;
        v9 = v22;
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A28, &qword_26F4A8A88);
  sub_26F3B18CC(&qword_2806E0A30, &qword_2806E0A28, &qword_26F4A8A88);
  v19 = sub_26F49F848();

  return v19;
}

uint64_t type metadata accessor for TextModel()
{
  result = qword_280F66C00;
  if (!qword_280F66C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Array<A>.sourceLocale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = type metadata accessor for TextModel();
    v5 = a1 + *(v4 + 28) + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));

    return sub_26F3E718C(v5, a2);
  }

  else
  {
    v7 = sub_26F49DAB8();
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t Array<A>.targetLocale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = type metadata accessor for TextModel();
    v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
    v6 = a1 + *(v4 + 36);
    v7 = sub_26F49DAB8();
    v14 = *(v7 - 8);
    (*(v14 + 16))(a2, v6 + v5, v7);
    v8 = *(v14 + 56);
    v9 = a2;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v12 = sub_26F49DAB8();
    v8 = *(*(v12 - 8) + 56);
    v11 = v12;
    v9 = a2;
    v10 = 1;
  }

  return v8(v9, v10, 1, v11);
}

uint64_t TextModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TextModel.sourceString.getter()
{
  v1 = (v0 + *(type metadata accessor for TextModel() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextModel.sourceString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextModel() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextModel.sourceLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextModel() + 28);

  return sub_26F3E718C(v3, a1);
}

uint64_t TextModel.sourceLocale.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TextModel() + 28);

  return sub_26F3D27D4(a1, v3);
}

uint64_t TextModel.targetString.getter()
{
  v1 = (v0 + *(type metadata accessor for TextModel() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextModel.targetString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextModel() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextModel.targetLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TextModel() + 36);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TextModel.targetLocale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextModel() + 36);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TextModel.confidence.setter(double a1)
{
  result = type metadata accessor for TextModel();
  *(v1 + *(result + 40)) = a1;
  return result;
}

void *TextModel.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextModel() + 44));
  v2 = v1;
  return v1;
}

void TextModel.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextModel() + 44);

  *(v1 + v3) = a1;
}

uint64_t sub_26F443CF8()
{
  *v0;
  *v0;
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F443E18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F447520();
  *a2 = result;
  return result;
}

void sub_26F443E48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x6F4C746567726174;
  v6 = 0xEC000000656C6163;
  if (v2 != 5)
  {
    v5 = 0x6E656469666E6F63;
    v6 = 0xEA00000000006563;
  }

  v7 = 0x6F4C656372756F73;
  v8 = 0xEC000000656C6163;
  if (v2 != 3)
  {
    v7 = 0x7453746567726174;
    v8 = 0xEC000000676E6972;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7865646E69;
  if (v2 != 1)
  {
    v10 = 0x7453656372756F73;
    v9 = 0xEC000000676E6972;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_26F443F30()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6F4C746567726174;
  if (v1 != 5)
  {
    v3 = 0x6E656469666E6F63;
  }

  v4 = 0x6F4C656372756F73;
  if (v1 != 3)
  {
    v4 = 0x7453746567726174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7865646E69;
  if (v1 != 1)
  {
    v5 = 0x7453656372756F73;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26F444014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F447520();
  *a1 = result;
  return result;
}

uint64_t sub_26F444048(uint64_t a1)
{
  v2 = sub_26F446904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F444084(uint64_t a1)
{
  v2 = sub_26F446904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextModel.init(id:index:sourceString:sourceLocale:targetLocale:useWeightedIdentification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v24 = a7 & 1;
  v11 = type metadata accessor for TextModel();
  v12 = v11[7];
  v13 = sub_26F49DAB8();
  v14 = *(v13 - 8);
  (*(v14 + 56))(a8 + v12, 1, 1, v13);
  v15 = (a8 + v11[8]);
  v16 = v11[11];
  v17 = v11[12];
  v18 = sub_26F49D968();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  *(a8 + v11[5]) = a2;
  v19 = (a8 + v11[6]);
  *v19 = a3;
  v19[1] = a4;
  sub_26F3D27D4(a5, a8 + v12);
  *v15 = 0;
  v15[1] = 0;
  result = (*(v14 + 32))(a8 + v11[9], a6, v13);
  *(a8 + v11[10]) = 0;
  *(a8 + v16) = 0;
  *(a8 + v17) = v24;
  return result;
}

BOOL TextModel.isTranslatable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for TextModel();
  if (*(v0 + v5[11]))
  {
    return 0;
  }

  v7 = (v0 + v5[6]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v9 & 0xFFFFFFFFFFFFLL;
  if (!((v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v10))
  {
    return 0;
  }

  sub_26F3E718C(v0 + v5[7], v4);
  v12 = sub_26F49DAB8();
  v13 = (*(*(v12 - 8) + 48))(v4, 1, v12) != 1;
  sub_26F3EDA38(v4);
  return v13;
}

uint64_t TextModel.isTranslated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for TextModel();
  if (*(v0 + v5[11]))
  {
    return 0;
  }

  v7 = (v0 + v5[6]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v9 & 0xFFFFFFFFFFFFLL;
  if (!((v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v10))
  {
    return 0;
  }

  v12 = v5;
  sub_26F3E718C(v0 + v5[7], v4);
  v13 = sub_26F49DAB8();
  v14 = (*(*(v13 - 8) + 48))(v4, 1, v13);
  sub_26F3EDA38(v4);
  if (v14 == 1)
  {
    return 0;
  }

  v15 = (v0 + v12[8]);
  v16 = v15[1];
  if (!v16)
  {
    return 0;
  }

  v17 = *v15 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v17)
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TextModel.hash(into:)()
{
  sub_26F49D968();
  sub_26F44756C(&qword_280F663A8, MEMORY[0x277CC95F0]);

  return sub_26F49F828();
}

BOOL static TextModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_26F49D938() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TextModel();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_26F444588(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TextModel();
  sub_26F3E718C(v2 + v8[7], v7);
  v9 = sub_26F49DAB8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_26F3EDA38(v7);
    return 0;
  }

  sub_26F49D988();
  (*(v10 + 8))(v7, v9);
  sub_26F4A0578();
  sub_26F49F9A8();

  v12 = v2 + v8[9];
  sub_26F49D988();
  sub_26F49F9A8();

  v13 = v2 + v8[6];
  v15 = *v13;
  v14 = *(v13 + 8);
  if (a1)
  {
    sub_26F4475B4(*v13, *(v13 + 8));
    if (!v16)
    {
      sub_26F4A0548();
      return sub_26F4A0558();
    }
  }

  else
  {
    v17 = *(v13 + 8);
  }

  sub_26F4A0548();
  sub_26F49F9A8();

  return sub_26F4A0558();
}

uint64_t sub_26F444794()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_26F4A0178();

  v19 = 0x646F6D2074786554;
  v20 = 0xEF203A6469206C65;
  sub_26F49D968();
  sub_26F44756C(&qword_2806DEE50, MEMORY[0x277CC95F0]);
  v6 = sub_26F4A0428();
  MEMORY[0x2743907E0](v6);

  MEMORY[0x2743907E0](0x203A7865646E6920, 0xE800000000000000);
  v7 = type metadata accessor for TextModel();
  v18[1] = *(v0 + v7[5]);
  v8 = sub_26F4A0428();
  MEMORY[0x2743907E0](v8);

  MEMORY[0x2743907E0](0x3A656372756F7320, 0xE900000000000020);
  sub_26F3E718C(v0 + v7[7], v5);
  v9 = sub_26F49DAB8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_26F3EDA38(v5);
    v11 = 0xE300000000000000;
    v12 = 6369134;
  }

  else
  {
    v13 = sub_26F49D988();
    v11 = v14;
    (*(v10 + 8))(v5, v9);
    v12 = v13;
  }

  MEMORY[0x2743907E0](v12, v11);

  MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
  v15 = v1 + v7[9];
  v16 = sub_26F49D988();
  MEMORY[0x2743907E0](v16);

  return v19;
}

uint64_t TextModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A38, &qword_26F4A8A90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F446904();
  sub_26F4A0598();
  v30 = 0;
  sub_26F49D968();
  sub_26F44756C(&qword_2806DEE68, MEMORY[0x277CC95F0]);
  sub_26F4A03F8();
  if (!v2)
  {
    v11 = type metadata accessor for TextModel();
    v12 = *(v3 + v11[5]);
    v29 = 1;
    sub_26F4A03D8();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v28 = 2;
    sub_26F4A0398();
    v16 = v11[7];
    v27 = 3;
    sub_26F49DAB8();
    sub_26F44756C(&qword_2806E0A48, MEMORY[0x277CC9788]);
    sub_26F4A0388();
    v17 = (v3 + v11[8]);
    v18 = *v17;
    v19 = v17[1];
    v26 = 4;
    sub_26F4A0378();
    v20 = v11[9];
    v25 = 5;
    sub_26F4A03F8();
    v21 = *(v3 + v11[10]);
    v24 = 6;
    sub_26F4A03B8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TextModel.hashValue.getter()
{
  sub_26F4A0528();
  sub_26F49D968();
  sub_26F44756C(&qword_280F663A8, MEMORY[0x277CC95F0]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t TextModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - v9;
  v11 = sub_26F49D968();
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A50, &qword_26F4A8A98);
  v15 = *(v14 - 8);
  v52 = v14;
  v53 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = type metadata accessor for TextModel();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 + 28);
  v55 = v4;
  v26 = *(v4 + 56);
  v60 = v25;
  v58 = v3;
  v26(&v23[v25], 1, 1, v3, v21);
  *&v23[*(v19 + 44)] = 0;
  v56 = v19;
  v27 = v23;
  *&v23[*(v19 + 48)] = 0;
  v28 = a1[3];
  v29 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_26F446904();
  v54 = v18;
  v30 = v57;
  sub_26F4A0588();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_0(v59);
    sub_26F3EDA38(&v23[v60]);
  }

  else
  {
    v31 = v10;
    v67 = 0;
    sub_26F44756C(&qword_2806DEE78, MEMORY[0x277CC95F0]);
    v33 = v51;
    v32 = v52;
    sub_26F4A0348();
    (*(v50 + 32))(v27, v33, v11);
    v66 = 1;
    v34 = sub_26F4A0328();
    v35 = v58;
    v36 = v56;
    *(v27 + v56[5]) = v34;
    v65 = 2;
    v37 = sub_26F4A02F8();
    v38 = (v27 + v36[6]);
    *v38 = v37;
    v38[1] = v39;
    v64 = 3;
    sub_26F44756C(&qword_2806E0A58, MEMORY[0x277CC9788]);
    sub_26F4A02E8();
    sub_26F3D27D4(v31, v27 + v60);
    v63 = 4;
    v40 = sub_26F4A02D8();
    v41 = (v27 + v56[8]);
    *v41 = v40;
    v41[1] = v42;
    v62 = 5;
    v43 = v49;
    sub_26F4A0348();
    v44 = v56;
    (*(v55 + 32))(v27 + v56[9], v43, v35);
    v61 = 6;
    sub_26F4A0318();
    v46 = v45;
    (*(v53 + 8))(v54, v32);
    *(v27 + v44[10]) = v46;
    sub_26F446844(v27, v48);
    __swift_destroy_boxed_opaque_existential_0(v59);
    return sub_26F4468A8(v27);
  }
}

uint64_t sub_26F4454A8()
{
  sub_26F4A0528();
  sub_26F49D968();
  sub_26F44756C(&qword_280F663A8, MEMORY[0x277CC95F0]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t sub_26F445530()
{
  sub_26F49D968();
  sub_26F44756C(&qword_280F663A8, MEMORY[0x277CC95F0]);

  return sub_26F49F828();
}

uint64_t sub_26F4455B4()
{
  sub_26F4A0528();
  sub_26F49D968();
  sub_26F44756C(&qword_280F663A8, MEMORY[0x277CC95F0]);
  sub_26F49F828();
  return sub_26F4A0568();
}

uint64_t Array<A>.targetParagraph.getter(uint64_t a1)
{
  v2 = type metadata accessor for TextModel();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = &v7[*(v4 + 32)];
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v12 = MEMORY[0x277D84F90];
    do
    {
      sub_26F446844(v10, v7);
      v15 = *v9;
      v14 = *(v9 + 1);

      sub_26F4468A8(v7);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_26F4463D8(0, *(v12 + 2) + 1, 1, v12);
        }

        v17 = *(v12 + 2);
        v16 = *(v12 + 3);
        if (v17 >= v16 >> 1)
        {
          v12 = sub_26F4463D8((v16 > 1), v17 + 1, 1, v12);
        }

        *(v12 + 2) = v17 + 1;
        v13 = &v12[16 * v17];
        *(v13 + 4) = v15;
        *(v13 + 5) = v14;
      }

      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v20[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A28, &qword_26F4A8A88);
  sub_26F3B18CC(&qword_2806E0A30, &qword_2806E0A28, &qword_26F4A8A88);
  v18 = sub_26F49F848();

  return v18;
}

uint64_t sub_26F445924(uint64_t a1)
{
  v2 = type metadata accessor for TextModel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v20 = MEMORY[0x277D84F90];
    sub_26F403444(0, v7, 0);
    v8 = v20;
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9 = a1 + v19;
    v10 = *(v3 + 72);
    do
    {
      sub_26F446844(v9, v6);
      v11 = &v6[*(v2 + 24)];
      v13 = *v11;
      v12 = *(v11 + 1);
      v14 = &v6[*(v2 + 32)];
      v15 = *(v14 + 1);

      *v14 = v13;
      *(v14 + 1) = v12;
      v20 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_26F403444(v16 > 1, v17 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v17 + 1;
      sub_26F446958(v6, v8 + v19 + v17 * v10);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_26F445AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26F446844(a1, a3);
  v5 = *(type metadata accessor for TextModel() + 36);
  v6 = sub_26F49DAB8();
  return (*(*(v6 - 8) + 24))(a3 + v5, a2, v6);
}

size_t Array<A>.updating(lines:useIndex:)(uint64_t a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v54 - v10;
  v11 = type metadata accessor for TextModel();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v54 - v16;
  MEMORY[0x28223BE20](v17);
  v54 = &v54 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  MEMORY[0x28223BE20](v22);
  v25 = &v54 - v24;
  v26 = *(a1 + 16);
  if (a2)
  {
    if (v26)
    {
      v27 = v11[5];
      v11 = ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v28 = v11 + a1;
      a1 = *(v23 + 72);

      while (1)
      {
        sub_26F446844(v28, v25);
        v14 = *&v25[v27];
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          result = sub_26F4469BC(a3);
          a3 = result;
          if ((v14 & 0x8000000000000000) != 0)
          {
LABEL_10:
            __break(1u);
            goto LABEL_11;
          }
        }

        if (v14 >= a3[2])
        {
          break;
        }

        sub_26F446A6C(v25, v11 + a3 + v14 * a1);
        v28 += a1;
        if (!--v26)
        {
          return a3;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_30:

    return a3;
  }

LABEL_11:
  if (!v26)
  {
    goto LABEL_30;
  }

  v57 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v58 = a1 + v57;
  v64 = *(v23 + 72);

  v30 = 0;
  v31 = v62;
  v61 = v14;
  v56 = v26;
  v63 = v21;
  while (2)
  {
    sub_26F446844(v58 + v64 * v30, v21);
    v32 = a3[2];
    if (!v32)
    {
      goto LABEL_14;
    }

    v59 = v30;
    v60 = a3;
    v33 = a3 + v57;
    while (1)
    {
      sub_26F446844(v33, v14);
      sub_26F3E718C(v14 + v11[7], v31);
      v34 = sub_26F49DAB8();
      v35 = v14;
      v36 = *(v34 - 8);
      v37 = *(v36 + 48);
      v65 = v37(v31, 1, v34);
      if (v65 == 1)
      {
        sub_26F3EDA38(v31);
        v42 = 0;
      }

      else
      {
        sub_26F49D988();
        (*(v36 + 8))(v31, v34);
        sub_26F4A0578();
        sub_26F49F9A8();

        v38 = v35 + v11[9];
        sub_26F49D988();
        sub_26F49F9A8();

        v39 = (v35 + v11[6]);
        v40 = *v39;
        v41 = v39[1];
        sub_26F4A0548();

        sub_26F49F9A8();

        v79 = v69;
        v80 = v70;
        v81 = v71;
        v77 = v67;
        v78 = v68;
        v42 = sub_26F4A0558();
      }

      v43 = v63;
      v44 = v66;
      sub_26F3E718C(&v63[v11[7]], v66);
      if (v37(v44, 1, v34) != 1)
      {
        break;
      }

      sub_26F3EDA38(v66);
      if (v65 == 1)
      {
        goto LABEL_25;
      }

LABEL_18:
      v14 = v61;
      sub_26F4468A8(v61);
      v33 += v64;
      --v32;
      v31 = v62;
      if (!v32)
      {
        a3 = v60;
        v26 = v56;
        v21 = v63;
        v30 = v59;
        goto LABEL_14;
      }
    }

    v45 = v42;
    sub_26F49D988();
    (*(v36 + 8))(v66, v34);
    sub_26F4A0578();
    sub_26F49F9A8();

    v46 = &v43[v11[9]];
    sub_26F49D988();
    sub_26F49F9A8();

    v47 = &v43[v11[6]];
    v48 = *v47;
    v49 = *(v47 + 1);
    sub_26F4A0548();
    sub_26F49F9A8();
    v74 = v69;
    v75 = v70;
    v76 = v71;
    v72 = v67;
    v73 = v68;
    v50 = sub_26F4A0558();
    if (v65 == 1 || v45 != v50)
    {
      goto LABEL_18;
    }

LABEL_25:
    v14 = v61;
    v51 = v55;
    sub_26F446958(v61, v55);
    v52 = v54;
    sub_26F446958(v51, v54);
    v53 = *(v52 + v11[5]);
    a3 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a3 = sub_26F4469BC(a3);
    }

    v26 = v56;
    v21 = v63;
    v30 = v59;
    result = sub_26F4468A8(v52);
    if ((v53 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v53 >= a3[2])
    {
LABEL_34:
      __break(1u);
      return result;
    }

    sub_26F446A08(v21, a3 + v57 + v53 * v64);
    v31 = v62;
LABEL_14:
    sub_26F4468A8(v21);
    if (++v30 != v26)
    {
      continue;
    }

    return a3;
  }
}

char *sub_26F446268(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0100, &unk_26F4A6690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26F4463D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0160, &unk_26F4A7660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26F446534(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

void *sub_26F446710(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A80, &qword_26F4A8D48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A0, &qword_26F4A9B60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26F446844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F4468A8(uint64_t a1)
{
  v2 = type metadata accessor for TextModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F446904()
{
  result = qword_2806E0A40;
  if (!qword_2806E0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0A40);
  }

  return result;
}

uint64_t sub_26F446958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F446A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextModel();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F446A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26F446AF8()
{
  sub_26F49D968();
  if (v0 <= 0x3F)
  {
    sub_26F3FA4D0();
    if (v1 <= 0x3F)
    {
      sub_26F3F1EA8();
      if (v2 <= 0x3F)
      {
        sub_26F49DAB8();
        if (v3 <= 0x3F)
        {
          sub_26F446BFC();
          if (v4 <= 0x3F)
          {
            type metadata accessor for _LTTextLanguageDetectorStrategy(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26F446BFC()
{
  if (!qword_280F669D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E02A0, &qword_26F4A9B60);
    v0 = sub_26F49FFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F669D8);
    }
  }
}

unint64_t sub_26F446C74()
{
  result = qword_2806E0A68;
  if (!qword_2806E0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0A68);
  }

  return result;
}

unint64_t sub_26F446CCC()
{
  result = qword_2806E0A70;
  if (!qword_2806E0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0A70);
  }

  return result;
}

unint64_t sub_26F446D24()
{
  result = qword_2806E0A78;
  if (!qword_2806E0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0A78);
  }

  return result;
}

uint64_t sub_26F446DC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26F49FA38();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x274390810](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_26F446E40(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_26F446ED8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_26F446F4C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_26F446ED8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_26F446DC4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26F446F4C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_26F4A01B8();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_26F447060(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_26F446E40(0xFuLL, a1, a2);
  v8 = sub_26F446E40(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_26F49F978();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = sub_26F4A01B8();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_26F49F988();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_26F4A01B8();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

void *sub_26F44729C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    goto LABEL_30;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_30;
  }

  if (a3 < 0)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = a5 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = a3 - 1;
  while (v7 < v5)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v25 = result;
      v27 = a2;
      v16 = a3;
      v17 = a5;
      v18 = a4;
      v19 = sub_26F4A0168();
      a3 = v16;
      a4 = v18;
      a5 = v17;
      v13 = v19;
      v14 = v20;
      result = v25;
      a2 = v27;
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v29[0] = a4;
        v29[1] = v8;
        v12 = v29 + v7;
      }

      else
      {
        v11 = v9;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v26 = result;
          v28 = a2;
          v21 = a5;
          v22 = a4;
          v23 = a3;
          v24 = sub_26F4A01B8();
          a3 = v23;
          a4 = v22;
          a5 = v21;
          v11 = v24;
          result = v26;
          a2 = v28;
        }

        v12 = (v11 + v7);
      }

      v13 = *v12;
      if ((*v12 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      v15 = (__clz(v13 ^ 0xFF) - 24);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
          v14 = 4;
        }

        goto LABEL_17;
      }

      if (v15 == 1)
      {
LABEL_16:
        v14 = 1;
      }

      else
      {
        v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
        v14 = 2;
      }
    }

LABEL_17:
    v7 += v14;
    *(a2 + 4 * v6) = v13;
    if (v10 == v6)
    {
      goto LABEL_30;
    }

    if (__OFADD__(++v6, 1))
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  a3 = v6;
LABEL_30:
  *result = a4;
  result[1] = a5;
  result[2] = v7;
  result[3] = v5;
  return a3;
}

void *sub_26F44749C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0138, &qword_26F4A6668);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_26F447520()
{
  v0 = sub_26F4A02A8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F44756C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F4475B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26F49D768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  v29 = a1;
  v30 = a2;
  sub_26F49D748();
  sub_26F3BDC0C();
  v12 = sub_26F49FFE8();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v11, v4);
  v29 = v12;
  v30 = v14;
  v16 = sub_26F4A0018();
  v18 = v17;

  v19 = sub_26F447060(v16, v18);
  if (v19)
  {
    v20 = v19;
    v21 = sub_26F44749C(v19, 0);
    v22 = sub_26F44729C(&v29, (v21 + 4), v20, v16, v18);

    if (v22 != v20)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v24 = sub_26F49D738();
  MEMORY[0x28223BE20](v24);
  v28[-2] = v8;
  v25 = sub_26F4431A0(sub_26F44789C, &v28[-4], v21);
  v29 = 0;
  v30 = 0xE000000000000000;
  v28[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A88, &qword_26F4A8D50);
  sub_26F3B18CC(&qword_2806E0A90, &qword_2806E0A88, &qword_26F4A8D50);
  sub_26F49F998();

  v26 = v29;
  v27 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v27 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    v26 = 0;
  }

  v15(v8, v4);
  return v26;
}

BOOL sub_26F44789C(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return (sub_26F49D758() & 1) == 0;
}

uint64_t sub_26F4478D8()
{
  sub_26F4468A8(v0 + OBJC_IVAR____TtC13TranslationUI18TextModelContainer_textModel);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TextModelContainer()
{
  result = qword_2806E0AA0;
  if (!qword_2806E0AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F447990()
{
  result = type metadata accessor for TextModel();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26F447A20(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for TextModel();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v122 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v110 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v125 = (&v110 - v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v110 - v20;
  v22 = *(v4 + 112);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_79;
  }

  *(v4 + 112) = v24;
  v124 = v7[7];
  sub_26F3E718C(a1 + v124, &v110 - v20);
  v25 = sub_26F49DAB8();
  v26 = *(v25 - 8);
  v126 = *(v26 + 48);
  if (v126(v21, 1, v25) == 1)
  {
    sub_26F3B6B4C(v21, &qword_2806DEFD8, &qword_26F4A3670);
    return 0;
  }

  v120 = v16;
  v117 = a2;
  sub_26F49D988();
  v27 = a1;
  v28 = v4;
  v119 = *(v26 + 8);
  v119(v21, v25);
  sub_26F4A0578();
  sub_26F49F9A8();

  v116 = v7[9];
  sub_26F49D988();
  sub_26F49F9A8();

  v123 = v7;
  v29 = v7[6];
  v30 = v27;
  v31 = (v27 + v29);
  v33 = *v31;
  v32 = v31[1];
  sub_26F4A0548();
  v118 = v33;
  v115 = v32;
  sub_26F49F9A8();
  v131 = v127[2];
  v132 = v127[3];
  v133 = v128;
  v129 = v127[0];
  v130 = v127[1];
  v34 = sub_26F4A0558();
  v121 = v28;
  v35 = *(v28 + 136);
  v36 = sub_26F404B4C();
  v37 = v35;
  v38 = sub_26F49FF28();
  v39 = [v37 objectForKey_];

  if (v39)
  {
    v40 = v30;
    v41 = v125;
    goto LABEL_6;
  }

  v114 = v34;
  if ((v117 & 1) == 0)
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v62 = sub_26F49DCA8();
    __swift_project_value_buffer(v62, qword_280F67ED0);
    goto LABEL_26;
  }

  v112 = v36;
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v44 = sub_26F49DCA8();
  v45 = __swift_project_value_buffer(v44, qword_280F67ED0);
  v40 = v30;
  sub_26F448DA4(v30, v12, type metadata accessor for TextModel);
  v113 = v45;
  v46 = sub_26F49DC88();
  v47 = sub_26F49FDC8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v127[0] = v49;
    *v48 = 136642819;
    v50 = &v12[v123[6]];
    v51 = v50[1];
    v111 = *v50;

    sub_26F4468A8(v12);
    v52 = sub_26F3B38D0(v111, v51, v127);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_26F39E000, v46, v47, "TextTranslationCache sourceString:\t%{sensitive}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x274391F70](v49, -1, -1);
    MEMORY[0x274391F70](v48, -1, -1);
  }

  else
  {

    sub_26F4468A8(v12);
  }

  v41 = v125;
  v67 = v122;
  sub_26F448DA4(v40, v122, type metadata accessor for TextModel);
  v68 = sub_26F49DC88();
  v69 = sub_26F49FDC8();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *&v127[0] = v125;
    *v70 = 136642819;
    v71 = v123[7];
    v72 = sub_26F4475B4(*(v67 + v123[6]), *(v67 + v123[6] + 8));
    v74 = v67;
    if (v73)
    {
      v75 = v72;
    }

    else
    {
      v75 = 6369134;
    }

    if (v73)
    {
      v76 = v73;
    }

    else
    {
      v76 = 0xE300000000000000;
    }

    sub_26F4468A8(v74);
    v77 = sub_26F3B38D0(v75, v76, v127);

    *(v70 + 4) = v77;
    _os_log_impl(&dword_26F39E000, v68, v69, "TextTranslationCache sourceFuzzy:\t%{sensitive}s", v70, 0xCu);
    v78 = v125;
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x274391F70](v78, -1, -1);
    MEMORY[0x274391F70](v70, -1, -1);
  }

  else
  {

    sub_26F4468A8(v67);
  }

  v79 = v121;
  v80 = v114;
  v81 = sub_26F444588(1);
  if ((v82 & 1) != 0 || v80 == v81)
  {
    v63 = sub_26F49DC88();
    v64 = sub_26F49FDC8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "TextTranslationCache fuzzy key collision";
      goto LABEL_46;
    }

LABEL_47:

    return 0;
  }

  v83 = *(v79 + 136);
  v84 = sub_26F49FF28();
  v39 = [v83 objectForKey_];

  if (!v39)
  {
LABEL_26:
    v63 = sub_26F49DC88();
    v64 = sub_26F49FDC8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "TextTranslationCache cache miss";
LABEL_46:
      _os_log_impl(&dword_26F39E000, v63, v64, v66, v65, 2u);
      MEMORY[0x274391F70](v65, -1, -1);
      goto LABEL_47;
    }

    goto LABEL_47;
  }

LABEL_6:
  sub_26F3E718C(v40 + v124, v41);
  if (v126(v41, 1, v25) == 1)
  {
    sub_26F3B6B4C(v41, &qword_2806DEFD8, &qword_26F4A3670);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v42 = sub_26F49D988();
    v43 = v53;
    v119(v41, v25);
  }

  v54 = v118;
  v125 = v39;
  v55 = v39 + OBJC_IVAR____TtC13TranslationUI18TextModelContainer_textModel;
  v122 = v123[7];
  v56 = v120;
  sub_26F3E718C(&v55[v122], v120);
  if (v126(v56, 1, v25) == 1)
  {
    sub_26F3B6B4C(v56, &qword_2806DEFD8, &qword_26F4A3670);
    if (!v43)
    {
      goto LABEL_50;
    }

LABEL_66:

    goto LABEL_69;
  }

  v57 = sub_26F49D988();
  v58 = v56;
  v59 = v57;
  v61 = v60;
  v119(v58, v25);
  if (v43)
  {
    if (!v61)
    {
      goto LABEL_66;
    }

    if (v42 == v59 && v43 == v61)
    {
    }

    else
    {
      v85 = sub_26F4A0458();

      if ((v85 & 1) == 0)
      {
        goto LABEL_69;
      }
    }
  }

  else if (v61)
  {
    goto LABEL_66;
  }

LABEL_50:
  v86 = sub_26F49D988();
  v88 = v87;
  v89 = &v55[v123[9]];
  if (v86 == sub_26F49D988() && v88 == v90)
  {

    v92 = v54;
  }

  else
  {
    v93 = sub_26F4A0458();

    v92 = v54;
    if ((v93 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  v94 = &v55[v123[6]];
  v95 = v115;
  if (v92 == *v94 && v115 == *(v94 + 1))
  {
    goto LABEL_57;
  }

  result = sub_26F4A0458();
  if (result)
  {
    goto LABEL_57;
  }

  if ((v117 & 1) == 0)
  {
    goto LABEL_69;
  }

  v101 = sub_26F4475B4(v92, v95);
  v103 = v102;
  result = sub_26F4475B4(*v94, *(v94 + 1));
  if (!v103)
  {
    if (!v104)
    {
      goto LABEL_57;
    }

    goto LABEL_66;
  }

  if (!v104)
  {

    v7 = 0;
LABEL_70:
    v96 = v121;
LABEL_71:
    a2 = *(v96 + 112);
    if (__ROR8__(0x8F5C28F5C28F5C29 * a2 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL)
    {

      return v7;
    }

    v3 = *(v96 + 120);
    if (qword_280F66CB0 == -1)
    {
LABEL_74:
      v106 = sub_26F49DCA8();
      __swift_project_value_buffer(v106, qword_280F67ED0);
      v107 = sub_26F49DC88();
      v108 = sub_26F49FDC8();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 134349056;
        *(v109 + 4) = v3 / a2;
        _os_log_impl(&dword_26F39E000, v107, v108, "TextTranslationCache cache stats: %{public}f", v109, 0xCu);
        MEMORY[0x274391F70](v109, -1, -1);
      }

      return v7;
    }

LABEL_79:
    swift_once();
    goto LABEL_74;
  }

  if (v101 == result && v103 == v104)
  {

    goto LABEL_57;
  }

  v105 = sub_26F4A0458();

  if ((v105 & 1) == 0)
  {
LABEL_69:
    v7 = 0;
    goto LABEL_70;
  }

LABEL_57:
  v96 = v121;
  v97 = *(v121 + 120);
  v23 = __OFADD__(v97, 1);
  v98 = v97 + 1;
  if (!v23)
  {
    *(v121 + 120) = v98;
    v99 = &v55[v123[8]];
    v7 = *v99;
    v100 = v99[1];

    goto LABEL_71;
  }

  __break(1u);
  return result;
}

void *sub_26F4486D0(uint64_t a1, int a2)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB0, &qword_26F4A8DF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v33 = type metadata accessor for TextModel();
  v7 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = a1 + v28;
    v15 = *(v10 + 72);
    v31 = (v10 + 56);
    v29 = (v10 + 48);
    v32 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_26F448DA4(v14, v12, type metadata accessor for TextModel);
      v16 = sub_26F447A20(v12, v34 & 1);
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        v20 = v33;
        v21 = &v12[*(v33 + 32)];
        v22 = *(v21 + 1);

        *v21 = v18;
        *(v21 + 1) = v19;
        sub_26F448DA4(v12, v6, type metadata accessor for TextModel);
        (*v31)(v6, 0, 1, v20);
        sub_26F4468A8(v12);
        if ((*v29)(v6, 1, v20) != 1)
        {
          sub_26F446958(v6, v30);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_26F4464E4(0, v32[2] + 1, 1, v32);
          }

          v24 = v32[2];
          v23 = v32[3];
          if (v24 >= v23 >> 1)
          {
            v32 = sub_26F4464E4(v23 > 1, v24 + 1, 1, v32);
          }

          v25 = v32;
          v32[2] = v24 + 1;
          sub_26F446958(v30, v25 + v28 + v24 * v15);
          goto LABEL_5;
        }
      }

      else
      {
        sub_26F4468A8(v12);
        (*v31)(v6, 1, 1, v33);
      }

      sub_26F3B6B4C(v6, &qword_2806E0AB0, &qword_26F4A8DF0);
LABEL_5:
      v14 += v15;
      if (!--v13)
      {
        return v32;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26F4489F8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26F448A60@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TextModel();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualTranslationModel(0);
  v12 = *(a1 + v11[7]);
  v13 = sub_26F4486D0(v12, a2);
  v14 = v13[2];
  if (v14)
  {
    v41 = a1;
    v42 = a3;
    v15 = *(v6 + 20);
    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = v13 + v16;
    v18 = *(v7 + 72);

    while (1)
    {
      sub_26F448DA4(v17, v10, type metadata accessor for TextModel);
      v19 = *&v10[v15];
      if ((v19 & 0x8000000000000000) != 0 || v19 >= v12[2])
      {
        sub_26F4468A8(v10);
      }

      else
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_26F4469BC(v12);
          v12 = result;
        }

        if (v19 >= v12[2])
        {
          __break(1u);
          return result;
        }

        sub_26F446A6C(v10, v12 + v16 + v19 * v18);
      }

      v17 += v18;
      if (!--v14)
      {

        v21 = sub_26F49D968();
        v22 = v42;
        v23 = v41;
        (*(*(v21 - 8) + 16))(v42, v41, v21);
        v24 = (v23 + v11[5]);
        v25 = v24[9];
        v51 = v24[8];
        v52 = v25;
        v53 = *(v24 + 20);
        v26 = v24[5];
        v47 = v24[4];
        v48 = v26;
        v27 = v24[7];
        v49 = v24[6];
        v50 = v27;
        v28 = v24[3];
        v45 = v24[2];
        v46 = v28;
        v29 = v24[1];
        v43 = *v24;
        v44 = v29;
        v30 = v11[6];
        v31 = sub_26F49D918();
        result = (*(*(v31 - 8) + 16))(v22 + v30, v23 + v30, v31);
        v32 = *(v23 + v11[8]);
        v33 = *(v23 + v11[9]);
        v34 = *(v23 + v11[10]);
        v35 = v22 + v11[5];
        v36 = v52;
        *(v35 + 128) = v51;
        *(v35 + 144) = v36;
        *(v35 + 160) = v53;
        v37 = v48;
        *(v35 + 64) = v47;
        *(v35 + 80) = v37;
        v38 = v50;
        *(v35 + 96) = v49;
        *(v35 + 112) = v38;
        v39 = v44;
        *v35 = v43;
        *(v35 + 16) = v39;
        v40 = v46;
        *(v35 + 32) = v45;
        *(v35 + 48) = v40;
        *(v22 + v11[7]) = v12;
        *(v22 + v11[8]) = v32;
        *(v22 + v11[9]) = v33;
        *(v22 + v11[10]) = v34;
        *(v22 + v11[11]) = 0;
        return result;
      }
    }
  }

  sub_26F448DA4(a1, a3, type metadata accessor for VisualTranslationModel);
}

uint64_t sub_26F448DA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_26F448E0C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v14 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for TextModel();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v15, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v14;
        }

        if (v15)
        {
          break;
        }

        if (v8 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x2743908C0](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26F49FB18();
      }

      sub_26F49FB38();
      result = v16;
    }

    while (v8 != v6);
  }

  return result;
}

void sub_26F448F8C(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v52 = a6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AF0, &qword_26F4A8E78);
  v11 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v13 = (&v49 - v12);
  v14 = type metadata accessor for TextModel();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v49 - v20;
  if (!a1)
  {
LABEL_10:
    if (a2)
    {
      v34 = a2;
    }

    else
    {
      sub_26F442974();
      v34 = swift_allocError();
      *v35 = 6;
    }

    v36 = a2;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v37 = sub_26F49DCA8();
    __swift_project_value_buffer(v37, qword_280F67ED0);
    sub_26F44277C(a4, v17, type metadata accessor for TextModel);
    v38 = sub_26F49DC88();
    v39 = sub_26F49FDF8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock = v41;
      *v40 = 136446210;
      sub_26F49D968();
      v50 = a5;
      v42 = a3;
      sub_26F450E5C();
      v43 = sub_26F4A0428();
      v45 = v44;
      sub_26F442914(v17, type metadata accessor for TextModel);
      v46 = sub_26F3B38D0(v43, v45, &aBlock);
      a3 = v42;
      a5 = v50;

      *(v40 + 4) = v46;
      _os_log_impl(&dword_26F39E000, v38, v39, "Requested translating model ID %{public}s of length ", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x274391F70](v41, -1, -1);
      MEMORY[0x274391F70](v40, -1, -1);
    }

    else
    {

      sub_26F442914(v17, type metadata accessor for TextModel);
    }

    *v13 = v34;
    swift_storeEnumTagMultiPayload();
    v47 = v34;
    a5(v13);

    sub_26F3B6B4C(v13, &qword_2806E0AF0, &qword_26F4A8E78);
    v57 = CGPointMake;
    v58 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v33 = &block_descriptor_27_0;
    goto LABEL_19;
  }

  v22 = [a1 translations];
  sub_26F3B0C24(0, &qword_2806E0AF8, 0x277CE1BF8);
  v23 = sub_26F49FAF8();

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!sub_26F4A00A8())
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x274390F80](0, v23);
    goto LABEL_7;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v23 + 32);
LABEL_7:
    v25 = v24;

    sub_26F44277C(a4, v21, type metadata accessor for TextModel);
    v26 = [v25 formattedString];
    v27 = sub_26F49F8C8();
    v29 = v28;

    v30 = &v21[*(v14 + 32)];
    v31 = v30[1];

    *v30 = v27;
    v30[1] = v29;
    [v25 confidence];
    *&v21[*(v14 + 40)] = v32;
    sub_26F44277C(v21, v13, type metadata accessor for TextModel);
    swift_storeEnumTagMultiPayload();
    a5(v13);

    sub_26F3B6B4C(v13, &qword_2806E0AF0, &qword_26F4A8E78);
    sub_26F442914(v21, type metadata accessor for TextModel);
    v57 = CGPointMake;
    v58 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v33 = &block_descriptor_30;
LABEL_19:
    v55 = sub_26F449538;
    v56 = v33;
    v48 = _Block_copy(&aBlock);
    [a3 setCompletionHandler_];
    _Block_release(v48);
    return;
  }

  __break(1u);
}

void sub_26F449538(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t static TextTranslationService.translate(_:strictLocales:taskHint:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TextModel();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A08, &unk_26F4A89F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v63 = &v48 - v15;
  v64 = sub_26F49D968();
  v66 = *(v64 - 8);
  v16 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  v59 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v61 = *a3;
  sub_26F49D958();
  v21 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
  v62 = v20;
  v22 = sub_26F49D928();
  v60 = [v21 startTranslationSessionWithSELFLoggingInvocationId_];

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v23 = sub_26F49DCA8();
  __swift_project_value_buffer(v23, qword_280F67ED0);

  v24 = sub_26F49DC88();
  v25 = sub_26F49FDB8();
  if (os_log_type_enabled(v24, v25))
  {
    v56 = v25;
    v58 = v24;
    v26 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v68 = v55;
    *v26 = 134349314;
    v27 = *(a1 + 16);
    *(v26 + 4) = v27;

    v57 = v26;
    *(v26 + 12) = 2082;
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v49 = v13;
      v50 = v12;
      v52 = a2;
      v53 = v8;
      v54 = a4;
      v67 = MEMORY[0x277D84F90];
      sub_26F403488(0, v27, 0);
      v29 = v64;
      v30 = *(v65 + 80);
      v51 = a1;
      v31 = a1 + ((v30 + 32) & ~v30);
      v65 = *(v65 + 72);
      v28 = v67;
      v32 = (v66 + 16);
      v33 = v59;
      do
      {
        sub_26F44277C(v31, v11, type metadata accessor for TextModel);
        (*v32)(v33, v11, v29);
        sub_26F442914(v11, type metadata accessor for TextModel);
        v67 = v28;
        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_26F403488(v34 > 1, v35 + 1, 1);
          v28 = v67;
        }

        *(v28 + 16) = v35 + 1;
        (*(v66 + 32))(v28 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v35, v33, v29);
        v31 += v65;
        --v27;
      }

      while (v27);
      LOBYTE(a2) = v52;
      v12 = v50;
      a1 = v51;
      v13 = v49;
    }

    v37 = v64;
    v38 = MEMORY[0x274390900](v28, v64);
    v40 = v39;

    v41 = sub_26F3B38D0(v38, v40, &v68);

    v42 = v57;
    *(v57 + 14) = v41;
    v43 = v58;
    _os_log_impl(&dword_26F39E000, v58, v56, "Requested translating %{public}ld models: %{public}s", v42, 0x16u);
    v44 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x274391F70](v44, -1, -1);
    MEMORY[0x274391F70](v42, -1, -1);
  }

  else
  {

    v37 = v64;
  }

  v45 = MEMORY[0x28223BE20](v36);
  *(&v48 - 4) = a1;
  *(&v48 - 24) = a2 & 1;
  *(&v48 - 23) = v61;
  v46 = v60;
  *(&v48 - 2) = v60;
  (*(v13 + 104))(v63, *MEMORY[0x277D85778], v12, v45);
  sub_26F49FC78();

  return (*(v66 + 8))(v62, v37);
}

void static TextTranslationService.translate(_:strictLocales:taskHint:selfLoggingInvocationId:)(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TextModel();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_26F49D968();
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A08, &unk_26F4A89F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v58 = &v44 - v18;
  v57 = *a3;
  v19 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
  v20 = sub_26F49D928();
  v56 = [v19 startTranslationSessionWithSELFLoggingInvocationId_];

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v21 = sub_26F49DCA8();
  __swift_project_value_buffer(v21, qword_280F67ED0);

  v22 = sub_26F49DC88();
  v23 = sub_26F49FDB8();
  if (os_log_type_enabled(v22, v23))
  {
    v50 = v23;
    v52 = v22;
    v53 = v16;
    v24 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v62 = v49;
    *v24 = 134349314;
    v25 = *(a1 + 16);
    *(v24 + 4) = v25;

    v51 = v24;
    *(v24 + 12) = 2082;
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v44 = v15;
      v46 = a2;
      v47 = v8;
      v48 = a4;
      v61 = MEMORY[0x277D84F90];
      sub_26F403488(0, v25, 0);
      v26 = v61;
      v27 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v45 = a1;
      v28 = a1 + v27;
      v29 = *(v60 + 72);
      v59 = v12 + 32;
      v60 = v29;
      v31 = v54;
      v30 = v55;
      do
      {
        sub_26F44277C(v28, v11, type metadata accessor for TextModel);
        (*(v12 + 16))(v31, v11, v30);
        sub_26F442914(v11, type metadata accessor for TextModel);
        v61 = v26;
        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_26F403488(v32 > 1, v33 + 1, 1);
          v26 = v61;
        }

        *(v26 + 16) = v33 + 1;
        (*(v12 + 32))(v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v33, v31, v30);
        v28 += v60;
        --v25;
      }

      while (v25);
      LOBYTE(a2) = v46;
      v15 = v44;
      a1 = v45;
    }

    v35 = MEMORY[0x274390900](v26, v55);
    v37 = v36;

    v38 = sub_26F3B38D0(v35, v37, &v62);

    v39 = v51;
    *(v51 + 14) = v38;
    v40 = v52;
    _os_log_impl(&dword_26F39E000, v52, v50, "Requested translating %{public}ld models: %{public}s", v39, 0x16u);
    v41 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x274391F70](v41, -1, -1);
    MEMORY[0x274391F70](v39, -1, -1);

    v16 = v53;
  }

  else
  {
  }

  v42 = MEMORY[0x28223BE20](v34);
  *(&v44 - 4) = a1;
  *(&v44 - 24) = a2 & 1;
  *(&v44 - 23) = v57;
  v43 = v56;
  *(&v44 - 2) = v56;
  (*(v16 + 104))(v58, *MEMORY[0x277D85778], v15, v42);
  sub_26F49FC78();
}

uint64_t sub_26F44A0E8(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v24 = a3;
  v25 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  v17 = sub_26F49FC08();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 41) & ~*(v9 + 80);
  v19 = v18 + v10;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a2;
  *(v20 + 40) = v24;
  (*(v9 + 32))(v20 + v18, v12, v8);
  *(v20 + v19) = v25 & 1;
  *(v20 + (v19 & 0xFFFFFFFFFFFFFFF8) + 8) = a5;

  v21 = a5;
  sub_26F40570C(0, 0, v16, &unk_26F4A8E68, v20);
}

uint64_t sub_26F44A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 560) = a8;
  *(v8 + 850) = a7;
  *(v8 + 552) = a6;
  *(v8 + 849) = a5;
  *(v8 + 544) = a4;
  v9 = type metadata accessor for Signpost();
  *(v8 + 568) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 576) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A20, &qword_26F4A8A50);
  *(v8 + 584) = v11;
  v12 = *(v11 - 8);
  *(v8 + 592) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 600) = swift_task_alloc();
  v14 = type metadata accessor for TextModel();
  *(v8 + 608) = v14;
  v15 = *(v14 - 8);
  *(v8 + 616) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  v17 = sub_26F49DAB8();
  *(v8 + 672) = v17;
  v18 = *(v17 - 8);
  *(v8 + 680) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64) + 15;
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F44A5B4, 0, 0);
}

uint64_t sub_26F44A5B4()
{
  v174 = v0;
  v1 = *(v0 + 544);
  *(v0 + 536) = v1;
  v2 = *(v0 + 768);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  if (!*(v1 + 16))
  {
    (*(v3 + 56))(*(v0 + 768), 1, 1, *(v0 + 672));
LABEL_10:
    v25 = *(v0 + 768);
    v26 = *(v0 + 544);

    sub_26F3B6B4C(v25, &qword_2806DEFD8, &qword_26F4A3670);
    if (qword_280F66CB0 == -1)
    {
LABEL_11:
      v27 = sub_26F49DCA8();
      *(v0 + 776) = __swift_project_value_buffer(v27, qword_280F67ED0);
      v28 = sub_26F49DC88();
      v29 = sub_26F49FDC8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_26F39E000, v28, v29, "Performing source LID since sourceLocale is nil", v30, 2u);
        MEMORY[0x274391F70](v30, -1, -1);
      }

      v31 = v172[68];

      v32 = swift_task_alloc();
      v172[98] = v32;
      *v32 = v172;
      v32[1] = sub_26F44BABC;
      v33 = v172[68];

      return sub_26F4501F4(v33);
    }

LABEL_114:
    swift_once();
    goto LABEL_11;
  }

  v5 = *(*(v0 + 616) + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = v1 + *(*(v0 + 608) + 28);
  sub_26F3B8DD4(v7 + v6, *(v0 + 768), &qword_2806DEFD8, &qword_26F4A3670);
  v8 = *(v3 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    goto LABEL_10;
  }

  v9 = *(v0 + 768);
  v10 = *(v0 + 544);

  sub_26F3B6B4C(v9, &qword_2806DEFD8, &qword_26F4A3670);
  v11 = v0;
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v168 = sub_26F49DCA8();
  __swift_project_value_buffer(v168, qword_280F67ED0);
  v12 = sub_26F49DC88();
  v13 = sub_26F49FDB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v173 = v170;
    *v14 = 136446210;
    v15 = v11[94];
    if (*(v1 + 16))
    {
      v16 = v172[84];
      sub_26F3B8DD4(v7 + v6, v15, &qword_2806DEFD8, &qword_26F4A3670);
      v17 = v16;
      v11 = v172;
      if (v8(v15, 1, v17) != 1)
      {
        v18 = v172[94];
        v19 = v172[85];
        v20 = v172[84];
        v172[62] = sub_26F49D988();
        v172[63] = v21;
        v172[64] = 45;
        v172[65] = 0xE100000000000000;
        v172[30] = 95;
        v172[31] = 0xE100000000000000;
        sub_26F3BDC0C();
        v22 = sub_26F49FFF8();
        v24 = v23;
        v11 = v172;

        (*(v19 + 8))(v18, v20);
LABEL_18:
        v35 = sub_26F3B38D0(v22, v24, &v173);

        *(v14 + 4) = v35;
        _os_log_impl(&dword_26F39E000, v12, v13, "Source Locale already set to %{public}s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v170);
        MEMORY[0x274391F70](v170, -1, -1);
        MEMORY[0x274391F70](v14, -1, -1);
        goto LABEL_19;
      }
    }

    else
    {
      (*(v11[85] + 56))(v11[94], 1, 1, v11[84]);
    }

    v22 = 7104878;
    sub_26F3B6B4C(v11[94], &qword_2806DEFD8, &qword_26F4A3670);
    v24 = 0xE300000000000000;
    goto LABEL_18;
  }

LABEL_19:

  v0 = v11[68];
  v11[100] = v0;
  if (*(v11 + 849))
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v168, qword_280F67ED0);
    v36 = sub_26F49DC88();
    v37 = sub_26F49FDB8();
    v171 = v0;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v173 = v39;
      *v38 = 136446210;
      if (*(v0 + 16))
      {
        v40 = v11[87];
        v41 = v11[85];
        v42 = v11[84];
        v43 = *(v11[77] + 80);
        (*(v41 + 16))(v40, v171 + *(v11[76] + 36) + ((v43 + 32) & ~v43), v42);
        v11[50] = sub_26F49D988();
        v11[51] = v44;
        v11[52] = 45;
        v11[53] = 0xE100000000000000;
        v11[54] = 95;
        v11[55] = 0xE100000000000000;
        sub_26F3BDC0C();
        v45 = sub_26F49FFF8();
        v47 = v46;

        (*(v41 + 8))(v40, v42);
        v0 = v171;
      }

      else
      {
        v45 = 7104878;
        v47 = 0xE300000000000000;
      }

      v55 = sub_26F3B38D0(v45, v47, &v173);

      *(v38 + 4) = v55;
      _os_log_impl(&dword_26F39E000, v36, v37, "Using strict locales, treating target as %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x274391F70](v39, -1, -1);
      MEMORY[0x274391F70](v38, -1, -1);

      v11 = v172;
    }

    else
    {
    }

    v56 = *(v0 + 16);

    if (v56)
    {
      v57 = 0;
      v58 = v11[77];
      v59 = v11[76];
      v60 = MEMORY[0x277D84F90];
      v165 = v59;
      v153 = (v11[85] + 48);
      v155 = v56;
      v151 = v58;
      while (1)
      {
        if (v57 >= *(v0 + 16))
        {
          __break(1u);
          goto LABEL_112;
        }

        v61 = v11[83];
        v62 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v63 = *(v58 + 72);
        sub_26F44277C(v0 + v62 + v63 * v57, v61, type metadata accessor for TextModel);
        v64 = v11[83];
        if (*(v61 + v59[11]))
        {
          goto LABEL_41;
        }

        v69 = (v64 + v59[6]);
        v71 = *v69;
        v70 = v69[1];
        v72 = v71 & 0xFFFFFFFFFFFFLL;
        if (!((v70 & 0x2000000000000000) != 0 ? HIBYTE(v70) & 0xF : v72))
        {
          goto LABEL_41;
        }

        v74 = v11[93];
        v75 = v11;
        v76 = v11[84];
        v162 = v64;
        v157 = v59[7];
        sub_26F3B8DD4(v64 + v157, v74, &qword_2806DEFD8, &qword_26F4A3670);
        v159 = *v153;
        LODWORD(v76) = (*v153)(v74, 1, v76);
        sub_26F3B6B4C(v74, &qword_2806DEFD8, &qword_26F4A3670);
        if (v76 == 1)
        {
          break;
        }

        v77 = v75[92];
        v78 = v75[84];
        sub_26F3B8DD4(v162 + v157, v77, &qword_2806DEFD8, &qword_26F4A3670);
        LODWORD(v78) = v159(v77, 1, v78);
        sub_26F3B6B4C(v77, &qword_2806DEFD8, &qword_26F4A3670);
        v64 = v75[83];
        v59 = v165;
        if (v78 != 1)
        {
          v79 = (v64 + v165[8]);
          v80 = v79[1];
          if (v80)
          {
            v81 = *v79 & 0xFFFFFFFFFFFFLL;
            if ((v80 & 0x2000000000000000) != 0 ? HIBYTE(v80) & 0xF : v81)
            {
              v11 = v172;
              goto LABEL_52;
            }
          }
        }

        sub_26F442914(v64, type metadata accessor for TextModel);
        v11 = v172;
        v0 = v171;
        v56 = v155;
        v58 = v151;
LABEL_38:
        if (v56 == ++v57)
        {
          goto LABEL_61;
        }
      }

      v64 = v75[83];
      v11 = v75;
LABEL_52:
      v56 = v155;
      v58 = v151;
LABEL_41:
      sub_26F450C0C(v64, v11[81], type metadata accessor for TextModel);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v173 = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26F403444(0, *(v60 + 16) + 1, 1);
        v60 = v173;
      }

      v67 = *(v60 + 16);
      v66 = *(v60 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_26F403444(v66 > 1, v67 + 1, 1);
        v60 = v173;
      }

      v68 = v11[81];
      *(v60 + 16) = v67 + 1;
      sub_26F450C0C(v68, v60 + v62 + v67 * v63, type metadata accessor for TextModel);
      v0 = v171;
      v59 = v165;
      goto LABEL_38;
    }

    v60 = MEMORY[0x277D84F90];
LABEL_61:

    v166 = *(v60 + 16);
    if (v166)
    {
      v83 = 0;
      v163 = v172[77];
      v160 = v60 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
      v0 = v172[74] + 8;
      while (v83 < *(v60 + 16))
      {
        sub_26F44277C(v160 + *(v163 + 72) * v83, v172[82], type metadata accessor for TextModel);
        if (qword_280F66CB0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v168, qword_280F67ED0);
        v89 = sub_26F49DC88();
        v90 = sub_26F49FDC8();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&dword_26F39E000, v89, v90, "Yield untranslatable or already translated)", v91, 2u);
          MEMORY[0x274391F70](v91, -1, -1);
        }

        ++v83;
        v84 = v172[82];
        v85 = v172[80];
        v86 = v172[75];
        v87 = v172[73];
        v88 = v172[69];

        sub_26F44277C(v84, v85, type metadata accessor for TextModel);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
        sub_26F49FC38();
        (*v0)(v86, v87);
        sub_26F442914(v84, type metadata accessor for TextModel);
        if (v166 == v83)
        {
          goto LABEL_69;
        }
      }

LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

LABEL_69:

    v0 = v171;
    v92 = *(v171 + 16);

    if (v92)
    {
      v93 = 0;
      v94 = v172;
      v95 = v172[77];
      v96 = v172[76];
      v154 = (v172[85] + 48);
      v97 = MEMORY[0x277D84F90];
      v156 = v92;
      v164 = v96;
      v152 = v95;
      while (1)
      {
        if (v93 >= *(v0 + 16))
        {
          goto LABEL_113;
        }

        v99 = v94[79];
        v100 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v101 = *(v95 + 72);
        sub_26F44277C(v0 + v100 + v101 * v93, v99, type metadata accessor for TextModel);
        v98 = v94[79];
        if (!*(v99 + v96[11]))
        {
          v102 = (v98 + v96[6]);
          v104 = *v102;
          v103 = v102[1];
          v105 = v104 & 0xFFFFFFFFFFFFLL;
          if ((v103 & 0x2000000000000000) != 0 ? HIBYTE(v103) & 0xF : v105)
          {
            v107 = v94[91];
            v108 = v94;
            v109 = v94[84];
            v110 = v96[7];
            v161 = v98;
            sub_26F3B8DD4(v98 + v110, v107, &qword_2806DEFD8, &qword_26F4A3670);
            v158 = *v154;
            LODWORD(v109) = (*v154)(v107, 1, v109);
            sub_26F3B6B4C(v107, &qword_2806DEFD8, &qword_26F4A3670);
            if (v109 == 1)
            {
              v98 = v108[79];
              v94 = v108;
              v0 = v171;
              v96 = v164;
            }

            else
            {
              v111 = v108[90];
              v112 = v108[84];
              sub_26F3B8DD4(v161 + v110, v111, &qword_2806DEFD8, &qword_26F4A3670);
              LODWORD(v112) = v158(v111, 1, v112);
              sub_26F3B6B4C(v111, &qword_2806DEFD8, &qword_26F4A3670);
              v98 = v108[79];
              v96 = v164;
              if (v112 == 1 || (v113 = (v98 + v164[8]), (v114 = v113[1]) == 0) || ((v115 = *v113 & 0xFFFFFFFFFFFFLL, (v114 & 0x2000000000000000) != 0) ? (v116 = HIBYTE(v114) & 0xF) : (v116 = v115), !v116))
              {
                v94 = v172;
                sub_26F450C0C(v98, v172[78], type metadata accessor for TextModel);
                v117 = swift_isUniquelyReferenced_nonNull_native();
                v173 = v97;
                v92 = v156;
                v95 = v152;
                if ((v117 & 1) == 0)
                {
                  sub_26F403444(0, *(v97 + 16) + 1, 1);
                  v97 = v173;
                }

                v119 = *(v97 + 16);
                v118 = *(v97 + 24);
                if (v119 >= v118 >> 1)
                {
                  sub_26F403444(v118 > 1, v119 + 1, 1);
                  v97 = v173;
                }

                v120 = v172[78];
                *(v97 + 16) = v119 + 1;
                sub_26F450C0C(v120, v97 + v100 + v119 * v101, type metadata accessor for TextModel);
                v0 = v171;
                v96 = v164;
                goto LABEL_74;
              }

              v94 = v172;
              v0 = v171;
            }

            v92 = v156;
            v95 = v152;
          }
        }

        sub_26F442914(v98, type metadata accessor for TextModel);
LABEL_74:
        if (v92 == ++v93)
        {
          goto LABEL_95;
        }
      }
    }

    v97 = MEMORY[0x277D84F90];
    v94 = v172;
LABEL_95:
    v94[104] = v97;
    swift_bridgeObjectRelease_n();
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v94[105] = __swift_project_value_buffer(v168, qword_280F67ED0);
    swift_bridgeObjectRetain_n();
    v121 = v94;
    v122 = sub_26F49DC88();
    v123 = sub_26F49FDB8();
    if (!os_log_type_enabled(v122, v123))
    {

LABEL_108:
      v149 = objc_opt_self();
      v172[2] = v172;
      v172[7] = v172 + 106;
      v172[3] = sub_26F44DDDC;
      v150 = swift_continuation_init();
      v172[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0298, &unk_26F4A6C70);
      v172[10] = MEMORY[0x277D85DD0];
      v172[11] = 1107296256;
      v172[12] = sub_26F48828C;
      v172[13] = &block_descriptor_11;
      v172[14] = v150;
      [v149 onDeviceModeEnabledWithDedicatedMachPort:1 completion:v172 + 10];

      return MEMORY[0x282200938](v172 + 2);
    }

    v124 = 7104878;
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v173 = v126;
    *v125 = 134218498;
    *(v125 + 4) = *(v97 + 16);
    *(v125 + 12) = 2082;
    v127 = *(v97 + 16);
    v128 = v97;
    v129 = v121[89];
    v130 = v121[85];
    v131 = v121[84];
    v167 = v128;
    if (v127)
    {
      v132 = *(v121[77] + 80);
      sub_26F3B8DD4(v128 + *(v121[76] + 28) + ((v132 + 32) & ~v132), v129, &qword_2806DEFD8, &qword_26F4A3670);
      if ((*(v130 + 48))(v129, 1, v131) != 1)
      {
        v133 = v121[89];
        v134 = v121[85];
        v169 = v121[84];
        v121[38] = sub_26F49D988();
        v121[39] = v135;
        v121[40] = 45;
        v121[41] = 0xE100000000000000;
        v121[42] = 95;
        v121[43] = 0xE100000000000000;
        sub_26F3BDC0C();
        v136 = sub_26F49FFF8();
        v138 = v137;

        (*(v134 + 8))(v133, v169);
LABEL_104:

        v139 = sub_26F3B38D0(v136, v138, &v173);

        *(v125 + 14) = v139;
        *(v125 + 22) = 2082;
        if (*(v167 + 16))
        {
          v140 = v172[86];
          v141 = v172[85];
          v142 = v172[84];
          v143 = *(v172[77] + 80);
          (*(v141 + 16))(v140, v167 + *(v172[76] + 36) + ((v143 + 32) & ~v143), v142);
          v172[32] = sub_26F49D988();
          v172[33] = v144;
          v172[34] = 45;
          v172[35] = 0xE100000000000000;
          v172[36] = 95;
          v172[37] = 0xE100000000000000;
          sub_26F3BDC0C();
          v145 = sub_26F49FFF8();
          v147 = v146;
          v124 = v145;

          (*(v141 + 8))(v140, v142);
        }

        else
        {
          v147 = 0xE300000000000000;
        }

        v148 = sub_26F3B38D0(v124, v147, &v173);

        *(v125 + 24) = v148;
        _os_log_impl(&dword_26F39E000, v122, v123, "Translate %ld models from '%{public}s' to '%{public}s'", v125, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x274391F70](v126, -1, -1);
        MEMORY[0x274391F70](v125, -1, -1);

        goto LABEL_108;
      }
    }

    else
    {
      (*(v130 + 56))(v129, 1, 1, v131);
    }

    sub_26F3B6B4C(v121[89], &qword_2806DEFD8, &qword_26F4A3670);
    v138 = 0xE300000000000000;
    v136 = 7104878;
    goto LABEL_104;
  }

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v11[101] = __swift_project_value_buffer(v168, qword_280F67ED0);
  v48 = sub_26F49DC88();
  v49 = sub_26F49FDC8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_26F39E000, v48, v49, "Validating target locale due to non-strict", v50, 2u);
    MEMORY[0x274391F70](v50, -1, -1);
  }

  v51 = swift_task_alloc();
  v172[102] = v51;
  *(v51 + 16) = v0;
  v52 = *(MEMORY[0x277D859E0] + 4);
  v53 = swift_task_alloc();
  v172[103] = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB8, &unk_26F4A8E10);
  *v53 = v172;
  v53[1] = sub_26F44CE64;

  return MEMORY[0x2822007B8](v172 + 66, 0, 0, 0xD000000000000018, 0x800000026F4AE660, sub_26F450EC8, v51, v54);
}

uint64_t sub_26F44BABC(uint64_t a1)
{
  v2 = *(*v1 + 784);
  v3 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 792) = a1;

  return MEMORY[0x2822009F8](sub_26F44BBDC, 0, 0);
}

uint64_t sub_26F44BBDC()
{
  v165 = v0;
  v1 = *(v0 + 792);
  v2 = *(v0 + 776);
  v3 = *(v0 + 544);

  *(v0 + 536) = v1;
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDB8();
  v163 = v0;
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_9;
  }

  v6 = *(v0 + 792);
  v7 = v0;
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v164 = v9;
  *v8 = 136446210;
  if (!*(v6 + 16))
  {
    (*(*(v0 + 680) + 56))(*(v0 + 760), 1, 1, *(v0 + 672));
    goto LABEL_7;
  }

  v10 = *(v0 + 760);
  v11 = *(v0 + 680);
  v12 = v7[84];
  v13 = *(v7[77] + 80);
  sub_26F3B8DD4(v7[99] + *(v7[76] + 28) + ((v13 + 32) & ~v13), v7[95], &qword_2806DEFD8, &qword_26F4A3670);
  if ((*(v11 + 48))(v10, 1, v12) == 1)
  {
LABEL_7:
    v18 = 7104878;
    sub_26F3B6B4C(v7[95], &qword_2806DEFD8, &qword_26F4A3670);
    v20 = 0xE300000000000000;
    goto LABEL_8;
  }

  v14 = v7[95];
  v15 = v7[85];
  v16 = v7[84];
  v7[56] = sub_26F49D988();
  v7[57] = v17;
  v7[58] = 45;
  v7[59] = 0xE100000000000000;
  v7[60] = 95;
  v7[61] = 0xE100000000000000;
  sub_26F3BDC0C();
  v18 = sub_26F49FFF8();
  v20 = v19;

  (*(v15 + 8))(v14, v16);
LABEL_8:
  v21 = sub_26F3B38D0(v18, v20, &v164);

  *(v8 + 4) = v21;
  _os_log_impl(&dword_26F39E000, v4, v5, "Source LID result: %{public}s", v8, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v9);
  MEMORY[0x274391F70](v9, -1, -1);
  MEMORY[0x274391F70](v8, -1, -1);

  v0 = v163;
LABEL_9:
  v22 = *(v0 + 792);
  *(v0 + 800) = v22;
  if (*(v0 + 849))
  {
    v162 = v22;
    if (qword_280F66CB0 != -1)
    {
      goto LABEL_103;
    }

    while (1)
    {
      v160 = sub_26F49DCA8();
      __swift_project_value_buffer(v160, qword_280F67ED0);
      v23 = sub_26F49DC88();
      v24 = sub_26F49FDB8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v164 = v26;
        *v25 = 136446210;
        if (*(v162 + 16))
        {
          v27 = *(v0 + 696);
          v28 = *(v0 + 680);
          v156 = *(v0 + 672);
          v29 = *(*(v0 + 616) + 80);
          (*(v28 + 16))(v27, v162 + *(*(v0 + 608) + 36) + ((v29 + 32) & ~v29));
          *(v0 + 400) = sub_26F49D988();
          *(v0 + 408) = v30;
          *(v0 + 416) = 45;
          *(v0 + 424) = 0xE100000000000000;
          *(v0 + 432) = 95;
          *(v0 + 440) = 0xE100000000000000;
          sub_26F3BDC0C();
          v31 = sub_26F49FFF8();
          v33 = v32;

          (*(v28 + 8))(v27, v156);
        }

        else
        {
          v31 = 7104878;
          v33 = 0xE300000000000000;
        }

        v42 = sub_26F3B38D0(v31, v33, &v164);

        *(v25 + 4) = v42;
        _os_log_impl(&dword_26F39E000, v23, v24, "Using strict locales, treating target as %{public}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x274391F70](v26, -1, -1);
        MEMORY[0x274391F70](v25, -1, -1);

        v0 = v163;
      }

      else
      {
      }

      v43 = v162;
      v44 = *(v162 + 16);

      v153 = v44;
      if (v44)
      {
        v45 = 0;
        v46 = *(v0 + 616);
        v47 = *(v0 + 608);
        v48 = MEMORY[0x277D84F90];
        v157 = v47;
        v142 = v46;
        v144 = (*(v0 + 680) + 48);
        while (1)
        {
          if (v45 >= *(v43 + 16))
          {
            __break(1u);
            goto LABEL_101;
          }

          v49 = *(v0 + 664);
          v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
          v51 = *(v46 + 72);
          sub_26F44277C(v43 + v50 + v51 * v45, v49, type metadata accessor for TextModel);
          v52 = *(v0 + 664);
          if (*(v49 + v47[11]))
          {
            goto LABEL_30;
          }

          v57 = (v52 + v47[6]);
          v59 = *v57;
          v58 = v57[1];
          v60 = v59 & 0xFFFFFFFFFFFFLL;
          if (!((v58 & 0x2000000000000000) != 0 ? HIBYTE(v58) & 0xF : v60))
          {
            goto LABEL_30;
          }

          v62 = *(v0 + 744);
          v63 = *(v0 + 672);
          v150 = *(v0 + 664);
          v146 = v47[7];
          sub_26F3B8DD4(v52 + v146, v62, &qword_2806DEFD8, &qword_26F4A3670);
          v148 = *v144;
          LODWORD(v63) = (*v144)(v62, 1, v63);
          sub_26F3B6B4C(v62, &qword_2806DEFD8, &qword_26F4A3670);
          if (v63 == 1)
          {
            break;
          }

          v64 = *(v0 + 736);
          v65 = *(v0 + 672);
          sub_26F3B8DD4(v150 + v146, v64, &qword_2806DEFD8, &qword_26F4A3670);
          LODWORD(v65) = v148(v64, 1, v65);
          sub_26F3B6B4C(v64, &qword_2806DEFD8, &qword_26F4A3670);
          v52 = *(v0 + 664);
          v47 = v157;
          if (v65 != 1)
          {
            v66 = (v52 + v157[8]);
            v67 = v66[1];
            if (v67)
            {
              v68 = *v66 & 0xFFFFFFFFFFFFLL;
              if ((v67 & 0x2000000000000000) != 0 ? HIBYTE(v67) & 0xF : v68)
              {
                v0 = v163;
                goto LABEL_41;
              }
            }
          }

          sub_26F442914(v52, type metadata accessor for TextModel);
          v0 = v163;
          v43 = v162;
          v46 = v142;
LABEL_27:
          if (v153 == ++v45)
          {
            goto LABEL_50;
          }
        }

        v52 = *(v0 + 664);
LABEL_41:
        v43 = v162;
        v46 = v142;
LABEL_30:
        sub_26F450C0C(v52, *(v0 + 648), type metadata accessor for TextModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v164 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26F403444(0, *(v48 + 16) + 1, 1);
          v48 = v164;
        }

        v55 = *(v48 + 16);
        v54 = *(v48 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_26F403444(v54 > 1, v55 + 1, 1);
          v48 = v164;
        }

        v56 = *(v0 + 648);
        *(v48 + 16) = v55 + 1;
        sub_26F450C0C(v56, v48 + v50 + v55 * v51, type metadata accessor for TextModel);
        v47 = v157;
        goto LABEL_27;
      }

      v48 = MEMORY[0x277D84F90];
LABEL_50:

      v158 = *(v48 + 16);
      if (!v158)
      {
        break;
      }

      v70 = 0;
      v154 = v163[77];
      v151 = v48 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
      v0 = v163[74] + 8;
      while (v70 < *(v48 + 16))
      {
        sub_26F44277C(v151 + *(v154 + 72) * v70, v163[82], type metadata accessor for TextModel);
        if (qword_280F66CB0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v160, qword_280F67ED0);
        v76 = sub_26F49DC88();
        v77 = sub_26F49FDC8();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_26F39E000, v76, v77, "Yield untranslatable or already translated)", v78, 2u);
          MEMORY[0x274391F70](v78, -1, -1);
        }

        ++v70;
        v71 = v163[82];
        v72 = v163[80];
        v73 = v163[75];
        v74 = v163[73];
        v75 = v163[69];

        sub_26F44277C(v71, v72, type metadata accessor for TextModel);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
        sub_26F49FC38();
        (*v0)(v73, v74);
        sub_26F442914(v71, type metadata accessor for TextModel);
        v43 = v162;
        if (v158 == v70)
        {
          goto LABEL_58;
        }
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      swift_once();
    }

LABEL_58:

    v0 = *(v43 + 16);

    if (v0)
    {
      v79 = 0;
      v80 = v163;
      v81 = v163[77];
      v82 = v163[76];
      v143 = (v163[85] + 48);
      v83 = MEMORY[0x277D84F90];
      v145 = v81;
      v147 = v0;
      v155 = v82;
      while (1)
      {
        if (v79 >= *(v43 + 16))
        {
          goto LABEL_102;
        }

        v85 = v80[79];
        v86 = (*(v81 + 80) + 32) & ~*(v81 + 80);
        v87 = *(v81 + 72);
        sub_26F44277C(v43 + v86 + v87 * v79, v85, type metadata accessor for TextModel);
        v84 = v80[79];
        if (!*(v85 + v82[11]))
        {
          v88 = (v84 + v82[6]);
          v90 = *v88;
          v89 = v88[1];
          v91 = v90 & 0xFFFFFFFFFFFFLL;
          if ((v89 & 0x2000000000000000) != 0 ? HIBYTE(v89) & 0xF : v91)
          {
            v93 = v80[91];
            v94 = v80;
            v95 = v80[84];
            v96 = v82[7];
            v152 = v84;
            sub_26F3B8DD4(v84 + v96, v93, &qword_2806DEFD8, &qword_26F4A3670);
            v149 = *v143;
            LODWORD(v95) = (*v143)(v93, 1, v95);
            sub_26F3B6B4C(v93, &qword_2806DEFD8, &qword_26F4A3670);
            if (v95 == 1)
            {
              v84 = v94[79];
              v80 = v94;
              v43 = v162;
              v82 = v155;
            }

            else
            {
              v97 = v94[90];
              v98 = v94[84];
              sub_26F3B8DD4(v152 + v96, v97, &qword_2806DEFD8, &qword_26F4A3670);
              LODWORD(v98) = v149(v97, 1, v98);
              sub_26F3B6B4C(v97, &qword_2806DEFD8, &qword_26F4A3670);
              v84 = v94[79];
              v82 = v155;
              if (v98 == 1 || (v99 = (v84 + v155[8]), (v100 = v99[1]) == 0) || ((v101 = *v99 & 0xFFFFFFFFFFFFLL, (v100 & 0x2000000000000000) != 0) ? (v102 = HIBYTE(v100) & 0xF) : (v102 = v101), !v102))
              {
                v80 = v163;
                sub_26F450C0C(v84, v163[78], type metadata accessor for TextModel);
                v103 = swift_isUniquelyReferenced_nonNull_native();
                v164 = v83;
                v43 = v162;
                v81 = v145;
                if ((v103 & 1) == 0)
                {
                  sub_26F403444(0, *(v83 + 16) + 1, 1);
                  v83 = v164;
                }

                v105 = *(v83 + 16);
                v104 = *(v83 + 24);
                if (v105 >= v104 >> 1)
                {
                  sub_26F403444(v104 > 1, v105 + 1, 1);
                  v83 = v164;
                }

                v106 = v163[78];
                *(v83 + 16) = v105 + 1;
                sub_26F450C0C(v106, v83 + v86 + v105 * v87, type metadata accessor for TextModel);
                v0 = v147;
                v82 = v155;
                goto LABEL_63;
              }

              v80 = v163;
              v43 = v162;
            }

            v0 = v147;
            v81 = v145;
          }
        }

        sub_26F442914(v84, type metadata accessor for TextModel);
LABEL_63:
        if (v0 == ++v79)
        {
          goto LABEL_84;
        }
      }
    }

    v83 = MEMORY[0x277D84F90];
    v80 = v163;
LABEL_84:
    v80[104] = v83;
    swift_bridgeObjectRelease_n();
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v80[105] = __swift_project_value_buffer(v160, qword_280F67ED0);
    swift_bridgeObjectRetain_n();
    v107 = sub_26F49DC88();
    v108 = sub_26F49FDB8();
    if (!os_log_type_enabled(v107, v108))
    {

LABEL_97:
      v135 = v80 + 2;
      v136 = v80 + 106;
      v137 = v80 + 10;
      v138 = v80;
      v139 = objc_opt_self();
      v138[2] = v138;
      v138[7] = v136;
      v138[3] = sub_26F44DDDC;
      v140 = swift_continuation_init();
      v138[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0298, &unk_26F4A6C70);
      v138[10] = MEMORY[0x277D85DD0];
      v138[11] = 1107296256;
      v138[12] = sub_26F48828C;
      v138[13] = &block_descriptor_11;
      v138[14] = v140;
      [v139 onDeviceModeEnabledWithDedicatedMachPort:1 completion:v137];

      return MEMORY[0x282200938](v135);
    }

    v109 = 7104878;
    v110 = v80;
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v164 = v112;
    *v111 = 134218498;
    *(v111 + 4) = *(v83 + 16);
    *(v111 + 12) = 2082;
    v113 = *(v83 + 16);
    v114 = v83;
    v115 = v110[89];
    v116 = v110[85];
    v117 = v110[84];
    v159 = v114;
    if (v113)
    {
      v118 = *(v110[77] + 80);
      sub_26F3B8DD4(v114 + *(v110[76] + 28) + ((v118 + 32) & ~v118), v115, &qword_2806DEFD8, &qword_26F4A3670);
      if ((*(v116 + 48))(v115, 1, v117) != 1)
      {
        v119 = v110[89];
        v120 = v110[85];
        v161 = v110[84];
        v110[38] = sub_26F49D988();
        v110[39] = v121;
        v110[40] = 45;
        v110[41] = 0xE100000000000000;
        v110[42] = 95;
        v110[43] = 0xE100000000000000;
        sub_26F3BDC0C();
        v122 = sub_26F49FFF8();
        v124 = v123;

        (*(v120 + 8))(v119, v161);
LABEL_93:

        v125 = sub_26F3B38D0(v122, v124, &v164);

        *(v111 + 14) = v125;
        *(v111 + 22) = 2082;
        if (*(v159 + 16))
        {
          v126 = v163[86];
          v127 = v163[85];
          v128 = v163[84];
          v129 = *(v163[77] + 80);
          (*(v127 + 16))(v126, v159 + *(v163[76] + 36) + ((v129 + 32) & ~v129), v128);
          v163[32] = sub_26F49D988();
          v163[33] = v130;
          v163[34] = 45;
          v163[35] = 0xE100000000000000;
          v163[36] = 95;
          v163[37] = 0xE100000000000000;
          sub_26F3BDC0C();
          v131 = sub_26F49FFF8();
          v133 = v132;
          v109 = v131;

          (*(v127 + 8))(v126, v128);
        }

        else
        {
          v133 = 0xE300000000000000;
        }

        v134 = sub_26F3B38D0(v109, v133, &v164);

        *(v111 + 24) = v134;
        _os_log_impl(&dword_26F39E000, v107, v108, "Translate %ld models from '%{public}s' to '%{public}s'", v111, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x274391F70](v112, -1, -1);
        MEMORY[0x274391F70](v111, -1, -1);

        v80 = v163;
        goto LABEL_97;
      }
    }

    else
    {
      (*(v116 + 56))(v115, 1, 1, v117);
    }

    sub_26F3B6B4C(v110[89], &qword_2806DEFD8, &qword_26F4A3670);
    v124 = 0xE300000000000000;
    v122 = 7104878;
    goto LABEL_93;
  }

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v34 = sub_26F49DCA8();
  *(v0 + 808) = __swift_project_value_buffer(v34, qword_280F67ED0);
  v35 = sub_26F49DC88();
  v36 = sub_26F49FDC8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_26F39E000, v35, v36, "Validating target locale due to non-strict", v37, 2u);
    MEMORY[0x274391F70](v37, -1, -1);
  }

  v38 = swift_task_alloc();
  v163[102] = v38;
  *(v38 + 16) = v22;
  v39 = *(MEMORY[0x277D859E0] + 4);
  v40 = swift_task_alloc();
  v163[103] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB8, &unk_26F4A8E10);
  *v40 = v163;
  v40[1] = sub_26F44CE64;

  return MEMORY[0x2822007B8](v163 + 66, 0, 0, 0xD000000000000018, 0x800000026F4AE660, sub_26F450EC8, v38, v41);
}

uint64_t sub_26F44CE64()
{
  v1 = *(*v0 + 824);
  v2 = *(*v0 + 816);
  v3 = *(*v0 + 800);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_26F44CF98, 0, 0);
}

uint64_t sub_26F44CF98()
{
  v129 = v0;
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[66];
  swift_beginAccess();
  v0[67] = v4;

  v5 = sub_26F49DC88();
  v6 = sub_26F49FDB8();
  v126 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v4;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v128 = v9;
    *v8 = 136446210;
    if (*(v7 + 16))
    {
      v10 = v0[88];
      v11 = v0[85];
      v121 = v0[84];
      v12 = *(v0[77] + 80);
      (*(v11 + 16))(v10, v7 + *(v0[76] + 36) + ((v12 + 32) & ~v12));
      v0[44] = sub_26F49D988();
      v0[45] = v13;
      v0[46] = 45;
      v0[47] = 0xE100000000000000;
      v0[48] = 95;
      v0[49] = 0xE100000000000000;
      sub_26F3BDC0C();
      v14 = sub_26F49FFF8();
      v16 = v15;

      (*(v11 + 8))(v10, v121);
    }

    else
    {
      v14 = 7104878;
      v16 = 0xE300000000000000;
    }

    v1 = sub_26F3B38D0(v14, v16, &v128);

    *(v8 + 4) = v1;
    _os_log_impl(&dword_26F39E000, v5, v6, "Validated targetLocale to %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x274391F70](v9, -1, -1);
    MEMORY[0x274391F70](v8, -1, -1);

    v4 = v126;
  }

  else
  {
  }

  v17 = *(v4 + 16);

  v118 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = v0[77];
    v20 = v0[76];
    v21 = MEMORY[0x277D84F90];
    v122 = v20;
    v107 = v19;
    v108 = (v0[85] + 48);
    while (1)
    {
      if (v18 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_83;
      }

      v22 = v0[83];
      v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v1 = *(v19 + 72);
      sub_26F44277C(v4 + v23 + v1 * v18, v22, type metadata accessor for TextModel);
      v24 = v0[83];
      if (*(v22 + v20[11]))
      {
        goto LABEL_13;
      }

      v29 = (v24 + v20[6]);
      v31 = *v29;
      v30 = v29[1];
      v32 = v31 & 0xFFFFFFFFFFFFLL;
      if (!((v30 & 0x2000000000000000) != 0 ? HIBYTE(v30) & 0xF : v32))
      {
        goto LABEL_13;
      }

      v34 = v0[93];
      v35 = v0[84];
      v115 = v0[83];
      v110 = v20[7];
      sub_26F3B8DD4(v24 + v110, v34, &qword_2806DEFD8, &qword_26F4A3670);
      v112 = *v108;
      LODWORD(v35) = (*v108)(v34, 1, v35);
      sub_26F3B6B4C(v34, &qword_2806DEFD8, &qword_26F4A3670);
      if (v35 == 1)
      {
        break;
      }

      v36 = v0[92];
      v37 = v0[84];
      sub_26F3B8DD4(v115 + v110, v36, &qword_2806DEFD8, &qword_26F4A3670);
      LODWORD(v37) = v112(v36, 1, v37);
      sub_26F3B6B4C(v36, &qword_2806DEFD8, &qword_26F4A3670);
      v24 = v0[83];
      v20 = v122;
      if (v37 != 1)
      {
        v38 = (v24 + v122[8]);
        v39 = v38[1];
        if (v39)
        {
          v40 = *v38 & 0xFFFFFFFFFFFFLL;
          if ((v39 & 0x2000000000000000) != 0 ? HIBYTE(v39) & 0xF : v40)
          {
            goto LABEL_24;
          }
        }
      }

      sub_26F442914(v24, type metadata accessor for TextModel);
      v4 = v126;
      v19 = v107;
LABEL_10:
      if (v118 == ++v18)
      {
        goto LABEL_33;
      }
    }

    v24 = v0[83];
LABEL_24:
    v4 = v126;
    v19 = v107;
LABEL_13:
    sub_26F450C0C(v24, v0[81], type metadata accessor for TextModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26F403444(0, *(v21 + 16) + 1, 1);
      v21 = v128;
    }

    v27 = *(v21 + 16);
    v26 = *(v21 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_26F403444(v26 > 1, v27 + 1, 1);
      v21 = v128;
    }

    v28 = v0[81];
    *(v21 + 16) = v27 + 1;
    sub_26F450C0C(v28, v21 + v23 + v27 * v1, type metadata accessor for TextModel);
    v20 = v122;
    goto LABEL_10;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_33:

  v123 = *(v21 + 16);
  if (v123)
  {
    v42 = 0;
    v119 = v0[77];
    v113 = (v0[74] + 8);
    v116 = v21 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    while (v42 < *(v21 + 16))
    {
      sub_26F44277C(v116 + *(v119 + 72) * v42, v0[82], type metadata accessor for TextModel);
      if (qword_280F66CB0 != -1)
      {
        swift_once();
      }

      v47 = sub_26F49DCA8();
      __swift_project_value_buffer(v47, qword_280F67ED0);
      v48 = sub_26F49DC88();
      v49 = sub_26F49FDC8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_26F39E000, v48, v49, "Yield untranslatable or already translated)", v50, 2u);
        MEMORY[0x274391F70](v50, -1, -1);
      }

      ++v42;
      v43 = v0[82];
      v44 = v0[80];
      v45 = v0[75];
      v46 = v0[73];
      v1 = v0[69];

      sub_26F44277C(v43, v44, type metadata accessor for TextModel);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A18, &unk_26F4A8A30);
      sub_26F49FC38();
      (*v113)(v45, v46);
      sub_26F442914(v43, type metadata accessor for TextModel);
      v4 = v126;
      if (v123 == v42)
      {
        goto LABEL_41;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_41:

  v51 = *(v4 + 16);

  if (v51)
  {
    v52 = 0;
    v53 = v0[77];
    v54 = v0[76];
    v109 = (v0[85] + 48);
    v1 = MEMORY[0x277D84F90];
    v111 = v53;
    v114 = v51;
    v120 = v54;
    while (1)
    {
      if (v52 >= *(v4 + 16))
      {
        goto LABEL_84;
      }

      v56 = v0[79];
      v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v58 = *(v53 + 72);
      sub_26F44277C(v4 + v57 + v58 * v52, v56, type metadata accessor for TextModel);
      v55 = v0[79];
      if (!*(v56 + *(v54 + 44)))
      {
        v59 = (v55 + *(v54 + 24));
        v61 = *v59;
        v60 = v59[1];
        v62 = v61 & 0xFFFFFFFFFFFFLL;
        if ((v60 & 0x2000000000000000) != 0 ? HIBYTE(v60) & 0xF : v62)
        {
          v124 = v1;
          v64 = v0[91];
          v65 = v54;
          v66 = v0[84];
          v67 = *(v65 + 28);
          v117 = v0[79];
          sub_26F3B8DD4(v55 + v67, v64, &qword_2806DEFD8, &qword_26F4A3670);
          v68 = *v109;
          LODWORD(v66) = (*v109)(v64, 1, v66);
          sub_26F3B6B4C(v64, &qword_2806DEFD8, &qword_26F4A3670);
          if (v66 == 1)
          {
            v55 = v0[79];
            v1 = v124;
            v4 = v126;
            v51 = v114;
            v54 = v120;
          }

          else
          {
            v69 = v0[90];
            v70 = v0[84];
            sub_26F3B8DD4(v117 + v67, v69, &qword_2806DEFD8, &qword_26F4A3670);
            LODWORD(v70) = v68(v69, 1, v70);
            sub_26F3B6B4C(v69, &qword_2806DEFD8, &qword_26F4A3670);
            v55 = v0[79];
            v71 = v70 == 1;
            v54 = v120;
            if (v71 || (v72 = (v55 + *(v120 + 32)), (v73 = v72[1]) == 0) || ((v74 = *v72 & 0xFFFFFFFFFFFFLL, (v73 & 0x2000000000000000) != 0) ? (v75 = HIBYTE(v73) & 0xF) : (v75 = v74), !v75))
            {
              sub_26F450C0C(v55, v0[78], type metadata accessor for TextModel);
              v1 = v124;
              v76 = swift_isUniquelyReferenced_nonNull_native();
              v128 = v124;
              v4 = v126;
              v53 = v111;
              if ((v76 & 1) == 0)
              {
                sub_26F403444(0, *(v124 + 16) + 1, 1);
                v1 = v128;
              }

              v78 = *(v1 + 16);
              v77 = *(v1 + 24);
              if (v78 >= v77 >> 1)
              {
                sub_26F403444(v77 > 1, v78 + 1, 1);
                v1 = v128;
              }

              v79 = v0[78];
              *(v1 + 16) = v78 + 1;
              sub_26F450C0C(v79, v1 + v57 + v78 * v58, type metadata accessor for TextModel);
              v51 = v114;
              v54 = v120;
              goto LABEL_46;
            }

            v1 = v124;
            v4 = v126;
            v51 = v114;
          }

          v53 = v111;
        }
      }

      sub_26F442914(v55, type metadata accessor for TextModel);
LABEL_46:
      if (v51 == ++v52)
      {
        goto LABEL_67;
      }
    }
  }

  v1 = MEMORY[0x277D84F90];
LABEL_67:
  v0[104] = v1;
  swift_bridgeObjectRelease_n();
  if (qword_280F66CB0 != -1)
  {
LABEL_85:
    swift_once();
  }

  v80 = sub_26F49DCA8();
  v0[105] = __swift_project_value_buffer(v80, qword_280F67ED0);
  swift_bridgeObjectRetain_n();
  v81 = sub_26F49DC88();
  v82 = sub_26F49FDB8();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v128 = v84;
    *v83 = 134218498;
    *(v83 + 4) = *(v1 + 16);
    *(v83 + 12) = 2082;
    v85 = v0[89];
    v86 = v0[85];
    v87 = v0[84];
    if (*(v1 + 16))
    {
      v88 = *(v0[77] + 80);
      sub_26F3B8DD4(v1 + *(v0[76] + 28) + ((v88 + 32) & ~v88), v0[89], &qword_2806DEFD8, &qword_26F4A3670);
      if ((*(v86 + 48))(v85, 1, v87) != 1)
      {
        v89 = v0[89];
        v90 = v0[85];
        v127 = v0[84];
        v0[38] = sub_26F49D988();
        v0[39] = v91;
        v0[40] = 45;
        v0[41] = 0xE100000000000000;
        v0[42] = 95;
        v0[43] = 0xE100000000000000;
        sub_26F3BDC0C();
        v92 = sub_26F49FFF8();
        v94 = v93;

        (*(v90 + 8))(v89, v127);
LABEL_75:

        v95 = sub_26F3B38D0(v92, v94, &v128);

        *(v83 + 14) = v95;
        *(v83 + 22) = 2082;
        if (*(v1 + 16))
        {
          v96 = v0[86];
          v97 = v0[85];
          v125 = v0[84];
          v98 = *(v0[77] + 80);
          (*(v97 + 16))(v96, v1 + *(v0[76] + 36) + ((v98 + 32) & ~v98));
          v0[32] = sub_26F49D988();
          v0[33] = v99;
          v0[34] = 45;
          v0[35] = 0xE100000000000000;
          v0[36] = 95;
          v0[37] = 0xE100000000000000;
          sub_26F3BDC0C();
          v100 = sub_26F49FFF8();
          v102 = v101;

          (*(v97 + 8))(v96, v125);
        }

        else
        {
          v102 = 0xE300000000000000;
          v100 = 7104878;
        }

        v103 = sub_26F3B38D0(v100, v102, &v128);

        *(v83 + 24) = v103;
        _os_log_impl(&dword_26F39E000, v81, v82, "Translate %ld models from '%{public}s' to '%{public}s'", v83, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x274391F70](v84, -1, -1);
        MEMORY[0x274391F70](v83, -1, -1);

        goto LABEL_79;
      }
    }

    else
    {
      (*(v86 + 56))(v0[89], 1, 1, v0[84]);
    }

    sub_26F3B6B4C(v0[89], &qword_2806DEFD8, &qword_26F4A3670);
    v94 = 0xE300000000000000;
    v92 = 7104878;
    goto LABEL_75;
  }

LABEL_79:
  v104 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 106;
  v0[3] = sub_26F44DDDC;
  v105 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0298, &unk_26F4A6C70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F48828C;
  v0[13] = &block_descriptor_11;
  v0[14] = v105;
  [v104 onDeviceModeEnabledWithDedicatedMachPort:1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}