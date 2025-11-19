unint64_t sub_1D8D09354()
{
  result = qword_1ECAB2290;
  if (!qword_1ECAB2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2290);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation15MediaIdentifierO(uint64_t a1)
{
  if ((*(a1 + 32) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 32) & 0xF;
  }
}

uint64_t storeEnumTagSinglePayload for FairPlayKeyLoadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for EpisodeDownloadReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FairPlayKeyLoadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for EpisodeDownloadReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t MediaIdentifier.encode(to:)(void *a1)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA320, &qword_1D91B3E20);
  v66 = *(v80 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = v62 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA328, &qword_1D91B3E28);
  v65 = *(v79 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = v62 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA330, &qword_1D91B3E30);
  v64 = *(v76 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = v62 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA338, &qword_1D91B3E38);
  v63 = *(v74 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA340, &qword_1D91B3E40);
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v84 = v62 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA348, &qword_1D91B3E48);
  v71 = *(v70 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v83 = v62 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA350, &qword_1D91B3E50);
  v72 = *(v69 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v18 = v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA358, &qword_1D91B3E58);
  v82 = *(v19 - 8);
  v20 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v62 - v21;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA360, &qword_1D91B3E60);
  v67 = *(v68 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v25 = v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA368, &qword_1D91B3E68);
  v88 = *(v26 - 8);
  v89 = v26;
  v27 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v1[1];
  v87 = *v1;
  v81 = v28;
  v29 = v1[3];
  v62[2] = v1[2];
  v62[1] = v29;
  v30 = *(v1 + 32);
  v32 = a1[3];
  v31 = a1[4];
  v33 = a1;
  v35 = v62 - v34;
  __swift_project_boxed_opaque_existential_1(v33, v32);
  sub_1D8CFE96C();
  v91 = v35;
  sub_1D9179F1C();
  if (v30 > 3)
  {
    if (v30 <= 5)
    {
      if (v30 == 4)
      {
        LOBYTE(v93) = 5;
        sub_1D90BEC24();
        v36 = v73;
        v37 = v89;
        sub_1D917993C();
        LOBYTE(v93) = 0;
        v38 = v74;
        v55 = v90;
        sub_1D91799BC();
        if (!v55)
        {
          LOBYTE(v93) = 1;
          sub_1D917994C();
        }

        v39 = &v93;
      }

      else
      {
        LOBYTE(v93) = 6;
        sub_1D90BEB48();
        v36 = v75;
        v37 = v89;
        sub_1D917993C();
        v93 = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3A8, &unk_1D91B3E80);
        sub_1D90BEB9C(&qword_1ECABA3B0, &qword_1ECAB2C20);
        v38 = v76;
        sub_1D91799FC();
        v39 = &v94;
      }
    }

    else if (v30 == 6)
    {
      LOBYTE(v93) = 7;
      sub_1D90BEAF4();
      v36 = v77;
      v37 = v89;
      sub_1D917993C();
      v93 = v87;
      v92 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87E0, &qword_1D91A3618);
      sub_1D90BEF54(&qword_1ECABA398);
      v38 = v79;
      v56 = v90;
      sub_1D91799FC();
      if (!v56)
      {
        LOBYTE(v93) = 1;
        sub_1D91799AC();
      }

      v39 = &v95;
    }

    else
    {
      if (v30 != 7)
      {
        LOBYTE(v93) = 0;
        sub_1D8CFE9C0();
        v60 = v89;
        v61 = v91;
        sub_1D917993C();
        (*(v67 + 8))(v25, v68);
        return (*(v88 + 8))(v61, v60);
      }

      LOBYTE(v93) = 8;
      sub_1D90BEA4C();
      v36 = v78;
      v37 = v89;
      sub_1D917993C();
      v93 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA378, &unk_1D91B3E70);
      sub_1D90BEE88(&qword_1ECABA380, sub_1D90BEAA0);
      v38 = v80;
      sub_1D91799FC();
      v39 = &v96;
    }

    (*(*(v39 - 32) + 8))(v36, v38);
    v53 = *(v88 + 8);
    v54 = v91;
    v59 = v37;
    return v53(v54, v59);
  }

  v40 = v22;
  v42 = v82;
  v41 = v83;
  v43 = v84;
  v44 = v85;
  v45 = v86;
  if (v30 > 1)
  {
    v49 = v89;
    if (v30 == 2)
    {
      LOBYTE(v93) = 3;
      sub_1D90BECCC();
      v50 = v41;
      v51 = v91;
      sub_1D917993C();
      v93 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
      sub_1D90906C8(&qword_1ECAAFEE8);
      v52 = v70;
      sub_1D91799FC();
      (*(v71 + 8))(v50, v52);
      v53 = *(v88 + 8);
      v54 = v51;
    }

    else
    {
      LOBYTE(v93) = 4;
      sub_1D90BEC78();
      v58 = v91;
      sub_1D917993C();
      sub_1D91799BC();
      (*(v44 + 8))(v43, v45);
      v53 = *(v88 + 8);
      v54 = v58;
    }

    v59 = v49;
    return v53(v54, v59);
  }

  v46 = v89;
  if (v30)
  {
    LOBYTE(v93) = 2;
    sub_1D90BED20();
    v47 = v91;
    sub_1D917993C();
    v93 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
    sub_1D90BF004(&qword_1ECABA3D8, sub_1D8EF1720);
    v57 = v69;
    sub_1D91799FC();
    (*(v72 + 8))(v18, v57);
  }

  else
  {
    LOBYTE(v93) = 1;
    sub_1D90BED74();
    v47 = v91;
    sub_1D917993C();
    v93 = v87;
    sub_1D8EF1720();
    sub_1D91799FC();
    (*(v42 + 8))(v40, v19);
  }

  return (*(v88 + 8))(v47, v46);
}

unint64_t sub_1D8D0A340()
{
  result = qword_1ECAB2298;
  if (!qword_1ECAB2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2298);
  }

  return result;
}

unint64_t sub_1D8D0A398()
{
  result = qword_1ECAB22A0;
  if (!qword_1ECAB22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22A0);
  }

  return result;
}

unint64_t sub_1D8D0A400()
{
  result = qword_1ECAB2340;
  if (!qword_1ECAB2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2340);
  }

  return result;
}

unint64_t sub_1D8D0A458()
{
  result = qword_1ECAB2348;
  if (!qword_1ECAB2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2348);
  }

  return result;
}

unint64_t sub_1D8D0A4C0()
{
  result = qword_1ECAB22C8;
  if (!qword_1ECAB22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22C8);
  }

  return result;
}

unint64_t sub_1D8D0A518()
{
  result = qword_1ECAB22D0;
  if (!qword_1ECAB22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22D0);
  }

  return result;
}

unint64_t sub_1D8D0A580()
{
  result = qword_1ECAB22E8;
  if (!qword_1ECAB22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22E8);
  }

  return result;
}

unint64_t sub_1D8D0A5D8()
{
  result = qword_1ECAB22F0;
  if (!qword_1ECAB22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22F0);
  }

  return result;
}

unint64_t sub_1D8D0A660()
{
  result = qword_1ECAB22D8;
  if (!qword_1ECAB22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22D8);
  }

  return result;
}

unint64_t sub_1D8D0A6B8()
{
  result = qword_1ECAB22E0;
  if (!qword_1ECAB22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22E0);
  }

  return result;
}

unint64_t sub_1D8D0A714()
{
  result = qword_1ECAB2300;
  if (!qword_1ECAB2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2300);
  }

  return result;
}

unint64_t sub_1D8D0A780()
{
  result = qword_1ECAB2318;
  if (!qword_1ECAB2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2318);
  }

  return result;
}

uint64_t sub_1D8D0A7E8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7972617262696CLL;
    v6 = 0x7365646F73697065;
    if (a1 != 2)
    {
      v6 = 0x6970456C61636F6CLL;
    }

    if (a1)
    {
      v5 = 0x74736163646F70;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746F687370616E73;
    v2 = 0x657551616964656DLL;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646F506C61636F6CLL;
    if (a1 != 4)
    {
      v3 = 0x6E6F6974617473;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t getEnumTagSinglePayload for FileFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D8D0A9B0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x736E6F6974706FLL;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x766C6F7365527369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x496C616974696E69;
  if (v1 != 1)
  {
    v5 = 0x747865746E6F63;
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

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation15MediaIdentifierOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 8)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation19EpisodeListSettingsVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8D0AAA0()
{
  result = qword_1ECAB24C8;
  if (!qword_1ECAB24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24C8);
  }

  return result;
}

unint64_t sub_1D8D0AAF8()
{
  result = qword_1ECAB24D0;
  if (!qword_1ECAB24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24D0);
  }

  return result;
}

unint64_t sub_1D8D0AB4C()
{
  result = qword_1ECAB24D8;
  if (!qword_1ECAB24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24D8);
  }

  return result;
}

unint64_t sub_1D8D0ABA0()
{
  result = qword_1ECAB24E0;
  if (!qword_1ECAB24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24E0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ArtworkRequest.SubsampleFactor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkRequest.SubsampleFactor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t PlaybackIntent.Origin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA038, &qword_1D91B1ED0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA040, &qword_1D91B1ED8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA048, &qword_1D91B1EE0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA050, &qword_1D91B1EE8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA058, &qword_1D91B1EF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8CFF13C();
  sub_1D9179F1C();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1D90A9CAC();
      v24 = v33;
      sub_1D917993C();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1D90A9C58();
      v24 = v36;
      sub_1D917993C();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1D8D0B298();
    v24 = v30;
    sub_1D917993C();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1D90A9D00();
  sub_1D917993C();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1D8D0B184()
{
  result = qword_1ECAB2530;
  if (!qword_1ECAB2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2530);
  }

  return result;
}

unint64_t sub_1D8D0B1F0()
{
  result = qword_1ECAB2560;
  if (!qword_1ECAB2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2560);
  }

  return result;
}

unint64_t sub_1D8D0B244()
{
  result = qword_1ECAB2568;
  if (!qword_1ECAB2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2568);
  }

  return result;
}

unint64_t sub_1D8D0B298()
{
  result = qword_1ECAB2520;
  if (!qword_1ECAB2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2520);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CategoriesSyncUtil.CategoriesSyncError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D8D0B37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_1D8D092C0(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_1D8D0B390()
{
  result = qword_1ECAB1E60;
  if (!qword_1ECAB1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E60);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for EpisodeListSettings.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EpisodeListSettings.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t EpisodeListType.encode(to:)(void *a1)
{
  v2 = v1;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E90, &qword_1D919CCD0);
  v125 = *(v126 - 8);
  v4 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v120 - v5;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E98, &qword_1D919CCD8);
  v147 = *(v162 - 8);
  v6 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v120 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EA0, &qword_1D919CCE0);
  v163 = *(v8 - 8);
  v164 = v8;
  v9 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v161 = &v120 - v10;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EA8, &qword_1D919CCE8);
  v146 = *(v159 - 8);
  v11 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v120 - v12;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EB0, &qword_1D919CCF0);
  v122 = *(v123 - 8);
  v13 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v120 - v14;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EB8, &qword_1D919CCF8);
  v128 = *(v129 - 8);
  v15 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v120 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EC0, &qword_1D919CD00);
  v131 = *(v132 - 8);
  v17 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v120 - v18;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EC8, &qword_1D919CD08);
  v134 = *(v135 - 8);
  v19 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v120 - v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7ED0, &qword_1D919CD10);
  v137 = *(v138 - 8);
  v21 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v120 - v22;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7ED8, &qword_1D919CD18);
  v153 = *(v154 - 8);
  v23 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v120 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EE0, &qword_1D919CD20);
  v156 = *(v25 - 8);
  v157 = v25;
  v26 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v155 = &v120 - v27;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EE8, &qword_1D919CD28);
  v151 = *(v150 - 8);
  v28 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v170 = &v120 - v29;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EF0, &qword_1D919CD30);
  v145 = *(v169 - 8);
  v30 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v120 - v31;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EF8, &qword_1D919CD38);
  v140 = *(v141 - 8);
  v32 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v120 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7F00, &qword_1D919CD40);
  v166 = *(v34 - 8);
  v167 = v34;
  v35 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v165 = &v120 - v36;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7F08, &qword_1D919CD48);
  v143 = *(v144 - 8);
  v37 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v120 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7F10, &qword_1D919CD50);
  v149 = *(v39 - 8);
  v40 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v120 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7F18, &qword_1D919CD58);
  v148 = *(v43 - 8);
  v44 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v120 - v45;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7F20, &unk_1D919CD60);
  v171 = *(v173 - 8);
  v47 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v49 = &v120 - v48;
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8CFFEF4();
  v174 = v49;
  sub_1D9179F1C();
  v51 = *(v2 + 1);
  v52 = *(v2 + 2);
  v53 = *(v2 + 3);
  v54 = v2[64];
  v55 = *v2 | (v2[1] << 8) | (*(v2 + 2) << 16) | (*(v2 + 3) << 48);
  if (v54 <= 4)
  {
    v164 = v39;
    v66 = v165;
    v65 = v166;
    v67 = v167;
    v68 = v168;
    v70 = v169;
    v69 = v170;
    if (v54 <= 1)
    {
      v83 = v55;
      if (v54)
      {
        LOBYTE(v175) = 1;
        sub_1D8F99804();
        v99 = v42;
        v101 = v173;
        v100 = v174;
        sub_1D917993C();
        v175 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
        sub_1D8F9C788(&qword_1ECAB7FB8, &qword_1ECAB2CB0);
        v102 = v164;
        sub_1D91799FC();
        (*(v149 + 8))(v99, v102);
        return (*(v171 + 8))(v100, v101);
      }

      else
      {
        LOBYTE(v175) = 0;
        sub_1D8F99858();
        v84 = v46;
        v86 = v173;
        v85 = v174;
        sub_1D917993C();
        v175 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
        sub_1D8F9C788(&qword_1ECAB7FB8, &qword_1ECAB2CB0);
        sub_1D91799FC();
        (*(v148 + 8))(v84, v43);
        return (*(v171 + 8))(v85, v86);
      }
    }

    else
    {
      v71 = v172;
      v72 = v174;
      if (v54 == 2)
      {
        LOBYTE(v175) = 3;
        sub_1D8F9975C();
        v87 = v173;
        sub_1D917993C();
        sub_1D91799BC();
        (*(v65 + 8))(v66, v67);
        return (*(v171 + 8))(v72, v87);
      }

      else
      {
        v73 = v173;
        if (v54 == 3)
        {
          LOBYTE(v175) = 5;
          sub_1D8F996B4();
          v74 = v174;
          sub_1D917993C();
          sub_1D91799BC();
          (*(v145 + 8))(v68, v70);
          return (*(v171 + 8))(v74, v73);
        }

        else
        {
          v96 = v52;
          LOBYTE(v175) = 6;
          sub_1D8F99660();
          v97 = v174;
          sub_1D917993C();
          LOBYTE(v175) = 0;
          v98 = v150;
          sub_1D91799BC();
          if (v71)
          {
            (*(v151 + 8))(v69, v98);
            return (*(v171 + 8))(v97, v173);
          }

          else
          {
            v110 = v173;
            v175 = v96;
            v177 = 1;
            type metadata accessor for MTEpisodeTypeFilter(0);
            sub_1D8F9C824(&qword_1ECAB7F88, type metadata accessor for MTEpisodeTypeFilter);
            sub_1D91799FC();
            LOBYTE(v175) = 2;
            sub_1D917995C();
            (*(v151 + 8))(v69, v98);
            return (*(v171 + 8))(v174, v110);
          }
        }
      }
    }
  }

  else
  {
    v57 = *(v2 + 4);
    v56 = *(v2 + 5);
    v59 = *(v2 + 6);
    v58 = *(v2 + 7);
    if (v2[64] > 7u)
    {
      v76 = *(v2 + 2);
      v77 = v53;
      v78 = v173;
      if (v54 == 8)
      {
        LOBYTE(v175) = 15;
        sub_1D8F9936C();
        v92 = v161;
        v93 = v174;
        sub_1D917993C();
        LOBYTE(v175) = 0;
        v94 = v164;
        v95 = v172;
        sub_1D91799BC();
        if (!v95)
        {
          v175 = v76;
          v176 = v77;
          v177 = 1;
          sub_1D8F993C0();
          sub_1D91799FC();
        }

        (*(v163 + 8))(v92, v94);
        return (*(v171 + 8))(v93, v78);
      }

      else
      {
        v79 = v174;
        if (v54 == 9)
        {
          LOBYTE(v175) = 16;
          sub_1D8F99318();
          v80 = v79;
          v81 = v160;
          sub_1D917993C();
          v82 = v162;
          sub_1D91799BC();
          (*(v147 + 8))(v81, v82);
          return (*(v171 + 8))(v80, v78);
        }

        else
        {
          v105 = v52 | v51 | v53;
          if (v105 | v57 | v56 | v55 | v59 | v58)
          {
            v106 = v105 | v57 | v56 | v59 | v58;
            if (v55 != 1 || v106)
            {
              if (v55 != 2 || v106)
              {
                if (v55 != 3 || v106)
                {
                  if (v55 != 4 || v106)
                  {
                    if (v55 != 5 || v106)
                    {
                      if (v55 != 6 || v106)
                      {
                        LOBYTE(v175) = 17;
                        sub_1D8F992C4();
                        v119 = v124;
                        v108 = v78;
                        sub_1D917993C();
                        (*(v125 + 8))(v119, v126);
                      }

                      else
                      {
                        LOBYTE(v175) = 13;
                        sub_1D8F99468();
                        v118 = v121;
                        v108 = v78;
                        sub_1D917993C();
                        (*(v122 + 8))(v118, v123);
                      }
                    }

                    else
                    {
                      LOBYTE(v175) = 12;
                      sub_1D8F994BC();
                      v117 = v127;
                      v108 = v78;
                      sub_1D917993C();
                      (*(v128 + 8))(v117, v129);
                    }
                  }

                  else
                  {
                    LOBYTE(v175) = 11;
                    sub_1D8F99510();
                    v115 = v130;
                    v108 = v78;
                    sub_1D917993C();
                    (*(v131 + 8))(v115, v132);
                  }
                }

                else
                {
                  LOBYTE(v175) = 10;
                  sub_1D8F99564();
                  v113 = v133;
                  v108 = v78;
                  sub_1D917993C();
                  (*(v134 + 8))(v113, v135);
                }
              }

              else
              {
                LOBYTE(v175) = 9;
                sub_1D8F995B8();
                v112 = v136;
                v108 = v78;
                sub_1D917993C();
                (*(v137 + 8))(v112, v138);
              }
            }

            else
            {
              LOBYTE(v175) = 4;
              sub_1D8F99708();
              v107 = v139;
              v108 = v78;
              sub_1D917993C();
              (*(v140 + 8))(v107, v141);
            }

            return (*(v171 + 8))(v79, v108);
          }

          else
          {
            LOBYTE(v175) = 2;
            sub_1D8F997B0();
            v111 = v142;
            sub_1D917993C();
            (*(v143 + 8))(v111, v144);
            return (*(v171 + 8))(v79, v78);
          }
        }
      }
    }

    else
    {
      v60 = v173;
      if (v54 == 5)
      {
        v169 = *(v2 + 2);
        v170 = v53;
        LOBYTE(v175) = 7;
        sub_1D8F9960C();
        v88 = v155;
        v89 = v174;
        sub_1D917993C();
        LOBYTE(v175) = 0;
        v90 = v157;
        v91 = v172;
        sub_1D91799BC();
        if (v91)
        {
          (*(v156 + 8))(v88, v90);
          return (*(v171 + 8))(v89, v173);
        }

        else
        {
          v109 = v173;
          LOBYTE(v175) = 1;
          sub_1D91799BC();
          LOBYTE(v175) = 2;
          v114 = v88;
          sub_1D917994C();
          LOBYTE(v175) = 3;
          sub_1D91799BC();
          v116 = v174;
          (*(v156 + 8))(v114, v90);
          return (*(v171 + 8))(v116, v109);
        }
      }

      else
      {
        if (v54 != 6)
        {
          LOBYTE(v175) = 14;
          sub_1D8F99414();
          v103 = v158;
          v62 = v174;
          sub_1D917993C();
          v104 = v159;
          sub_1D91799BC();
          (*(v146 + 8))(v103, v104);
          return (*(v171 + 8))(v62, v60);
        }

        LOBYTE(v175) = 8;
        sub_1D8CFFF48();
        v61 = v152;
        v62 = v174;
        sub_1D917993C();
        LOBYTE(v175) = 0;
        v63 = v154;
        v64 = v172;
        sub_1D91799CC();
        if (v64)
        {
          (*(v153 + 8))(v61, v63);
          return (*(v171 + 8))(v62, v60);
        }

        LOBYTE(v175) = 1;
        sub_1D91799CC();
        (*(v153 + 8))(v61, v63);
        return (*(v171 + 8))(v174, v60);
      }
    }
  }
}

unint64_t sub_1D8D0CD90()
{
  result = qword_1ECAB2428;
  if (!qword_1ECAB2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2428);
  }

  return result;
}

unint64_t sub_1D8D0CE14()
{
  result = qword_1ECAB2458;
  if (!qword_1ECAB2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2458);
  }

  return result;
}

unint64_t sub_1D8D0CE90()
{
  result = qword_1ECAB23E0;
  if (!qword_1ECAB23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23E0);
  }

  return result;
}

unint64_t sub_1D8D0CEF8()
{
  result = qword_1ECAB23E8;
  if (!qword_1ECAB23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23E8);
  }

  return result;
}

unint64_t sub_1D8D0CF64()
{
  result = qword_1ECAB2388;
  if (!qword_1ECAB2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2388);
  }

  return result;
}

unint64_t sub_1D8D0CFB8()
{
  result = qword_1ECAB2390;
  if (!qword_1ECAB2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2390);
  }

  return result;
}

unint64_t sub_1D8D0D020()
{
  result = qword_1ECAB2430;
  if (!qword_1ECAB2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2430);
  }

  return result;
}

unint64_t sub_1D8D0D07C()
{
  result = qword_1ECAB2400;
  if (!qword_1ECAB2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2400);
  }

  return result;
}

unint64_t sub_1D8D0D0D4()
{
  result = qword_1ECAB23B0;
  if (!qword_1ECAB23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23B0);
  }

  return result;
}

unint64_t sub_1D8D0D12C()
{
  result = qword_1ECAB2448;
  if (!qword_1ECAB2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2448);
  }

  return result;
}

unint64_t sub_1D8D0D188()
{
  result = qword_1ECAB23C0;
  if (!qword_1ECAB23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23C0);
  }

  return result;
}

unint64_t sub_1D8D0D1E4()
{
  result = qword_1ECAB2370;
  if (!qword_1ECAB2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2370);
  }

  return result;
}

unint64_t sub_1D8D0D24C()
{
  result = qword_1ECAB2470;
  if (!qword_1ECAB2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2470);
  }

  return result;
}

unint64_t sub_1D8D0D300()
{
  result = qword_1ECAB2358;
  if (!qword_1ECAB2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2358);
  }

  return result;
}

unint64_t sub_1D8D0D3A4()
{
  result = qword_1ECAB2350;
  if (!qword_1ECAB2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2350);
  }

  return result;
}

unint64_t sub_1D8D0D3F8@<X0>(unint64_t *a1@<X8>)
{
  result = EpisodeSortType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
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

unint64_t sub_1D8D0D474()
{
  result = qword_1ECAB1E68;
  if (!qword_1ECAB1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E68);
  }

  return result;
}

uint64_t EpisodeListSettings.InitialItemBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E28, &qword_1D919C4D0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E30, &qword_1D919C4D8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E38, &qword_1D919C4E0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E40, &qword_1D919C4E8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8D0DA60();
  sub_1D9179F1C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1D8F956EC();
      v12 = v26;
      sub_1D917993C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1D8D0DAB4();
      v12 = v29;
      sub_1D917993C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1D8F95740();
    sub_1D917993C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1D8D0D83C()
{
  result = qword_1ECAB1EB0;
  if (!qword_1ECAB1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1EB0);
  }

  return result;
}

unint64_t sub_1D8D0D8A0()
{
  result = qword_1ECAB1E88;
  if (!qword_1ECAB1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E88);
  }

  return result;
}

unint64_t sub_1D8D0D8F8()
{
  result = qword_1ECAB1E70;
  if (!qword_1ECAB1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E70);
  }

  return result;
}

unint64_t sub_1D8D0D950()
{
  result = qword_1ECAB1E78;
  if (!qword_1ECAB1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E78);
  }

  return result;
}

unint64_t sub_1D8D0D9B4()
{
  result = qword_1ECAB1E90;
  if (!qword_1ECAB1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E90);
  }

  return result;
}

unint64_t sub_1D8D0DA0C()
{
  result = qword_1ECAB1E98;
  if (!qword_1ECAB1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E98);
  }

  return result;
}

unint64_t sub_1D8D0DA60()
{
  result = qword_1ECAB1EA0;
  if (!qword_1ECAB1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1EA0);
  }

  return result;
}

unint64_t sub_1D8D0DAB4()
{
  result = qword_1ECAB1EB8;
  if (!qword_1ECAB1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1EB8);
  }

  return result;
}

uint64_t sub_1D8D0DB08()
{
  v1 = 0x65746F6D6F7270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646165486D697274;
  }
}

uint64_t sub_1D8D0DBA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA160, &qword_1D91B1FE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PlaybackIntent.Option.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0A8, &qword_1D91B1F30);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0B0, &qword_1D91B1F38);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0B8, &qword_1D91B1F40);
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0C0, &qword_1D91B1F48);
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0C8, &qword_1D91B1F50);
  v48 = *(v15 - 8);
  v49 = v15;
  v16 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v45 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0D0, &qword_1D91B1F58);
  v56 = *(v18 - 8);
  v57 = v18;
  v19 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - v20;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0D8, &qword_1D91B1F60);
  v45 = *(v46 - 8);
  v22 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0E0, &qword_1D91B1F68);
  v64 = *(v25 - 8);
  v65 = v25;
  v26 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = *v1;
  v28 = *(v1 + 8);
  v29 = *(v1 + 16);
  v30 = a1[3];
  v31 = a1[4];
  v32 = a1;
  v34 = &v45 - v33;
  __swift_project_boxed_opaque_existential_1(v32, v30);
  sub_1D8D00B80();
  sub_1D9179F1C();
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      if (v27 > 1)
      {
        if (v27 ^ 2 | v28)
        {
          v70 = 4;
          sub_1D90A9F4C();
          v42 = v53;
          v35 = v65;
          sub_1D917993C();
          v44 = v54;
          v43 = v55;
        }

        else
        {
          v69 = 3;
          sub_1D90A9FA0();
          v42 = v50;
          v35 = v65;
          sub_1D917993C();
          v44 = v51;
          v43 = v52;
        }
      }

      else
      {
        if (!(v27 | v28))
        {
          v66 = 0;
          sub_1D90AA048();
          v35 = v65;
          sub_1D917993C();
          (*(v45 + 8))(v24, v46);
          return (*(v64 + 8))(v34, v35);
        }

        v68 = 2;
        sub_1D8D00BD4();
        v42 = v47;
        v35 = v65;
        sub_1D917993C();
        v44 = v48;
        v43 = v49;
      }

      (*(v44 + 8))(v42, v43);
      return (*(v64 + 8))(v34, v35);
    }

    v73 = 6;
    sub_1D90A9E50();
    v37 = v61;
    v38 = v65;
    sub_1D917993C();
    v72 = v27;
    sub_1D90A9EA4();
    v39 = v63;
    sub_1D91799FC();
    v40 = v62;
LABEL_7:
    (*(v40 + 8))(v37, v39);
    return (*(v64 + 8))(v34, v38);
  }

  if (v29)
  {
    v71 = 5;
    sub_1D90A9EF8();
    v37 = v58;
    v38 = v65;
    sub_1D917993C();
    v39 = v60;
    sub_1D91799BC();
    v40 = v59;
    goto LABEL_7;
  }

  v67 = 1;
  sub_1D90A9FF4();
  v35 = v65;
  sub_1D917993C();
  v36 = v57;
  sub_1D91799DC();
  (*(v56 + 8))(v21, v36);
  return (*(v64 + 8))(v34, v35);
}

unint64_t sub_1D8D0E3A0()
{
  result = qword_1ECAB25C8;
  if (!qword_1ECAB25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25C8);
  }

  return result;
}

unint64_t sub_1D8D0E3F8()
{
  result = qword_1ECAB25D0;
  if (!qword_1ECAB25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25D0);
  }

  return result;
}

unint64_t sub_1D8D0E44C()
{
  result = qword_1ECAB2610;
  if (!qword_1ECAB2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2610);
  }

  return result;
}

unint64_t sub_1D8D0E4A0()
{
  result = qword_1ECAB2618;
  if (!qword_1ECAB2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2618);
  }

  return result;
}

unint64_t sub_1D8D0E4F4()
{
  result = qword_1ECAB25A0;
  if (!qword_1ECAB25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25A0);
  }

  return result;
}

unint64_t sub_1D8D0E54C()
{
  result = qword_1ECAB2588;
  if (!qword_1ECAB2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2588);
  }

  return result;
}

unint64_t sub_1D8D0E5A0()
{
  result = qword_1ECAB2590;
  if (!qword_1ECAB2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2590);
  }

  return result;
}

unint64_t sub_1D8D0E60C()
{
  result = qword_1ECAB25B0;
  if (!qword_1ECAB25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25B0);
  }

  return result;
}

unint64_t sub_1D8D0E664()
{
  result = qword_1ECAB25B8;
  if (!qword_1ECAB25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25B8);
  }

  return result;
}

void *sub_1D8D0E6B8()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD00, &qword_1D91BA5D0);
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  *(v3 + 16) = 0xD000000000000014;
  *(v3 + 24) = 0x80000001D91D7B90;
  *(v3 + 40) = v2;
  *(v3 + 48) = &type metadata for BoolTransform;
  *(v3 + 56) = &off_1F5485E80;
  v0[2] = v3;
  v4 = [v1 &selRef_setTimeStyle_ + 6];
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = 0xD000000000000016;
  *(v5 + 24) = 0x80000001D91D7BB0;
  *(v5 + 40) = v4;
  *(v5 + 48) = &type metadata for BoolTransform;
  *(v5 + 56) = &off_1F5485E80;
  v0[3] = v5;
  v6 = [v1 &selRef_setTimeStyle_ + 6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD08, &qword_1D91BA4B0);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  strcpy((v7 + 16), "MTSyncVersion");
  *(v7 + 30) = -4864;
  *(v7 + 48) = v6;
  *(v7 + 56) = &type metadata for StringTransform;
  *(v7 + 64) = &off_1F5485E68;
  v0[4] = v7;
  v8 = [v1 &selRef_setTimeStyle_ + 6];
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  strcpy((v9 + 16), "MTSyncVersion3");
  *(v9 + 31) = -18;
  *(v9 + 48) = v8;
  *(v9 + 56) = &type metadata for StringTransform;
  *(v9 + 64) = &off_1F5485E68;
  v0[5] = v9;
  v10 = [v1 &selRef_setTimeStyle_ + 6];
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 16) = 0xD00000000000001DLL;
  *(v11 + 24) = 0x80000001D91D7BD0;
  *(v11 + 40) = v10;
  *(v11 + 48) = &type metadata for BoolTransform;
  *(v11 + 56) = &off_1F5485E80;
  v0[6] = v11;
  v12 = [v1 &selRef_setTimeStyle_ + 6];
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 16) = 0xD00000000000001CLL;
  *(v13 + 24) = 0x80000001D91D7BF0;
  *(v13 + 40) = v12;
  *(v13 + 48) = &type metadata for BoolTransform;
  *(v13 + 56) = &off_1F5485E80;
  v0[7] = v13;
  v14 = [v1 &selRef_setTimeStyle_ + 6];
  v15 = swift_allocObject();
  *(v15 + 32) = 0;
  *(v15 + 16) = 0xD00000000000001DLL;
  *(v15 + 24) = 0x80000001D91D7C10;
  *(v15 + 40) = v14;
  *(v15 + 48) = &type metadata for BoolTransform;
  *(v15 + 56) = &off_1F5485E80;
  v0[8] = v15;
  v16 = [v1 &selRef_setTimeStyle_ + 6];
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  *(v17 + 16) = 0xD000000000000020;
  *(v17 + 24) = 0x80000001D91D7C30;
  *(v17 + 40) = v16;
  *(v17 + 48) = &type metadata for BoolTransform;
  *(v17 + 56) = &off_1F5485E80;
  v0[9] = v17;
  v18 = [v1 &selRef_setTimeStyle_ + 6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD10, &qword_1D91BA4B8);
  v19 = swift_allocObject();
  *(v19 + 24) = 0x80000001D91D7C60;
  *(v19 + 32) = 0;
  *(v19 + 40) = 1;
  *(v19 + 16) = 0xD00000000000002ALL;
  *(v19 + 48) = v18;
  *(v19 + 56) = &type metadata for DoubleTransform;
  *(v19 + 64) = &off_1F5485E98;
  v0[10] = v19;
  v20 = [v1 &selRef_setTimeStyle_ + 6];
  v21 = swift_allocObject();
  v21[4] = 0;
  v21[5] = 0;
  v21[2] = 0xD000000000000024;
  v21[3] = 0x80000001D91D7C90;
  v21[6] = v20;
  v21[7] = &type metadata for StringTransform;
  v21[8] = &off_1F5485E68;
  v0[11] = v21;
  v22 = [v1 &selRef_setTimeStyle_ + 6];
  v23 = swift_allocObject();
  *(v23 + 24) = 0x80000001D91D7CC0;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  *(v23 + 16) = 0xD000000000000024;
  *(v23 + 48) = v22;
  *(v23 + 56) = &type metadata for DoubleTransform;
  *(v23 + 64) = &off_1F5485E98;
  v0[12] = v23;
  v24 = [v1 &selRef_setTimeStyle_ + 6];
  v25 = swift_allocObject();
  *(v25 + 32) = 0;
  *(v25 + 16) = 0xD000000000000016;
  *(v25 + 24) = 0x80000001D91D7CF0;
  *(v25 + 40) = v24;
  *(v25 + 48) = &type metadata for BoolTransform;
  *(v25 + 56) = &off_1F5485E80;
  v0[13] = v25;
  v26 = [v1 &selRef_setTimeStyle_ + 6];
  v27 = swift_allocObject();
  v27[4] = 0;
  v27[5] = 0;
  v27[2] = 0xD00000000000001DLL;
  v27[3] = 0x80000001D91D7D10;
  v27[6] = v26;
  v27[7] = &type metadata for StringTransform;
  v27[8] = &off_1F5485E68;
  v0[14] = v27;
  v28 = [v1 &selRef_setTimeStyle_ + 6];
  v29 = swift_allocObject();
  *(v29 + 24) = 0x80000001D91D7D30;
  *(v29 + 32) = 0;
  *(v29 + 40) = 1;
  *(v29 + 16) = 0xD00000000000002ELL;
  *(v29 + 48) = v28;
  *(v29 + 56) = &type metadata for DoubleTransform;
  *(v29 + 64) = &off_1F5485E98;
  v0[15] = v29;
  v30 = [v1 &selRef_setTimeStyle_ + 6];
  v31 = swift_allocObject();
  *(v31 + 24) = 0x80000001D91D7D60;
  *(v31 + 32) = 0;
  *(v31 + 40) = 1;
  *(v31 + 16) = 0xD00000000000002ELL;
  *(v31 + 48) = v30;
  *(v31 + 56) = &type metadata for DoubleTransform;
  *(v31 + 64) = &off_1F5485E98;
  v0[16] = v31;
  return v0;
}

uint64_t sub_1D8D0ECDC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8D0ED94()
{
  v1 = v0[7];
  (*(v0[8] + 8))(v5, v0[6], v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  if ((swift_dynamicCast() & 1) != 0 && v5[5] != 1)
  {
    return v5[4];
  }

  v3 = v0[4];
  v2 = v0[5];

  return v3;
}

id sub_1D8D0EED0(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_1D8D0EF30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8D0EF84()
{
  result = qword_1ECAAFDF0;
  if (!qword_1ECAAFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFDF0);
  }

  return result;
}

uint64_t sub_1D8D0EFD8()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8D0F08C(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8D0F110(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = a1;
}

uint64_t sub_1D8D0F164(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = a1;
}

uint64_t sub_1D8D0F1B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t StorageChangeStream.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = type metadata accessor for StorageChangeStream.StorageChange();
  v12 = MEMORY[0x1E69E73E0];

  return MEMORY[0x1EEDB5BC8](a1, v8, v11, v12, a3, a4);
}

uint64_t sub_1D8D0F278()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v59 = &v47 - v4;
  v5 = sub_1D9178DFC();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5188, &qword_1D918E308);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5190, &qword_1D918E310);
  v49 = *(v48 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5198, &qword_1D918E318);
  v17 = *(v16 - 8);
  v55 = v16;
  v56 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51A0, &qword_1D918E320);
  v22 = *(v21 - 8);
  v57 = v21;
  v58 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v47 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51A8, &qword_1D918E328);
  v26 = *(v25 - 8);
  v60 = v25;
  v61 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v53 = &v47 - v28;
  v66[0] = v0[26];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B40, &qword_1D918C100);
  sub_1D8CF48EC(&qword_1EDCD0B18, &qword_1ECAB4B40, &qword_1D918C100);
  sub_1D9177B9C();

  v29 = v0[11];
  v30 = v0[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  (*(v30 + 8))(v66, v29, v30);
  v64 = v66[0];
  v65 = v66[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51B0, &qword_1D918E330);
  sub_1D8CF48EC(qword_1EDCD3D30, &qword_1ECAB51B0, &qword_1D918E330);
  sub_1D9177B9C();

  v66[0] = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  sub_1D8CF48EC(&qword_1EDCD0CC8, &qword_1ECAB5190, &qword_1D918E310);
  sub_1D8CF48EC(qword_1EDCD0CF0, &qword_1ECAB5188, &qword_1D918E308);
  sub_1D8CF48EC(&qword_1EDCD0B40, &qword_1ECAB4B30, &unk_1D918E010);
  v31 = v48;
  v32 = v51;
  sub_1D9177C0C();
  (*(v52 + 8))(v12, v32);
  (*(v49 + 8))(v15, v31);
  v33 = v54;
  sub_1D9178DDC();
  v66[0] = v0[2];
  v34 = v66[0];
  v35 = sub_1D9178DBC();
  v36 = v59;
  (*(*(v35 - 8) + 56))(v59, 1, 1, v35);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0C58, &qword_1ECAB5198, &qword_1D918E318);
  sub_1D8D02DF0();
  v37 = v34;
  v38 = v50;
  v39 = v55;
  sub_1D9177CFC();
  sub_1D8D08A50(v36, &qword_1ECAB4D70, &unk_1D918BCE0);

  (*(v62 + 8))(v33, v63);
  (*(v56 + 8))(v20, v39);
  sub_1D8CF48EC(&qword_1EDCD0C20, &qword_1ECAB51A0, &qword_1D918E320);

  v40 = v53;
  v41 = v57;
  sub_1D9177B2C();

  (*(v58 + 8))(v38, v41);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1D8E7B884;
  *(v42 + 24) = v0;
  sub_1D8CF48EC(&qword_1EDCD0EB0, &qword_1ECAB51A8, &qword_1D918E328);

  v43 = v60;
  v44 = sub_1D9177D9C();

  (*(v61 + 8))(v40, v43);
  v45 = v1[27];
  v1[27] = v44;
}

uint64_t sub_1D8D0FB34@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1D8D0FB74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall MediaCacheDeleteProcessor.start()()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  v3 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v3 & 1) == 0)
  {
    v4 = *(v2 + 264);
    os_unfair_lock_lock((v4 + 20));
    v5 = *(v4 + 16);
    os_unfair_lock_unlock((v4 + 20));
    if ((v5 & 0xFE) == 2)
    {
      sub_1D8D01ED4();
    }

    os_unfair_lock_lock((v1 + 20));
    *(v1 + 16) = 1;
    os_unfair_lock_unlock((v1 + 20));
  }

  return 1;
}

uint64_t sub_1D8D0FC40(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177E0C();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 264);
  os_unfair_lock_lock((v15 + 20));
  *(v15 + 16) = a1;
  os_unfair_lock_unlock((v15 + 20));
  v16 = *(v3 + 16);
  aBlock[4] = a2;
  v24 = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v10, v17);
  _Block_release(v17);
  (*(v21 + 8))(v10, v7);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_1D8D0FF00(void *a1)
{
  v2 = a1[33];
  os_unfair_lock_lock((v2 + 20));
  if (!*(v2 + 16))
  {
    *(v2 + 16) = 1;
  }

  os_unfair_lock_unlock((v2 + 20));
  v3 = a1[25];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  sub_1D8CF48EC(&qword_1EDCD0B48, &qword_1ECAB4B30, &unk_1D918E010);
  sub_1D9177A6C();

  v4 = a1[24];

  sub_1D9177A6C();
}

uint64_t MediaCacheDeleteRemovalProcessor.init(managedObjectContext:workQueue:userDefaults:debounceInterval:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v61 = sub_1D9178E0C();
  v60 = *(v61 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D9178D8C();
  v12 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9177E9C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v50[1] = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  *(v17 + 16) = 0;
  v63 = a4;
  *(a4 + 24) = v17;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  MediaCacheDeleteRemovalProcessorDataSource.init(userDefaults:)(a3, v69);
  v18 = type metadata accessor for CoreDataEpisodeAndShowStorage();
  swift_allocObject();
  v19 = a1;
  v20 = a2;
  v62 = a3;
  v21 = CoreDataEpisodeAndShowStorage.init(context:)(v19);
  v23 = v69[0];
  v22 = v69[1];
  v50[0] = v69[0];
  v24 = v69[2];
  v25 = v69[3];
  v26 = v70;
  type metadata accessor for DebouncedEpisodeAndShowProcessor();
  v27 = swift_allocObject();
  v68[3] = &type metadata for MediaCacheDeleteRemovalProcessorDataSource;
  v68[4] = &protocol witness table for MediaCacheDeleteRemovalProcessorDataSource;
  v28 = swift_allocObject();
  v68[0] = v28;
  v28[2] = v23;
  v28[3] = v22;
  v55 = v24;
  v28[4] = v24;
  v28[5] = v25;
  v58 = v25;
  v28[6] = v26;
  v67[4] = &protocol witness table for CoreDataEpisodeAndShowStorage;
  v67[3] = v18;
  v67[0] = v21;
  v52 = v21;
  v66[3] = &type metadata for MediaCacheDeleteRemovalProcessorDelegate;
  v66[4] = &protocol witness table for MediaCacheDeleteRemovalProcessorDelegate;
  v66[0] = v19;
  v66[1] = v20;
  *(v27 + 152) = 0u;
  *(v27 + 168) = 0u;
  *(v27 + 184) = 0;
  *(v27 + 216) = 0u;
  *(v27 + 232) = 0u;
  *(v27 + 248) = 0;
  *(v27 + 256) = 5;
  *(v27 + 272) = 0;
  *(v27 + 280) = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v32 = v26;
  v33 = v19;
  v34 = v20;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v51 = v32;
  v56 = v33;
  v54 = v34;

  *(v27 + 192) = sub_1D91778DC();
  v35 = *(v29 + 48);
  v36 = *(v29 + 52);
  swift_allocObject();
  *(v27 + 200) = sub_1D91778DC();
  sub_1D8CFD9D8(v68, v27 + 24);
  sub_1D8CFD9D8(v67, v27 + 64);
  sub_1D8CFD888();
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1D917946C();

  v64 = 0xD00000000000001DLL;
  v65 = 0x80000001D91CA5F0;
  MEMORY[0x1DA7298F0](v50[0], v22);
  sub_1D9177E4C();
  v64 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8D02D6C();
  sub_1D91792CC();
  (*(v60 + 104))(v59, *MEMORY[0x1E69E8090], v61);
  *(v27 + 16) = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B38, &qword_1D918C0F8);
  v37 = swift_allocObject();
  *(v37 + 20) = 0;
  *(v37 + 16) = 3;
  *(v27 + 264) = v37;
  v64 = [objc_opt_self() falsePredicate];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B40, &qword_1D918C100);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *(v27 + 208) = sub_1D917795C();
  sub_1D8CFD9D8(v66, v27 + 112);
  *(v27 + 104) = 100;
  v41 = *(v27 + 96);
  __swift_project_boxed_opaque_existential_1((v27 + 64), *(v27 + 88));
  v42 = *(v27 + 48);
  v43 = *(v27 + 56);
  __swift_project_boxed_opaque_existential_1((v27 + 24), v42);
  (*(v43 + 16))(v42, v43);
  (*(v41 + 24))();

  v44 = *(v27 + 96);
  __swift_project_boxed_opaque_existential_1((v27 + 64), *(v27 + 88));
  v45 = *(v27 + 48);
  v46 = *(v27 + 56);
  __swift_project_boxed_opaque_existential_1((v27 + 24), v45);
  (*(v46 + 24))(v45, v46);
  (*(v44 + 32))();

  sub_1D8D01824();
  sub_1D8D0F278();
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);

  v47 = v54;

  v48 = v56;

  *(v63 + 32) = v27;
  return result;
}

uint64_t sub_1D8D10748()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocObject();
}

Swift::Bool __swiftcall MediaCacheDeleteRemovalProcessor.start()()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  v3 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v3 & 1) == 0)
  {
    v4 = *(v2 + 264);
    os_unfair_lock_lock((v4 + 20));
    v5 = *(v4 + 16);
    os_unfair_lock_unlock((v4 + 20));
    if ((v5 & 0xFE) == 2)
    {
      sub_1D8D01ED4();
    }

    os_unfair_lock_lock((v1 + 20));
    *(v1 + 16) = 1;
    os_unfair_lock_unlock((v1 + 20));
  }

  return 1;
}

uint64_t sub_1D8D10840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8D1091C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void *sub_1D8D10A70(void *a1)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9D8, &qword_1D91B9668);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = v33 - v6;
  v34 = sub_1D9178E0C();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9178D8C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1D9177E9C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v33[0] = "expectedPodcastStatesByUuid";
  v33[1] = v15;
  sub_1D9177E4C();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD7F8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8090], v34);
  v1[2] = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v1[3] = v16;
  v1[5] = 0;
  v1[7] = 0;
  swift_unknownObjectWeakInit();
  v17 = MEMORY[0x1E69E7CC8];
  v1[8] = MEMORY[0x1E69E7CD0];
  v1[9] = v17;
  v1[10] = v17;
  v18 = objc_opt_self();
  v19 = @"MTPodcast";
  v20 = [v18 predicateForNotHiddenPodcasts];
  v21 = [v35 importContext];
  v22 = v1[2];
  v23 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v24 = v22;
  v25 = [v23 initWithEntityName_];

  [v25 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v26 = sub_1D91785DC();
  [v25 setSortDescriptors_];

  [v25 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9E0, &qword_1D91B9670);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;

  v27[14] = v28;
  v27[2] = 0xD00000000000001DLL;
  v27[3] = 0x80000001D91B9550;
  v27[4] = v25;
  v27[5] = v21;
  v27[6] = v24;
  v27[7] = sub_1D8D3E3D0;
  v27[8] = 0;
  v27[9] = sub_1D8DA53E0;
  v27[10] = 0;
  v27[11] = sub_1D8D38B78;
  v27[12] = 0;
  v39 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9E8, &qword_1D91B9678);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECABA9F0, &unk_1D91B9680);
  sub_1D8CF48EC(qword_1EDCD2760, &qword_1ECABA9E8, &qword_1D91B9678);
  v29 = v36;
  sub_1D9177B9C();

  sub_1D8CF48EC(&qword_1EDCD0CE8, &qword_1ECABA9D8, &qword_1D91B9668);
  v30 = v37;
  v31 = sub_1D9177B1C();
  (*(v38 + 8))(v29, v30);
  v2[4] = v31;
  return v2;
}

void *LibraryPodcastStateDataSource.init(contextProvider:)(void *a1)
{
  v1 = sub_1D8D10A70(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D8D110D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D8D11114()
{
  result = qword_1EDCD23D8;
  if (!qword_1EDCD23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD23D8);
  }

  return result;
}

uint64_t sub_1D8D11168(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D9176EAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8D111AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D111F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D11338()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t UninitializedCurrentValueSubject.init()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D91791BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1D917793C();
  (*(*(a1 - 8) + 56))(v7, 1, 1, a1);
  result = sub_1D917794C();
  *a2 = result;
  return result;
}

uint64_t CacheDomain.init(diskLocation:maxMemorySpace:notificationCenter:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v23 = a7;
  v24 = a8;
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  (*(v17 + 16))(v20, a1, v16);
  CacheDomain.init(diskLocation:maxMemoryUse:notificationCenter:)(v20, v21, a3, a4, a5, a6, v23, v24, a9);
  return (*(v17 + 8))(a1, v16);
}

uint64_t CacheDomain.init(diskLocation:maxMemoryUse:notificationCenter:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v50 = a6;
  v48 = a9;
  v16 = sub_1D9176C2C();
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9178FBC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  result = MEMORY[0x1EEE9AC00](v19);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2 * 0.1;
  if (v25 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v25 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v25 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v44 = result;
  v45 = v16;
  v51 = a3;
  v46 = a1;
  v26 = a2;
  v27 = v25;
  v42 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = a4;
  v53 = AssociatedTypeWitness;
  v29 = v50;
  v54 = v50;
  v55 = a7;
  v30 = a7;
  v56 = a8;
  result = type metadata accessor for InMemoryAssetCache();
  v31 = a8;
  v43 = v27;
  if (v26 >= v27)
  {
    sub_1D9178FCC();
    sub_1D8D119CC(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
    v32 = v44;
    v33 = sub_1D8D11AA4(v26 - v27);
    (*(v20 + 8))(v24, v32);
    v35 = v48;
    v34 = v49;
    *v48 = v33;
    v36 = v46;
    v37 = v47;
    v38 = v45;
    (*(v34 + 16))(v47, v46, v45);
    v39 = v42;
    v52 = a4;
    v53 = v42;
    v54 = v29;
    v55 = v30;
    v56 = v31;
    v40 = type metadata accessor for CacheDomain();
    CacheDomain.DiskCaches.init(directory:maxMemoryBuffer:)(v37, v43, a4, v39, v29, v30, v31, v35 + *(v40 + 60));

    return (*(v34 + 8))(v36, v38);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D8D119CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D11A14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D11A5C(unint64_t *a1, void (*a2)(uint64_t))
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

id CacheDomain.DiskCaches.init(directory:maxMemoryBuffer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v67 = a7;
  v68 = a2;
  v71 = a6;
  v72 = a4;
  v63 = a8;
  v64 = a5;
  v70 = a1;
  v11 = sub_1D9176C2C();
  v60 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  v16 = *(v15 - 8);
  v65 = v15;
  v66 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v53 - v18;
  v19 = sub_1D9178E0C();
  v57 = *(v19 - 8);
  v58 = v19;
  v20 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9178D8C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = sub_1D9177E9C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = *(v12 + 16);
  v59 = v12 + 16;
  v61 = v26;
  v26(a8, a1, v11);
  v55 = sub_1D8CFD888();
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_1D917946C();

  v73 = 0xD000000000000015;
  v74 = 0x80000001D91CA7C0;
  v27 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v27);

  sub_1D9177E7C();
  v73 = MEMORY[0x1E69E7CC0];
  sub_1D8D119CC(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v57 + 104))(v56, *MEMORY[0x1E69E8090], v58);
  v58 = sub_1D9178E4C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = a3;
  v74 = AssociatedTypeWitness;
  v29 = a3;
  v54 = a3;
  v30 = v64;
  v31 = v71;
  v75 = v64;
  v76 = v71;
  v32 = v67;
  v77 = v67;
  type metadata accessor for InMemoryAssetCache();
  v33 = v62;
  sub_1D9177A1C();
  sub_1D8CF48EC(qword_1EDCD5C70, &qword_1ECAB4C60, &unk_1D918CD70);
  v34 = v65;
  v35 = sub_1D8D11AA4(v68);
  v68 = v35;
  (*(v66 + 8))(v33, v34);
  v73 = v29;
  v74 = AssociatedTypeWitness;
  v75 = v30;
  v76 = v31;
  v36 = v30;
  v77 = v32;
  type metadata accessor for DiskAssetCache();
  v37 = v69;
  v38 = v70;
  v39 = v60;
  v40 = v61;
  v61(v69, v70, v60);
  LOBYTE(v73) = 1;
  v41 = v35;
  v42 = v58;
  v43 = DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v37, v41, v58, 0x100000000uLL);
  v73 = v54;
  v74 = v72;
  v75 = v36;
  v76 = v71;
  v77 = v32;
  v44 = type metadata accessor for CacheDomain.DiskCaches();
  v45 = v63;
  *(v63 + v44[15]) = v43;
  v46 = v38;
  v47 = v39;
  v40(v37, v46, v39);
  LOBYTE(v73) = 0;
  v48 = v68;
  *(v45 + v44[16]) = DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v37, v68, v42, 0x200uLL);
  v49 = v45;
  v50 = v70;
  v40(v37, v70, v47);
  LOBYTE(v73) = 0;
  *(v49 + v44[17]) = DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v37, v48, v42, 0x400uLL);
  v40(v37, v50, v47);
  LOBYTE(v73) = 0;
  *(v49 + v44[18]) = DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v37, v48, v42, 0x800uLL);
  LOBYTE(v73) = 0;
  *(v49 + v44[19]) = DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v50, v48, v42, 0x8000uLL);
  swift_retain_n();
  v51 = v42;

  return v51;
}

uint64_t DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  DiskAssetCache.init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32));
  return v11;
}

uint64_t DiskAssetCache.init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = qword_1EDCDE890;
  v10 = sub_1D9176C2C();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  v11 = v4 + qword_1EDCDE888;
  *v11 = a4;
  *(v11 + 4) = BYTE4(a4) & 1;
  *(v4 + qword_1EDCD6AC0) = a3;
  *(v4 + qword_1EDCD6AC8) = a2;
  return v4;
}

unint64_t sub_1D8D123F8()
{
  result = qword_1EDCD7B90;
  if (!qword_1EDCD7B90)
  {
    sub_1D9177E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7B90);
  }

  return result;
}

double URLTaskAssetSource.init<A>(downloader:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, _OWORD *a4@<X8>)
{
  AssetURLSessionProtocol.eraseToAnySession()(a2, a3, &v8);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = *&v8;
  *a4 = v8;
  return result;
}

uint64_t AnyAssetBackgroundSession.init<A>(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  result = (*(v10 + 32))(&v13[v12], a1, a3);
  *a5 = sub_1D8EB4704;
  a5[1] = v13;
  return result;
}

uint64_t sub_1D8D125B8()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t AnyAssetSource.init<A>(source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)(uint64_t a1)@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  result = (*(v12 + 32))(&v15[v14], a1, a4);
  *a6 = sub_1D8E6B570;
  a6[1] = v15;
  return result;
}

uint64_t sub_1D8D12738()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

id AddingPodcastStateDataSource.init()()
{
  v1 = v0;
  v18 = sub_1D9178E0C();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9178D8C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1D9177E9C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v0[OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate];
  *v10 = 0;
  *(v10 + 1) = 0;
  v17 = OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_refreshQueue;
  v11 = sub_1D8CFD888();
  v16[1] = &unk_1D91B92A0;
  v16[2] = v11;
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v18);
  *&v0[v17] = sub_1D9178E4C();
  v12 = OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v1[v12] = v13;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_currentlyAddingShows] = MEMORY[0x1E69E7CD0];
  v14 = type metadata accessor for AddingPodcastStateDataSource();
  v19.receiver = v1;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t static FeedManagerBagConfiguration.getConfigurationOrLocalDefault(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedInstance];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D8D5E1C8;
  *(v7 + 24) = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8D5A2A8;
  *(v8 + 24) = v7;
  v11[4] = sub_1D8D596B4;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8D5960C;
  v11[3] = &block_descriptor_17_4;
  v9 = _Block_copy(v11);

  [v6 createSnapshotWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1D8D12C64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1D8D12CA8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F5C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1D8D12D1C()
{
  sub_1D8CF1DB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_1D8D12E34(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8D12EBC()
{
  v1 = v0[14];
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 96);
  v2 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher();
  sub_1D8D0566C(sub_1D8D3E3B4, v0, v1, v2);
  return v4;
}

uint64_t sub_1D8D12F54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1D8D12F7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v22 = *(v4 + 80);
    v23 = *(v4 + 96);
    v19 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher();
    v6 = a1[3];
    v24 = a1[2];
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[8];
    v20 = a1[9];
    v21 = a1[7];
    v11 = a1[10];
    v18 = a1[11];
    v12 = a1[12];

    v17 = v7;
    v13 = v8;
    v14 = v9;

    v15 = objc_allocWithZone(v19);
    v16 = sub_1D8D30F88(v24, v6, v17, v13, v14, v21, v10, v20, v11, v18, v12);
    swift_unknownObjectWeakAssign();
    result = v16;
  }

  *a2 = result;
  return result;
}

char *sub_1D8D1313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v8 = *v7;
  v9 = *(*v7 + 88);
  v10 = sub_1D91791BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - v12;
  v14 = *(v8 + 80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = *(v8 + 96);
  v21 = type metadata accessor for ProducerInner.State();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v30 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v7 + 2) = v26;
  (*(v15 + 16))(v19, v31, v14);
  (*(*(v9 - 8) + 56))(v13, 1, 1, v9);
  v27 = sub_1D91777EC();
  sub_1D8D05D9C(v19, v13, v32, v33, v34, v35, v36, v37, v25, v27, v14);
  active = type metadata accessor for ProducerInner.ActiveState();
  (*(*(active - 8) + 56))(v25, 0, 1, active);
  (*(v22 + 32))(&v7[*(*v7 + 112)], v25, v21);
  return v7;
}

id sub_1D8D13428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_1D9176EAC();
  v8 = *(a1 + 80);
  v9 = *(a1 + 96);
  type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher();
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  result = sub_1D8D134AC();
  *(a2 + v6) = result;
  return result;
}

id sub_1D8D134AC()
{
  sub_1D9176E9C();

  return v1;
}

uint64_t sub_1D8D134E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

id static PurchaseControllerWrapper.sharedInstance.getter()
{
  if (qword_1EDCD2AC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD2AC8;

  return v1;
}

id sub_1D8D135CC()
{
  result = [objc_allocWithZone(type metadata accessor for PurchaseControllerWrapper()) init];
  qword_1EDCD2AC8 = result;
  return result;
}

void sub_1D8D135FC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  v3 = sub_1D91791BC();
  if (v4 <= 0x3F)
  {
    v7 = *(v3 - 8) + 64;
    sub_1D8D344B4();
    if (v6 <= 0x3F)
    {
      v8 = *(v5 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for MusicSubscriptionInfoSyncUtil()
{
  result = qword_1EDCD21F0;
  if (!qword_1EDCD21F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D13794()
{
  result = sub_1D9176E3C();
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

Class __getASDSubscriptionEntitlementsClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  result = objc_getClass("ASDSubscriptionEntitlements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASDSubscriptionEntitlementsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getASDSubscriptionEntitlementsClass_block_invoke_cold_1();
    return AppStoreDaemonLibrary();
  }

  return result;
}

uint64_t AppStoreDaemonLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppStoreDaemonLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E856B080;
    v6 = 0;
    AppStoreDaemonLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AppStoreDaemonLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1D8D13AAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1D8D13AD8(__int128 *a1)
{
  v2 = v1;
  v4 = 0;
  v5 = *v1;
  v6 = *MEMORY[0x1E69E7D40];
  v186 = *MEMORY[0x1E69E7D40] & v5;
  v175 = sub_1D9177E0C();
  v174 = *(v175 - 8);
  v7 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v172 = v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1D9177E9C();
  v171 = *(v173 - 8);
  v9 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v170 = v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = *((v6 & v5) + 0x58);
  v194 = sub_1D91791BC();
  v193 = sub_1D91791BC();
  v185 = *(v193 - 8);
  v11 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v192 = v169 - v12;
  v187 = *((v6 & v5) + 0x50);
  v195 = sub_1D91791BC();
  v191 = sub_1D91791BC();
  v184 = *(v191 - 8);
  v13 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v190 = v169 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8668, &qword_1D91A2218);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v197 = v169 - v17;
  v202 = sub_1D917705C();
  v199 = *(v202 - 8);
  v18 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v201 = v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1D917734C();
  v20 = *(v200 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v23 = v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v169 - v25;
  v27 = sub_1D917739C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0F68 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v27, qword_1ECAB0F70);
  v182 = v28;
  v33 = *(v28 + 16);
  v183 = v27;
  v33(v31, v32, v27);
  sub_1D917737C();
  sub_1D917731C();
  v34 = v2;
  v181 = v31;
  v35 = sub_1D917737C();
  v36 = sub_1D9178F5C();

  v37 = sub_1D917918C();
  v189 = a1;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v216 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_1D8CFA924(*&v34[qword_1ECAB85F8], *&v34[qword_1ECAB85F8 + 8], &v216);
    v40 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v35, v36, v40, "FRP.RegenerateResults", "Identifier: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1DA72CB90](v39, -1, -1);
    MEMORY[0x1DA72CB90](v38, -1, -1);
  }

  v41 = v200;
  (*(v20 + 16))(v23, v26, v200);
  v42 = sub_1D91773FC();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_1D91773EC();
  (*(v20 + 8))(v26, v41);
  v198 = v34;
  v46 = [*&v34[qword_1ECAB8630] sections];
  v47 = MEMORY[0x1E69E7CC0];
  v180 = v45;
  if (v46)
  {
    v48 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8678, &qword_1D91A2230);
    v49 = sub_1D91785FC();

    if (v49 >> 62)
    {
      v50 = sub_1D917935C();
      if (v50)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v50)
      {
LABEL_8:
        *&v216 = v47;
        result = sub_1D8D4214C(0, v50 & ~(v50 >> 63), 0);
        if (v50 < 0)
        {
          __break(1u);
          return result;
        }

        v52 = 0;
        v47 = v216;
        do
        {
          if ((v49 & 0xC000000000000001) != 0)
          {
            v53 = MEMORY[0x1DA72AA90](v52, v49);
          }

          else
          {
            v53 = *(v49 + 8 * v52 + 32);
            swift_unknownObjectRetain();
          }

          v54 = [v53 numberOfObjects];
          swift_unknownObjectRelease();
          *&v216 = v47;
          v56 = *(v47 + 16);
          v55 = *(v47 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_1D8D4214C(v55 > 1, v56 + 1, 1);
            v47 = v216;
          }

          ++v52;
          *(v47 + 16) = v56 + 1;
          *(v47 + 8 * v56 + 32) = v54;
        }

        while (v50 != v52);
      }
    }
  }

  WitnessTable = v197;
  v58 = *(v47 + 16);
  if (v58)
  {
    v59 = 0;
    v60 = (v47 + 32);
    do
    {
      v61 = *v60++;
      v62 = __OFADD__(v59, v61);
      v59 += v61;
      if (v62)
      {
        goto LABEL_85;
      }

      --v58;
    }

    while (v58);
  }

  else
  {
    v59 = 0;
  }

  sub_1D8D42180();
  if (v59 >= v63)
  {
    v65 = v63;
  }

  else
  {
    v65 = v59;
  }

  v200 = v65;
  v179 = v59;
  if (v65 > 10000)
  {
    if (qword_1EDCD0F80 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_87;
  }

  if (v65 < 0)
  {
    goto LABEL_86;
  }

  if (v65)
  {
    goto LABEL_36;
  }

  v74 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *&v216 = v74;
    MEMORY[0x1EEE9AC00](v73);
    v92 = v198;
    v169[-2] = v198;
    v93 = v92;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8670, &unk_1D91A2220);
    v95 = v186;
    v96 = *(v186 + 96);
    v201 = MEMORY[0x1E69E6340];
    v97 = sub_1D8CF48EC(&qword_1ECAAFFB8, &qword_1ECAB8670, &unk_1D91A2220);
    v99 = sub_1D8D175AC(sub_1D8D41844, &v169[-4], v94, v96, MEMORY[0x1E69E73E0], v97, MEMORY[0x1E69E7410], v98);

    v200 = v169;
    *&v216 = v99;
    MEMORY[0x1EEE9AC00](v100);
    v101 = v189;
    v169[-2] = v93;
    v169[-1] = v101;
    sub_1D91786FC();
    v202 = sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
    v102 = v187;
    v103 = v188;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    swift_getWitnessTable();
    v105 = sub_1D917843C();

    MEMORY[0x1EEE9AC00](v106);
    v169[-4] = v102;
    v169[-3] = v103;
    v107 = *(v95 + 104);
    *&v196 = v96;
    v169[-2] = v96;
    v169[-1] = v107;
    v108 = Array.groupBy<A>(keyForValue:)(sub_1D8D38B84, &v169[-6], v105, TupleTypeMetadata3, v103, v107);

    v200 = v169;
    *&v216 = v108;
    MEMORY[0x1EEE9AC00](v109);
    v169[-4] = v102;
    v169[-3] = v103;
    v169[-2] = v96;
    v169[-1] = v107;
    sub_1D91786FC();
    swift_getTupleTypeMetadata2();
    v110 = sub_1D91786FC();
    v111 = type metadata accessor for FRPSectionInfo();
    WitnessTable = swift_getWitnessTable();
    v169[1] = v111;
    v186 = sub_1D8D175AC(sub_1D8D38DB8, &v169[-6], v110, v111, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v112);
    *&v216 = v108;
    MEMORY[0x1EEE9AC00](v186);
    v169[-4] = v102;
    v169[-3] = v103;
    v169[-2] = v196;
    v169[-1] = v107;
    v178 = v107;
    v113 = type metadata accessor for FRPSectionInfo();
    v115 = sub_1D8D175AC(sub_1D8D39024, &v169[-6], v110, v113, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v114);
    v116 = v198;
    v117 = v115;

    v118 = qword_1EDCD1628;
    swift_beginAccess();
    v119 = *&v116[v118];
    v120 = sub_1D8D05854(&qword_1EDCD09C8);
    *&v216 = nullsub_1(v119, v202, v195, v120);
    sub_1D917809C();

    swift_getWitnessTable();
    sub_1D9178B5C();
    v121 = v189;
    v176 = *(v189 + 1);
    v122 = sub_1D9178ABC();
    *(v121 + 5) = sub_1D9178B0C();
    v201 = v120;
    v177 = v117;
    if ((v122 & 0xC000000000000001) != 0)
    {
      sub_1D917931C();
      sub_1D9178B3C();
      v122 = v211;
      v197 = v212;
      v123 = v213;
      v124 = v214;
      v125 = v215;
    }

    else
    {
      v124 = 0;
      v126 = -1 << *(v122 + 32);
      v127 = *(v122 + 56);
      v197 = (v122 + 56);
      v123 = ~v126;
      v128 = -v126;
      v129 = v128 < 64 ? ~(-1 << v128) : -1;
      v125 = v129 & v127;
    }

    v130 = v185;
    v185 = v123;
    v131 = (v123 + 64) >> 6;
    v200 = (v184 + 8);
    v199 = v130 + 8;
    v47 = v202;
    if (v122 < 0)
    {
      break;
    }

LABEL_58:
    v132 = v125;
    v4 = v124;
    if (v125)
    {
LABEL_63:
      v134 = (v132 - 1) & v132;
      WitnessTable = *(*(v122 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v132)))));
      if (WitnessTable)
      {
        goto LABEL_67;
      }

      goto LABEL_69;
    }

    v133 = v124;
    while (1)
    {
      v4 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        break;
      }

      if (v4 >= v131)
      {
        goto LABEL_69;
      }

      v132 = *&v197[8 * v4];
      ++v133;
      if (v132)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
LABEL_30:
    v66 = sub_1D917744C();
    __swift_project_value_buffer(v66, qword_1EDCD0F88);
    v67 = v198;
    v68 = sub_1D917741C();
    v69 = sub_1D9178CFC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v216 = v71;
      *v70 = 136315394;
      *(v70 + 4) = sub_1D8CFA924(*&v67[qword_1ECAB85F8], *&v67[qword_1ECAB85F8 + 8], &v216);
      *(v70 + 12) = 2048;
      v65 = v200;
      *(v70 + 14) = v200;
      _os_log_impl(&dword_1D8CEC000, v68, v69, "FRC %s has requested %ld items. Loading this many items may cause performance issues for the entire app.", v70, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      v72 = v71;
      WitnessTable = v197;
      MEMORY[0x1DA72CB90](v72, -1, -1);
      MEMORY[0x1DA72CB90](v70, -1, -1);
    }

    else
    {

      v65 = v200;
    }

LABEL_36:
    v75 = 0;
    v76 = (v199 + 56);
    v77 = (v199 + 32);
    v74 = MEMORY[0x1E69E7CC0];
    *&v64 = 138412290;
    v196 = v64;
    do
    {
      sub_1D8D4229C(v75, v47);
      if (v4)
      {
        if (qword_1EDCD0F80 != -1)
        {
          swift_once();
        }

        v78 = sub_1D917744C();
        __swift_project_value_buffer(v78, qword_1EDCD0F88);
        v79 = v4;
        v80 = sub_1D917741C();
        v81 = sub_1D9178D0C();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *v82 = v196;
          v84 = v4;
          v85 = _swift_stdlib_bridgeErrorToNSError();
          *(v82 + 4) = v85;
          *v83 = v85;
          _os_log_impl(&dword_1D8CEC000, v80, v81, "FRC failed to create IndexPath with error: %@", v82, 0xCu);
          sub_1D8D08A50(v83, &unk_1ECAB6C70, &unk_1D9188C30);
          v86 = v83;
          v65 = v200;
          MEMORY[0x1DA72CB90](v86, -1, -1);
          v87 = v82;
          WitnessTable = v197;
          MEMORY[0x1DA72CB90](v87, -1, -1);
        }

        else
        {
        }

        (*v76)(WitnessTable, 1, 1, v202);
        sub_1D8D08A50(WitnessTable, &qword_1ECAB8668, &qword_1D91A2218);
        v4 = 0;
      }

      else
      {
        v88 = v202;
        (*v76)(WitnessTable, 0, 1, v202);
        v89 = *v77;
        (*v77)(v201, WitnessTable, v88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_1D8D4181C(0, *(v74 + 2) + 1, 1, v74);
        }

        v91 = *(v74 + 2);
        v90 = *(v74 + 3);
        if (v91 >= v90 >> 1)
        {
          v74 = sub_1D8D4181C(v90 > 1, v91 + 1, 1, v74);
        }

        *(v74 + 2) = v91 + 1;
        v89(&v74[((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v91], v201, v202);
        v65 = v200;
      }

      ++v75;
    }

    while (v65 != v75);
  }

  while (1)
  {
    v135 = sub_1D917938C();
    if (!v135)
    {
      break;
    }

    aBlock = v135;
    swift_dynamicCast();
    WitnessTable = v216;
    v4 = v124;
    v134 = v125;
    if (!v216)
    {
      break;
    }

LABEL_67:
    aBlock = WitnessTable;
    swift_beginAccess();
    sub_1D91780DC();
    v136 = v190;
    sub_1D917807C();
    (*v200)(v136, v191);
    swift_endAccess();
    aBlock = WitnessTable;
    swift_beginAccess();
    sub_1D91780DC();
    v137 = v192;
    sub_1D917807C();
    (*v199)(v137, v193);
    swift_endAccess();

    v124 = v4;
    v125 = v134;
    if ((v122 & 0x8000000000000000) == 0)
    {
      goto LABEL_58;
    }
  }

LABEL_69:
  sub_1D8D1B144();
  v138 = v189;
  v139 = v188;
  v140 = v187;
  v141 = v198;
  v142 = v196;
  v143 = v178;
  if ((*(v189 + 56) & 1) == 0)
  {
    if (!*&v198[qword_1EDCD1620] || (v203 = sub_1D8D05854(&qword_1EDCD09C0), , , swift_getWitnessTable(), v144 = sub_1D917870C(), , , (v144 & 1) == 0))
    {
      *&v216 = v140;
      *(&v216 + 1) = v139;
      *&v217 = v142;
      *(&v217 + 1) = v143;
      type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update();
      *(v138 + 56) = 1;
    }
  }

  v145 = v179;
  if ((v176 & 0xC000000000000001) != 0)
  {
    v146 = sub_1D917935C();
  }

  else
  {
    v146 = *(v176 + 16);
  }

  v202 = v146;
  if (v146 < v145 != v141[qword_1EDCD1638])
  {
    *&v216 = v140;
    *(&v216 + 1) = v139;
    *&v217 = v142;
    *(&v217 + 1) = v143;
    type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update();
    *(v138 + 56) = 1;
  }

  *(v138 + 6) = v145;
  v147 = v145;
  if (v145 != *&v141[qword_1EDCD1610])
  {
    *&v216 = v140;
    *(&v216 + 1) = v139;
    *&v217 = v142;
    *(&v217 + 1) = v143;
    type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update();
    *(v138 + 56) = 1;
  }

  v148 = v138[1];
  v216 = *v138;
  v217 = v148;
  *v218 = v138[2];
  *&v218[9] = *(v138 + 41);
  v149 = v143;
  v150 = *&v141[qword_1ECAB85F8];
  v151 = *&v141[qword_1ECAB85F8 + 8];
  aBlock = v140;
  v206 = v139;
  v207 = v142;
  v208 = v149;
  v152 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update();
  sub_1D8D17CD0(v150, v151, v152);
  v153 = qword_1ECAB8638;
  v154 = swift_beginAccess();
  v155 = *&v141[v153];
  MEMORY[0x1EEE9AC00](v154);
  v169[-6] = v140;
  v169[-5] = v139;
  v169[-4] = v142;
  v169[-3] = v149;
  v169[-2] = v138;
  v169[-1] = v147;

  aBlock = v140;
  v206 = v139;
  v207 = v142;
  v208 = v149;
  v156 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Paging();
  Synchronized.modify(_:)(sub_1D8D334F4, &v169[-8], v155, v156);

  if (*(v138 + 56) == 1)
  {
    v157 = v202 < v147;
    v158 = *&v141[qword_1EDCD1620];
    *&v141[qword_1EDCD1620] = v186;

    v141[qword_1EDCD1638] = v157;
    *&v141[qword_1EDCD1610] = v147;
    v202 = *&v141[qword_1ECAB8610];
    v159 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v160 = swift_allocObject();
    *(v160 + 16) = v140;
    *(v160 + 24) = v139;
    *(v160 + 32) = v142;
    *(v160 + 40) = v149;
    v161 = v177;
    *(v160 + 48) = v159;
    *(v160 + 56) = v161;
    *(v160 + 64) = v157;
    *(v160 + 72) = v147;
    v209 = sub_1D8D4BF44;
    v210 = v160;
    aBlock = MEMORY[0x1E69E9820];
    v206 = 1107296256;
    v207 = sub_1D8CF5F60;
    v208 = &block_descriptor_69;
    v162 = _Block_copy(&aBlock);

    v163 = v170;
    sub_1D9177E4C();
    v204 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v164 = v172;
    v165 = v175;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v163, v164, v162);
    _Block_release(v162);
    (*(v174 + 8))(v164, v165);
    (*(v171 + 8))(v163, v173);
  }

  else
  {
  }

  v166 = v183;
  v167 = v182;
  v168 = v181;
  sub_1D8D335AC();

  return (*(v167 + 8))(v168, v166);
}

uint64_t sub_1D8D15508()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

char *sub_1D8D15568(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

uint64_t sub_1D8D15664(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D8D15674(uint64_t a1, int a2)
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

uint64_t sub_1D8D156BC(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v140 = a6;
  v148 = a5;
  v151 = a2;
  v146 = a1;
  v8 = *a3;
  v9 = *MEMORY[0x1E69E7D40];
  v141 = *MEMORY[0x1E69E7D40] & *a3;
  v129 = *(*((v9 & v8) + 0x58) - 8);
  v10 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v125 = &v121 - v11;
  v142 = v12;
  v13 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v126 = *(TupleTypeMetadata2 - 8);
  v14 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v128 = &v121 - v15;
  v133 = sub_1D91791BC();
  v132 = *(v133 - 8);
  v16 = *(v132 + 64);
  v17 = (MEMORY[0x1EEE9AC00])(v133);
  v139 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (MEMORY[0x1EEE9AC00])(v17);
  v147 = &v121 - v20;
  v150 = *(v13 - 8);
  v21 = *(v150 + 64);
  v22 = (MEMORY[0x1EEE9AC00])(v19);
  v127 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (MEMORY[0x1EEE9AC00])(v22);
  v131 = &v121 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v135 = &v121 - v26;
  v144 = *((v9 & v8) + 0x50);
  v27 = sub_1D91791BC();
  v136 = sub_1D91791BC();
  v28 = *(v136 - 1);
  v29 = *(v28 + 64);
  v30 = (MEMORY[0x1EEE9AC00])(v136);
  v138 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = (MEMORY[0x1EEE9AC00])(v30);
  v34 = &v121 - v33;
  v35 = *(v27 - 8);
  v36 = *(v35 + 64);
  v37 = (MEMORY[0x1EEE9AC00])(v32);
  v134 = &v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v149 = &v121 - v39;
  v40 = qword_1EDCD1628;
  swift_beginAccess();
  v41 = *(a3 + v40);
  v152 = a4;
  v42 = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  v43 = sub_1D8D05854(&qword_1EDCD09C8);

  v44 = a4;
  sub_1D91780FC();

  v45 = v35;

  v46 = (*(v35 + 48))(v34, 1, v27);
  v145 = v42;
  v143 = v43;
  if (v46 == 1)
  {
    v135 = v44;
    v137 = v13;
    result = (*(v28 + 8))(v34, v136);
    v48 = v150;
    goto LABEL_5;
  }

  v136 = *(v35 + 32);
  v124 = v35 + 32;
  v136(v149, v34, v27);
  v49 = qword_1EDCD1600;
  swift_beginAccess();
  v50 = *(a3 + v49);
  v152 = v44;
  v51 = v44;

  v52 = v147;
  sub_1D91780FC();

  v48 = v150;
  if ((*(v150 + 48))(v52, 1, v13) != 1)
  {
    v133 = v27;
    v72 = v48 + 32;
    v73 = *(v48 + 32);
    v74 = v135;
    v73(v135, v147, v13);
    v75 = v148;
    v76 = v51;
    v77 = *v148;

    v147 = v76;
    LOBYTE(v76) = sub_1D8DA4C5C(v76, v77);

    if ((v76 & 1) == 0)
    {
      v136(v146, v149, v133);
      return (v73)(v151, v74, v13);
    }

    v123 = v73;
    v132 = v72;
    v137 = v13;
    v78 = v75[3];
    v54 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v54)
    {
      goto LABEL_26;
    }

    v75[3] = v79;
    v80 = *(a3 + qword_1ECAB8618 + 8);
    v81 = v134;
    v82 = (*(a3 + qword_1ECAB8618))(v140);
    v140 = &v121;
    v83 = *(a3 + qword_1ECAB8628);
    *&v84 = MEMORY[0x1EEE9AC00](v82);
    v85 = v142;
    *(&v121 - 6) = v144;
    *(&v121 - 5) = v85;
    v87 = *(v141 + 96);
    v86 = *(v141 + 104);
    *(&v121 - 4) = v87;
    *(&v121 - 3) = v86;
    *(&v121 - 1) = v84;
    v88 = v131;
    sub_1D8D349E4(sub_1D8FBD994, (&v121 - 8), MEMORY[0x1E69E73E0], v85, v89, v131);
    if (sub_1D8DA50E8(v149, v81))
    {
      v152 = v144;
      v153 = v85;
      v154 = v87;
      v155 = v86;
      type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update();
      *(v75 + 56) = 1;
      v90 = v147;
LABEL_24:
      v111 = v138;
      v112 = v133;
      (*(v45 + 16))(v138, v134, v133);
      (*(v45 + 56))(v111, 0, 1, v112);
      v156 = v90;
      swift_beginAccess();
      sub_1D91780DC();
      v113 = v90;
      sub_1D917810C();
      swift_endAccess();
      v114 = v150;
      v115 = v45;
      v116 = v139;
      v117 = v88;
      v118 = v88;
      v119 = v137;
      (*(v150 + 16))(v139, v117, v137);
      (*(v114 + 56))(v116, 0, 1, v119);
      v156 = v113;
      swift_beginAccess();
      sub_1D91780DC();
      v120 = v113;
      sub_1D917810C();
      swift_endAccess();
      (*(v114 + 8))(v135, v119);
      (*(v115 + 8))(v149, v112);
      v136(v146, v134, v112);
      return v123(v151, v118, v119);
    }

    v140 = v86;
    v122 = v87;
    v141 = v45;
    v91 = *(TupleTypeMetadata2 + 48);
    v92 = *(v150 + 16);
    v93 = v128;
    v94 = v137;
    v92();
    (v92)(&v93[v91], v135, v94);
    v95 = v129;
    v96 = *(v129 + 48);
    if (v96(v93, 1, v85) == 1)
    {
      v97 = v96(&v93[v91], 1, v85);
      v45 = v141;
      v98 = v148;
      v99 = v140;
      if (v97 == 1)
      {
        result = (*(v150 + 8))(v93, v137);
        v88 = v131;
LABEL_21:
        v109 = v98[4];
        v54 = __OFADD__(v109, 1);
        v110 = v109 + 1;
        if (v54)
        {
LABEL_27:
          __break(1u);
          return result;
        }

        v98[4] = v110;
        goto LABEL_23;
      }
    }

    else
    {
      (v92)(v127, v93, v94);
      v100 = v91;
      v101 = v96(&v93[v91], 1, v85);
      v102 = v94;
      v103 = v93;
      v104 = v85;
      v99 = v140;
      if (v101 != 1)
      {
        v105 = v125;
        (*(v95 + 32))(v125, &v103[v100], v104);
        v106 = v127;
        v107 = sub_1D91781BC();
        v108 = *(v95 + 8);
        v108(v105, v104);
        v108(v106, v104);
        result = (*(v150 + 8))(v103, v102);
        v45 = v141;
        v98 = v148;
        v88 = v131;
        if (v107)
        {
          goto LABEL_21;
        }

LABEL_19:
        v152 = v144;
        v153 = v142;
        v154 = v122;
        v155 = v99;
        type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update();
        *(v98 + 56) = 1;
LABEL_23:
        v90 = v147;
        goto LABEL_24;
      }

      (*(v95 + 8))(v127, v85);
      v45 = v141;
      v98 = v148;
      v93 = v103;
    }

    (*(v126 + 8))(v93, TupleTypeMetadata2);
    v88 = v131;
    goto LABEL_19;
  }

  v135 = v44;
  v137 = v13;
  (*(v45 + 8))(v149, v27);
  result = (*(v132 + 8))(v147, v133);
LABEL_5:
  v53 = v148[2];
  v54 = __OFADD__(v53, 1);
  v55 = v53 + 1;
  v56 = v144;
  if (v54)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v148[2] = v55;
  v57 = *(a3 + qword_1ECAB8618 + 8);
  v58 = v146;
  v59 = (*(a3 + qword_1ECAB8618))(v140);
  v60 = *(a3 + qword_1ECAB8628);
  *&v61 = MEMORY[0x1EEE9AC00](v59);
  v62 = v142;
  *(&v121 - 6) = v56;
  *(&v121 - 5) = v62;
  *(&v121 - 2) = *(v141 + 96);
  *(&v121 - 1) = v61;
  v63 = v45;
  sub_1D8D349E4(sub_1D8D38B48, (&v121 - 8), MEMORY[0x1E69E73E0], v62, v64, v151);
  v65 = *(v45 + 16);
  v66 = v138;
  v65(v138, v58, v27);
  (*(v63 + 56))(v66, 0, 1, v27);
  v67 = v135;
  v156 = v135;
  swift_beginAccess();
  sub_1D91780DC();
  v68 = v67;
  sub_1D917810C();
  swift_endAccess();
  v69 = v139;
  v70 = v137;
  (*(v48 + 16))(v139, v151, v137);
  (*(v48 + 56))(v69, 0, 1, v70);
  v156 = v68;
  swift_beginAccess();
  sub_1D91780DC();
  v71 = v68;
  sub_1D917810C();
  return swift_endAccess();
}

void sub_1D8D1665C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4[2] = *(a2 + 16);
  v4[3] = a1;
  sub_1D8D056BC(sub_1D8D3E424, v4, v3);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation12PodcastStateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_1D8D166F4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v59 = a3;
  v52 = *(*((*MEMORY[0x1E69E7D40] & *v3) + 0x58) - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v49 - v7;
  v10 = *(*((v9 & v8) + 0x50) - 8);
  v53 = *((v9 & v8) + 0x50);
  v54 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v49 - v14;
  v58 = v13;
  v15 = sub_1D91791BC();
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  v21 = sub_1D91791BC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v49 - v28;
  v30 = [a1 objectID];
  sub_1D8D418D4(&v60, v30);

  v31 = a2;
  v32 = v53;
  sub_1D8D156BC(v29, v20, v3, v30, v31, a1);
  v33 = v29;
  v34 = v54;
  (*(v22 + 32))(v25, v33, v21);
  if ((*(v34 + 48))(v25, 1, v32) == 1)
  {
    (*(v55 + 8))(v20, v56);

    (*(v22 + 8))(v25, v21);
LABEL_5:
    sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    return (*(*(TupleTypeMetadata3 - 8) + 56))(v59, 1, 1, TupleTypeMetadata3);
  }

  v35 = v30;
  v36 = *(v34 + 32);
  v36(v57, v25, v32);
  v37 = v55;
  v38 = v50;
  v39 = v20;
  v40 = v56;
  (*(v55 + 32))(v50, v39, v56);
  v41 = v58;
  if ((*(v52 + 48))(v38, 1, v58) == 1)
  {
    (*(v34 + 8))(v57, v32);

    (*(v37 + 8))(v38, v40);
    goto LABEL_5;
  }

  v56 = *(v52 + 32);
  v56(v51, v38, v41);
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  v44 = v41;
  v45 = swift_getTupleTypeMetadata3();
  v46 = *(v45 + 48);
  v47 = *(v45 + 64);
  v48 = v59;
  v36(v59, v57, v32);
  v56(&v48[v46], v51, v44);
  *&v48[v47] = v35;
  return (*(*(v45 - 8) + 56))(v48, 0, 1, v45);
}

uint64_t Array.groupBy<A>(keyForValue:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v78 = a1;
  v79 = a2;
  v9 = sub_1D91786FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(TupleTypeMetadata2 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v68 = &v62 - v12;
  v64 = *(a5 - 8);
  v13 = *(v64 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v76 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - v16;
  v83 = sub_1D91791BC();
  v18 = *(v83 - 1);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v83);
  v22 = &v62 - v21;
  v23 = *(a4 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v75 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v85 = &v62 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v62 - v30;
  v63 = v32;
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v62 - v33;
  v70 = a3;
  v88 = a3;
  swift_getWitnessTable();
  v80 = v9;
  sub_1D9178BDC();
  if ((*(v23 + 48))(v22, 1, a4) == 1)
  {
    (*(v18 + 8))(v22, v83);
    swift_getTupleTypeMetadata2();
    return sub_1D917866C();
  }

  v72 = *(v23 + 32);
  v73 = v23 + 32;
  v72(v34, v22, a4);
  v36 = TupleTypeMetadata2;
  v88 = sub_1D9177FFC();
  v84 = v17;
  v78(v34);
  v37 = sub_1D9177FFC();
  v87 = v37;
  v38 = sub_1D91786AC();
  v74 = v23;
  v62 = v34;
  if (v38)
  {
    v39 = 0;
    v83 = (v23 + 16);
    v66 = (v64 + 16);
    v81 = (v64 + 8);
    v40 = (v23 + 8);
    v41 = v70;
    v67 = a4;
    v71 = v31;
    v65 = (v23 + 8);
    while (1)
    {
      v46 = sub_1D917868C();
      sub_1D917862C();
      if (v46)
      {
        v47 = *(v74 + 16);
        v47(v31, (v41 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v39), a4);
        v48 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = sub_1D91794BC();
        if (v63 != 8)
        {
          __break(1u);
          return result;
        }

        v86 = result;
        v47 = *v83;
        (*v83)(v31, &v86, a4);
        swift_unknownObjectRelease();
        v48 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          v56 = a5;
          v37 = v87;
          v36 = TupleTypeMetadata2;
          goto LABEL_16;
        }
      }

      v82 = v47;
      v49 = v85;
      v72(v85, v31, a4);
      v50 = v76;
      v78(v49);
      if ((sub_1D91781BC() & 1) == 0)
      {
        v51 = v87;
        v52 = v68;
        v53 = *(TupleTypeMetadata2 + 48);
        v54 = *v66;
        (*v66)(v68, v84, a5);
        *&v52[v53] = v51;
        v41 = v70;
        v55 = v84;
        sub_1D91786FC();
        sub_1D91786BC();
        (*v81)(v55, a5);
        v54(v55, v50, a5);
        v40 = v65;
        a4 = v67;
        v87 = sub_1D917866C();
      }

      v42 = v41;
      v43 = v85;
      v82(v75, v85, a4);
      sub_1D91786BC();
      (*v81)(v50, a5);
      v44 = v43;
      v41 = v42;
      (*v40)(v44, a4);
      v45 = sub_1D91786AC();
      ++v39;
      v31 = v71;
      if (v48 == v45)
      {
        goto LABEL_14;
      }
    }
  }

  v56 = a5;
LABEL_16:
  v57 = *(v36 + 48);
  v58 = v64;
  v59 = v68;
  v60 = v84;
  (*(v64 + 16))(v68, v84, v56);
  *&v59[v57] = v37;
  sub_1D91786FC();
  sub_1D91786BC();
  swift_getTupleTypeMetadata2();
  v61 = sub_1D917963C();

  (*(v58 + 8))(v60, v56);
  (*(v74 + 8))(v62, a4);
  return v61;
}

uint64_t sub_1D8D17438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = *(*(TupleTypeMetadata3 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1, TupleTypeMetadata3);
  v13 = *(TupleTypeMetadata3 + 48);

  (*(*(a3 - 8) + 32))(a4, &v11[v13], a3);
  return (*(*(a2 - 8) + 8))(v11, a2);
}

uint64_t sub_1D8D175AC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1D9178B9C();
  if (!v26)
  {
    return sub_1D917866C();
  }

  v48 = v26;
  v52 = sub_1D917960C();
  v39 = sub_1D917961C();
  sub_1D91795BC();
  result = sub_1D9178B8C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1D9178BFC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1D91795FC();
      result = sub_1D9178BBC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D179CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = *(*(TupleTypeMetadata3 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1, TupleTypeMetadata3);
  v13 = *(TupleTypeMetadata3 + 48);
  *a4 = *&v11[*(TupleTypeMetadata3 + 64)];
  (*(*(a3 - 8) + 8))(&v11[v13], a3);
  return (*(*(a2 - 8) + 8))(v11, a2);
}

uint64_t sub_1D8D17B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = *(*(TupleTypeMetadata3 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1, TupleTypeMetadata3);
  v13 = *(TupleTypeMetadata3 + 48);

  (*(*(a2 - 8) + 32))(a4, v11, a2);
  return (*(*(a3 - 8) + 8))(&v11[v13], a3);
}

void sub_1D8D17CD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F88);
  v9 = *(a3 - 8);
  (*(v9 + 16))(v16, v3, a3);

  v10 = sub_1D917741C();
  v11 = sub_1D9178CEC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136316674;
    *(v12 + 4) = sub_1D8CFA924(a1, a2, v16);
    *(v12 + 12) = 1024;
    *(v12 + 14) = *(v4 + 56) & 1;
    v14 = *(v4 + 8);
    *(v12 + 20) = *(v4 + 16);
    *(v12 + 30) = *(v4 + 24);
    *(v12 + 40) = *(v4 + 40);
    *(v12 + 18) = 2048;
    *(v12 + 28) = 2048;
    *(v12 + 38) = 2048;
    *(v12 + 48) = 2048;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = sub_1D917935C();
    }

    else
    {
      v15 = *(v14 + 16);
    }

    *(v12 + 50) = v15;
    *(v12 + 58) = 2048;
    *(v12 + 60) = *(v4 + 48);
    (*(v9 + 8))(v4, a3);
    _os_log_impl(&dword_1D8CEC000, v10, v11, "FetchedResultsPublisher (%s):\nUpdate Stats\n    Update pushed: %{BOOL}d\n    Added to cache: %ld\n    Items updated: %ld\n    Items removed: %ld\n    Total paged items: %ld\n    Total items in DB: %ld", v12, 0x44u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1DA72CB90](v13, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  else
  {
    (*(v9 + 8))(v4, a3);
  }
}

uint64_t sub_1D8D17F20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  v5 = sub_1D8D17F68(v4);

  *a2 = v5;
  return result;
}

uint64_t sub_1D8D17F68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8D18038();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for LibraryPodcastStateDataSource.State, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v14 = *(v5 + 64);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_1D8D1808C(v13, v10);
      sub_1D8D180E8(v8, v13);
      v10[2] = v8[2];
      v10[3] = v8[3];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      sub_1D8D183D4(v10);
      v5 += 72;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

unint64_t sub_1D8D18038()
{
  result = qword_1EDCD23E0;
  if (!qword_1EDCD23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD23E0);
  }

  return result;
}

uint64_t sub_1D8D180E8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1D9179DBC();
  sub_1D910DB90();
  v6 = sub_1D9179E1C();
  v7 = v4 + 56;
  v8 = -1 << *(v4 + 32);
  v9 = v6 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *a2;
    v12 = *(a2 + 8);
    v50 = v4;
    v13 = *(v4 + 48);
    v53 = *a2;
    v54 = v12;
    do
    {
      v14 = v13 + 72 * v9;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = *(v14 + 32);
      v18 = *(v14 + 40);
      v19 = *(v14 + 48);
      v55 = *(v14 + 64);
      v56 = *(v14 + 56);
      if (*v14 != v11 || *(v14 + 8) != v12)
      {
        v21 = v10;
        v22 = a2;
        v23 = v7;
        v24 = v13;
        v25 = v9;
        v26 = *(v14 + 32);
        v27 = *(v14 + 16);
        v28 = *(v14 + 24);
        v29 = sub_1D9179ACC();
        v16 = v28;
        v15 = v27;
        LOBYTE(v17) = v26;
        v9 = v25;
        v13 = v24;
        v7 = v23;
        a2 = v22;
        v10 = v21;
        v11 = v53;
        v12 = v54;
        if ((v29 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v30 = *(a2 + 24);
      if (v16)
      {
        if (!*(a2 + 24))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v15 != *(a2 + 16))
        {
          v30 = 1;
        }

        if (v30)
        {
          goto LABEL_4;
        }
      }

      v31 = *(a2 + 48);
      if (v19)
      {
        if (v19 == 1)
        {
          if (v31 == 1)
          {
            goto LABEL_32;
          }
        }

        else if (v19 == 2)
        {
          if (v31 == 2)
          {
            goto LABEL_32;
          }
        }

        else if (v31 >= 3 && (*(a2 + 32) & 1) == (v17 & 1))
        {
          v32 = *(a2 + 64);
          v33 = *(a2 + 56);
          v34 = v18 == *(a2 + 40) && v19 == v31;
          if (v34 || (v35 = a2, v36 = v7, v37 = v13, v38 = sub_1D9179ACC(), v13 = v37, v7 = v36, a2 = v35, (v38 & 1) != 0))
          {
            if (((v33 ^ v56) & 1) == 0 && v55 == v32)
            {
LABEL_32:
              sub_1D8D183D4(a2);
              v39 = *(v50 + 48) + 72 * v9;
              v58[0] = *v39;
              v41 = *(v39 + 32);
              v40 = *(v39 + 48);
              v42 = *(v39 + 64);
              v58[1] = *(v39 + 16);
              v58[2] = v41;
              v59 = v42;
              v58[3] = v40;
              v43 = *(v39 + 48);
              *(a1 + 32) = *(v39 + 32);
              *(a1 + 48) = v43;
              *(a1 + 64) = *(v39 + 64);
              v44 = *(v39 + 16);
              *a1 = *v39;
              *(a1 + 16) = v44;
              sub_1D8D1808C(v58, v57);
              return 0;
            }
          }
        }
      }

      else if (!v31)
      {
        goto LABEL_32;
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  v46 = *v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57[0] = *v51;
  sub_1D8D1808C(a2, v58);
  sub_1D8D18428(a2, v9, isUniquelyReferenced_nonNull_native);
  *v51 = v57[0];
  v48 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v48;
  *(a1 + 64) = *(a2 + 64);
  v49 = *(a2 + 16);
  result = 1;
  *a1 = *a2;
  *(a1 + 16) = v49;
  return result;
}

uint64_t sub_1D8D18428(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a3)
  {
    sub_1D8EFE0FC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D8F00E8C();
      goto LABEL_40;
    }

    sub_1D8F02B9C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D9179DBC();
  sub_1D910DB90();
  result = sub_1D9179E1C();
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = *v5;
    v14 = *(v5 + 8);
    v15 = *(v8 + 48);
    v46 = v14;
    v47 = v5;
    do
    {
      v16 = v15 + 72 * a2;
      result = *v16;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = *(v16 + 32);
      v19 = *(v16 + 40);
      v21 = *(v16 + 48);
      v48 = *(v16 + 64);
      v49 = *(v16 + 56);
      if (*v16 != v13 || *(v16 + 8) != v14)
      {
        v23 = v13;
        v24 = v12;
        v25 = v10;
        v26 = v15;
        v27 = *(v16 + 48);
        v28 = *(v16 + 16);
        v29 = a2;
        v30 = *(v16 + 24);
        result = sub_1D9179ACC();
        v18 = v30;
        a2 = v29;
        v17 = v28;
        v21 = v27;
        v15 = v26;
        v10 = v25;
        v12 = v24;
        v13 = v23;
        v14 = v46;
        v5 = v47;
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(v5 + 24);
      if (v18)
      {
        if (!*(v5 + 24))
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v17 != *(v5 + 16))
        {
          v31 = 1;
        }

        if (v31)
        {
          goto LABEL_11;
        }
      }

      v32 = *(v5 + 48);
      if (v21)
      {
        if (v21 == 1)
        {
          if (v32 == 1)
          {
            goto LABEL_39;
          }
        }

        else if (v21 == 2)
        {
          if (v32 == 2)
          {
            goto LABEL_39;
          }
        }

        else if (v32 >= 3 && (*(v5 + 32) & 1) == (v20 & 1))
        {
          v33 = *(v5 + 64);
          v34 = *(v5 + 56);
          v35 = v19 == *(v5 + 40) && v21 == v32;
          if (v35 || (v36 = v10, v37 = v15, result = sub_1D9179ACC(), v15 = v37, v10 = v36, (result & 1) != 0))
          {
            if (((v34 ^ v49) & 1) == 0 && v48 == v33)
            {
LABEL_39:
              result = sub_1D9179CEC();
              __break(1u);
              break;
            }
          }
        }
      }

      else if (!v32)
      {
        goto LABEL_39;
      }

LABEL_11:
      a2 = (a2 + 1) & v12;
    }

    while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_40:
  v38 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v39 = *(v38 + 48) + 72 * a2;
  *(v39 + 64) = *(v5 + 64);
  v40 = *(v5 + 48);
  *(v39 + 32) = *(v5 + 32);
  *(v39 + 48) = v40;
  v41 = *(v5 + 16);
  *v39 = *v5;
  *(v39 + 16) = v41;
  v42 = *(v38 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v44;
  }

  return result;
}

uint64_t sub_1D8D186F4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8D18754(v1);
  }

  return result;
}

uint64_t sub_1D8D18754(uint64_t a1)
{
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1D9177F4C();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = *(v1 + 24);
    v12 = MEMORY[0x1EEE9AC00](result);
    *&v14[-16] = v1;
    *&v14[-8] = a1;
    MEMORY[0x1EEE9AC00](v12);
    *&v14[-16] = sub_1D8D18EF4;
    *&v14[-8] = v13;
    os_unfair_lock_lock(v11 + 4);
    sub_1D8D18F10(&v15);
    os_unfair_lock_unlock(v11 + 4);
    sub_1D8D1B714(v15, *(&v15 + 1));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D18910@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v82 = MEMORY[0x1E69E7CD0];
  v79 = MEMORY[0x1E69E7CD0];
  v5 = a1[8];
  if (*(a2 + 16) <= *(v5 + 16) >> 3)
  {
    *&v80[0] = a1[8];

    result = sub_1D8D19950(a2);
    v7 = v5;
  }

  else
  {

    result = sub_1D8D18F6C(a2, v5);
    v7 = result;
  }

  v8 = 0;
  v9 = v7 + 56;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 56);
  v13 = (v10 + 63) >> 6;
  v73 = v7;
LABEL_9:
  if (v12)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      v40 = a1[8];
      if (*(v40 + 16) <= *(a2 + 16) >> 3)
      {
        *&v80[0] = a2;

        sub_1D8D19950(v40);

        v42 = *&v80[0];
      }

      else
      {
        v41 = a1[8];

        v42 = sub_1D8D18F6C(v40, a2);
      }

      v43 = 0;
      v44 = v42 + 56;
      v45 = 1 << *(v42 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & *(v42 + 56);
      v48 = (v45 + 63) >> 6;
      v74 = v42;
      while (v47)
      {
        v49 = v43;
LABEL_35:
        v50 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v51 = *(v42 + 48) + 72 * (v50 | (v49 << 6));
        v53 = *v51;
        v52 = *(v51 + 8);
        v76 = *(v51 + 16);
        v54 = *(v51 + 24);
        v55 = *(v51 + 64);
        v56 = *(v51 + 48);
        v80[0] = *(v51 + 32);
        v80[1] = v56;
        v81 = v55;
        swift_bridgeObjectRetain_n();
        sub_1D8D19AA0(v80, &v78);
        sub_1D8D19AFC(&v78, v53, v52);

        swift_beginAccess();
        sub_1D8D19AA0(v80, &v78);
        v57 = a1[10];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = a1[10];
        a1[10] = 0x8000000000000000;
        sub_1D8D1A004(v80, v53, v52, isUniquelyReferenced_nonNull_native);
        a1[10] = v78;
        swift_endAccess();

        if (v54 == 1)
        {
          result = sub_1D8D1A4BC(v80);
        }

        else
        {
          sub_1D8D1A770(&v78, v76);
          swift_beginAccess();
          v59 = a1[9];
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v77 = a1[9];
          a1[9] = 0x8000000000000000;
          sub_1D8D1AC70(v80, v76, v60);
          a1[9] = v77;
          result = swift_endAccess();
        }

        v43 = v49;
        v42 = v74;
      }

      while (1)
      {
        v49 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_47;
        }

        if (v49 >= v48)
        {
          break;
        }

        v47 = *(v44 + 8 * v49);
        ++v43;
        if (v47)
        {
          goto LABEL_35;
        }
      }

      v61 = a1[8];
      a1[8] = a2;

      v62 = v82;
      v63 = *(v82 + 16);
      if (v63)
      {
        v64 = sub_1D8D1B418(*(v82 + 16), 0);
        v65 = sub_1D8D1B42C(&v78, v64 + 4, v63, v62);
        sub_1D8D1B144();
        v66 = a3;
        if (v65 != v63)
        {
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
LABEL_40:

        v64 = MEMORY[0x1E69E7CC0];
        v66 = a3;
      }

      *v66 = v64;
      v67 = v79;
      v68 = *(v79 + 16);
      if (v68)
      {
        v69 = sub_1D8D1B584(*(v79 + 16), 0);
        v70 = sub_1D8D1B614(&v78, v69 + 4, v68, v67);
        result = sub_1D8D1B144();
        if (v70 != v68)
        {
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
LABEL_44:

        v69 = MEMORY[0x1E69E7CC0];
      }

      v66[1] = v69;
      return result;
    }

    v12 = *(v9 + 8 * v17);
    ++v8;
    if (v12)
    {
      v8 = v17;
LABEL_14:
      v18 = *(v7 + 48) + 72 * (__clz(__rbit64(v12)) | (v8 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v75 = *(v18 + 16);
      v21 = *(v18 + 24);
      swift_bridgeObjectRetain_n();
      sub_1D8D19AFC(v80, v20, v19);

      swift_beginAccess();
      v22 = a1[10];
      v23 = sub_1D8D33C70(v20, v19);
      if (v24)
      {
        v25 = v23;
        v26 = a1[10];
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v28 = a1[10];
        v78 = v28;
        a1[10] = 0x8000000000000000;
        if (!v27)
        {
          sub_1D8F85F60();
          v28 = v78;
        }

        v29 = *(*(v28 + 48) + 16 * v25 + 8);

        v30 = (*(v28 + 56) + 40 * v25);
        v31 = v30[3];
        v32 = v30[4];
        sub_1D8D1D59C(*v30, v30[1], v30[2]);
        sub_1D8F818F0(v25, v28);
        a1[10] = v28;
      }

      v12 &= v12 - 1;
      swift_endAccess();

      v7 = v73;
      if ((v21 & 1) == 0)
      {
        sub_1D8D1A770(v80, v75);
        swift_beginAccess();
        v33 = a1[9];
        v34 = sub_1D8D1AC44(v75);
        if (v35)
        {
          v36 = v34;
          v37 = a1[9];
          v38 = swift_isUniquelyReferenced_nonNull_native();
          v39 = a1[9];
          v78 = v39;
          a1[9] = 0x8000000000000000;
          if (!v38)
          {
            sub_1D8F85DE4();
            v39 = v78;
          }

          v14 = (*(v39 + 56) + 40 * v36);
          v15 = v14[3];
          v16 = v14[4];
          sub_1D8D1D59C(*v14, v14[1], v14[2]);
          sub_1D8F81750(v36, v39);
          a1[9] = v39;
        }

        result = swift_endAccess();
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

double sub_1D8D18F28@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1D8D18F6C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v146 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v3 = a1;
    v5 = a1 + 56;
    v4 = *(a1 + 56);
    v6 = -1 << *(a1 + 32);
    v110 = ~v6;
    if (-v6 < 64)
    {
      v7 = ~(-1 << -v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & v4;
    v9 = (63 - v6) >> 6;
    v129 = (a2 + 56);

    v11 = 0;
    v109 = 0;
    v118 = v9;
    v113 = v10;
    v114 = v2;
    v112 = v5;
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_9:
    v13 = v11;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_119;
      }

      v8 = *(v5 + 8 * v12);
      ++v13;
      if (v8)
      {
        while (2)
        {
          v14 = *(v3 + 48) + 72 * (__clz(__rbit64(v8)) | (v12 << 6));
          v137 = *v14;
          v16 = *(v14 + 32);
          v15 = *(v14 + 48);
          v17 = *(v14 + 16);
          v141 = *(v14 + 64);
          v139 = v16;
          v140 = v15;
          v138 = v17;
          v18 = *(v2 + 40);
          sub_1D9179DBC();
          v19 = v137;
          sub_1D8D1808C(&v137, &v131);
          v127 = *(&v19 + 1);
          v128 = v19;
          _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
          v20 = v138;
          v123 = BYTE8(v138);
          if (BYTE8(v138) == 1)
          {
            sub_1D9179DDC();
          }

          else
          {
            sub_1D9179DDC();
            MEMORY[0x1DA72B3C0](v20);
          }

          v116 = *(&v140 + 1);
          v117 = v139;
          v115 = v141;
          v111 = *(&v139 + 1);
          v122 = v140;
          v120 = v12;
          if (v140)
          {
            if (v140 != 1)
            {
              if (v140 == 2)
              {
                v21 = 3;
                break;
              }

              MEMORY[0x1DA72B390](2);
              sub_1D9179DDC();
              _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
              sub_1D9179DDC();
              MEMORY[0x1DA72B3C0](v115);
LABEL_24:
              v8 &= v8 - 1;
              v22 = sub_1D9179E1C();
              v23 = -1 << *(v2 + 32);
              v24 = v22 & ~v23;
              v25 = v24 >> 6;
              v26 = 1 << v24;
              if (((1 << v24) & v129[v24 >> 6]) == 0)
              {
                sub_1D8D183D4(&v137);
                v11 = v120;
                v9 = v118;
                if (v8)
                {
                  goto LABEL_8;
                }

                goto LABEL_9;
              }

              v121 = v20;
              v119 = v8;
              v27 = ~v23;
              v28 = *(v2 + 48);
              v30 = v127;
              v29 = v128;
LABEL_28:
              v31 = v28 + 72 * v24;
              v32 = *(v31 + 16);
              v33 = *(v31 + 24);
              v35 = *(v31 + 32);
              v34 = *(v31 + 40);
              v37 = *(v31 + 48);
              v36 = *(v31 + 56);
              v38 = *(v31 + 64);
              if (*v31 == v29 && *(v31 + 8) == v30)
              {
                goto LABEL_33;
              }

              v125 = v25;
              v126 = v26;
              v124 = v36;
              v36 = v38;
              v40 = v28;
              v41 = v27;
              v42 = v24;
              v43 = v34;
              v44 = v35;
              v45 = v33;
              v46 = sub_1D9179ACC();
              v33 = v45;
              LODWORD(v35) = v44;
              v34 = v43;
              v24 = v42;
              v27 = v41;
              v28 = v40;
              v38 = v36;
              LODWORD(v36) = v124;
              v25 = v125;
              v26 = v126;
              v30 = v127;
              v29 = v128;
              if (v46)
              {
LABEL_33:
                if (v33)
                {
                  if (v123)
                  {
LABEL_39:
                    if (v37)
                    {
                      if (v37 == 1)
                      {
                        if (v122 == 1)
                        {
                          goto LABEL_60;
                        }
                      }

                      else if (v37 == 2)
                      {
                        if (v122 == 2)
                        {
                          goto LABEL_60;
                        }
                      }

                      else if (v122 >= 3 && ((v35 ^ v117) & 1) == 0)
                      {
                        v48 = v34 == v111 && v37 == v122;
                        if (v48 || (v49 = v27, v50 = sub_1D9179ACC(), v27 = v49, v30 = v127, v29 = v128, (v50 & 1) != 0))
                        {
                          if (((v116 ^ v36) & 1) == 0 && v38 == v115)
                          {
LABEL_60:
                            v51 = v119;
                            v143 = v110;
                            v144 = v120;
                            v145 = v119;
                            v53 = v112;
                            v52 = v113;
                            v142[0] = v113;
                            v142[1] = v112;
                            v54 = sub_1D8D183D4(&v137);
                            v55 = v114;
                            v56 = *(v114 + 32);
                            v57 = v56 & 0x3F;
                            v58 = ((1 << v56) + 63) >> 6;
                            v106[0] = v58;
                            if (v57 <= 0xD)
                            {
                              goto LABEL_61;
                            }

                            v103 = 8 * v58;

                            if (swift_stdlib_isStackAllocationSafe())
                            {

LABEL_61:
                              v106[1] = v106;
                              MEMORY[0x1EEE9AC00](v54);
                              v60 = v106 - ((v59 + 15) & 0x3FFFFFFFFFFFFFF0);
                              memcpy(v60, v129, v59);
                              *&v60[8 * v25] &= ~v26;
                              v107 = *(v55 + 16) - 1;
                              v108 = v60;
                              v61 = v118;
                              v62 = v120;
                              while (2)
                              {
                                if (!v51)
                                {
                                  v64 = v62;
                                  while (1)
                                  {
                                    v63 = v64 + 1;
                                    if (__OFADD__(v64, 1))
                                    {
                                      goto LABEL_122;
                                    }

                                    if (v63 >= v61)
                                    {
                                      v2 = sub_1D90A8694(v108, v106[0], v107, v55);
                                      goto LABEL_119;
                                    }

                                    v51 = *(v53 + 8 * v63);
                                    ++v64;
                                    if (v51)
                                    {
                                      goto LABEL_70;
                                    }
                                  }
                                }

                                v63 = v62;
LABEL_70:
                                v65 = *(v52 + 48) + 72 * (__clz(__rbit64(v51)) | (v63 << 6));
                                v132 = *v65;
                                v67 = *(v65 + 32);
                                v66 = *(v65 + 48);
                                v68 = *(v65 + 16);
                                v136 = *(v65 + 64);
                                v134 = v67;
                                v135 = v66;
                                v133 = v68;
                                v69 = *(v55 + 40);
                                sub_1D9179DBC();
                                v70 = v132;
                                sub_1D8D1808C(&v132, &v130);
                                v127 = *(&v70 + 1);
                                v128 = v70;
                                _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
                                v71 = v133;
                                v123 = BYTE8(v133);
                                if (BYTE8(v133) == 1)
                                {
                                  sub_1D9179DDC();
                                }

                                else
                                {
                                  sub_1D9179DDC();
                                  MEMORY[0x1DA72B3C0](v71);
                                }

                                v116 = *(&v135 + 1);
                                v117 = v134;
                                v115 = v136;
                                v111 = *(&v134 + 1);
                                v122 = v135;
                                v120 = v63;
                                if (v135)
                                {
                                  if (v135 != 1)
                                  {
                                    if (v135 == 2)
                                    {
                                      v72 = 3;
                                      break;
                                    }

                                    MEMORY[0x1DA72B390](2);
                                    sub_1D9179DDC();
                                    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
                                    sub_1D9179DDC();
                                    MEMORY[0x1DA72B3C0](v115);
LABEL_81:
                                    v119 = (v51 - 1) & v51;
                                    v73 = sub_1D9179E1C();
                                    v74 = -1 << *(v55 + 32);
                                    v75 = v73 & ~v74;
                                    v76 = v75 >> 6;
                                    v77 = 1 << v75;
                                    if (((1 << v75) & v129[v75 >> 6]) == 0)
                                    {
                                      sub_1D8D183D4(&v132);
                                      v62 = v120;
LABEL_63:
                                      v61 = v118;
                                      v51 = v119;
                                      continue;
                                    }

                                    v121 = v71;
                                    v78 = ~v74;
                                    v79 = *(v55 + 48);
                                    v81 = v127;
                                    v80 = v128;
LABEL_85:
                                    v82 = v79 + 72 * v75;
                                    v83 = *(v82 + 16);
                                    v84 = *(v82 + 24);
                                    v85 = *(v82 + 32);
                                    v86 = *(v82 + 40);
                                    v87 = *(v82 + 48);
                                    v88 = *(v82 + 56);
                                    v89 = *(v82 + 64);
                                    if (*v82 == v80 && *(v82 + 8) == v81)
                                    {
                                      goto LABEL_90;
                                    }

                                    v125 = *(v82 + 64);
                                    v126 = v88;
                                    v91 = v79;
                                    v92 = v78;
                                    v124 = v77;
                                    v93 = v76;
                                    v94 = v87;
                                    v88 = v83;
                                    v95 = sub_1D9179ACC();
                                    v83 = v88;
                                    v87 = v94;
                                    v76 = v93;
                                    v78 = v92;
                                    v79 = v91;
                                    v77 = v124;
                                    v89 = v125;
                                    LODWORD(v88) = v126;
                                    v81 = v127;
                                    v80 = v128;
                                    if (v95)
                                    {
LABEL_90:
                                      if (v84)
                                      {
                                        if (v123)
                                        {
LABEL_96:
                                          if (v87)
                                          {
                                            if (v87 == 1)
                                            {
                                              if (v122 == 1)
                                              {
                                                goto LABEL_112;
                                              }
                                            }

                                            else if (v87 == 2)
                                            {
                                              if (v122 == 2)
                                              {
                                                goto LABEL_112;
                                              }
                                            }

                                            else if (v122 >= 3 && ((v85 ^ v117) & 1) == 0)
                                            {
                                              v97 = v86 == v111 && v87 == v122;
                                              if (v97 || (v98 = v78, v99 = sub_1D9179ACC(), v78 = v98, v81 = v127, v80 = v128, (v99 & 1) != 0))
                                              {
                                                if (((v116 ^ v88) & 1) == 0 && v89 == v115)
                                                {
LABEL_112:
                                                  sub_1D8D183D4(&v132);
                                                  v100 = v108[v76];
                                                  v108[v76] = v100 & ~v77;
                                                  v61 = v118;
                                                  if ((v100 & v77) != 0)
                                                  {
                                                    v52 = v113;
                                                    v55 = v114;
                                                    v53 = v112;
                                                    v62 = v120;
                                                    if (__OFSUB__(v107, 1))
                                                    {
                                                      __break(1u);
                                                    }

                                                    v51 = v119;
                                                    if (v107 == 1)
                                                    {
                                                      goto LABEL_123;
                                                    }

                                                    --v107;
                                                  }

                                                  else
                                                  {
                                                    v51 = v119;
                                                    v62 = v120;
                                                    v52 = v113;
                                                    v55 = v114;
                                                    v53 = v112;
                                                  }

                                                  continue;
                                                }
                                              }
                                            }
                                          }

                                          else if (!v122)
                                          {
                                            goto LABEL_112;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v96 = v123;
                                        if (v83 != v121)
                                        {
                                          v96 = 1;
                                        }

                                        if ((v96 & 1) == 0)
                                        {
                                          goto LABEL_96;
                                        }
                                      }
                                    }

                                    v75 = (v75 + 1) & v78;
                                    v76 = v75 >> 6;
                                    v77 = 1 << v75;
                                    if ((v129[v75 >> 6] & (1 << v75)) == 0)
                                    {
                                      sub_1D8D183D4(&v132);
                                      v62 = v120;
                                      v52 = v113;
                                      v55 = v114;
                                      v53 = v112;
                                      goto LABEL_63;
                                    }

                                    goto LABEL_85;
                                  }

                                  v72 = 1;
                                }

                                else
                                {
                                  v72 = 0;
                                }

                                break;
                              }

                              MEMORY[0x1DA72B390](v72);
                              goto LABEL_81;
                            }

                            v104 = swift_slowAlloc();
                            memcpy(v104, v129, v103);
                            v105 = sub_1D90A748C(v104, v106[0], v114, v24, v142);

                            MEMORY[0x1DA72CB90](v104, -1, -1);
                            v110 = v143;
                            v2 = v105;
                            goto LABEL_119;
                          }
                        }
                      }
                    }

                    else if (!v122)
                    {
                      goto LABEL_60;
                    }
                  }
                }

                else
                {
                  v47 = v123;
                  if (v32 != v121)
                  {
                    v47 = 1;
                  }

                  if ((v47 & 1) == 0)
                  {
                    goto LABEL_39;
                  }
                }
              }

              v24 = (v24 + 1) & v27;
              v25 = v24 >> 6;
              v26 = 1 << v24;
              if ((v129[v24 >> 6] & (1 << v24)) == 0)
              {
                sub_1D8D183D4(&v137);
                v8 = v119;
                v11 = v120;
                v3 = v113;
                v2 = v114;
                v5 = v112;
                v9 = v118;
                if (!v119)
                {
                  goto LABEL_9;
                }

LABEL_8:
                v12 = v11;
                continue;
              }

              goto LABEL_28;
            }

            v21 = 1;
          }

          else
          {
            v21 = 0;
          }

          break;
        }

        MEMORY[0x1DA72B390](v21);
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:

    v2 = MEMORY[0x1E69E7CD0];
LABEL_119:
    sub_1D8D1B144();
  }

  else
  {

    v2 = MEMORY[0x1E69E7CD0];
  }

  v101 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1D8D19950(uint64_t result)
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

    for (i = 0; v6; result = sub_1D91109D8(v17))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v2 + 48) + 72 * (v10 | (v9 << 6));
      v19[0] = *v11;
      v13 = *(v11 + 32);
      v12 = *(v11 + 48);
      v14 = *(v11 + 16);
      v20 = *(v11 + 64);
      v19[2] = v13;
      v19[3] = v12;
      v19[1] = v14;
      sub_1D8D1808C(v19, v17);
      sub_1D910F494(v19, v15);
      sub_1D8D183D4(v19);
      v17[2] = v15[2];
      v17[3] = v15[3];
      v18 = v16;
      v17[0] = v15[0];
      v17[1] = v15[1];
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

uint64_t sub_1D8D19AFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v9 = sub_1D9179E1C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1D9179ACC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D8D19E84(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D8D19C4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6768, &qword_1D9193708);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1D8D19E84(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D8D1A510(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D8F00040();
      goto LABEL_16;
    }

    sub_1D8D19C4C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  result = sub_1D9179E1C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D9179ACC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

uint64_t sub_1D8D1A004(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8D33C70(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D8F85F60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D8D1A14C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D8D33C70(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_1D8F51A44(a1, v23);
  }

  else
  {
    sub_1D8D1A460(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1D8D1A14C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A88, &unk_1D91A6B40);
  v48 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v47 = result;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = v26[1];
      v51 = *v26;
      v28 = (*(v5 + 56) + 40 * v25);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = v28[3];
      v33 = v28[4];
      if ((v48 & 1) == 0)
      {

        sub_1D8D1C3BC(v29, v30, v31);
      }

      v50 = v31;
      v34 = v30;
      v35 = v29;
      v36 = *(v47 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v8 = v47;
      v37 = -1 << *(v47 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v17 = v50;
        v18 = v33;
        v19 = v32;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v17 = v50;
      v18 = v33;
      v19 = v32;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v20 = (*(v47 + 48) + 16 * v16);
      *v20 = v51;
      v20[1] = v27;
      v21 = (*(v47 + 56) + 40 * v16);
      *v21 = v35;
      v21[1] = v34;
      v21[2] = v17;
      v21[3] = v19;
      v21[4] = v18;
      ++*(v47 + 16);
      v5 = v46;
      v13 = v49;
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if (v48)
    {
      v44 = 1 << *(v5 + 32);
      if (v44 >= 64)
      {
        bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v44;
      }

      *(v5 + 16) = 0;
    }

    v3 = v45;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1D8D1A460(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
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

uint64_t sub_1D8D1A510(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6768, &qword_1D9193708);
  result = sub_1D917940C();
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
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
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
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

uint64_t sub_1D8D1A770(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](a2);
  v7 = sub_1D9179E1C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1D8D1AA88(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8D1A868(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6710, &unk_1D91B3620);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v17);
      result = sub_1D9179E1C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1D8D1AA88(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8D1B14C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D8EFFDC0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D8D1A868(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](v4);
  result = sub_1D9179E1C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

unint64_t sub_1D8D1ABF0()
{
  result = qword_1ECAB1140;
  if (!qword_1ECAB1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1140);
  }

  return result;
}

unint64_t sub_1D8D1AC70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D1AC44(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F85DE4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D8D1AD94(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8D1AC44(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 40 * v9;

    return sub_1D8F51A44(a1, v21);
  }

  else
  {

    return sub_1D8D1B0EC(v9, a2, a1, v20);
  }
}

uint64_t sub_1D8D1AD94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6AD0, &qword_1D91946A8);
  v40 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v42 = *(*(v5 + 48) + 8 * v22);
      v23 = (*(v5 + 56) + 40 * v22);
      v24 = *v23;
      v25 = v23[1];
      v27 = v23[2];
      v26 = v23[3];
      v28 = v23[4];
      if ((v40 & 1) == 0)
      {
        sub_1D8D1C3BC(v24, v25, v27);
      }

      v29 = *(v8 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v42);
      result = sub_1D9179E1C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v17 = v26;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v17 = v26;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v42;
      v18 = (*(v8 + 56) + 40 * v16);
      *v18 = v24;
      v18[1] = v25;
      v18[2] = v27;
      v18[3] = v17;
      v18[4] = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1D8D1B080(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D8D1B0EC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1D8D1B14C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6710, &unk_1D91B3620);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v18);
      result = sub_1D9179E1C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void *sub_1D8D1B39C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1D8D1B42C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1D8D1B598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_1D8D1B614(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1D8D1B714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9177F1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = sub_1D9177F4C();
  v13 = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return;
    }

    goto LABEL_8;
  }

  v14 = *(v3 + 24);
  MEMORY[0x1EEE9AC00](v13);
  *&v20[-16] = sub_1D8D1B9B0;
  *&v20[-8] = v3;
  os_unfair_lock_lock(v14 + 4);
  sub_1D8D1B980(&v21);
  os_unfair_lock_unlock(v14 + 4);
  if (v21)
  {
    v15 = *(&v21 + 1);
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(a1, ObjectType, v15);
    v13 = swift_unknownObjectRelease();
  }

  if (*(a2 + 16))
  {
LABEL_8:
    v17 = *(v3 + 24);
    MEMORY[0x1EEE9AC00](v13);
    *&v20[-16] = sub_1D8D1B9B0;
    *&v20[-8] = v3;
    os_unfair_lock_lock(v17 + 4);
    sub_1D8D1B980(&v21);
    os_unfair_lock_unlock(v17 + 4);
    if (v21)
    {
      v18 = *(&v21 + 1);
      v19 = swift_getObjectType();
      (*(v18 + 8))(a2, v19, v18);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D8D1B9C8(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v3 = a1[3];
    v38 = a1[2];
    v5 = a1[4];
    v4 = a1[5];
    v6 = a1[6];
    v30 = a1[8];
    v31 = a1[7];
    v32 = a1[10];
    v33 = a1[9];
    v34 = a1[11];
    v7 = a1[12];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB8570, &qword_1D91A1C08);
    v8 = objc_allocWithZone(v35);
    v9 = qword_1ECAB8638;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8690, &qword_1D91A2238);
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 0;
    *(v10 + 40) = 0;
    *&v8[v9] = v10;
    v11 = MEMORY[0x1E69E7CC8];
    *&v8[qword_1ECAB8640] = MEMORY[0x1E69E7CC8];
    v12 = &v8[qword_1ECAB8648];
    v12[1] = 0;
    v12[2] = 0;
    *v12 = 0;
    v13 = &v8[qword_1ECAB8650];
    *v13 = 0u;
    v13[1] = 0u;
    v13[2] = 0u;
    *(v13 + 41) = 0u;
    v14 = qword_1EDCD15F8;
    v15 = sub_1D917734C();
    (*(*(v15 - 8) + 56))(&v8[v14], 1, 1, v15);
    *&v8[qword_1EDCD1620] = 0;
    *&v8[qword_1EDCD1628] = v11;
    *&v8[qword_1EDCD1600] = v11;
    v8[qword_1EDCD1638] = 0;
    *&v8[qword_1EDCD1610] = 0;
    v16 = &v8[qword_1ECAB85F8];
    *v16 = v38;
    v16[1] = v3;
    swift_bridgeObjectRetain_n();
    v17 = [v5 fetchBatchSize];
    *&v8[qword_1ECAB8600] = v17;
    *&v8[qword_1ECAB8608] = v4;
    *&v8[qword_1ECAB8610] = v6;
    v18 = &v8[qword_1ECAB8618];
    *v18 = v31;
    v18[1] = v30;
    v19 = &v8[qword_1ECAB8620];
    *v19 = v33;
    v19[1] = v32;
    v20 = &v8[qword_1ECAB8628];
    *v20 = v34;
    v20[1] = v7;
    v21 = objc_allocWithZone(MEMORY[0x1E695D600]);
    v22 = v4;
    v23 = v6;

    v24 = [v21 initWithFetchRequest:v5 managedObjectContext:v22 sectionNameKeyPath:0 cacheName:0];
    *&v8[qword_1ECAB8630] = v24;
    v37.receiver = v8;
    v37.super_class = v35;
    v25 = objc_msgSendSuper2(&v37, sel_init);
    v26 = *&v25[qword_1ECAB8630];
    v27 = v25;
    [v26 setDelegate_];
    v28 = swift_allocObject();
    v28[2] = v38;
    v28[3] = v3;
    v28[4] = v27;
    aBlock[4] = sub_1D8FBD8A4;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_86_2;
    v29 = _Block_copy(aBlock);

    [v22 performBlock_];
    _Block_release(v29);

    swift_unknownObjectWeakAssign();
    return v27;
  }

  return result;
}

uint64_t sub_1D8D1BD70@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 56);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8D1BDA8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_1D8D1BEA4(v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

double sub_1D8D1BE24@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v9);
  if (!v2)
  {
    v7 = v10;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
  }

  return result;
}

id sub_1D8D1BEA4(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v4 = isUniquelyReferenced_nonNull_native;
  v5 = 0;
  v6 = *(v2 + 16);
  v7 = *(v6 + 16);
  v8 = v6 + 40;
  v27 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (v8 + 16 * v5);
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);

      result = [*(v2 + 104) v7[224]];
      __break(1u);
      return result;
    }

    v5 = (v5 + 1);
    v3 = v9 + 2;
    v2 = *(v9 - 1);
    v10 = *v9;
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 48);
    swift_unknownObjectRetain();
    v12(v32, v4, a2, ObjectType, v10);
    v30 = v32[1];
    v28 = v32[0];
    v13 = v33;
    isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
    v9 = v3;
    if (v30 != 3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1D8D1C4F0(0, *(v27 + 16) + 1, 1, v27);
        v27 = isUniquelyReferenced_nonNull_native;
      }

      v15 = *(v27 + 16);
      v14 = *(v27 + 24);
      v2 = v15 + 1;
      v16 = v28;
      if (v15 >= v14 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1D8D1C4F0((v14 > 1), v15 + 1, 1, v27);
        v16 = v28;
        v27 = isUniquelyReferenced_nonNull_native;
      }

      *(v27 + 16) = v2;
      v17 = v27 + 40 * v15;
      *(v17 + 32) = v16;
      *(v17 + 48) = v30;
      *(v17 + 64) = v13;
      v8 = v6 + 40;
      goto LABEL_2;
    }
  }

  v36 = 0;
  v37 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 2;
  v18 = *(v26 + 48);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  type metadata accessor for PodcastStateMachine();
  v3 = 0;
  sub_1D9178E2C();
  v2 = *&v34[0];
  v19 = *(v27 + 16);
  swift_beginAccess();
  v20 = -1;
  v21 = 32;
  v7 = &selRef_setParent_;
  do
  {
    if (v20 - v19 == -1)
    {
      break;
    }

    if (++v20 >= *(v27 + 16))
    {
      goto LABEL_17;
    }

    v22 = *(v27 + v21);
    v23 = *(v27 + v21 + 16);
    v35 = *(v27 + v21 + 32);
    v34[0] = v22;
    v34[1] = v23;
    v24 = *(v2 + 104);
    sub_1D8D19AA0(v34, v31);
    [v24 lock];
    sub_1D8D1CB88(v2, v34, v31);
    v21 += 40;
    sub_1D8D1A4BC(v34);
    [*(v2 + 104) unlock];
  }

  while ((v31[0] & 1) == 0);
}

double sub_1D8D1C234@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1C21C(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1D8D1C2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 80);
  if (*(v9 + 16))
  {

    v10 = sub_1D8D33C70(a2, a3);
    if (v11)
    {
      v12 = (*(v9 + 56) + 40 * v10);
      v13 = *v12;
      v14 = v12[1];
      v16 = v12[2];
      v15 = v12[3];
      v17 = v12[4];
      sub_1D8D1C3BC(*v12, v14, v16);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v17 = 0;
      v16 = 3;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 3;
  }

  *a4 = v13;
  a4[1] = v14;
  a4[2] = v16;
  a4[3] = v15;
  a4[4] = v17;
  return result;
}

uint64_t sub_1D8D1C3BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
  }

  return result;
}

char *sub_1D8D1C3D0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void sub_1D8D1C50C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 3;
}

double sub_1D8D1C520@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D8D1C554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a1 + 32);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v11 = *(a1 + 32);

  v12 = sub_1D8D33C70(a2, a3);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v16 = *(a1 + 40);
    type metadata accessor for PodcastStateMachine();
    v14 = swift_allocObject();
    *(v14 + 88) = MEMORY[0x1E69E7CC0];
    v17 = objc_allocWithZone(MEMORY[0x1E696AE68]);

    sub_1D8D19AA0(a4, &v22);

    v18 = [v17 init];
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    v19 = *(a4 + 16);
    *(v14 + 48) = *a4;
    *(v14 + 64) = v19;
    *(v14 + 80) = *(a4 + 32);
    *(v14 + 96) = v16;
    *(v14 + 104) = v18;
    swift_beginAccess();

    v20 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a1 + 32);
    *(a1 + 32) = 0x8000000000000000;
    sub_1D8D1C894(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 32) = v23;
    result = swift_endAccess();
    goto LABEL_6;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

LABEL_6:
  *a5 = v14;
  return result;
}

uint64_t sub_1D8D1C728(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1D8D33C70(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_1D8D33C70(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_1D8D1C8E8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1D917978C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void sub_1D8D1CB88(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1D917744C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 64);
  switch(v11)
  {
    case 0uLL:
      v12 = *(a2 + 16);
      if (!v12)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
    case 1uLL:
      v12 = *(a2 + 16);
      if (v12 == 1)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
    case 2uLL:
      v12 = *(a2 + 16);
      if (v12 == 2)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
  }

  v12 = *(a2 + 16);
  if (v12 < 3 || (*a2 & 1) != (*(a1 + 48) & 1))
  {
    goto LABEL_12;
  }

  v71 = v6;
  v45 = *(a1 + 72);
  v46 = *(a2 + 24);
  v47 = *(a2 + 32);
  if (*(a1 + 56) == *(a2 + 8) && v11 == v12)
  {
    v12 = v11;
    if (((v46 ^ v45) & 1) == 0)
    {
      v48 = *(a1 + 80) == v47;
      goto LABEL_43;
    }

LABEL_48:
    v6 = v71;
    goto LABEL_12;
  }

  v68 = *(a1 + 80);
  v70 = v8;
  if ((sub_1D9179ACC() & 1) == 0)
  {
    v6 = v71;
    v8 = v70;
    goto LABEL_12;
  }

  v8 = v70;
  if ((v46 ^ v45))
  {
    goto LABEL_48;
  }

  v48 = v68 == v47;
LABEL_43:
  v6 = v71;
  if (v48)
  {
    goto LABEL_28;
  }

LABEL_12:
  v13 = *(a1 + 96);
  v14 = 0xE700000000000000;
  v15 = 0x6E776F6E6B6E75;
  v16 = 0xE500000000000000;
  v17 = 0x6465646461;
  if (v12 == 1)
  {
    v17 = 0x676E69646461;
    v16 = 0xE600000000000000;
  }

  if (v12 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (v12)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0x656C6261646461;
  }

  if (v12)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  if (!*(v13 + 16))
  {

    goto LABEL_27;
  }

  v70 = v8;
  v71 = v6;
  v20 = sub_1D8D33C70(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_27:
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    v29 = *(a1 + 64);
    v30 = *(a1 + 72);
    v31 = *(a1 + 80);
    v32 = *(a2 + 16);
    *(a1 + 48) = *a2;
    *(a1 + 64) = v32;
    *(a1 + 80) = *(a2 + 32);
    sub_1D8D1D59C(v27, v28, v29);
    sub_1D8D19AA0(a2, v77);
    sub_1D8D1D2F8();
LABEL_28:
    *a3 = 1;
    return;
  }

  v69 = a3;
  sub_1D8CFD9D8(*(v13 + 56) + 40 * v20, v80);
  sub_1D8D04E9C(v80, v77);
  v23 = v78;
  v24 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v25 = *(a1 + 64);
  v80[0] = *(a1 + 48);
  v80[1] = v25;
  v81 = *(a1 + 80);
  v26 = *(v24 + 8);
  sub_1D8D19AA0(v80, v76);
  LOBYTE(v23) = v26(v80, a2, v23, v24);
  sub_1D8D1A4BC(v80);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    a3 = v69;
    goto LABEL_27;
  }

  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v33 = v71;
  v34 = __swift_project_value_buffer(v71, qword_1ECAAFC48);
  swift_beginAccess();
  v35 = v70;
  (*(v70 + 16))(v10, v34, v33);
  sub_1D8CFD9D8(v77, v76);

  sub_1D8D19AA0(a2, &v73);
  v36 = sub_1D917741C();
  v37 = sub_1D9178CEC();

  sub_1D8D1A4BC(a2);
  v38 = os_log_type_enabled(v36, v37);
  v39 = v69;
  if (!v38)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    (*(v35 + 8))(v10, v33);
LABEL_47:
    *v39 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    return;
  }

  LODWORD(v68) = v37;
  v40 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v82 = v67;
  *v40 = 136315906;
  if ((*(a1 + 24) & 1) == 0)
  {
    *&v73 = *(a1 + 16);
    sub_1D8E40D20();
    v44 = sub_1D917927C();
    v41 = v49;
    goto LABEL_46;
  }

  v41 = *(a1 + 40);
  if (v41)
  {
    v42 = *(a1 + 32);
    v43 = *(a1 + 40);

    v44 = v42;
LABEL_46:
    v50 = sub_1D8CFA924(v44, v41, &v82);

    *(v40 + 4) = v50;
    *(v40 + 12) = 2080;
    v51 = *(a1 + 56);
    v52 = *(a1 + 64);
    v53 = *(a1 + 72);
    v54 = *(a1 + 80);
    *&v73 = *(a1 + 48);
    *(&v73 + 1) = v51;
    *&v74 = v52;
    *(&v74 + 1) = v53;
    v75 = v54;
    sub_1D8D1C3BC(v73, v51, v52);
    v55 = sub_1D917826C();
    v57 = sub_1D8CFA924(v55, v56, &v82);

    *(v40 + 14) = v57;
    *(v40 + 22) = 2080;
    v58 = *(a2 + 16);
    v73 = *a2;
    v74 = v58;
    v75 = *(a2 + 32);
    sub_1D8D19AA0(a2, v72);
    v59 = sub_1D917826C();
    v61 = sub_1D8CFA924(v59, v60, &v82);

    *(v40 + 24) = v61;
    *(v40 + 32) = 2080;
    __swift_project_boxed_opaque_existential_1(v76, v76[3]);
    *&v73 = swift_getDynamicType();
    *(&v73 + 1) = v76[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA8A8, &unk_1D91B89B0);
    v62 = sub_1D917826C();
    v64 = v63;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    v65 = sub_1D8CFA924(v62, v64, &v82);

    *(v40 + 34) = v65;
    _os_log_impl(&dword_1D8CEC000, v36, v68, "Denied state change for %s: %s -> %s, rule: %s", v40, 0x2Au);
    v66 = v67;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v66, -1, -1);
    MEMORY[0x1DA72CB90](v40, -1, -1);

    (*(v70 + 8))(v10, v71);
    v39 = v69;
    goto LABEL_47;
  }

  sub_1D91796DC();
  __break(1u);
}

uint64_t sub_1D8D1D2F8()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CFD888();
  v11 = sub_1D9178E1C();
  aBlock[4] = sub_1D8D81A8C;
  v15 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_89;
  v12 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBF10(&qword_1EDCD7B90, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v10, v5, v12);
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D8D1D59C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
  }

  return result;
}