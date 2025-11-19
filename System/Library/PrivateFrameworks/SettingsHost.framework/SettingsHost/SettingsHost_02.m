uint64_t sub_2659F534C()
{
  result = sub_265A1E7B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2659F5408()
{
  result = qword_28002B6B0;
  if (!qword_28002B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B6B0);
  }

  return result;
}

unint64_t sub_2659F5460()
{
  result = qword_28002B6B8;
  if (!qword_28002B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B6B8);
  }

  return result;
}

uint64_t SettingsSearchIndexingDomain.appIntentIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SettingsSearchIndexingDomain.appIntentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SettingsSearchIndexingDomain.appValueTypeIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SettingsSearchIndexingDomain.appValueTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SettingsSearchIndexingDomain.searchDomainIdentifier.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v1, v2);
  return v4;
}

uint64_t sub_2659F566C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2659F56B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SettingsSearchIndexingRequestIssue.scope.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 56);
  *(a1 + 48) = v8;
  return sub_2659E0A34(v2, v3, v4, v5, v6, v7, v8);
}

__n128 SettingsSearchIndexingRequestIssue.scope.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_2659E07BC(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t SettingsSearchIndexingRequestIssue.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_2659F57FC(v2);
}

uint64_t sub_2659F57FC(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

__n128 SettingsSearchIndexingRequestIssue.type.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  sub_2659F5888(v1[8]);
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v11;
  v1[12] = v3;
  v1[13] = v4;
  return result;
}

uint64_t sub_2659F5888(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

unint64_t sub_2659F5934()
{
  result = qword_28002B6C0;
  if (!qword_28002B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B6C0);
  }

  return result;
}

unint64_t sub_2659F598C()
{
  result = qword_28002B6C8;
  if (!qword_28002B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B6C8);
  }

  return result;
}

unint64_t sub_2659F59E4()
{
  result = qword_28002B6D0;
  if (!qword_28002B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B6D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SettingsHost0A26SearchIndexingRequestIssueV5ScopeO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t get_enum_tag_for_layout_string_12SettingsHost0A26SearchIndexingRequestIssueV0F4TypeO(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 3 | (4 * *(a1 + 8))) + 2;
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2659F5AA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2659F5AF0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 120) = 1;
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
      *(a1 + 64) = 4 * -a2;
      result = 0.0;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2659F5B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2659F5BC0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      *a1 = 4 * -a2;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2659F5C30(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 3 | 0x8000000000000000;
    *(result + 8) = (a2 - 2) >> 2;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2659F5CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2659F5D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2659F5D60(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_2659F5DB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s9AnalyticsO27IndexingStartedEventPayloadVMa(0);
  v5 = (a1 + v4[7]);
  v6 = *v5;
  v7 = v5[1];

  sub_2659F73A0(&v28);

  v8 = (a1 + v4[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = sub_265A1EB70();
  v12 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v11, 0x676E697865646E69, 0xEE006E6F73616552, isUniquelyReferenced_nonNull_native);
  v14 = (a1 + v4[5]);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19 = 1;
  if (v16 != 1)
  {
    v19 = 2;
  }

  if (v16)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_2659F7A80(v21, 0x676E697865646E69, 0xEC00000065707954, v22);
  if (v16 >= 2)
  {
    v24 = sub_265A1EB70();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_2659F7A80(v24, 0xD000000000000013, 0x8000000265A23900, v25);
    v26 = sub_265A1EB70();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_2659F7A80(v26, 0xD000000000000016, 0x8000000265A23D70, v27);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_2659F5FA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v3 = _s9AnalyticsO27IndexingStartedEventPayloadVMa(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s9AnalyticsO29IndexingCompletedEventPayloadVMa(0);
  v9 = (a1 + v8[7]);
  v11 = *v9;
  v10 = v9[1];

  sub_2659F73A0(&v62);

  v12 = sub_265A1E7B0();
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  v59 = v8;
  v13 = v8[6];
  v14 = (a1 + v8[5]);
  v15 = *v14;
  v16 = v14[1];
  v18 = v14[2];
  v17 = v14[3];
  v19 = a1 + v13;
  v20 = *(a1 + v13);
  v21 = *(v19 + 8);
  v22 = &v7[v4[7]];
  *v22 = v15;
  v22[1] = v16;
  v22[2] = v18;
  v22[3] = v17;
  v23 = &v7[v4[8]];
  *v23 = v20;
  *(v23 + 1) = v21;
  v24 = &v7[v4[9]];
  *v24 = v11;
  *(v24 + 1) = v10;

  sub_2659F3B04(v15, v16);

  sub_2659F5DB8(v7, &v61);
  v25 = v61;
  v26 = v62;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v26;
  sub_2659F7F28(v25, sub_2659F7EDC, 0, isUniquelyReferenced_nonNull_native, &v61);

  v28 = v61;
  v29 = v59;
  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v28;
  sub_2659F7A80(v30, 0x656D6F6374756FLL, 0xE700000000000000, v31);
  v32 = v61;
  v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v32;
  sub_2659F7A80(v33, 0xD000000000000010, 0x8000000265A23E50, v34);
  v35 = v61;
  v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v35;
  sub_2659F7A80(v36, 0xD00000000000001BLL, 0x8000000265A23E70, v37);
  v38 = v61;
  v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v38;
  sub_2659F7A80(v39, 0xD000000000000015, 0x8000000265A23E90, v40);
  v41 = v61;
  v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v41;
  sub_2659F7A80(v42, 0xD000000000000016, 0x8000000265A23EB0, v43);
  v44 = v61;
  v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v44;
  sub_2659F7A80(v45, 0xD000000000000015, 0x8000000265A23ED0, v46);
  v47 = v61;
  v48 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v47;
  sub_2659F7A80(v48, 0xD000000000000018, 0x8000000265A23EF0, v49);
  v50 = v61;
  v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v50;
  sub_2659F7A80(v51, 0xD000000000000011, 0x8000000265A23DD0, v52);
  v53 = v61;
  v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v53;
  sub_2659F7A80(v54, 0xD000000000000011, 0x8000000265A23DF0, v55);
  v56 = v61;
  result = sub_2659F81C4(v7, _s9AnalyticsO27IndexingStartedEventPayloadVMa);
  *v60 = v56;
  return result;
}

uint64_t sub_2659F64B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa(0);
  v5 = (a1 + v4[5]);
  v6 = *v5;
  v7 = v5[1];

  sub_2659F73A0(a2);

  v8 = (a1 + v4[7]);
  v9 = *v8;
  v10 = v8[1];
  v11 = sub_265A1EB70();
  v12 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v11, 0xD000000000000013, 0x8000000265A23900, isUniquelyReferenced_nonNull_native);
  *a2 = v12;
  v14 = (a1 + v4[8]);
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_265A1EB70();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v17, 0xD000000000000016, 0x8000000265A23D70, v18);
  *a2 = v12;
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_2659F7A80(v19, 0x65756C6156707061, 0xEC00000065707954, v20);
  *a2 = v12;
  return result;
}

uint64_t sub_2659F6644@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa(0);
  v10 = (a1 + v9[5]);
  v12 = *v10;
  v11 = v10[1];

  sub_2659F73A0(&v58);

  v13 = sub_265A1E7B0();
  (*(*(v13 - 8) + 16))(v8, a1, v13);
  v14 = *(a1 + v9[6]);
  v15 = (a1 + v9[7]);
  v16 = *v15;
  v17 = v15[1];
  v18 = (a1 + v9[8]);
  v19 = *v18;
  v20 = v18[1];
  v21 = &v8[v5[7]];
  *v21 = v12;
  *(v21 + 1) = v11;
  v8[v5[8]] = v14;
  v22 = &v8[v5[9]];
  *v22 = v16;
  *(v22 + 1) = v17;
  v23 = &v8[v5[10]];
  *v23 = v19;
  *(v23 + 1) = v20;

  sub_2659F64B4(v8, &v57);
  v24 = v57;
  v25 = v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v25;
  sub_2659F7F28(v24, sub_2659F7EDC, 0, isUniquelyReferenced_nonNull_native, &v57);

  v27 = v57;
  v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v27;
  sub_2659F7A80(v28, 0x656D6F6374756FLL, 0xE700000000000000, v29);
  v30 = v57;
  v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v30;
  sub_2659F7A80(v31, 0x6E6F697461727564, 0xE800000000000000, v32);
  v33 = v57;
  v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v33;
  sub_2659F7A80(v34, 0x7275446863746566, 0xED00006E6F697461, v35);
  v36 = v57;
  v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v36;
  sub_2659F7A80(v37, 0x75446574656C6564, 0xEE006E6F69746172, v38);
  v39 = v57;
  v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v39;
  sub_2659F7A80(v40, 0x7275447865646E69, 0xED00006E6F697461, v41);
  v42 = v57;
  v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v42;
  sub_2659F7A80(v43, 0xD000000000000011, 0x8000000265A23DD0, v44);
  v45 = v57;
  v46 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v45;
  sub_2659F7A80(v46, 0xD000000000000011, 0x8000000265A23DF0, v47);
  v48 = v57;
  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v48;
  sub_2659F7A80(v49, 0xD000000000000010, 0x8000000265A23E10, v50);
  v51 = v57;
  v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v51;
  sub_2659F7A80(v52, 0xD000000000000013, 0x8000000265A23E30, v53);
  v54 = v57;
  result = sub_2659F81C4(v8, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
  *a2 = v54;
  return result;
}

uint64_t sub_2659F6B58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s9AnalyticsO25IndexingIssueEventPayloadVMa(0);
  v5 = (a1 + *(v4 + 20));
  v6 = *v5;
  v7 = v5[1];

  sub_2659F73A0(&v82);

  v8 = (a1 + *(v4 + 24));
  v9 = 0x277CCA000uLL;
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v11 = v82;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v10, 0x6D617473656D6974, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v13, 0x7665536575737369, 0xED00007974697265, v14);
  v15 = v8[56];
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v17 = 4;
    }

    else if (v15 == 4)
    {
      v17 = 5;
    }

    else
    {
      v18 = vorrq_s8(*(v8 + 24), *(v8 + 40));
      if (*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | *(v8 + 2) | *(v8 + 1))
      {
        v17 = 6;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v16 = 2;
    if (v15 != 1)
    {
      v16 = 3;
    }

    if (v8[56])
    {
      v17 = v16;
    }

    else
    {
      v17 = 1;
    }
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v19, 0x70795465706F6373, 0xE900000000000065, v20);
  v22 = *(v8 + 1);
  v21 = *(v8 + 2);
  v24 = *(v8 + 3);
  v23 = *(v8 + 4);
  v25 = v8[56];
  v80 = a2;
  if (v25 > 2)
  {
    if (v25 - 3 >= 2)
    {
      goto LABEL_25;
    }

    v36 = sub_265A1EB70();
    v9 = 0x277CCA000uLL;

    v37 = swift_isUniquelyReferenced_nonNull_native();
    sub_2659F7A80(v36, 0xD000000000000013, 0x8000000265A23900, v37);
    v38 = sub_265A1EB70();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v11;
    v35 = 0xD000000000000016;
    v39 = 0x8000000265A23D70;
    v40 = v38;
  }

  else if (v8[56])
  {
    if (v25 == 1)
    {
      v42 = sub_265A1EB70();
      v43 = swift_isUniquelyReferenced_nonNull_native();
      sub_2659F7A80(v42, 0xD000000000000013, 0x8000000265A23900, v43);
      v32 = "errorDescription";
      v33 = sub_265A1EB70();
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v11;
      v35 = 0xD000000000000016;
    }

    else
    {
      if (v25 != 2)
      {
        goto LABEL_25;
      }

      v27 = *(v8 + 5);
      v26 = *(v8 + 6);
      v28 = sub_265A1EB70();
      v29 = swift_isUniquelyReferenced_nonNull_native();
      sub_2659F7A80(v28, 0xD000000000000013, 0x8000000265A23900, v29);
      v30 = sub_265A1EB70();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      sub_2659F7A80(v30, 0xD000000000000016, 0x8000000265A23D70, v31);
      v32 = "appValueTypeIdentifier";
      v9 = 0x277CCA000;
      v33 = sub_265A1EB70();
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v11;
      v35 = 0xD000000000000015;
    }

    v39 = v32 | 0x8000000000000000;
    v40 = v33;
  }

  else
  {
    v41 = sub_265A1EB70();
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v11;
    v39 = 0x8000000265A23900;
    v40 = v41;
    v35 = 0xD000000000000013;
  }

  sub_2659F7A80(v40, v35, v39, v34);
  v11 = v81;
LABEL_25:
  v44 = *(v8 + 8);
  if (v44 >> 62)
  {
    if (v44 >> 62 == 1)
    {
      v45 = 2;
    }

    else
    {
      v46 = *(v8 + 9);
      v47 = *(v8 + 10);
      v48 = *(v8 + 11);
      v49 = *(v8 + 12) | *(v8 + 13);
      v50 = v49 | v46 | v48 | v47;
      if (v44 != 0x8000000000000000 || v50)
      {
        if (v44 != 0x8000000000000001 || v50)
        {
          if (v44 != 0x8000000000000002 || v50)
          {
            if (v44 != 0x8000000000000003 || v50)
            {
              v51 = v49 | v48 | v47;
              v53 = v46 == 1 && v51 == 0;
              if (v44 == 0x8000000000000000 && v53)
              {
                v45 = 7;
              }

              else if (v44 == 0x8000000000000001 && v53)
              {
                v45 = 8;
              }

              else if (v44 == 0x8000000000000002 && v53)
              {
                v45 = 9;
              }

              else
              {
                if (v44 != 0x8000000000000003)
                {
                  v53 = 0;
                }

                if (v53)
                {
                  v45 = 10;
                }

                else
                {
                  v57 = v46 == 2 && v51 == 0;
                  if (v44 == 0x8000000000000000 && v57)
                  {
                    v45 = 11;
                  }

                  else if (v44 == 0x8000000000000001 && v57)
                  {
                    v45 = 12;
                  }

                  else if (v44 == 0x8000000000000002 && v57)
                  {
                    v45 = 13;
                  }

                  else
                  {
                    if (v44 != 0x8000000000000003)
                    {
                      v57 = 0;
                    }

                    if (v57)
                    {
                      v45 = 14;
                    }

                    else
                    {
                      if (v51)
                      {
                        v60 = 0;
                      }

                      else
                      {
                        v60 = v46 == 3;
                      }

                      if (v60 && v44 == 0x8000000000000000)
                      {
                        v45 = 15;
                      }

                      else
                      {
                        v45 = 16;
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v45 = 6;
            }
          }

          else
          {
            v45 = 5;
          }
        }

        else
        {
          v45 = 4;
        }
      }

      else
      {
        v45 = 3;
      }
    }
  }

  else
  {
    v45 = 1;
  }

  v62 = [objc_allocWithZone(*(v9 + 2992)) initWithInteger_];
  v63 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_2659F7A80(v62, 0x7079546575737369, 0xE900000000000065, v63);
  v65 = *(v8 + 8);
  v66 = *(v8 + 9);
  v68 = *(v8 + 10);
  v67 = *(v8 + 11);
  v69 = *(v8 + 12);
  v70 = *(v8 + 13);
  if (v65 >> 62 == 1)
  {
    v71 = [objc_allocWithZone(*(v9 + 2992)) 0x279BB1D78];
    goto LABEL_100;
  }

  if (!(v65 >> 62))
  {
    v71 = [objc_allocWithZone(*(v9 + 2992)) 0x279BB1D78];
LABEL_100:
    v72 = v71;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    sub_2659F7A80(v72, 0x65704F726F727265, 0xEE006E6F69746172, v73);
    v74 = sub_265A1EB70();
    v75 = swift_isUniquelyReferenced_nonNull_native();
    sub_2659F7A80(v74, 0x6D6F44726F727265, 0xEB000000006E6961, v75);
    v76 = [objc_allocWithZone(*(v9 + 2992)) 0x279BB1D78];
    v77 = swift_isUniquelyReferenced_nonNull_native();
    sub_2659F7A80(v76, 0x646F43726F727265, 0xE900000000000065, v77);
    v78 = sub_265A1EB70();
    v79 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_2659F7A80(v78, 0xD000000000000010, 0x8000000265A23D50, v79);
  }

  *v80 = v11;
  return result;
}

id sub_2659F73A0@<X0>(void *a1@<X8>)
{
  sub_265A1E790();
  v2 = sub_265A1EB70();

  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v2, 0xD000000000000015, 0x8000000265A23DB0, isUniquelyReferenced_nonNull_native);
  v5 = sub_265A1EB70();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v5, 0xD00000000000001FLL, 0x8000000265A23A10, v6);
  v7 = [objc_opt_self() processInfo];
  result = [v7 processName];
  if (result)
  {
    v9 = result;

    v10 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_2659F7A80(v9, 0x4E737365636F7270, 0xEB00000000656D61, v10);
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2659F751C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002B6E0, qword_265A22508);
  v40 = a2;
  result = sub_265A1F200();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_265A1F3D0();
      sub_265A1EBF0();
      result = sub_265A1F400();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
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

uint64_t sub_2659F77DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6D8, &qword_265A22500);
  v39 = a2;
  result = sub_265A1F200();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_265A1F3D0();
      sub_265A1EBF0();
      result = sub_265A1F400();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2659F7A80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_265A0C9AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2659F77DC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_265A0C9AC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_265A1F370();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2659F7D70();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

void *sub_2659F7BF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002B6E0, qword_265A22508);
  v2 = *v0;
  v3 = sub_265A1F1F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

id sub_2659F7D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6D8, &qword_265A22500);
  v2 = *v0;
  v3 = sub_265A1F1F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

id sub_2659F7EDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_2659F7F28(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_265A0C9AC(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_2659F7D70();
      }
    }

    else
    {
      v32 = v51;
      sub_2659F77DC(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_265A0C9AC(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_2659F3AB4();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_265A1F370();
  __break(1u);
  return result;
}

uint64_t sub_2659F81C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2659F8224(void *a1, char a2)
{
  if (a2)
  {
    v7 = 0x206D756E45707041;
  }

  else
  {
    v7 = 0x7469746E45707041;
  }

  v2 = [a1 identifier];
  v3 = sub_265A1EBA0();
  v5 = v4;

  MEMORY[0x266765220](v3, v5);

  MEMORY[0x266765220](41, 0xE100000000000000);
  return v7;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2659F8324(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2659F836C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2659F83CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_265A1E6D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 attributionBundleIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_265A1EBA0();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265A225E0;
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v16 = sub_2659F94B8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_265A21A40;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;

    v16 = sub_2659F94B8(v17);
    swift_setDeallocating();
    sub_2659F9620(v17 + 32);
  }

  v18 = [v2 effectiveBundleIdentifiers];
  v19 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  v34 = v18;
  sub_265A1EF10();
  sub_2659F9674(&qword_28156B038, MEMORY[0x277CC9178]);
  sub_265A1EFD0();
  if (v38)
  {
    v33 = v6;
    do
    {
      while (1)
      {
        sub_2659DE79C(&v37, &v35);
        sub_2659F3D98(0, &unk_28156A870, 0x277D237E0);
        if ((swift_dynamicCast() & 1) == 0 || !v36)
        {
          break;
        }

        MEMORY[0x2667652B0]();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_265A1ECF0();
        }

        sub_265A1ED20();
        v19 = v39;
        sub_265A1EFD0();
        v6 = v33;
        if (!v38)
        {
          goto LABEL_14;
        }
      }

      sub_265A1EFD0();
    }

    while (v38);
    v6 = v33;
  }

LABEL_14:

  (*(v6 + 8))(v9, v5);
  if (v19 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_265A1F1E0())
  {
    v21 = 0;
    v34 = (v19 & 0xC000000000000001);
    v22 = v19 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v34)
      {
        v23 = v19;
        v24 = MEMORY[0x2667656F0](v21, v19);
      }

      else
      {
        if (v21 >= *(v22 + 16))
        {
          goto LABEL_26;
        }

        v23 = v19;
        v24 = *(v19 + 8 * v21 + 32);
      }

      v25 = v24;
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      *&v35 = v16;

      v26 = [v25 bundleIdentifier];
      v27 = sub_265A1EBA0();
      v29 = v28;

      sub_2659F1B74(&v37, v27, v29);

      v16 = v35;
      ++v21;
      v30 = v19 == i;
      v19 = v23;
      if (v30)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  return v16;
}

id sub_2659F8854()
{
  v1 = sub_265A1E6D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v84 - v7;
  v84 = v0;
  result = [v0 typeSpecificMetadata];
  if (result)
  {
    v10 = result;
    type metadata accessor for LNActionTypeSpecificMetadataKey(0);
    sub_2659F9674(&qword_28156A860, type metadata accessor for LNActionTypeSpecificMetadataKey);
    v11 = sub_265A1EAD0();

    if (*(v11 + 16) && (v12 = sub_265A0CA24(*MEMORY[0x277D236F0]), (v13 & 1) != 0))
    {
      sub_2659D9900(*(v11 + 56) + 32 * v12, v99);

      sub_2659D9900(v99, v98);
      sub_2659F3D98(0, &qword_28156A8D0, 0x277D23818);
      if (swift_dynamicCast())
      {
        v89 = v97;
        v14 = [v84 effectiveBundleIdentifiers];
        v15 = MEMORY[0x277D84F90];
        v96 = MEMORY[0x277D84F90];
        sub_265A1EF10();
        sub_2659F9674(&qword_28156B038, MEMORY[0x277CC9178]);
        sub_265A1EFD0();
        if (v95)
        {
          v91 = v14;
          do
          {
            while (1)
            {
              sub_2659DE79C(&v94, v92);
              sub_2659F3D98(0, &unk_28156A870, 0x277D237E0);
              if ((swift_dynamicCast() & 1) == 0 || !v93)
              {
                break;
              }

              MEMORY[0x2667652B0]();
              if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v90 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_265A1ECF0();
              }

              sub_265A1ED20();
              v15 = v96;
              sub_265A1EFD0();
              v14 = v91;
              if (!v95)
              {
                goto LABEL_30;
              }
            }

            sub_265A1EFD0();
          }

          while (v95);
          v14 = v91;
        }

LABEL_30:

        (*(v2 + 8))(v8, v1);
        if (v15 >> 62)
        {
          goto LABEL_86;
        }

        v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_87;
        }

        goto LABEL_32;
      }

      sub_2659F3D98(0, &unk_28156A8E0, 0x277D23838);
      if (swift_dynamicCast())
      {
        v89 = v97;
        v16 = [v84 effectiveBundleIdentifiers];
        v15 = MEMORY[0x277D84F90];
        v96 = MEMORY[0x277D84F90];
        sub_265A1EF10();
        sub_2659F9674(&qword_28156B038, MEMORY[0x277CC9178]);
        sub_265A1EFD0();
        if (v95)
        {
          v91 = v16;
          do
          {
            while (1)
            {
              sub_2659DE79C(&v94, v92);
              sub_2659F3D98(0, &unk_28156A870, 0x277D237E0);
              if ((swift_dynamicCast() & 1) == 0 || !v93)
              {
                break;
              }

              MEMORY[0x2667652B0]();
              if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v90 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_265A1ECF0();
              }

              sub_265A1ED20();
              v15 = v96;
              sub_265A1EFD0();
              v16 = v91;
              if (!v95)
              {
                goto LABEL_55;
              }
            }

            sub_265A1EFD0();
          }

          while (v95);
          v16 = v91;
        }

LABEL_55:

        (*(v2 + 8))(v6, v1);
        if (v15 >> 62)
        {
          v49 = sub_265A1F1E0();
          if (!v49)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v49 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v49)
          {
            goto LABEL_87;
          }
        }

        v50 = 0;
        v88 = v15 & 0xC000000000000001;
        v87 = v15 & 0xFFFFFFFFFFFFFF8;
        v51 = MEMORY[0x277D84F98];
        v86 = v15;
        v85 = v49;
        while (1)
        {
          if (v88)
          {
            v55 = MEMORY[0x2667656F0](v50, v15);
          }

          else
          {
            if (v50 >= *(v87 + 16))
            {
              goto LABEL_82;
            }

            v55 = *(v15 + 8 * v50 + 32);
          }

          v56 = v55;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_81;
          }

          v90 = v50 + 1;

          v57 = [v56 bundleIdentifier];
          v58 = sub_265A1EBA0();
          v60 = v59;

          v91 = v56;
          v61 = [v56 bundleIdentifier];
          if (!v61)
          {
            sub_265A1EBA0();
            v61 = sub_265A1EB70();
          }

          v62 = [v89 mangledTypeNameForBundleIdentifier_];

          v63 = sub_265A1EBA0();
          v65 = v64;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v94 = v51;
          v15 = sub_265A0C9AC(v58, v60);
          v68 = v51[2];
          v69 = (v67 & 1) == 0;
          v70 = v68 + v69;
          if (__OFADD__(v68, v69))
          {
            while (2)
            {
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              v17 = sub_265A1F1E0();
              if (!v17)
              {
LABEL_87:

                v80 = [v84 effectiveBundleIdentifiers];
                v81 = sub_265A1EAC0();

                v82 = v89;
                v83 = [v89 metadataByAddingEffectiveBundleIdentifiers:v80 mangledTypeNameByBundleIdentifier:v81];

                __swift_destroy_boxed_opaque_existential_1(v99);
                __swift_destroy_boxed_opaque_existential_1(v98);
                return v83;
              }

LABEL_32:
              v18 = 0;
              v88 = v15 & 0xC000000000000001;
              v87 = v15 & 0xFFFFFFFFFFFFFF8;
              v19 = MEMORY[0x277D84F98];
              v86 = v15;
              v85 = v17;
LABEL_35:
              if (v88)
              {
                v23 = MEMORY[0x2667656F0](v18, v15);
              }

              else
              {
                if (v18 >= *(v87 + 16))
                {
                  goto LABEL_79;
                }

                v23 = *(v15 + 8 * v18 + 32);
              }

              v24 = v23;
              if (__OFADD__(v18, 1))
              {
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
                continue;
              }

              break;
            }

            v90 = v18 + 1;

            v25 = [v24 bundleIdentifier];
            v26 = sub_265A1EBA0();
            v28 = v27;

            v91 = v24;
            v29 = [v24 bundleIdentifier];
            if (!v29)
            {
              sub_265A1EBA0();
              v29 = sub_265A1EB70();
            }

            v30 = [v89 mangledTypeNameForBundleIdentifier_];

            v31 = sub_265A1EBA0();
            v33 = v32;

            v34 = swift_isUniquelyReferenced_nonNull_native();
            *&v94 = v19;
            v15 = sub_265A0C9AC(v26, v28);
            v36 = v19[2];
            v37 = (v35 & 1) == 0;
            v38 = v36 + v37;
            if (__OFADD__(v36, v37))
            {
              goto LABEL_80;
            }

            v39 = v35;
            if (v19[3] >= v38)
            {
              if (v34)
              {
                v42 = v91;
                if ((v35 & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

              else
              {
                sub_2659F7BF8();
                v42 = v91;
                if ((v39 & 1) == 0)
                {
                  goto LABEL_48;
                }
              }
            }

            else
            {
              sub_2659F751C(v38, v34);
              v40 = sub_265A0C9AC(v26, v28);
              if ((v39 & 1) != (v41 & 1))
              {
                goto LABEL_90;
              }

              v15 = v40;
              v42 = v91;
              if ((v39 & 1) == 0)
              {
LABEL_48:
                v43 = v94;
                *(v94 + 8 * (v15 >> 6) + 64) |= 1 << v15;
                v44 = (v43[6] + 16 * v15);
                *v44 = v26;
                v44[1] = v28;
                v45 = (v43[7] + 16 * v15);
                *v45 = v31;
                v45[1] = v33;

                v46 = v43[2];
                v47 = __OFADD__(v46, 1);
                v48 = v46 + 1;
                if (v47)
                {
                  goto LABEL_84;
                }

                v43[2] = v48;
                v19 = v43;
                goto LABEL_34;
              }
            }

            v20 = v94;
            v21 = (*(v94 + 56) + 16 * v15);
            v22 = v21[1];
            *v21 = v31;
            v21[1] = v33;

            v19 = v20;
LABEL_34:
            ++v18;
            v15 = v86;
            if (v90 == v85)
            {
              goto LABEL_87;
            }

            goto LABEL_35;
          }

          v71 = v67;
          if (v51[3] >= v70)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v74 = v91;
              if (v67)
              {
                goto LABEL_58;
              }
            }

            else
            {
              sub_2659F7BF8();
              v74 = v91;
              if (v71)
              {
                goto LABEL_58;
              }
            }
          }

          else
          {
            sub_2659F751C(v70, isUniquelyReferenced_nonNull_native);
            v72 = sub_265A0C9AC(v58, v60);
            if ((v71 & 1) != (v73 & 1))
            {
LABEL_90:
              result = sub_265A1F370();
              __break(1u);
              return result;
            }

            v15 = v72;
            v74 = v91;
            if (v71)
            {
LABEL_58:

              v52 = v94;
              v53 = (*(v94 + 56) + 16 * v15);
              v54 = v53[1];
              *v53 = v63;
              v53[1] = v65;

              v51 = v52;
              goto LABEL_59;
            }
          }

          v75 = v94;
          *(v94 + 8 * (v15 >> 6) + 64) |= 1 << v15;
          v76 = (v75[6] + 16 * v15);
          *v76 = v58;
          v76[1] = v60;
          v77 = (v75[7] + 16 * v15);
          *v77 = v63;
          v77[1] = v65;

          v78 = v75[2];
          v47 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v47)
          {
            goto LABEL_85;
          }

          v75[2] = v79;
          v51 = v75;
LABEL_59:
          ++v50;
          v15 = v86;
          if (v90 == v85)
          {
            goto LABEL_87;
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v99);
      __swift_destroy_boxed_opaque_existential_1(v98);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_2659F94B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B688, &qword_265A21BD8);
    v3 = sub_265A1F080();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_265A1F3D0();

      sub_265A1EBF0();
      result = sub_265A1F400();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_265A1F340();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2659F9674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2659F96BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_265A1E9F0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659F9790, 0, 0);
}

uint64_t sub_2659F9790()
{
  v31 = v0;
  v1 = [*(v0 + 48) identifier];
  v2 = sub_265A1EBA0();
  v4 = v3;

  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 32);
  v7 = sub_265A1EA20();
  __swift_project_value_buffer(v7, qword_28156B4E8);

  sub_265A1E9E0();
  v8 = sub_265A1EA10();
  v9 = sub_265A1EF50();

  if (sub_265A1EFA0())
  {
    v10 = *(v0 + 80);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_2659D9320(v12, v11, &v30);
    *(v13 + 12) = 2082;
    v15 = sub_2659D9320(v2, v4, &v30);

    *(v13 + 14) = v15;
    v16 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v8, v9, v16, "Search Items From All Entities", "AppIntent: '%{public}s', Entity: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v14, -1, -1);
    MEMORY[0x266766110](v13, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 80);
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  (*(v19 + 16))(*(v0 + 72), v17, v18);
  v20 = sub_265A1EA60();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v0 + 88) = sub_265A1EA50();
  (*(v19 + 8))(v17, v18);
  v23 = swift_task_alloc();
  *(v0 + 96) = v23;
  *v23 = v0;
  v23[1] = sub_2659F9A74;
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  v26 = *(v0 + 24);
  v27 = *(v0 + 32);
  v28 = *(v0 + 16);

  return sub_2659FA144(v28, v26, v27, v24, 0);
}

uint64_t sub_2659F9A74()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2659F9B70, 0, 0);
}

uint64_t sub_2659F9B70()
{
  v1 = v0[10];
  v2 = v0[9];
  sub_265A0BD44(v0[11], "Search Items From All Entities");

  v3 = v0[1];

  return v3();
}

uint64_t sub_2659F9C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_265A1E9F0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659F9CD4, 0, 0);
}

uint64_t sub_2659F9CD4()
{
  v31 = v0;
  v1 = [*(v0 + 48) identifier];
  v2 = sub_265A1EBA0();
  v4 = v3;

  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 32);
  v7 = sub_265A1EA20();
  __swift_project_value_buffer(v7, qword_28156B4E8);

  sub_265A1E9E0();
  v8 = sub_265A1EA10();
  v9 = sub_265A1EF50();

  if (sub_265A1EFA0())
  {
    v10 = *(v0 + 80);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_2659D9320(v12, v11, &v30);
    *(v13 + 12) = 2082;
    v15 = sub_2659D9320(v2, v4, &v30);

    *(v13 + 14) = v15;
    v16 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v8, v9, v16, "Search Items From Suggested Entities", "AppIntent: '%{public}s', Entity: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v14, -1, -1);
    MEMORY[0x266766110](v13, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 80);
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  (*(v19 + 16))(*(v0 + 72), v17, v18);
  v20 = sub_265A1EA60();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v0 + 88) = sub_265A1EA50();
  (*(v19 + 8))(v17, v18);
  v23 = swift_task_alloc();
  *(v0 + 96) = v23;
  *v23 = v0;
  v23[1] = sub_2659F9FB8;
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  v26 = *(v0 + 24);
  v27 = *(v0 + 32);
  v28 = *(v0 + 16);

  return sub_2659FA144(v28, v26, v27, v24, 1);
}

uint64_t sub_2659F9FB8()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2659FA0B4, 0, 0);
}

uint64_t sub_2659FA0B4()
{
  v1 = v0[10];
  v2 = v0[9];
  sub_265A0BD44(v0[11], "Search Items From Suggested Entities");

  v3 = v0[1];

  return v3();
}

uint64_t sub_2659FA144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v36 = *MEMORY[0x277D85DE8];
  *(v6 + 1328) = v5;
  *(v6 + 2084) = a5;
  *(v6 + 1320) = a4;
  *(v6 + 1312) = a3;
  *(v6 + 1304) = a2;
  *(v6 + 1296) = a1;
  v7 = sub_265A1E6C0();
  *(v6 + 1336) = v7;
  v8 = *(v7 - 8);
  *(v6 + 1344) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 1352) = swift_task_alloc();
  v10 = type metadata accessor for SettingsSearchIndexableItem();
  *(v6 + 1360) = v10;
  v11 = *(v10 - 8);
  *(v6 + 1368) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 1376) = swift_task_alloc();
  *(v6 + 1384) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110) - 8) + 64) + 15;
  *(v6 + 1392) = swift_task_alloc();
  *(v6 + 1400) = swift_task_alloc();
  *(v6 + 1408) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F8, &qword_265A22650);
  *(v6 + 1416) = v14;
  v15 = *(v14 - 8);
  *(v6 + 1424) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 1432) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  *(v6 + 1440) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v6 + 1448) = swift_task_alloc();
  *(v6 + 1456) = swift_task_alloc();
  *(v6 + 1464) = swift_task_alloc();
  *(v6 + 1472) = swift_task_alloc();
  *(v6 + 1480) = swift_task_alloc();
  *(v6 + 1488) = swift_task_alloc();
  *(v6 + 1496) = swift_task_alloc();
  *(v6 + 1504) = swift_task_alloc();
  *(v6 + 1512) = swift_task_alloc();
  *(v6 + 1520) = swift_task_alloc();
  v19 = sub_265A1E770();
  *(v6 + 1528) = v19;
  v20 = *(v19 - 8);
  *(v6 + 1536) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 1544) = swift_task_alloc();
  *(v6 + 1552) = swift_task_alloc();
  *(v6 + 1560) = swift_task_alloc();
  *(v6 + 1568) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B708, &unk_265A22660);
  *(v6 + 1576) = v22;
  v23 = *(v22 - 8);
  *(v6 + 1584) = v23;
  v24 = *(v23 + 64) + 15;
  *(v6 + 1592) = swift_task_alloc();
  v25 = sub_265A1EF70();
  *(v6 + 1600) = v25;
  v26 = *(v25 - 8);
  *(v6 + 1608) = v26;
  v27 = *(v26 + 64) + 15;
  *(v6 + 1616) = swift_task_alloc();
  v28 = sub_265A1EF60();
  *(v6 + 1624) = v28;
  v29 = *(v28 - 8);
  *(v6 + 1632) = v29;
  v30 = *(v29 + 64) + 15;
  *(v6 + 1640) = swift_task_alloc();
  *(v6 + 1648) = swift_task_alloc();
  v31 = sub_265A1E9C0();
  *(v6 + 1656) = v31;
  v32 = *(v31 - 8);
  *(v6 + 1664) = v32;
  v33 = *(v32 + 64) + 15;
  *(v6 + 1672) = swift_task_alloc();
  v34 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2659FA614, 0, 0);
}

uint64_t sub_2659FA614()
{
  v194 = v0;
  v193 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1664);
  v3 = *(v0 + 1656);
  v4 = *(v0 + 1648);
  v5 = *(v0 + 1632);
  v182 = *(v0 + 1624);
  v6 = *(v0 + 1328);
  v7 = [v6 identifier];
  v8 = sub_265A1EBA0();
  v10 = v9;

  v185 = v8;
  *(v0 + 1680) = v8;
  v178 = v10;
  *(v0 + 1688) = v10;
  v11 = swift_allocObject();
  *(v0 + 1696) = v11;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  v171 = v11;
  *(v11 + 64) = -1;
  v12 = [objc_allocWithZone(MEMORY[0x277D23C68]) init];
  *(v0 + 1704) = v12;
  sub_265A1E9B0();
  sub_265A1E980();
  (*(v2 + 8))(v1, v3);
  v13 = objc_allocWithZone(MEMORY[0x277D237C8]);
  v14 = sub_265A1EB70();

  v15 = [v13 initWithContentType_];
  *(v0 + 1712) = v15;

  v175 = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v15 preferredExtractionType:1];
  [v12 setExportConfiguration_];

  *v4 = v6;
  (*(v5 + 104))(v4, *MEMORY[0x277D23A40], v182);
  v17 = [v6 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B710, &qword_265A22670);
  sub_265A0C954();
  v18 = sub_265A1EAD0();

  v158 = *MEMORY[0x277D23708];
  if (*(v18 + 16))
  {
    sub_265A0CA28(*MEMORY[0x277D23708]);
    v20 = v19;

    if (v20)
    {
      v21 = *(v0 + 1616);
      v22 = *(v0 + 1608);
      v23 = *(v0 + 1600);
      sub_2659F3D98(0, &qword_28156A890, 0x277D23B90);
      v24 = *(v22 + 104);
      v24(v21, *MEMORY[0x277D23A58], v23);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v25 = *(v0 + 1608);
  v26 = *(v0 + 2084);
  sub_2659F3D98(0, &qword_28156A890, 0x277D23B90);
  v24 = *(v25 + 104);
  if (v26)
  {
    v27 = MEMORY[0x277D23A30];
  }

  else
  {
    v27 = MEMORY[0x277D23A10];
  }

  v24(*(v0 + 1616), *v27, *(v0 + 1600));
LABEL_9:
  *(v0 + 1720) = v24;
  v28 = *(v0 + 1648);
  v29 = *(v0 + 1640);
  v30 = *(v0 + 1624);
  v31 = *(v0 + 1616);
  v32 = *(v0 + 1328);
  v33 = *(*(v0 + 1632) + 16);
  *(v0 + 1728) = v33;
  v33(v29, v28, v30);
  v169 = v12;
  v183 = sub_265A1EF80();
  *(v0 + 1736) = v183;
  v34 = [objc_opt_self() policyWithEntityMetadata_];
  *(v0 + 1744) = v34;
  v35 = v178;
  if (qword_28156A978 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 1312);
  v37 = sub_265A1EAA0();
  *(v0 + 1752) = __swift_project_value_buffer(v37, qword_28156B518);

  v38 = sub_265A1EA80();
  v39 = sub_265A1EF30();

  if (os_log_type_enabled(v38, v39))
  {
    v153 = *(v0 + 1312);
    v40 = v8;
    v41 = v34;
    v42 = *(v0 + 1304);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v188 = v44;
    *v43 = 136446466;
    v45 = v42;
    v34 = v41;
    v8 = v40;
    v35 = v178;
    *(v43 + 4) = sub_2659D9320(v45, v153, &v188);
    *(v43 + 12) = 2082;
    *(v43 + 14) = sub_2659D9320(v8, v178, &v188);
    _os_log_impl(&dword_2659CA000, v38, v39, "Making Link Connection to AppExtension for AppIntent: %{public}s, AppEntity %{public}s…", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v44, -1, -1);
    MEMORY[0x266766110](v43, -1, -1);
  }

  *(v0 + 1160) = 0;
  v46 = [v34 connectionWithError_];
  *(v0 + 1760) = v46;
  v47 = *(v0 + 1160);
  if (v46)
  {
    v176 = v46;
    v48 = *(v0 + 1312);

    v49 = v47;
    v50 = sub_265A1EA80();
    v51 = sub_265A1EF30();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 1312);
      v53 = *(v0 + 1304);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v188 = v55;
      *v54 = 136446466;
      *(v54 + 4) = sub_2659D9320(v53, v52, &v188);
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_2659D9320(v185, v35, &v188);
      _os_log_impl(&dword_2659CA000, v50, v51, "Successfully established Link Connection to AppExtension for AppIntent: %{public}s, AppEntity %{public}s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v55, -1, -1);
      MEMORY[0x266766110](v54, -1, -1);
    }

    v56 = *(v0 + 1312);

    v57 = sub_265A1EA80();
    v58 = sub_265A1EF30();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = *(v0 + 1312);
      v60 = *(v0 + 1304);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v188 = v62;
      *v61 = 136446466;
      *(v61 + 4) = sub_2659D9320(v60, v59, &v188);
      *(v61 + 12) = 2082;
      *(v61 + 14) = sub_2659D9320(v185, v35, &v188);
      _os_log_impl(&dword_2659CA000, v57, v58, "Performing Entity Query for AppIntent: %{public}s, AppEntity %{public}s…", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v62, -1, -1);
      MEMORY[0x266766110](v61, -1, -1);
    }

    if (*(v0 + 2084))
    {
      goto LABEL_21;
    }

    v63 = [*(v0 + 1328) systemProtocolMetadata];
    v64 = sub_265A1EAD0();

    if (*(v64 + 16))
    {
      sub_265A0CA28(v158);
      v66 = v65;

      if (v66)
      {
LABEL_21:
        v67 = v0 + 80;
        v68 = *(v0 + 1592);
        v69 = *(v0 + 1584);
        v70 = *(v0 + 1576);
        *(v0 + 80) = v0;
        *(v0 + 120) = v0 + 1184;
        *(v0 + 88) = sub_2659FE444;
        swift_continuation_init();
        *(v0 + 392) = v70;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 368));
        sub_2659F3D98(0, &qword_28156A8F0, 0x277D23C50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
        sub_265A1ED80();
        (*(v69 + 32))(boxed_opaque_existential_1, v68, v70);
        *(v0 + 336) = MEMORY[0x277D85DD0];
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_265A0C130;
        *(v0 + 360) = &block_descriptor_11;
        [v176 performConfigurableQuery:v183 completionHandler:v0 + 336];
        (*(v69 + 8))(boxed_opaque_existential_1, v70);
LABEL_31:
        v100 = *MEMORY[0x277D85DE8];

        return MEMORY[0x282200938](v67);
      }
    }

    else
    {
    }

    v67 = v0 + 208;
    v94 = *(v0 + 1592);
    v95 = *(v0 + 1584);
    v96 = *(v0 + 1576);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1216;
    *(v0 + 216) = sub_2659FB8FC;
    swift_continuation_init();
    *(v0 + 520) = v96;
    v97 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
    *(v0 + 1768) = sub_2659F3D98(0, &qword_28156A8F0, 0x277D23C50);
    *(v0 + 1776) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    sub_265A1ED80();
    v98 = *(v95 + 32);
    *(v0 + 1784) = v98;
    *(v0 + 1792) = (v95 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v98(v97, v94, v96);
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_265A0C130;
    *(v0 + 488) = &block_descriptor_0;
    [v176 performConfigurableQuery:v183 completionHandler:v0 + 464];
    v99 = *(v95 + 8);
    *(v0 + 1800) = v99;
    *(v0 + 1808) = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v99(v97, v96);
    goto LABEL_31;
  }

  v186 = v34;
  v72 = (v0 + 1192);
  v73 = v47;
  v74 = sub_265A1E690();

  swift_willThrow();
  *(v0 + 1176) = v74;
  v75 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_35;
  }

  v76 = *v72;
  if ([*v72 code] != -10814)
  {

LABEL_35:
    v101 = *(v0 + 1312);

    v102 = v74;
    v103 = sub_265A1EA80();
    v104 = sub_265A1EF20();

    if (os_log_type_enabled(v103, v104))
    {
      v166 = *(v0 + 1312);
      v105 = *(v0 + 1304);
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *&v188 = v108;
      *v106 = 136446722;
      *(v106 + 4) = sub_2659D9320(v8, v35, &v188);
      *(v106 + 12) = 2082;
      *(v106 + 14) = sub_2659D9320(v105, v166, &v188);
      *(v106 + 22) = 2114;
      v109 = v74;
      v110 = _swift_stdlib_bridgeErrorToNSError();
      *(v106 + 24) = v110;
      *v107 = v110;
      _os_log_impl(&dword_2659CA000, v103, v104, "Unable to form connection for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v106, 0x20u);
      sub_2659DA270(v107, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v107, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v108, -1, -1);
      MEMORY[0x266766110](v106, -1, -1);
    }

    v111 = *(v0 + 1312);
    v112 = *(v0 + 1304);
    v113 = sub_265A1E680();
    sub_265A0BFD4(v171, v112, v111, v8, v35, &v188);
    v173 = v189;
    v180 = v188;
    v163 = v191;
    v167 = v190;
    v161 = v192;
    v114 = [v113 domain];
    v115 = sub_265A1EBA0();
    v156 = v116;
    v159 = v115;

    v154 = [v113 code];
    swift_getErrorValue();
    v117 = *(v0 + 1048);
    v118 = *(v0 + 1056);
    v119 = *(v0 + 1064);
    v120 = sub_265A1F380();
    v151 = v121;
    Current = CFAbsoluteTimeGetCurrent();
    v87 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
    v124 = *(v87 + 2);
    v123 = *(v87 + 3);
    if (v124 >= v123 >> 1)
    {
      v87 = sub_2659E0698((v123 > 1), v124 + 1, 1, v87);
    }

    v125 = *(v0 + 1648);
    v126 = *(v0 + 1632);
    v127 = *(v0 + 1624);

    (*(v126 + 8))(v125, v127);
    *(v87 + 2) = v124 + 1;
    v128 = &v87[120 * v124];
    v128[32] = 2;
    *(v128 + 56) = v173;
    *(v128 + 40) = v180;
    *(v128 + 9) = v167;
    *(v128 + 10) = v163;
    v128[88] = v161;
    *(v128 + 12) = 1;
    *(v128 + 13) = v159;
    *(v128 + 14) = v156;
    *(v128 + 15) = v154;
    *(v128 + 16) = v120;
    *(v128 + 17) = v151;
    *(v128 + 18) = Current;
    goto LABEL_40;
  }

  v77 = *(v0 + 1312);

  v78 = sub_265A1EA80();
  v79 = sub_265A1EF30();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = *(v0 + 1312);
    v81 = *(v0 + 1304);
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v188 = v83;
    *v82 = 136446210;
    *(v82 + 4) = sub_2659D9320(v81, v80, &v188);
    _os_log_impl(&dword_2659CA000, v78, v79, "AppIntent '%{public}s' is from a bundle that is in an offloaded state, skipping (entity).", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x266766110](v83, -1, -1);
    MEMORY[0x266766110](v82, -1, -1);
  }

  sub_265A0BFD4(v171, *(v0 + 1304), *(v0 + 1312), v8, v35, &v188);
  v172 = v189;
  v179 = v188;
  v84 = v191;
  v165 = v190;
  v85 = v192;
  v86 = CFAbsoluteTimeGetCurrent();
  v87 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
  v89 = *(v87 + 2);
  v88 = *(v87 + 3);
  if (v89 >= v88 >> 1)
  {
    v87 = sub_2659E0698((v88 > 1), v89 + 1, 1, v87);
  }

  v90 = *(v0 + 1648);
  v91 = *(v0 + 1632);
  v92 = *(v0 + 1624);

  (*(v91 + 8))(v90, v92);
  *(v87 + 2) = v89 + 1;
  v93 = &v87[120 * v89];
  v93[32] = 0;
  *(v93 + 56) = v172;
  *(v93 + 40) = v179;
  *(v93 + 9) = v165;
  *(v93 + 10) = v84;
  v93[88] = v85;
  *(v93 + 12) = 0x8000000000000000;
  *(v93 + 104) = 0u;
  *(v93 + 120) = 0u;
  *(v93 + 17) = 0;
  *(v93 + 18) = v86;

LABEL_40:
  v129 = *(v0 + 1696);
  v130 = *(v0 + 1688);
  v131 = *(v0 + 1680);
  v132 = *(v0 + 1672);
  v133 = *(v0 + 1648);
  v140 = *(v0 + 1640);
  v141 = *(v0 + 1616);
  v142 = *(v0 + 1592);
  v143 = *(v0 + 1568);
  v144 = *(v0 + 1560);
  v145 = *(v0 + 1552);
  v146 = *(v0 + 1544);
  v147 = *(v0 + 1520);
  v148 = *(v0 + 1512);
  v149 = *(v0 + 1504);
  v150 = *(v0 + 1496);
  v152 = *(v0 + 1488);
  v155 = *(v0 + 1480);
  v157 = *(v0 + 1472);
  v160 = *(v0 + 1464);
  v162 = *(v0 + 1456);
  v164 = *(v0 + 1448);
  v168 = *(v0 + 1432);
  v170 = *(v0 + 1408);
  v174 = *(v0 + 1400);
  v177 = *(v0 + 1392);
  v181 = *(v0 + 1384);
  v184 = *(v0 + 1376);
  v187 = *(v0 + 1352);
  v134 = *(v0 + 1312);
  v135 = *(v0 + 1304);
  v136 = *(v0 + 1296);

  *v136 = v135;
  v136[1] = v134;
  v136[2] = v131;
  v136[3] = v130;
  v136[4] = MEMORY[0x277D84F90];
  v136[5] = v87;

  v137 = *(v0 + 8);
  v138 = *MEMORY[0x277D85DE8];

  return v137();
}

uint64_t sub_2659FB8FC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1816) = v2;
  if (v2)
  {
    v3 = sub_265A03F84;
  }

  else
  {
    v3 = sub_2659FBA38;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2659FBA38()
{
  v497 = v0;
  v496 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1216);
  *(v0 + 1832) = v1;
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1312);

  v5 = v1;
  v6 = sub_265A1EA80();
  v7 = sub_265A1EF30();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1688);
    v9 = *(v0 + 1680);
    v10 = *(v0 + 1312);
    v11 = *(v0 + 1304);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v491 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_2659D9320(v11, v10, &v491);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_2659D9320(v9, v8, &v491);
    _os_log_impl(&dword_2659CA000, v6, v7, "…successfully executed Entity Query for AppIntent: %{public}s, AppEntity %{public}s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v13, -1, -1);
    MEMORY[0x266766110](v12, -1, -1);
  }

  v14 = [v5 value];
  v15 = [v14 value];

  sub_265A1F000();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B718, &qword_265A22678);
  if (!swift_dynamicCast())
  {
    sub_265A0CAD0();
    v30 = swift_allocError();
    *v31 = 0;
    swift_willThrow();

    v485 = MEMORY[0x277D84F90];
    v480 = MEMORY[0x277D84F90];
LABEL_9:
    v32 = (v0 + 1280);
    *(v0 + 1248) = v30;
    v33 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v34 = *v32;
      v35 = [*v32 domain];
      v36 = sub_265A1EBA0();
      v38 = v37;

      v39 = *MEMORY[0x277D23A98];
      if (v36 == sub_265A1EBA0() && v38 == v40)
      {

LABEL_104:
        v267 = *(v0 + 1752);
        v268 = *(v0 + 1688);
        v269 = *(v0 + 1312);

        v270 = v34;
        v271 = sub_265A1EA80();
        v272 = sub_265A1EF30();

        if (os_log_type_enabled(v271, v272))
        {
          v273 = *(v0 + 1688);
          v274 = *(v0 + 1680);
          v473 = *(v0 + 1312);
          v275 = *(v0 + 1304);
          v276 = swift_slowAlloc();
          v277 = swift_slowAlloc();
          v278 = swift_slowAlloc();
          *&v491 = v278;
          *v276 = 136446722;
          *(v276 + 4) = sub_2659D9320(v274, v273, &v491);
          *(v276 + 12) = 2082;
          *(v276 + 14) = sub_2659D9320(v275, v473, &v491);
          *(v276 + 22) = 2114;
          *(v276 + 24) = v270;
          *v277 = v270;
          v279 = v270;
          _os_log_impl(&dword_2659CA000, v271, v272, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v276, 0x20u);
          sub_2659DA270(v277, &qword_28002B678, &unk_265A21AC0);
          MEMORY[0x266766110](v277, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266766110](v278, -1, -1);
          MEMORY[0x266766110](v276, -1, -1);
        }

        v280 = *(v0 + 1696);
        v281 = *(v0 + 1688);
        v282 = *(v0 + 1680);
        v283 = *(v0 + 1312);
        v284 = *(v0 + 1304);
        v285 = v270;
        sub_265A0BFD4(v280, v284, v283, v282, v281, &v491);
        v467 = v492;
        v474 = v491;
        v458 = v493;
        v453 = v494;
        v445 = v495;
        v286 = [v285 domain];
        v287 = sub_265A1EBA0();
        v432 = v288;
        v436 = v287;

        v428 = [v285 code];
        v289 = [v285 localizedDescription];

        v290 = sub_265A1EBA0();
        v418 = v291;
        v424 = v290;

        Current = CFAbsoluteTimeGetCurrent();
        v293 = v485;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v293 = sub_2659E0698(0, *(v485 + 2) + 1, 1, v485);
        }

        v295 = *(v293 + 2);
        v294 = *(v293 + 3);
        if (v295 >= v294 >> 1)
        {
          v485 = sub_2659E0698((v294 > 1), v295 + 1, 1, v293);
        }

        else
        {
          v485 = v293;
        }

        v296 = *(v0 + 1760);
        v297 = *(v0 + 1744);
        v298 = *(v0 + 1712);
        v299 = *(v0 + 1704);
        v300 = *(v0 + 1648);
        v301 = *(v0 + 1632);
        v302 = *(v0 + 1624);

        (*(v301 + 8))(v300, v302);
        *(v485 + 2) = v295 + 1;
        v303 = &v485[120 * v295];
        v303[32] = 0;
        *(v303 + 56) = v467;
        *(v303 + 40) = v474;
        *(v303 + 9) = v458;
        *(v303 + 10) = v453;
        v303[88] = v445;
        *(v303 + 12) = 2;
        *(v303 + 13) = v436;
        *(v303 + 14) = v432;
        *(v303 + 15) = v428;
        *(v303 + 16) = v424;
        *(v303 + 17) = v418;
        *(v303 + 18) = Current;

        goto LABEL_133;
      }

      v266 = sub_265A1F340();

      if (v266)
      {
        goto LABEL_104;
      }
    }

    v306 = *(v0 + 1752);
    v307 = *(v0 + 1688);
    v308 = *(v0 + 1312);

    v309 = v30;
    v310 = sub_265A1EA80();
    v311 = sub_265A1EF20();

    if (os_log_type_enabled(v310, v311))
    {
      v312 = *(v0 + 1688);
      v313 = *(v0 + 1680);
      v475 = *(v0 + 1312);
      v468 = *(v0 + 1304);
      v314 = swift_slowAlloc();
      v315 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      *&v491 = v316;
      *v314 = 136446722;
      *(v314 + 4) = sub_2659D9320(v313, v312, &v491);
      *(v314 + 12) = 2082;
      *(v314 + 14) = sub_2659D9320(v468, v475, &v491);
      *(v314 + 22) = 2114;
      v317 = v30;
      v318 = _swift_stdlib_bridgeErrorToNSError();
      *(v314 + 24) = v318;
      *v315 = v318;
      _os_log_impl(&dword_2659CA000, v310, v311, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v314, 0x20u);
      sub_2659DA270(v315, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v315, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v316, -1, -1);
      MEMORY[0x266766110](v314, -1, -1);
    }

    v319 = *(v0 + 1696);
    v320 = *(v0 + 1688);
    v321 = *(v0 + 1680);
    v322 = *(v0 + 1312);
    v323 = *(v0 + 1304);
    v324 = sub_265A1E680();
    sub_265A0BFD4(v319, v323, v322, v321, v320, &v491);
    v469 = v492;
    v476 = v491;
    v459 = v493;
    v454 = v494;
    v446 = v495;
    v325 = [v324 domain];
    v326 = sub_265A1EBA0();
    v433 = v327;
    v437 = v326;

    v429 = v324;
    v425 = [v324 code];
    swift_getErrorValue();
    v328 = *(v0 + 1024);
    v329 = *(v0 + 1032);
    v330 = *(v0 + 1040);
    v419 = sub_265A1F380();
    v414 = v331;
    v332 = CFAbsoluteTimeGetCurrent();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v485 = sub_2659E0698(0, *(v485 + 2) + 1, 1, v485);
    }

    v334 = *(v485 + 2);
    v333 = *(v485 + 3);
    if (v334 >= v333 >> 1)
    {
      v485 = sub_2659E0698((v333 > 1), v334 + 1, 1, v485);
    }

    v335 = *(v0 + 1760);
    v336 = *(v0 + 1744);
    v337 = *(v0 + 1712);
    v338 = *(v0 + 1704);
    v339 = *(v0 + 1648);
    v340 = *(v0 + 1632);
    v341 = *(v0 + 1624);

    (*(v340 + 8))(v339, v341);
    *(v485 + 2) = v334 + 1;
    v342 = &v485[120 * v334];
    v342[32] = 2;
    *(v342 + 56) = v469;
    *(v342 + 40) = v476;
    *(v342 + 9) = v459;
    *(v342 + 10) = v454;
    v342[88] = v446;
    *(v342 + 12) = 2;
    *(v342 + 13) = v437;
    *(v342 + 14) = v433;
    *(v342 + 15) = v425;
    *(v342 + 16) = v419;
    *(v342 + 17) = v414;
    *(v342 + 18) = v332;
    goto LABEL_133;
  }

  v16 = *(v0 + 1752);
  v17 = *(v0 + 1688);
  v18 = *(v0 + 1312);
  v19 = *(v0 + 1272);
  *(v0 + 1840) = v19;

  v20 = sub_265A1EA80();
  v21 = sub_265A1EF30();

  v22 = v19 >> 62;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v491 = v24;
    *v23 = 134349570;
    v479 = v24;
    if (v22)
    {
      v25 = sub_265A1F1E0();
    }

    else
    {
      v25 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = *(v0 + 1688);
    v27 = *(v0 + 1680);
    v28 = *(v0 + 1312);
    v29 = *(v0 + 1304);
    *(v23 + 4) = v25;

    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_2659D9320(v29, v28, &v491);
    *(v23 + 22) = 2082;
    *(v23 + 24) = sub_2659D9320(v27, v26, &v491);
    _os_log_impl(&dword_2659CA000, v20, v21, "Begin processing %{public}ld Link Entity Instances for AppIntent: %{public}s, AppEntity %{public}s…", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v479, -1, -1);
    MEMORY[0x266766110](v23, -1, -1);
  }

  else
  {
  }

  *(v0 + 1848) = v19;
  if (v22)
  {
    goto LABEL_128;
  }

  v41 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 1856) = v41;
  if (v41)
  {
    do
    {
      v42 = 0;
      v381 = (v0 + 584);
      v384 = (v0 + 808);
      v472 = (v0 + 1232);
      v431 = (v0 + 633);
      v382 = (v0 + 857);
      v383 = (v0 + 801);
      v385 = (v0 + 1984);
      v386 = (v0 + 1153);
      v387 = (v0 + 2047);
      v388 = (v0 + 2040);
      v427 = (v0 + 2068);
      v485 = MEMORY[0x277D84F90];
      v43 = MEMORY[0x277D84F90];
      v44 = MEMORY[0x277D84F90];
      while (1)
      {
        *(v0 + 1880) = v44;
        *(v0 + 1872) = v43;
        *(v0 + 1864) = v485;
        v45 = *(v0 + 1848);
        if ((v45 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x2667656F0](v42, *(v0 + 1840));
        }

        else
        {
          if (v42 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_127;
          }

          v46 = *(*(v0 + 1840) + 8 * v42 + 32);
        }

        v47 = v46;
        *(v0 + 1888) = v46;
        *(v0 + 1896) = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        v48 = [v46 value];
        sub_265A1F000();
        swift_unknownObjectRelease();
        sub_2659F3D98(0, &qword_28156A808, 0x277D237F0);
        if (!swift_dynamicCast())
        {
          v58 = v44;
          sub_265A0CAD0();
          v59 = swift_allocError();
          *v60 = 1;
          swift_willThrow();
          *v472 = v59;
          v462 = v59;
          v61 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
          v480 = v43;
          if (!swift_dynamicCast())
          {
            goto LABEL_111;
          }

          if (*(v0 + 2082) == 1)
          {
            v75 = *(v0 + 1752);
            v76 = *(v0 + 1688);
            v77 = *(v0 + 1312);

            v65 = sub_265A1EA80();
            v78 = sub_265A1EF20();

            if (!os_log_type_enabled(v65, v78))
            {
              goto LABEL_17;
            }

            v79 = *(v0 + 1688);
            v80 = *(v0 + 1680);
            v450 = *(v0 + 1312);
            v81 = *(v0 + 1304);
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *&v491 = v71;
            *v70 = 136446466;
            *(v70 + 4) = sub_2659D9320(v80, v79, &v491);
            *(v70 + 12) = 2082;
            *(v70 + 14) = sub_2659D9320(v81, v450, &v491);
            v72 = v78;
            v73 = v65;
            v74 = "Failed to retrieve the instance of AppEntity '%{public}s', AppIntent '%{public}s'.";
LABEL_37:
            _os_log_impl(&dword_2659CA000, v73, v72, v74, v70, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v71, -1, -1);
            MEMORY[0x266766110](v70, -1, -1);

            v43 = v480;
          }

          else
          {
            if (*(v0 + 2082))
            {
LABEL_111:
              v304 = *(v0 + 1840);
              v305 = *(v0 + 1832);

              v30 = v59;
              goto LABEL_9;
            }

            v62 = *(v0 + 1752);
            v63 = *(v0 + 1688);
            v64 = *(v0 + 1312);

            v65 = sub_265A1EA80();
            v66 = sub_265A1EF20();

            if (os_log_type_enabled(v65, v66))
            {
              v67 = *(v0 + 1688);
              v68 = *(v0 + 1680);
              v449 = *(v0 + 1312);
              v69 = *(v0 + 1304);
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              *&v491 = v71;
              *v70 = 136446466;
              *(v70 + 4) = sub_2659D9320(v68, v67, &v491);
              *(v70 + 12) = 2082;
              *(v70 + 14) = sub_2659D9320(v69, v449, &v491);
              v72 = v66;
              v73 = v65;
              v74 = "Entity Query returned unexpected type '%{public}s', AppIntent '%{public}s'.";
              goto LABEL_37;
            }

LABEL_17:

            v43 = v480;
          }

          v44 = v58;

          goto LABEL_19;
        }

        v49 = *(v0 + 1256);
        *(v0 + 1904) = v49;
        v50 = swift_allocObject();
        *(v0 + 1912) = v50;
        *(v50 + 16) = 0u;
        *(v50 + 32) = 0u;
        *(v50 + 48) = 0u;
        *(v50 + 64) = -1;
        v51 = [v47 displayRepresentation];
        *(v0 + 1920) = v51;
        if (!v51)
        {
          v481 = v43;
          sub_265A0C1E0(v50, *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), v49, v0 + 528);
          v451 = *(v0 + 544);
          v463 = *(v0 + 528);
          v82 = *(v0 + 560);
          v83 = *(v0 + 568);
          v84 = *(v0 + 576);
          v85 = CFAbsoluteTimeGetCurrent();
          *v427 = *(v0 + 577);
          *(v0 + 2071) = *(v0 + 580);
          *v431 = *(v0 + 2033);
          *(v0 + 636) = *(v0 + 2036);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v485 = sub_2659E0698(0, *(v485 + 2) + 1, 1, v485);
          }

          v86 = v485;
          v88 = *(v485 + 2);
          v87 = *(v485 + 3);
          if (v88 >= v87 >> 1)
          {
            v86 = sub_2659E0698((v87 > 1), v88 + 1, 1, v485);
          }

          v485 = v86;
          *(v86 + 2) = v88 + 1;
          v89 = &v86[120 * v88];
          v89[32] = 2;
          v90 = *v427;
          *(v89 + 9) = *(v0 + 2071);
          *(v89 + 33) = v90;
          *(v89 + 56) = v451;
          *(v89 + 40) = v463;
          *(v89 + 9) = v82;
          *(v89 + 10) = v83;
          v89[88] = v84;
          v91 = *v431;
          *(v89 + 23) = *(v0 + 636);
          *(v89 + 89) = v91;
          *(v89 + 12) = 0x8000000000000001;
          *(v89 + 104) = 0u;
          *(v89 + 120) = 0u;
          *(v89 + 17) = 0;
          *(v89 + 18) = v85;

          v43 = v481;
          goto LABEL_19;
        }

        v52 = [v47 exportedContent];
        if (!v52)
        {
          v92 = *(*(v0 + 1536) + 56);
          v92(*(v0 + 1520), 1, 1, *(v0 + 1528));
LABEL_46:
          *(v0 + 1928) = v92;
          sub_2659DA270(*(v0 + 1520), &qword_28002B700, &qword_265A22658);
          v99 = [v47 exportedContent];
          if (!v99)
          {
            goto LABEL_123;
          }

          v100 = v99;
          v101 = [v99 content];

          v102 = [v101 data];
          v103 = sub_265A1E780();
          v105 = v104;

          v106 = v105 >> 62;
          if ((v105 >> 62) > 1)
          {
            if (v106 != 2)
            {
              goto LABEL_121;
            }

            v107 = *(v103 + 16);
            v108 = *(v103 + 24);
          }

          else
          {
            if (!v106)
            {
              if ((v105 & 0xFF000000000000) == 0)
              {
                goto LABEL_121;
              }

LABEL_55:
              v109 = *(v0 + 1536);
              v110 = *(v0 + 1528);
              v111 = *(v0 + 1504);
              v112 = *(v0 + 1496);
              v92(v112, 1, 1, v110);
              sub_265A1E700();
              sub_265A0CB94(v103, v105);
              sub_2659DA270(v112, &qword_28002B700, &qword_265A22658);
              v486 = *(v109 + 48);
              v113 = v486(v111, 1, v110);
              v98 = (v0 + 1504);
              if (v113 == 1)
              {
                sub_2659DA270(*(v0 + 1504), &qword_28002B700, &qword_265A22658);
LABEL_123:
                v490 = *(v0 + 1760);
                v345 = *(v0 + 1488);
                v346 = *(v0 + 1440);
                v347 = *(v0 + 1432);
                v348 = *(v0 + 1424);
                v349 = *(v0 + 1416);
                *(v0 + 16) = v0;
                *(v0 + 56) = v345;
                *(v0 + 24) = sub_265A00F8C;
                swift_continuation_init();
                *(v0 + 328) = v349;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
                *(v0 + 1936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
                sub_265A1ED80();
                (*(v348 + 32))(boxed_opaque_existential_1, v347, v349);
                *(v0 + 272) = MEMORY[0x277D85DD0];
                *(v0 + 280) = 1107296256;
                *(v0 + 288) = sub_265A0C3A0;
                *(v0 + 296) = &block_descriptor_8;
                [v490 fetchEntityURL:v49 completionHandler:?];
                (*(v348 + 8))(boxed_opaque_existential_1, v349);
                v351 = *MEMORY[0x277D85DE8];
                v352 = v0 + 16;

                return MEMORY[0x282200938](v352);
              }

              goto LABEL_56;
            }

            v107 = v103;
            v108 = v103 >> 32;
          }

          if (v107 == v108)
          {
LABEL_121:
            sub_265A0CB94(v103, v105);
            goto LABEL_123;
          }

          goto LABEL_55;
        }

        v53 = v52;
        v54 = [v52 content];

        v55 = [v54 fileURL];
        if (v55)
        {
          v56 = *(v0 + 1512);
          sub_265A1E730();

          v57 = 0;
        }

        else
        {
          v57 = 1;
        }

        v93 = *(v0 + 1536);
        v94 = *(v0 + 1528);
        v95 = *(v0 + 1520);
        v96 = *(v0 + 1512);
        v92 = *(v93 + 56);
        v92(v96, v57, 1, v94);
        sub_265A0CB24(v96, v95);
        v486 = *(v93 + 48);
        v97 = v486(v95, 1, v94);
        v98 = (v0 + 1520);
        if (v97 == 1)
        {
          goto LABEL_46;
        }

LABEL_56:
        v457 = v92;
        v114 = *(v0 + 1568);
        v115 = *(v0 + 1552);
        v116 = *(v0 + 1544);
        v117 = *(v0 + 1536);
        v118 = *(v0 + 1528);
        v119 = *(v0 + 1320);
        v440 = *(v117 + 32);
        v440(v114, *v98, v118);
        v120 = *(v117 + 16);
        v120(v115, v114, v118);
        v464 = v120;
        v120(v116, v114, v118);
        v121 = *(v119 + 16);

        if (v121)
        {
          v122 = 0;
          while (1)
          {
            v123 = *(v0 + 1544);
            v124 = *(v0 + 1528);
            v125 = *(v0 + 1464);
            v126 = *(v0 + 1536) + 48;
            v127 = *(v0 + 1320) + v122;
            v129 = *(v127 + 32);
            v128 = *(v127 + 40);

            v129(v123);

            if (v486(v125, 1, v124) != 1)
            {
              break;
            }

            sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
            v122 += 16;
            if (!--v121)
            {
              goto LABEL_60;
            }
          }

          v132 = *(v0 + 1552);
          v133 = *(v0 + 1536);
          v134 = *(v0 + 1528);
          v135 = *(v0 + 1456);
          v136 = *(v0 + 1448);
          sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
          v138 = *(v127 + 32);
          v137 = *(v127 + 40);

          v138(v132);
          v130 = *(v133 + 8);
          v130(v132, v134);

          sub_265A0CBE8(v135, v136, &qword_28002B700, &qword_265A22658);
          if (v486(v136, 1, v134) == 1)
          {
            v352 = (v130)(*(v0 + 1544), *(v0 + 1528));
            __break(1u);
            return MEMORY[0x282200938](v352);
          }

          v139 = *(v0 + 1456);
          v140 = *(v0 + 1536) + 32;
          v440(*(v0 + 1472), *(v0 + 1448), *(v0 + 1528));
          sub_2659DA270(v139, &qword_28002B700, &qword_265A22658);
          v131 = 0;
        }

        else
        {
LABEL_60:
          v130 = *(*(v0 + 1536) + 8);
          v130(*(v0 + 1552), *(v0 + 1528));
          v131 = 1;
        }

        v452 = v130;
        v141 = *(v0 + 1544);
        v142 = *(v0 + 1528);
        v143 = *(v0 + 1472);
        v144 = *(v0 + 1320);
        v145 = *(v0 + 1536) + 8;
        v457(v143, v131, 1, v142);

        v130(v141, v142);
        if (v486(v143, 1, v142) == 1)
        {
          v146 = *(v0 + 1568);
          v147 = *(v0 + 1560);
          v148 = *(v0 + 1528);
          sub_2659DA270(*(v0 + 1472), &qword_28002B700, &qword_265A22658);
          v464(v147, v146, v148);
          v149 = *(v0 + 1864);
        }

        else
        {
          v150 = *(v0 + 1912);
          v151 = *(v0 + 1904);
          v152 = *(v0 + 1864);
          v153 = *(v0 + 1688);
          v154 = *(v0 + 1680);
          v155 = *(v0 + 1312);
          v156 = *(v0 + 1536) + 32;
          v157 = *(v0 + 1304);
          v440(*(v0 + 1560), *(v0 + 1472), *(v0 + 1528));
          sub_265A0C1E0(v150, v157, v155, v154, v153, v151, v384);
          *v441 = *(v0 + 824);
          v487 = *v384;
          v158 = *(v0 + 840);
          v159 = *(v0 + 848);
          v160 = *(v0 + 856);
          v161 = CFAbsoluteTimeGetCurrent();
          *v388 = *(v0 + 2054);
          *(v0 + 2043) = *(v0 + 2057);
          *v387 = *(v0 + 2061);
          *(v0 + 2050) = *(v0 + 2064);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v149 = *(v0 + 1864);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v149 = sub_2659E0698(0, *(v149 + 2) + 1, 1, *(v0 + 1864));
          }

          v164 = *(v149 + 2);
          v163 = *(v149 + 3);
          if (v164 >= v163 >> 1)
          {
            v149 = sub_2659E0698((v163 > 1), v164 + 1, 1, v149);
          }

          *(v149 + 2) = v164 + 1;
          v165 = &v149[120 * v164];
          v165[32] = 1;
          v166 = *v388;
          *(v165 + 9) = *(v0 + 2043);
          *(v165 + 33) = v166;
          *(v165 + 56) = *v441;
          *(v165 + 40) = v487;
          *(v165 + 9) = v158;
          *(v165 + 10) = v159;
          v165[88] = v160;
          v167 = *v387;
          *(v165 + 23) = *(v0 + 2050);
          *(v165 + 89) = v167;
          *(v165 + 6) = xmmword_265A22600;
          *(v165 + 7) = 0u;
          *(v165 + 8) = 0u;
          *(v165 + 18) = v161;
        }

        v168 = [*(v0 + 1920) image];
        if (v168 && (v169 = v168, sub_265A1110C(v0 + 1096), v169, *(v0 + 1104)))
        {
          v442 = *(v0 + 1104);
          v421 = *(v0 + 1096);
          v416 = *(v0 + 1112);
        }

        else
        {
          v170 = *(v0 + 1560);
          sub_265A1CF6C(v0 + 1128);
          if (!*(v0 + 1136))
          {
            v489 = v149;
            v233 = *(v0 + 1904);
            v234 = *(v0 + 1752);
            v235 = *(v0 + 1312);
            v236 = *(v0 + 1328);

            v237 = v233;
            v238 = sub_265A1EA80();
            v239 = sub_265A1EF30();

            if (os_log_type_enabled(v238, v239))
            {
              v444 = *(v0 + 1904);
              v240 = *(v0 + 1328);
              v483 = *(v0 + 1312);
              v465 = *(v0 + 1304);
              v241 = swift_slowAlloc();
              v242 = swift_slowAlloc();
              v243 = swift_slowAlloc();
              *&v491 = v243;
              *v241 = 136446979;
              v244 = [v240 identifier];
              v245 = sub_265A1EBA0();
              v247 = v246;

              v248 = sub_2659D9320(v245, v247, &v491);

              *(v241 + 4) = v248;
              *(v241 + 12) = 2160;
              *(v241 + 14) = 1752392040;
              *(v241 + 22) = 2113;
              v249 = [v444 identifier];
              *(v241 + 24) = v249;
              *v242 = v249;
              *(v241 + 32) = 2082;
              *(v241 + 34) = sub_2659D9320(v465, v483, &v491);
              _os_log_impl(&dword_2659CA000, v238, v239, "Could not resolve Icon for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v241, 0x2Au);
              sub_2659DA270(v242, &qword_28002B678, &unk_265A21AC0);
              MEMORY[0x266766110](v242, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x266766110](v243, -1, -1);
              MEMORY[0x266766110](v241, -1, -1);
            }

            sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v0 + 640);
            v466 = *(v0 + 656);
            v484 = *(v0 + 640);
            v250 = *(v0 + 672);
            v251 = *(v0 + 680);
            v252 = *(v0 + 688);
            v253 = CFAbsoluteTimeGetCurrent();
            *v383 = *(v0 + 1114);
            *(v0 + 804) = *(v0 + 1117);
            *v382 = *(v0 + 1121);
            *(v0 + 860) = *(v0 + 1124);
            v254 = v489;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v254 = sub_2659E0698(0, *(v489 + 2) + 1, 1, v489);
            }

            v256 = *(v254 + 2);
            v255 = *(v254 + 3);
            v423 = v251;
            v417 = v252;
            if (v256 >= v255 >> 1)
            {
              v254 = sub_2659E0698((v255 > 1), v256 + 1, 1, v254);
            }

            v257 = *(v0 + 1920);
            v258 = *(v0 + 1912);
            v259 = *(v0 + 1888);
            v260 = *(v0 + 1568);
            v261 = *(v0 + 1560);
            v262 = *(v0 + 1528);

            v452(v261, v262);
            v452(v260, v262);
            *(v254 + 2) = v256 + 1;
            v485 = v254;
            v263 = &v254[120 * v256];
            v263[32] = 2;
            v264 = *v383;
            *(v263 + 9) = *(v0 + 804);
            *(v263 + 33) = v264;
            *(v263 + 56) = v466;
            *(v263 + 40) = v484;
            *(v263 + 9) = v250;
            *(v263 + 10) = v423;
            v263[88] = v417;
            v265 = *v382;
            *(v263 + 23) = *(v0 + 860);
            *(v263 + 89) = v265;
            *(v263 + 6) = xmmword_265A22620;
            *(v263 + 7) = 0u;
            *(v263 + 8) = 0u;
            *(v263 + 18) = v253;

            v44 = *(v0 + 1880);
            v43 = *(v0 + 1872);
            goto LABEL_19;
          }

          v442 = *(v0 + 1136);
          v421 = *(v0 + 1128);
          v416 = *(v0 + 1144);
          sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v381);
          v412 = *(v0 + 600);
          v488 = *v381;
          v171 = *(v0 + 616);
          v172 = *(v0 + 624);
          v173 = *(v0 + 632);
          v174 = CFAbsoluteTimeGetCurrent();
          *v386 = *(v0 + 1991);
          *(v0 + 1156) = *(v0 + 1994);
          *v385 = *(v0 + 1998);
          *(v0 + 1987) = *(v0 + 2001);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v149 = sub_2659E0698(0, *(v149 + 2) + 1, 1, v149);
          }

          v176 = *(v149 + 2);
          v175 = *(v149 + 3);
          if (v176 >= v175 >> 1)
          {
            v149 = sub_2659E0698((v175 > 1), v176 + 1, 1, v149);
          }

          *(v149 + 2) = v176 + 1;
          v177 = &v149[120 * v176];
          v177[32] = 1;
          v178 = *v386;
          *(v177 + 9) = *(v0 + 1156);
          *(v177 + 33) = v178;
          *(v177 + 56) = v412;
          *(v177 + 40) = v488;
          *(v177 + 9) = v171;
          *(v177 + 10) = v172;
          v177[88] = v173;
          v179 = *v385;
          *(v177 + 23) = *(v0 + 1987);
          *(v177 + 89) = v179;
          *(v177 + 6) = xmmword_265A22610;
          *(v177 + 7) = 0u;
          *(v177 + 8) = 0u;
          *(v177 + 18) = v174;
        }

        v180 = [*(v0 + 1920) subtitle];
        if (v180)
        {
          v181 = v180;
          v182 = [v180 localizedStringResource];
          if (!v182)
          {
            goto LABEL_120;
          }

          v183 = v182;
          v184 = *(v0 + 1408);
          *(v0 + 952) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
          *(v0 + 928) = v183;
          v185 = v183;
          sub_265A1E6A0();

          v186 = 0;
        }

        else
        {
          v186 = 1;
        }

        v187 = *(v0 + 1920);
        v188 = *(v0 + 1904);
        v189 = *(*(v0 + 1344) + 56);
        (v189)(*(v0 + 1408), v186, 1, *(v0 + 1336));
        v190 = [v188 identifier];
        v191 = [v190 instanceIdentifier];

        v192 = sub_265A1EBA0();
        v413 = v193;

        v194 = [v187 title];
        v195 = [v194 localizedStringResource];
        if (!v195)
        {
LABEL_120:
          result = sub_265A1F1C0();
          v344 = *MEMORY[0x277D85DE8];
          return result;
        }

        v196 = v195;
        v485 = v149;
        v197 = *(v0 + 1920);
        v198 = *(v0 + 1408);
        v199 = *(v0 + 1400);
        v200 = *(v0 + 1352);
        v201 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
        *(v0 + 888) = v201;
        *(v0 + 864) = v196;
        v202 = v196;
        sub_265A1E6A0();

        sub_265A0CBE8(v198, v199, &qword_28002B6F0, &qword_265A21110);
        v203 = [v197 synonyms];
        if (v203)
        {
          v204 = v203;
          sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
          sub_265A1ECC0();

          v205 = sub_265A0C54C();
        }

        else
        {
          v205 = MEMORY[0x277D84F90];
        }

        v206 = [*(v0 + 1920) descriptionText];
        v408 = v192;
        v410 = v189;
        v406 = v205;
        if (v206)
        {
          v207 = v206;
          v208 = [v206 localizedStringResource];
          if (!v208)
          {
            goto LABEL_120;
          }

          v209 = *(v0 + 1392);
          *(v0 + 920) = v201;
          *(v0 + 896) = v208;
          v210 = v208;
          sub_265A1E6A0();
        }

        v211 = *(v0 + 1560);
        v212 = *(v0 + 1528);
        v400 = *(v0 + 1400);
        v396 = *(v0 + 1688);
        v398 = *(v0 + 1392);
        v213 = *(v0 + 1384);
        v402 = *(v0 + 1376);
        v404 = *(v0 + 1880);
        v214 = *(v0 + 1360);
        v392 = *(v0 + 1680);
        v394 = *(v0 + 1352);
        v215 = *(v0 + 1344);
        v216 = *(v0 + 1336);
        v217 = *(v0 + 1312);
        v390 = *(v0 + 1304);
        v410();
        v464(&v213[v214[11]], v211, v212);
        v218 = v214[8];
        (v410)(&v213[v218], 1, 1, v216);
        v219 = v214[10];
        (v410)(&v213[v219], 1, 1, v216);
        *v213 = v390;
        *(v213 + 1) = v217;
        *(v213 + 2) = v392;
        *(v213 + 3) = v396;
        *(v213 + 4) = v408;
        *(v213 + 5) = v413;
        (*(v215 + 32))(&v213[v214[7]], v394, v216);

        sub_2659D9AD0(v400, &v213[v218]);
        *&v213[v214[9]] = v406;
        sub_2659D9AD0(v398, &v213[v219]);
        v220 = &v213[v214[12]];
        *v220 = v421;
        *(v220 + 1) = v442;
        v220[16] = v416 & 1;
        v220[17] = HIBYTE(v416) & 1;
        sub_2659DE470(v213, v402);
        v221 = swift_isUniquelyReferenced_nonNull_native();
        v222 = *(v0 + 1880);
        if ((v221 & 1) == 0)
        {
          v222 = sub_2659E0670(0, v222[2] + 1, 1, v222);
        }

        v224 = v222[2];
        v223 = v222[3];
        if (v224 >= v223 >> 1)
        {
          v482 = sub_2659E0670(v223 > 1, v224 + 1, 1, v222);
        }

        else
        {
          v482 = v222;
        }

        v443 = *(v0 + 1912);
        v225 = *(v0 + 1904);
        v226 = *(v0 + 1888);
        v227 = *(v0 + 1568);
        v228 = *(v0 + 1560);
        v229 = *(v0 + 1528);
        v230 = *(v0 + 1408);
        v422 = *(v0 + 1384);
        v231 = *(v0 + 1376);
        v232 = *(v0 + 1368);

        sub_2659DA270(v230, &qword_28002B6F0, &qword_265A21110);
        v452(v228, v229);
        v452(v227, v229);
        v43 = v482;
        *(v482 + 16) = v224 + 1;
        sub_265A0CC50(v231, v482 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v224);
        sub_2659DCF64(v422);

        v44 = v482;
LABEL_19:
        v42 = *(v0 + 1896);
        if (v42 == *(v0 + 1856))
        {
          goto LABEL_130;
        }
      }

      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      v353 = sub_265A1F1E0();
      *(v0 + 1856) = v353;
    }

    while (v353);
  }

  v43 = MEMORY[0x277D84F90];
  v485 = MEMORY[0x277D84F90];
LABEL_130:
  v354 = *(v0 + 1840);
  v355 = *(v0 + 1752);
  v356 = *(v0 + 1312);

  v357 = sub_265A1EA80();
  v358 = sub_265A1EF30();

  v359 = os_log_type_enabled(v357, v358);
  v360 = *(v0 + 1832);
  v361 = *(v0 + 1760);
  v470 = *(v0 + 1744);
  v362 = *(v0 + 1736);
  v477 = *(v0 + 1704);
  v363 = *(v0 + 1648);
  v364 = *(v0 + 1632);
  v365 = *(v0 + 1624);
  v480 = v43;
  if (v359)
  {
    v460 = *(v0 + 1648);
    v366 = *(v0 + 1312);
    v455 = *(v0 + 1624);
    v367 = *(v0 + 1304);
    v447 = *(v0 + 1712);
    v438 = *(v0 + 1832);
    v368 = swift_slowAlloc();
    v434 = v362;
    v369 = swift_slowAlloc();
    *&v491 = v369;
    *v368 = 136446466;
    *(v368 + 4) = sub_2659D9320(v367, v366, &v491);
    *(v368 + 12) = 2050;
    *(v368 + 14) = *(v43 + 16);

    _os_log_impl(&dword_2659CA000, v357, v358, "…finished processing Link Entity Instances for AppIntent '%{public}s', retrieved %{public}ld items.", v368, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v369);
    MEMORY[0x266766110](v369, -1, -1);
    MEMORY[0x266766110](v368, -1, -1);

    (*(v364 + 8))(v460, v455);
  }

  else
  {

    (*(v364 + 8))(v363, v365);
  }

LABEL_133:
  v370 = *(v0 + 1696);
  v371 = *(v0 + 1688);
  v372 = *(v0 + 1680);
  v373 = *(v0 + 1672);
  v374 = *(v0 + 1648);
  v375 = *(v0 + 1640);
  v389 = *(v0 + 1616);
  v391 = *(v0 + 1592);
  v393 = *(v0 + 1568);
  v395 = *(v0 + 1560);
  v397 = *(v0 + 1552);
  v399 = *(v0 + 1544);
  v401 = *(v0 + 1520);
  v403 = *(v0 + 1512);
  v405 = *(v0 + 1504);
  v407 = *(v0 + 1496);
  v409 = *(v0 + 1488);
  v411 = *(v0 + 1480);
  v415 = *(v0 + 1472);
  v420 = *(v0 + 1464);
  v426 = *(v0 + 1456);
  v430 = *(v0 + 1448);
  v435 = *(v0 + 1432);
  v439 = *(v0 + 1408);
  v448 = *(v0 + 1400);
  v456 = *(v0 + 1392);
  v461 = *(v0 + 1384);
  v471 = *(v0 + 1376);
  v478 = *(v0 + 1352);
  v376 = *(v0 + 1312);
  v377 = *(v0 + 1304);
  v378 = *(v0 + 1296);

  *v378 = v377;
  v378[1] = v376;
  v378[2] = v372;
  v378[3] = v371;
  v378[4] = v480;
  v378[5] = v485;

  v379 = *(v0 + 8);
  v380 = *MEMORY[0x277D85DE8];

  return v379();
}

uint64_t sub_2659FE444()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1824) = v2;
  if (v2)
  {
    v3 = sub_265A08488;
  }

  else
  {
    v3 = sub_2659FE580;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2659FE580()
{
  v497 = v0;
  v496 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1184);
  *(v0 + 1832) = v1;
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1312);

  v5 = v1;
  v6 = sub_265A1EA80();
  v7 = sub_265A1EF30();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1688);
    v9 = *(v0 + 1680);
    v10 = *(v0 + 1312);
    v11 = *(v0 + 1304);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v491 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_2659D9320(v11, v10, &v491);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_2659D9320(v9, v8, &v491);
    _os_log_impl(&dword_2659CA000, v6, v7, "…successfully executed Entity Query for AppIntent: %{public}s, AppEntity %{public}s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v13, -1, -1);
    MEMORY[0x266766110](v12, -1, -1);
  }

  v14 = [v5 value];
  v15 = [v14 value];

  sub_265A1F000();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B718, &qword_265A22678);
  if (!swift_dynamicCast())
  {
    sub_265A0CAD0();
    v30 = swift_allocError();
    *v31 = 0;
    swift_willThrow();

    v485 = MEMORY[0x277D84F90];
    v480 = MEMORY[0x277D84F90];
LABEL_9:
    v32 = (v0 + 1280);
    *(v0 + 1248) = v30;
    v33 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v34 = *v32;
      v35 = [*v32 domain];
      v36 = sub_265A1EBA0();
      v38 = v37;

      v39 = *MEMORY[0x277D23A98];
      if (v36 == sub_265A1EBA0() && v38 == v40)
      {

LABEL_104:
        v267 = *(v0 + 1752);
        v268 = *(v0 + 1688);
        v269 = *(v0 + 1312);

        v270 = v34;
        v271 = sub_265A1EA80();
        v272 = sub_265A1EF30();

        if (os_log_type_enabled(v271, v272))
        {
          v273 = *(v0 + 1688);
          v274 = *(v0 + 1680);
          v473 = *(v0 + 1312);
          v275 = *(v0 + 1304);
          v276 = swift_slowAlloc();
          v277 = swift_slowAlloc();
          v278 = swift_slowAlloc();
          *&v491 = v278;
          *v276 = 136446722;
          *(v276 + 4) = sub_2659D9320(v274, v273, &v491);
          *(v276 + 12) = 2082;
          *(v276 + 14) = sub_2659D9320(v275, v473, &v491);
          *(v276 + 22) = 2114;
          *(v276 + 24) = v270;
          *v277 = v270;
          v279 = v270;
          _os_log_impl(&dword_2659CA000, v271, v272, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v276, 0x20u);
          sub_2659DA270(v277, &qword_28002B678, &unk_265A21AC0);
          MEMORY[0x266766110](v277, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266766110](v278, -1, -1);
          MEMORY[0x266766110](v276, -1, -1);
        }

        v280 = *(v0 + 1696);
        v281 = *(v0 + 1688);
        v282 = *(v0 + 1680);
        v283 = *(v0 + 1312);
        v284 = *(v0 + 1304);
        v285 = v270;
        sub_265A0BFD4(v280, v284, v283, v282, v281, &v491);
        v467 = v492;
        v474 = v491;
        v458 = v493;
        v453 = v494;
        v445 = v495;
        v286 = [v285 domain];
        v287 = sub_265A1EBA0();
        v432 = v288;
        v436 = v287;

        v428 = [v285 code];
        v289 = [v285 localizedDescription];

        v290 = sub_265A1EBA0();
        v418 = v291;
        v424 = v290;

        Current = CFAbsoluteTimeGetCurrent();
        v293 = v485;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v293 = sub_2659E0698(0, *(v485 + 2) + 1, 1, v485);
        }

        v295 = *(v293 + 2);
        v294 = *(v293 + 3);
        if (v295 >= v294 >> 1)
        {
          v485 = sub_2659E0698((v294 > 1), v295 + 1, 1, v293);
        }

        else
        {
          v485 = v293;
        }

        v296 = *(v0 + 1760);
        v297 = *(v0 + 1744);
        v298 = *(v0 + 1712);
        v299 = *(v0 + 1704);
        v300 = *(v0 + 1648);
        v301 = *(v0 + 1632);
        v302 = *(v0 + 1624);

        (*(v301 + 8))(v300, v302);
        *(v485 + 2) = v295 + 1;
        v303 = &v485[120 * v295];
        v303[32] = 0;
        *(v303 + 56) = v467;
        *(v303 + 40) = v474;
        *(v303 + 9) = v458;
        *(v303 + 10) = v453;
        v303[88] = v445;
        *(v303 + 12) = 2;
        *(v303 + 13) = v436;
        *(v303 + 14) = v432;
        *(v303 + 15) = v428;
        *(v303 + 16) = v424;
        *(v303 + 17) = v418;
        *(v303 + 18) = Current;

        goto LABEL_133;
      }

      v266 = sub_265A1F340();

      if (v266)
      {
        goto LABEL_104;
      }
    }

    v306 = *(v0 + 1752);
    v307 = *(v0 + 1688);
    v308 = *(v0 + 1312);

    v309 = v30;
    v310 = sub_265A1EA80();
    v311 = sub_265A1EF20();

    if (os_log_type_enabled(v310, v311))
    {
      v312 = *(v0 + 1688);
      v313 = *(v0 + 1680);
      v475 = *(v0 + 1312);
      v468 = *(v0 + 1304);
      v314 = swift_slowAlloc();
      v315 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      *&v491 = v316;
      *v314 = 136446722;
      *(v314 + 4) = sub_2659D9320(v313, v312, &v491);
      *(v314 + 12) = 2082;
      *(v314 + 14) = sub_2659D9320(v468, v475, &v491);
      *(v314 + 22) = 2114;
      v317 = v30;
      v318 = _swift_stdlib_bridgeErrorToNSError();
      *(v314 + 24) = v318;
      *v315 = v318;
      _os_log_impl(&dword_2659CA000, v310, v311, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v314, 0x20u);
      sub_2659DA270(v315, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v315, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v316, -1, -1);
      MEMORY[0x266766110](v314, -1, -1);
    }

    v319 = *(v0 + 1696);
    v320 = *(v0 + 1688);
    v321 = *(v0 + 1680);
    v322 = *(v0 + 1312);
    v323 = *(v0 + 1304);
    v324 = sub_265A1E680();
    sub_265A0BFD4(v319, v323, v322, v321, v320, &v491);
    v469 = v492;
    v476 = v491;
    v459 = v493;
    v454 = v494;
    v446 = v495;
    v325 = [v324 domain];
    v326 = sub_265A1EBA0();
    v433 = v327;
    v437 = v326;

    v429 = v324;
    v425 = [v324 code];
    swift_getErrorValue();
    v328 = *(v0 + 1024);
    v329 = *(v0 + 1032);
    v330 = *(v0 + 1040);
    v419 = sub_265A1F380();
    v414 = v331;
    v332 = CFAbsoluteTimeGetCurrent();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v485 = sub_2659E0698(0, *(v485 + 2) + 1, 1, v485);
    }

    v334 = *(v485 + 2);
    v333 = *(v485 + 3);
    if (v334 >= v333 >> 1)
    {
      v485 = sub_2659E0698((v333 > 1), v334 + 1, 1, v485);
    }

    v335 = *(v0 + 1760);
    v336 = *(v0 + 1744);
    v337 = *(v0 + 1712);
    v338 = *(v0 + 1704);
    v339 = *(v0 + 1648);
    v340 = *(v0 + 1632);
    v341 = *(v0 + 1624);

    (*(v340 + 8))(v339, v341);
    *(v485 + 2) = v334 + 1;
    v342 = &v485[120 * v334];
    v342[32] = 2;
    *(v342 + 56) = v469;
    *(v342 + 40) = v476;
    *(v342 + 9) = v459;
    *(v342 + 10) = v454;
    v342[88] = v446;
    *(v342 + 12) = 2;
    *(v342 + 13) = v437;
    *(v342 + 14) = v433;
    *(v342 + 15) = v425;
    *(v342 + 16) = v419;
    *(v342 + 17) = v414;
    *(v342 + 18) = v332;
    goto LABEL_133;
  }

  v16 = *(v0 + 1752);
  v17 = *(v0 + 1688);
  v18 = *(v0 + 1312);
  v19 = *(v0 + 1272);
  *(v0 + 1840) = v19;

  v20 = sub_265A1EA80();
  v21 = sub_265A1EF30();

  v22 = v19 >> 62;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v491 = v24;
    *v23 = 134349570;
    v479 = v24;
    if (v22)
    {
      v25 = sub_265A1F1E0();
    }

    else
    {
      v25 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = *(v0 + 1688);
    v27 = *(v0 + 1680);
    v28 = *(v0 + 1312);
    v29 = *(v0 + 1304);
    *(v23 + 4) = v25;

    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_2659D9320(v29, v28, &v491);
    *(v23 + 22) = 2082;
    *(v23 + 24) = sub_2659D9320(v27, v26, &v491);
    _os_log_impl(&dword_2659CA000, v20, v21, "Begin processing %{public}ld Link Entity Instances for AppIntent: %{public}s, AppEntity %{public}s…", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v479, -1, -1);
    MEMORY[0x266766110](v23, -1, -1);
  }

  else
  {
  }

  *(v0 + 1848) = v19;
  if (v22)
  {
    goto LABEL_128;
  }

  v41 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 1856) = v41;
  if (v41)
  {
    do
    {
      v42 = 0;
      v381 = (v0 + 584);
      v384 = (v0 + 808);
      v472 = (v0 + 1232);
      v431 = (v0 + 633);
      v382 = (v0 + 857);
      v383 = (v0 + 801);
      v385 = (v0 + 1984);
      v386 = (v0 + 1153);
      v387 = (v0 + 2047);
      v388 = (v0 + 2040);
      v427 = (v0 + 2068);
      v485 = MEMORY[0x277D84F90];
      v43 = MEMORY[0x277D84F90];
      v44 = MEMORY[0x277D84F90];
      while (1)
      {
        *(v0 + 1880) = v44;
        *(v0 + 1872) = v43;
        *(v0 + 1864) = v485;
        v45 = *(v0 + 1848);
        if ((v45 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x2667656F0](v42, *(v0 + 1840));
        }

        else
        {
          if (v42 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_127;
          }

          v46 = *(*(v0 + 1840) + 8 * v42 + 32);
        }

        v47 = v46;
        *(v0 + 1888) = v46;
        *(v0 + 1896) = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        v48 = [v46 value];
        sub_265A1F000();
        swift_unknownObjectRelease();
        sub_2659F3D98(0, &qword_28156A808, 0x277D237F0);
        if (!swift_dynamicCast())
        {
          v58 = v44;
          sub_265A0CAD0();
          v59 = swift_allocError();
          *v60 = 1;
          swift_willThrow();
          *v472 = v59;
          v462 = v59;
          v61 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
          v480 = v43;
          if (!swift_dynamicCast())
          {
            goto LABEL_111;
          }

          if (*(v0 + 2082) == 1)
          {
            v75 = *(v0 + 1752);
            v76 = *(v0 + 1688);
            v77 = *(v0 + 1312);

            v65 = sub_265A1EA80();
            v78 = sub_265A1EF20();

            if (!os_log_type_enabled(v65, v78))
            {
              goto LABEL_17;
            }

            v79 = *(v0 + 1688);
            v80 = *(v0 + 1680);
            v450 = *(v0 + 1312);
            v81 = *(v0 + 1304);
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *&v491 = v71;
            *v70 = 136446466;
            *(v70 + 4) = sub_2659D9320(v80, v79, &v491);
            *(v70 + 12) = 2082;
            *(v70 + 14) = sub_2659D9320(v81, v450, &v491);
            v72 = v78;
            v73 = v65;
            v74 = "Failed to retrieve the instance of AppEntity '%{public}s', AppIntent '%{public}s'.";
LABEL_37:
            _os_log_impl(&dword_2659CA000, v73, v72, v74, v70, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v71, -1, -1);
            MEMORY[0x266766110](v70, -1, -1);

            v43 = v480;
          }

          else
          {
            if (*(v0 + 2082))
            {
LABEL_111:
              v304 = *(v0 + 1840);
              v305 = *(v0 + 1832);

              v30 = v59;
              goto LABEL_9;
            }

            v62 = *(v0 + 1752);
            v63 = *(v0 + 1688);
            v64 = *(v0 + 1312);

            v65 = sub_265A1EA80();
            v66 = sub_265A1EF20();

            if (os_log_type_enabled(v65, v66))
            {
              v67 = *(v0 + 1688);
              v68 = *(v0 + 1680);
              v449 = *(v0 + 1312);
              v69 = *(v0 + 1304);
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              *&v491 = v71;
              *v70 = 136446466;
              *(v70 + 4) = sub_2659D9320(v68, v67, &v491);
              *(v70 + 12) = 2082;
              *(v70 + 14) = sub_2659D9320(v69, v449, &v491);
              v72 = v66;
              v73 = v65;
              v74 = "Entity Query returned unexpected type '%{public}s', AppIntent '%{public}s'.";
              goto LABEL_37;
            }

LABEL_17:

            v43 = v480;
          }

          v44 = v58;

          goto LABEL_19;
        }

        v49 = *(v0 + 1256);
        *(v0 + 1904) = v49;
        v50 = swift_allocObject();
        *(v0 + 1912) = v50;
        *(v50 + 16) = 0u;
        *(v50 + 32) = 0u;
        *(v50 + 48) = 0u;
        *(v50 + 64) = -1;
        v51 = [v47 displayRepresentation];
        *(v0 + 1920) = v51;
        if (!v51)
        {
          v481 = v43;
          sub_265A0C1E0(v50, *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), v49, v0 + 528);
          v451 = *(v0 + 544);
          v463 = *(v0 + 528);
          v82 = *(v0 + 560);
          v83 = *(v0 + 568);
          v84 = *(v0 + 576);
          v85 = CFAbsoluteTimeGetCurrent();
          *v427 = *(v0 + 577);
          *(v0 + 2071) = *(v0 + 580);
          *v431 = *(v0 + 2033);
          *(v0 + 636) = *(v0 + 2036);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v485 = sub_2659E0698(0, *(v485 + 2) + 1, 1, v485);
          }

          v86 = v485;
          v88 = *(v485 + 2);
          v87 = *(v485 + 3);
          if (v88 >= v87 >> 1)
          {
            v86 = sub_2659E0698((v87 > 1), v88 + 1, 1, v485);
          }

          v485 = v86;
          *(v86 + 2) = v88 + 1;
          v89 = &v86[120 * v88];
          v89[32] = 2;
          v90 = *v427;
          *(v89 + 9) = *(v0 + 2071);
          *(v89 + 33) = v90;
          *(v89 + 56) = v451;
          *(v89 + 40) = v463;
          *(v89 + 9) = v82;
          *(v89 + 10) = v83;
          v89[88] = v84;
          v91 = *v431;
          *(v89 + 23) = *(v0 + 636);
          *(v89 + 89) = v91;
          *(v89 + 12) = 0x8000000000000001;
          *(v89 + 104) = 0u;
          *(v89 + 120) = 0u;
          *(v89 + 17) = 0;
          *(v89 + 18) = v85;

          v43 = v481;
          goto LABEL_19;
        }

        v52 = [v47 exportedContent];
        if (!v52)
        {
          v92 = *(*(v0 + 1536) + 56);
          v92(*(v0 + 1520), 1, 1, *(v0 + 1528));
LABEL_46:
          *(v0 + 1928) = v92;
          sub_2659DA270(*(v0 + 1520), &qword_28002B700, &qword_265A22658);
          v99 = [v47 exportedContent];
          if (!v99)
          {
            goto LABEL_123;
          }

          v100 = v99;
          v101 = [v99 content];

          v102 = [v101 data];
          v103 = sub_265A1E780();
          v105 = v104;

          v106 = v105 >> 62;
          if ((v105 >> 62) > 1)
          {
            if (v106 != 2)
            {
              goto LABEL_121;
            }

            v107 = *(v103 + 16);
            v108 = *(v103 + 24);
          }

          else
          {
            if (!v106)
            {
              if ((v105 & 0xFF000000000000) == 0)
              {
                goto LABEL_121;
              }

LABEL_55:
              v109 = *(v0 + 1536);
              v110 = *(v0 + 1528);
              v111 = *(v0 + 1504);
              v112 = *(v0 + 1496);
              v92(v112, 1, 1, v110);
              sub_265A1E700();
              sub_265A0CB94(v103, v105);
              sub_2659DA270(v112, &qword_28002B700, &qword_265A22658);
              v486 = *(v109 + 48);
              v113 = v486(v111, 1, v110);
              v98 = (v0 + 1504);
              if (v113 == 1)
              {
                sub_2659DA270(*(v0 + 1504), &qword_28002B700, &qword_265A22658);
LABEL_123:
                v490 = *(v0 + 1760);
                v345 = *(v0 + 1488);
                v346 = *(v0 + 1440);
                v347 = *(v0 + 1432);
                v348 = *(v0 + 1424);
                v349 = *(v0 + 1416);
                *(v0 + 16) = v0;
                *(v0 + 56) = v345;
                *(v0 + 24) = sub_265A00F8C;
                swift_continuation_init();
                *(v0 + 328) = v349;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
                *(v0 + 1936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
                sub_265A1ED80();
                (*(v348 + 32))(boxed_opaque_existential_1, v347, v349);
                *(v0 + 272) = MEMORY[0x277D85DD0];
                *(v0 + 280) = 1107296256;
                *(v0 + 288) = sub_265A0C3A0;
                *(v0 + 296) = &block_descriptor_8;
                [v490 fetchEntityURL:v49 completionHandler:?];
                (*(v348 + 8))(boxed_opaque_existential_1, v349);
                v351 = *MEMORY[0x277D85DE8];
                v352 = v0 + 16;

                return MEMORY[0x282200938](v352);
              }

              goto LABEL_56;
            }

            v107 = v103;
            v108 = v103 >> 32;
          }

          if (v107 == v108)
          {
LABEL_121:
            sub_265A0CB94(v103, v105);
            goto LABEL_123;
          }

          goto LABEL_55;
        }

        v53 = v52;
        v54 = [v52 content];

        v55 = [v54 fileURL];
        if (v55)
        {
          v56 = *(v0 + 1512);
          sub_265A1E730();

          v57 = 0;
        }

        else
        {
          v57 = 1;
        }

        v93 = *(v0 + 1536);
        v94 = *(v0 + 1528);
        v95 = *(v0 + 1520);
        v96 = *(v0 + 1512);
        v92 = *(v93 + 56);
        v92(v96, v57, 1, v94);
        sub_265A0CB24(v96, v95);
        v486 = *(v93 + 48);
        v97 = v486(v95, 1, v94);
        v98 = (v0 + 1520);
        if (v97 == 1)
        {
          goto LABEL_46;
        }

LABEL_56:
        v457 = v92;
        v114 = *(v0 + 1568);
        v115 = *(v0 + 1552);
        v116 = *(v0 + 1544);
        v117 = *(v0 + 1536);
        v118 = *(v0 + 1528);
        v119 = *(v0 + 1320);
        v440 = *(v117 + 32);
        v440(v114, *v98, v118);
        v120 = *(v117 + 16);
        v120(v115, v114, v118);
        v464 = v120;
        v120(v116, v114, v118);
        v121 = *(v119 + 16);

        if (v121)
        {
          v122 = 0;
          while (1)
          {
            v123 = *(v0 + 1544);
            v124 = *(v0 + 1528);
            v125 = *(v0 + 1464);
            v126 = *(v0 + 1536) + 48;
            v127 = *(v0 + 1320) + v122;
            v129 = *(v127 + 32);
            v128 = *(v127 + 40);

            v129(v123);

            if (v486(v125, 1, v124) != 1)
            {
              break;
            }

            sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
            v122 += 16;
            if (!--v121)
            {
              goto LABEL_60;
            }
          }

          v132 = *(v0 + 1552);
          v133 = *(v0 + 1536);
          v134 = *(v0 + 1528);
          v135 = *(v0 + 1456);
          v136 = *(v0 + 1448);
          sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
          v138 = *(v127 + 32);
          v137 = *(v127 + 40);

          v138(v132);
          v130 = *(v133 + 8);
          v130(v132, v134);

          sub_265A0CBE8(v135, v136, &qword_28002B700, &qword_265A22658);
          if (v486(v136, 1, v134) == 1)
          {
            v352 = (v130)(*(v0 + 1544), *(v0 + 1528));
            __break(1u);
            return MEMORY[0x282200938](v352);
          }

          v139 = *(v0 + 1456);
          v140 = *(v0 + 1536) + 32;
          v440(*(v0 + 1472), *(v0 + 1448), *(v0 + 1528));
          sub_2659DA270(v139, &qword_28002B700, &qword_265A22658);
          v131 = 0;
        }

        else
        {
LABEL_60:
          v130 = *(*(v0 + 1536) + 8);
          v130(*(v0 + 1552), *(v0 + 1528));
          v131 = 1;
        }

        v452 = v130;
        v141 = *(v0 + 1544);
        v142 = *(v0 + 1528);
        v143 = *(v0 + 1472);
        v144 = *(v0 + 1320);
        v145 = *(v0 + 1536) + 8;
        v457(v143, v131, 1, v142);

        v130(v141, v142);
        if (v486(v143, 1, v142) == 1)
        {
          v146 = *(v0 + 1568);
          v147 = *(v0 + 1560);
          v148 = *(v0 + 1528);
          sub_2659DA270(*(v0 + 1472), &qword_28002B700, &qword_265A22658);
          v464(v147, v146, v148);
          v149 = *(v0 + 1864);
        }

        else
        {
          v150 = *(v0 + 1912);
          v151 = *(v0 + 1904);
          v152 = *(v0 + 1864);
          v153 = *(v0 + 1688);
          v154 = *(v0 + 1680);
          v155 = *(v0 + 1312);
          v156 = *(v0 + 1536) + 32;
          v157 = *(v0 + 1304);
          v440(*(v0 + 1560), *(v0 + 1472), *(v0 + 1528));
          sub_265A0C1E0(v150, v157, v155, v154, v153, v151, v384);
          *v441 = *(v0 + 824);
          v487 = *v384;
          v158 = *(v0 + 840);
          v159 = *(v0 + 848);
          v160 = *(v0 + 856);
          v161 = CFAbsoluteTimeGetCurrent();
          *v388 = *(v0 + 2054);
          *(v0 + 2043) = *(v0 + 2057);
          *v387 = *(v0 + 2061);
          *(v0 + 2050) = *(v0 + 2064);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v149 = *(v0 + 1864);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v149 = sub_2659E0698(0, *(v149 + 2) + 1, 1, *(v0 + 1864));
          }

          v164 = *(v149 + 2);
          v163 = *(v149 + 3);
          if (v164 >= v163 >> 1)
          {
            v149 = sub_2659E0698((v163 > 1), v164 + 1, 1, v149);
          }

          *(v149 + 2) = v164 + 1;
          v165 = &v149[120 * v164];
          v165[32] = 1;
          v166 = *v388;
          *(v165 + 9) = *(v0 + 2043);
          *(v165 + 33) = v166;
          *(v165 + 56) = *v441;
          *(v165 + 40) = v487;
          *(v165 + 9) = v158;
          *(v165 + 10) = v159;
          v165[88] = v160;
          v167 = *v387;
          *(v165 + 23) = *(v0 + 2050);
          *(v165 + 89) = v167;
          *(v165 + 6) = xmmword_265A22600;
          *(v165 + 7) = 0u;
          *(v165 + 8) = 0u;
          *(v165 + 18) = v161;
        }

        v168 = [*(v0 + 1920) image];
        if (v168 && (v169 = v168, sub_265A1110C(v0 + 1096), v169, *(v0 + 1104)))
        {
          v442 = *(v0 + 1104);
          v421 = *(v0 + 1096);
          v416 = *(v0 + 1112);
        }

        else
        {
          v170 = *(v0 + 1560);
          sub_265A1CF6C(v0 + 1128);
          if (!*(v0 + 1136))
          {
            v489 = v149;
            v233 = *(v0 + 1904);
            v234 = *(v0 + 1752);
            v235 = *(v0 + 1312);
            v236 = *(v0 + 1328);

            v237 = v233;
            v238 = sub_265A1EA80();
            v239 = sub_265A1EF30();

            if (os_log_type_enabled(v238, v239))
            {
              v444 = *(v0 + 1904);
              v240 = *(v0 + 1328);
              v483 = *(v0 + 1312);
              v465 = *(v0 + 1304);
              v241 = swift_slowAlloc();
              v242 = swift_slowAlloc();
              v243 = swift_slowAlloc();
              *&v491 = v243;
              *v241 = 136446979;
              v244 = [v240 identifier];
              v245 = sub_265A1EBA0();
              v247 = v246;

              v248 = sub_2659D9320(v245, v247, &v491);

              *(v241 + 4) = v248;
              *(v241 + 12) = 2160;
              *(v241 + 14) = 1752392040;
              *(v241 + 22) = 2113;
              v249 = [v444 identifier];
              *(v241 + 24) = v249;
              *v242 = v249;
              *(v241 + 32) = 2082;
              *(v241 + 34) = sub_2659D9320(v465, v483, &v491);
              _os_log_impl(&dword_2659CA000, v238, v239, "Could not resolve Icon for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v241, 0x2Au);
              sub_2659DA270(v242, &qword_28002B678, &unk_265A21AC0);
              MEMORY[0x266766110](v242, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x266766110](v243, -1, -1);
              MEMORY[0x266766110](v241, -1, -1);
            }

            sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v0 + 640);
            v466 = *(v0 + 656);
            v484 = *(v0 + 640);
            v250 = *(v0 + 672);
            v251 = *(v0 + 680);
            v252 = *(v0 + 688);
            v253 = CFAbsoluteTimeGetCurrent();
            *v383 = *(v0 + 1114);
            *(v0 + 804) = *(v0 + 1117);
            *v382 = *(v0 + 1121);
            *(v0 + 860) = *(v0 + 1124);
            v254 = v489;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v254 = sub_2659E0698(0, *(v489 + 2) + 1, 1, v489);
            }

            v256 = *(v254 + 2);
            v255 = *(v254 + 3);
            v423 = v251;
            v417 = v252;
            if (v256 >= v255 >> 1)
            {
              v254 = sub_2659E0698((v255 > 1), v256 + 1, 1, v254);
            }

            v257 = *(v0 + 1920);
            v258 = *(v0 + 1912);
            v259 = *(v0 + 1888);
            v260 = *(v0 + 1568);
            v261 = *(v0 + 1560);
            v262 = *(v0 + 1528);

            v452(v261, v262);
            v452(v260, v262);
            *(v254 + 2) = v256 + 1;
            v485 = v254;
            v263 = &v254[120 * v256];
            v263[32] = 2;
            v264 = *v383;
            *(v263 + 9) = *(v0 + 804);
            *(v263 + 33) = v264;
            *(v263 + 56) = v466;
            *(v263 + 40) = v484;
            *(v263 + 9) = v250;
            *(v263 + 10) = v423;
            v263[88] = v417;
            v265 = *v382;
            *(v263 + 23) = *(v0 + 860);
            *(v263 + 89) = v265;
            *(v263 + 6) = xmmword_265A22620;
            *(v263 + 7) = 0u;
            *(v263 + 8) = 0u;
            *(v263 + 18) = v253;

            v44 = *(v0 + 1880);
            v43 = *(v0 + 1872);
            goto LABEL_19;
          }

          v442 = *(v0 + 1136);
          v421 = *(v0 + 1128);
          v416 = *(v0 + 1144);
          sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v381);
          v412 = *(v0 + 600);
          v488 = *v381;
          v171 = *(v0 + 616);
          v172 = *(v0 + 624);
          v173 = *(v0 + 632);
          v174 = CFAbsoluteTimeGetCurrent();
          *v386 = *(v0 + 1991);
          *(v0 + 1156) = *(v0 + 1994);
          *v385 = *(v0 + 1998);
          *(v0 + 1987) = *(v0 + 2001);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v149 = sub_2659E0698(0, *(v149 + 2) + 1, 1, v149);
          }

          v176 = *(v149 + 2);
          v175 = *(v149 + 3);
          if (v176 >= v175 >> 1)
          {
            v149 = sub_2659E0698((v175 > 1), v176 + 1, 1, v149);
          }

          *(v149 + 2) = v176 + 1;
          v177 = &v149[120 * v176];
          v177[32] = 1;
          v178 = *v386;
          *(v177 + 9) = *(v0 + 1156);
          *(v177 + 33) = v178;
          *(v177 + 56) = v412;
          *(v177 + 40) = v488;
          *(v177 + 9) = v171;
          *(v177 + 10) = v172;
          v177[88] = v173;
          v179 = *v385;
          *(v177 + 23) = *(v0 + 1987);
          *(v177 + 89) = v179;
          *(v177 + 6) = xmmword_265A22610;
          *(v177 + 7) = 0u;
          *(v177 + 8) = 0u;
          *(v177 + 18) = v174;
        }

        v180 = [*(v0 + 1920) subtitle];
        if (v180)
        {
          v181 = v180;
          v182 = [v180 localizedStringResource];
          if (!v182)
          {
            goto LABEL_120;
          }

          v183 = v182;
          v184 = *(v0 + 1408);
          *(v0 + 952) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
          *(v0 + 928) = v183;
          v185 = v183;
          sub_265A1E6A0();

          v186 = 0;
        }

        else
        {
          v186 = 1;
        }

        v187 = *(v0 + 1920);
        v188 = *(v0 + 1904);
        v189 = *(*(v0 + 1344) + 56);
        (v189)(*(v0 + 1408), v186, 1, *(v0 + 1336));
        v190 = [v188 identifier];
        v191 = [v190 instanceIdentifier];

        v192 = sub_265A1EBA0();
        v413 = v193;

        v194 = [v187 title];
        v195 = [v194 localizedStringResource];
        if (!v195)
        {
LABEL_120:
          result = sub_265A1F1C0();
          v344 = *MEMORY[0x277D85DE8];
          return result;
        }

        v196 = v195;
        v485 = v149;
        v197 = *(v0 + 1920);
        v198 = *(v0 + 1408);
        v199 = *(v0 + 1400);
        v200 = *(v0 + 1352);
        v201 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
        *(v0 + 888) = v201;
        *(v0 + 864) = v196;
        v202 = v196;
        sub_265A1E6A0();

        sub_265A0CBE8(v198, v199, &qword_28002B6F0, &qword_265A21110);
        v203 = [v197 synonyms];
        if (v203)
        {
          v204 = v203;
          sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
          sub_265A1ECC0();

          v205 = sub_265A0C54C();
        }

        else
        {
          v205 = MEMORY[0x277D84F90];
        }

        v206 = [*(v0 + 1920) descriptionText];
        v408 = v192;
        v410 = v189;
        v406 = v205;
        if (v206)
        {
          v207 = v206;
          v208 = [v206 localizedStringResource];
          if (!v208)
          {
            goto LABEL_120;
          }

          v209 = *(v0 + 1392);
          *(v0 + 920) = v201;
          *(v0 + 896) = v208;
          v210 = v208;
          sub_265A1E6A0();
        }

        v211 = *(v0 + 1560);
        v212 = *(v0 + 1528);
        v400 = *(v0 + 1400);
        v396 = *(v0 + 1688);
        v398 = *(v0 + 1392);
        v213 = *(v0 + 1384);
        v402 = *(v0 + 1376);
        v404 = *(v0 + 1880);
        v214 = *(v0 + 1360);
        v392 = *(v0 + 1680);
        v394 = *(v0 + 1352);
        v215 = *(v0 + 1344);
        v216 = *(v0 + 1336);
        v217 = *(v0 + 1312);
        v390 = *(v0 + 1304);
        v410();
        v464(&v213[v214[11]], v211, v212);
        v218 = v214[8];
        (v410)(&v213[v218], 1, 1, v216);
        v219 = v214[10];
        (v410)(&v213[v219], 1, 1, v216);
        *v213 = v390;
        *(v213 + 1) = v217;
        *(v213 + 2) = v392;
        *(v213 + 3) = v396;
        *(v213 + 4) = v408;
        *(v213 + 5) = v413;
        (*(v215 + 32))(&v213[v214[7]], v394, v216);

        sub_2659D9AD0(v400, &v213[v218]);
        *&v213[v214[9]] = v406;
        sub_2659D9AD0(v398, &v213[v219]);
        v220 = &v213[v214[12]];
        *v220 = v421;
        *(v220 + 1) = v442;
        v220[16] = v416 & 1;
        v220[17] = HIBYTE(v416) & 1;
        sub_2659DE470(v213, v402);
        v221 = swift_isUniquelyReferenced_nonNull_native();
        v222 = *(v0 + 1880);
        if ((v221 & 1) == 0)
        {
          v222 = sub_2659E0670(0, v222[2] + 1, 1, v222);
        }

        v224 = v222[2];
        v223 = v222[3];
        if (v224 >= v223 >> 1)
        {
          v482 = sub_2659E0670(v223 > 1, v224 + 1, 1, v222);
        }

        else
        {
          v482 = v222;
        }

        v443 = *(v0 + 1912);
        v225 = *(v0 + 1904);
        v226 = *(v0 + 1888);
        v227 = *(v0 + 1568);
        v228 = *(v0 + 1560);
        v229 = *(v0 + 1528);
        v230 = *(v0 + 1408);
        v422 = *(v0 + 1384);
        v231 = *(v0 + 1376);
        v232 = *(v0 + 1368);

        sub_2659DA270(v230, &qword_28002B6F0, &qword_265A21110);
        v452(v228, v229);
        v452(v227, v229);
        v43 = v482;
        *(v482 + 16) = v224 + 1;
        sub_265A0CC50(v231, v482 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v224);
        sub_2659DCF64(v422);

        v44 = v482;
LABEL_19:
        v42 = *(v0 + 1896);
        if (v42 == *(v0 + 1856))
        {
          goto LABEL_130;
        }
      }

      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      v353 = sub_265A1F1E0();
      *(v0 + 1856) = v353;
    }

    while (v353);
  }

  v43 = MEMORY[0x277D84F90];
  v485 = MEMORY[0x277D84F90];
LABEL_130:
  v354 = *(v0 + 1840);
  v355 = *(v0 + 1752);
  v356 = *(v0 + 1312);

  v357 = sub_265A1EA80();
  v358 = sub_265A1EF30();

  v359 = os_log_type_enabled(v357, v358);
  v360 = *(v0 + 1832);
  v361 = *(v0 + 1760);
  v470 = *(v0 + 1744);
  v362 = *(v0 + 1736);
  v477 = *(v0 + 1704);
  v363 = *(v0 + 1648);
  v364 = *(v0 + 1632);
  v365 = *(v0 + 1624);
  v480 = v43;
  if (v359)
  {
    v460 = *(v0 + 1648);
    v366 = *(v0 + 1312);
    v455 = *(v0 + 1624);
    v367 = *(v0 + 1304);
    v447 = *(v0 + 1712);
    v438 = *(v0 + 1832);
    v368 = swift_slowAlloc();
    v434 = v362;
    v369 = swift_slowAlloc();
    *&v491 = v369;
    *v368 = 136446466;
    *(v368 + 4) = sub_2659D9320(v367, v366, &v491);
    *(v368 + 12) = 2050;
    *(v368 + 14) = *(v43 + 16);

    _os_log_impl(&dword_2659CA000, v357, v358, "…finished processing Link Entity Instances for AppIntent '%{public}s', retrieved %{public}ld items.", v368, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v369);
    MEMORY[0x266766110](v369, -1, -1);
    MEMORY[0x266766110](v368, -1, -1);

    (*(v364 + 8))(v460, v455);
  }

  else
  {

    (*(v364 + 8))(v363, v365);
  }

LABEL_133:
  v370 = *(v0 + 1696);
  v371 = *(v0 + 1688);
  v372 = *(v0 + 1680);
  v373 = *(v0 + 1672);
  v374 = *(v0 + 1648);
  v375 = *(v0 + 1640);
  v389 = *(v0 + 1616);
  v391 = *(v0 + 1592);
  v393 = *(v0 + 1568);
  v395 = *(v0 + 1560);
  v397 = *(v0 + 1552);
  v399 = *(v0 + 1544);
  v401 = *(v0 + 1520);
  v403 = *(v0 + 1512);
  v405 = *(v0 + 1504);
  v407 = *(v0 + 1496);
  v409 = *(v0 + 1488);
  v411 = *(v0 + 1480);
  v415 = *(v0 + 1472);
  v420 = *(v0 + 1464);
  v426 = *(v0 + 1456);
  v430 = *(v0 + 1448);
  v435 = *(v0 + 1432);
  v439 = *(v0 + 1408);
  v448 = *(v0 + 1400);
  v456 = *(v0 + 1392);
  v461 = *(v0 + 1384);
  v471 = *(v0 + 1376);
  v478 = *(v0 + 1352);
  v376 = *(v0 + 1312);
  v377 = *(v0 + 1304);
  v378 = *(v0 + 1296);

  *v378 = v377;
  v378[1] = v376;
  v378[2] = v372;
  v378[3] = v371;
  v378[4] = v480;
  v378[5] = v485;

  v379 = *(v0 + 8);
  v380 = *MEMORY[0x277D85DE8];

  return v379();
}

uint64_t sub_265A00F8C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1944) = v2;
  if (v2)
  {
    v3 = sub_265A08EAC;
  }

  else
  {
    v3 = sub_265A010C8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265A010C8()
{
  v577 = v0;
  v1 = (v0 + 584);
  v494 = (v0 + 808);
  v576 = *MEMORY[0x277D85DE8];
  v2 = (v0 + 1280);
  v3 = (v0 + 577);
  v4 = (v0 + 801);
  v489 = (v0 + 857);
  v5 = (v0 + 1114);
  v496 = (v0 + 1984);
  v500 = (v0 + 1153);
  v518 = (v0 + 2040);
  v508 = (v0 + 633);
  v513 = (v0 + 2047);
  v504 = (v0 + 2068);
  v6 = *(v0 + 1536);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1480);
  sub_265A0CB24(*(v0 + 1488), v8);
  v555 = *(v6 + 48);
  if (v555(v8, 1, v7) != 1)
  {
    v48 = (v0 + 1480);
    v49 = *(v0 + 1928);
LABEL_11:
    v551 = v49;
    v439 = v5;
    v440 = v1;
    v441 = v3;
    v442 = v4;
    v443 = v2;
    v50 = *(v0 + 1568);
    v51 = *(v0 + 1552);
    v52 = *(v0 + 1544);
    v53 = *(v0 + 1536);
    v54 = *(v0 + 1528);
    v55 = *(v0 + 1320);
    v538 = *(v53 + 32);
    v538(v50, *v48, v54);
    v56 = *(v53 + 16);
    v56(v51, v50, v54);
    v444 = v56;
    v56(v52, v50, v54);
    v57 = *(v55 + 16);

    if (v57)
    {
      v58 = 0;
      while (1)
      {
        v59 = *(v0 + 1544);
        v60 = *(v0 + 1528);
        v61 = *(v0 + 1464);
        v62 = *(v0 + 1536) + 48;
        v63 = *(v0 + 1320) + v58;
        v64 = *(v63 + 32);
        v65 = *(v63 + 40);

        v64(v59);

        if (v555(v61, 1, v60) != 1)
        {
          break;
        }

        sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
        v58 += 16;
        if (!--v57)
        {
          goto LABEL_15;
        }
      }

      v111 = *(v0 + 1552);
      v112 = *(v0 + 1536);
      v113 = *(v0 + 1528);
      v114 = *(v0 + 1456);
      v115 = *(v0 + 1448);
      sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
      v117 = *(v63 + 32);
      v116 = *(v63 + 40);

      v117(v111);
      v118 = *(v112 + 8);
      v118(v111, v113);

      sub_265A0CBE8(v114, v115, &qword_28002B700, &qword_265A22658);
      if (v555(v115, 1, v113) == 1)
      {
        v438 = (v118)(*(v0 + 1544), *(v0 + 1528));
        __break(1u);
        return MEMORY[0x282200938](v438);
      }

      v119 = *(v0 + 1456);
      v120 = *(v0 + 1536) + 32;
      v538(*(v0 + 1472), *(v0 + 1448), *(v0 + 1528));
      sub_2659DA270(v119, &qword_28002B700, &qword_265A22658);
      v67 = 0;
      v66 = v118;
    }

    else
    {
LABEL_15:
      v66 = *(*(v0 + 1536) + 8);
      v66(*(v0 + 1552), *(v0 + 1528));
      v67 = 1;
    }

    v121 = *(v0 + 1544);
    v122 = *(v0 + 1528);
    v123 = *(v0 + 1472);
    v124 = *(v0 + 1320);
    v125 = *(v0 + 1536) + 8;
    v551(v123, v67, 1, v122);

    v553 = v66;
    v66(v121, v122);
    if (v555(v123, 1, v122) == 1)
    {
      v126 = *(v0 + 1568);
      v127 = *(v0 + 1560);
      v128 = *(v0 + 1528);
      sub_2659DA270(*(v0 + 1472), &qword_28002B700, &qword_265A22658);
      v444(v127, v126, v128);
      v129 = *(v0 + 1864);
    }

    else
    {
      v130 = *(v0 + 1912);
      v131 = *(v0 + 1904);
      v132 = *(v0 + 1864);
      v133 = *(v0 + 1688);
      v134 = *(v0 + 1680);
      v135 = *(v0 + 1312);
      v136 = *(v0 + 1536) + 32;
      v137 = *(v0 + 1304);
      v538(*(v0 + 1560), *(v0 + 1472), *(v0 + 1528));
      sub_265A0C1E0(v130, v137, v135, v134, v133, v131, v494);
      v540 = *(v0 + 824);
      v558 = *v494;
      v138 = *(v0 + 840);
      v139 = *(v0 + 848);
      v140 = *(v0 + 856);
      Current = CFAbsoluteTimeGetCurrent();
      *v518 = *(v0 + 2054);
      *(v0 + 2043) = *(v0 + 2057);
      *v513 = *(v0 + 2061);
      *(v0 + 2050) = *(v0 + 2064);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = *(v0 + 1864);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v129 = sub_2659E0698(0, *(v129 + 2) + 1, 1, *(v0 + 1864));
      }

      v144 = *(v129 + 2);
      v143 = *(v129 + 3);
      if (v144 >= v143 >> 1)
      {
        v129 = sub_2659E0698((v143 > 1), v144 + 1, 1, v129);
      }

      *(v129 + 2) = v144 + 1;
      v145 = &v129[120 * v144];
      v145[32] = 1;
      v146 = *v518;
      *(v145 + 9) = *(v0 + 2043);
      *(v145 + 33) = v146;
      *(v145 + 56) = v540;
      *(v145 + 40) = v558;
      *(v145 + 9) = v138;
      *(v145 + 10) = v139;
      v145[88] = v140;
      v147 = *v513;
      *(v145 + 23) = *(v0 + 2050);
      *(v145 + 89) = v147;
      *(v145 + 6) = xmmword_265A22600;
      *(v145 + 7) = 0u;
      *(v145 + 8) = 0u;
      *(v145 + 18) = Current;
    }

    v148 = [*(v0 + 1920) image];
    if (v148 && (v149 = v148, sub_265A1110C(v0 + 1096), v149, *(v0 + 1104)))
    {
      v559 = *(v0 + 1104);
      v484 = *(v0 + 1096);
      v477 = *(v0 + 1112);
    }

    else
    {
      v150 = *(v0 + 1560);
      sub_265A1CF6C(v0 + 1128);
      v151 = *(v0 + 1136);
      if (!v151)
      {
        v545 = v129;
        v321 = *(v0 + 1904);
        v322 = *(v0 + 1752);
        v323 = *(v0 + 1312);
        v324 = *(v0 + 1328);

        v325 = v321;
        v326 = sub_265A1EA80();
        v327 = sub_265A1EF30();

        if (os_log_type_enabled(v326, v327))
        {
          v479 = *(v0 + 1904);
          v328 = *(v0 + 1328);
          v565 = *(v0 + 1312);
          v486 = *(v0 + 1304);
          v329 = swift_slowAlloc();
          v330 = swift_slowAlloc();
          v331 = swift_slowAlloc();
          *&v571 = v331;
          *v329 = 136446979;
          v332 = [v328 identifier];
          v333 = sub_265A1EBA0();
          v335 = v334;

          v336 = sub_2659D9320(v333, v335, &v571);

          *(v329 + 4) = v336;
          *(v329 + 12) = 2160;
          *(v329 + 14) = 1752392040;
          *(v329 + 22) = 2113;
          v337 = [v479 identifier];
          *(v329 + 24) = v337;
          *v330 = v337;
          *(v329 + 32) = 2082;
          *(v329 + 34) = sub_2659D9320(v486, v565, &v571);
          _os_log_impl(&dword_2659CA000, v326, v327, "Could not resolve Icon for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v329, 0x2Au);
          sub_2659DA270(v330, &qword_28002B678, &unk_265A21AC0);
          MEMORY[0x266766110](v330, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266766110](v331, -1, -1);
          MEMORY[0x266766110](v329, -1, -1);
        }

        sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v0 + 640);
        v487 = *(v0 + 656);
        v566 = *(v0 + 640);
        v480 = *(v0 + 672);
        v473 = *(v0 + 680);
        v467 = *(v0 + 688);
        v338 = CFAbsoluteTimeGetCurrent();
        *v442 = *v439;
        *(v442 + 3) = *(v439 + 3);
        *v489 = *(v0 + 1121);
        *(v0 + 860) = *(v0 + 1124);
        v339 = v545;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v339 = sub_2659E0698(0, *(v545 + 2) + 1, 1, v545);
        }

        v341 = *(v339 + 2);
        v340 = *(v339 + 3);
        if (v341 >= v340 >> 1)
        {
          v339 = sub_2659E0698((v340 > 1), v341 + 1, 1, v339);
        }

        v342 = *(v0 + 1920);
        v38 = *(v0 + 1912);
        v343 = *(v0 + 1888);
        v344 = *(v0 + 1568);
        v345 = *(v0 + 1560);
        v346 = *(v0 + 1528);

        v553(v345, v346);
        v553(v344, v346);
        v107 = v339;
        *(v339 + 2) = v341 + 1;
        v347 = &v339[120 * v341];
        v347[32] = 2;
        v348 = *v442;
        *(v347 + 9) = *(v442 + 3);
        *(v347 + 33) = v348;
        *(v347 + 56) = v487;
        *(v347 + 40) = v566;
        *(v347 + 9) = v480;
        *(v347 + 10) = v473;
        v347[88] = v467;
        v349 = *v489;
        *(v347 + 23) = *(v0 + 860);
        *(v347 + 89) = v349;
        *(v347 + 6) = xmmword_265A22620;
        *(v347 + 7) = 0u;
        *(v347 + 8) = 0u;
        *(v347 + 18) = v338;
LABEL_107:

        v550 = *(v0 + 1872);
        goto LABEL_58;
      }

      v484 = *(v0 + 1128);
      v477 = *(v0 + 1144);
      sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v440);
      v470 = v440[1];
      v541 = *v440;
      v152 = *(v0 + 616);
      v153 = *(v0 + 624);
      v154 = *(v0 + 632);
      v155 = CFAbsoluteTimeGetCurrent();
      *v500 = *(v0 + 1991);
      *(v0 + 1156) = *(v0 + 1994);
      *v496 = *(v0 + 1998);
      *(v0 + 1987) = *(v0 + 2001);
      v559 = v151;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = sub_2659E0698(0, *(v129 + 2) + 1, 1, v129);
      }

      v157 = *(v129 + 2);
      v156 = *(v129 + 3);
      if (v157 >= v156 >> 1)
      {
        v129 = sub_2659E0698((v156 > 1), v157 + 1, 1, v129);
      }

      *(v129 + 2) = v157 + 1;
      v158 = &v129[120 * v157];
      v158[32] = 1;
      v159 = *v500;
      *(v158 + 9) = *(v0 + 1156);
      *(v158 + 33) = v159;
      *(v158 + 56) = v470;
      *(v158 + 40) = v541;
      *(v158 + 9) = v152;
      *(v158 + 10) = v153;
      v158[88] = v154;
      v160 = *v496;
      *(v158 + 23) = *(v0 + 1987);
      *(v158 + 89) = v160;
      *(v158 + 6) = xmmword_265A22610;
      *(v158 + 7) = 0u;
      *(v158 + 8) = 0u;
      *(v158 + 18) = v155;
    }

    v161 = [*(v0 + 1920) subtitle];
    v162 = 1;
    if (v161)
    {
      v163 = v161;
      v164 = [v161 localizedStringResource];
      if (!v164)
      {
        goto LABEL_119;
      }

      v165 = v164;
      v166 = *(v0 + 1408);
      *(v0 + 952) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
      *(v0 + 928) = v165;
      v167 = v165;
      sub_265A1E6A0();

      v162 = 0;
    }

    v168 = *(v0 + 1920);
    v169 = *(v0 + 1904);
    v471 = *(*(v0 + 1344) + 56);
    (v471)(*(v0 + 1408), v162, 1, *(v0 + 1336));
    v170 = [v169 identifier];
    v171 = [v170 instanceIdentifier];

    v172 = sub_265A1EBA0();
    v466 = v173;

    v174 = [v168 title];
    v175 = [v174 localizedStringResource];
    if (v175)
    {
      v176 = v175;
      v537 = v129;
      v177 = *(v0 + 1920);
      v178 = *(v0 + 1408);
      v179 = *(v0 + 1400);
      v180 = *(v0 + 1352);
      v181 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
      *(v0 + 888) = v181;
      *(v0 + 864) = v176;
      v182 = v176;
      sub_265A1E6A0();

      sub_265A0CBE8(v178, v179, &qword_28002B6F0, &qword_265A21110);
      v183 = [v177 synonyms];
      v184 = MEMORY[0x277D84F90];
      if (v183)
      {
        v185 = v183;
        sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
        sub_265A1ECC0();

        v184 = sub_265A0C54C();
      }

      v186 = [*(v0 + 1920) descriptionText];
      if (!v186)
      {
        goto LABEL_50;
      }

      v187 = v186;
      v188 = [v186 localizedStringResource];
      if (v188)
      {
        v189 = *(v0 + 1392);
        *(v0 + 920) = v181;
        *(v0 + 896) = v188;
        v190 = v188;
        sub_265A1E6A0();

LABEL_50:
        v448 = *(v0 + 1688);
        v449 = v172;
        v191 = *(v0 + 1560);
        v457 = v184;
        v192 = *(v0 + 1528);
        v193 = *(v0 + 1392);
        v451 = v193;
        v454 = *(v0 + 1400);
        v194 = *(v0 + 1384);
        v460 = *(v0 + 1376);
        v463 = *(v0 + 1880);
        v195 = *(v0 + 1360);
        v446 = *(v0 + 1680);
        v447 = *(v0 + 1352);
        v196 = *(v0 + 1344);
        v197 = *(v0 + 1336);
        v198 = *(v0 + 1312);
        v445 = *(v0 + 1304);
        v471();
        v444(&v194[v195[11]], v191, v192);
        v199 = v195[8];
        (v471)(&v194[v199], 1, 1, v197);
        v200 = v195[10];
        (v471)(&v194[v200], 1, 1, v197);
        *v194 = v445;
        *(v194 + 1) = v198;
        *(v194 + 2) = v446;
        *(v194 + 3) = v448;
        *(v194 + 4) = v449;
        *(v194 + 5) = v466;
        (*(v196 + 32))(&v194[v195[7]], v447, v197);

        sub_2659D9AD0(v454, &v194[v199]);
        *&v194[v195[9]] = v457;
        sub_2659D9AD0(v451, &v194[v200]);
        v201 = &v194[v195[12]];
        *v201 = v484;
        *(v201 + 1) = v559;
        v201[16] = v477 & 1;
        v201[17] = HIBYTE(v477) & 1;
        sub_2659DE470(v194, v460);
        v202 = swift_isUniquelyReferenced_nonNull_native();
        v203 = *(v0 + 1880);
        if ((v202 & 1) == 0)
        {
          v203 = sub_2659E0670(0, v203[2] + 1, 1, *(v0 + 1880));
        }

        v38 = v203[2];
        v204 = v203[3];
        if (v38 >= v204 >> 1)
        {
          v203 = sub_2659E0670(v204 > 1, v38 + 1, 1, v203);
        }

        v485 = *(v0 + 1912);
        v205 = *(v0 + 1904);
        v206 = *(v0 + 1888);
        v207 = *(v0 + 1568);
        v208 = *(v0 + 1560);
        v209 = *(v0 + 1528);
        v210 = *(v0 + 1408);
        v478 = *(v0 + 1384);
        v472 = *(v0 + 1376);
        v211 = *(v0 + 1368);

        sub_2659DA270(v210, &qword_28002B6F0, &qword_265A21110);
        v553(v208, v209);
        v553(v207, v209);
        v203[2] = v38 + 1;
        sub_265A0CC50(v472, v203 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v38);
        sub_2659DCF64(v478);

        v212 = vdupq_n_s64(v203);
        goto LABEL_56;
      }
    }

LABEL_119:
    result = sub_265A1F1C0();
    v406 = *MEMORY[0x277D85DE8];
    return result;
  }

  v441 = (v0 + 577);
  v442 = (v0 + 801);
  v440 = (v0 + 584);
  v443 = (v0 + 1280);
  sub_2659DA270(*(v0 + 1480), &qword_28002B700, &qword_265A22658);
  sub_265A0CAD0();
  v9 = swift_allocError();
  *v10 = 2;
  v11 = *(v0 + 1936);
  swift_willThrow();
  *(v0 + 1208) = v9;
  v556 = v9;
  v12 = v9;
  v439 = (v0 + 1114);
  if (!swift_dynamicCast() || *(v0 + 2083) != 2)
  {
    v539 = (v0 + 2019);
    v552 = (v0 + 2026);
    v68 = *(v0 + 1904);
    v69 = *(v0 + 1752);
    v70 = *(v0 + 1688);
    v71 = *(v0 + 1312);

    v72 = v68;
    v73 = sub_265A1EA80();
    v74 = sub_265A1EF20();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = *(v0 + 1904);
      v76 = *(v0 + 1688);
      v77 = *(v0 + 1680);
      v78 = *(v0 + 1312);
      v475 = *(v0 + 1304);
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v571 = v81;
      *v79 = 136446979;
      *(v79 + 4) = sub_2659D9320(v77, v76, &v571);
      *(v79 + 12) = 2160;
      *(v79 + 14) = 1752392040;
      *(v79 + 22) = 2113;
      v82 = [v75 identifier];
      *(v79 + 24) = v82;
      *v80 = v82;
      *(v79 + 32) = 2082;
      *(v79 + 34) = sub_2659D9320(v475, v78, &v571);
      _os_log_impl(&dword_2659CA000, v73, v74, "Error when fetching AppEntity URL via IPC '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v79, 0x2Au);
      sub_2659DA270(v80, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v80, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v81, -1, -1);
      MEMORY[0x266766110](v79, -1, -1);
    }

    v83 = *(v0 + 1912);
    v84 = *(v0 + 1904);
    v85 = *(v0 + 1864);
    v86 = *(v0 + 1688);
    v87 = *(v0 + 1680);
    v88 = *(v0 + 1312);
    v89 = *(v0 + 1304);
    v90 = sub_265A1E680();
    sub_265A0C1E0(v83, v89, v88, v87, v86, v84, v0 + 752);
    v469 = *(v0 + 768);
    *v476 = *(v0 + 752);
    v462 = *(v0 + 792);
    v465 = *(v0 + 784);
    v459 = *(v0 + 800);
    v91 = [v90 domain];
    v92 = sub_265A1EBA0();
    v453 = v93;
    v456 = v92;

    v450 = [v90 code];
    swift_getErrorValue();
    v94 = *(v0 + 1072);
    v95 = *(v0 + 1080);
    v96 = *(v0 + 1088);
    v97 = sub_265A1F380();
    v99 = v98;
    v100 = CFAbsoluteTimeGetCurrent();
    *v539 = *(v0 + 2012);
    *(v0 + 2022) = *(v0 + 2015);
    *v552 = *(v0 + 2005);
    *(v0 + 2029) = *(v0 + 2008);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(v0 + 1864);
    if ((v101 & 1) == 0)
    {
      v102 = sub_2659E0698(0, *(v102 + 2) + 1, 1, *(v0 + 1864));
    }

    v38 = *(v102 + 2);
    v103 = *(v102 + 3);
    if (v38 >= v103 >> 1)
    {
      v102 = sub_2659E0698((v103 > 1), v38 + 1, 1, v102);
    }

    v104 = *(v0 + 1912);
    v105 = *(v0 + 1904);
    v106 = *(v0 + 1888);

    v107 = v102;
    *(v102 + 2) = v38 + 1;
    v108 = &v102[120 * v38];
    v108[32] = 2;
    v109 = *v539;
    *(v108 + 9) = *(v0 + 2022);
    *(v108 + 33) = v109;
    *(v108 + 56) = v469;
    *(v108 + 40) = *v476;
    *(v108 + 9) = v465;
    *(v108 + 10) = v462;
    v108[88] = v459;
    v110 = *v552;
    *(v108 + 23) = *(v0 + 2029);
    *(v108 + 89) = v110;
    *(v108 + 12) = 3;
    *(v108 + 13) = v456;
    *(v108 + 14) = v453;
    *(v108 + 15) = v450;
    *(v108 + 16) = v97;
    *(v108 + 17) = v99;
    *(v108 + 18) = v100;
    goto LABEL_107;
  }

  v13 = *(v0 + 1912);
  v547 = *(v0 + 1904);
  v536 = *(v0 + 1864);
  v14 = *(v0 + 1688);
  v15 = *(v0 + 1680);
  v16 = *(v0 + 1312);
  v17 = *(v0 + 1304);

  sub_265A0C1E0(v13, v17, v16, v15, v14, v547, v0 + 696);
  v548 = *(v0 + 712);
  v557 = *(v0 + 696);
  v18 = *(v0 + 728);
  v19 = *(v0 + 736);
  v20 = *(v0 + 744);
  v21 = CFAbsoluteTimeGetCurrent();
  *(v0 + 1146) = *(v0 + 689);
  *(v0 + 1149) = *(v0 + 692);
  *(v0 + 745) = *(v0 + 2075);
  *(v0 + 748) = *(v0 + 2078);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v0 + 1864);
  if ((v22 & 1) == 0)
  {
    v23 = sub_2659E0698(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  v26 = v20;
  v27 = v18;
  if (v25 >= v24 >> 1)
  {
    v537 = sub_2659E0698((v24 > 1), v25 + 1, 1, v23);
  }

  else
  {
    v537 = v23;
  }

  v28 = *(v0 + 1904);
  v482 = *(v0 + 1752);
  v29 = *(v0 + 1688);
  v30 = *(v0 + 1312);
  *(v537 + 2) = v25 + 1;
  v31 = &v537[120 * v25];
  v31[32] = 2;
  v32 = *(v0 + 1146);
  *(v31 + 9) = *(v0 + 1149);
  *(v31 + 33) = v32;
  *(v31 + 56) = v548;
  *(v31 + 40) = v557;
  *(v31 + 9) = v27;
  *(v31 + 10) = v19;
  v31[88] = v26;
  v33 = *(v0 + 745);
  *(v31 + 23) = *(v0 + 748);
  *(v31 + 89) = v33;
  *(v31 + 12) = 0x8000000000000003;
  *(v31 + 104) = 0u;
  *(v31 + 120) = 0u;
  *(v31 + 17) = 0;
  *(v31 + 18) = v21;

  v34 = v28;
  v35 = sub_265A1EA80();
  v36 = sub_265A1EF20();

  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 1920);
  v39 = *(v0 + 1912);
  v40 = *(v0 + 1904);
  v41 = *(v0 + 1888);
  if (!v37)
  {

    v212 = *(v0 + 1872);
LABEL_56:
    v550 = v212;
    goto LABEL_57;
  }

  v42 = *(v0 + 1688);
  v43 = *(v0 + 1680);
  v523 = *(v0 + 1312);
  v483 = *(v0 + 1304);
  v549 = *(v0 + 1888);
  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  *&v571 = v46;
  *v44 = 136446979;
  *(v44 + 4) = sub_2659D9320(v43, v42, &v571);
  *(v44 + 12) = 2160;
  *(v44 + 14) = 1752392040;
  *(v44 + 22) = 2113;
  v47 = [v40 identifier];
  *(v44 + 24) = v47;
  *v45 = v47;
  *(v44 + 32) = 2082;
  *(v44 + 34) = sub_2659D9320(v483, v523, &v571);
  _os_log_impl(&dword_2659CA000, v35, v36, "Could not export URL for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v44, 0x2Au);
  sub_2659DA270(v45, &qword_28002B678, &unk_265A21AC0);
  MEMORY[0x266766110](v45, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x266766110](v46, -1, -1);
  MEMORY[0x266766110](v44, -1, -1);

  v550 = *(v0 + 1872);
LABEL_57:
  v107 = v537;
LABEL_58:
  v213 = *(v0 + 1896);
  if (v213 == *(v0 + 1856))
  {
LABEL_89:
    v544 = v107;
    v262 = *(v0 + 1840);
    v263 = *(v0 + 1752);
    v264 = *(v0 + 1312);

    v265 = sub_265A1EA80();
    v266 = sub_265A1EF30();

    v267 = os_log_type_enabled(v265, v266);
    v268 = *(v0 + 1832);
    v269 = *(v0 + 1760);
    v532 = *(v0 + 1744);
    v270 = *(v0 + 1736);
    v562 = *(v0 + 1704);
    v271 = *(v0 + 1648);
    v272 = *(v0 + 1632);
    v273 = *(v0 + 1624);
    if (v267)
    {
      v528 = *(v0 + 1648);
      v274 = *(v0 + 1312);
      v524 = *(v0 + 1624);
      v275 = *(v0 + 1304);
      v519 = *(v0 + 1712);
      v514 = *(v0 + 1832);
      v276 = swift_slowAlloc();
      v509 = v270;
      v277 = swift_slowAlloc();
      *&v571 = v277;
      *v276 = 136446466;
      *(v276 + 4) = sub_2659D9320(v275, v274, &v571);
      *(v276 + 12) = 2050;
      *(v276 + 14) = *(v550.i64[0] + 16);

      _os_log_impl(&dword_2659CA000, v265, v266, "…finished processing Link Entity Instances for AppIntent '%{public}s', retrieved %{public}ld items.", v276, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v277);
      MEMORY[0x266766110](v277, -1, -1);
      MEMORY[0x266766110](v276, -1, -1);

      (*(v272 + 8))(v528, v524);
    }

    else
    {

      (*(v272 + 8))(v271, v273);
    }

    goto LABEL_116;
  }

  v214 = 0x279BB1000uLL;
LABEL_60:
  v542 = v107;
  while (1)
  {
    *(v0 + 1872) = v550;
    *(v0 + 1864) = v107;
    v215 = *(v0 + 1848);
    if ((v215 & 0xC000000000000001) != 0)
    {
      v216 = MEMORY[0x2667656F0](v213, *(v0 + 1840));
    }

    else
    {
      if (v213 >= *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_139;
      }

      v216 = *(*(v0 + 1840) + 8 * v213 + 32);
    }

    v2 = v216;
    *(v0 + 1888) = v216;
    *(v0 + 1896) = v213 + 1;
    if (__OFADD__(v213, 1))
    {
      __break(1u);
      goto LABEL_126;
    }

    v217 = [v216 *(v214 + 2912)];
    sub_265A1F000();
    swift_unknownObjectRelease();
    sub_2659F3D98(0, &qword_28156A808, 0x277D237F0);
    if (swift_dynamicCast())
    {
      v213 = *(v0 + 1256);
      *(v0 + 1904) = v213;
      v242 = swift_allocObject();
      *(v0 + 1912) = v242;
      *(v242 + 16) = 0u;
      *(v242 + 32) = 0u;
      *(v242 + 48) = 0u;
      *(v242 + 64) = -1;
      v243 = [v2 displayRepresentation];
      *(v0 + 1920) = v243;
      if (!v243)
      {
        sub_265A0C1E0(v242, *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), v213, v0 + 528);
        v543 = *(v0 + 544);
        v561 = *(v0 + 528);
        v38 = *(v0 + 560);
        v244 = *(v0 + 568);
        v245 = *(v0 + 576);
        v246 = CFAbsoluteTimeGetCurrent();
        *v504 = *v441;
        *(v0 + 2071) = *(v441 + 3);
        *v508 = *(v0 + 2033);
        *(v0 + 636) = *(v0 + 2036);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_2659E0698(0, *(v107 + 2) + 1, 1, v107);
        }

        v248 = *(v107 + 2);
        v247 = *(v107 + 3);
        if (v248 >= v247 >> 1)
        {
          v107 = sub_2659E0698((v247 > 1), v248 + 1, 1, v107);
        }

        *(v107 + 2) = v248 + 1;
        v249 = &v107[120 * v248];
        v249[32] = 2;
        v250 = *v504;
        *(v249 + 9) = *(v0 + 2071);
        *(v249 + 33) = v250;
        *(v249 + 56) = v543;
        *(v249 + 40) = v561;
        *(v249 + 9) = v38;
        *(v249 + 10) = v244;
        v249[88] = v245;
        v251 = *v508;
        *(v249 + 23) = *(v0 + 636);
        *(v249 + 89) = v251;
        *(v249 + 12) = 0x8000000000000001;
        *(v249 + 104) = 0u;
        *(v249 + 120) = 0u;
        *(v249 + 17) = 0;
        *(v249 + 18) = v246;

        v213 = *(v0 + 1896);
        v214 = 0x279BB1000;
        if (v213 != *(v0 + 1856))
        {
          goto LABEL_60;
        }

        goto LABEL_89;
      }

      v38 = 0x279BB1000uLL;
      v107 = v2;
      v407 = [v2 exportedContent];
      v214 = 0x279BB1000uLL;
      v2 = v443;
      if (v407)
      {
        v408 = v407;
        v409 = [v407 content];

        v410 = [v409 fileURL];
        v411 = 1;
        if (v410)
        {
          v412 = *(v0 + 1512);
          sub_265A1E730();

          v411 = 0;
        }

        v413 = *(v0 + 1536);
        v414 = *(v0 + 1528);
        v48 = (v0 + 1520);
        v415 = *(v0 + 1520);
        v416 = *(v0 + 1512);
        v417 = *(v413 + 56);
        v417(v416, v411, 1, v414);
        sub_265A0CB24(v416, v415);
        v555 = *(v413 + 48);
        v418 = v555(v415, 1, v414);
        v49 = v417;
        v214 = 0x279BB1000;
        v38 = 0x279BB1000;
        if (v418 != 1)
        {
          v1 = v440;
          v3 = v441;
          v4 = v442;
          v5 = v439;
          goto LABEL_11;
        }

LABEL_127:
        *(v0 + 1928) = v49;
        sub_2659DA270(*(v0 + 1520), &qword_28002B700, &qword_265A22658);
        v419 = [v107 *(v38 + 2928)];
        if (!v419)
        {
          goto LABEL_141;
        }

        v420 = v419;
        v421 = [v419 *(v214 + 2936)];

        v422 = [v421 data];
        v214 = sub_265A1E780();
        v38 = v423;

        v424 = v38 >> 62;
        if ((v38 >> 62) > 1)
        {
          if (v424 != 2)
          {
            goto LABEL_139;
          }

          v425 = *(v214 + 16);
          v426 = *(v214 + 24);
        }

        else
        {
          if (!v424)
          {
            if ((v38 & 0xFF000000000000) == 0)
            {
              goto LABEL_139;
            }

LABEL_136:
            v427 = v49;
            v428 = *(v0 + 1536);
            v429 = *(v0 + 1528);
            v48 = (v0 + 1504);
            v430 = *(v0 + 1504);
            v431 = *(v0 + 1496);
            v554 = v427;
            v427(v431, 1, 1, v429);
            sub_265A1E700();
            sub_265A0CB94(v214, v38);
            sub_2659DA270(v431, &qword_28002B700, &qword_265A22658);
            v555 = *(v428 + 48);
            if (v555(v430, 1, v429) != 1)
            {
              v1 = v440;
              v3 = v441;
              v4 = v442;
              v5 = v439;
              v49 = v554;
              goto LABEL_11;
            }

            sub_2659DA270(*v48, &qword_28002B700, &qword_265A22658);
            goto LABEL_141;
          }

          v425 = v214;
          v426 = v214 >> 32;
        }

        if (v425 != v426)
        {
          goto LABEL_136;
        }

LABEL_139:
        sub_265A0CB94(v214, v38);
LABEL_141:
        v570 = *(v0 + 1760);
        v432 = *(v0 + 1488);
        v546 = *(v0 + 1440);
        v433 = *(v0 + 1432);
        v434 = *(v0 + 1424);
        v435 = *(v0 + 1416);
        *(v0 + 16) = v0;
        *(v0 + 56) = v432;
        *(v0 + 24) = sub_265A00F8C;
        swift_continuation_init();
        *(v0 + 328) = v435;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
        *(v0 + 1936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
        sub_265A1ED80();
        (*(v434 + 32))(boxed_opaque_existential_1, v433, v435);
        *(v0 + 272) = MEMORY[0x277D85DD0];
        *(v0 + 280) = 1107296256;
        *(v0 + 288) = sub_265A0C3A0;
        *(v0 + 296) = &block_descriptor_8;
        [v570 fetchEntityURL:v213 completionHandler:v0 + 272];
        (*(v434 + 8))(boxed_opaque_existential_1, v435);
        v437 = *MEMORY[0x277D85DE8];
        v438 = v0 + 16;

        return MEMORY[0x282200938](v438);
      }

LABEL_126:
      v49 = *(*(v0 + 1536) + 56);
      v49(*(v0 + 1520), 1, 1, *(v0 + 1528));
      goto LABEL_127;
    }

    sub_265A0CAD0();
    v218 = swift_allocError();
    *v219 = 1;
    swift_willThrow();
    *(v0 + 1232) = v218;
    v220 = v218;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    if (!swift_dynamicCast())
    {
      goto LABEL_85;
    }

    if (*(v0 + 2082) != 1)
    {
      break;
    }

    v233 = *(v0 + 1752);
    v38 = *(v0 + 1688);
    v234 = *(v0 + 1312);

    v223 = sub_265A1EA80();
    v235 = sub_265A1EF20();

    if (os_log_type_enabled(v223, v235))
    {
      v38 = *(v0 + 1688);
      v236 = *(v0 + 1680);
      v237 = *(v0 + 1312);
      v238 = *(v0 + 1304);
      v239 = swift_slowAlloc();
      v560 = v2;
      v240 = swift_slowAlloc();
      *&v571 = v240;
      *v239 = 136446466;
      *(v239 + 4) = sub_2659D9320(v236, v38, &v571);
      *(v239 + 12) = 2082;
      v241 = v237;
      v214 = 0x279BB1000;
      *(v239 + 14) = sub_2659D9320(v238, v241, &v571);
      _os_log_impl(&dword_2659CA000, v223, v235, "Failed to retrieve the instance of AppEntity '%{public}s', AppIntent '%{public}s'.", v239, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v240, -1, -1);
      v232 = v239;
      v107 = v542;
LABEL_76:
      MEMORY[0x266766110](v232, -1, -1);
LABEL_77:

      goto LABEL_62;
    }

LABEL_62:
    v213 = *(v0 + 1896);
    if (v213 == *(v0 + 1856))
    {
      goto LABEL_89;
    }
  }

  if (!*(v0 + 2082))
  {
    v560 = v2;
    v221 = *(v0 + 1752);
    v38 = *(v0 + 1688);
    v222 = *(v0 + 1312);

    v223 = sub_265A1EA80();
    v224 = sub_265A1EF20();

    if (os_log_type_enabled(v223, v224))
    {
      v225 = *(v0 + 1688);
      v38 = *(v0 + 1680);
      v226 = *(v0 + 1312);
      v227 = *(v0 + 1304);
      v228 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      *&v571 = v229;
      *v228 = 136446466;
      *(v228 + 4) = sub_2659D9320(v38, v225, &v571);
      *(v228 + 12) = 2082;
      v230 = v226;
      v214 = 0x279BB1000;
      *(v228 + 14) = sub_2659D9320(v227, v230, &v571);
      _os_log_impl(&dword_2659CA000, v223, v224, "Entity Query returned unexpected type '%{public}s', AppIntent '%{public}s'.", v228, 0x16u);
      swift_arrayDestroy();
      v231 = v229;
      v107 = v542;
      MEMORY[0x266766110](v231, -1, -1);
      v232 = v228;
      goto LABEL_76;
    }

    goto LABEL_77;
  }

LABEL_85:
  v252 = *(v0 + 1840);
  v253 = *(v0 + 1832);

  *(v0 + 1248) = v218;
  v254 = v218;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v255 = *v443;
    v256 = [*v443 domain];
    v257 = sub_265A1EBA0();
    v259 = v258;

    v260 = *MEMORY[0x277D23A98];
    if (v257 == sub_265A1EBA0() && v259 == v261)
    {

LABEL_93:
      v279 = *(v0 + 1752);
      v280 = *(v0 + 1688);
      v281 = *(v0 + 1312);

      v282 = v255;
      v283 = sub_265A1EA80();
      v284 = sub_265A1EF30();

      if (os_log_type_enabled(v283, v284))
      {
        v285 = *(v0 + 1688);
        v286 = *(v0 + 1680);
        v563 = *(v0 + 1312);
        v287 = *(v0 + 1304);
        v288 = swift_slowAlloc();
        v289 = swift_slowAlloc();
        v290 = swift_slowAlloc();
        *&v571 = v290;
        *v288 = 136446722;
        *(v288 + 4) = sub_2659D9320(v286, v285, &v571);
        *(v288 + 12) = 2082;
        *(v288 + 14) = sub_2659D9320(v287, v563, &v571);
        *(v288 + 22) = 2114;
        *(v288 + 24) = v282;
        *v289 = v282;
        v291 = v282;
        _os_log_impl(&dword_2659CA000, v283, v284, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v288, 0x20u);
        sub_2659DA270(v289, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v289, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v290, -1, -1);
        MEMORY[0x266766110](v288, -1, -1);
      }

      v292 = *(v0 + 1696);
      v293 = *(v0 + 1688);
      v294 = *(v0 + 1680);
      v295 = *(v0 + 1312);
      v296 = *(v0 + 1304);
      v297 = v282;
      sub_265A0BFD4(v292, v296, v295, v294, v293, &v571);
      v533 = v572;
      v564 = v571;
      v298 = v573;
      v299 = v574;
      v300 = v575;
      v301 = [v297 domain];
      v302 = sub_265A1EBA0();
      v304 = v303;

      v305 = [v297 code];
      v306 = [v297 localizedDescription];

      v307 = sub_265A1EBA0();
      v497 = v308;
      v501 = v307;

      v309 = CFAbsoluteTimeGetCurrent();
      v310 = v542;
      v529 = v298;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v310 = sub_2659E0698(0, *(v542 + 2) + 1, 1, v542);
      }

      v312 = *(v310 + 2);
      v311 = *(v310 + 3);
      v525 = v299;
      v520 = v300;
      v510 = v304;
      v515 = v302;
      v505 = v305;
      if (v312 >= v311 >> 1)
      {
        v544 = sub_2659E0698((v311 > 1), v312 + 1, 1, v310);
      }

      else
      {
        v544 = v310;
      }

      v313 = *(v0 + 1760);
      v314 = *(v0 + 1744);
      v315 = *(v0 + 1712);
      v316 = *(v0 + 1704);
      v317 = *(v0 + 1648);
      v318 = *(v0 + 1632);
      v319 = *(v0 + 1624);

      (*(v318 + 8))(v317, v319);
      *(v544 + 2) = v312 + 1;
      v320 = &v544[120 * v312];
      v320[32] = 0;
      *(v320 + 56) = v533;
      *(v320 + 40) = v564;
      *(v320 + 9) = v529;
      *(v320 + 10) = v525;
      v320[88] = v520;
      *(v320 + 12) = 2;
      *(v320 + 13) = v515;
      *(v320 + 14) = v510;
      *(v320 + 15) = v505;
      *(v320 + 16) = v501;
      *(v320 + 17) = v497;
      *(v320 + 18) = v309;

      goto LABEL_116;
    }

    v278 = sub_265A1F340();

    if (v278)
    {
      goto LABEL_93;
    }
  }

  v350 = *(v0 + 1752);
  v351 = *(v0 + 1688);
  v352 = *(v0 + 1312);

  v353 = v218;
  v354 = sub_265A1EA80();
  v355 = sub_265A1EF20();

  if (os_log_type_enabled(v354, v355))
  {
    v356 = *(v0 + 1688);
    v357 = *(v0 + 1680);
    v567 = *(v0 + 1312);
    v358 = *(v0 + 1304);
    v359 = swift_slowAlloc();
    v360 = swift_slowAlloc();
    v361 = swift_slowAlloc();
    *&v571 = v361;
    *v359 = 136446722;
    *(v359 + 4) = sub_2659D9320(v357, v356, &v571);
    *(v359 + 12) = 2082;
    *(v359 + 14) = sub_2659D9320(v358, v567, &v571);
    *(v359 + 22) = 2114;
    v362 = v218;
    v363 = _swift_stdlib_bridgeErrorToNSError();
    *(v359 + 24) = v363;
    *v360 = v363;
    _os_log_impl(&dword_2659CA000, v354, v355, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v359, 0x20u);
    sub_2659DA270(v360, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v360, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266766110](v361, -1, -1);
    MEMORY[0x266766110](v359, -1, -1);
  }

  v364 = *(v0 + 1696);
  v365 = *(v0 + 1688);
  v366 = *(v0 + 1680);
  v367 = *(v0 + 1312);
  v368 = *(v0 + 1304);
  v369 = sub_265A1E680();
  sub_265A0BFD4(v364, v368, v367, v366, v365, &v571);
  v534 = v572;
  v568 = v571;
  v370 = v573;
  v371 = v574;
  v372 = v575;
  v373 = [v369 domain];
  v374 = sub_265A1EBA0();
  v376 = v375;

  v506 = [v369 code];
  swift_getErrorValue();
  v377 = *(v0 + 1024);
  v378 = *(v0 + 1032);
  v379 = *(v0 + 1040);
  v380 = sub_265A1F380();
  v498 = v381;
  v502 = v380;
  v382 = CFAbsoluteTimeGetCurrent();
  v383 = v542;
  v526 = v371;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v383 = sub_2659E0698(0, *(v542 + 2) + 1, 1, v542);
  }

  v385 = *(v383 + 2);
  v384 = *(v383 + 3);
  v530 = v370;
  v521 = v372;
  v511 = v376;
  v516 = v374;
  v386 = v369;
  if (v385 >= v384 >> 1)
  {
    v544 = sub_2659E0698((v384 > 1), v385 + 1, 1, v383);
  }

  else
  {
    v544 = v383;
  }

  v387 = *(v0 + 1760);
  v388 = *(v0 + 1744);
  v389 = *(v0 + 1712);
  v390 = *(v0 + 1704);
  v492 = *(v0 + 1648);
  v391 = *(v0 + 1632);
  v392 = *(v0 + 1624);

  (*(v391 + 8))(v492, v392);
  *(v544 + 2) = v385 + 1;
  v393 = &v544[120 * v385];
  v393[32] = 2;
  *(v393 + 56) = v534;
  *(v393 + 40) = v568;
  *(v393 + 9) = v530;
  *(v393 + 10) = v526;
  v393[88] = v521;
  *(v393 + 12) = 2;
  *(v393 + 13) = v516;
  *(v393 + 14) = v511;
  *(v393 + 15) = v506;
  *(v393 + 16) = v502;
  *(v393 + 17) = v498;
  *(v393 + 18) = v382;
LABEL_116:
  v394 = *(v0 + 1696);
  v395 = *(v0 + 1688);
  v396 = *(v0 + 1680);
  v397 = *(v0 + 1672);
  v398 = *(v0 + 1648);
  v399 = *(v0 + 1640);
  v452 = *(v0 + 1616);
  v455 = *(v0 + 1592);
  v458 = *(v0 + 1568);
  v461 = *(v0 + 1560);
  v464 = *(v0 + 1552);
  v468 = *(v0 + 1544);
  v474 = *(v0 + 1520);
  v481 = *(v0 + 1512);
  v488 = *(v0 + 1504);
  v490 = *(v0 + 1496);
  v491 = *(v0 + 1488);
  v493 = *(v0 + 1480);
  v495 = *(v0 + 1472);
  v499 = *(v0 + 1464);
  v503 = *(v0 + 1456);
  v507 = *(v0 + 1448);
  v512 = *(v0 + 1432);
  v517 = *(v0 + 1408);
  v522 = *(v0 + 1400);
  v527 = *(v0 + 1392);
  v531 = *(v0 + 1384);
  v535 = *(v0 + 1376);
  v569 = *(v0 + 1352);
  v400 = *(v0 + 1312);
  v401 = *(v0 + 1304);
  v402 = *(v0 + 1296);

  *v402 = v401;
  v402[1] = v400;
  v402[2] = v396;
  v402[3] = v395;
  v402[4] = v550.i64[0];
  v402[5] = v544;

  v403 = *(v0 + 8);
  v404 = *MEMORY[0x277D85DE8];

  return v403();
}

uint64_t sub_265A03F84()
{
  v217 = v0;
  v216 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1776);
  swift_willThrow();
  *(v0 + 1224) = v1;
  v3 = v1;
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 1240);
    *(v0 + 1952) = v4;
    if ([v4 code] == 10002)
    {
      v5 = *(v0 + 1752);
      v6 = *(v0 + 1688);
      v7 = *(v0 + 1312);

      v8 = v4;
      v9 = sub_265A1EA80();
      v10 = sub_265A1EF20();

      if (os_log_type_enabled(v9, v10))
      {
        v204 = *(v0 + 1688);
        v11 = *(v0 + 1680);
        v12 = *(v0 + 1312);
        v13 = *(v0 + 1304);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v211 = v16;
        *v14 = 136446722;
        *(v14 + 4) = sub_2659D9320(v13, v12, &v211);
        *(v14 + 12) = 2082;
        *(v14 + 14) = sub_2659D9320(v11, v204, &v211);
        *(v14 + 22) = 2114;
        *(v14 + 24) = v8;
        *v15 = v8;
        v17 = v8;
        _os_log_impl(&dword_2659CA000, v9, v10, "Failed to execute all entities query for AppIntent: %{public}s, AppEntity %{public}s with error %{public}@. Falling back to suggested entities query", v14, 0x20u);
        sub_2659DA270(v15, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v15, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v16, -1, -1);
        MEMORY[0x266766110](v14, -1, -1);
      }

      sub_265A0BFD4(*(v0 + 1696), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), &v211);
      v160 = v212;
      v162 = v211;
      v156 = v214;
      v158 = v213;
      v154 = v215;
      Current = CFAbsoluteTimeGetCurrent();
      v19 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_2659E0698((v20 > 1), v21 + 1, 1, v19);
      }

      *(v0 + 1960) = v19;
      v205 = *(v0 + 1808);
      v200 = *(v0 + 1800);
      v185 = *(v0 + 1784);
      v189 = *(v0 + 1792);
      v177 = *(v0 + 1768);
      v181 = *(v0 + 1776);
      v196 = *(v0 + 1760);
      v22 = *(v0 + 1720);
      v150 = *(v0 + 1728);
      v152 = *(v0 + 1704);
      v148 = *(v0 + 1648);
      v23 = *(v0 + 1640);
      v24 = *(v0 + 1632);
      v25 = *(v0 + 1624);
      v26 = *(v0 + 1616);
      v27 = *(v0 + 1608);
      v28 = *(v0 + 1600);
      v173 = *(v0 + 1592);
      v164 = *(v0 + 1576);
      *(v19 + 2) = v21 + 1;
      v29 = &v19[120 * v21];
      v29[32] = 1;
      *(v29 + 56) = v160;
      *(v29 + 40) = v162;
      *(v29 + 9) = v158;
      *(v29 + 10) = v156;
      v29[88] = v154;
      *(v29 + 6) = xmmword_265A22630;
      *(v29 + 7) = 0u;
      *(v29 + 8) = 0u;
      *(v29 + 18) = Current;
      sub_2659F3D98(0, &qword_28156A890, 0x277D23B90);
      v22(v26, *MEMORY[0x277D23A30], v28);
      v150(v23, v148, v25);
      v30 = v152;
      v31 = sub_265A1EF80();
      *(v0 + 1968) = v31;
      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 1168;
      *(v0 + 152) = sub_265A04EFC;
      swift_continuation_init();
      *(v0 + 456) = v164;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
      sub_265A1ED80();
      v185(boxed_opaque_existential_1, v173, v164);
      *(v0 + 400) = MEMORY[0x277D85DD0];
      *(v0 + 408) = 1107296256;
      *(v0 + 416) = sub_265A0C130;
      *(v0 + 424) = &block_descriptor_4;
      [v196 performConfigurableQuery:v31 completionHandler:?];
      v200(boxed_opaque_existential_1, v164);
      v33 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282200938](v0 + 144);
    }
  }

  v34 = (v0 + 1280);

  v35 = *(v0 + 1816);
  *(v0 + 1248) = v35;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  if (!swift_dynamicCast())
  {
    goto LABEL_24;
  }

  v37 = *v34;
  v38 = [*v34 domain];
  v39 = sub_265A1EBA0();
  v41 = v40;

  v42 = *MEMORY[0x277D23A98];
  if (v39 != sub_265A1EBA0() || v41 != v43)
  {
    v44 = sub_265A1F340();

    if (v44)
    {
      goto LABEL_16;
    }

LABEL_24:
    v88 = *(v0 + 1752);
    v89 = *(v0 + 1688);
    v90 = *(v0 + 1312);

    v91 = v35;
    v92 = sub_265A1EA80();
    v93 = sub_265A1EF20();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = *(v0 + 1688);
      v95 = v35;
      v96 = *(v0 + 1680);
      v208 = *(v0 + 1312);
      v97 = *(v0 + 1304);
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v211 = v100;
      *v98 = 136446722;
      v101 = v96;
      v35 = v95;
      *(v98 + 4) = sub_2659D9320(v101, v94, &v211);
      *(v98 + 12) = 2082;
      *(v98 + 14) = sub_2659D9320(v97, v208, &v211);
      *(v98 + 22) = 2114;
      v102 = v95;
      v103 = _swift_stdlib_bridgeErrorToNSError();
      *(v98 + 24) = v103;
      *v99 = v103;
      _os_log_impl(&dword_2659CA000, v92, v93, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v98, 0x20u);
      sub_2659DA270(v99, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v99, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v100, -1, -1);
      MEMORY[0x266766110](v98, -1, -1);
    }

    v104 = *(v0 + 1696);
    v105 = *(v0 + 1688);
    v106 = *(v0 + 1680);
    v107 = *(v0 + 1312);
    v108 = *(v0 + 1304);
    v109 = sub_265A1E680();
    sub_265A0BFD4(v104, v108, v107, v106, v105, &v211);
    v198 = v212;
    v202 = v211;
    v110 = v214;
    v194 = v213;
    v111 = v215;
    v112 = [v109 domain];
    v113 = sub_265A1EBA0();
    v115 = v114;

    v171 = [v109 code];
    swift_getErrorValue();
    v116 = *(v0 + 1024);
    v117 = *(v0 + 1032);
    v118 = *(v0 + 1040);
    v119 = sub_265A1F380();
    v165 = v120;
    v168 = v119;
    v121 = CFAbsoluteTimeGetCurrent();
    v122 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v122 = sub_2659E0698(0, *(v122 + 2) + 1, 1, v122);
    }

    v124 = *(v122 + 2);
    v123 = *(v122 + 3);
    v191 = v110;
    v187 = v111;
    v179 = v115;
    v183 = v113;
    v175 = v35;
    if (v124 >= v123 >> 1)
    {
      v209 = sub_2659E0698((v123 > 1), v124 + 1, 1, v122);
    }

    else
    {
      v209 = v122;
    }

    v125 = *(v0 + 1760);
    v126 = *(v0 + 1744);
    v127 = *(v0 + 1712);
    v128 = *(v0 + 1704);
    v129 = *(v0 + 1648);
    v130 = *(v0 + 1632);
    v131 = *(v0 + 1624);

    (*(v130 + 8))(v129, v131);
    v86 = v209;
    *(v209 + 2) = v124 + 1;
    v132 = &v209[120 * v124];
    v132[32] = 2;
    *(v132 + 56) = v198;
    *(v132 + 40) = v202;
    *(v132 + 9) = v194;
    *(v132 + 10) = v191;
    v132[88] = v187;
    *(v132 + 12) = 2;
    *(v132 + 13) = v183;
    *(v132 + 14) = v179;
    *(v132 + 15) = v171;
    *(v132 + 16) = v168;
    *(v132 + 17) = v165;
    *(v132 + 18) = v121;
    goto LABEL_31;
  }

LABEL_16:
  v45 = *(v0 + 1752);
  v46 = *(v0 + 1688);
  v47 = *(v0 + 1312);

  v48 = v37;
  v49 = sub_265A1EA80();
  v50 = sub_265A1EF30();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 1688);
    v52 = *(v0 + 1680);
    v206 = *(v0 + 1312);
    v53 = *(v0 + 1304);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v211 = v56;
    *v54 = 136446722;
    *(v54 + 4) = sub_2659D9320(v52, v51, &v211);
    *(v54 + 12) = 2082;
    *(v54 + 14) = sub_2659D9320(v53, v206, &v211);
    *(v54 + 22) = 2114;
    *(v54 + 24) = v48;
    *v55 = v48;
    v57 = v48;
    _os_log_impl(&dword_2659CA000, v49, v50, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v54, 0x20u);
    sub_2659DA270(v55, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v55, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266766110](v56, -1, -1);
    MEMORY[0x266766110](v54, -1, -1);
  }

  v58 = *(v0 + 1696);
  v59 = *(v0 + 1688);
  v60 = *(v0 + 1680);
  v61 = *(v0 + 1312);
  v62 = *(v0 + 1304);
  v63 = v48;
  sub_265A0BFD4(v58, v62, v61, v60, v59, &v211);
  v197 = v212;
  v201 = v211;
  v64 = v213;
  v65 = v214;
  v66 = v215;
  v67 = [v63 domain];
  v68 = sub_265A1EBA0();
  v70 = v69;

  v71 = [v63 code];
  v72 = [v63 localizedDescription];

  v73 = sub_265A1EBA0();
  v167 = v74;
  v170 = v73;

  v75 = CFAbsoluteTimeGetCurrent();
  v76 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v76 = sub_2659E0698(0, *(v76 + 2) + 1, 1, v76);
  }

  v78 = *(v76 + 2);
  v77 = *(v76 + 3);
  v190 = v65;
  v193 = v64;
  v186 = v66;
  v178 = v70;
  v182 = v68;
  v174 = v71;
  if (v78 >= v77 >> 1)
  {
    v207 = sub_2659E0698((v77 > 1), v78 + 1, 1, v76);
  }

  else
  {
    v207 = v76;
  }

  v79 = *(v0 + 1760);
  v80 = *(v0 + 1744);
  v81 = *(v0 + 1712);
  v82 = *(v0 + 1704);
  v83 = *(v0 + 1648);
  v84 = *(v0 + 1632);
  v85 = *(v0 + 1624);

  (*(v84 + 8))(v83, v85);
  v86 = v207;
  *(v207 + 2) = v78 + 1;
  v87 = &v207[120 * v78];
  v87[32] = 0;
  *(v87 + 56) = v197;
  *(v87 + 40) = v201;
  *(v87 + 9) = v193;
  *(v87 + 10) = v190;
  v87[88] = v186;
  *(v87 + 12) = 2;
  *(v87 + 13) = v182;
  *(v87 + 14) = v178;
  *(v87 + 15) = v174;
  *(v87 + 16) = v170;
  *(v87 + 17) = v167;
  *(v87 + 18) = v75;

LABEL_31:
  v133 = *(v0 + 1696);
  v134 = *(v0 + 1688);
  v135 = *(v0 + 1680);
  v136 = *(v0 + 1672);
  v137 = *(v0 + 1648);
  v144 = *(v0 + 1640);
  v145 = *(v0 + 1616);
  v146 = *(v0 + 1592);
  v147 = *(v0 + 1568);
  v149 = *(v0 + 1560);
  v151 = *(v0 + 1552);
  v153 = *(v0 + 1544);
  v155 = *(v0 + 1520);
  v157 = *(v0 + 1512);
  v159 = *(v0 + 1504);
  v161 = *(v0 + 1496);
  v163 = *(v0 + 1488);
  v166 = *(v0 + 1480);
  v169 = *(v0 + 1472);
  v172 = *(v0 + 1464);
  v176 = *(v0 + 1456);
  v180 = *(v0 + 1448);
  v184 = *(v0 + 1432);
  v188 = *(v0 + 1408);
  v192 = *(v0 + 1400);
  v195 = *(v0 + 1392);
  v199 = *(v0 + 1384);
  v203 = *(v0 + 1376);
  v210 = *(v0 + 1352);
  v138 = *(v0 + 1312);
  v139 = *(v0 + 1304);
  v140 = *(v0 + 1296);

  *v140 = v139;
  v140[1] = v138;
  v140[2] = v135;
  v140[3] = v134;
  v140[4] = MEMORY[0x277D84F90];
  v140[5] = v86;

  v141 = *(v0 + 8);
  v142 = *MEMORY[0x277D85DE8];

  return v141();
}

uint64_t sub_265A04EFC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1976) = v2;
  if (v2)
  {
    v3 = sub_265A07A4C;
  }

  else
  {
    v3 = sub_265A05038;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265A05038()
{
  v509 = v0;
  v508 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1968);

  v2 = *(v0 + 1168);
  v3 = *(v0 + 1960);
  *(v0 + 1832) = v2;
  v4 = *(v0 + 1752);
  v5 = *(v0 + 1688);
  v6 = *(v0 + 1312);

  v7 = sub_265A1EA80();
  v8 = sub_265A1EF30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1688);
    v10 = *(v0 + 1680);
    v11 = *(v0 + 1312);
    v12 = *(v0 + 1304);
    v13 = swift_slowAlloc();
    v488 = v3;
    v14 = swift_slowAlloc();
    *&v503 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_2659D9320(v12, v11, &v503);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_2659D9320(v10, v9, &v503);
    _os_log_impl(&dword_2659CA000, v7, v8, "…successfully executed Entity Query for AppIntent: %{public}s, AppEntity %{public}s.", v13, 0x16u);
    swift_arrayDestroy();
    v15 = v14;
    v3 = v488;
    MEMORY[0x266766110](v15, -1, -1);
    MEMORY[0x266766110](v13, -1, -1);
  }

  v16 = [v2 value];
  v17 = [v16 value];

  sub_265A1F000();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B718, &qword_265A22678);
  if (!swift_dynamicCast())
  {
    sub_265A0CAD0();
    v32 = swift_allocError();
    *v33 = 0;
    swift_willThrow();

    v483 = MEMORY[0x277D84F90];
LABEL_9:
    v34 = (v0 + 1280);
    *(v0 + 1248) = v32;
    v35 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v36 = *v34;
      v37 = [*v34 domain];
      v38 = sub_265A1EBA0();
      v40 = v39;

      v41 = *MEMORY[0x277D23A98];
      if (v38 == sub_265A1EBA0() && v40 == v42)
      {

LABEL_103:
        v269 = *(v0 + 1752);
        v270 = *(v0 + 1688);
        v271 = *(v0 + 1312);

        v272 = v36;
        v273 = sub_265A1EA80();
        v274 = sub_265A1EF30();

        if (os_log_type_enabled(v273, v274))
        {
          v275 = *(v0 + 1688);
          v276 = *(v0 + 1680);
          v477 = *(v0 + 1312);
          v499 = v3;
          v277 = *(v0 + 1304);
          v278 = swift_slowAlloc();
          v279 = swift_slowAlloc();
          v280 = swift_slowAlloc();
          *&v503 = v280;
          *v278 = 136446722;
          *(v278 + 4) = sub_2659D9320(v276, v275, &v503);
          *(v278 + 12) = 2082;
          v281 = v277;
          v3 = v499;
          *(v278 + 14) = sub_2659D9320(v281, v477, &v503);
          *(v278 + 22) = 2114;
          *(v278 + 24) = v272;
          *v279 = v272;
          v282 = v272;
          _os_log_impl(&dword_2659CA000, v273, v274, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v278, 0x20u);
          sub_2659DA270(v279, &qword_28002B678, &unk_265A21AC0);
          MEMORY[0x266766110](v279, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266766110](v280, -1, -1);
          MEMORY[0x266766110](v278, -1, -1);
        }

        v283 = *(v0 + 1696);
        v284 = *(v0 + 1688);
        v285 = *(v0 + 1680);
        v286 = *(v0 + 1312);
        v287 = *(v0 + 1304);
        v288 = v272;
        sub_265A0BFD4(v283, v287, v286, v285, v284, &v503);
        v468 = v504;
        v478 = v503;
        v463 = v505;
        v455 = v506;
        v448 = v507;
        v289 = [v288 domain];
        v290 = sub_265A1EBA0();
        v435 = v291;
        v439 = v290;

        v431 = [v288 code];
        v292 = [v288 localizedDescription];

        v293 = sub_265A1EBA0();
        v421 = v294;
        v427 = v293;

        Current = CFAbsoluteTimeGetCurrent();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2659E0698(0, *(v3 + 2) + 1, 1, v3);
        }

        v297 = *(v3 + 2);
        v296 = *(v3 + 3);
        if (v297 >= v296 >> 1)
        {
          v500 = sub_2659E0698((v296 > 1), v297 + 1, 1, v3);
        }

        else
        {
          v500 = v3;
        }

        v298 = *(v0 + 1760);
        v299 = *(v0 + 1744);
        v300 = *(v0 + 1712);
        v301 = *(v0 + 1704);
        v302 = *(v0 + 1648);
        v303 = *(v0 + 1632);
        v304 = *(v0 + 1624);

        (*(v303 + 8))(v302, v304);
        *(v500 + 2) = v297 + 1;
        v305 = &v500[120 * v297];
        v305[32] = 0;
        *(v305 + 56) = v468;
        *(v305 + 40) = v478;
        *(v305 + 9) = v463;
        *(v305 + 10) = v455;
        v305[88] = v448;
        *(v305 + 12) = 2;
        *(v305 + 13) = v439;
        *(v305 + 14) = v435;
        *(v305 + 15) = v431;
        *(v305 + 16) = v427;
        *(v305 + 17) = v421;
        *(v305 + 18) = Current;

        goto LABEL_132;
      }

      v268 = sub_265A1F340();

      if (v268)
      {
        goto LABEL_103;
      }
    }

    v308 = *(v0 + 1752);
    v309 = *(v0 + 1688);
    v310 = *(v0 + 1312);

    v311 = v32;
    v312 = sub_265A1EA80();
    v313 = sub_265A1EF20();

    if (os_log_type_enabled(v312, v313))
    {
      v314 = *(v0 + 1688);
      v315 = *(v0 + 1680);
      v479 = *(v0 + 1312);
      v501 = v3;
      v316 = *(v0 + 1304);
      v317 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      *&v503 = v319;
      *v317 = 136446722;
      *(v317 + 4) = sub_2659D9320(v315, v314, &v503);
      *(v317 + 12) = 2082;
      v320 = v316;
      v3 = v501;
      *(v317 + 14) = sub_2659D9320(v320, v479, &v503);
      *(v317 + 22) = 2114;
      v321 = v32;
      v322 = _swift_stdlib_bridgeErrorToNSError();
      *(v317 + 24) = v322;
      *v318 = v322;
      _os_log_impl(&dword_2659CA000, v312, v313, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v317, 0x20u);
      sub_2659DA270(v318, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v318, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v319, -1, -1);
      MEMORY[0x266766110](v317, -1, -1);
    }

    v323 = *(v0 + 1696);
    v324 = *(v0 + 1688);
    v325 = *(v0 + 1680);
    v326 = *(v0 + 1312);
    v327 = *(v0 + 1304);
    v328 = sub_265A1E680();
    sub_265A0BFD4(v323, v327, v326, v325, v324, &v503);
    v469 = v504;
    v480 = v503;
    v464 = v505;
    v456 = v506;
    v449 = v507;
    v329 = [v328 domain];
    v330 = sub_265A1EBA0();
    v436 = v331;
    v440 = v330;

    v432 = v328;
    v428 = [v328 code];
    swift_getErrorValue();
    v332 = *(v0 + 1024);
    v333 = *(v0 + 1032);
    v334 = *(v0 + 1040);
    v422 = sub_265A1F380();
    v418 = v335;
    v336 = CFAbsoluteTimeGetCurrent();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2659E0698(0, *(v3 + 2) + 1, 1, v3);
    }

    v338 = *(v3 + 2);
    v337 = *(v3 + 3);
    if (v338 >= v337 >> 1)
    {
      v500 = sub_2659E0698((v337 > 1), v338 + 1, 1, v3);
    }

    else
    {
      v500 = v3;
    }

    v339 = *(v0 + 1760);
    v340 = *(v0 + 1744);
    v341 = *(v0 + 1712);
    v342 = *(v0 + 1704);
    v343 = *(v0 + 1648);
    v344 = *(v0 + 1632);
    v345 = *(v0 + 1624);

    (*(v344 + 8))(v343, v345);
    *(v500 + 2) = v338 + 1;
    v346 = &v500[120 * v338];
    v346[32] = 2;
    *(v346 + 56) = v469;
    *(v346 + 40) = v480;
    *(v346 + 9) = v464;
    *(v346 + 10) = v456;
    v346[88] = v449;
    *(v346 + 12) = 2;
    *(v346 + 13) = v440;
    *(v346 + 14) = v436;
    *(v346 + 15) = v428;
    *(v346 + 16) = v422;
    *(v346 + 17) = v418;
    *(v346 + 18) = v336;
    goto LABEL_132;
  }

  v18 = *(v0 + 1752);
  v19 = *(v0 + 1688);
  v20 = *(v0 + 1312);
  v21 = *(v0 + 1272);
  *(v0 + 1840) = v21;

  v22 = sub_265A1EA80();
  v23 = sub_265A1EF30();

  v24 = v21 >> 62;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v503 = v26;
    *v25 = 134349570;
    v489 = v3;
    v472 = v26;
    if (v24)
    {
      v27 = sub_265A1F1E0();
    }

    else
    {
      v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = *(v0 + 1688);
    v29 = *(v0 + 1680);
    v30 = *(v0 + 1312);
    v31 = *(v0 + 1304);
    *(v25 + 4) = v27;

    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_2659D9320(v31, v30, &v503);
    *(v25 + 22) = 2082;
    *(v25 + 24) = sub_2659D9320(v29, v28, &v503);
    _os_log_impl(&dword_2659CA000, v22, v23, "Begin processing %{public}ld Link Entity Instances for AppIntent: %{public}s, AppEntity %{public}s…", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v472, -1, -1);
    MEMORY[0x266766110](v25, -1, -1);

    v3 = v489;
  }

  else
  {
  }

  *(v0 + 1848) = v21;
  if (v24)
  {
    goto LABEL_127;
  }

  v43 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 1856) = v43;
  if (v43)
  {
    do
    {
      v44 = 0;
      v385 = (v0 + 584);
      v388 = (v0 + 808);
      v467 = (v0 + 1232);
      v434 = (v0 + 633);
      v386 = (v0 + 857);
      v387 = (v0 + 801);
      v389 = (v0 + 1984);
      v390 = (v0 + 1153);
      v391 = (v0 + 2047);
      v392 = (v0 + 2040);
      v430 = (v0 + 2068);
      v45 = MEMORY[0x277D84F90];
      v46 = MEMORY[0x277D84F90];
      while (1)
      {
        *(v0 + 1880) = v46;
        *(v0 + 1872) = v45;
        *(v0 + 1864) = v3;
        v47 = *(v0 + 1848);
        if ((v47 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x2667656F0](v44, *(v0 + 1840));
        }

        else
        {
          if (v44 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v48 = *(*(v0 + 1840) + 8 * v44 + 32);
        }

        v49 = v48;
        *(v0 + 1888) = v48;
        *(v0 + 1896) = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        v50 = [v48 value];
        sub_265A1F000();
        swift_unknownObjectRelease();
        sub_2659F3D98(0, &qword_28156A808, 0x277D237F0);
        if (!swift_dynamicCast())
        {
          sub_265A0CAD0();
          v32 = swift_allocError();
          *v59 = 1;
          swift_willThrow();
          *v467 = v32;
          v60 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
          v483 = v45;
          if (!swift_dynamicCast())
          {
            goto LABEL_110;
          }

          v473 = v46;
          if (*(v0 + 2082) == 1)
          {
            v75 = *(v0 + 1752);
            v76 = *(v0 + 1688);
            v77 = *(v0 + 1312);

            v64 = sub_265A1EA80();
            v78 = sub_265A1EF20();

            if (os_log_type_enabled(v64, v78))
            {
              v79 = *(v0 + 1688);
              v80 = *(v0 + 1680);
              v461 = *(v0 + 1312);
              v491 = v3;
              v81 = *(v0 + 1304);
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *&v503 = v70;
              *v69 = 136446466;
              *(v69 + 4) = sub_2659D9320(v80, v79, &v503);
              *(v69 + 12) = 2082;
              v82 = v81;
              v3 = v491;
              *(v69 + 14) = sub_2659D9320(v82, v461, &v503);
              v72 = v78;
              v73 = v64;
              v74 = "Failed to retrieve the instance of AppEntity '%{public}s', AppIntent '%{public}s'.";
LABEL_17:
              _os_log_impl(&dword_2659CA000, v73, v72, v74, v69, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266766110](v70, -1, -1);
              MEMORY[0x266766110](v69, -1, -1);
            }
          }

          else
          {
            if (*(v0 + 2082))
            {
LABEL_110:
              v306 = *(v0 + 1840);
              v307 = *(v0 + 1832);

              goto LABEL_9;
            }

            v61 = *(v0 + 1752);
            v62 = *(v0 + 1688);
            v63 = *(v0 + 1312);

            v64 = sub_265A1EA80();
            v65 = sub_265A1EF20();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = *(v0 + 1688);
              v67 = *(v0 + 1680);
              v460 = *(v0 + 1312);
              v490 = v3;
              v68 = *(v0 + 1304);
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *&v503 = v70;
              *v69 = 136446466;
              *(v69 + 4) = sub_2659D9320(v67, v66, &v503);
              *(v69 + 12) = 2082;
              v71 = v68;
              v3 = v490;
              *(v69 + 14) = sub_2659D9320(v71, v460, &v503);
              v72 = v65;
              v73 = v64;
              v74 = "Entity Query returned unexpected type '%{public}s', AppIntent '%{public}s'.";
              goto LABEL_17;
            }
          }

          v45 = v483;
          v46 = v473;

          goto LABEL_19;
        }

        v459 = *(v0 + 1256);
        *(v0 + 1904) = v459;
        v51 = swift_allocObject();
        *(v0 + 1912) = v51;
        *(v51 + 16) = 0u;
        *(v51 + 32) = 0u;
        *(v51 + 48) = 0u;
        *(v51 + 64) = -1;
        v52 = [v49 displayRepresentation];
        *(v0 + 1920) = v52;
        if (!v52)
        {
          v484 = v45;
          sub_265A0C1E0(v51, *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), v459, v0 + 528);
          v452 = *(v0 + 544);
          v492 = *(v0 + 528);
          v83 = *(v0 + 560);
          v84 = *(v0 + 568);
          v85 = *(v0 + 576);
          v86 = CFAbsoluteTimeGetCurrent();
          *v430 = *(v0 + 577);
          *(v0 + 2071) = *(v0 + 580);
          *v434 = *(v0 + 2033);
          *(v0 + 636) = *(v0 + 2036);
          v474 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_2659E0698(0, *(v3 + 2) + 1, 1, v3);
          }

          v88 = *(v3 + 2);
          v87 = *(v3 + 3);
          if (v88 >= v87 >> 1)
          {
            v3 = sub_2659E0698((v87 > 1), v88 + 1, 1, v3);
          }

          *(v3 + 2) = v88 + 1;
          v89 = &v3[120 * v88];
          v89[32] = 2;
          v90 = *v430;
          *(v89 + 9) = *(v0 + 2071);
          *(v89 + 33) = v90;
          *(v89 + 56) = v452;
          *(v89 + 40) = v492;
          *(v89 + 9) = v83;
          *(v89 + 10) = v84;
          v89[88] = v85;
          v91 = *v434;
          *(v89 + 23) = *(v0 + 636);
          *(v89 + 89) = v91;
          *(v89 + 12) = 0x8000000000000001;
          *(v89 + 104) = 0u;
          *(v89 + 120) = 0u;
          *(v89 + 17) = 0;
          *(v89 + 18) = v86;

          v45 = v484;
          v46 = v474;
          goto LABEL_19;
        }

        v53 = [v49 exportedContent];
        if (!v53)
        {
          v92 = *(*(v0 + 1536) + 56);
          v92(*(v0 + 1520), 1, 1, *(v0 + 1528));
LABEL_45:
          *(v0 + 1928) = v92;
          sub_2659DA270(*(v0 + 1520), &qword_28002B700, &qword_265A22658);
          v99 = [v49 exportedContent];
          if (!v99)
          {
            goto LABEL_122;
          }

          v100 = v99;
          v101 = [v99 content];

          v102 = [v101 data];
          v103 = sub_265A1E780();
          v105 = v104;

          v106 = v105 >> 62;
          if ((v105 >> 62) > 1)
          {
            if (v106 != 2)
            {
              goto LABEL_120;
            }

            v107 = *(v103 + 16);
            v108 = *(v103 + 24);
          }

          else
          {
            if (!v106)
            {
              if ((v105 & 0xFF000000000000) == 0)
              {
                goto LABEL_120;
              }

LABEL_54:
              v109 = *(v0 + 1536);
              v110 = *(v0 + 1528);
              v111 = *(v0 + 1504);
              v112 = *(v0 + 1496);
              v92(v112, 1, 1, v110);
              sub_265A1E700();
              sub_265A0CB94(v103, v105);
              sub_2659DA270(v112, &qword_28002B700, &qword_265A22658);
              v493 = *(v109 + 48);
              v113 = v493(v111, 1, v110);
              v98 = (v0 + 1504);
              if (v113 == 1)
              {
                sub_2659DA270(*(v0 + 1504), &qword_28002B700, &qword_265A22658);
LABEL_122:
                v502 = *(v0 + 1760);
                v349 = *(v0 + 1488);
                v350 = *(v0 + 1440);
                v351 = *(v0 + 1432);
                v352 = *(v0 + 1424);
                v353 = *(v0 + 1416);
                *(v0 + 16) = v0;
                *(v0 + 56) = v349;
                *(v0 + 24) = sub_265A00F8C;
                swift_continuation_init();
                *(v0 + 328) = v353;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
                *(v0 + 1936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
                sub_265A1ED80();
                (*(v352 + 32))(boxed_opaque_existential_1, v351, v353);
                *(v0 + 272) = MEMORY[0x277D85DD0];
                *(v0 + 280) = 1107296256;
                *(v0 + 288) = sub_265A0C3A0;
                *(v0 + 296) = &block_descriptor_8;
                [v502 fetchEntityURL:v459 completionHandler:v0 + 272];
                (*(v352 + 8))(boxed_opaque_existential_1, v353);
                v355 = *MEMORY[0x277D85DE8];
                v356 = v0 + 16;

                return MEMORY[0x282200938](v356);
              }

              goto LABEL_55;
            }

            v107 = v103;
            v108 = v103 >> 32;
          }

          if (v107 == v108)
          {
LABEL_120:
            sub_265A0CB94(v103, v105);
            goto LABEL_122;
          }

          goto LABEL_54;
        }

        v54 = v53;
        v55 = [v53 content];

        v56 = [v55 fileURL];
        if (v56)
        {
          v57 = *(v0 + 1512);
          sub_265A1E730();

          v58 = 0;
        }

        else
        {
          v58 = 1;
        }

        v93 = *(v0 + 1536);
        v94 = *(v0 + 1528);
        v95 = *(v0 + 1520);
        v96 = *(v0 + 1512);
        v92 = *(v93 + 56);
        v92(v96, v58, 1, v94);
        sub_265A0CB24(v96, v95);
        v493 = *(v93 + 48);
        v97 = v493(v95, 1, v94);
        v98 = (v0 + 1520);
        if (v97 == 1)
        {
          goto LABEL_45;
        }

LABEL_55:
        v462 = v92;
        v114 = *(v0 + 1568);
        v115 = *(v0 + 1552);
        v116 = *(v0 + 1544);
        v117 = *(v0 + 1536);
        v118 = *(v0 + 1528);
        v119 = *(v0 + 1320);
        v443 = *(v117 + 32);
        v443(v114, *v98, v118);
        v120 = *(v117 + 16);
        v120(v115, v114, v118);
        v475 = v120;
        v120(v116, v114, v118);
        v121 = *(v119 + 16);

        if (v121)
        {
          v122 = 0;
          while (1)
          {
            v123 = *(v0 + 1544);
            v124 = *(v0 + 1528);
            v125 = *(v0 + 1464);
            v126 = *(v0 + 1536) + 48;
            v127 = *(v0 + 1320) + v122;
            v129 = *(v127 + 32);
            v128 = *(v127 + 40);

            v129(v123);

            if (v493(v125, 1, v124) != 1)
            {
              break;
            }

            sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
            v122 += 16;
            if (!--v121)
            {
              goto LABEL_59;
            }
          }

          v132 = *(v0 + 1552);
          v133 = *(v0 + 1536);
          v453 = *(v0 + 1528);
          v134 = *(v0 + 1456);
          v135 = *(v0 + 1448);
          sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
          v137 = *(v127 + 32);
          v136 = *(v127 + 40);

          v137(v132);
          v130 = *(v133 + 8);
          v130(v132, v453);

          sub_265A0CBE8(v134, v135, &qword_28002B700, &qword_265A22658);
          if (v493(v135, 1, v453) == 1)
          {
            v356 = (v130)(*(v0 + 1544), *(v0 + 1528));
            __break(1u);
            return MEMORY[0x282200938](v356);
          }

          v138 = *(v0 + 1456);
          v139 = *(v0 + 1536) + 32;
          v443(*(v0 + 1472), *(v0 + 1448), *(v0 + 1528));
          sub_2659DA270(v138, &qword_28002B700, &qword_265A22658);
          v131 = 0;
        }

        else
        {
LABEL_59:
          v130 = *(*(v0 + 1536) + 8);
          v130(*(v0 + 1552), *(v0 + 1528));
          v131 = 1;
        }

        v454 = v130;
        v140 = *(v0 + 1544);
        v141 = *(v0 + 1528);
        v142 = *(v0 + 1472);
        v143 = *(v0 + 1320);
        v144 = *(v0 + 1536) + 8;
        v462(v142, v131, 1, v141);

        v130(v140, v141);
        if (v493(v142, 1, v141) == 1)
        {
          v145 = *(v0 + 1568);
          v146 = *(v0 + 1560);
          v147 = *(v0 + 1528);
          sub_2659DA270(*(v0 + 1472), &qword_28002B700, &qword_265A22658);
          v475(v146, v145, v147);
          v148 = *(v0 + 1864);
        }

        else
        {
          v149 = *(v0 + 1912);
          v150 = *(v0 + 1904);
          v151 = *(v0 + 1864);
          v152 = *(v0 + 1688);
          v153 = *(v0 + 1680);
          v154 = *(v0 + 1312);
          v155 = *(v0 + 1536) + 32;
          v156 = *(v0 + 1304);
          v443(*(v0 + 1560), *(v0 + 1472), *(v0 + 1528));
          sub_265A0C1E0(v149, v156, v154, v153, v152, v150, v388);
          v444 = *(v0 + 824);
          v494 = *v388;
          v157 = *(v0 + 840);
          v158 = *(v0 + 848);
          v159 = *(v0 + 856);
          v160 = CFAbsoluteTimeGetCurrent();
          *v392 = *(v0 + 2054);
          *(v0 + 2043) = *(v0 + 2057);
          *v391 = *(v0 + 2061);
          *(v0 + 2050) = *(v0 + 2064);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v148 = *(v0 + 1864);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v148 = sub_2659E0698(0, *(v148 + 2) + 1, 1, *(v0 + 1864));
          }

          v163 = *(v148 + 2);
          v162 = *(v148 + 3);
          if (v163 >= v162 >> 1)
          {
            v148 = sub_2659E0698((v162 > 1), v163 + 1, 1, v148);
          }

          *(v148 + 2) = v163 + 1;
          v164 = &v148[120 * v163];
          v164[32] = 1;
          v165 = *v392;
          *(v164 + 9) = *(v0 + 2043);
          *(v164 + 33) = v165;
          *(v164 + 56) = v444;
          *(v164 + 40) = v494;
          *(v164 + 9) = v157;
          *(v164 + 10) = v158;
          v164[88] = v159;
          v166 = *v391;
          *(v164 + 23) = *(v0 + 2050);
          *(v164 + 89) = v166;
          *(v164 + 6) = xmmword_265A22600;
          *(v164 + 7) = 0u;
          *(v164 + 8) = 0u;
          *(v164 + 18) = v160;
        }

        v167 = [*(v0 + 1920) image];
        if (v167 && (v168 = v167, sub_265A1110C(v0 + 1096), v168, *(v0 + 1104)))
        {
          v445 = *(v0 + 1104);
          v424 = *(v0 + 1096);
          v420 = *(v0 + 1112);
        }

        else
        {
          v169 = *(v0 + 1560);
          sub_265A1CF6C(v0 + 1128);
          if (!*(v0 + 1136))
          {
            v232 = *(v0 + 1904);
            v233 = *(v0 + 1752);
            v234 = *(v0 + 1312);
            v235 = *(v0 + 1328);

            v236 = v232;
            v237 = sub_265A1EA80();
            v238 = sub_265A1EF30();

            if (os_log_type_enabled(v237, v238))
            {
              v476 = *(v0 + 1904);
              v239 = *(v0 + 1328);
              v497 = *(v0 + 1312);
              v486 = *(v0 + 1304);
              v240 = swift_slowAlloc();
              v241 = swift_slowAlloc();
              v242 = swift_slowAlloc();
              *&v503 = v242;
              *v240 = 136446979;
              v243 = [v239 identifier];
              v244 = v148;
              v245 = sub_265A1EBA0();
              v247 = v246;

              v248 = v245;
              v148 = v244;
              v249 = sub_2659D9320(v248, v247, &v503);

              *(v240 + 4) = v249;
              *(v240 + 12) = 2160;
              *(v240 + 14) = 1752392040;
              *(v240 + 22) = 2113;
              v250 = [v476 identifier];
              *(v240 + 24) = v250;
              *v241 = v250;
              *(v240 + 32) = 2082;
              *(v240 + 34) = sub_2659D9320(v486, v497, &v503);
              _os_log_impl(&dword_2659CA000, v237, v238, "Could not resolve Icon for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v240, 0x2Au);
              sub_2659DA270(v241, &qword_28002B678, &unk_265A21AC0);
              MEMORY[0x266766110](v241, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x266766110](v242, -1, -1);
              MEMORY[0x266766110](v240, -1, -1);
            }

            sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v0 + 640);
            v487 = *(v0 + 656);
            v498 = *(v0 + 640);
            v251 = *(v0 + 672);
            v252 = *(v0 + 680);
            v253 = *(v0 + 688);
            v254 = CFAbsoluteTimeGetCurrent();
            *v387 = *(v0 + 1114);
            *(v0 + 804) = *(v0 + 1117);
            *v386 = *(v0 + 1121);
            *(v0 + 860) = *(v0 + 1124);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v148 = sub_2659E0698(0, *(v148 + 2) + 1, 1, v148);
            }

            v255 = v148;
            v256 = *(v148 + 2);
            v257 = v255;
            v258 = *(v255 + 3);
            v447 = v252;
            v426 = v253;
            if (v256 >= v258 >> 1)
            {
              v257 = sub_2659E0698((v258 > 1), v256 + 1, 1, v257);
            }

            v259 = *(v0 + 1920);
            v260 = *(v0 + 1912);
            v261 = *(v0 + 1888);
            v262 = *(v0 + 1568);
            v263 = *(v0 + 1560);
            v264 = *(v0 + 1528);

            v454(v263, v264);
            v454(v262, v264);
            *(v257 + 2) = v256 + 1;
            v265 = &v257[120 * v256];
            v3 = v257;
            v265[32] = 2;
            v266 = *v387;
            *(v265 + 9) = *(v0 + 804);
            *(v265 + 33) = v266;
            *(v265 + 56) = v487;
            *(v265 + 40) = v498;
            *(v265 + 9) = v251;
            *(v265 + 10) = v447;
            v265[88] = v426;
            v267 = *v386;
            *(v265 + 23) = *(v0 + 860);
            *(v265 + 89) = v267;
            *(v265 + 6) = xmmword_265A22620;
            *(v265 + 7) = 0u;
            *(v265 + 8) = 0u;
            *(v265 + 18) = v254;

            v46 = *(v0 + 1880);
            v45 = *(v0 + 1872);
            goto LABEL_19;
          }

          v445 = *(v0 + 1136);
          v424 = *(v0 + 1128);
          v420 = *(v0 + 1144);
          sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v385);
          v416 = *(v0 + 600);
          v495 = *v385;
          v170 = *(v0 + 616);
          v171 = *(v0 + 624);
          v172 = *(v0 + 632);
          v173 = CFAbsoluteTimeGetCurrent();
          *v390 = *(v0 + 1991);
          *(v0 + 1156) = *(v0 + 1994);
          *v389 = *(v0 + 1998);
          *(v0 + 1987) = *(v0 + 2001);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = sub_2659E0698(0, *(v148 + 2) + 1, 1, v148);
          }

          v175 = *(v148 + 2);
          v174 = *(v148 + 3);
          if (v175 >= v174 >> 1)
          {
            v148 = sub_2659E0698((v174 > 1), v175 + 1, 1, v148);
          }

          *(v148 + 2) = v175 + 1;
          v176 = &v148[120 * v175];
          v176[32] = 1;
          v177 = *v390;
          *(v176 + 9) = *(v0 + 1156);
          *(v176 + 33) = v177;
          *(v176 + 56) = v416;
          *(v176 + 40) = v495;
          *(v176 + 9) = v170;
          *(v176 + 10) = v171;
          v176[88] = v172;
          v178 = *v389;
          *(v176 + 23) = *(v0 + 1987);
          *(v176 + 89) = v178;
          *(v176 + 6) = xmmword_265A22610;
          *(v176 + 7) = 0u;
          *(v176 + 8) = 0u;
          *(v176 + 18) = v173;
        }

        v179 = [*(v0 + 1920) subtitle];
        if (v179)
        {
          v180 = v179;
          v181 = [v179 localizedStringResource];
          if (!v181)
          {
            goto LABEL_119;
          }

          v182 = v181;
          v183 = *(v0 + 1408);
          *(v0 + 952) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
          *(v0 + 928) = v182;
          v184 = v182;
          sub_265A1E6A0();

          v185 = 0;
        }

        else
        {
          v185 = 1;
        }

        v186 = *(v0 + 1920);
        v187 = *(v0 + 1904);
        v188 = *(*(v0 + 1344) + 56);
        (v188)(*(v0 + 1408), v185, 1, *(v0 + 1336));
        v189 = [v187 identifier];
        v190 = [v189 instanceIdentifier];

        v191 = sub_265A1EBA0();
        v417 = v192;

        v193 = [v186 title];
        v194 = [v193 localizedStringResource];
        if (!v194)
        {
LABEL_119:
          result = sub_265A1F1C0();
          v348 = *MEMORY[0x277D85DE8];
          return result;
        }

        v195 = v194;
        v496 = v148;
        v196 = *(v0 + 1920);
        v197 = *(v0 + 1408);
        v198 = *(v0 + 1400);
        v199 = *(v0 + 1352);
        v200 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
        *(v0 + 888) = v200;
        *(v0 + 864) = v195;
        v201 = v195;
        sub_265A1E6A0();

        sub_265A0CBE8(v197, v198, &qword_28002B6F0, &qword_265A21110);
        v202 = [v196 synonyms];
        if (v202)
        {
          v203 = v202;
          sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
          sub_265A1ECC0();

          v204 = sub_265A0C54C();
        }

        else
        {
          v204 = MEMORY[0x277D84F90];
        }

        v205 = [*(v0 + 1920) descriptionText];
        v412 = v191;
        v414 = v188;
        v410 = v204;
        if (v205)
        {
          v206 = v205;
          v207 = [v205 localizedStringResource];
          if (!v207)
          {
            goto LABEL_119;
          }

          v208 = *(v0 + 1392);
          *(v0 + 920) = v200;
          *(v0 + 896) = v207;
          v209 = v207;
          sub_265A1E6A0();
        }

        v210 = *(v0 + 1560);
        v211 = *(v0 + 1528);
        v404 = *(v0 + 1400);
        v400 = *(v0 + 1688);
        v402 = *(v0 + 1392);
        v212 = *(v0 + 1384);
        v406 = *(v0 + 1376);
        v408 = *(v0 + 1880);
        v213 = *(v0 + 1360);
        v396 = *(v0 + 1680);
        v398 = *(v0 + 1352);
        v214 = *(v0 + 1344);
        v215 = *(v0 + 1336);
        v216 = *(v0 + 1312);
        v394 = *(v0 + 1304);
        v414();
        v475(&v212[v213[11]], v210, v211);
        v217 = v213[8];
        (v414)(&v212[v217], 1, 1, v215);
        v218 = v213[10];
        (v414)(&v212[v218], 1, 1, v215);
        *v212 = v394;
        *(v212 + 1) = v216;
        *(v212 + 2) = v396;
        *(v212 + 3) = v400;
        *(v212 + 4) = v412;
        *(v212 + 5) = v417;
        (*(v214 + 32))(&v212[v213[7]], v398, v215);

        sub_2659D9AD0(v404, &v212[v217]);
        *&v212[v213[9]] = v410;
        sub_2659D9AD0(v402, &v212[v218]);
        v219 = &v212[v213[12]];
        *v219 = v424;
        *(v219 + 1) = v445;
        v219[16] = v420 & 1;
        v219[17] = HIBYTE(v420) & 1;
        sub_2659DE470(v212, v406);
        v220 = swift_isUniquelyReferenced_nonNull_native();
        v221 = *(v0 + 1880);
        if ((v220 & 1) == 0)
        {
          v221 = sub_2659E0670(0, v221[2] + 1, 1, v221);
        }

        v223 = v221[2];
        v222 = v221[3];
        if (v223 >= v222 >> 1)
        {
          v485 = sub_2659E0670(v222 > 1, v223 + 1, 1, v221);
        }

        else
        {
          v485 = v221;
        }

        v446 = *(v0 + 1912);
        v224 = *(v0 + 1904);
        v225 = *(v0 + 1888);
        v226 = *(v0 + 1568);
        v227 = *(v0 + 1560);
        v228 = *(v0 + 1528);
        v229 = *(v0 + 1408);
        v425 = *(v0 + 1384);
        v230 = *(v0 + 1376);
        v231 = *(v0 + 1368);

        sub_2659DA270(v229, &qword_28002B6F0, &qword_265A21110);
        v454(v227, v228);
        v454(v226, v228);
        v45 = v485;
        *(v485 + 16) = v223 + 1;
        sub_265A0CC50(v230, v485 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v223);
        sub_2659DCF64(v425);

        v46 = v485;
        v3 = v496;
LABEL_19:
        v44 = *(v0 + 1896);
        if (v44 == *(v0 + 1856))
        {
          goto LABEL_129;
        }
      }

      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      v357 = sub_265A1F1E0();
      *(v0 + 1856) = v357;
    }

    while (v357);
  }

  v45 = MEMORY[0x277D84F90];
LABEL_129:
  v500 = v3;
  v358 = *(v0 + 1840);
  v359 = *(v0 + 1752);
  v360 = *(v0 + 1312);

  v361 = sub_265A1EA80();
  v362 = sub_265A1EF30();

  v363 = os_log_type_enabled(v361, v362);
  v364 = *(v0 + 1832);
  v365 = *(v0 + 1760);
  v470 = *(v0 + 1744);
  v366 = *(v0 + 1736);
  v481 = *(v0 + 1704);
  v367 = *(v0 + 1648);
  v368 = *(v0 + 1632);
  v369 = *(v0 + 1624);
  v483 = v45;
  if (v363)
  {
    v465 = *(v0 + 1648);
    v370 = *(v0 + 1312);
    v457 = *(v0 + 1624);
    v371 = *(v0 + 1304);
    v450 = *(v0 + 1712);
    v441 = *(v0 + 1832);
    v372 = swift_slowAlloc();
    v437 = v366;
    v373 = swift_slowAlloc();
    *&v503 = v373;
    *v372 = 136446466;
    *(v372 + 4) = sub_2659D9320(v371, v370, &v503);
    *(v372 + 12) = 2050;
    *(v372 + 14) = *(v45 + 16);

    _os_log_impl(&dword_2659CA000, v361, v362, "…finished processing Link Entity Instances for AppIntent '%{public}s', retrieved %{public}ld items.", v372, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v373);
    MEMORY[0x266766110](v373, -1, -1);
    MEMORY[0x266766110](v372, -1, -1);

    (*(v368 + 8))(v465, v457);
  }

  else
  {

    (*(v368 + 8))(v367, v369);
  }

LABEL_132:
  v374 = *(v0 + 1696);
  v375 = *(v0 + 1688);
  v376 = *(v0 + 1680);
  v377 = *(v0 + 1672);
  v378 = *(v0 + 1648);
  v379 = *(v0 + 1640);
  v393 = *(v0 + 1616);
  v395 = *(v0 + 1592);
  v397 = *(v0 + 1568);
  v399 = *(v0 + 1560);
  v401 = *(v0 + 1552);
  v403 = *(v0 + 1544);
  v405 = *(v0 + 1520);
  v407 = *(v0 + 1512);
  v409 = *(v0 + 1504);
  v411 = *(v0 + 1496);
  v413 = *(v0 + 1488);
  v415 = *(v0 + 1480);
  v419 = *(v0 + 1472);
  v423 = *(v0 + 1464);
  v429 = *(v0 + 1456);
  v433 = *(v0 + 1448);
  v438 = *(v0 + 1432);
  v442 = *(v0 + 1408);
  v451 = *(v0 + 1400);
  v458 = *(v0 + 1392);
  v466 = *(v0 + 1384);
  v471 = *(v0 + 1376);
  v482 = *(v0 + 1352);
  v380 = *(v0 + 1312);
  v381 = *(v0 + 1304);
  v382 = *(v0 + 1296);

  *v382 = v381;
  v382[1] = v380;
  v382[2] = v376;
  v382[3] = v375;
  v382[4] = v483;
  v382[5] = v500;

  v383 = *(v0 + 8);
  v384 = *MEMORY[0x277D85DE8];

  return v383();
}

uint64_t sub_265A07A4C()
{
  v161 = v0;
  v160 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 1280);
  v2 = *(v0 + 1976);
  v3 = *(v0 + 1968);
  v4 = *(v0 + 1952);
  swift_willThrow();

  v5 = *(v0 + 1976);
  v6 = *(v0 + 1960);
  *(v0 + 1248) = v5;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = *v1;
  v9 = [*v1 domain];
  v10 = sub_265A1EBA0();
  v12 = v11;

  v13 = *MEMORY[0x277D23A98];
  if (v10 == sub_265A1EBA0() && v12 == v14)
  {
  }

  else
  {
    v16 = sub_265A1F340();

    if ((v16 & 1) == 0)
    {

LABEL_8:
      v17 = *(v0 + 1752);
      v18 = *(v0 + 1688);
      v19 = *(v0 + 1312);

      v20 = v5;
      v21 = sub_265A1EA80();
      v22 = sub_265A1EF20();

      v151 = v5;
      if (os_log_type_enabled(v21, v22))
      {
        v23 = *(v0 + 1688);
        v24 = *(v0 + 1680);
        v146 = *(v0 + 1312);
        v25 = *(v0 + 1304);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v155 = v28;
        *v26 = 136446722;
        *(v26 + 4) = sub_2659D9320(v24, v23, &v155);
        *(v26 + 12) = 2082;
        *(v26 + 14) = sub_2659D9320(v25, v146, &v155);
        *(v26 + 22) = 2114;
        v29 = v151;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 24) = v30;
        *v27 = v30;
        _os_log_impl(&dword_2659CA000, v21, v22, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v26, 0x20u);
        sub_2659DA270(v27, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v27, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v28, -1, -1);
        MEMORY[0x266766110](v26, -1, -1);
      }

      v31 = *(v0 + 1696);
      v32 = *(v0 + 1688);
      v33 = *(v0 + 1680);
      v34 = *(v0 + 1312);
      v35 = *(v0 + 1304);
      v36 = sub_265A1E680();
      sub_265A0BFD4(v31, v35, v34, v33, v32, &v155);
      v143 = v156;
      v147 = v155;
      v137 = v158;
      v140 = v157;
      v134 = v159;
      v37 = [v36 domain];
      v38 = sub_265A1EBA0();
      v128 = v39;
      v131 = v38;

      v125 = v36;
      v122 = [v36 code];
      swift_getErrorValue();
      v40 = *(v0 + 1024);
      v41 = *(v0 + 1032);
      v42 = *(v0 + 1040);
      v43 = sub_265A1F380();
      v117 = v44;
      v119 = v43;
      Current = CFAbsoluteTimeGetCurrent();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2659E0698(0, *(v6 + 2) + 1, 1, v6);
      }

      v47 = *(v6 + 2);
      v46 = *(v6 + 3);
      if (v47 >= v46 >> 1)
      {
        v48 = sub_2659E0698((v46 > 1), v47 + 1, 1, v6);
      }

      else
      {
        v48 = v6;
      }

      v49 = *(v0 + 1760);
      v50 = *(v0 + 1744);
      v51 = *(v0 + 1712);
      v52 = *(v0 + 1704);
      v53 = *(v0 + 1648);
      v54 = *(v0 + 1632);
      v55 = *(v0 + 1624);

      (*(v54 + 8))(v53, v55);
      *(v48 + 2) = v47 + 1;
      v56 = &v48[120 * v47];
      v56[32] = 2;
      *(v56 + 56) = v143;
      *(v56 + 40) = v147;
      *(v56 + 9) = v140;
      *(v56 + 10) = v137;
      v56[88] = v134;
      *(v56 + 12) = 2;
      *(v56 + 13) = v131;
      *(v56 + 14) = v128;
      *(v56 + 15) = v122;
      *(v56 + 16) = v119;
      *(v56 + 17) = v117;
      *(v56 + 18) = Current;
      goto LABEL_23;
    }
  }

  v152 = v6;
  v57 = *(v0 + 1752);
  v58 = *(v0 + 1688);
  v59 = *(v0 + 1312);

  v60 = v8;
  v61 = sub_265A1EA80();
  v62 = sub_265A1EF30();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 1688);
    v64 = *(v0 + 1680);
    v148 = *(v0 + 1312);
    v65 = *(v0 + 1304);
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v155 = v68;
    *v66 = 136446722;
    *(v66 + 4) = sub_2659D9320(v64, v63, &v155);
    *(v66 + 12) = 2082;
    *(v66 + 14) = sub_2659D9320(v65, v148, &v155);
    *(v66 + 22) = 2114;
    *(v66 + 24) = v60;
    *v67 = v60;
    v69 = v60;
    _os_log_impl(&dword_2659CA000, v61, v62, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v66, 0x20u);
    sub_2659DA270(v67, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v67, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266766110](v68, -1, -1);
    MEMORY[0x266766110](v66, -1, -1);
  }

  v70 = *(v0 + 1696);
  v71 = *(v0 + 1688);
  v72 = *(v0 + 1680);
  v73 = *(v0 + 1312);
  v74 = *(v0 + 1304);
  v75 = v60;
  sub_265A0BFD4(v70, v74, v73, v72, v71, &v155);
  v144 = v156;
  v149 = v155;
  v138 = v158;
  v141 = v157;
  v135 = v159;
  v76 = [v75 domain];
  v77 = sub_265A1EBA0();
  v129 = v78;
  v132 = v77;

  v126 = [v75 code];
  v79 = [v75 localizedDescription];

  v80 = sub_265A1EBA0();
  v120 = v81;
  v123 = v80;

  v82 = CFAbsoluteTimeGetCurrent();
  v83 = v152;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v83 = sub_2659E0698(0, *(v152 + 2) + 1, 1, v152);
  }

  v85 = *(v83 + 2);
  v84 = *(v83 + 3);
  if (v85 >= v84 >> 1)
  {
    v153 = sub_2659E0698((v84 > 1), v85 + 1, 1, v83);
  }

  else
  {
    v153 = v83;
  }

  v86 = *(v0 + 1760);
  v87 = *(v0 + 1744);
  v88 = *(v0 + 1712);
  v89 = *(v0 + 1704);
  v90 = *(v0 + 1648);
  v91 = *(v0 + 1632);
  v92 = *(v0 + 1624);

  (*(v91 + 8))(v90, v92);
  v48 = v153;
  *(v153 + 2) = v85 + 1;
  v93 = &v153[120 * v85];
  v93[32] = 0;
  *(v93 + 56) = v144;
  *(v93 + 40) = v149;
  *(v93 + 9) = v141;
  *(v93 + 10) = v138;
  v93[88] = v135;
  *(v93 + 12) = 2;
  *(v93 + 13) = v132;
  *(v93 + 14) = v129;
  *(v93 + 15) = v126;
  *(v93 + 16) = v123;
  *(v93 + 17) = v120;
  *(v93 + 18) = v82;

LABEL_23:
  v94 = *(v0 + 1696);
  v95 = *(v0 + 1688);
  v96 = *(v0 + 1680);
  v97 = *(v0 + 1672);
  v98 = *(v0 + 1648);
  v105 = *(v0 + 1640);
  v106 = *(v0 + 1616);
  v107 = *(v0 + 1592);
  v108 = *(v0 + 1568);
  v109 = *(v0 + 1560);
  v110 = *(v0 + 1552);
  v111 = *(v0 + 1544);
  v112 = *(v0 + 1520);
  v113 = *(v0 + 1512);
  v114 = *(v0 + 1504);
  v115 = *(v0 + 1496);
  v116 = *(v0 + 1488);
  v118 = *(v0 + 1480);
  v121 = *(v0 + 1472);
  v124 = *(v0 + 1464);
  v127 = *(v0 + 1456);
  v130 = *(v0 + 1448);
  v133 = *(v0 + 1432);
  v136 = *(v0 + 1408);
  v139 = *(v0 + 1400);
  v142 = *(v0 + 1392);
  v145 = *(v0 + 1384);
  v150 = *(v0 + 1376);
  v154 = *(v0 + 1352);
  v99 = *(v0 + 1312);
  v100 = *(v0 + 1304);
  v101 = *(v0 + 1296);

  *v101 = v100;
  v101[1] = v99;
  v101[2] = v96;
  v101[3] = v95;
  v101[4] = MEMORY[0x277D84F90];
  v101[5] = v48;

  v102 = *(v0 + 8);
  v103 = *MEMORY[0x277D85DE8];

  return v102();
}

uint64_t sub_265A08488()
{
  v158 = v0;
  v157 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 1280);
  v2 = *(v0 + 1824);
  swift_willThrow();
  v3 = *(v0 + 1824);
  *(v0 + 1248) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *v1;
  v6 = [*v1 domain];
  v7 = sub_265A1EBA0();
  v9 = v8;

  v10 = *MEMORY[0x277D23A98];
  if (v7 == sub_265A1EBA0() && v9 == v11)
  {
  }

  else
  {
    v13 = sub_265A1F340();

    if ((v13 & 1) == 0)
    {

LABEL_8:
      v14 = *(v0 + 1752);
      v15 = *(v0 + 1688);
      v16 = *(v0 + 1312);

      v17 = v3;
      v18 = sub_265A1EA80();
      v19 = sub_265A1EF20();

      v148 = v3;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 1688);
        v21 = *(v0 + 1680);
        v144 = *(v0 + 1312);
        v22 = *(v0 + 1304);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v152 = v25;
        *v23 = 136446722;
        *(v23 + 4) = sub_2659D9320(v21, v20, &v152);
        *(v23 + 12) = 2082;
        *(v23 + 14) = sub_2659D9320(v22, v144, &v152);
        *(v23 + 22) = 2114;
        v26 = v148;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 24) = v27;
        *v24 = v27;
        _os_log_impl(&dword_2659CA000, v18, v19, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v23, 0x20u);
        sub_2659DA270(v24, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v24, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v25, -1, -1);
        MEMORY[0x266766110](v23, -1, -1);
      }

      v28 = *(v0 + 1696);
      v29 = *(v0 + 1688);
      v30 = *(v0 + 1680);
      v31 = *(v0 + 1312);
      v32 = *(v0 + 1304);
      v33 = sub_265A1E680();
      sub_265A0BFD4(v28, v32, v31, v30, v29, &v152);
      v141 = v153;
      v145 = v152;
      v135 = v155;
      v138 = v154;
      v132 = v156;
      v34 = [v33 domain];
      v35 = sub_265A1EBA0();
      v126 = v36;
      v129 = v35;

      v123 = v33;
      v120 = [v33 code];
      swift_getErrorValue();
      v37 = *(v0 + 1024);
      v38 = *(v0 + 1032);
      v39 = *(v0 + 1040);
      v40 = sub_265A1F380();
      v115 = v41;
      v117 = v40;
      Current = CFAbsoluteTimeGetCurrent();
      v43 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_2659E0698(0, *(v43 + 2) + 1, 1, v43);
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_2659E0698((v44 > 1), v45 + 1, 1, v43);
      }

      v46 = *(v0 + 1760);
      v47 = *(v0 + 1744);
      v48 = *(v0 + 1712);
      v49 = *(v0 + 1704);
      v50 = *(v0 + 1648);
      v51 = *(v0 + 1632);
      v52 = *(v0 + 1624);

      (*(v51 + 8))(v50, v52);
      v53 = v43;
      *(v43 + 2) = v45 + 1;
      v54 = &v43[120 * v45];
      v54[32] = 2;
      *(v54 + 56) = v141;
      *(v54 + 40) = v145;
      *(v54 + 9) = v138;
      *(v54 + 10) = v135;
      v54[88] = v132;
      *(v54 + 12) = 2;
      *(v54 + 13) = v129;
      *(v54 + 14) = v126;
      *(v54 + 15) = v120;
      *(v54 + 16) = v117;
      *(v54 + 17) = v115;
      *(v54 + 18) = Current;
      goto LABEL_23;
    }
  }

  v55 = *(v0 + 1752);
  v56 = *(v0 + 1688);
  v57 = *(v0 + 1312);

  v58 = v5;
  v59 = sub_265A1EA80();
  v60 = sub_265A1EF30();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = *(v0 + 1688);
    v62 = *(v0 + 1680);
    v149 = *(v0 + 1312);
    v63 = *(v0 + 1304);
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v152 = v66;
    *v64 = 136446722;
    *(v64 + 4) = sub_2659D9320(v62, v61, &v152);
    *(v64 + 12) = 2082;
    *(v64 + 14) = sub_2659D9320(v63, v149, &v152);
    *(v64 + 22) = 2114;
    *(v64 + 24) = v58;
    *v65 = v58;
    v67 = v58;
    _os_log_impl(&dword_2659CA000, v59, v60, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v64, 0x20u);
    sub_2659DA270(v65, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v65, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266766110](v66, -1, -1);
    MEMORY[0x266766110](v64, -1, -1);
  }

  v68 = *(v0 + 1696);
  v69 = *(v0 + 1688);
  v70 = *(v0 + 1680);
  v71 = *(v0 + 1312);
  v72 = *(v0 + 1304);
  v73 = v58;
  sub_265A0BFD4(v68, v72, v71, v70, v69, &v152);
  v142 = v153;
  v146 = v152;
  v136 = v155;
  v139 = v154;
  v133 = v156;
  v74 = [v73 domain];
  v75 = sub_265A1EBA0();
  v127 = v76;
  v130 = v75;

  v124 = [v73 code];
  v77 = [v73 localizedDescription];

  v78 = sub_265A1EBA0();
  v118 = v79;
  v121 = v78;

  v80 = CFAbsoluteTimeGetCurrent();
  v81 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v81 = sub_2659E0698(0, *(v81 + 2) + 1, 1, v81);
  }

  v83 = *(v81 + 2);
  v82 = *(v81 + 3);
  if (v83 >= v82 >> 1)
  {
    v150 = sub_2659E0698((v82 > 1), v83 + 1, 1, v81);
  }

  else
  {
    v150 = v81;
  }

  v84 = *(v0 + 1760);
  v85 = *(v0 + 1744);
  v86 = *(v0 + 1712);
  v87 = *(v0 + 1704);
  v88 = *(v0 + 1648);
  v89 = *(v0 + 1632);
  v90 = *(v0 + 1624);

  (*(v89 + 8))(v88, v90);
  v53 = v150;
  *(v150 + 2) = v83 + 1;
  v91 = &v150[120 * v83];
  v91[32] = 0;
  *(v91 + 56) = v142;
  *(v91 + 40) = v146;
  *(v91 + 9) = v139;
  *(v91 + 10) = v136;
  v91[88] = v133;
  *(v91 + 12) = 2;
  *(v91 + 13) = v130;
  *(v91 + 14) = v127;
  *(v91 + 15) = v124;
  *(v91 + 16) = v121;
  *(v91 + 17) = v118;
  *(v91 + 18) = v80;

LABEL_23:
  v92 = *(v0 + 1696);
  v93 = *(v0 + 1688);
  v94 = *(v0 + 1680);
  v95 = *(v0 + 1672);
  v96 = *(v0 + 1648);
  v103 = *(v0 + 1640);
  v104 = *(v0 + 1616);
  v105 = *(v0 + 1592);
  v106 = *(v0 + 1568);
  v107 = *(v0 + 1560);
  v108 = *(v0 + 1552);
  v109 = *(v0 + 1544);
  v110 = *(v0 + 1520);
  v111 = *(v0 + 1512);
  v112 = *(v0 + 1504);
  v113 = *(v0 + 1496);
  v114 = *(v0 + 1488);
  v116 = *(v0 + 1480);
  v119 = *(v0 + 1472);
  v122 = *(v0 + 1464);
  v125 = *(v0 + 1456);
  v128 = *(v0 + 1448);
  v131 = *(v0 + 1432);
  v134 = *(v0 + 1408);
  v137 = *(v0 + 1400);
  v140 = *(v0 + 1392);
  v143 = *(v0 + 1384);
  v147 = *(v0 + 1376);
  v151 = *(v0 + 1352);
  v97 = *(v0 + 1312);
  v98 = *(v0 + 1304);
  v99 = *(v0 + 1296);

  *v99 = v98;
  v99[1] = v97;
  v99[2] = v94;
  v99[3] = v93;
  v99[4] = MEMORY[0x277D84F90];
  v99[5] = v53;

  v100 = *(v0 + 8);
  v101 = *MEMORY[0x277D85DE8];

  return v100();
}

uint64_t sub_265A08EAC()
{
  v567 = v0;
  v566 = *MEMORY[0x277D85DE8];
  v495 = (v0 + 528);
  v1 = *(v0 + 1944);
  v2 = *(v0 + 1936);
  swift_willThrow();
  *(v0 + 1208) = v1;
  v543 = v1;
  v3 = v1;
  if (swift_dynamicCast() && *(v0 + 2083) == 2)
  {
    v4 = *(v0 + 1912);
    v526 = *(v0 + 1904);
    v557 = *(v0 + 1864);
    v5 = *(v0 + 1688);
    v6 = *(v0 + 1680);
    v7 = *(v0 + 1312);
    v8 = *(v0 + 1304);

    sub_265A0C1E0(v4, v8, v7, v6, v5, v526, v0 + 696);
    v527 = *(v0 + 712);
    v544 = *(v0 + 696);
    v9 = *(v0 + 728);
    v10 = *(v0 + 736);
    LOBYTE(v5) = *(v0 + 744);
    Current = CFAbsoluteTimeGetCurrent();
    *(v0 + 1146) = *(v0 + 689);
    *(v0 + 1149) = *(v0 + 692);
    *(v0 + 745) = *(v0 + 2075);
    *(v0 + 748) = *(v0 + 2078);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v558 = *(v0 + 1864);
    v517 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v558 = sub_2659E0698(0, *(v558 + 2) + 1, 1, v558);
    }

    v14 = *(v558 + 2);
    v13 = *(v558 + 3);
    v15 = v10;
    v16 = v9;
    if (v14 >= v13 >> 1)
    {
      v558 = sub_2659E0698((v13 > 1), v14 + 1, 1, v558);
    }

    v17 = *(v0 + 1904);
    v511 = *(v0 + 1752);
    v18 = *(v0 + 1688);
    v19 = *(v0 + 1312);
    *(v558 + 2) = v14 + 1;
    v20 = &v558[120 * v14];
    v20[32] = 2;
    v21 = *(v0 + 1146);
    *(v20 + 9) = *(v0 + 1149);
    *(v20 + 33) = v21;
    *(v20 + 56) = v527;
    *(v20 + 40) = v544;
    *(v20 + 9) = v16;
    *(v20 + 10) = v15;
    v20[88] = v517;
    v22 = *(v0 + 745);
    *(v20 + 23) = *(v0 + 748);
    *(v20 + 89) = v22;
    *(v20 + 12) = 0x8000000000000003;
    *(v20 + 104) = 0u;
    *(v20 + 120) = 0u;
    *(v20 + 17) = 0;
    *(v20 + 18) = Current;

    v23 = v17;
    v24 = sub_265A1EA80();
    v25 = sub_265A1EF20();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 1920);
    v28 = *(v0 + 1912);
    v29 = *(v0 + 1904);
    v30 = *(v0 + 1888);
    if (v26)
    {
      v545 = *(v0 + 1888);
      v31 = *(v0 + 1688);
      v32 = *(v0 + 1680);
      v512 = *(v0 + 1304);
      v518 = *(v0 + 1312);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v561 = v35;
      *v33 = 136446979;
      *(v33 + 4) = sub_2659D9320(v32, v31, &v561);
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2113;
      v36 = [v29 identifier];
      *(v33 + 24) = v36;
      *v34 = v36;
      *(v33 + 32) = 2082;
      *(v33 + 34) = sub_2659D9320(v512, v518, &v561);
      _os_log_impl(&dword_2659CA000, v24, v25, "Could not export URL for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v33, 0x2Au);
      sub_2659DA270(v34, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v34, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v35, -1, -1);
      MEMORY[0x266766110](v33, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v519 = (v0 + 2019);
    v528 = (v0 + 2026);
    v37 = *(v0 + 1904);
    v38 = *(v0 + 1752);
    v39 = *(v0 + 1688);
    v40 = *(v0 + 1312);

    v41 = v37;
    v42 = sub_265A1EA80();
    v43 = sub_265A1EF20();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 1904);
      v45 = *(v0 + 1688);
      v46 = *(v0 + 1680);
      v47 = *(v0 + 1312);
      v505 = *(v0 + 1304);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v561 = v50;
      *v48 = 136446979;
      *(v48 + 4) = sub_2659D9320(v46, v45, &v561);
      *(v48 + 12) = 2160;
      *(v48 + 14) = 1752392040;
      *(v48 + 22) = 2113;
      v51 = [v44 identifier];
      *(v48 + 24) = v51;
      *v49 = v51;
      *(v48 + 32) = 2082;
      *(v48 + 34) = sub_2659D9320(v505, v47, &v561);
      _os_log_impl(&dword_2659CA000, v42, v43, "Error when fetching AppEntity URL via IPC '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v48, 0x2Au);
      sub_2659DA270(v49, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v49, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v50, -1, -1);
      MEMORY[0x266766110](v48, -1, -1);
    }

    v52 = *(v0 + 1912);
    v53 = *(v0 + 1904);
    v54 = *(v0 + 1864);
    v55 = *(v0 + 1688);
    v56 = *(v0 + 1680);
    v57 = *(v0 + 1312);
    v58 = *(v0 + 1304);
    v59 = sub_265A1E680();
    sub_265A0C1E0(v52, v58, v57, v56, v55, v53, v0 + 752);
    v500 = *(v0 + 768);
    v506 = *(v0 + 752);
    v485 = *(v0 + 792);
    v490 = *(v0 + 784);
    v481 = *(v0 + 800);
    v60 = [v59 domain];
    v61 = sub_265A1EBA0();
    v475 = v62;
    v479 = v61;

    v63 = [v59 code];
    swift_getErrorValue();
    v64 = *(v0 + 1072);
    v65 = *(v0 + 1080);
    v66 = *(v0 + 1088);
    v67 = sub_265A1F380();
    v69 = v68;
    v70 = CFAbsoluteTimeGetCurrent();
    *v519 = *(v0 + 2012);
    *(v0 + 2022) = *(v0 + 2015);
    *v528 = *(v0 + 2005);
    *(v0 + 2029) = *(v0 + 2008);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v558 = *(v0 + 1864);
    if ((v71 & 1) == 0)
    {
      v558 = sub_2659E0698(0, *(v558 + 2) + 1, 1, v558);
    }

    v73 = *(v558 + 2);
    v72 = *(v558 + 3);
    if (v73 >= v72 >> 1)
    {
      v558 = sub_2659E0698((v72 > 1), v73 + 1, 1, v558);
    }

    v74 = *(v0 + 1912);
    v75 = *(v0 + 1904);
    v76 = *(v0 + 1888);

    *(v558 + 2) = v73 + 1;
    v77 = &v558[120 * v73];
    v77[32] = 2;
    v78 = *v519;
    *(v77 + 9) = *(v0 + 2022);
    *(v77 + 33) = v78;
    *(v77 + 56) = v500;
    *(v77 + 40) = v506;
    *(v77 + 9) = v490;
    *(v77 + 10) = v485;
    v77[88] = v481;
    v79 = *v528;
    *(v77 + 23) = *(v0 + 2029);
    *(v77 + 89) = v79;
    *(v77 + 12) = 3;
    *(v77 + 13) = v479;
    *(v77 + 14) = v475;
    *(v77 + 15) = v63;
    *(v77 + 16) = v67;
    *(v77 + 17) = v69;
    *(v77 + 18) = v70;
  }

  v80 = *(v0 + 1872);
  v81 = *(v0 + 1896);
  if (v81 == *(v0 + 1856))
  {
    goto LABEL_18;
  }

  v457 = (v0 + 584);
  v465 = (v0 + 808);
  v98 = (v0 + 1280);
  v491 = (v0 + 633);
  v458 = (v0 + 857);
  v460 = (v0 + 801);
  v469 = (v0 + 1984);
  v471 = (v0 + 1153);
  v473 = (v0 + 2047);
  v476 = (v0 + 2040);
  v486 = (v0 + 2068);
  v530 = *(v0 + 1880);
  while (2)
  {
    v520 = v80;
    while (1)
    {
      while (1)
      {
        *(v0 + 1880) = v530;
        *(v0 + 1872) = v80;
        *(v0 + 1864) = v558;
        v99 = *(v0 + 1848);
        if ((v99 & 0xC000000000000001) != 0)
        {
          v100 = MEMORY[0x2667656F0](v81, *(v0 + 1840));
        }

        else
        {
          if (v81 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_136;
          }

          v100 = *(*(v0 + 1840) + 8 * v81 + 32);
        }

        v101 = v100;
        *(v0 + 1888) = v100;
        *(v0 + 1896) = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v102 = [v100 value];
        sub_265A1F000();
        swift_unknownObjectRelease();
        sub_2659F3D98(0, &qword_28156A808, 0x277D237F0);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_265A0CAD0();
        v103 = swift_allocError();
        *v104 = 1;
        swift_willThrow();
        *(v0 + 1232) = v103;
        v105 = v103;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
        if (!swift_dynamicCast())
        {
          goto LABEL_112;
        }

        if (*(v0 + 2082) != 1)
        {
          if (!*(v0 + 2082))
          {
            v547 = v101;
            v106 = *(v0 + 1752);
            v107 = *(v0 + 1688);
            v108 = *(v0 + 1312);

            v109 = sub_265A1EA80();
            v110 = sub_265A1EF20();

            if (os_log_type_enabled(v109, v110))
            {
              v111 = *(v0 + 1688);
              v112 = *(v0 + 1680);
              v113 = *(v0 + 1312);
              v114 = *(v0 + 1304);
              v115 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              *&v561 = v116;
              *v115 = 136446466;
              v117 = v112;
              v80 = v520;
              *(v115 + 4) = sub_2659D9320(v117, v111, &v561);
              *(v115 + 12) = 2082;
              *(v115 + 14) = sub_2659D9320(v114, v113, &v561);
              _os_log_impl(&dword_2659CA000, v109, v110, "Entity Query returned unexpected type '%{public}s', AppIntent '%{public}s'.", v115, 0x16u);
              swift_arrayDestroy();
              v118 = v116;
              v98 = (v0 + 1280);
              MEMORY[0x266766110](v118, -1, -1);
              MEMORY[0x266766110](v115, -1, -1);
            }

            goto LABEL_23;
          }

LABEL_112:
          v324 = *(v0 + 1840);
          v325 = *(v0 + 1832);

          *(v0 + 1248) = v103;
          v326 = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
          sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
          if (swift_dynamicCast())
          {
            v327 = *v98;
            v328 = [*v98 domain];
            v329 = sub_265A1EBA0();
            v331 = v330;

            v332 = *MEMORY[0x277D23A98];
            if (v329 == sub_265A1EBA0() && v331 == v333)
            {

LABEL_117:
              v335 = *(v0 + 1752);
              v336 = *(v0 + 1688);
              v337 = *(v0 + 1312);

              v338 = v327;
              v339 = sub_265A1EA80();
              v340 = sub_265A1EF30();

              if (os_log_type_enabled(v339, v340))
              {
                v341 = *(v0 + 1688);
                v342 = *(v0 + 1680);
                v552 = *(v0 + 1312);
                v343 = *(v0 + 1304);
                v344 = swift_slowAlloc();
                v345 = swift_slowAlloc();
                v346 = swift_slowAlloc();
                *&v561 = v346;
                *v344 = 136446722;
                *(v344 + 4) = sub_2659D9320(v342, v341, &v561);
                *(v344 + 12) = 2082;
                *(v344 + 14) = sub_2659D9320(v343, v552, &v561);
                *(v344 + 22) = 2114;
                *(v344 + 24) = v338;
                *v345 = v338;
                v347 = v338;
                _os_log_impl(&dword_2659CA000, v339, v340, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v344, 0x20u);
                sub_2659DA270(v345, &qword_28002B678, &unk_265A21AC0);
                MEMORY[0x266766110](v345, -1, -1);
                swift_arrayDestroy();
                MEMORY[0x266766110](v346, -1, -1);
                MEMORY[0x266766110](v344, -1, -1);
              }

              v348 = *(v0 + 1696);
              v349 = *(v0 + 1688);
              v350 = *(v0 + 1680);
              v351 = *(v0 + 1312);
              v352 = *(v0 + 1304);
              v353 = v338;
              sub_265A0BFD4(v348, v352, v351, v350, v349, &v561);
              v539 = v562;
              v553 = v561;
              v535 = v563;
              v514 = v564;
              v508 = v565;
              v354 = [v353 domain];
              v355 = sub_265A1EBA0();
              v497 = v356;
              v502 = v355;

              v492 = [v353 code];
              v357 = [v353 localizedDescription];

              v358 = sub_265A1EBA0();
              v482 = v359;
              v487 = v358;

              v360 = CFAbsoluteTimeGetCurrent();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v558 = sub_2659E0698(0, *(v558 + 2) + 1, 1, v558);
              }

              v362 = *(v558 + 2);
              v361 = *(v558 + 3);
              if (v362 >= v361 >> 1)
              {
                v558 = sub_2659E0698((v361 > 1), v362 + 1, 1, v558);
              }

              v363 = *(v0 + 1760);
              v364 = *(v0 + 1744);
              v365 = *(v0 + 1712);
              v366 = *(v0 + 1704);
              v367 = *(v0 + 1648);
              v368 = *(v0 + 1632);
              v369 = *(v0 + 1624);

              (*(v368 + 8))(v367, v369);
              *(v558 + 2) = v362 + 1;
              v370 = &v558[120 * v362];
              v370[32] = 0;
              *(v370 + 56) = v539;
              *(v370 + 40) = v553;
              *(v370 + 9) = v535;
              *(v370 + 10) = v514;
              v370[88] = v508;
              *(v370 + 12) = 2;
              *(v370 + 13) = v502;
              *(v370 + 14) = v497;
              *(v370 + 15) = v492;
              *(v370 + 16) = v487;
              *(v370 + 17) = v482;
              *(v370 + 18) = v360;

              goto LABEL_132;
            }

            v334 = sub_265A1F340();

            if (v334)
            {
              goto LABEL_117;
            }
          }

          v371 = *(v0 + 1752);
          v372 = *(v0 + 1688);
          v373 = *(v0 + 1312);

          v374 = v103;
          v375 = sub_265A1EA80();
          v376 = sub_265A1EF20();

          if (os_log_type_enabled(v375, v376))
          {
            v377 = *(v0 + 1688);
            v378 = *(v0 + 1680);
            v554 = *(v0 + 1312);
            v379 = *(v0 + 1304);
            v380 = swift_slowAlloc();
            v381 = swift_slowAlloc();
            v382 = swift_slowAlloc();
            *&v561 = v382;
            *v380 = 136446722;
            *(v380 + 4) = sub_2659D9320(v378, v377, &v561);
            *(v380 + 12) = 2082;
            *(v380 + 14) = sub_2659D9320(v379, v554, &v561);
            *(v380 + 22) = 2114;
            v383 = v103;
            v384 = _swift_stdlib_bridgeErrorToNSError();
            *(v380 + 24) = v384;
            *v381 = v384;
            _os_log_impl(&dword_2659CA000, v375, v376, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v380, 0x20u);
            sub_2659DA270(v381, &qword_28002B678, &unk_265A21AC0);
            MEMORY[0x266766110](v381, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x266766110](v382, -1, -1);
            MEMORY[0x266766110](v380, -1, -1);
          }

          v385 = *(v0 + 1696);
          v386 = *(v0 + 1688);
          v387 = *(v0 + 1680);
          v388 = *(v0 + 1312);
          v389 = *(v0 + 1304);
          v390 = sub_265A1E680();
          sub_265A0BFD4(v385, v389, v388, v387, v386, &v561);
          v540 = v562;
          v555 = v561;
          v391 = v563;
          v392 = v564;
          LOBYTE(v388) = v565;
          v393 = [v390 domain];
          v394 = sub_265A1EBA0();
          v396 = v395;

          v397 = [v390 code];
          swift_getErrorValue();
          v398 = *(v0 + 1024);
          v399 = *(v0 + 1032);
          v400 = *(v0 + 1040);
          v401 = sub_265A1F380();
          v483 = v402;
          v403 = CFAbsoluteTimeGetCurrent();
          v509 = v388;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v558 = sub_2659E0698(0, *(v558 + 2) + 1, 1, v558);
          }

          v405 = *(v558 + 2);
          v404 = *(v558 + 3);
          v536 = v391;
          v515 = v392;
          v498 = v396;
          v503 = v394;
          v488 = v401;
          v493 = v397;
          if (v405 >= v404 >> 1)
          {
            v558 = sub_2659E0698((v404 > 1), v405 + 1, 1, v558);
          }

          v406 = *(v0 + 1760);
          v407 = *(v0 + 1744);
          v408 = *(v0 + 1712);
          v409 = *(v0 + 1704);
          v477 = *(v0 + 1648);
          v410 = *(v0 + 1632);
          v411 = *(v0 + 1624);

          (*(v410 + 8))(v477, v411);
          *(v558 + 2) = v405 + 1;
          v412 = &v558[120 * v405];
          v412[32] = 2;
          *(v412 + 56) = v540;
          *(v412 + 40) = v555;
          *(v412 + 9) = v536;
          *(v412 + 10) = v515;
          v412[88] = v509;
          *(v412 + 12) = 2;
          *(v412 + 13) = v503;
          *(v412 + 14) = v498;
          *(v412 + 15) = v493;
          *(v412 + 16) = v488;
          *(v412 + 17) = v483;
          *(v412 + 18) = v403;
          goto LABEL_132;
        }

        v119 = *(v0 + 1752);
        v120 = *(v0 + 1688);
        v121 = *(v0 + 1312);

        v122 = sub_265A1EA80();
        v123 = sub_265A1EF20();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = *(v0 + 1688);
          v125 = *(v0 + 1680);
          v126 = *(v0 + 1312);
          v127 = *(v0 + 1304);
          v548 = v101;
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          *&v561 = v129;
          *v128 = 136446466;
          *(v128 + 4) = sub_2659D9320(v125, v124, &v561);
          *(v128 + 12) = 2082;
          *(v128 + 14) = sub_2659D9320(v127, v126, &v561);
          _os_log_impl(&dword_2659CA000, v122, v123, "Failed to retrieve the instance of AppEntity '%{public}s', AppIntent '%{public}s'.", v128, 0x16u);
          swift_arrayDestroy();
          v130 = v129;
          v98 = (v0 + 1280);
          MEMORY[0x266766110](v130, -1, -1);
          MEMORY[0x266766110](v128, -1, -1);
        }

        else
        {
        }

        v80 = v520;
LABEL_23:

        v81 = *(v0 + 1896);
        if (v81 == *(v0 + 1856))
        {
          goto LABEL_18;
        }
      }

      v131 = *(v0 + 1256);
      *(v0 + 1904) = v131;
      v132 = swift_allocObject();
      *(v0 + 1912) = v132;
      *(v132 + 16) = 0u;
      *(v132 + 32) = 0u;
      *(v132 + 48) = 0u;
      *(v132 + 64) = -1;
      v133 = [v101 displayRepresentation];
      *(v0 + 1920) = v133;
      if (v133)
      {
        break;
      }

      sub_265A0C1E0(v132, *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), v131, v495);
      v455 = *(v0 + 544);
      v549 = *v495;
      v134 = *(v0 + 560);
      v135 = *(v0 + 568);
      v136 = *(v0 + 576);
      v137 = CFAbsoluteTimeGetCurrent();
      *v486 = *(v0 + 577);
      *(v0 + 2071) = *(v0 + 580);
      *v491 = *(v0 + 2033);
      *(v0 + 636) = *(v0 + 2036);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v558 = sub_2659E0698(0, *(v558 + 2) + 1, 1, v558);
      }

      v139 = *(v558 + 2);
      v138 = *(v558 + 3);
      if (v139 >= v138 >> 1)
      {
        v558 = sub_2659E0698((v138 > 1), v139 + 1, 1, v558);
      }

      *(v558 + 2) = v139 + 1;
      v140 = &v558[120 * v139];
      v140[32] = 2;
      v141 = *v486;
      *(v140 + 9) = *(v0 + 2071);
      *(v140 + 33) = v141;
      *(v140 + 56) = v455;
      *(v140 + 40) = v549;
      *(v140 + 9) = v134;
      *(v140 + 10) = v135;
      v140[88] = v136;
      v142 = *v491;
      *(v140 + 23) = *(v0 + 636);
      *(v140 + 89) = v142;
      *(v140 + 12) = 0x8000000000000001;
      *(v140 + 104) = 0u;
      *(v140 + 120) = 0u;
      *(v140 + 17) = 0;
      *(v140 + 18) = v137;

      v81 = *(v0 + 1896);
      v80 = v520;
      if (v81 == *(v0 + 1856))
      {
        goto LABEL_18;
      }
    }

    v143 = [v101 exportedContent];
    if (!v143)
    {
      v150 = *(*(v0 + 1536) + 56);
      v150(*(v0 + 1520), 1, 1, *(v0 + 1528));
      goto LABEL_52;
    }

    v144 = v143;
    v145 = [v143 content];

    v146 = [v145 fileURL];
    v147 = v101;
    if (v146)
    {
      v148 = *(v0 + 1512);
      sub_265A1E730();

      v149 = 0;
    }

    else
    {
      v149 = 1;
    }

    v151 = *(v0 + 1536);
    v152 = *(v0 + 1528);
    v153 = *(v0 + 1520);
    v154 = *(v0 + 1512);
    v150 = *(v151 + 56);
    v150(v154, v149, 1, v152);
    sub_265A0CB24(v154, v153);
    v559 = *(v151 + 48);
    v155 = v559(v153, 1, v152);
    v156 = (v0 + 1520);
    v101 = v147;
    if (v155 != 1)
    {
      goto LABEL_62;
    }

LABEL_52:
    *(v0 + 1928) = v150;
    sub_2659DA270(*(v0 + 1520), &qword_28002B700, &qword_265A22658);
    v157 = [v101 exportedContent];
    if (!v157)
    {
LABEL_140:
      v560 = *(v0 + 1760);
      v426 = *(v0 + 1488);
      v542 = *(v0 + 1440);
      v427 = *(v0 + 1432);
      v428 = *(v0 + 1424);
      v429 = *(v0 + 1416);
      *(v0 + 16) = v0;
      *(v0 + 56) = v426;
      *(v0 + 24) = sub_265A00F8C;
      swift_continuation_init();
      *(v0 + 328) = v429;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
      *(v0 + 1936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
      sub_265A1ED80();
      (*(v428 + 32))(boxed_opaque_existential_1, v427, v429);
      *(v0 + 272) = MEMORY[0x277D85DD0];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_265A0C3A0;
      *(v0 + 296) = &block_descriptor_8;
      [v560 fetchEntityURL:v131 completionHandler:v0 + 272];
      (*(v428 + 8))(boxed_opaque_existential_1, v429);
      v431 = *MEMORY[0x277D85DE8];
      v432 = v0 + 16;

      return MEMORY[0x282200938](v432);
    }

    v158 = v157;
    v159 = [v157 content];

    v160 = [v159 data];
    v161 = sub_265A1E780();
    v163 = v162;

    v164 = v163 >> 62;
    if ((v163 >> 62) > 1)
    {
      if (v164 != 2)
      {
        goto LABEL_138;
      }

      v165 = *(v161 + 16);
      v166 = *(v161 + 24);
LABEL_60:
      if (v165 == v166)
      {
        goto LABEL_138;
      }

      goto LABEL_61;
    }

    if (v164)
    {
      v165 = v161;
      v166 = v161 >> 32;
      goto LABEL_60;
    }

    if ((v163 & 0xFF000000000000) == 0)
    {
LABEL_138:
      sub_265A0CB94(v161, v163);
      goto LABEL_140;
    }

LABEL_61:
    v167 = *(v0 + 1536);
    v168 = *(v0 + 1528);
    v169 = *(v0 + 1504);
    v170 = *(v0 + 1496);
    v150(v170, 1, 1, v168);
    sub_265A1E700();
    sub_265A0CB94(v161, v163);
    sub_2659DA270(v170, &qword_28002B700, &qword_265A22658);
    v559 = *(v167 + 48);
    v171 = v559(v169, 1, v168);
    v156 = (v0 + 1504);
    if (v171 == 1)
    {
      sub_2659DA270(*(v0 + 1504), &qword_28002B700, &qword_265A22658);
      goto LABEL_140;
    }

LABEL_62:
    v521 = v150;
    v172 = *(v0 + 1568);
    v173 = *(v0 + 1552);
    v174 = *(v0 + 1544);
    v175 = *(v0 + 1536);
    v176 = *(v0 + 1528);
    v177 = *(v0 + 1320);
    v449 = *(v175 + 32);
    v449(v172, *v156, v176);
    v178 = *(v175 + 16);
    v178(v173, v172, v176);
    v531 = v178;
    v178(v174, v172, v176);
    v179 = *(v177 + 16);

    if (!v179)
    {
LABEL_66:
      v188 = *(*(v0 + 1536) + 8);
      v188(*(v0 + 1552), *(v0 + 1528));
      v189 = 1;
      goto LABEL_69;
    }

    v180 = 0;
    while (1)
    {
      v181 = *(v0 + 1544);
      v182 = *(v0 + 1528);
      v183 = *(v0 + 1464);
      v184 = *(v0 + 1536) + 48;
      v185 = *(v0 + 1320) + v180;
      v186 = *(v185 + 32);
      v187 = *(v185 + 40);

      v186(v181);

      if (v559(v183, 1, v182) != 1)
      {
        break;
      }

      sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
      v180 += 16;
      if (!--v179)
      {
        goto LABEL_66;
      }
    }

    v190 = *(v0 + 1552);
    v191 = *(v0 + 1536);
    v456 = *(v0 + 1528);
    v192 = *(v0 + 1456);
    v193 = *(v0 + 1448);
    sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
    v195 = *(v185 + 32);
    v194 = *(v185 + 40);

    v195(v190);
    v196 = v190;
    v197 = *(v191 + 8);
    v197(v196, v456);

    sub_265A0CBE8(v192, v193, &qword_28002B700, &qword_265A22658);
    if (v559(v193, 1, v456) == 1)
    {
      v432 = (v197)(*(v0 + 1544), *(v0 + 1528));
      __break(1u);
      return MEMORY[0x282200938](v432);
    }

    v198 = *(v0 + 1456);
    v199 = *(v0 + 1536) + 32;
    v449(*(v0 + 1472), *(v0 + 1448), *(v0 + 1528));
    sub_2659DA270(v198, &qword_28002B700, &qword_265A22658);
    v189 = 0;
    v188 = v197;
LABEL_69:
    v200 = *(v0 + 1544);
    v201 = *(v0 + 1528);
    v202 = *(v0 + 1472);
    v203 = *(v0 + 1320);
    v204 = *(v0 + 1536) + 8;
    v521(v202, v189, 1, v201);

    v188(v200, v201);
    if (v559(v202, 1, v201) == 1)
    {
      v205 = *(v0 + 1568);
      v206 = *(v0 + 1560);
      v207 = *(v0 + 1528);
      sub_2659DA270(*(v0 + 1472), &qword_28002B700, &qword_265A22658);
      v531(v206, v205, v207);
      v558 = *(v0 + 1864);
    }

    else
    {
      v208 = v188;
      v209 = *(v0 + 1912);
      v210 = *(v0 + 1904);
      v211 = *(v0 + 1864);
      v212 = *(v0 + 1688);
      v213 = *(v0 + 1680);
      v214 = *(v0 + 1312);
      v215 = *(v0 + 1536) + 32;
      v216 = *(v0 + 1304);
      v449(*(v0 + 1560), *(v0 + 1472), *(v0 + 1528));
      sub_265A0C1E0(v209, v216, v214, v213, v212, v210, v465);
      v450 = *(v0 + 824);
      v522 = *v465;
      v217 = *(v0 + 840);
      v218 = *(v0 + 848);
      v219 = *(v0 + 856);
      v220 = CFAbsoluteTimeGetCurrent();
      *v476 = *(v0 + 2054);
      *(v0 + 2043) = *(v0 + 2057);
      *v473 = *(v0 + 2061);
      *(v0 + 2050) = *(v0 + 2064);
      v221 = swift_isUniquelyReferenced_nonNull_native();
      v558 = *(v0 + 1864);
      if ((v221 & 1) == 0)
      {
        v558 = sub_2659E0698(0, *(v558 + 2) + 1, 1, v558);
      }

      v223 = *(v558 + 2);
      v222 = *(v558 + 3);
      if (v223 >= v222 >> 1)
      {
        v558 = sub_2659E0698((v222 > 1), v223 + 1, 1, v558);
      }

      *(v558 + 2) = v223 + 1;
      v224 = &v558[120 * v223];
      v224[32] = 1;
      v225 = *v476;
      *(v224 + 9) = *(v0 + 2043);
      *(v224 + 33) = v225;
      *(v224 + 56) = v450;
      *(v224 + 40) = v522;
      *(v224 + 9) = v217;
      *(v224 + 10) = v218;
      v224[88] = v219;
      v226 = *v473;
      *(v224 + 23) = *(v0 + 2050);
      *(v224 + 89) = v226;
      *(v224 + 6) = xmmword_265A22600;
      *(v224 + 7) = 0u;
      *(v224 + 8) = 0u;
      *(v224 + 18) = v220;
      v188 = v208;
    }

    v227 = [*(v0 + 1920) image];
    if (v227)
    {
      v228 = v227;
      sub_265A1110C(v0 + 1096);

      v229 = *(v0 + 1104);
      if (v229)
      {
        v523 = *(v0 + 1096);
        v446 = *(v0 + 1112);
        goto LABEL_85;
      }
    }

    v230 = *(v0 + 1560);
    sub_265A1CF6C(v0 + 1128);
    v229 = *(v0 + 1136);
    if (v229)
    {
      v523 = *(v0 + 1128);
      v446 = *(v0 + 1144);
      sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v457);
      v444 = *(v0 + 600);
      v451 = *v457;
      v231 = *(v0 + 616);
      v232 = *(v0 + 624);
      v233 = *(v0 + 632);
      v234 = CFAbsoluteTimeGetCurrent();
      *v471 = *(v0 + 1991);
      *(v0 + 1156) = *(v0 + 1994);
      *v469 = *(v0 + 1998);
      *(v0 + 1987) = *(v0 + 2001);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v558 = sub_2659E0698(0, *(v558 + 2) + 1, 1, v558);
      }

      v236 = *(v558 + 2);
      v235 = *(v558 + 3);
      if (v236 >= v235 >> 1)
      {
        v558 = sub_2659E0698((v235 > 1), v236 + 1, 1, v558);
      }

      *(v558 + 2) = v236 + 1;
      v237 = &v558[120 * v236];
      v237[32] = 1;
      v238 = *v471;
      *(v237 + 9) = *(v0 + 1156);
      *(v237 + 33) = v238;
      *(v237 + 56) = v444;
      *(v237 + 40) = v451;
      *(v237 + 9) = v231;
      *(v237 + 10) = v232;
      v237[88] = v233;
      v239 = *v469;
      *(v237 + 23) = *(v0 + 1987);
      *(v237 + 89) = v239;
      *(v237 + 6) = xmmword_265A22610;
      *(v237 + 7) = 0u;
      *(v237 + 8) = 0u;
      *(v237 + 18) = v234;
LABEL_85:
      v452 = v188;
      v240 = [*(v0 + 1920) subtitle];
      if (v240)
      {
        v241 = v240;
        v242 = [v240 localizedStringResource];
        if (v242)
        {
          v243 = v242;
          v244 = *(v0 + 1408);
          *(v0 + 952) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
          *(v0 + 928) = v243;
          v245 = v243;
          sub_265A1E6A0();

          v246 = 0;
          goto LABEL_89;
        }

        goto LABEL_137;
      }

      v246 = 1;
LABEL_89:
      v247 = *(v0 + 1920);
      v248 = *(v0 + 1904);
      v249 = *(*(v0 + 1344) + 56);
      (v249)(*(v0 + 1408), v246, 1, *(v0 + 1336));
      v250 = [v248 identifier];
      v251 = [v250 instanceIdentifier];

      v252 = sub_265A1EBA0();
      v445 = v253;

      v254 = [v247 title];
      v255 = [v254 localizedStringResource];
      if (!v255)
      {
LABEL_137:
        result = sub_265A1F1C0();
        v425 = *MEMORY[0x277D85DE8];
        return result;
      }

      v256 = v255;
      v442 = *(v0 + 1920);
      v257 = *(v0 + 1408);
      v258 = *(v0 + 1400);
      v259 = *(v0 + 1352);
      v260 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
      *(v0 + 888) = v260;
      *(v0 + 864) = v256;
      v261 = v256;
      sub_265A1E6A0();

      sub_265A0CBE8(v257, v258, &qword_28002B6F0, &qword_265A21110);
      v262 = [v442 synonyms];
      if (v262)
      {
        v263 = v262;
        sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
        sub_265A1ECC0();

        v264 = sub_265A0C54C();
      }

      else
      {
        v264 = MEMORY[0x277D84F90];
      }

      v265 = [*(v0 + 1920) descriptionText];
      v441 = v252;
      v443 = v264;
      if (v265)
      {
        v266 = v265;
        v267 = [v265 localizedStringResource];
        if (!v267)
        {
          goto LABEL_137;
        }

        v268 = *(v0 + 1392);
        *(v0 + 920) = v260;
        *(v0 + 896) = v267;
        v269 = v267;
        sub_265A1E6A0();
      }

      v270 = *(v0 + 1560);
      v271 = *(v0 + 1528);
      v438 = *(v0 + 1400);
      v436 = *(v0 + 1688);
      v437 = *(v0 + 1392);
      v272 = *(v0 + 1384);
      v439 = *(v0 + 1376);
      v440 = *(v0 + 1880);
      v273 = *(v0 + 1360);
      v434 = *(v0 + 1680);
      v435 = *(v0 + 1352);
      v274 = *(v0 + 1344);
      v275 = *(v0 + 1336);
      v276 = *(v0 + 1312);
      v433 = *(v0 + 1304);
      v249();
      v531(&v272[v273[11]], v270, v271);
      v277 = v273[8];
      (v249)(&v272[v277], 1, 1, v275);
      v278 = v273[10];
      (v249)(&v272[v278], 1, 1, v275);
      *v272 = v433;
      *(v272 + 1) = v276;
      *(v272 + 2) = v434;
      *(v272 + 3) = v436;
      *(v272 + 4) = v441;
      *(v272 + 5) = v445;
      (*(v274 + 32))(&v272[v273[7]], v435, v275);

      sub_2659D9AD0(v438, &v272[v277]);
      *&v272[v273[9]] = v443;
      sub_2659D9AD0(v437, &v272[v278]);
      v279 = &v272[v273[12]];
      *v279 = v523;
      *(v279 + 1) = v229;
      v279[16] = v446 & 1;
      v279[17] = HIBYTE(v446) & 1;
      sub_2659DE470(v272, v439);
      v280 = swift_isUniquelyReferenced_nonNull_native();
      v281 = *(v0 + 1880);
      if ((v280 & 1) == 0)
      {
        v281 = sub_2659E0670(0, v281[2] + 1, 1, v281);
      }

      v283 = v281[2];
      v282 = v281[3];
      if (v283 >= v282 >> 1)
      {
        v524 = sub_2659E0670(v282 > 1, v283 + 1, 1, v281);
      }

      else
      {
        v524 = v281;
      }

      v532 = *(v0 + 1912);
      v284 = *(v0 + 1904);
      v285 = *(v0 + 1888);
      v286 = *(v0 + 1568);
      v287 = *(v0 + 1560);
      v288 = *(v0 + 1528);
      v289 = *(v0 + 1408);
      v447 = *(v0 + 1384);
      v290 = *(v0 + 1376);
      v291 = *(v0 + 1368);

      sub_2659DA270(v289, &qword_28002B6F0, &qword_265A21110);
      v452(v287, v288);
      v452(v286, v288);
      v80 = v524;
      *(v524 + 16) = v283 + 1;
      sub_265A0CC50(v290, v524 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + *(v291 + 72) * v283);
      sub_2659DCF64(v447);

      v530 = v524;
    }

    else
    {
      v292 = *(v0 + 1904);
      v293 = *(v0 + 1752);
      v294 = *(v0 + 1312);
      v295 = *(v0 + 1328);

      v296 = v292;
      v297 = sub_265A1EA80();
      v298 = sub_265A1EF30();

      if (os_log_type_enabled(v297, v298))
      {
        v525 = *(v0 + 1904);
        v299 = *(v0 + 1328);
        v550 = *(v0 + 1312);
        v533 = *(v0 + 1304);
        v300 = swift_slowAlloc();
        v453 = swift_slowAlloc();
        v301 = swift_slowAlloc();
        *&v561 = v301;
        *v300 = 136446979;
        v302 = [v299 identifier];
        v303 = sub_265A1EBA0();
        v305 = v304;

        v306 = sub_2659D9320(v303, v305, &v561);

        *(v300 + 4) = v306;
        *(v300 + 12) = 2160;
        *(v300 + 14) = 1752392040;
        *(v300 + 22) = 2113;
        v307 = [v525 identifier];
        *(v300 + 24) = v307;
        *v453 = v307;
        *(v300 + 32) = 2082;
        *(v300 + 34) = sub_2659D9320(v533, v550, &v561);
        _os_log_impl(&dword_2659CA000, v297, v298, "Could not resolve Icon for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v300, 0x2Au);
        sub_2659DA270(v453, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v453, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v301, -1, -1);
        MEMORY[0x266766110](v300, -1, -1);
      }

      sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v0 + 640);
      v534 = *(v0 + 656);
      v551 = *(v0 + 640);
      v308 = *(v0 + 672);
      v309 = *(v0 + 680);
      v310 = *(v0 + 688);
      v311 = CFAbsoluteTimeGetCurrent();
      *v460 = *(v0 + 1114);
      *(v0 + 804) = *(v0 + 1117);
      *v458 = *(v0 + 1121);
      *(v0 + 860) = *(v0 + 1124);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v558 = sub_2659E0698(0, *(v558 + 2) + 1, 1, v558);
      }

      v313 = *(v558 + 2);
      v312 = *(v558 + 3);
      v454 = v309;
      v448 = v310;
      v314 = v188;
      if (v313 >= v312 >> 1)
      {
        v558 = sub_2659E0698((v312 > 1), v313 + 1, 1, v558);
      }

      v315 = *(v0 + 1920);
      v316 = *(v0 + 1912);
      v317 = *(v0 + 1888);
      v318 = *(v0 + 1568);
      v319 = *(v0 + 1560);
      v320 = *(v0 + 1528);

      v314(v319, v320);
      v314(v318, v320);
      *(v558 + 2) = v313 + 1;
      v321 = &v558[120 * v313];
      v321[32] = 2;
      v322 = *v460;
      *(v321 + 9) = *(v0 + 804);
      *(v321 + 33) = v322;
      *(v321 + 56) = v534;
      *(v321 + 40) = v551;
      *(v321 + 9) = v308;
      *(v321 + 10) = v454;
      v321[88] = v448;
      v323 = *v458;
      *(v321 + 23) = *(v0 + 860);
      *(v321 + 89) = v323;
      *(v321 + 6) = xmmword_265A22620;
      *(v321 + 7) = 0u;
      *(v321 + 8) = 0u;
      *(v321 + 18) = v311;

      v530 = *(v0 + 1880);
      v80 = *(v0 + 1872);
    }

    v81 = *(v0 + 1896);
    v98 = (v0 + 1280);
    if (v81 != *(v0 + 1856))
    {
      continue;
    }

    break;
  }

LABEL_18:
  v82 = *(v0 + 1840);
  v83 = *(v0 + 1752);
  v84 = *(v0 + 1312);

  v85 = sub_265A1EA80();
  v86 = sub_265A1EF30();

  v87 = os_log_type_enabled(v85, v86);
  v88 = *(v0 + 1832);
  v89 = *(v0 + 1760);
  v538 = *(v0 + 1744);
  v90 = *(v0 + 1736);
  v546 = *(v0 + 1704);
  v91 = *(v0 + 1648);
  v92 = *(v0 + 1632);
  v93 = *(v0 + 1624);
  v520 = v80;
  if (v87)
  {
    v513 = *(v0 + 1648);
    v94 = *(v0 + 1312);
    v529 = *(v0 + 1624);
    v95 = *(v0 + 1304);
    v507 = *(v0 + 1712);
    v501 = *(v0 + 1832);
    v96 = swift_slowAlloc();
    v496 = v90;
    v97 = swift_slowAlloc();
    *&v561 = v97;
    *v96 = 136446466;
    *(v96 + 4) = sub_2659D9320(v95, v94, &v561);
    *(v96 + 12) = 2050;
    *(v96 + 14) = *(v80 + 16);

    _os_log_impl(&dword_2659CA000, v85, v86, "…finished processing Link Entity Instances for AppIntent '%{public}s', retrieved %{public}ld items.", v96, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v97);
    MEMORY[0x266766110](v97, -1, -1);
    MEMORY[0x266766110](v96, -1, -1);

    (*(v92 + 8))(v513, v529);
  }

  else
  {

    (*(v92 + 8))(v91, v93);
  }

LABEL_132:
  v413 = *(v0 + 1696);
  v414 = *(v0 + 1688);
  v415 = *(v0 + 1680);
  v416 = *(v0 + 1672);
  v417 = *(v0 + 1648);
  v418 = *(v0 + 1640);
  v459 = *(v0 + 1616);
  v461 = *(v0 + 1592);
  v462 = *(v0 + 1568);
  v463 = *(v0 + 1560);
  v464 = *(v0 + 1552);
  v466 = *(v0 + 1544);
  v467 = *(v0 + 1520);
  v468 = *(v0 + 1512);
  v470 = *(v0 + 1504);
  v472 = *(v0 + 1496);
  v474 = *(v0 + 1488);
  v478 = *(v0 + 1480);
  v480 = *(v0 + 1472);
  v484 = *(v0 + 1464);
  v489 = *(v0 + 1456);
  v494 = *(v0 + 1448);
  v499 = *(v0 + 1432);
  v504 = *(v0 + 1408);
  v510 = *(v0 + 1400);
  v516 = *(v0 + 1392);
  v537 = *(v0 + 1384);
  v541 = *(v0 + 1376);
  v556 = *(v0 + 1352);
  v419 = *(v0 + 1312);
  v420 = *(v0 + 1304);
  v421 = *(v0 + 1296);

  *v421 = v420;
  v421[1] = v419;
  v421[2] = v415;
  v421[3] = v414;
  v421[4] = v520;
  v421[5] = v558;

  v422 = *(v0 + 8);
  v423 = *MEMORY[0x277D85DE8];

  return v422();
}