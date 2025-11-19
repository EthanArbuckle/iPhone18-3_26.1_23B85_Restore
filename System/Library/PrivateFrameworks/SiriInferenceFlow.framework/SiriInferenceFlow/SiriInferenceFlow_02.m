uint64_t sub_222DAF558()
{
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_24_3();
  v5 = v4;
  OUTLINED_FUNCTION_19_3();
  *v6 = v5;
  v8 = *(v7 + 2000);
  v9 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v10 = v9;
  v5[251] = v0;

  v11 = v5[249];
  if (v0)
  {
    v12 = v5[246];
  }

  else
  {

    v5[252] = v3;
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_222DAF684()
{
  v55 = v0;
  sub_222DBE6A0(v0[252]);
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v7 = v0[246];
  if (!v2)
  {
    v19 = v0[246];

    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v20 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v20, qword_27D04C940);
    v21 = sub_222DDB3C0();
    v22 = sub_222DDB6C0();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_16;
    }

    v23 = OUTLINED_FUNCTION_43_0();
    *v23 = 0;
    v24 = "localized value not found: could not find localized value for primary button label";
    goto LABEL_15;
  }

  v8 = sub_222DA02E8(0x65676E616863, 0xE600000000000000, v7);
  v10 = v9;

  if (!v10)
  {

    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v25 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v25, qword_27D04C940);
    v21 = sub_222DDB3C0();
    v22 = sub_222DDB6C0();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_16;
    }

    v23 = OUTLINED_FUNCTION_43_0();
    *v23 = 0;
    v24 = "localized value not found: could not find localized value for label 'change'";
LABEL_15:
    _os_log_impl(&dword_222D8A000, v21, v22, v24, v23, 2u);
    OUTLINED_FUNCTION_48_2();
LABEL_16:

    sub_222D95EDC();
    v26 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_53_1(v26, v27);
    sub_222DB128C((v0 + 2));
    OUTLINED_FUNCTION_82();

    OUTLINED_FUNCTION_29_1();
    goto LABEL_25;
  }

  v11 = v0[248];
  v12 = *v11;
  v50 = v11[3];
  v51 = v11[1];
  v13 = v11[4];
  v52 = v11[2];
  v53 = v8;

  sub_222DCE24C(v54);
  v48 = v54[1];
  v49 = v54[0];
  v46 = v54[3];
  v47 = v54[2];
  v44 = v54[5];
  v45 = v54[4];
  if (sub_222DDAEE0())
  {
    v14 = v0[242];
    sub_222DDAE60();

    v15 = sub_222DDB240();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
    v17 = v0[242];
    if (EnumTagSinglePayload != 1)
    {
      v18 = sub_222DDB220();
      v43 = v29;
      OUTLINED_FUNCTION_28_2(v15);
      (*(v30 + 8))(v17, v15);
      goto LABEL_18;
    }

    sub_222DA8300(v0[242], &qword_27D0479C0, &qword_222DDE100);
  }

  v18 = 0;
  v43 = 0xE000000000000000;
LABEL_18:
  v31 = v12;
  if (sub_222DDAEE0())
  {
    v42 = v4;
    v32 = v13;
    v33 = v18;
    v34 = v0[241];
    sub_222DDAE70();

    v35 = sub_222DDB240();
    v36 = __swift_getEnumTagSinglePayload(v34, 1, v35);
    v31 = v0[241];
    if (v36 == 1)
    {
      sub_222DA8300(v0[241], &qword_27D0479C0, &qword_222DDE100);
      v37 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      v37 = sub_222DDB220();
      v38 = v39;
      OUTLINED_FUNCTION_28_2(v35);
      (*(v40 + 8))(v31, v35);
    }

    v18 = v33;
    v13 = v32;
    v4 = v42;
  }

  else
  {
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  sub_222DB128C((v0 + 2));
  v0[82] = v12;
  v0[83] = v51;
  v0[84] = v52;
  v0[85] = v50;
  v0[86] = v13;
  v0[87] = v53;
  v0[88] = v10;
  v0[89] = v4;
  v0[90] = v6;
  v0[91] = v49;
  v0[92] = v48;
  v0[93] = v47;
  v0[94] = v46;
  v0[95] = v45;
  v0[96] = v44;
  v0[97] = v18;
  v0[98] = v43;
  v0[99] = v37;
  v0[100] = v38;
  sub_222DB0F40((v0 + 82));
  memcpy(v0 + 42, v0 + 82, 0x99uLL);
  OUTLINED_FUNCTION_49_2();
  *(v18 + 153) = v10;
  *(v18 + 160) = v31;

  OUTLINED_FUNCTION_13_3();
LABEL_25:

  return v28();
}

uint64_t sub_222DAFB0C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 1976);
  OUTLINED_FUNCTION_82();

  OUTLINED_FUNCTION_29_1();

  return v2();
}

uint64_t sub_222DAFB6C()
{
  OUTLINED_FUNCTION_12_1();
  sub_222DB128C(v0 + 16);
  v1 = *(v0 + 2008);
  OUTLINED_FUNCTION_82();

  OUTLINED_FUNCTION_29_1();

  return v2();
}

uint64_t sub_222DAFBD4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_222DAE900(v5, a3);
  }

  else
  {
    return sub_222DAE964(v5, a2);
  }
}

uint64_t *sub_222DAFC38(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_222DAE900(v6, a3);
  }

  if (a2)
  {
    return sub_222DAE964(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t ContactResolutionSnippetGenerator.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v0;
}

uint64_t ContactResolutionSnippetGenerator.__deallocating_deinit()
{
  ContactResolutionSnippetGenerator.deinit();
  v0 = OUTLINED_FUNCTION_52_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DAFD00()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DAFDCC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DAFE98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateDetailedDisambiguationContactNames(contacts:directInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DAFF64()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateDetailedDisambiguationForMultipleHandlesWithSameLabel(contacts:directInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DB0030()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateDetailedDisambiguationForMixedLabels(contacts:directInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DB00FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:outputGenerationManifest:)();
}

uint64_t sub_222DB01F4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *v8;
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_222DB13EC;

  return ContactResolutionSnippetGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_222DB02F4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_5(v1);
  OUTLINED_FUNCTION_81();

  return sub_222DA9398();
}

uint64_t sub_222DB03B0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_5(v1);
  OUTLINED_FUNCTION_81();

  return sub_222DAAB7C();
}

uint64_t sub_222DB043C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_5(v1);
  OUTLINED_FUNCTION_81();

  return sub_222DAB564();
}

uint64_t sub_222DB04C8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_5(v1);
  OUTLINED_FUNCTION_81();

  return sub_222DABDD0();
}

uint64_t sub_222DB0554()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_30_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_5(v1);
  OUTLINED_FUNCTION_81();

  return sub_222DAC52C();
}

uint64_t sub_222DB05E0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_10_3(v10);
  *v11 = v12;
  v11[1] = sub_222DAB62C;

  return sub_222DACFD8(a1, v3, v4, v9);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  v19 = *(OUTLINED_FUNCTION_2_5(v12, v13, v14, v15, v16, v17, v18) + 8);
  OUTLINED_FUNCTION_20_3();
  v36 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_10_3(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_1_4(v24);
  OUTLINED_FUNCTION_43_2();

  return v33(v26, v27, v28, v29, v30, v31, v32, v33, a9, v36, a11, a12);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  v19 = *(OUTLINED_FUNCTION_2_5(v12, v13, v14, v15, v16, v17, v18) + 16);
  OUTLINED_FUNCTION_20_3();
  v36 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_10_3(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_1_4(v24);
  OUTLINED_FUNCTION_43_2();

  return v33(v26, v27, v28, v29, v30, v31, v32, v33, a9, v36, a11, a12);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationContactNames(contacts:directInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  v19 = *(OUTLINED_FUNCTION_2_5(v12, v13, v14, v15, v16, v17, v18) + 24);
  OUTLINED_FUNCTION_20_3();
  v36 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_10_3(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_1_4(v24);
  OUTLINED_FUNCTION_43_2();

  return v33(v26, v27, v28, v29, v30, v31, v32, v33, a9, v36, a11, a12);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationForMultipleHandlesWithSameLabel(contacts:directInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  v19 = *(OUTLINED_FUNCTION_2_5(v12, v13, v14, v15, v16, v17, v18) + 32);
  OUTLINED_FUNCTION_20_3();
  v36 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_10_3(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_1_4(v24);
  OUTLINED_FUNCTION_43_2();

  return v33(v26, v27, v28, v29, v30, v31, v32, v33, a9, v36, a11, a12);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationForMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  v19 = *(OUTLINED_FUNCTION_2_5(v12, v13, v14, v15, v16, v17, v18) + 40);
  OUTLINED_FUNCTION_20_3();
  v36 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_10_3(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_1_4(v24);
  OUTLINED_FUNCTION_43_2();

  return v33(v26, v27, v28, v29, v30, v31, v32, v33, a9, v36, a11, a12);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_44_2();
  v37 = v19;
  OUTLINED_FUNCTION_46_2();
  v20 = *(v18 + 48);
  v36 = v20 + *v20;
  v21 = v20[1];
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_10_3(v22);
  *v23 = v24;
  v23[1] = sub_222DB13EC;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_42_0();

  return v33(v25, v26, v27, v28, v29, v30, v31, v32, a9, v18 + 48, v36, v37, v18, a14, a15, a16, a17, a18);
}

uint64_t dispatch thunk of ContactResolutionSnippetGenerating.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_44_2();
  v50 = v28;
  v49 = v29;
  OUTLINED_FUNCTION_46_2();
  v30 = *(a27 + 56);
  OUTLINED_FUNCTION_20_3();
  v48 = v31 + *v31;
  v33 = *(v32 + 4);
  v34 = swift_task_alloc();
  v35 = OUTLINED_FUNCTION_10_3(v34);
  *v35 = v36;
  v35[1] = sub_222DB13EC;
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_42_0();

  return v45(v37, v38, v39, v40, v41, v42, v43, v44, a9, v48, v49, v50, v27, a14, a15, a16, a17, a18, a19);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222DB0E7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222DB0EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222DB0F58(uint64_t a1)
{
  v2 = type metadata accessor for ContactResolutionDisambiguationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222DB1010()
{
  result = qword_27D047C90;
  if (!qword_27D047C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C90);
  }

  return result;
}

uint64_t sub_222DB1064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a20 == 2)
  {

    sub_222D93218(a14, a15);
  }

  else if (a20 == 1)
  {

    sub_222D93218(a14, a15);
  }

  else
  {
    if (a20)
    {
      return result;
    }
  }
}

unint64_t sub_222DB1398()
{
  result = qword_27D047C98;
  if (!qword_27D047C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D047C98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_5_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11)
{
  *(v12 + 336) = a1;
  *(a1 + 16) = v11;
  result = a9;
  *(a1 + 24) = a9;
  *(a1 + 40) = a11;
  return result;
}

void OUTLINED_FUNCTION_9_3()
{
  v4 = *(v1 + 320);
  v3 = *(v1 + 328);
  v6 = *(v1 + 304);
  v5 = *(v1 + 312);
  v7 = *(v1 + 288);
  v8 = *(v1 + 296);
  v9 = *(v1 + 272);
  v10 = *(v1 + 256);
  v12 = *(v1 + 280);
  v11 = *(v1 + 240);
}

void OUTLINED_FUNCTION_11_3(uint64_t a1@<X8>)
{
  v1[12] = sub_222DAFC38;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_12_3(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  *(v0 + 24) = sub_222DADA7C;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_21_3@<X0>(void *a1@<X8>)
{
  v3 = a1[3];
  v2 = a1[4];
  v4 = a1[2];
  return v1;
}

BOOL OUTLINED_FUNCTION_25_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1)
{
  *(a1 + 8) = sub_222DAA304;
  v2 = *(v1 + 1240);
  v3 = *(v1 + 1208);
  return v1 + 416;
}

void OUTLINED_FUNCTION_30_3()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return 0;
}

void *OUTLINED_FUNCTION_41_2()
{
  sub_222DB0F4C(v1 + 16);

  return memcpy(v0, (v1 + 16), 0x99uLL);
}

void OUTLINED_FUNCTION_48_2()
{

  JUMPOUT(0x223DCEF40);
}

void *OUTLINED_FUNCTION_49_2()
{
  v2 = *(v0 + 1944);
  v3 = *(v0 + 174);
  v4 = *(v0 + 1936);
  v5 = *(v0 + 1928);
  v6 = *(v0 + 1896);

  return memcpy(v6, (v0 + 336), 0x99uLL);
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 7;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return sub_222DDA4A0();
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 1920);
  v5 = *(v3 + 1912);
  return v2;
}

void OUTLINED_FUNCTION_60_1()
{
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[29];
  v9 = v0[26];
  v10 = v0[27];
  v8 = v0[25];

  sub_222D9FE18();
}

id OUTLINED_FUNCTION_61_1(uint64_t a1, const char *a2)
{

  return [v5 a2];
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 328);
  return result;
}

void *OUTLINED_FUNCTION_67_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __src)
{

  return memcpy((v13 + 16), &__src, 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{
  *(v1 + 304) = a1;

  return sub_222DDA800();
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  v2 = *(v0 + 32);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return MEMORY[0x2821BB820](v0);
}

uint64_t OUTLINED_FUNCTION_71_0()
{
}

uint64_t OUTLINED_FUNCTION_74(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a2);

  return sub_222DDA760();
}

uint64_t OUTLINED_FUNCTION_77@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 153) = a1;
  *(v5 + 160) = a5;
}

void *OUTLINED_FUNCTION_78()
{

  return sub_222D94BC4(v0, v2 & 0xFFFFFFFE | ((v1 & 1) == 0));
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;

  return sub_222DDA770();
}

uint64_t OUTLINED_FUNCTION_82()
{
  v2 = *(v0 + 1936);
  v3 = *(v0 + 1928);
}

void *OUTLINED_FUNCTION_83(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x99uLL);
}

void sub_222DB1A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222DDB4C0();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_222DB1B58;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_222DB1B60;
  v7[3] = &block_descriptor_0;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

id sub_222DB1B60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_222DB1C04();
    v5 = sub_222DDB440();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_222DB1C04()
{
  result = qword_27D047BC8;
  if (!qword_27D047BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D047BC8);
  }

  return result;
}

uint64_t sub_222DB1C58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CB0, &qword_222DDDDB0);
  OUTLINED_FUNCTION_8(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v59 = v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CB8, &qword_222DDDDB8);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v56 = v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CC0, &qword_222DDDDC0);
  OUTLINED_FUNCTION_8(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CC8, &qword_222DDDDC8);
  OUTLINED_FUNCTION_8(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v21 = v55 - v20;
  v22 = sub_222DD9FC0();
  v23 = OUTLINED_FUNCTION_2(v22);
  v57 = v24;
  v58 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v28 = v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CD0, &qword_222DDDDD0);
  v29 = sub_222DDA200();
  OUTLINED_FUNCTION_2(v29);
  v31 = v30;
  v33 = *(v32 + 72);
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_222DDDDA0;
  v36 = v35 + v34;
  v37 = *(v31 + 104);
  v37(v36, *MEMORY[0x277CC9968], v29);
  v37(v36 + v33, *MEMORY[0x277CC9998], v29);
  v37(v36 + 2 * v33, *MEMORY[0x277CC9988], v29);
  sub_222DB2034(v35);
  sub_222DDA1E0();

  v55[1] = sub_222DD9F80();
  sub_222DD9FB0();
  sub_222DD9FA0();
  v38 = sub_222DDAC90();
  OUTLINED_FUNCTION_0_6(v21, v39, v40, v38);
  v41 = sub_222DDACB0();
  OUTLINED_FUNCTION_0_6(v15, v42, v43, v41);
  v44 = sub_222DDACD0();
  OUTLINED_FUNCTION_0_6(v56, v45, v46, v44);
  v47 = sub_222DDACA0();
  OUTLINED_FUNCTION_0_6(v59, v48, v49, v47);
  v50 = sub_222DDACE0();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_222DDACC0();
  (*(v57 + 8))(v28, v58);
  return v53;
}

uint64_t sub_222DB2034(uint64_t a1)
{
  v2 = sub_222DDA200();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CD8, &qword_222DDDDD8);
  result = sub_222DDB810();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_222DB2350(&qword_27D047CE0);
    v16 = sub_222DDB470();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_222DB2350(&qword_27D047CE8);
      v23 = sub_222DDB4B0();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_222DB2350(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_222DDA200();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222DB23B4()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v0 + *(v1 + 152);
  v3 = *v2;
  sub_222DB70DC(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_222DB23FC()
{
  OUTLINED_FUNCTION_22_3();
  v2 = (v0 + *(v1 + 152));
  v3 = *v2;
  v4 = v2[1];
  *v2 = v5;
  v2[1] = v6;
  return sub_222DB6A34(v3, v4);
}

uint64_t sub_222DB2434@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  v4 = *(v3 + 160);
  swift_beginAccess();
  return sub_222DB706C(v1 + v4, a1);
}

uint64_t sub_222DB2494(uint64_t a1)
{
  OUTLINED_FUNCTION_22_3();
  v4 = *(v3 + 160);
  swift_beginAccess();
  sub_222DB7128(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t sub_222DB24FC()
{
  OUTLINED_FUNCTION_22_3();
  v2 = *(v0 + *(v1 + 168));
}

uint64_t sub_222DB2524()
{
  OUTLINED_FUNCTION_22_3();
  v2 = *(v1 + 168);
  v3 = *(v0 + v2);
  *(v0 + v2) = v4;
}

uint64_t DateTimeResolverFlow.__allocating_init(nextFlow:resolutionStrategy:spec:locale:timeZone:calendar:currentDate:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DateTimeResolverFlow.init(nextFlow:resolutionStrategy:spec:locale:timeZone:calendar:currentDate:)();
  return v3;
}

void DateTimeResolverFlow.init(nextFlow:resolutionStrategy:spec:locale:timeZone:calendar:currentDate:)()
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *v0;
  v16 = *(*v0 + 160);
  v17 = sub_222DDA940();
  __swift_storeEnumTagSinglePayload(&v0[v16], 1, 1, v17);
  OUTLINED_FUNCTION_22_3();
  *&v0[*(v18 + 168)] = 0;
  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_22_3();
  *&v0[*(v19 + 152)] = xmmword_222DDDDE0;
  OUTLINED_FUNCTION_22_3();
  (*(*(*(v15 + 80) - 8) + 32))(&v0[*(v20 + 144)], v12);
  v21 = qword_27D04C8D0;
  v22 = sub_222DDA1D0();
  OUTLINED_FUNCTION_4_6(v22);
  (*(v23 + 32))(&v0[v21], v8);
  v24 = qword_27D04C8D8;
  v25 = sub_222DDA220();
  OUTLINED_FUNCTION_4_6(v25);
  (*(v26 + 32))(&v0[v24], v6);
  v27 = qword_27D04C8E0;
  v28 = sub_222DDA210();
  OUTLINED_FUNCTION_4_6(v28);
  (*(v29 + 32))(&v0[v27], v4);
  v30 = qword_27D04C8E8;
  v31 = sub_222DDA160();
  OUTLINED_FUNCTION_4_6(v31);
  (*(v32 + 32))(&v0[v30], v2);
  v33 = qword_27D04C8F0;
  v34 = sub_222DDAB70();
  OUTLINED_FUNCTION_4_6(v34);
  (*(v35 + 32))(&v0[v33], v10);
  OUTLINED_FUNCTION_36_1();
}

void sub_222DB2810()
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  OUTLINED_FUNCTION_22_3();
  v46 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v44 - v8;
  v10 = sub_222DDA940();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_6();
  v47 = v16;
  OUTLINED_FUNCTION_10_4();
  v49 = sub_222DDA900();
  v17 = OUTLINED_FUNCTION_2(v49);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v25 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v25, qword_27D04C910);

  v26 = sub_222DDB3C0();
  v27 = sub_222DDB6B0();

  v28 = os_log_type_enabled(v26, v27);
  v48 = v0;
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_29_4();
    v45 = v9;
    v30 = v29;
    v31 = OUTLINED_FUNCTION_25_2();
    v44[1] = v2;
    v32 = v31;
    v52 = v31;
    *v30 = 136315138;
    v50 = sub_222DB23B4();
    v51 = v33;
    v34 = *(v46 + 80);
    v35 = *(v46 + 88);
    type metadata accessor for DateTimeResolverFlow.State();
    v36 = sub_222DDB540();
    v38 = v13;
    v39 = v10;
    v40 = OUTLINED_FUNCTION_28_4(v36, v37);

    *(v30 + 4) = v40;
    v10 = v39;
    v13 = v38;
    _os_log_impl(&dword_222D8A000, v26, v27, "state of DateTimeResolverFlow: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_48_2();
    v9 = v45;
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DDA870();
  v41 = v49;
  if ((*(v19 + 88))(v24, v49) == *MEMORY[0x277D5C158])
  {
    (*(v19 + 96))(v24, v41);
    v42 = *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48));
    v43 = v47;
    (*(v13 + 32))(v47, v24, v10);
    (*(v13 + 16))(v9, v43, v10);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    sub_222DB2494(v9);

    sub_222DB2524();

    (*(v13 + 8))(v43, v10);
  }

  else
  {
    (*(v19 + 8))(v24, v41);
  }

  OUTLINED_FUNCTION_36_1();
}

void sub_222DB2BC0()
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v67 = v3;
  OUTLINED_FUNCTION_22_3();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF8, &qword_222DDDE20);
  OUTLINED_FUNCTION_8(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047D00, qword_222DDDE28);
  OUTLINED_FUNCTION_8(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = sub_222DDA940();
  v21 = OUTLINED_FUNCTION_2(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  sub_222DB2434(v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_222DB6FC0(v19, &qword_27D047CF0, &unk_222DDDE10);
    sub_222DDB900();
    __break(1u);
  }

  else
  {
    (*(v23 + 32))(v28, v19, v20);
    v29 = *(*v0 + 144);
    if ((*(*(v5 + 88) + 16))(v28, *(v5 + 80)))
    {
      v30 = sub_222DB23B4();
      v32 = v31;
      if (v31 >> 62)
      {
        if (v31 >> 62 == 1)
        {
          v65 = v30;
          v66 = v2;
          v33 = v31 & 0x3FFFFFFFFFFFFFFFLL;
          v64 = sub_222DDAD40();
          sub_222DDAD50();
          sub_222DDAD10();
          sub_222DDAD30();
          sub_222DDAD20();
          sub_222DDAD00();
          v34 = sub_222DDAD60();
          v35 = *(v34 + 48);
          v36 = *(v34 + 52);
          v63 = v34;
          swift_allocObject();
          v37 = sub_222DDAC70();
          if (qword_27D0475A8 != -1)
          {
            OUTLINED_FUNCTION_3_4();
          }

          v38 = sub_222DDB3E0();
          OUTLINED_FUNCTION_63_0(v38, qword_27D04C910);

          v39 = sub_222DDB3C0();
          v40 = sub_222DDB6B0();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v60 = v41;
            v64 = swift_slowAlloc();
            v68 = v33;
            v69 = v64;
            *v41 = 136315394;
            sub_222DB6F78(qword_27D047D08, MEMORY[0x277D56498]);
            v62 = v40;
            v61 = v39;
            v42 = sub_222DDBAB0();
            v44 = v37;
            v45 = OUTLINED_FUNCTION_28_4(v42, v43);

            v46 = v60;
            *(v60 + 1) = v45;
            v47 = v44;
            *(v46 + 6) = 2080;
            v48 = v46;
            v68 = v47;
            v49 = sub_222DDBAB0();
            v51 = OUTLINED_FUNCTION_28_4(v49, v50);

            *(v48 + 14) = v51;
            v52 = v61;
            _os_log_impl(&dword_222D8A000, v61, v62, "Original dateTime: %s, mutated datetime: %s", v48, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_48_2();
            OUTLINED_FUNCTION_48_2();
          }

          else
          {
          }

          sub_222DB4DCC();
        }

        else if (v30 | v31 ^ 0x8000000000000000)
        {
          sub_222DB4C68(v67);
        }

        else
        {
          sub_222DB3B34();
        }
      }

      else
      {
        v59 = v30;
        sub_222DB3DF0();
        sub_222DB6A34(v59, v32);
      }
    }

    else
    {
      if (qword_27D0475A8 != -1)
      {
        OUTLINED_FUNCTION_3_4();
      }

      v53 = sub_222DDB3E0();
      OUTLINED_FUNCTION_63_0(v53, qword_27D04C910);
      v54 = sub_222DDB3C0();
      v55 = sub_222DDB6B0();
      if (OUTLINED_FUNCTION_26_3(v55))
      {
        v56 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_50_1(v56);
        OUTLINED_FUNCTION_32_3(&dword_222D8A000, v57, v58, "delegate.shouldResolve returned false, returning early");
        OUTLINED_FUNCTION_48_2();
      }

      sub_222DB4654();
    }

    (*(v23 + 8))(v28, v20);
    OUTLINED_FUNCTION_36_1();
  }
}

void sub_222DB31A0()
{
  OUTLINED_FUNCTION_22_3();
  v1 = v0;
  v2 = sub_222DB23B4();
  if (v3 >> 62 == 2 && v2 == 0 && v3 == 0x8000000000000000)
  {
    sub_222DB23FC();
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v16 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v16, qword_27D04C910);

    oslog = sub_222DDB3C0();
    v7 = sub_222DDB6B0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = OUTLINED_FUNCTION_29_4();
      v9 = OUTLINED_FUNCTION_25_2();
      v23 = v9;
      *v8 = 136315138;
      sub_222DB23B4();
      v17 = *(v1 + 80);
      v18 = *(v1 + 88);
      type metadata accessor for DateTimeResolverFlow.State();
      v19 = sub_222DDB540();
      v21 = sub_222D8F7F0(v19, v20, &v23);

      *(v8 + 4) = v21;
      v15 = "[DateTimeResolverFlow::onFlowCompletion] setting state to %s";
      goto LABEL_16;
    }
  }

  else
  {
    sub_222DB6A34(v2, v3);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v6 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v6, qword_27D04C910);

    oslog = sub_222DDB3C0();
    v7 = sub_222DDB6C0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = OUTLINED_FUNCTION_29_4();
      v9 = OUTLINED_FUNCTION_25_2();
      v23 = v9;
      *v8 = 136315138;
      sub_222DB23B4();
      v10 = *(v1 + 80);
      v11 = *(v1 + 88);
      type metadata accessor for DateTimeResolverFlow.State();
      v12 = sub_222DDB540();
      v14 = sub_222D8F7F0(v12, v13, &v23);

      *(v8 + 4) = v14;
      v15 = "[DateTimeResolverFlow::onFlowCompletion] unexpected state: %s";
LABEL_16:
      _os_log_impl(&dword_222D8A000, oslog, v7, v15, v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_48_2();

      return;
    }
  }
}

void sub_222DB3438()
{
  OUTLINED_FUNCTION_32_2();
  v1 = sub_222DDA160();
  v2 = OUTLINED_FUNCTION_2(v1);
  v64 = v3;
  v65 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_6();
  v63 = v6;
  OUTLINED_FUNCTION_10_4();
  v7 = sub_222DDA210();
  v8 = OUTLINED_FUNCTION_2(v7);
  v61 = v9;
  v62 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_6();
  v60 = v12;
  OUTLINED_FUNCTION_10_4();
  v13 = sub_222DDA220();
  v14 = OUTLINED_FUNCTION_2(v13);
  v58 = v15;
  v59 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_6();
  v57 = v18;
  OUTLINED_FUNCTION_10_4();
  v19 = sub_222DDA1D0();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_3();
  v56 = (v25 - v26);
  OUTLINED_FUNCTION_33_1();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v54 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v54 - v31;
  v54 = &v54 - v31;
  v33 = sub_222DDABB0();
  v34 = OUTLINED_FUNCTION_2(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_3();
  v55 = v39 - v40;
  OUTLINED_FUNCTION_33_1();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v54 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v54 - v45;
  v47 = sub_222DB3874();
  v48 = MEMORY[0x277D56150];
  if (v47 <= 0.0)
  {
    v48 = MEMORY[0x277D56158];
  }

  (*(v36 + 104))(v44, *v48, v33);
  (*(v36 + 32))(v46, v44, v33);
  v49 = qword_27D04C8D0;
  v50 = *(v22 + 16);
  v50(v32, v0 + qword_27D04C8D0, v19);
  v50(v30, v0 + v49, v19);
  v50(v56, v0 + v49, v19);
  (*(v58 + 16))(v57, v0 + qword_27D04C8D8, v59);
  (*(v36 + 16))(v55, v46, v33);
  (*(v61 + 16))(v60, v0 + qword_27D04C8E0, v62);
  (*(v64 + 16))(v63, v0 + qword_27D04C8E8, v65);
  v51 = sub_222DDABD0();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  sub_222DDABC0();
  (*(v36 + 8))(v46, v33);
  OUTLINED_FUNCTION_36_1();
}

double sub_222DB3874()
{
  v1 = type metadata accessor for LocationService();
  v2 = OUTLINED_FUNCTION_4_6(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  sub_222DDA430();
  if (qword_27D0475A0 != -1)
  {
    swift_once();
  }

  v8 = sub_222DDB3F0();
  v9 = __swift_project_value_buffer(v8, qword_27D04C8F8);
  (*(*(v8 - 8) + 16))(v7 + *(v1 + 20), v9, v8);
  v10 = sub_222DC98E0();
  if (v10)
  {
    v11 = v10;
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v12 = sub_222DDB3E0();
    __swift_project_value_buffer(v12, qword_27D04C910);
    v13 = v11;
    v14 = sub_222DDB3C0();
    v15 = sub_222DDB6B0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      [v13 lat];
      *(v16 + 4) = v17;
      *(v16 + 12) = 2048;
      [v13 lng];
      *(v16 + 14) = v18;
      _os_log_impl(&dword_222D8A000, v14, v15, "latitude: %f, longitude: %f", v16, 0x16u);
      OUTLINED_FUNCTION_48_2();
    }

    [v13 lat];
    v20 = v19;
    [v13 lng];
  }

  else
  {
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v21 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v21, qword_27D04C910);
    v13 = sub_222DDB3C0();
    v22 = sub_222DDB6C0();
    v20 = 0.0;
    if (os_log_type_enabled(v13, v22))
    {
      v23 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v23);
      _os_log_impl(&dword_222D8A000, v13, v22, "did not get location information from LocationService", v0, 2u);
      OUTLINED_FUNCTION_48_2();
    }
  }

  sub_222DB6F18(v7);
  return v20;
}

void sub_222DB3B34()
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_22_3();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v13 = sub_222DDB3E0();
  __swift_project_value_buffer(v13, qword_27D04C910);

  v14 = sub_222DDB3C0();
  v15 = sub_222DDB6B0();

  if (os_log_type_enabled(v14, v15))
  {
    v28[0] = v4;
    v28[1] = v2;
    v16 = OUTLINED_FUNCTION_29_4();
    v17 = OUTLINED_FUNCTION_25_2();
    v29 = v17;
    *v16 = 136315138;
    if (sub_222DB24FC())
    {
      v18 = sub_222DDA8B0();
    }

    else
    {
      v18 = 0;
    }

    v28[2] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E18, &qword_222DDDF88);
    v19 = sub_222DDB540();
    v21 = OUTLINED_FUNCTION_28_4(v19, v20);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_222D8A000, v14, v15, "handling initialized state intent: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_48_2();
  }

  else
  {
  }

  v22 = *(*v0 + 144);
  sub_222DB2434(v12);
  (*(*(v6 + 88) + 24))(&v29, v12, *(v6 + 80));
  sub_222DB6FC0(v12, &qword_27D047CF0, &unk_222DDDE10);
  if (v29)
  {
    sub_222DB4DCC();
  }

  else
  {
    v23 = sub_222DDB3C0();
    v24 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_26_3(v24))
    {
      v25 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v25);
      OUTLINED_FUNCTION_32_3(&dword_222D8A000, v26, v27, "no datetime node present in the intent, skipping to nextFlow");
      OUTLINED_FUNCTION_48_2();
    }

    sub_222DB4654();
  }

  OUTLINED_FUNCTION_36_1();
}

void sub_222DB3DF0()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v115 = v2;
  v117 = v3;
  v109 = v4;
  OUTLINED_FUNCTION_22_3();
  v6 = v5;
  v7 = sub_222DDA650();
  v8 = OUTLINED_FUNCTION_2(v7);
  v118 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_6();
  v116 = v12;
  OUTLINED_FUNCTION_10_4();
  v13 = sub_222DDA890();
  v14 = OUTLINED_FUNCTION_2(v13);
  v107 = v15;
  v108 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v21 = sub_222DDA900();
  v22 = OUTLINED_FUNCTION_2(v21);
  v111 = v23;
  v112 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_3();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v110 = v103 - v30;
  OUTLINED_FUNCTION_10_4();
  v31 = sub_222DDA350();
  v32 = OUTLINED_FUNCTION_8(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38);
  v40 = v103 - v39;
  v41 = sub_222DDA940();
  v42 = OUTLINED_FUNCTION_2(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_6();
  v113 = v47;
  if (!sub_222DB24FC())
  {
    goto LABEL_4;
  }

  sub_222DB2434(v40);
  if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
  {

    sub_222DB6FC0(v40, &qword_27D047CF0, &unk_222DDDE10);
LABEL_4:
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v48 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v48, qword_27D04C910);
    v49 = sub_222DDB3C0();
    v50 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v50))
    {
      v51 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v51);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v52, v53, "serverConversion and nlIntent are nil, returning early from handleDateTimeResolved");
      OUTLINED_FUNCTION_16_1();
    }

    v54 = v0[2];
    sub_222DB45D4();
    OUTLINED_FUNCTION_18_3();

    v55 = OUTLINED_FUNCTION_24_4();
    v56(v55);
    v57 = OUTLINED_FUNCTION_13_4();
    v58(v57);
    goto LABEL_20;
  }

  v104 = v44;
  v105 = v7;
  (*(v44 + 32))(v113, v40, v41);
  v59 = *(*v0 + 144);
  v106 = v41;
  v60 = sub_222DDA8B0();
  v120[0] = v109;
  v61 = (*(*(v6 + 88) + 72))(v60, v120, *(v6 + 80));

  if (v61)
  {
    v62 = v61;
    sub_222DDA8C0();
    sub_222DDA8D0();
    sub_222DDA8E0();
    v63 = sub_222DDA8F0();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    v109 = v62;
    v66 = sub_222DDA8A0();
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48);
    v68 = v104;
    v69 = v110;
    v70 = v113;
    (*(v104 + 16))(v110, v113, v106);
    *&v69[v67] = v66;
    v71 = v111;
    v72 = v112;
    (*(v111 + 104))(v69, *MEMORY[0x277D5C158], v112);
    v73 = v1[2];
    (*(v71 + 16))(v28, v69, v72);
    v103[1] = v66;

    sub_222DDA880();
    v74 = sub_222DDA290();
    (*(v107 + 8))(v20, v108);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v75 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v75, qword_27D04C910);

    v76 = sub_222DDB3C0();
    v77 = sub_222DDB6B0();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = OUTLINED_FUNCTION_25_2();
      v119 = v73;
      v120[0] = v79;
      *v78 = 67109378;
      *(v78 + 4) = v74 & 1;
      *(v78 + 8) = 2080;
      sub_222DDA2A0();
      OUTLINED_FUNCTION_9_4();
      sub_222DB6F78(v80, v81);
      v82 = sub_222DDBAB0();
      v84 = sub_222D8F7F0(v82, v83, v120);

      *(v78 + 10) = v84;
      _os_log_impl(&dword_222D8A000, v76, v77, "nextFlowOn: %{BOOL}d, flow is: %s", v78, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v79);
      OUTLINED_FUNCTION_48_2();
      v70 = v113;
      OUTLINED_FUNCTION_48_2();
    }

    sub_222DB45D4();
    sub_222DDA620();

    v99 = OUTLINED_FUNCTION_24_4();
    v100(v99);

    v101 = OUTLINED_FUNCTION_13_4();
    v102(v101);
    (*(v111 + 8))(v110, v112);
    (*(v68 + 8))(v70, v106);
  }

  else
  {
    v85 = v106;
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v86 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v86, qword_27D04C910);
    v87 = sub_222DDB3C0();
    v88 = sub_222DDB6C0();
    v89 = OUTLINED_FUNCTION_34_2(v88);
    v90 = v113;
    if (v89)
    {
      v91 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v91);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v92, v93, "delegate did return an intent with the resolved dateTime, moving on to the next flow without setting location");
      OUTLINED_FUNCTION_16_1();
    }

    v94 = v1[2];
    sub_222DB4614();
    OUTLINED_FUNCTION_18_3();

    v95 = OUTLINED_FUNCTION_24_4();
    v96(v95);

    v97 = OUTLINED_FUNCTION_13_4();
    v98(v97);
    (*(v44 + 8))(v90, v85);
  }

LABEL_20:
  OUTLINED_FUNCTION_36_1();
}

void sub_222DB4654()
{
  OUTLINED_FUNCTION_32_2();
  v90 = v3;
  v91 = v2;
  v4 = sub_222DDA650();
  v5 = OUTLINED_FUNCTION_2(v4);
  v92 = v6;
  v93 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = sub_222DDA890();
  v13 = OUTLINED_FUNCTION_2(v12);
  v85 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = sub_222DDA900();
  v21 = OUTLINED_FUNCTION_2(v20);
  v88 = v22;
  v89 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_3();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v82 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_23_4();
  v35 = sub_222DDA940();
  v36 = OUTLINED_FUNCTION_2(v35);
  v87 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_6();
  v86 = v40;
  v41 = sub_222DB24FC();
  if (!v41)
  {
    goto LABEL_4;
  }

  v42 = v41;
  sub_222DB2434(v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v35) == 1)
  {

    sub_222DB6FC0(v1, &qword_27D047CF0, &unk_222DDDE10);
LABEL_4:
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v43 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v43, qword_27D04C910);
    v44 = sub_222DDB3C0();
    v45 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v45))
    {
      v46 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v46);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v47, v48, "serverConversion and nlIntent are nil, returning early from passThroughIntent");
      OUTLINED_FUNCTION_16_1();
    }

    v49 = *(v0 + 16);
    sub_222DB45D4();
    sub_222DDA620();

    v91(v11);
    (*(v92 + 8))(v11, v93);
    goto LABEL_14;
  }

  v84 = v11;
  v50 = v87;
  v51 = *(v87 + 32);
  v82 = v12;
  v52 = v42;
  v53 = v0;
  v54 = v30;
  v55 = v35;
  v56 = v86;
  v51(v86, v1, v55);
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48);
  v58 = *(v50 + 16);
  v59 = v54;
  v60 = v56;
  v61 = v54;
  v62 = v53;
  v63 = v52;
  v83 = v55;
  v58(v59, v60, v55);
  *&v61[v57] = v52;
  v65 = v88;
  v64 = v89;
  (*(v88 + 104))(v61, *MEMORY[0x277D5C158], v89);
  v66 = *(v62 + 16);
  (*(v65 + 16))(v27, v61, v64);

  sub_222DDA880();
  v67 = sub_222DDA290();
  (*(v85 + 8))(v19, v82);
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v68 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v68, qword_27D04C910);

  v69 = sub_222DDB3C0();
  v70 = sub_222DDB6B0();

  v71 = os_log_type_enabled(v69, v70);
  v72 = v84;
  if (v71)
  {
    v73 = swift_slowAlloc();
    v74 = OUTLINED_FUNCTION_25_2();
    v85 = v63;
    v75 = v66;
    v76 = v74;
    *v73 = 67109378;
    *(v73 + 4) = v67 & 1;
    *(v73 + 8) = 2080;
    v94 = v75;
    v95 = v74;
    sub_222DDA2A0();
    OUTLINED_FUNCTION_9_4();
    sub_222DB6F78(v77, v78);
    v79 = sub_222DDBAB0();
    v81 = OUTLINED_FUNCTION_28_4(v79, v80);

    *(v73 + 10) = v81;
    _os_log_impl(&dword_222D8A000, v69, v70, "nextFlowOn: %{BOOL}d, flow is: %s", v73, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v76);
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DB45D4();
  sub_222DDA620();

  v91(v72);

  (*(v92 + 8))(v72, v93);
  (*(v88 + 8))(v61, v89);
  (*(v87 + 8))(v86, v83);
LABEL_14:
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DB4C68(void (*a1)(uint64_t))
{
  v2 = sub_222DDA650();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v11 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v11, qword_27D04C910);
  v12 = sub_222DDB3C0();
  v13 = sub_222DDB6B0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_43_0();
    *v14 = 0;
    _os_log_impl(&dword_222D8A000, v12, v13, "[DateTimeResolverFlow::execute] completed, returning .complete()", v14, 2u);
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DDA640();
  a1(v10);
  return (*(v5 + 8))(v10, v2);
}

void sub_222DB4DCC()
{
  OUTLINED_FUNCTION_32_2();
  v190 = v2;
  v193 = v3;
  v196 = v4;
  v178 = *v0;
  v5 = v178;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E28, &qword_222DDDF90);
  OUTLINED_FUNCTION_8(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v167 - v10;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E30, &qword_222DDDF98);
  v12 = OUTLINED_FUNCTION_2(v198);
  v186 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_3();
  v189 = (v16 - v17);
  OUTLINED_FUNCTION_33_1();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v167 - v20;
  MEMORY[0x28223BE20](v19);
  v194 = &v167 - v22;
  OUTLINED_FUNCTION_10_4();
  v23 = sub_222DDAAD0();
  v24 = OUTLINED_FUNCTION_2(v23);
  v187 = v25;
  v188 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_6();
  v197 = v28;
  OUTLINED_FUNCTION_10_4();
  v181 = sub_222DDA650();
  v29 = OUTLINED_FUNCTION_2(v181);
  v180 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_6();
  v179 = v33;
  OUTLINED_FUNCTION_10_4();
  v177 = sub_222DDA210();
  v34 = OUTLINED_FUNCTION_2(v177);
  v176 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_6();
  v175 = v38;
  v174 = *(v5 + 80);
  v172 = *(v174 - 8);
  v39 = *(v172 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  v173 = &v167 - v41;
  OUTLINED_FUNCTION_10_4();
  v42 = sub_222DDA200();
  v43 = OUTLINED_FUNCTION_2(v42);
  v182 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E38, &qword_222DDDFA0);
  OUTLINED_FUNCTION_8(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_23_4();
  v54 = sub_222DDA160();
  v55 = OUTLINED_FUNCTION_2(v54);
  v195 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_5_3();
  v171 = v59 - v60;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v61);
  v170 = &v167 - v62;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v63);
  v183 = &v167 - v64;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v65);
  v185 = &v167 - v66;
  OUTLINED_FUNCTION_10_4();
  v67 = sub_222DDAC00();
  v68 = OUTLINED_FUNCTION_2(v67);
  v191 = v69;
  v192 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_2_6();
  v199 = v72;
  sub_222DDABF0();
  sub_222DB3438();
  v200 = v73;
  v74 = sub_222DDAB60();
  v201 = v0;
  if (v74)
  {
    v75 = qword_27D04C8E8;
    v169 = v49;
    v76 = v1;
    v77 = v42;
    v78 = v11;
    v79 = qword_27D04C8E0;
    sub_222DDACF0();
    sub_222DDAD60();
    v184 = v54;
    sub_222DB6F78(&qword_27D047E48, MEMORY[0x277D563F8]);
    sub_222DDB460();
    v167 = v75;
    v168 = v79;
    v11 = v78;
    v80 = v77;
    v81 = v76;
    v49 = v169;
    v82 = v201;
    v83 = sub_222DDABE0();
    v84 = v184;

    if (v83)
    {
      v85 = v195;
      v86 = *(v195 + 16);
      v86(v185, &v82[v167], v84);
      v87 = v182;
      (*(v182 + 104))(v49, *MEMORY[0x277CC9968], v80);
      sub_222DDA1F0();
      (*(v87 + 8))(v49, v80);
      if (__swift_getEnumTagSinglePayload(v81, 1, v84) == 1)
      {
        sub_222DB6FC0(v81, &qword_27D047E38, &qword_222DDDFA0);
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4();
        }

        v88 = sub_222DDB3E0();
        OUTLINED_FUNCTION_63_0(v88, qword_27D04C910);
        v89 = sub_222DDB3C0();
        v90 = sub_222DDB6B0();
        v91 = OUTLINED_FUNCTION_34_2(v90);
        v92 = v195;
        v93 = v185;
        if (v91)
        {
          v94 = OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_19_1(v94);
          OUTLINED_FUNCTION_5_5(&dword_222D8A000, v95, v96, "could not get later date to display witching hour disambiguation prompt");
          OUTLINED_FUNCTION_16_1();
        }

        sub_222DB4654();

        (*(v92 + 8))(v93, v184);
      }

      else
      {
        v141 = v183;
        (*(v85 + 32))(v183, v81, v84);
        v142 = *(v178 + 88);
        v143 = v174;
        type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy();
        v144 = v185;
        v86(v170, v185, v84);
        v86(v171, v141, v84);
        (*(v172 + 16))(v173, &v82[*(*v82 + 144)], v143);
        (*(v176 + 16))(v175, &v82[v168], v177);
        sub_222DD46A0();
        v145 = v195;
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4();
        }

        v146 = sub_222DDB3E0();
        OUTLINED_FUNCTION_63_0(v146, qword_27D04C910);
        v147 = sub_222DDB3C0();
        v148 = sub_222DDB6B0();
        if (os_log_type_enabled(v147, v148))
        {
          v149 = OUTLINED_FUNCTION_43_0();
          *v149 = 0;
          _os_log_impl(&dword_222D8A000, v147, v148, "going to show disambiguation prompt for witching hour", v149, 2u);
          v82 = v201;
          OUTLINED_FUNCTION_48_2();
        }

        swift_getWitnessTable();
        sub_222DDA280();

        sub_222DDA7C0();
        v202[0] = sub_222DDA270();
        v150 = swift_allocObject();
        v151 = v196;
        v150[2] = v82;
        v150[3] = v151;
        v152 = v193;
        v153 = v190;
        v150[4] = v193;
        v150[5] = v153;

        swift_getWitnessTable();
        v154 = v179;
        sub_222DDA610();

        v152(v154);

        (*(v180 + 8))(v154, v181);
        v155 = *(v145 + 8);
        v156 = v184;
        v155(v183, v184);
        v155(v144, v156);
      }

      goto LABEL_30;
    }
  }

  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v97 = sub_222DDB3E0();
  v195 = __swift_project_value_buffer(v97, qword_27D04C910);
  v98 = sub_222DDB3C0();
  v99 = sub_222DDB6B0();
  v100 = OUTLINED_FUNCTION_26_3(v99);
  v101 = v194;
  if (v100)
  {
    v102 = OUTLINED_FUNCTION_43_0();
    *v102 = 0;
    _os_log_impl(&dword_222D8A000, v98, v49, "not going to show disambiguation prompt for witching hours", v102, 2u);
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DDAAC0();
  sub_222DDAAB0();
  v103 = v198;
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v198);
  v104 = v186;
  (*(v186 + 32))(v101, v11, v103);
  v105 = v104[2];
  v105(v21, v101, v103);
  v106 = sub_222DDB3C0();
  v107 = sub_222DDB6B0();
  if (os_log_type_enabled(v106, v107))
  {
    v11 = OUTLINED_FUNCTION_29_4();
    v108 = OUTLINED_FUNCTION_25_2();
    v202[0] = v108;
    *v11 = 136315138;
    sub_222DB7024(&qword_27D047E40, &qword_27D047E30, &qword_222DDDF98);
    v109 = sub_222DDBAB0();
    v110 = v21;
    v112 = v111;
    v113 = v104[1];
    v113(v110, v198);
    v114 = sub_222D8F7F0(v109, v112, v202);
    v115 = v113;
    v103 = v198;

    *(v11 + 4) = v114;
    _os_log_impl(&dword_222D8A000, v106, v107, "recommendation: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v108);
    v101 = v194;
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_48_2();
  }

  else
  {

    v116 = v21;
    v115 = v104[1];
    v115(v116, v103);
  }

  v117 = v189;
  v105(v189, v101, v103);
  v118 = v104[11];
  v119 = OUTLINED_FUNCTION_30_4();
  v121 = v120(v119);
  if (v121 == *MEMORY[0x277D56080])
  {
    v122 = v104[12];
    v123 = OUTLINED_FUNCTION_30_4();
    v124(v123);
    v125 = *v117;
    v126 = v195;
    v127 = sub_222DDB3C0();
    v128 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_34_2(v128))
    {
      v129 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v129);
      _os_log_impl(&dword_222D8A000, v127, v126, "handling confident recommendation", v11, 2u);
      OUTLINED_FUNCTION_48_2();
    }

    sub_222DB3DF0();

LABEL_20:

    v115(v101, v103);
LABEL_29:
    (*(v187 + 8))(v197, v188);
LABEL_30:
    (*(v191 + 8))(v199, v192);
    goto LABEL_31;
  }

  v130 = v121;
  if (v121 == *MEMORY[0x277D56068])
  {
    v131 = OUTLINED_FUNCTION_30_4();
    (v115)(v131);
    v132 = sub_222DDB3C0();
    v133 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v133))
    {
      v134 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v134);
      v137 = "got .needsConfirmation recommendation, returning to the next flow without performing any inference";
LABEL_27:
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v135, v136, v137);
      OUTLINED_FUNCTION_16_1();
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if (v121 == *MEMORY[0x277D56070])
  {
    v138 = OUTLINED_FUNCTION_30_4();
    (v115)(v138);
    v132 = sub_222DDB3C0();
    v139 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v139))
    {
      v140 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v140);
      v137 = "got .needsDisambiguation recommendation, returning to the next flow without performing any inference";
      goto LABEL_27;
    }

LABEL_28:

    OUTLINED_FUNCTION_27_4();

    v115(v101, v103);
    goto LABEL_29;
  }

  v157 = *MEMORY[0x277D56078];
  v158 = sub_222DDB3C0();
  if (v130 == v157)
  {
    v159 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v159))
    {
      v160 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v160);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v161, v162, "got .none recommendation, returning to the next flow without performing any inference");
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_27_4();
    goto LABEL_20;
  }

  v163 = sub_222DDB6B0();
  if (OUTLINED_FUNCTION_34_2(v163))
  {
    v164 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v164);
    OUTLINED_FUNCTION_5_5(&dword_222D8A000, v165, v166, "unknown recommendation, returning to the next flow without performing any inference");
    OUTLINED_FUNCTION_16_1();
  }

  OUTLINED_FUNCTION_27_4();

  v115(v101, v103);
  (*(v187 + 8))(v197, v188);
  (*(v191 + 8))(v199, v192);
  v115(v189, v103);
LABEL_31:
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DB5EA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v49 = a3;
  v50 = a2;
  v8 = sub_222DDA650();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E50, qword_222DDDFA8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v52 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v18 = sub_222DDB3E0();
  v19 = __swift_project_value_buffer(v18, qword_27D04C910);
  v20 = *(v12 + 16);
  v53 = a1;
  v51 = v20;
  v20(v17, a1, v11);
  v45 = v19;
  v21 = sub_222DDB3C0();
  v22 = sub_222DDB6B0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = a5;
    v24 = v23;
    v42 = swift_slowAlloc();
    v55 = v42;
    *v24 = 136315138;
    sub_222DB7024(&qword_27D047E58, &qword_27D047E50, qword_222DDDFA8);
    v25 = sub_222DDBAB0();
    v43 = a4;
    v27 = v26;
    v28 = *(v12 + 8);
    v28(v17, v11);
    v29 = sub_222D8F7F0(v25, v27, &v55);
    a4 = v43;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_222D8A000, v21, v22, "result: %s", v24, 0xCu);
    v30 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x223DCEF40](v30, -1, -1);
    MEMORY[0x223DCEF40](v24, -1, -1);
  }

  else
  {

    v28 = *(v12 + 8);
    v28(v17, v11);
  }

  v31 = v52;
  v51(v52, v53, v11);
  if ((*(v12 + 88))(v31, v11) == *MEMORY[0x277D5BC38])
  {
    (*(v12 + 96))(v31, v11);
    v32 = *v31;

    v33 = sub_222DDB3C0();
    v34 = sub_222DDB6B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54 = v32;
      v55 = v36;
      *v35 = 136315138;
      sub_222DDAD60();
      sub_222DB6F78(qword_27D047D08, MEMORY[0x277D56498]);
      v37 = sub_222DDBAB0();
      v39 = sub_222D8F7F0(v37, v38, &v55);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_222D8A000, v33, v34, "picked date: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x223DCEF40](v36, -1, -1);
      MEMORY[0x223DCEF40](v35, -1, -1);
    }

    sub_222DB23FC();
  }

  else
  {
    v41 = v46;
    sub_222DDA640();
    a4(v41);
    (*(v47 + 8))(v41, v48);
    return (v28)(v31, v11);
  }
}

char *DateTimeResolverFlow.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = qword_27D04C8D0;
  v4 = sub_222DDA1D0();
  OUTLINED_FUNCTION_4_6(v4);
  (*(v5 + 8))(&v0[v3]);
  v6 = qword_27D04C8D8;
  v7 = sub_222DDA220();
  OUTLINED_FUNCTION_4_6(v7);
  (*(v8 + 8))(&v0[v6]);
  v9 = qword_27D04C8E0;
  v10 = sub_222DDA210();
  OUTLINED_FUNCTION_4_6(v10);
  (*(v11 + 8))(&v0[v9]);
  v12 = qword_27D04C8E8;
  v13 = sub_222DDA160();
  OUTLINED_FUNCTION_4_6(v13);
  (*(v14 + 8))(&v0[v12]);
  v15 = qword_27D04C8F0;
  v16 = sub_222DDAB70();
  OUTLINED_FUNCTION_4_6(v16);
  (*(v17 + 8))(&v0[v15]);
  OUTLINED_FUNCTION_22_3();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v18 + 144)]);
  OUTLINED_FUNCTION_22_3();
  sub_222DB6A34(*&v0[*(v19 + 152)], *&v0[*(v19 + 152) + 8]);
  OUTLINED_FUNCTION_22_3();
  sub_222DB6FC0(&v0[*(v20 + 160)], &qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_22_3();
  v22 = *&v0[*(v21 + 168)];

  return v0;
}

uint64_t DateTimeResolverFlow.__deallocating_deinit()
{
  DateTimeResolverFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DB6638()
{
  v1 = *v0;
  sub_222DB2810();
  return 1;
}

uint64_t sub_222DB6660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_222DB6710;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_222DB6710(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_222DB6830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_222DB68E4;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_222DB68E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_222DB69D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = type metadata accessor for DateTimeResolverFlow();

  return MEMORY[0x2821BA658](v5, a2);
}

uint64_t sub_222DB6A34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return result;
    }
  }
}

void sub_222DB6A84(uint64_t a1)
{
  v2 = sub_222DDA1D0();
  if (v3 <= 0x3F)
  {
    v17 = *(v2 - 8) + 64;
    v4 = sub_222DDA220();
    if (v5 <= 0x3F)
    {
      v18 = *(v4 - 8) + 64;
      v6 = sub_222DDA210();
      if (v7 <= 0x3F)
      {
        v19 = *(v6 - 8) + 64;
        v8 = sub_222DDA160();
        if (v9 <= 0x3F)
        {
          v20 = *(v8 - 8) + 64;
          v10 = sub_222DDAB70();
          if (v11 <= 0x3F)
          {
            v21 = *(v10 - 8) + 64;
            v12 = *(a1 + 80);
            v13 = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              v22 = *(v13 - 8) + 64;
              sub_222DB6D38();
              if (v16 <= 0x3F)
              {
                v23 = *(v15 - 8) + 64;
                swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_222DB6D38()
{
  if (!qword_27D047D90[0])
  {
    sub_222DDA940();
    v0 = sub_222DDB720();
    if (!v1)
    {
      atomic_store(v0, qword_27D047D90);
    }
  }
}

uint64_t sub_222DB6D90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t get_enum_tag_for_layout_string_17SiriInferenceFlow016DateTimeResolverC0C5StateOyx_G(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_222DB6E00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 16))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_222DB6E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t *sub_222DB6EEC(uint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8;
    v3 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = 8 * (a2 - 2);
    v3 = 0x8000000000000000;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t sub_222DB6F18(uint64_t a1)
{
  v2 = type metadata accessor for LocationService();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222DB6F78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222DB6FC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_222DB7024(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222DB706C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DB70DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_222DB7128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_5_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_18_3()
{
  v2 = *(v0 - 160);

  return sub_222DDA620();
}

uint64_t OUTLINED_FUNCTION_24_4()
{
  result = v0;
  v3 = *(v1 - 168);
  v4 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_26_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_27_4()
{
  v2 = *(v0 - 208);
  v3 = *(v0 - 232);

  sub_222DB4654();
}

uint64_t OUTLINED_FUNCTION_28_4(uint64_t a1, unint64_t a2)
{

  return sub_222D8F7F0(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_32_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_222DB734C()
{
  v0 = sub_222DDA1D0();
  v1 = OUTLINED_FUNCTION_2(v0);
  v56 = v2;
  v57 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  v54 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v50 - v11;
  v12 = sub_222DDAE20();
  v13 = OUTLINED_FUNCTION_2(v12);
  v51 = v14;
  v52 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v50 = sub_222DDAE40();
  v20 = OUTLINED_FUNCTION_2(v50);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  v27 = v26 - v25;
  v28 = sub_222DDB370();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_222DDB360();
  OUTLINED_FUNCTION_0_7();
  v31 = sub_222DDA520();
  OUTLINED_FUNCTION_4_7(v31);
  sub_222DDB2D0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_0_7();
  v32 = sub_222DDA4F0();
  OUTLINED_FUNCTION_3_6(v32);
  sub_222DDB290();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_0_7();
  v33 = sub_222DDA4E0();
  OUTLINED_FUNCTION_4_7(v33);
  sub_222DDB350();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_0_7();
  v34 = sub_222DDA510();
  OUTLINED_FUNCTION_3_6(v34);
  sub_222DDB2C0();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_0_7();
  v35 = sub_222DDA480();
  OUTLINED_FUNCTION_4_7(v35);
  sub_222DDB2A0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_0_7();
  v36 = sub_222DDA500();
  OUTLINED_FUNCTION_3_6(v36);
  sub_222DDB2B0();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_0_7();
  v37 = sub_222DDA4C0();
  OUTLINED_FUNCTION_4_7(v37);
  sub_222DDB320();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_0_7();
  v38 = sub_222DDA4B0();
  OUTLINED_FUNCTION_3_6(v38);
  sub_222DDB310();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_0_7();
  v39 = sub_222DDA450();
  OUTLINED_FUNCTION_4_7(v39);
  sub_222DDB2E0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_0_7();
  v40 = sub_222DDA4D0();
  OUTLINED_FUNCTION_3_6(v40);
  sub_222DDB330();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_0_7();
  sub_222DDA490();
  sub_222DDAE30();
  (*(v22 + 8))(v27, v50);
  OUTLINED_FUNCTION_5_6();
  sub_222DDB300();

  OUTLINED_FUNCTION_0_7();
  sub_222DDA470();
  sub_222DDAE10();
  (*(v51 + 8))(v19, v52);
  OUTLINED_FUNCTION_5_6();
  sub_222DDB2F0();

  v41 = sub_222DDB240();
  v42 = 1;
  v43 = v53;
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v41);
  sub_222DDB250();

  sub_222DB783C(v43);
  OUTLINED_FUNCTION_0_7();
  sub_222DDA440();
  OUTLINED_FUNCTION_5_6();
  sub_222DDB260();

  OUTLINED_FUNCTION_0_7();
  sub_222DDA440();
  OUTLINED_FUNCTION_5_6();
  sub_222DDB280();

  v44 = v54;
  OUTLINED_FUNCTION_0_7();
  sub_222DDA460();
  sub_222DDA1B0();
  v46 = v45;
  (*(v56 + 8))(v44, v57);
  v47 = v55;
  if (v46)
  {
    OUTLINED_FUNCTION_5_6();
    sub_222DDB210();
    v42 = 0;
  }

  __swift_storeEnumTagSinglePayload(v47, v42, 1, v41);
  sub_222DDB270();

  sub_222DB783C(v47);
  v48 = sub_222DDB340();

  return v48;
}

uint64_t sub_222DB783C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_5()
{
}

uint64_t OUTLINED_FUNCTION_7_4()
{
}

uint64_t sub_222DB79A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v15 = *v7;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_222DDA910();
  type metadata accessor for ShowContactViewBuilder();
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_4_8(inited, v19, v20, v21, v22, v23, v24, v25, v30, v31, *(&v31 + 1), v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  sub_222D93674(a4, &v31);
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = a7;
  *(v26 + 32) = v17;
  *(v26 + 40) = a5;
  *(v26 + 48) = a2;
  *(v26 + 56) = a3;
  sub_222D97C84(&v31, v26 + 64);
  *(v26 + 104) = a1;
  v27 = a1;

  v28 = v17;

  sub_222DB9918(MEMORY[0x277D84F90], sub_222DBA960, v26);
}

uint64_t sub_222DB7B3C(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, void *a9)
{
  v44 = a7;
  v46 = a5;
  v15 = sub_222DDB3B0();
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_222DDA770();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v50[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C80, &unk_222DDDFF0);
    swift_willThrowTypedImpl();
    sub_222DBA650();
    v23 = swift_allocError();
    *v24 = 0x4E73736572646461;
    v24[1] = 0xEF646E756F46746FLL;
    v50[0] = v23;
    v51 = 1;
    a3(v50);
    v25 = &unk_27D047F40;
    v26 = &unk_222DDE220;
  }

  else
  {
    v42 = a3;
    v43 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222DDC9C0;
    *(inited + 32) = 1699574633;
    *(inited + 40) = 0xE400000000000000;
    v29 = MEMORY[0x277D839B0];
    *(inited + 48) = a6 & 1;
    *(inited + 72) = v29;
    strcpy((inited + 80), "addressLabel");
    v30 = MEMORY[0x277D837D0];
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = v44;
    *(inited + 104) = a8;
    *(inited + 120) = v30;
    *(inited + 128) = 0x7453656369766564;
    *(inited + 136) = 0xEB00000000657461;
    v31 = a9[4];
    __swift_project_boxed_opaque_existential_1(a9, a9[3]);

    v32 = sub_222DB734C();
    v33 = sub_222DDB380();
    *(inited + 144) = v32;
    *(inited + 168) = v33;
    *(inited + 176) = 0x746361746E6F63;
    *(inited + 184) = 0xE700000000000000;
    v34 = a9[4];
    __swift_project_boxed_opaque_existential_1(a9, a9[3]);
    sub_222DDA760();
    LOBYTE(v32) = sub_222DDA4A0();
    (*(v19 + 8))(v22, v18);
    if (v32)
    {
      v35 = sub_222D8EEBC();
      v36 = sub_222DDB0D0();
    }

    else
    {
      *(inited + 200) = 0xE400000000000000;
      v36 = MEMORY[0x277D837D0];
      v35 = 1952540788;
    }

    v37 = v42;
    *(inited + 216) = v36;
    *(inited + 192) = v35;
    sub_222DDB1B0();
    sub_222DDB460();
    memset(v50, 0, sizeof(v50));
    sub_222D93674(a9, v49);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v43;
    sub_222D97C84(v49, v38 + 32);
    sub_222DDB180();

    v39 = sub_222DDB170();
    v40 = v45;
    sub_222DDB3A0();
    sub_222DDB190();

    (*(v47 + 8))(v40, v48);
    v25 = &qword_27D047BB8;
    v26 = &qword_222DDD430;
  }

  return sub_222DB6FC0(v50, v25, v26);
}

void sub_222DB7FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32_2();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_222DDA700();
  v28 = OUTLINED_FUNCTION_2(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v37 = OUTLINED_FUNCTION_4_6(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = (&a9 - v40);
  sub_222DBA6B4(v20, &a9 - v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *v26 = *v41;
  }

  else
  {
    (*(v30 + 32))(v35, v41, v27);
    v24(v35);
    (*(v30 + 8))(v35, v27);
  }

  *(v26 + 40) = EnumCaseMultiPayload == 1;
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DB816C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v15 = *v7;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_222DDA910();
  type metadata accessor for ShowContactViewBuilder();
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_4_8(inited, v19, v20, v21, v22, v23, v24, v25, v30, v31, *(&v31 + 1), v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  sub_222D93674(a4, &v31);
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = a7;
  *(v26 + 32) = v17;
  *(v26 + 40) = a5;
  *(v26 + 48) = a2;
  *(v26 + 56) = a3;
  sub_222D97C84(&v31, v26 + 64);
  v27 = a1;

  v28 = v17;

  sub_222DB9918(MEMORY[0x277D84F90], sub_222DBA8F8, v26);
}

uint64_t sub_222DB82F8(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, void *a9)
{
  v37 = a3;
  v38 = a4;
  v15 = sub_222DDB3B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v40[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C80, &unk_222DDDFF0);
    swift_willThrowTypedImpl();
    sub_222DBA650();
    v21 = swift_allocError();
    *v22 = 0xD000000000000013;
    v22[1] = 0x8000000222DE1010;
    v40[0] = v21;
    v41 = 1;
    v37(v40);
    v23 = &unk_27D047F40;
    v24 = &unk_222DDE220;
  }

  else
  {
    v36 = v18;
    v25 = sub_222DDB1B0();
    v35[2] = "invalidUserLocation";
    v35[3] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222DDDDA0;
    *(inited + 32) = 1699574633;
    *(inited + 40) = 0xE400000000000000;
    v27 = MEMORY[0x277D839B0];
    *(inited + 48) = a6 & 1;
    *(inited + 72) = v27;
    strcpy((inited + 80), "addressLabel");
    v28 = MEMORY[0x277D837D0];
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = a7;
    *(inited + 104) = a8;
    *(inited + 120) = v28;
    *(inited + 128) = 0x7453656369766564;
    *(inited + 136) = 0xEB00000000657461;
    v29 = a9[4];
    __swift_project_boxed_opaque_existential_1(a9, a9[3]);
    v35[1] = a5;

    v30 = sub_222DB734C();
    *(inited + 168) = sub_222DDB380();
    *(inited + 144) = v30;
    sub_222DDB460();
    memset(v40, 0, sizeof(v40));
    sub_222D93674(a9, v39);
    v31 = swift_allocObject();
    v32 = v38;
    *(v31 + 16) = v37;
    *(v31 + 24) = v32;
    sub_222D97C84(v39, v31 + 32);
    sub_222DDB180();

    v33 = sub_222DDB170();
    sub_222DDB3A0();
    sub_222DDB190();

    (*(v16 + 8))(v20, v36);
    v23 = &qword_27D047BB8;
    v24 = &qword_222DDD430;
  }

  return sub_222DB6FC0(v40, v23, v24);
}

uint64_t sub_222DB8684(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_222DB7FF8(a5, v10, a3, a4, a5, a6, a7, a8, v10[0], v10[1], a4, v10[3], v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7]);
  a2(v11);
  return sub_222DB6FC0(v11, &unk_27D047F40, &unk_222DDE220);
}

void sub_222DB86F8()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E70, &unk_222DDE010);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-v6];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_222DDA4C0();
  v9 = sub_222DDA660();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  v10 = sub_222DDA920();
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11 = MEMORY[0x277D5C1D8];
  v3[3] = v10;
  v3[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_222DDA600();
  sub_222DB6FC0(v12, &qword_27D047F80, &qword_222DE0010);
  sub_222DB6FC0(v7, &qword_27D047E70, &unk_222DDE010);
  OUTLINED_FUNCTION_36_1();
}

void sub_222DB8858()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v26 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v27 = sub_222DDB3B0();
  v11 = OUTLINED_FUNCTION_2(v27);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  sub_222DDB1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  v23 = OUTLINED_FUNCTION_0_8(inited, xmmword_222DDC9B0);
  v23[4].n128_u64[1] = MEMORY[0x277D837D0];
  v23[3].n128_u64[0] = v10;
  v23[3].n128_u64[1] = v8;

  sub_222DDB460();
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_222D93674(v6, v28);
  v24 = swift_allocObject();
  *(v24 + 16) = v26;
  *(v24 + 24) = v3;
  sub_222D97C84(v28, v24 + 32);
  sub_222DDB180();

  v25 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v13 + 8))(v18, v27);
  sub_222DB6FC0(v29, &qword_27D047BB8, &qword_222DDD430);
  OUTLINED_FUNCTION_36_1();
}

void sub_222DB8AE8()
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v28 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v30 = sub_222DDB3B0();
  v10 = OUTLINED_FUNCTION_2(v30);
  v29 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_222DDB1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_0_8(inited, xmmword_222DDDFD0);
  v22 = MEMORY[0x277D837D0];
  v21[3].n128_u64[0] = v9;
  v21[3].n128_u64[1] = v7;
  v21[4].n128_u64[1] = v22;
  v21[5].n128_u64[0] = 0x7453656369766564;
  v21[5].n128_u64[1] = v23 + 1792;
  v24 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);

  v25 = sub_222DB734C();
  inited[7].n128_u64[1] = sub_222DDB380();
  inited[6].n128_u64[0] = v25;
  sub_222DDB460();
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_222D93674(v5, v31);
  v26 = swift_allocObject();
  *(v26 + 16) = v28;
  *(v26 + 24) = v2;
  sub_222D97C84(v31, v26 + 32);
  sub_222DDB180();

  v27 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v29 + 8))(v16, v30);
  sub_222DB6FC0(v32, &qword_27D047BB8, &qword_222DDD430);
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DB8DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_222D93674(a1, v15);
  type metadata accessor for MissingMeCardViewBuilder();
  v11 = swift_allocObject();
  sub_222D97C84(v15, v11 + 16);
  *(v11 + 80) = &type metadata for InstalledAppsProvider;
  *(v11 + 88) = &off_28362CB10;
  sub_222D93674(a1, v15);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  sub_222D97C84(v15, (v12 + 5));

  v13 = v10;
  sub_222DB9E6C(MEMORY[0x277D84F90], sub_222DB9904, v12);
}

uint64_t sub_222DB8F40(uint64_t a1, char a2, void (*a3)(_OWORD *), uint64_t a4, void *a5, uint64_t a6)
{
  v12 = sub_222DDB3B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *&v28[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C80, &unk_222DDDFF0);
    swift_willThrowTypedImpl();
    sub_222DBA650();
    v17 = swift_allocError();
    *v18 = 0xD000000000000013;
    v18[1] = 0x8000000222DE0F30;
    *&v28[0] = v17;
    v30 = 1;
    a3(v28);
    v19 = &unk_27D047F40;
    v20 = &unk_222DDE220;
  }

  else
  {
    sub_222DDB1B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222DDC9B0;
    *(inited + 32) = 1699574633;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    sub_222DDB460();
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_222D93674(a6, v27);
    v22 = swift_allocObject();
    v22[2] = a5;
    sub_222D97C84(v27, (v22 + 3));
    v22[8] = a3;
    v22[9] = a4;
    sub_222DDB180();
    v23 = a5;

    v24 = sub_222DDB170();
    sub_222DDB3A0();
    sub_222DDB190();

    (*(v13 + 8))(v16, v12);
    v19 = &qword_27D047BB8;
    v20 = &qword_222DDD430;
  }

  return sub_222DB6FC0(v28, v19, v20);
}

uint64_t sub_222DB9230(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a2;
  v26 = a1;
  v31 = sub_222DDB3B0();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v25 - v14;
  v28 = sub_222DDB1B0();
  v27 = "nsupportedMissingMeCard";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDC9B0;
  *(inited + 32) = 0x656369766564;
  *(inited + 40) = 0xE600000000000000;
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v18 = sub_222DB734C();
  *(inited + 72) = sub_222DDB380();
  *(inited + 48) = v18;
  sub_222DDB460();
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_222DBA6B4(v26, v15);
  sub_222D93674(a3, v32);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_222DBA724(v15, v21 + v19);
  v22 = (v21 + v20);
  *v22 = v29;
  v22[1] = a5;
  sub_222D97C84(v32, v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  sub_222DDB180();

  v23 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v7 + 8))(v10, v31);
  return sub_222DB6FC0(v33, &qword_27D047BB8, &qword_222DDD430);
}

uint64_t sub_222DB9590(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E68, &qword_222DDE008);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (v24 - v14);
  v16 = sub_222DDA7B0();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v16);
  sub_222DB972C(a1, v11, v15);
  sub_222DB6FC0(v11, &qword_27D047E68, &qword_222DDE008);
  sub_222DB7FF8(sub_222DBA84C, v24, v17, v18, v19, v20, v21, v22, v24[0], v24[1], a5, v24[3], v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7]);
  a3(v25);
  sub_222DB6FC0(v25, &unk_27D047F40, &unk_222DDE220);
  return sub_222DB6FC0(v15, &unk_27D047F60, &qword_222DDE000);
}

uint64_t sub_222DB972C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = sub_222DDA700();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v18 - v15);
  sub_222DBA6B4(v4, &v18 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *v16;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    sub_222DBA404(v12, a1, a2, a3);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_222DB9918(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  swift_retain_n();
  sub_222D93674(v3 + 32, v32);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  swift_retain_n();
  v7 = sub_222DDA4F0();
  __swift_destroy_boxed_opaque_existential_0(v32);
  if (v7)
  {
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v8 = sub_222DDB3E0();
    __swift_project_value_buffer(v8, qword_27D04C910);
    v9 = sub_222DDB3C0();
    v10 = sub_222DDB6A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_222D8A000, v9, v10, "[IdiomSensitiveViewBuilder] Building views for Watch", v11, 2u);
      MEMORY[0x223DCEF40](v11, -1, -1);
    }

    sub_222DD9BF8(v4, a2, a3);
  }

  else
  {
    sub_222D93674(v4 + 32, v32);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v12 = sub_222DDA4E0();
    __swift_destroy_boxed_opaque_existential_0(v32);
    if (v12)
    {
      if (qword_27D0475A8 != -1)
      {
        swift_once();
      }

      v13 = sub_222DDB3E0();
      __swift_project_value_buffer(v13, qword_27D04C910);
      v14 = sub_222DDB3C0();
      v15 = sub_222DDB6A0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_222D8A000, v14, v15, "[IdiomSensitiveViewBuilder] Building views for Mac", v16, 2u);
        MEMORY[0x223DCEF40](v16, -1, -1);
      }

      sub_222DD9C04(v4, a2, a3);
    }

    else
    {
      sub_222D93674(v4 + 32, v32);
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v17 = sub_222DDA480();
      __swift_destroy_boxed_opaque_existential_0(v32);
      if (v17)
      {
        if (qword_27D0475A8 != -1)
        {
          swift_once();
        }

        v18 = sub_222DDB3E0();
        __swift_project_value_buffer(v18, qword_27D04C910);
        v19 = sub_222DDB3C0();
        v20 = sub_222DDB6A0();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_222D8A000, v19, v20, "[IdiomSensitiveViewBuilder] Building views for CarDND", v21, 2u);
          MEMORY[0x223DCEF40](v21, -1, -1);
        }

        sub_222DD9C1C(v4, a2, a3);
      }

      else
      {
        sub_222D93674(v4 + 32, v32);
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v22 = sub_222DDA510();
        __swift_destroy_boxed_opaque_existential_0(v32);
        if (v22)
        {
          if (qword_27D0475A8 != -1)
          {
            swift_once();
          }

          v23 = sub_222DDB3E0();
          __swift_project_value_buffer(v23, qword_27D04C910);
          v24 = sub_222DDB3C0();
          v25 = sub_222DDB6A0();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_222D8A000, v24, v25, "[IdiomSensitiveViewBuilder] Building views for CarPlay", v26, 2u);
            MEMORY[0x223DCEF40](v26, -1, -1);
          }

          sub_222DD9C10(v4, a2, a3);
        }

        else
        {
          if (qword_27D0475A8 != -1)
          {
            swift_once();
          }

          v27 = sub_222DDB3E0();
          __swift_project_value_buffer(v27, qword_27D04C910);
          v28 = sub_222DDB3C0();
          v29 = sub_222DDB6A0();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&dword_222D8A000, v28, v29, "[IdiomSensitiveViewBuilder] Building views for IOS", v30, 2u);
            MEMORY[0x223DCEF40](v30, -1, -1);
          }

          sub_222DD9C28(v4, a2, a3);
        }
      }
    }
  }
}

uint64_t sub_222DB9E6C(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  sub_222D93674(v3 + 16, v33);
  __swift_project_boxed_opaque_existential_1(v33, v34);
  swift_retain_n();
  v8 = sub_222DDA4F0();
  __swift_destroy_boxed_opaque_existential_0(v33);
  if (v8)
  {
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v9 = sub_222DDB3E0();
    __swift_project_value_buffer(v9, qword_27D04C910);
    v10 = sub_222DDB3C0();
    v11 = sub_222DDB6A0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222D8A000, v10, v11, "[IdiomSensitiveViewBuilder] Building views for Watch", v12, 2u);
      MEMORY[0x223DCEF40](v12, -1, -1);
    }

    sub_222DCA79C(v4, a2, a3);
  }

  else
  {
    sub_222D93674(v4 + 16, v33);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v13 = sub_222DDA4E0();
    __swift_destroy_boxed_opaque_existential_0(v33);
    if (v13)
    {
      if (qword_27D0475A8 != -1)
      {
        swift_once();
      }

      v14 = sub_222DDB3E0();
      __swift_project_value_buffer(v14, qword_27D04C910);
      v15 = sub_222DDB3C0();
      v16 = sub_222DDB6A0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_222D8A000, v15, v16, "[IdiomSensitiveViewBuilder] Building views for Mac", v17, 2u);
        MEMORY[0x223DCEF40](v17, -1, -1);
      }

      sub_222DCA7A8(sub_222DBA3F8, v7);
    }

    else
    {
      sub_222D93674(v4 + 16, v33);
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v18 = sub_222DDA480();
      __swift_destroy_boxed_opaque_existential_0(v33);
      if (v18)
      {
        if (qword_27D0475A8 != -1)
        {
          swift_once();
        }

        v19 = sub_222DDB3E0();
        __swift_project_value_buffer(v19, qword_27D04C910);
        v20 = sub_222DDB3C0();
        v21 = sub_222DDB6A0();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_222D8A000, v20, v21, "[IdiomSensitiveViewBuilder] Building views for CarDND", v22, 2u);
          MEMORY[0x223DCEF40](v22, -1, -1);
        }

        sub_222DCAA70(v4, a2, a3);
      }

      else
      {
        sub_222D93674(v4 + 16, v33);
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v23 = sub_222DDA510();
        __swift_destroy_boxed_opaque_existential_0(v33);
        if (v23)
        {
          if (qword_27D0475A8 != -1)
          {
            swift_once();
          }

          v24 = sub_222DDB3E0();
          __swift_project_value_buffer(v24, qword_27D04C910);
          v25 = sub_222DDB3C0();
          v26 = sub_222DDB6A0();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_222D8A000, v25, v26, "[IdiomSensitiveViewBuilder] Building views for CarPlay", v27, 2u);
            MEMORY[0x223DCEF40](v27, -1, -1);
          }

          sub_222DCAA64(v4, a2, a3);
        }

        else
        {
          if (qword_27D0475A8 != -1)
          {
            swift_once();
          }

          v28 = sub_222DDB3E0();
          __swift_project_value_buffer(v28, qword_27D04C910);
          v29 = sub_222DDB3C0();
          v30 = sub_222DDB6A0();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&dword_222D8A000, v29, v30, "[IdiomSensitiveViewBuilder] Building views for IOS", v31, 2u);
            MEMORY[0x223DCEF40](v31, -1, -1);
          }

          sub_222DCAB80(sub_222DBA3F8, v7);
        }
      }
    }
  }
}

void sub_222DBA404(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_222DDA700();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v21 - v18);
  sub_222DBA6B4(a2, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v19 = *v17;
  }

  else
  {
    (*(v9 + 32))(v12, v17, v8);
    sub_222DD7EE8(a3, v19);
    (*(v9 + 8))(v12, v8);
  }

  swift_storeEnumTagMultiPayload();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    (*(v9 + 16))(a4, a1, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v9 + 32))(a4, v19, v8);
    swift_storeEnumTagMultiPayload();
  }
}

unint64_t sub_222DBA650()
{
  result = qword_27D047E60;
  if (!qword_27D047E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047E60);
  }

  return result;
}

uint64_t sub_222DBA6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DBA724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DBA794(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_222DB9590(a1, v1 + v4, v8, v9, v1 + v6);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_222DBAA2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222DBAA6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_0_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x4E746361746E6F63;
  result[2].n128_u64[1] = 0xEB00000000656D61;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24)
{

  return sub_222DD9BD0(v25, v24, &a24);
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_222DB8684(a1, a2, a3, v9 + 32, v8, a6, a7, a8);
}

void sub_222DBAB24(void *a1, char a2, void (*a3)(void, void))
{
  LOBYTE(v4) = a2;
  v5 = a1;
  if (a2)
  {
    v6 = a1;
    v7 = v5;
  }

  else
  {
    v8 = sub_222DA8780(a1);
    v7 = MEMORY[0x277D84F90];
    if (v8)
    {
      v9 = v8;
      v37 = MEMORY[0x277D84F90];
      sub_222DA54C8(0, v8 & ~(v8 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return;
      }

      v33 = a3;
      v34 = v4;
      v10 = 0;
      v11 = v5 & 0xC000000000000001;
      v7 = v37;
      v35 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11)
        {
          v13 = MEMORY[0x223DCE590](v10, v5);
        }

        else
        {
          if (v10 >= *(v35 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v5 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = sub_222DA7B8C(v13, &selRef_encodedClassName);
        if (v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0x416E776F6E6B6E55;
        }

        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = 0xEE00776569566563;
        }

        v19 = sub_222DA7B8C(v14, &selRef_aceId);
        if (v20)
        {
          v21 = v19;
        }

        else
        {
          v21 = 7104878;
        }

        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0xE300000000000000;
        }

        MEMORY[0x223DCE2E0](0x3D64496563615BLL, 0xE700000000000000);
        MEMORY[0x223DCE2E0](v21, v22);

        MEMORY[0x223DCE2E0](93, 0xE100000000000000);

        a3 = v18;
        v37 = v7;
        v4 = v7[2];
        v23 = v7[3];
        if (v4 >= v23 >> 1)
        {
          sub_222DA54C8((v23 > 1), v4 + 1, 1);
          v7 = v37;
        }

        v7[2] = v4 + 1;
        v24 = &v7[2 * v4];
        v24[4] = v17;
        v24[5] = a3;
        ++v10;
        v5 = a1;
        if (v12 == v9)
        {
          LOBYTE(v4) = v34;
          a3 = v33;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

LABEL_27:
  if (qword_27D0475A8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v25 = sub_222DDB3E0();
  __swift_project_value_buffer(v25, qword_27D04C910);
  sub_222DBAEA4(v7, v4 & 1);
  v26 = sub_222DDB3C0();
  v27 = sub_222DDB6A0();
  sub_222DBAEB0(v7, v4 & 1);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315138;
    sub_222DBAEA4(v7, v4 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E78, "N=");
    v30 = sub_222DDB540();
    v32 = sub_222D8F7F0(v30, v31, &v37);
    v5 = a1;

    *(v28 + 4) = v32;
    _os_log_impl(&dword_222D8A000, v26, v27, "IdiomSensitiveViewBuilder: Built views: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x223DCEF40](v29, -1, -1);
    MEMORY[0x223DCEF40](v28, -1, -1);
  }

  a3(v5, v4 & 1);
  sub_222DBAEB0(v7, v4 & 1);
}

id sub_222DBAEA4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_222DBAEB0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_222DBAEBC(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = sub_222DDB460();
  v5 = [a3 dialogId];
  v6 = sub_222DDB630();

  v7 = 0;
  v8 = *(v6 + 16);
  while (2)
  {
    while (2)
    {
      for (i = 16 * v7 + 40; ; i += 16)
      {
        if (v8 == v7)
        {

          return v4;
        }

        if (v7 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v40 = *(v6 + i - 8);
        v41 = *(v6 + i);
        sub_222D8F710();
        v10 = sub_222DDB750();
        v11 = *(v10 + 16);
        if (v11)
        {
          break;
        }

        ++v7;
      }

      v12 = v10 + 16 * v11;
      v38 = *(v12 + 16);
      v39 = *(v12 + 24);

      v13 = [a3 print];
      v14 = sub_222DDB630();

      if (v7 >= *(v14 + 16))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v37 = a3;
      v15 = *(v14 + i - 8);
      v16 = *(v14 + i);

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = [v37 print];
        v19 = sub_222DDB630();

        if (v7 >= *(v19 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v20 = [v37 captionPrint];
        v19 = sub_222DDB630();

        if (v7 >= *(v19 + 16))
        {
          goto LABEL_28;
        }
      }

      v35 = *(v19 + i - 8);
      v36 = *(v19 + i);

      swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_222DCC9E4(v38, v39);
      if (__OFADD__(v4[2], (v22 & 1) == 0))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E80, &unk_222DDE0E8);
      if (sub_222DDB8E0())
      {
        v25 = sub_222DCC9E4(v38, v39);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_29;
        }

        v23 = v25;
      }

      ++v7;
      if (v24)
      {
        v27 = (v4[7] + 16 * v23);
        v28 = v27[1];
        *v27 = v35;
        v27[1] = v36;

        a3 = v37;
        continue;
      }

      break;
    }

    v4[(v23 >> 6) + 8] |= 1 << v23;
    v29 = (v4[6] + 16 * v23);
    *v29 = v38;
    v29[1] = v39;
    v30 = (v4[7] + 16 * v23);
    *v30 = v35;
    v30[1] = v36;
    v31 = v4[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      v4[2] = v33;
      a3 = v37;
      continue;
    }

    break;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_222DDBAF0();
  __break(1u);
  return result;
}

uint64_t Location.formattedPlaceName.getter()
{
  v0 = sub_222DDB3B0();
  v1 = OUTLINED_FUNCTION_2(v0);
  v163 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v5);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  OUTLINED_FUNCTION_28_2(v161);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_6(v148 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E88, &qword_222DDE0F8);
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_6(v148 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v19 = OUTLINED_FUNCTION_8(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_6(v148 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E90, &qword_222DDE108);
  OUTLINED_FUNCTION_8(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_6(v148 - v30);
  v168 = sub_222DDAE00();
  v31 = OUTLINED_FUNCTION_2(v168);
  v165 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E98, &qword_222DDE110);
  v37 = OUTLINED_FUNCTION_8(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_3();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = v148 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047EA0, &qword_222DDE118);
  v47 = OUTLINED_FUNCTION_8(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_3();
  v52 = v50 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = v148 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047EA8, &qword_222DDE120);
  OUTLINED_FUNCTION_8(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v59);
  v61 = v148 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047EB0, &qword_222DDE128);
  OUTLINED_FUNCTION_8(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v65);
  v67 = v148 - v66;
  v170 = sub_222DDAA40();
  v68 = OUTLINED_FUNCTION_2(v170);
  v167 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_7_6(v148 - v73);
  sub_222DDADA0();
  v74 = sub_222DDAC60();
  if (__swift_getEnumTagSinglePayload(v45, 1, v74) == 1)
  {
    v75 = &qword_27D047E98;
    v76 = &qword_222DDE110;
    v77 = v45;
LABEL_8:
    sub_222DA8300(v77, v75, v76);
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v170);
LABEL_9:
    v86 = qword_27D047EB0;
    v87 = &qword_222DDE128;
    v88 = v67;
LABEL_10:
    sub_222DA8300(v88, v86, v87);
    return 0;
  }

  v150 = v0;
  sub_222DDAC50();
  OUTLINED_FUNCTION_28_2(v74);
  v79 = *(v78 + 8);
  v79(v45, v74);
  v80 = sub_222DDA9B0();
  OUTLINED_FUNCTION_61_0(v55);
  if (v81)
  {
    v75 = &qword_27D047EA0;
    v76 = &qword_222DDE118;
    v77 = v55;
    goto LABEL_8;
  }

  v149 = v79;
  sub_222DDA990();
  OUTLINED_FUNCTION_2_7();
  v83 = *(v82 + 8);
  v148[1] = v82 + 8;
  v83(v55, v80);
  v84 = sub_222DDAA60();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v84);
  if (EnumTagSinglePayload == 1)
  {
    v75 = &qword_27D047EA8;
    v76 = &qword_222DDE120;
    v77 = v61;
    goto LABEL_8;
  }

  v148[0] = v83;
  sub_222DDAA50();
  OUTLINED_FUNCTION_28_2(v84);
  (*(v91 + 8))(v61, v84);
  v92 = v170;
  if (__swift_getEnumTagSinglePayload(v67, 1, v170) == 1)
  {
    goto LABEL_9;
  }

  v93 = v167;
  v94 = v169;
  (*(v167 + 32))(v169, v67, v92);
  sub_222DDADA0();
  if (__swift_getEnumTagSinglePayload(v42, 1, v74) == 1)
  {
    (*(v93 + 8))(v94, v92);
    v95 = &qword_27D047E98;
    v96 = &qword_222DDE110;
    v97 = v42;
LABEL_18:
    sub_222DA8300(v97, v95, v96);
    v98 = v166;
    __swift_storeEnumTagSinglePayload(v166, 1, 1, v168);
LABEL_19:
    v86 = &qword_27D047E90;
    v87 = &qword_222DDE108;
    v88 = v98;
    goto LABEL_10;
  }

  sub_222DDAC50();
  v149(v42, v74);
  OUTLINED_FUNCTION_61_0(v52);
  if (v81)
  {
    (*(v93 + 8))(v169, v92);
    v95 = &qword_27D047EA0;
    v96 = &qword_222DDE118;
    v97 = v52;
    goto LABEL_18;
  }

  v98 = v166;
  sub_222DDA9A0();
  (v148[0])(v52, v80);
  v99 = v168;
  v100 = __swift_getEnumTagSinglePayload(v98, 1, v168);
  v101 = v169;
  v102 = v93;
  if (v100 == 1)
  {
    (*(v93 + 8))(v169, v92);
    goto LABEL_19;
  }

  (*(v165 + 32))(v164, v98, v99);
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v103 = sub_222DDB3E0();
  __swift_project_value_buffer(v103, qword_27D04C910);
  v104 = *(v93 + 16);
  v105 = v151;
  v106 = v92;
  v104(v151, v101, v92);
  v107 = sub_222DDB3C0();
  v108 = sub_222DDB6B0();
  v109 = os_log_type_enabled(v107, v108);
  v110 = v154;
  if (v109)
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *&v171[0] = v112;
    *v111 = 136315138;
    v113 = sub_222DDAA30();
    v114 = v106;
    v116 = v115;
    v166 = *(v102 + 8);
    v166(v105, v114);
    v117 = sub_222D8F7F0(v113, v116, v171);

    *(v111 + 4) = v117;
    _os_log_impl(&dword_222D8A000, v107, v108, "About to set locationName with bounded value: %s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v112);
    MEMORY[0x223DCEF40](v112, -1, -1);
    MEMORY[0x223DCEF40](v111, -1, -1);
  }

  else
  {

    v166 = *(v102 + 8);
    v166(v105, v92);
  }

  v118 = v158;
  v119 = v153;
  v120 = v152;
  v121 = sub_222DDB040();
  v122 = *(v121 + 48);
  v123 = *(v121 + 52);
  swift_allocObject();
  sub_222DDB030();
  sub_222DDADE0();
  v124 = sub_222DDAA20();
  OUTLINED_FUNCTION_61_0(v120);
  v125 = v157;
  v126 = v156;
  if (v81)
  {
    sub_222DA8300(v120, &qword_27D047E88, &qword_222DDE0F8);
    v128 = 1;
  }

  else
  {
    sub_222DDAA10();
    OUTLINED_FUNCTION_2_7();
    (*(v127 + 8))();
    sub_222DDB210();
    v128 = 0;
  }

  sub_222DDB240();
  OUTLINED_FUNCTION_12_4(v119, v128);
  sub_222DDAFA0();

  sub_222DA8300(v119, &qword_27D0479C0, &qword_222DDE100);
  sub_222DDADF0();
  OUTLINED_FUNCTION_61_0(v110);
  if (v81)
  {
    sub_222DA8300(v110, &qword_27D047E88, &qword_222DDE0F8);
    v131 = 1;
    v130 = v155;
  }

  else
  {
    sub_222DDAA10();
    OUTLINED_FUNCTION_2_7();
    (*(v129 + 8))(v110, v124);
    v130 = v155;
    OUTLINED_FUNCTION_11_4();
    v131 = 0;
  }

  OUTLINED_FUNCTION_12_4(v130, v131);
  sub_222DDAFB0();

  sub_222DA8300(v130, &qword_27D0479C0, &qword_222DDE100);
  sub_222DDADD0();
  OUTLINED_FUNCTION_61_0(v126);
  if (v81)
  {
    sub_222DA8300(v126, &qword_27D047E88, &qword_222DDE0F8);
    v133 = 1;
  }

  else
  {
    sub_222DDAA10();
    OUTLINED_FUNCTION_2_7();
    (*(v132 + 8))(v126, v124);
    sub_222DDB210();
    v133 = 0;
  }

  OUTLINED_FUNCTION_12_4(v125, v133);
  sub_222DDAFC0();

  sub_222DA8300(v125, &qword_27D0479C0, &qword_222DDE100);
  sub_222DDADC0();
  OUTLINED_FUNCTION_61_0(v118);
  if (v81)
  {
    sub_222DA8300(v118, &qword_27D047E88, &qword_222DDE0F8);
    v136 = 1;
    v135 = v159;
  }

  else
  {
    sub_222DDAA10();
    OUTLINED_FUNCTION_2_7();
    (*(v134 + 8))(v118, v124);
    v135 = v159;
    OUTLINED_FUNCTION_11_4();
    v136 = 0;
  }

  OUTLINED_FUNCTION_12_4(v135, v136);
  sub_222DDAF90();

  sub_222DA8300(v135, &qword_27D0479C0, &qword_222DDE100);
  sub_222DDB000();

  v137 = sub_222DDB020();

  type metadata accessor for _BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v139 = [objc_opt_self() bundleForClass_];
  sub_222DDB1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDDFD0;
  *(inited + 32) = 0x746361746E6F63;
  *(inited + 40) = 0xE700000000000000;
  v141 = sub_222DDB0D0();
  *(inited + 48) = v137;
  *(inited + 72) = v141;
  strcpy((inited + 80), "addressLabel");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;

  v142 = v169;
  v143 = sub_222DDAA30();
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v143;
  *(inited + 104) = v144;
  sub_222DDB460();
  sub_222DDB180();
  memset(v171, 0, sizeof(v171));
  v172 = 0;
  v145 = sub_222DDB170();
  v146 = v160;
  sub_222DDB3A0();
  v147 = v162;
  sub_222DDB1A0();

  (*(v163 + 8))(v146, v150);
  sub_222DA8300(v171, &qword_27D047BB8, &qword_222DDD430);
  v89 = sub_222DDBBA0();

  sub_222DA8300(v147, &unk_27D047F60, &qword_222DDE000);
  (*(v165 + 8))(v164, v168);
  v166(v142, v170);
  return v89;
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_222DDB210();
}

uint64_t OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_222DBC2C0(uint64_t a1)
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

uint64_t sub_222DBC354()
{
  sub_222DDBB60();
  MEMORY[0x223DCE8B0](0);
  return sub_222DDBB90();
}

uint64_t sub_222DBC3A4()
{
  sub_222DDBB60();
  sub_222D8D8C8();
  return sub_222DDBB90();
}

uint64_t sub_222DBC3E0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_222DBC420(a1);
  return v5;
}

void sub_222DBC498()
{
  OUTLINED_FUNCTION_32_2();
  v85 = v2;
  v86 = v1;
  v83 = v3;
  v4 = *v0;
  v79 = v0;
  v5 = v4;
  v81 = sub_222DDA890();
  v6 = OUTLINED_FUNCTION_2(v81);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v80 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047F88, &qword_222DDE240);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v77 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047F90, &qword_222DDE248);
  v17 = OUTLINED_FUNCTION_4_6(v84);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (v77 - v20);
  v82 = sub_222DDA940();
  v22 = OUTLINED_FUNCTION_2(v82);
  v78 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  v29 = sub_222DDA900();
  v30 = OUTLINED_FUNCTION_2(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4();
  v37 = v36 - v35;
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v38 = sub_222DDB3E0();
  v77[1] = __swift_project_value_buffer(v38, qword_27D04C910);
  v39 = sub_222DDB3C0();
  v40 = sub_222DDB6B0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v77[0] = v16;
    v42 = v37;
    v43 = v28;
    v44 = v32;
    v45 = v8;
    v46 = v21;
    v47 = v29;
    v48 = v5;
    v49 = v41;
    *v41 = 0;
    _os_log_impl(&dword_222D8A000, v39, v40, "[LocationConfirmationStrategy::parseConfirmationResponse] called", v41, 2u);
    v50 = v49;
    v5 = v48;
    v29 = v47;
    v21 = v46;
    v8 = v45;
    v32 = v44;
    v28 = v43;
    v37 = v42;
    v16 = v77[0];
    MEMORY[0x223DCEF40](v50, -1, -1);
  }

  v51 = v83;
  sub_222DDA870();
  if ((*(v32 + 88))(v37, v29) == *MEMORY[0x277D5C158])
  {
    (*(v32 + 96))(v37, v29);
    v52 = *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48));

    v53 = v78 + 32;
    v54 = v82;
    (*(v78 + 32))(v28, v37, v82);
    v55 = *(*v79 + 96);
    v56 = (*(*(v5 + 88) + 32))(v28, *(v5 + 80));
    v57 = sub_222DDA790();
    OUTLINED_FUNCTION_4_6(v57);
    v59 = (v53 - 24);
    if (v56)
    {
      v60 = MEMORY[0x277D5BED8];
    }

    else
    {
      v60 = MEMORY[0x277D5BED0];
    }

    (*(v58 + 104))(v16, *v60, v57);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v57);
    sub_222DDA860();
    swift_storeEnumTagMultiPayload();
    v86(v21);
    sub_222DB6FC0(v21, &qword_27D047F90, &qword_222DDE248);
    (*v59)(v28, v54);
  }

  else
  {
    v61 = v80;
    v62 = v81;
    (*(v8 + 16))(v80, v51, v81);
    v63 = sub_222DDB3C0();
    v64 = sub_222DDB6B0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v83 = v29;
      v66 = v65;
      v82 = swift_slowAlloc();
      v87 = v82;
      *v66 = 136315138;
      sub_222DBE544();
      LODWORD(v79) = v64;
      v67 = sub_222DDBAB0();
      v68 = v62;
      v69 = v5;
      v71 = v70;
      (*(v8 + 8))(v61, v68);
      v72 = sub_222D8F7F0(v67, v71, &v87);
      v5 = v69;

      *(v66 + 4) = v72;
      _os_log_impl(&dword_222D8A000, v63, v79, "received unsupported parse %s", v66, 0xCu);
      v73 = v82;
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x223DCEF40](v73, -1, -1);
      v74 = v66;
      v29 = v83;
      MEMORY[0x223DCEF40](v74, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v61, v62);
    }

    v75 = *(v5 + 80);
    v76 = *(v5 + 88);
    type metadata accessor for LocationConfirmationStrategy.LocationConfirmationError();
    swift_getWitnessTable();
    *v21 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v86(v21);
    sub_222DB6FC0(v21, &qword_27D047F90, &qword_222DDE248);
    (*(v32 + 8))(v37, v29);
  }

  OUTLINED_FUNCTION_36_1();
}

void sub_222DBCB4C()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v43 = v2;
  v44 = v3;
  v5 = v4;
  v42 = *v0;
  v6 = sub_222DDB3B0();
  v7 = OUTLINED_FUNCTION_2(v6);
  v46 = v8;
  v47 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v45 = v12 - v11;
  v13 = sub_222DDADB0();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(MEMORY[0x277D47498]) init];
  v21 = sub_222DDAD90();
  if (v21)
  {
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_222DDD2F0;
    sub_222D9E3E4(0, &unk_27D047F50, 0x277D47478);
    v41 = v22;
    *(v23 + 32) = sub_222DD867C(v41, MEMORY[0x277D84F90]);
    v24 = sub_222DDB620();

    [v20 setItems_];

    v25 = *v1;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    v28 = sub_222DDB1B0();
    v40[1] = "83D0FACF4CA12_BundleClass";
    v40[2] = v28;
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    (*(v16 + 16))(v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v13);
    v29 = (*(v16 + 80) + 48) & ~*(v16 + 80);
    v30 = (v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v33 = v42;
    *(v32 + 2) = *(v42 + 80);
    *(v32 + 3) = *(v33 + 88);
    *(v32 + 4) = v27;
    *(v32 + 5) = v1;
    (*(v16 + 32))(&v32[v29], v19, v13);
    v34 = &v32[v30];
    v35 = v44;
    *v34 = v43;
    *(v34 + 1) = v35;
    *&v32[v31] = v20;
    v36 = v27;

    v37 = v20;
    sub_222DDB460();
    sub_222DDB180();
    v38 = sub_222DDB170();
    v39 = v45;
    sub_222DDB3A0();
    sub_222DDB190();

    (*(v46 + 8))(v39, v47);
    sub_222DB6FC0(v48, &qword_27D047BB8, &qword_222DDD430);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_222DBCF64(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(id *), uint64_t a6, void *a7)
{
  v39 = a4;
  v40 = a7;
  v47 = a6;
  v48 = a5;
  v42 = a3;
  v43 = a2;
  v41 = *a3;
  v46 = sub_222DDADB0();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222DDA700();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v37 - v18);
  sub_222DBA6B4(a1, &v37 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49[0] = *v19;
    v20 = v49[0];
    v50 = 1;
    v21 = v49[0];
    v48(v49);

    return sub_222DB6FC0(v49, &unk_27D047F40, &unk_222DDE220);
  }

  else
  {
    v37 = *(v11 + 32);
    v38 = v15;
    v37(v15, v19, v10);
    (*(v8 + 16))(v45, v39, v46);
    (*(v11 + 16))(v44, v15, v10);
    v23 = (*(v8 + 80) + 48) & ~*(v8 + 80);
    v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (*(v11 + 80) + v24 + 16) & ~*(v11 + 80);
    v26 = swift_allocObject();
    v27 = v41;
    v28 = v42;
    *(v26 + 2) = *(v41 + 80);
    v29 = *(v27 + 88);
    v41 = v10;
    v30 = v43;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    *(v26 + 5) = v28;
    (*(v8 + 32))(&v26[v23], v45, v46);
    v31 = &v26[v24];
    v32 = v47;
    *v31 = v48;
    *(v31 + 1) = v32;
    v33 = v41;
    v37(&v26[v25], v44, v41);
    v34 = v40;
    *&v26[(v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = v40;
    v35 = v30;

    v36 = v34;
    sub_222DDA5A0();

    return (*(v11 + 8))(v38, v33);
  }
}

uint64_t sub_222DBD32C(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(_OWORD *), uint64_t a8, uint64_t a9, void *a10)
{
  v57 = a7;
  v58 = a8;
  v49 = a6;
  v54 = a4;
  v55 = a1;
  v56 = a2;
  v51 = *a5;
  v52 = a5;
  v11 = sub_222DDB3B0();
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_222DDA700();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = sub_222DDADB0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    *&v59[0] = v55;
    v61 = 1;
    v22 = v55;
    v57(v59);
    v23 = &unk_27D047F40;
    v24 = &unk_222DDE220;
  }

  else
  {
    v46 = a10;
    v25 = v20;
    v43 = v20;
    v26 = sub_222DDB1B0();
    v47 = "riggerConfirmation";
    v48 = v26;
    v60 = 0;
    memset(v59, 0, sizeof(v59));
    (*(v18 + 16))(&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v25);
    v27 = *(v15 + 16);
    v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v14;
    v27(v45, a9, v14);
    v28 = *(v18 + 80);
    v49 = v11;
    v29 = (v28 + 56) & ~v28;
    v30 = (v19 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (*(v15 + 80) + v30 + 16) & ~*(v15 + 80);
    v32 = swift_allocObject();
    v33 = v51;
    v34 = v52;
    *(v32 + 2) = *(v51 + 80);
    v35 = v55;
    *(v32 + 3) = *(v33 + 88);
    *(v32 + 4) = v35;
    *(v32 + 5) = v56;
    *(v32 + 6) = v34;
    (*(v18 + 32))(&v32[v29], v21, v43);
    v36 = &v32[v30];
    v37 = v58;
    *v36 = v57;
    *(v36 + 1) = v37;
    (*(v15 + 32))(&v32[v31], v45, v44);
    v38 = v46;
    *&v32[(v16 + v31 + 7) & 0xFFFFFFFFFFFFFFF8] = v46;
    sub_222DBE51C(v35, v56, 0);

    v39 = v38;
    sub_222DDB460();
    sub_222DDB180();
    v40 = sub_222DDB170();
    v41 = v53;
    sub_222DDB3A0();
    sub_222DDB190();

    (*(v50 + 8))(v41, v49);
    v23 = &qword_27D047BB8;
    v24 = &qword_222DDD430;
  }

  return sub_222DB6FC0(v59, v23, v24);
}

uint64_t sub_222DBD798(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8, void *a9)
{
  v69 = a8;
  v67 = a5;
  v71 = a3;
  v70 = a2;
  v66 = *a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E70, &unk_222DDE010);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = v59 - v15;
  v65 = sub_222DDA5D0();
  *&v64 = *(v65 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_222DDA740();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_222DDA700();
  v73 = *(v74 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (v59 - v28);
  sub_222DBA6B4(a1, v59 - v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v79[0] = *v29;
    v30 = v79[0];
    v80 = 1;
    v31 = v79[0];
    a6(v79);

    return sub_222DB6FC0(v79, &unk_27D047F40, &unk_222DDE220);
  }

  v61 = a4;
  v62 = a7;
  v63 = a6;
  (*(v73 + 32))(v72, v29, v74);
  v32 = [objc_allocWithZone(MEMORY[0x277D47A38]) init];
  v33 = sub_222DDB4C0();
  [v32 setConfirmText_];

  result = sub_222DDA6F0();
  if (*(result + 16))
  {
    v70 = a9;
    (*(v20 + 16))(v23, result + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

    sub_222DDA730();
    (*(v20 + 8))(v23, v19);
    sub_222DDA5C0();
    (*(v64 + 8))(v18, v65);
    v35 = sub_222DDB4C0();

    [v32 setDenyText_];

    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
    v60 = v32;
    v36 = swift_allocObject();
    v64 = xmmword_222DDD2F0;
    *(v36 + 16) = xmmword_222DDD2F0;
    v59[1] = sub_222D9E3E4(0, &unk_27D047F70, 0x277D477C0);
    v37 = *(*v61 + 96);
    v38 = *(v66 + 88);
    v66 = *(v66 + 80);
    v39 = *(v38 + 56);
    v65 = v37;
    v40 = v67;
    v41 = v39(v67, 1);
    *(v36 + 32) = sub_222DD99A0(v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048870, &unk_222DDE230);
    v43 = sub_222DDB620();

    v44 = v60;
    [v60 setConfirmCommands_];

    v45 = swift_allocObject();
    *(v45 + 16) = v64;
    v46 = v40;
    v47 = v66;
    v48 = (v39)(v46, 0, v66, v38);
    *(v45 + 32) = sub_222DD99A0(v48, v49);
    v50 = sub_222DDB620();

    [v44 setDenyCommands_];

    sub_222DDA910();
    sub_222DDA910();
    __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    sub_222DDA4C0();
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_222DDE150;
    v52 = v70;
    *(v51 + 32) = v70;
    *(v51 + 40) = v44;
    v53 = *(v38 + 64);
    v54 = v52;
    v55 = v44;
    v56 = v68;
    v53(MEMORY[0x277D84F90], v47, v38);
    v57 = sub_222DDA660();
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
    v58 = sub_222DDA920();
    memset(v75, 0, sizeof(v75));
    v76 = 0;
    v79[3] = v58;
    v79[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v79);
    sub_222DDA5E0();

    sub_222DB6FC0(v75, &qword_27D047F80, &qword_222DE0010);
    sub_222DB6FC0(v56, &qword_27D047E70, &unk_222DDE010);
    __swift_destroy_boxed_opaque_existential_0(v78);
    __swift_destroy_boxed_opaque_existential_0(v77);
    v80 = 0;
    v63(v79);

    (*(v73 + 8))(v72, v74);
    return sub_222DB6FC0(v79, &unk_27D047F40, &unk_222DDE220);
  }

  __break(1u);
  return result;
}

uint64_t sub_222DBDFB8(void (*a1)(_BYTE *))
{
  sub_222DDA550();
  sub_222DDA540();
  v3[40] = 0;
  a1(v3);
  return sub_222DB6FC0(v3, &unk_27D047F40, &unk_222DDE220);
}

uint64_t sub_222DBE02C(void *a1, void (*a2)(void *))
{
  v5[0] = a1;
  v6 = 1;
  v3 = a1;
  a2(v5);
  return sub_222DB6FC0(v5, &unk_27D047F40, &unk_222DDE220);
}

uint64_t sub_222DBE0FC()
{
  sub_222DBE08C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DBE1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a4 + 80);
  v11 = *(a4 + 88);
  v12 = type metadata accessor for LocationConfirmationStrategy();

  return a6(a1, a2, a3, v12, a5);
}

uint64_t sub_222DBE260(uint64_t a1)
{
  v3 = sub_222DDADB0();
  OUTLINED_FUNCTION_10_1(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  OUTLINED_FUNCTION_4_9();
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = v1 + v11;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v1 + v12);

  return sub_222DBCF64(a1, v13, v14, v1 + v10, v16, v17, v18);
}

uint64_t sub_222DBE300(void *a1, uint64_t a2, char a3)
{
  v7 = sub_222DDADB0();
  OUTLINED_FUNCTION_10_1(v7);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_222DDA700();
  OUTLINED_FUNCTION_10_1(v12);
  v14 = v13;
  v16 = v15;
  v17 = (v11 + *(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = *(v16 + 64);
  OUTLINED_FUNCTION_4_9();
  return sub_222DBD32C(a1, a2, a3 & 1, *(v3 + 32), *(v3 + 40), v3 + v9, *(v3 + v11), *(v3 + v11 + 8), v3 + v20, *(v3 + v19));
}

uint64_t sub_222DBE418(uint64_t a1)
{
  v3 = sub_222DDADB0();
  OUTLINED_FUNCTION_10_1(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_222DDA700();
  OUTLINED_FUNCTION_10_1(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v7 + *(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = *(v12 + 64);
  OUTLINED_FUNCTION_4_9();
  return sub_222DBD798(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v5, *(v1 + v7), *(v1 + v7 + 8), v1 + v16, *(v1 + v15));
}

id sub_222DBE51C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_222DBE544()
{
  result = qword_27D047F98;
  if (!qword_27D047F98)
  {
    sub_222DDA890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047F98);
  }

  return result;
}

_BYTE *sub_222DBE59C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_222DDA700();
}

void *sub_222DBE6A0(uint64_t a1)
{
  result = sub_222DC19D0(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_222DC1A10(&v5, result, v3, 0, a1);
  }
}

void sub_222DBE730(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    v5 = sub_222DDADB0();
    v6 = a4;
    v7 = 1;
  }

  else
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
      return;
    }

    v10 = sub_222DDADB0();
    (*(*(v10 - 8) + 16))(a4, a1 + *(*(v10 - 8) + 72) * a2, v10);
    v6 = a4;
    v7 = 0;
    v5 = v10;
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
}

uint64_t sub_222DBE82C(char a1)
{
  sub_222DDBB60();
  MEMORY[0x223DCE8B0](a1 & 1);
  return sub_222DDBB90();
}

uint64_t sub_222DBE890()
{
  sub_222DDBB60();
  sub_222DBE804(v2, *v0);
  return sub_222DDBB90();
}

uint64_t sub_222DBE8D0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_222DBE910();
  return v3;
}

uint64_t sub_222DBE910()
{
  OUTLINED_FUNCTION_8_4();
  (*(*(*(v2 + 80) - 8) + 32))(v0 + *(v1 + 96));
  return v0;
}

void sub_222DBE980()
{
  OUTLINED_FUNCTION_32_2();
  v71 = v2;
  v72 = v1;
  v69 = v3;
  v67 = v0;
  v4 = *v0;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0480F8, &unk_222DDE440);
  OUTLINED_FUNCTION_4_6(v70);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480B8, &unk_222DDE400) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v66 = &v63 - v12;
  v68 = sub_222DDADB0();
  v13 = OUTLINED_FUNCTION_2(v68);
  v65 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v64 = v18 - v17;
  v73 = sub_222DDA940();
  v19 = OUTLINED_FUNCTION_2(v73);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  v27 = sub_222DDA900();
  v28 = OUTLINED_FUNCTION_2(v27);
  v74 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4();
  v34 = v33 - v32;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v35 = sub_222DDB3E0();
  __swift_project_value_buffer(v35, qword_27D04C910);
  v36 = sub_222DDB3C0();
  v37 = sub_222DDB6B0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v63 = v34;
    v39 = v26;
    v40 = v4;
    v41 = v21;
    v42 = v38;
    *v38 = 0;
    _os_log_impl(&dword_222D8A000, v36, v37, "[LocationDisambiguationStrategy::parseDisambiguationResult] called", v38, 2u);
    v43 = v42;
    v21 = v41;
    v4 = v40;
    v26 = v39;
    v34 = v63;
    MEMORY[0x223DCEF40](v43, -1, -1);
  }

  sub_222DDA870();
  v44 = v74;
  if ((*(v74 + 88))(v34, v27) == *MEMORY[0x277D5C158])
  {
    (*(v44 + 96))(v34, v27);
    v45 = *(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48));

    (*(v21 + 32))(v26, v34, v73);
    v46 = *(*v67 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480F0, &qword_222DDE438);
    sub_222DDA7D0();
    v47 = *(v4 + 80);
    v48 = v66;
    (*(*(v4 + 88) + 40))();

    v49 = v68;
    if (__swift_getEnumTagSinglePayload(v48, 1, v68) == 1)
    {
      sub_222DB6FC0(v48, &qword_27D0480B8, &unk_222DDE400);
      type metadata accessor for LocationDisambiguationStrategy.Error();
      OUTLINED_FUNCTION_0_10();
      swift_getWitnessTable();
      v50 = OUTLINED_FUNCTION_12_5();
      *v51 = 1;
      OUTLINED_FUNCTION_11_5(v50);
      v72(v9);
      sub_222DB6FC0(v9, qword_27D0480F8, &unk_222DDE440);
    }

    else
    {
      v62 = v64;
      v61 = v65;
      (*(v65 + 32))(v64, v48, v49);
      sub_222DDA7A0();
      swift_storeEnumTagMultiPayload();
      v72(v9);
      sub_222DB6FC0(v9, qword_27D0480F8, &unk_222DDE440);
      (*(v61 + 8))(v62, v49);
    }

    (*(v21 + 8))(v26, v73);
  }

  else
  {
    v52 = sub_222DDB3C0();
    v53 = sub_222DDB6B0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v4;
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_222D8A000, v52, v53, "received unsupported parse", v55, 2u);
      v56 = v55;
      v4 = v54;
      MEMORY[0x223DCEF40](v56, -1, -1);
    }

    v57 = *(v4 + 80);
    v58 = *(v4 + 88);
    type metadata accessor for LocationDisambiguationStrategy.Error();
    OUTLINED_FUNCTION_0_10();
    swift_getWitnessTable();
    v59 = OUTLINED_FUNCTION_12_5();
    *v60 = 0;
    OUTLINED_FUNCTION_11_5(v59);
    v72(v9);
    sub_222DB6FC0(v9, qword_27D0480F8, &unk_222DDE440);
    (*(v74 + 8))(v34, v27);
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DBEFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480F0, &qword_222DDE438);
  v6 = sub_222DDA7D0();
  OUTLINED_FUNCTION_10_6();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = a2;
  v7[5] = a3;

  sub_222DC0C80(v6, sub_222DC19B4, v7);
}

uint64_t sub_222DBF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_222DC005C();
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a1;

  sub_222DC0554();
}

uint64_t sub_222DBF14C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v51 = a6;
  v50 = a5;
  v45[1] = a4;
  v47 = a2;
  v48 = a3;
  v8 = *a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E70, &unk_222DDE010);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v45 - v11;
  v13 = sub_222DDA770();
  v46 = *(v13 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_222DDA700();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (v45 - v24);
  sub_222DBA6B4(a1, v45 - v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(v8 + 80);
    v27 = *(v8 + 88);
    type metadata accessor for LocationDisambiguationStrategy.Error();
    swift_getWitnessTable();
    v28 = swift_allocError();
    *v29 = 0;
    v56[0] = v28;
    v59 = 1;
    v50(v56);
    sub_222DB6FC0(v56, &unk_27D047F40, &unk_222DDE220);
    v30 = &unk_27D047F60;
    v31 = &qword_222DDE000;
    v32 = v25;
  }

  else
  {
    v45[0] = v18;
    (*(v18 + 32))(v21, v25, v17);
    sub_222DDA910();
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v33 = sub_222DDA510();
    __swift_destroy_boxed_opaque_existential_0(v56);
    if (v33)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_222DDD2F0;
      v47 = sub_222DDA390();
      sub_222DDA910();
      __swift_project_boxed_opaque_existential_1(v56, v57);
      sub_222DDA760();
      v35 = sub_222DDA4A0();
      (*(v46 + 8))(v16, v13);
      __swift_destroy_boxed_opaque_existential_0(v56);
      v36 = MEMORY[0x223DCD140](v47, (v35 & 1) == 0);

      *(v34 + 32) = v36;
      v37 = v45[0];
    }

    else
    {
      sub_222DDA910();
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v38 = sub_222DDA4F0();
      __swift_destroy_boxed_opaque_existential_0(v56);
      if (v38)
      {
        sub_222DDA390();
        sub_222DDA910();
        __swift_project_boxed_opaque_existential_1(v56, v57);
        sub_222DDA4C0();
        v39 = sub_222DDA420();

        __swift_destroy_boxed_opaque_existential_0(v56);
      }

      else
      {
        sub_222DBF8D0();
        v39 = v40;
      }

      v37 = v45[0];
      sub_222DDA340();
      v41 = v39;
      sub_222DDA910();
      sub_222DDA300();
      __swift_destroy_boxed_opaque_existential_0(v56);
      sub_222DDA320();

      sub_222DDA310();

      sub_222DDA330();
    }

    sub_222DDA910();
    sub_222DDA910();
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    sub_222DDA4C0();
    sub_222DC04E0(v49);
    v42 = sub_222DDA660();
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v42);
    v43 = sub_222DDA920();
    memset(v52, 0, sizeof(v52));
    v53 = 0;
    v57 = v43;
    v58 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v56);
    sub_222DDA5F0();

    sub_222DB6FC0(v52, &qword_27D047F80, &qword_222DE0010);
    sub_222DB6FC0(v12, &qword_27D047E70, &unk_222DDE010);
    __swift_destroy_boxed_opaque_existential_0(v55);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v59 = 0;
    v50(v56);
    (*(v37 + 8))(v21, v17);
    v30 = &unk_27D047F40;
    v31 = &unk_222DDE220;
    v32 = v56;
  }

  return sub_222DB6FC0(v32, v30, v31);
}

uint64_t sub_222DBF814(void (*a1)(void *))
{
  OUTLINED_FUNCTION_8_4();
  v3 = *(v2 + 80);
  v5 = *(v4 + 88);
  type metadata accessor for LocationDisambiguationStrategy.Error();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  v6 = swift_allocError();
  *v7 = 0;
  v9[0] = v6;
  v10 = 1;
  a1(v9);
  return sub_222DB6FC0(v9, &unk_27D047F40, &unk_222DDE220);
}

void sub_222DBF8D0()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v4 = sub_222DDA190();
  v5 = OUTLINED_FUNCTION_2(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v52 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480D0, &unk_222DDE428);
  OUTLINED_FUNCTION_4_6(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = (&v50 - v15);
  v17 = 0;
  v18 = *(v3 + 16);
  v19 = MEMORY[0x277D84F90];
  while (v18 != v17)
  {
    if (v17 >= v18)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v20 = *(sub_222DDADB0() - 8);
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_7_7(v20);
    v24 = *(v11 + 48);
    *v16 = v17;
    v25(v16 + v24, v22 + v23 * v17);
    v26 = sub_222DBFD14(v17, v16 + v24, v1);
    v28 = v27;
    sub_222DB6FC0(v16, &qword_27D0480D0, &unk_222DDE428);
    ++v17;
    if (v26)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = *(v19 + 16);
        sub_222DD7668();
        v19 = v33;
      }

      v29 = *(v19 + 16);
      v30 = v29 + 1;
      if (v29 >= *(v19 + 24) >> 1)
      {
        v51 = v29 + 1;
        sub_222DD7668();
        v30 = v51;
        v19 = v34;
      }

      *(v19 + 16) = v30;
      v31 = v19 + 16 * v29;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v17 = v21;
    }
  }

  v35 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  v36 = v52;
  sub_222DDA180();
  sub_222DDA170();
  (*(v53 + 8))(v36, v54);
  v37 = sub_222DDB4C0();

  [v35 setCardId_];

  v38 = *(v19 + 16);
  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    v55 = MEMORY[0x277D84F90];
    sub_222DDB8B0();
    v40 = (v19 + 32);
    v41 = v38;
    do
    {
      v42 = *v40;
      v40 += 2;
      v43 = v42;
      sub_222DDB890();
      v44 = *(v55 + 16);
      sub_222DDB8C0();
      sub_222DDB8D0();
      sub_222DDB8A0();
      --v41;
    }

    while (v41);
  }

  sub_222D9E3E4(0, &qword_27D0480D8, 0x277D4C238);
  v45 = sub_222DDB620();

  [v35 setCardSections_];

  v46 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  if (!v38)
  {
LABEL_18:

    sub_222D9E3E4(0, &qword_27D0480E0, 0x277D47200);
    sub_222DDB690();

    OUTLINED_FUNCTION_36_1();
    return;
  }

  v55 = v39;
  sub_222DDB8B0();
  v47 = 0;
  v48 = 40;
  while (v47 < *(v19 + 16))
  {
    ++v47;
    *(v19 + v48);
    sub_222DDB890();
    v49 = *(v55 + 16);
    sub_222DDB8C0();
    sub_222DDB8D0();
    sub_222DDB8A0();
    v48 += 16;
    if (v38 == v47)
    {
      goto LABEL_18;
    }
  }

LABEL_21:
  __break(1u);
}

void *sub_222DBFD14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = sub_222DDA190();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222DDAD90();
  v13 = v12;
  if (!v12)
  {
    return 0;
  }

  v14 = [v12 _geoMapItem];

  if (!v14)
  {
    return 0;
  }

  v15 = [v14 _placeDataAsData];
  if (!v15)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v34 = sub_222DDA130();
  v35 = v14;
  v17 = v16;

  v18 = [objc_allocWithZone(MEMORY[0x277D4C450]) init];
  v33 = a1;
  v19 = v18;
  v20 = sub_222DDA110();
  [v19 setMapsData_];

  v21 = *(*a3 + 96);
  v22 = (*(*(v6 + 88) + 48))(a2, v33, *(v6 + 80));
  v24 = v23;
  sub_222D9E3E4(0, &unk_27D047F70, 0x277D477C0);
  v25 = sub_222DD99A0(v22, v24);
  sub_222DDA180();
  sub_222DDA170();
  (*(v8 + 8))(v11, v7);
  v26 = sub_222DDB4C0();

  [v25 setAceId_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_222DDD2F0;
  v28 = v25;
  v29 = sub_222DDA570();

  *(v27 + 32) = v29;
  sub_222D9E3E4(0, &qword_27D0480E8, 0x277D4C1A0);
  v30 = sub_222DDB620();

  [v19 setCommands_];
  sub_222D9322C(v34, v17);

  swift_unknownObjectRelease();
  return v19;
}

void sub_222DC005C()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480C8, &unk_222DDE418);
  OUTLINED_FUNCTION_4_6(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = (&v29 - v10);
  v12 = 0;
  v29 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v13 = *(v5 + 16);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      OUTLINED_FUNCTION_3_4();
      goto LABEL_11;
    }

    v14 = *(sub_222DDA700() - 8);
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_7_7(v14);
    v18 = *(v6 + 48);
    *v11 = v12;
    v19(v11 + v18, v16 + v17 * v12);
    v20 = sub_222DC02E4(v12, v11 + v18, v1, v3);
    v21 = sub_222DB6FC0(v11, &qword_27D0480C8, &unk_222DDE418);
    ++v12;
    if (v20)
    {
      MEMORY[0x223DCE350](v21);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222DDB640();
      }

      sub_222DDB660();
      v29 = v30;
      v12 = v15;
    }
  }

  if (sub_222DA8780(v29) == v13)
  {
    goto LABEL_14;
  }

  if (qword_27D0475A8 != -1)
  {
    goto LABEL_17;
  }

LABEL_11:
  v22 = sub_222DDB3E0();
  __swift_project_value_buffer(v22, qword_27D04C910);
  v23 = sub_222DDB3C0();
  v24 = sub_222DDB6C0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_222D8A000, v23, v24, "TemplatingResult::print::first returned nil, so the list of SiriKitDisambiguationItem is incomplete", v25, 2u);
    MEMORY[0x223DCEF40](v25, -1, -1);
  }

LABEL_14:
  v26 = sub_222DDA3B0();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_222DDA3A0();
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC02E4(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = sub_222DDA6E0();
  if (v8[2])
  {
    v9 = v8[4];
    v10 = v8[5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_222DDD2F0;
    sub_222DDA3F0();
    sub_222DDA3C0();

    sub_222DDA3D0();

    v12 = sub_222DDA3E0();

    *(v11 + 32) = v12;
    v14 = *(*a3 + 96);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a4 + 16) > a1)
    {
      v15 = *(sub_222DDADB0() - 8);
      (*(*(v7 + 88) + 48))(a4 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * a1, a1, *(v7 + 80));
      v16 = sub_222DDA370();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      return sub_222DDA360();
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_222DC04E0(uint64_t a1)
{
  v2 = *(*(*v1 + 88) + 64);
  v3 = *(*v1 + 80);
  v4 = v1 + *(*v1 + 96);
  return v2(a1, v3);
}

uint64_t sub_222DC0554()
{
  sub_222DDA910();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_222DDA4B0();
  v0 = sub_222DDA380();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDC9C0;
  *(inited + 32) = 0x656D614E746F6C73;
  *(inited + 40) = 0xE800000000000000;
  v2 = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x8000000222DE11E0;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000222DE1200;
  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v2;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x8000000222DE1220;
  v3 = sub_222DDA390();
  v4 = sub_222DA8780(v3);

  v5 = MEMORY[0x277D83B88];
  *(inited + 144) = v4;
  *(inited + 168) = v5;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x8000000222DE1240;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480C0, &qword_222DDE410);
  *(inited + 192) = v0;
  sub_222DDB460();
  sub_222DC073C();
}

void sub_222DC073C()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_222DDB3B0();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  sub_222DDB1B0();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  OUTLINED_FUNCTION_10_6();
  v22 = swift_allocObject();
  v22[2] = v9;
  v22[3] = v7;
  v22[4] = v5;
  v22[5] = v3;
  sub_222DDB180();

  v23 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v13 + 8))(v18, v10);
  sub_222DB6FC0(v24, &qword_27D047BB8, &qword_222DDD430);
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC0928(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *))
{
  v27 = a2;
  v7 = sub_222DDA700();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v27 - v17);
  sub_222DBA6B4(a1, &v27 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v20 = sub_222DDB3E0();
    __swift_project_value_buffer(v20, qword_27D04C910);

    v21 = sub_222DDB3C0();
    v22 = sub_222DDB6C0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_222D8F7F0(v27, a3, &v28);
      _os_log_impl(&dword_222D8A000, v21, v22, "Failed to execute cat with id: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223DCEF40](v24, -1, -1);
      MEMORY[0x223DCEF40](v23, -1, -1);
    }

    *v16 = v19;
    swift_storeEnumTagMultiPayload();
    v25 = v19;
    a4(v16);

    return sub_222DB6FC0(v16, &unk_27D047F60, &qword_222DDE000);
  }

  else
  {
    (*(v8 + 32))(v11, v18, v7);
    (*(v8 + 16))(v16, v11, v7);
    swift_storeEnumTagMultiPayload();
    a4(v16);
    sub_222DB6FC0(v16, &unk_27D047F60, &qword_222DDE000);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_222DC0C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_222DC18B4(0, *(a1 + 16), a1);
  sub_222DC0CE8(v5, v6, v7, v8, MEMORY[0x277D84F90], a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_222DC0FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a5;
  v43 = a6;
  v40 = a4;
  v41 = a9;
  v13 = sub_222DDA700();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v38 - v20);
  sub_222DBA6B4(a1, &v38 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v23 = sub_222DDB3E0();
    __swift_project_value_buffer(v23, qword_27D04C910);
    v24 = v22;
    v25 = sub_222DDB3C0();
    v26 = sub_222DDB6C0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v22;
      v45 = v39;
      *v27 = 136315138;
      v28 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C80, &unk_222DDDFF0);
      v29 = sub_222DDB540();
      v31 = a8;
      v32 = sub_222D8F7F0(v29, v30, &v45);

      *(v27 + 4) = v32;
      a8 = v31;
      _os_log_impl(&dword_222D8A000, v25, v26, "LocationResolutionFlow templatingError: %s", v27, 0xCu);
      v33 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x223DCEF40](v33, -1, -1);
      MEMORY[0x223DCEF40](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    swift_beginAccess();
    sub_222DC1828();
    v34 = *(*(a2 + 16) + 16);
    sub_222DC1874(v34);
    v35 = *(a2 + 16);
    *(v35 + 16) = v34 + 1;
    (*(v14 + 16))(v35 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v34, v17, v13);
    *(a2 + 16) = v35;
    swift_endAccess();
    (*(v14 + 8))(v17, v13);
  }

  swift_beginAccess();
  v36 = *(a2 + 16);

  sub_222DC0CE8(v40, v42, v43, a7, v36, a8, v41);
}

void sub_222DC1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32_2();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = *v20;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  OUTLINED_FUNCTION_4_6(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = (&a9 - v30);
  v32 = *(v25 + 80);
  v33 = *(v25 + 88);
  sub_222DC1528(0);
  v34 = sub_222DDAD90();
  if (v34)
  {
    v35 = v34;
    sub_222DCBFEC(v34);
    sub_222DC073C();

    OUTLINED_FUNCTION_36_1();
  }

  else
  {

    sub_222DC17D4();
    v37 = swift_allocError();
    *v38 = 0;
    *v31 = v37;
    swift_storeEnumTagMultiPayload();
    v24(v31);
    sub_222DB6FC0(v31, &unk_27D047F60, &qword_222DDE000);
    OUTLINED_FUNCTION_36_1();
  }
}

unint64_t sub_222DC1528(char a1)
{
  v1 = sub_222DC1584(a1);
  MEMORY[0x223DCE2E0](v1);

  return 0xD000000000000013;
}

unint64_t sub_222DC1584(char a1)
{
  result = 0x54746361746E6F43;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_222DC1628()
{
  OUTLINED_FUNCTION_8_4();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 96));
  return v0;
}

uint64_t sub_222DC1690()
{
  sub_222DC1628();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DC1750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a4 + 80);
  v11 = *(a4 + 88);
  v12 = type metadata accessor for LocationDisambiguationStrategy();

  return a6(a1, a2, a3, v12, a5);
}

unint64_t sub_222DC17D4()
{
  result = qword_27D0480B0;
  if (!qword_27D0480B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0480B0);
  }

  return result;
}

size_t sub_222DC1828()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_222DD772C(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_222DC1874(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_222DD772C(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

unint64_t sub_222DC18B4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_222DDADB0() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_222DC19D0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_222DDB7A0();
  v4 = *(a1 + 36);
  return result;
}

void *sub_222DC1A10(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = (*(a5 + 56) + 16 * a2);
    v9 = v8[1];
    *result = *v8;
    result[1] = v9;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_222DC1AA8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_222DC1B30(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222DC1C10()
{
  result = qword_27D048180;
  if (!qword_27D048180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048180);
  }

  return result;
}

void OUTLINED_FUNCTION_7_7(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  v2 = a1 + 16;
  v4 = v1 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
  v5 = *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1)
{
  *v1 = a1;
  v4 = *(v2 - 120);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return swift_allocError();
}

uint64_t LocationResolutionErrorFlowProvider.makeFlow(forError:)(uint64_t a1)
{
  v2 = sub_222DDA950();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v74[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D55FC8])
  {
    v8 = OUTLINED_FUNCTION_2_8();
    v9(v8);
    v10 = *v6;
    v11 = v6[1];
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v12 = sub_222DDB3E0();
    v13 = OUTLINED_FUNCTION_12_6(v12, qword_27D04C910);
    v14 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_26_3(v14))
    {
      v15 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v15);
      OUTLINED_FUNCTION_32_3(&dword_222D8A000, v16, v17, "contact not found");
      OUTLINED_FUNCTION_6_6();
    }

    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x277D55FD8])
  {
    v21 = OUTLINED_FUNCTION_2_8();
    v22(v21);
    v23 = *v6;
    v24 = *(v6 + 8);
    v25 = v6[2];
    v26 = v6[3];
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v27 = sub_222DDB3E0();
    v28 = OUTLINED_FUNCTION_12_6(v27, qword_27D04C910);
    v29 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_26_3(v29))
    {
      v30 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v30);
      OUTLINED_FUNCTION_32_3(&dword_222D8A000, v31, v32, "address not present");
      OUTLINED_FUNCTION_6_6();
    }

LABEL_13:

    OUTLINED_FUNCTION_10_7();
    v33 = swift_allocObject();
    v34 = OUTLINED_FUNCTION_4_10(v33);
    sub_222DDA7C0();
    v35 = sub_222DDA240();
    OUTLINED_FUNCTION_8_5(v35);
    *&v75 = sub_222DDA230();
    v20 = sub_222DDA2B0();

    return v20;
  }

  if (v7 == *MEMORY[0x277D55FE0])
  {
    v37 = OUTLINED_FUNCTION_2_8();
    v38(v37);
    v39 = *v6;
    v40 = v6[1];
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v41 = sub_222DDB3E0();
    v13 = OUTLINED_FUNCTION_12_6(v41, qword_27D04C910);
    v42 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_26_3(v42))
    {
      v43 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v43);
      OUTLINED_FUNCTION_32_3(&dword_222D8A000, v44, v45, "location geocode error for multiple contacts");
      OUTLINED_FUNCTION_6_6();
    }

    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x277D55FB8])
  {
    v46 = OUTLINED_FUNCTION_2_8();
    v47(v46);
    v48 = *v6;
    v49 = *(v6 + 8);
    v50 = v6[2];
    v51 = v6[3];
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v52 = sub_222DDB3E0();
    v28 = OUTLINED_FUNCTION_12_6(v52, qword_27D04C910);
    v53 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_26_3(v53))
    {
      v54 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v54);
      OUTLINED_FUNCTION_32_3(&dword_222D8A000, v55, v56, "location geocode error");
      OUTLINED_FUNCTION_6_6();
    }

    goto LABEL_13;
  }

  if (v7 != *MEMORY[0x277D55FC0])
  {
    if (v7 != *MEMORY[0x277D55FD0])
    {
      OUTLINED_FUNCTION_10_7();
      v71 = swift_allocObject();
      v72 = v76;
      *(v71 + 16) = v75;
      *(v71 + 32) = v72;
      *(v71 + 48) = v77;
      sub_222DDA7C0();
      v73 = sub_222DDA240();
      OUTLINED_FUNCTION_8_5(v73);
      *&v75 = sub_222DDA230();
      v20 = sub_222DDA2B0();

      (*(v3 + 8))(v6, v2);
      return v20;
    }

    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v66 = sub_222DDB3E0();
    v67 = OUTLINED_FUNCTION_12_6(v66, qword_27D04C910);
    v68 = sub_222DDB6B0();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = OUTLINED_FUNCTION_43_0();
      *v69 = 0;
      _os_log_impl(&dword_222D8A000, v67, v68, "me card not present", v69, 2u);
      MEMORY[0x223DCEF40](v69, -1, -1);
    }

    sub_222DDA7C0();
    v70 = sub_222DDA240();
    OUTLINED_FUNCTION_8_5(v70);
    *&v75 = sub_222DDA230();
    v20 = sub_222DDA2B0();
    goto LABEL_7;
  }

  v57 = OUTLINED_FUNCTION_2_8();
  v58(v57);
  v59 = *v6;
  v60 = v6[1];
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v61 = sub_222DDB3E0();
  v13 = OUTLINED_FUNCTION_12_6(v61, qword_27D04C910);
  v62 = sub_222DDB6B0();
  if (OUTLINED_FUNCTION_26_3(v62))
  {
    v63 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_50_1(v63);
    OUTLINED_FUNCTION_32_3(&dword_222D8A000, v64, v65, "location geocode error for multiple contacts");
    OUTLINED_FUNCTION_6_6();
  }

LABEL_6:

  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_11_6();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_1_5(v18);
  v19 = sub_222DDA240();
  OUTLINED_FUNCTION_8_5(v19);
  *&v75 = sub_222DDA230();
  v20 = sub_222DDA2B0();
LABEL_7:

  return v20;
}

uint64_t sub_222DC249C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GenericViews();
  swift_initStackObject();
  sub_222DDA910();
  sub_222DB8DE0(v5, a1, a2);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_222DC2508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for GenericViews();
  swift_initStackObject();
  return a8(a3, a4, a5, a6, a7, a1, a2);
}

uint64_t sub_222DC25A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for GenericViews();
  swift_initStackObject();
  return a6(a3, a4, a5, a1, a2);
}

uint64_t sub_222DC2620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222DC26BC(a3, v8);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v8[1];
  *(v5 + 32) = v8[0];
  *(v5 + 48) = v6;
  *(v5 + 64) = v9;

  sub_222DDA590();
}

uint64_t sub_222DC26FC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_222DB7FF8(sub_222DC2A58, v10, a3, a4, a5, a6, a7, a8, v10[0], v10[1], a4, v10[3], v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7]);
  a2(v11);
  return sub_222D8F1B0(v11, &unk_27D047F40, &unk_222DDE220);
}

uint64_t sub_222DC2780@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E70, &unk_222DDE010);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222DDA4C0();
  v9 = sub_222DDA660();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  v10 = sub_222DDA920();
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v11 = MEMORY[0x277D5C1D8];
  a2[3] = v10;
  a2[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_222DDA600();
  sub_222D8F1B0(v13, &qword_27D047F80, &qword_222DE0010);
  return sub_222D8F1B0(v7, &qword_27D047E70, &unk_222DDE010);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t objectdestroy_2Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  __swift_destroy_boxed_opaque_existential_0((v1 + 32));
  OUTLINED_FUNCTION_11_6();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v5 = *(v3 - 88);
  *(a1 + 32) = *(v3 - 104);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(v3 - 72);

  return sub_222DDA7C0();
}

id OUTLINED_FUNCTION_4_10(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  v7 = *(v5 - 88);
  *(a1 + 40) = *(v5 - 104);
  *(a1 + 56) = v7;
  *(a1 + 72) = *(v5 - 72);
  *(a1 + 80) = v2;

  return v1;
}

void OUTLINED_FUNCTION_6_6()
{

  JUMPOUT(0x223DCEF40);
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return sub_222DC26BC(v0, v1 - 104);
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_222DDB3C0();
}

uint64_t sub_222DC2B5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_34_4();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_5_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_34_4();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_34_4();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for LocationResolverFlow.State();
  OUTLINED_FUNCTION_4_6(v10);
  return (*(v11 + 16))(a1, &v1[v5]);
}

uint64_t sub_222DC2C04(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_34_4();
  v5 = *(v4 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_34_4();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_34_4();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for LocationResolverFlow.State();
  OUTLINED_FUNCTION_4_6(v10);
  (*(v11 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_222DC2CB8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  v4 = *(v3 + 136);
  OUTLINED_FUNCTION_5_6();
  swift_beginAccess();
  return sub_222DB706C(v1 + v4, a1);
}

uint64_t sub_222DC2D14(uint64_t a1)
{
  OUTLINED_FUNCTION_22_3();
  v4 = *(v3 + 136);
  swift_beginAccess();
  sub_222DB7128(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t sub_222DC2D7C()
{
  OUTLINED_FUNCTION_22_3();
  v2 = *(v0 + *(v1 + 144));
}

uint64_t sub_222DC2DA4()
{
  OUTLINED_FUNCTION_22_3();
  v2 = *(v1 + 144);
  v3 = *(v0 + v2);
  *(v0 + v2) = v4;
}

uint64_t LocationResolverFlow.__allocating_init(nextFlow:resolutionStrategy:locale:timeZone:)()
{
  OUTLINED_FUNCTION_48_3();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_46_3();
  LocationResolverFlow.init(nextFlow:resolutionStrategy:locale:timeZone:)();
  return v0;
}

char *LocationResolverFlow.init(nextFlow:resolutionStrategy:locale:timeZone:)()
{
  OUTLINED_FUNCTION_48_3();
  v5 = *v1;
  v6 = *(*v1 + 136);
  v7 = sub_222DDA940();
  __swift_storeEnumTagSinglePayload(&v1[v6], 1, 1, v7);
  OUTLINED_FUNCTION_22_3();
  *&v1[*(v8 + 144)] = 0;
  *(v1 + 2) = v4;
  OUTLINED_FUNCTION_22_3();
  v10 = *(v9 + 104);
  v11 = sub_222DDADB0();
  __swift_storeEnumTagSinglePayload(&v1[v10], 1, 3, v11);
  OUTLINED_FUNCTION_22_3();
  (*(*(*(v5 + 80) - 8) + 32))(&v1[*(v12 + 128)], v3);
  OUTLINED_FUNCTION_22_3();
  v14 = *(v13 + 112);
  v15 = sub_222DDA1D0();
  OUTLINED_FUNCTION_4_6(v15);
  (*(v16 + 32))(&v1[v14], v2);
  OUTLINED_FUNCTION_22_3();
  v18 = *(v17 + 120);
  v19 = sub_222DDA220();
  OUTLINED_FUNCTION_4_6(v19);
  (*(v20 + 32))(&v1[v18], v0);
  return v1;
}

void sub_222DC2FE4()
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32_4();
  v49 = v8;
  OUTLINED_FUNCTION_10_4();
  v9 = sub_222DDA940();
  v10 = OUTLINED_FUNCTION_2(v9);
  v50 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_6();
  v48 = v14;
  OUTLINED_FUNCTION_10_4();
  v51 = sub_222DDA900();
  v15 = OUTLINED_FUNCTION_2(v51);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v22 = v21 - v20;
  v23 = *(v3 + 80);
  v24 = *(v3 + 88);
  v25 = type metadata accessor for LocationResolverFlow.State();
  OUTLINED_FUNCTION_4_6(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v30 = v46 - v29;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v31 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v31, qword_27D04C910);

  v32 = sub_222DDB3C0();
  v33 = sub_222DDB6B0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_29_4();
    v47 = v9;
    v35 = v34;
    v36 = OUTLINED_FUNCTION_25_2();
    v46[1] = v2;
    v37 = v36;
    v52 = v36;
    *v35 = 136315138;
    sub_222DC2B5C(v30);
    v38 = sub_222DDB540();
    v40 = sub_222D8F7F0(v38, v39, &v52);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_222D8A000, v32, v33, "state of LocationResolverFlow: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_48_2();
    v9 = v47;
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DDA870();
  v41 = v51;
  if ((*(v17 + 88))(v22, v51) == *MEMORY[0x277D5C158])
  {
    (*(v17 + 96))(v22, v41);
    v42 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48));
    v43 = v50;
    v44 = v48;
    (*(v50 + 32))(v48, v22, v9);
    v45 = v49;
    (*(v43 + 16))(v49, v44, v9);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v9);
    sub_222DC2D14(v45);

    sub_222DC2DA4();

    (*(v43 + 8))(v44, v9);
  }

  else
  {
    (*(v17 + 8))(v22, v41);
  }

  OUTLINED_FUNCTION_36_1();
}

void sub_222DC33C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32_2();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v194 = v26;
  v195 = v27;
  v28 = *v20;
  v29 = sub_222DDA650();
  v30 = OUTLINED_FUNCTION_2(v29);
  v191 = v31;
  v192 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_6();
  v190 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D048188, &unk_222DDE630);
  v185 = OUTLINED_FUNCTION_2(v35);
  v186 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_32_4();
  v184 = v40;
  OUTLINED_FUNCTION_10_4();
  v179 = sub_222DDAB90();
  v41 = OUTLINED_FUNCTION_2(v179);
  v178 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_8_6(v45);
  v177 = sub_222DDAC20();
  v46 = OUTLINED_FUNCTION_2(v177);
  v176 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480B8, &unk_222DDE400);
  OUTLINED_FUNCTION_8(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25_3();
  v55 = sub_222DDADB0();
  v187 = OUTLINED_FUNCTION_2(v55);
  v188 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_44_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_8_6(v61);
  v62 = sub_222DDAB10();
  v63 = OUTLINED_FUNCTION_2(v62);
  v181 = v64;
  v182 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_2_6();
  v183 = v67;
  v68 = *(v28 + 80);
  v69 = *(v28 + 88);
  OUTLINED_FUNCTION_50_2();
  v70 = type metadata accessor for LocationResolverFlow.State();
  OUTLINED_FUNCTION_8(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v73);
  v75 = &v171 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  v77 = OUTLINED_FUNCTION_8(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_5_3();
  v82 = v80 - v81;
  MEMORY[0x28223BE20](v83);
  v85 = &v171 - v84;
  v86 = sub_222DDA940();
  v87 = OUTLINED_FUNCTION_2(v86);
  v193 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_2_6();
  v189 = v91;
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_50_2();
  v196[3] = type metadata accessor for LocationResolverFlow.FeatureFlags();
  v196[4] = swift_getWitnessTable();
  LOBYTE(v28) = sub_222DDA930();
  __swift_destroy_boxed_opaque_existential_0(v196);
  if (v28)
  {
    sub_222DC2CB8(v85);
    OUTLINED_FUNCTION_27_5(v85, 1, v86);
    if (v92)
    {
      sub_222DB6FC0(v85, &qword_27D047CF0, &unk_222DDDE10);
      if (qword_27D0475A8 != -1)
      {
        OUTLINED_FUNCTION_3_4();
      }

      v93 = sub_222DDB3E0();
      OUTLINED_FUNCTION_63_0(v93, qword_27D04C910);
      v94 = sub_222DDB3C0();
      v95 = sub_222DDB6C0();
      if (OUTLINED_FUNCTION_34_2(v95))
      {
        v96 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_19_1(v96);
        OUTLINED_FUNCTION_5_5(&dword_222D8A000, v97, v98, "nlIntent is nil in LocationResolverFlow::execute, returning early");
        OUTLINED_FUNCTION_16_1();
      }

      v99 = v25[2];
      sub_222DC4034();
      OUTLINED_FUNCTION_16_3();

      v194(v21);
      v100 = OUTLINED_FUNCTION_42_3();
    }

    else
    {
      v109 = v86;
      v110 = *(v193 + 32);
      v111 = v189;
      v172 = v109;
      v110(v189, v85);
      v112 = *(*v25 + 128);
      v113 = *(v69 + 16);
      OUTLINED_FUNCTION_50_2();
      if (v114())
      {
        sub_222DC2B5C(v75);
        v115 = v187;
        switch(__swift_getEnumTagSinglePayload(v75, 3, v187))
        {
          case 1u:
            sub_222DC4998(v194, v195, v116, v117, v118, v119, v120, v121, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
            break;
          case 2u:
            v134 = v183;
            sub_222DDAB00();
            v135 = v172;
            (*(v193 + 16))(v82, v111, v172);
            __swift_storeEnumTagSinglePayload(v82, 0, 1, v135);
            v136 = *(v69 + 24);
            OUTLINED_FUNCTION_50_2();
            v137();
            v138 = v187;
            sub_222DB6FC0(v82, &qword_27D047CF0, &unk_222DDDE10);
            OUTLINED_FUNCTION_61_0(v21);
            if (!v92)
            {
              v147 = v188 + 32;
              v148 = *(v188 + 32);
              v149 = v180;
              v148(v180, v21, v138);
              v150 = v174;
              sub_222DC44C8(v174);
              v151 = v175;
              sub_222DDAB80();
              v154 = sub_222DDAAE0();
              OUTLINED_FUNCTION_20_4(&a16);
              v155(v151, v179);
              OUTLINED_FUNCTION_20_4(&a14);
              v156(v150, v177);
              KeyPath = swift_getKeyPath();
              v158 = *(v154 + 16);
              if (v158)
              {
                v191 = v148;
                v192 = KeyPath;
                v196[0] = MEMORY[0x277D84F90];
                sub_222DA5528();
                v159 = v196[0];
                v190 = *(v186 + 16);
                v160 = (*(v186 + 80) + 32) & ~*(v186 + 80);
                v178 = v154;
                v161 = v154 + v160;
                v179 = *(v186 + 72);
                v186 += 16;
                v162 = (v186 - 8);
                v163 = v187;
                v164 = v173;
                do
                {
                  v165 = v147;
                  v167 = v184;
                  v166 = v185;
                  v190(v184, v161, v185);
                  swift_getAtKeyPath();
                  (*v162)(v167, v166);
                  v196[0] = v159;
                  v168 = *(v159 + 16);
                  if (v168 >= *(v159 + 24) >> 1)
                  {
                    sub_222DA5528();
                    v163 = v187;
                    v159 = v196[0];
                  }

                  *(v159 + 16) = v168 + 1;
                  v169 = v159 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v168;
                  v147 = v165;
                  v191(v169, v164, v163);
                  OUTLINED_FUNCTION_51_0();
                  v161 += v170;
                  --v158;
                }

                while (v158);

                v134 = v183;
                v149 = v180;
              }

              else
              {
              }

              sub_222DC63B4();

              (*(v188 + 8))(v149, v187);
              (*(v181 + 8))(v134, v182);
              v102 = *(v193 + 8);
              v100 = v189;
              goto LABEL_23;
            }

            sub_222DB6FC0(v21, &qword_27D0480B8, &unk_222DDE400);
            if (qword_27D0475A8 != -1)
            {
              OUTLINED_FUNCTION_3_4();
            }

            v139 = sub_222DDB3E0();
            OUTLINED_FUNCTION_63_0(v139, qword_27D04C910);
            v140 = sub_222DDB3C0();
            v141 = sub_222DDB6C0();
            if (OUTLINED_FUNCTION_34_2(v141))
            {
              v142 = OUTLINED_FUNCTION_43_0();
              OUTLINED_FUNCTION_19_1(v142);
              OUTLINED_FUNCTION_5_5(&dword_222D8A000, v143, v144, "no location node present in the intent, skipping to nextFlow");
              OUTLINED_FUNCTION_16_1();
            }

            v145 = v25[2];
            sub_222DC4034();
            OUTLINED_FUNCTION_16_3();

            v194(v21);
            v146 = OUTLINED_FUNCTION_42_3();
            v153(v146, v152);
            (*(v181 + 8))(v134, v182);
            break;
          case 3u:
            sub_222DC8E2C(v194);
            break;
          default:
            v122 = v188;
            (*(v188 + 32))(v22, v75, v115);
            sub_222DC6BCC(v22, v194, v195, v123, v124, v125, v126, v127, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
            (*(v122 + 8))(v22, v115);
            break;
        }
      }

      else
      {
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4();
        }

        v128 = sub_222DDB3E0();
        OUTLINED_FUNCTION_63_0(v128, qword_27D04C910);
        v129 = sub_222DDB3C0();
        v130 = sub_222DDB6B0();
        if (OUTLINED_FUNCTION_34_2(v130))
        {
          v131 = OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_19_1(v131);
          OUTLINED_FUNCTION_5_5(&dword_222D8A000, v132, v133, "resolutionStrategy.shouldResolve returned false, returning early");
          OUTLINED_FUNCTION_16_1();
        }

        sub_222DC8854();
      }

      v102 = *(v193 + 8);
      v100 = v111;
LABEL_23:
      v101 = v172;
    }

    v102(v100, v101);
  }

  else
  {
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v103 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v103, qword_27D04C910);
    v104 = sub_222DDB3C0();
    v105 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_34_2(v105))
    {
      v106 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v106);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v107, v108, "native location resolution is disabled, returning early");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222DC8854();
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC40B4(uint64_t a1)
{
  v2 = sub_222DDADB0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D048188, &unk_222DDE630);
  return sub_222DDAC40();
}

void sub_222DC4194()
{
  OUTLINED_FUNCTION_32_2();
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for LocationResolverFlow.State();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_3();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  sub_222DC2B5C(&v33 - v14);
  sub_222DDADB0();
  v16 = OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_27_5(v16, 3, v0);
  if (v17)
  {
    __swift_storeEnumTagSinglePayload(v12, 3, 3, v0);
    sub_222DC2C04(v12);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v18 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v18, qword_27D04C910);

    v19 = sub_222DDB3C0();
    v20 = sub_222DDB6B0();

    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_29_4();
      v21 = OUTLINED_FUNCTION_37_3();
      v34 = v21;
      *v1 = 136315138;
      sub_222DC2B5C(v12);
      v22 = sub_222DDB540();
      v24 = sub_222D8F7F0(v22, v23, &v34);

      *(v1 + 4) = v24;
      _os_log_impl(&dword_222D8A000, v19, v20, "[LocationResolverFlow::onFlowCompletion] setting state to %s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_48_2();
    }
  }

  else
  {
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v25 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v25, qword_27D04C910);

    v26 = sub_222DDB3C0();
    v27 = sub_222DDB6C0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_29_4();
      v29 = OUTLINED_FUNCTION_25_2();
      v34 = v29;
      *v28 = 136315138;
      sub_222DC2B5C(v12);
      v30 = sub_222DDB540();
      v32 = sub_222D8F7F0(v30, v31, &v34);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_222D8A000, v26, v27, "[LocationResolverFlow::onFlowCompletion] unexpected state: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_48_2();
    }

    (*(v7 + 8))(v15, v4);
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC44C8@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v29[0] = sub_222DDA220();
  v3 = OUTLINED_FUNCTION_2(v29[0]);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = sub_222DDA1D0();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_3();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_44_3();
  MEMORY[0x28223BE20](v21);
  v23 = v29 - v22;
  sub_222DC46D4();
  OUTLINED_FUNCTION_22_3();
  v25 = *(v24 + 112);
  v26 = *(v14 + 16);
  v26(v23, v1 + v25, v11);
  v26(v2, v1 + v25, v11);
  v26(v19, v1 + v25, v11);
  OUTLINED_FUNCTION_22_3();
  (*(v5 + 16))(v10, v1 + *(v27 + 120), v29[0]);
  return sub_222DDAC10();
}

double sub_222DC46D4()
{
  v0 = type metadata accessor for LocationService();
  v1 = OUTLINED_FUNCTION_4_6(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  sub_222DDA430();
  if (qword_27D0475A0 != -1)
  {
    swift_once();
  }

  v7 = sub_222DDB3F0();
  v8 = __swift_project_value_buffer(v7, qword_27D04C8F8);
  (*(*(v7 - 8) + 16))(v6 + *(v0 + 20), v8, v7);
  v9 = sub_222DC98E0();
  if (v9)
  {
    v10 = v9;
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v11 = sub_222DDB3E0();
    __swift_project_value_buffer(v11, qword_27D04C910);
    v12 = v10;
    v13 = sub_222DDB3C0();
    v14 = sub_222DDB6B0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218240;
      [v12 lat];
      *(v15 + 4) = v16;
      *(v15 + 12) = 2048;
      [v12 lng];
      *(v15 + 14) = v17;
      _os_log_impl(&dword_222D8A000, v13, v14, "latitude: %f, longitude: %f", v15, 0x16u);
      OUTLINED_FUNCTION_48_2();
    }

    [v12 lat];
    v19 = v18;
    [v12 lng];
  }

  else
  {
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v20 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v20, qword_27D04C910);
    v12 = sub_222DDB3C0();
    v21 = sub_222DDB6C0();
    v19 = 0.0;
    if (os_log_type_enabled(v12, v21))
    {
      v22 = OUTLINED_FUNCTION_43_0();
      *v22 = 0;
      _os_log_impl(&dword_222D8A000, v12, v21, "did not get location information from LocationService", v22, 2u);
      OUTLINED_FUNCTION_48_2();
    }
  }

  sub_222DB6F18(v6);
  return v19;
}

void sub_222DC4998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32_2();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v210 = v27;
  v208 = *v20;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048310, &qword_222DDE800);
  OUTLINED_FUNCTION_8(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_8_6(v32);
  v202 = sub_222DDA950();
  v33 = OUTLINED_FUNCTION_2(v202);
  v194 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_8_6(v37);
  v198 = sub_222DDA650();
  v38 = OUTLINED_FUNCTION_2(v198);
  v197 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v42);
  v43 = *(v208 + 80);
  v190 = *(v43 - 8);
  v44 = *(v190 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_7_6(v46);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048318, &unk_222DDE808);
  v47 = OUTLINED_FUNCTION_2(v203);
  v199 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_3();
  v53 = (v51 - v52);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_10_5();
  v205 = v56;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_24_5();
  v206 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v62);
  v64 = &v186 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480B8, &unk_222DDE400);
  OUTLINED_FUNCTION_8(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_25_3();
  v69 = sub_222DDADB0();
  v70 = OUTLINED_FUNCTION_2(v69);
  v212 = v71;
  v213 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7_6(&v186 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_7_6(v75);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_7_6(v77);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_24_5();
  v209 = v79;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v200 = v53;
  v80 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v80, qword_27D04C910);

  v211 = v20;
  v81 = sub_222DDB3C0();
  v82 = sub_222DDB6B0();

  v83 = os_log_type_enabled(v81, v82);
  v207 = v43;
  if (v83)
  {
    v204 = v26;
    v84 = OUTLINED_FUNCTION_29_4();
    v85 = OUTLINED_FUNCTION_25_2();
    v215[0] = v85;
    *v84 = 136315138;
    if (sub_222DC2D7C())
    {
      v86 = sub_222DDA8B0();
    }

    else
    {
      v86 = 0;
    }

    v214 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E18, &qword_222DDDF88);
    v87 = sub_222DDB540();
    v89 = sub_222D8F7F0(v87, v88, v215);

    *(v84 + 4) = v89;
    _os_log_impl(&dword_222D8A000, v81, v82, "handling initialized state intent: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v85);
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_48_2();

    v26 = v204;
    v43 = v207;
  }

  else
  {
  }

  v90 = *(*v20 + 128);
  sub_222DC2CB8(v64);
  v91 = *(v208 + 88);
  (*(v91 + 24))(v64, v43, v91);
  sub_222DB6FC0(v64, &qword_27D047CF0, &unk_222DDDE10);
  v92 = v213;
  OUTLINED_FUNCTION_27_5(v21, 1, v213);
  if (v93)
  {
    sub_222DB6FC0(v21, &qword_27D0480B8, &unk_222DDE400);
    v94 = sub_222DDB3C0();
    v95 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_34_2(v95))
    {
      v96 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v96);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v97, v98, "no location node present in the intent, skipping to nextFlow");
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_36_2();
  }

  else
  {
    v100 = v212 + 32;
    v99 = *(v212 + 32);
    v99(v209, v21, v92);
    v101 = v205;
    sub_222DC61BC();
    v202 = v99;
    v204 = v26;
    v102 = v199;
    v103 = v206;
    v104 = v203;
    (*(v199 + 32))(v206, v101, v203);
    v105 = *(v102 + 16);
    v205 = v102 + 16;
    v201 = v105;
    v105(v195, v103, v104);
    v106 = sub_222DDB3C0();
    v107 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_54_2(v107))
    {
      v109 = OUTLINED_FUNCTION_29_4();
      v193 = v100;
      v110 = v109;
      v194 = OUTLINED_FUNCTION_25_2();
      v215[0] = v194;
      *v110 = 136315138;
      sub_222DB7024(&qword_27D048320, &qword_27D048318, &unk_222DDE808);
      v187 = v106;
      v111 = sub_222DDBAB0();
      HIDWORD(v186) = v107;
      v113 = v112;
      v114 = OUTLINED_FUNCTION_45_2();
      v115(v114);
      v116 = sub_222D8F7F0(v111, v113, v215);

      *(v110 + 4) = v116;
      v117 = v187;
      _os_log_impl(&dword_222D8A000, v187, BYTE4(v186), "recommendation: %s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v194);
      OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_48_2();

      v118 = v213;
      v119 = v104;
    }

    else
    {

      v121 = OUTLINED_FUNCTION_45_2();
      v122(v121);
      v119 = v104;
      v118 = v213;
    }

    v123 = v200;
    v201(v200, v206, v119);
    v124 = (*(v102 + 88))(v123, v119);
    if (v124 == *MEMORY[0x277D56080])
    {
      v125 = v204;
      (*(v102 + 96))(v123, v119);
      v126 = v191;
      OUTLINED_FUNCTION_51_0();
      v127();
      v128 = sub_222DDB3C0();
      v129 = sub_222DDB6B0();
      if (OUTLINED_FUNCTION_34_2(v129))
      {
        v130 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_19_1(v130);
        OUTLINED_FUNCTION_5_5(&dword_222D8A000, v131, v132, "handling confident recommendation");
        OUTLINED_FUNCTION_16_1();
      }

      sub_222DC6BCC(v126, v210, v125, v133, v134, v135, v136, v137, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
      v138 = *(v212 + 8);
      v138(v126, v118);
      v139 = OUTLINED_FUNCTION_23_5();
      v140(v139);
      v138(v209, v118);
      goto LABEL_25;
    }

    v141 = v124;
    if (v124 == *MEMORY[0x277D56068])
    {
      v142 = v200;
      (*(v102 + 96))(v200, v119);
      OUTLINED_FUNCTION_51_0();
      v143();
      v144 = sub_222DDB3C0();
      v145 = sub_222DDB6B0();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_19_1(v146);
        _os_log_impl(&dword_222D8A000, v144, v145, "handling needsConfirmation recommendation like a confident recommendation", v142, 2u);
        OUTLINED_FUNCTION_16_1();
      }

      v147 = v207;
      type metadata accessor for LocationConfirmationStrategy();
      v148 = v24 + v90;
      v149 = v189;
      (*(v190 + 16))(v189, v148, v147);
      v211 = sub_222DBC3E0(v149);
      swift_getWitnessTable();
      sub_222DDA260();
      v150 = *(v212 + 16);
      v151 = v188;
      v152 = v192;
      v150(v188, v192, v213);

      sub_222DDA7C0();
      v205 = sub_222DDA250();
      v215[0] = v205;
      v153 = v213;
      v150(v151, v152, v213);
      v154 = v212;
      v155 = (*(v212 + 80) + 40) & ~*(v212 + 80);
      v156 = swift_allocObject();
      v156[2] = v207;
      v156[3] = v91;
      v156[4] = v24;
      OUTLINED_FUNCTION_51_0();
      v157();

      swift_getWitnessTable();
      v158 = v196;
      sub_222DDA610();

      v210(v158);

      OUTLINED_FUNCTION_20_4(&a12);
      v159(v158, v198);
      v160 = *(v154 + 8);
      v160(v192, v153);
      v161 = OUTLINED_FUNCTION_23_5();
      v162(v161);
      v160(v209, v153);
      goto LABEL_25;
    }

    if (v124 == *MEMORY[0x277D56070])
    {
      v163 = v200;
      (*(v102 + 96))(v200, v119);
      v164 = *v163;

      v165 = v211;
      v166 = sub_222DDB3C0();
      v167 = sub_222DDB6B0();
      if (OUTLINED_FUNCTION_34_2(v167))
      {
        v168 = OUTLINED_FUNCTION_29_4();
        *v168 = 134349056;
        *(v168 + 4) = *(v164 + 16);

        _os_log_impl(&dword_222D8A000, v166, v165, "handling needsDisambiguation recommendation with locations: %{public}ld", v168, 0xCu);
        OUTLINED_FUNCTION_48_2();
      }

      else
      {
      }

      sub_222DC63B4();

LABEL_35:
      v175 = OUTLINED_FUNCTION_23_5();
      v176(v175);
      v177 = OUTLINED_FUNCTION_43_3();
      v120(v177, v118);
      goto LABEL_25;
    }

    v169 = *MEMORY[0x277D56078];
    v170 = sub_222DDB3C0();
    if (v141 == v169)
    {
      v171 = sub_222DDB6C0();
      if (OUTLINED_FUNCTION_34_2(v171))
      {
        v172 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_19_1(v172);
        OUTLINED_FUNCTION_5_5(&dword_222D8A000, v173, v174, "got .none recommendation, returning to the next flow without performing any inference");
        OUTLINED_FUNCTION_16_1();
      }

      OUTLINED_FUNCTION_36_2();
      goto LABEL_35;
    }

    v178 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_34_2(v178))
    {
      v179 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v179);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v180, v181, "unknown recommendation, returning to the next flow without performing any inference");
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_36_2();
    v182 = v203;
    v183 = v208;
    (v208)(v206, v203);
    v184 = OUTLINED_FUNCTION_43_3();
    v185(v184, v118);
    v183(v200, v182);
  }

LABEL_25:
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC5A44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v69 = a3;
  v4 = *a2;
  v5 = *(*a2 + 80);
  v6 = *(v4 + 88);
  v7 = type metadata accessor for LocationResolverFlow.State();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047F88, &qword_222DDE240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v65 - v13;
  v14 = sub_222DDA790();
  v80 = *(v14 - 8);
  v15 = *(v80 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v71 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v65 - v18;
  v19 = sub_222DDA850();
  v75 = *(v19 - 8);
  v76 = v19;
  v20 = *(v75 + 64);
  MEMORY[0x28223BE20](v19);
  v74 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048328, &qword_222DDE818);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v78 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v65 - v27;
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v29 = sub_222DDB3E0();
  v30 = __swift_project_value_buffer(v29, qword_27D04C910);
  v31 = *(v23 + 16);
  v79 = a1;
  v77 = v31;
  v31(v28, a1, v22);
  v70 = v30;
  v32 = sub_222DDB3C0();
  v33 = sub_222DDB6B0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v68 = v10;
    v35 = v34;
    v66 = swift_slowAlloc();
    v82 = v66;
    *v35 = 136315138;
    sub_222DB7024(&qword_27D048330, &qword_27D048328, &qword_222DDE818);
    v36 = sub_222DDBAB0();
    v67 = v14;
    v38 = v37;
    v72 = *(v23 + 8);
    v72(v28, v22);
    v39 = sub_222D8F7F0(v36, v38, &v82);
    v14 = v67;

    *(v35 + 4) = v39;
    _os_log_impl(&dword_222D8A000, v32, v33, "confirmation result: %s", v35, 0xCu);
    v40 = v66;
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x223DCEF40](v40, -1, -1);
    v41 = v35;
    v10 = v68;
    MEMORY[0x223DCEF40](v41, -1, -1);
  }

  else
  {

    v72 = *(v23 + 8);
    v72(v28, v22);
  }

  v42 = v78;
  v77(v78, v79, v22);
  v43 = (*(v23 + 88))(v42, v22);
  v45 = v80;
  v44 = v81;
  if (v43 == *MEMORY[0x277D5BC38])
  {
    (*(v23 + 96))(v42, v22);
    v46 = v42;
    v48 = v74;
    v47 = v75;
    v49 = v76;
    (*(v75 + 32))(v74, v46, v76);
    v50 = v73;
    sub_222DDA840();
    if (__swift_getEnumTagSinglePayload(v50, 1, v14) == 1)
    {
      sub_222DB6FC0(v50, &qword_27D047F88, &qword_222DDE240);
      v51 = sub_222DDB3C0();
      v52 = sub_222DDB6C0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_222D8A000, v51, v52, "no confirmationResponse returned by confirmation strategy", v53, 2u);
        MEMORY[0x223DCEF40](v53, -1, -1);
      }

      v54 = sub_222DDADB0();
      __swift_storeEnumTagSinglePayload(v10, 3, 3, v54);
      sub_222DC2C04(v10);
    }

    else
    {
      (*(v45 + 32))(v44, v50, v14);
      v57 = v71;
      (*(v45 + 104))(v71, *MEMORY[0x277D5BED8], v14);
      v58 = sub_222DDA780();
      v59 = *(v45 + 8);
      v59(v57, v14);
      v60 = sub_222DDADB0();
      v61 = v14;
      v62 = v60;
      if (v58)
      {
        (*(*(v60 - 8) + 16))(v10, v69, v60);
        v63 = v10;
        v64 = 0;
      }

      else
      {
        v63 = v10;
        v64 = 2;
      }

      __swift_storeEnumTagSinglePayload(v63, v64, 3, v62);
      sub_222DC2C04(v10);
      v59(v81, v61);
    }

    return (*(v47 + 8))(v48, v49);
  }

  else
  {
    v55 = sub_222DDADB0();
    __swift_storeEnumTagSinglePayload(v10, 3, 3, v55);
    sub_222DC2C04(v10);
    return (v72)(v42, v22);
  }
}

uint64_t sub_222DC61BC()
{
  v27 = sub_222DDAB90();
  v0 = OUTLINED_FUNCTION_2(v27);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = sub_222DDAC20();
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = sub_222DDAB10();
  v18 = OUTLINED_FUNCTION_2(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v25 = v24 - v23;
  sub_222DDAB00();
  sub_222DC44C8(v16);
  sub_222DDAB80();
  sub_222DDAAF0();
  (*(v2 + 8))(v7, v27);
  (*(v11 + 8))(v16, v8);
  return (*(v20 + 8))(v25, v17);
}

void sub_222DC63B4()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v24 = v4;
  v5 = *v0;
  v25 = sub_222DDA650();
  v6 = OUTLINED_FUNCTION_2(v25);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = v5[10];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  v20 = v5[11];
  type metadata accessor for LocationDisambiguationStrategy();
  (*(v15 + 16))(v19, &v1[v5[16]], v14);
  sub_222DBE8D0();
  swift_getWitnessTable();
  sub_222DDA280();

  sub_222DDA7C0();
  v26 = sub_222DDA270();
  v21 = swift_allocObject();
  v22 = v24;
  v21[2] = v1;
  v21[3] = v22;
  v21[4] = v3;

  swift_getWitnessTable();
  sub_222DDA610();

  v22(v13);

  (*(v8 + 8))(v13, v25);
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC6658(uint64_t a1, uint64_t *a2, void (*a3)(void), uint64_t *a4)
{
  v7 = *a2;
  v8 = sub_222DDA650();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v53 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 80);
  v12 = *(v7 + 88);
  v13 = type metadata accessor for LocationResolverFlow.State();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = v47 - v15;
  v52 = sub_222DDADB0();
  v50 = *(v52 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048338, &qword_222DDE820);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v57 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v47 - v23;
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v25 = sub_222DDB3E0();
  __swift_project_value_buffer(v25, qword_27D04C910);
  v26 = *(v19 + 16);
  v58 = a1;
  v56 = v26;
  v26(v24, a1, v18);
  v27 = sub_222DDB3C0();
  v28 = sub_222DDB6B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48 = a3;
    v30 = v29;
    v47[0] = swift_slowAlloc();
    v59 = v47[0];
    *v30 = 136315138;
    sub_222DB7024(&qword_27D048340, &qword_27D048338, &qword_222DDE820);
    v31 = sub_222DDBAB0();
    v47[1] = a4;
    v33 = v32;
    v34 = v24;
    v35 = *(v19 + 8);
    v35(v34, v18);
    v36 = sub_222D8F7F0(v31, v33, &v59);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_222D8A000, v27, v28, "result: %s", v30, 0xCu);
    v37 = v47[0];
    __swift_destroy_boxed_opaque_existential_0(v47[0]);
    MEMORY[0x223DCEF40](v37, -1, -1);
    v38 = v30;
    a3 = v48;
    MEMORY[0x223DCEF40](v38, -1, -1);
  }

  else
  {

    v39 = v24;
    v35 = *(v19 + 8);
    v35(v39, v18);
  }

  v40 = v57;
  v56(v57, v58, v18);
  if ((*(v19 + 88))(v40, v18) == *MEMORY[0x277D5BC38])
  {
    (*(v19 + 96))(v40, v18);
    v42 = v49;
    v41 = v50;
    v43 = v52;
    (*(v50 + 32))(v49, v40, v52);
    v44 = v51;
    (*(v41 + 16))(v51, v42, v43);
    __swift_storeEnumTagSinglePayload(v44, 0, 3, v43);
    sub_222DC2C04(v44);
    return (*(v41 + 8))(v42, v43);
  }

  else
  {
    v46 = v53;
    sub_222DDA640();
    a3(v46);
    (*(v54 + 8))(v46, v55);
    return (v35)(v40, v18);
  }
}

void sub_222DC6BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32_2();
  a19 = v22;
  a20 = v23;
  v359 = v24;
  v361[0] = v25;
  v348 = v26;
  OUTLINED_FUNCTION_22_3();
  v349 = v27;
  v362 = sub_222DDA650();
  v28 = OUTLINED_FUNCTION_2(v362);
  v361[1] = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_8_6(v32);
  v347 = sub_222DDA890();
  v33 = OUTLINED_FUNCTION_2(v347);
  v346 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_8_6(v37);
  v353 = sub_222DDA900();
  v38 = OUTLINED_FUNCTION_2(v353);
  v352 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_8_6(v43);
  v44 = sub_222DDA350();
  v45 = OUTLINED_FUNCTION_8(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048348, &qword_222DDE828);
  OUTLINED_FUNCTION_8(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_8_6(v53);
  v332 = sub_222DDB3B0();
  v54 = OUTLINED_FUNCTION_2(v332);
  v331 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v58);
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  OUTLINED_FUNCTION_4_6(v330);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_7_6(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E88, &qword_222DDE0F8);
  v64 = OUTLINED_FUNCTION_8(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_7_6(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v72 = OUTLINED_FUNCTION_8(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_7_6(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E90, &qword_222DDE108);
  OUTLINED_FUNCTION_8(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_8_6(v83);
  v341 = sub_222DDAE00();
  v84 = OUTLINED_FUNCTION_2(v341);
  v335 = v85;
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_8_6(v88);
  v89 = sub_222DDAC60();
  v90 = OUTLINED_FUNCTION_2(v89);
  v344 = v91;
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v94);
  v96 = &v315 - v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E98, &qword_222DDE110);
  v98 = OUTLINED_FUNCTION_8(v97);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v101);
  v103 = &v315 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047EA0, &qword_222DDE118);
  v105 = OUTLINED_FUNCTION_8(v104);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v108);
  v110 = &v315 - v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047EA8, &qword_222DDE120);
  OUTLINED_FUNCTION_8(v111);
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v114);
  v116 = (&v315 - v115);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047EB0, &qword_222DDE128);
  OUTLINED_FUNCTION_8(v117);
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v120);
  v122 = &v315 - v121;
  v350 = sub_222DDAA40();
  v123 = OUTLINED_FUNCTION_2(v350);
  v340 = v124;
  v126 = *(v125 + 64);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_8_6(v128);
  v355 = sub_222DDADB0();
  v129 = OUTLINED_FUNCTION_2(v355);
  v354 = v130;
  v132 = *(v131 + 64);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v134);
  v136 = *(v135 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_25_3();
  v138 = sub_222DDA940();
  v139 = OUTLINED_FUNCTION_2(v138);
  v357 = v140;
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v143);
  v144 = v20;
  v145 = sub_222DC2D7C();
  v146 = 0x27D047000;
  v358 = v145;
  if (v145)
  {
    sub_222DC2CB8(v21);
    OUTLINED_FUNCTION_61_0(v21);
    if (!v174)
    {
      v159 = *(v357 + 32);
      v319 = v138;
      v159(v356, v21, v138);
      (*(v354 + 16))(v363, v348, v355);
      sub_222DDADA0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v103, 1, v89);
      v161 = &swift_deallocObject;
      if (EnumTagSinglePayload)
      {
        v162 = &qword_27D047E98;
        v163 = &qword_222DDE110;
        v164 = v103;
LABEL_18:
        sub_222DB6FC0(v164, v162, v163);
        v175 = OUTLINED_FUNCTION_47_3();
        __swift_storeEnumTagSinglePayload(v175, v176, 1, v177);
LABEL_19:
        sub_222DB6FC0(v122, qword_27D047EB0, &qword_222DDE128);
        v178 = v144;
LABEL_20:
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4();
        }

        v179 = sub_222DDB3E0();
        v350 = __swift_project_value_buffer(v179, qword_27D04C910);
        v180 = sub_222DDB3C0();
        v181 = sub_222DDB6B0();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = OUTLINED_FUNCTION_29_4();
          v116 = OUTLINED_FUNCTION_25_2();
          v372 = v116;
          *v182 = v161[240];
          OUTLINED_FUNCTION_5_6();
          swift_beginAccess();
          v183 = v343;
          sub_222DDAD80();
          v184 = v183;
          v185 = sub_222DDAA00();
          OUTLINED_FUNCTION_27_5(v184, 1, v185);
          if (v174)
          {
            sub_222DB6FC0(v184, &qword_27D048348, &qword_222DDE828);
            v188 = 0;
            v190 = 0;
          }

          else
          {
            v186 = v178;
            v187 = v184;
            v188 = sub_222DDA9F0();
            v190 = v189;
            OUTLINED_FUNCTION_28_2(v185);
            v192 = v187;
            v178 = v186;
            (*(v191 + 8))(v192, v185);
          }

          *&v369 = v188;
          *(&v369 + 1) = v190;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BA8, &qword_222DDE830);
          v193 = sub_222DDB540();
          v195 = sub_222D8F7F0(v193, v194, &v372);

          *(v182 + 4) = v195;
          _os_log_impl(&dword_222D8A000, v180, v181, "location name is %s", v182, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v116);
          OUTLINED_FUNCTION_48_2();
          OUTLINED_FUNCTION_48_2();
        }

        v196 = *(*v178 + 128);
        v197 = sub_222DDA8B0();
        v198 = v363;
        OUTLINED_FUNCTION_5_6();
        swift_beginAccess();
        v199 = (*(*(v349 + 88) + 72))(v197, v198, *(v349 + 80));

        if (v199)
        {
          v200 = v199;
          sub_222DDA8C0();
          sub_222DDA8D0();
          sub_222DDA8E0();
          v201 = sub_222DDA8F0();
          v202 = *(v201 + 48);
          v203 = *(v201 + 52);
          swift_allocObject();
          v204 = sub_222DDA8A0();
          v205 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48);
          v206 = v351;
          (*(v357 + 16))(v351, v356, v319);
          *(v206 + v205) = v204;
          v207 = *MEMORY[0x277D5C158];
          OUTLINED_FUNCTION_49_3(&v368);
          v209 = v353;
          (*(v208 + 104))(v206);
          v210 = v178[2];
          (v116[2])(v345, v206, v209);

          OUTLINED_FUNCTION_49_3(&v366);
          sub_222DDA880();
          v211 = sub_222DDA290();
          OUTLINED_FUNCTION_20_4(&v367);
          v212(v116, v347);

          v213 = sub_222DDB3C0();
          v214 = sub_222DDB6B0();

          if (os_log_type_enabled(v213, v214))
          {
            swift_slowAlloc();
            v215 = OUTLINED_FUNCTION_37_3();
            v368 = v210;
            *&v369 = v215;
            *v206 = 67109378;
            OUTLINED_FUNCTION_52_3(v211 & 1);
            sub_222DC966C();
            v216 = sub_222DDBAB0();
            v218 = sub_222D8F7F0(v216, v217, &v369);

            *(v206 + 10) = v218;
            _os_log_impl(&dword_222D8A000, v213, v214, "nextFlowOn: %{BOOL}d, flow is: %s", v206, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v215);
            OUTLINED_FUNCTION_48_2();
            OUTLINED_FUNCTION_48_2();
          }

          sub_222DC4034();
          OUTLINED_FUNCTION_49_3(&v373);
          sub_222DDA620();

          OUTLINED_FUNCTION_22_4();
          v219();

          OUTLINED_FUNCTION_20_4(&v374);
          v220(v214, v362);
          OUTLINED_FUNCTION_20_4(&v368);
          v222 = v351;
          v223 = &v369;
        }

        else
        {
          v224 = sub_222DDB3C0();
          v225 = sub_222DDB6C0();
          if (OUTLINED_FUNCTION_34_2(v225))
          {
            v226 = OUTLINED_FUNCTION_43_0();
            OUTLINED_FUNCTION_19_1(v226);
            OUTLINED_FUNCTION_5_5(&dword_222D8A000, v227, v228, "resolutionStrategy did return an intent with the resolved location, moving on to the next flow without setting location");
            OUTLINED_FUNCTION_16_1();
          }

          v229 = v178[2];
          sub_222DC8814();
          v230 = v360;
          OUTLINED_FUNCTION_18_4();

          OUTLINED_FUNCTION_22_4();
          v231();

          OUTLINED_FUNCTION_20_4(&v374);
          v222 = v230;
          v223 = &a9;
        }

        v221(v222, *(v223 - 32));
        OUTLINED_FUNCTION_20_4(&v371);
        v232(v356, v319);
        OUTLINED_FUNCTION_20_4(&v369 + 8);
        v157 = v363;
        v158 = &v370;
        goto LABEL_35;
      }

      v165 = v344;
      v166 = *(v344 + 16);
      v348 = (v344 + 16);
      v318 = v166;
      v166(v96, v103, v89);
      sub_222DB6FC0(v103, &qword_27D047E98, &qword_222DDE110);
      sub_222DDAC50();
      v169 = *(v165 + 8);
      v167 = v165 + 8;
      v168 = v169;
      v169(v96, v89);
      v170 = sub_222DDA9B0();
      OUTLINED_FUNCTION_27_5(v110, 1, v170);
      if (v174)
      {
        v162 = &qword_27D047EA0;
        v163 = &qword_222DDE118;
        v164 = v110;
        goto LABEL_18;
      }

      v344 = v167;
      sub_222DDA990();
      OUTLINED_FUNCTION_28_2(v170);
      v172 = *(v171 + 8);
      v317 = v171 + 8;
      v172(v110, v170);
      v173 = sub_222DDAA60();
      OUTLINED_FUNCTION_27_5(v116, 1, v173);
      if (v174)
      {
        v162 = &qword_27D047EA8;
        v163 = &qword_222DDE120;
        v164 = v116;
        goto LABEL_18;
      }

      v316 = v172;
      sub_222DDAA50();
      OUTLINED_FUNCTION_28_2(v173);
      (*(v233 + 8))(v116, v173);
      v234 = OUTLINED_FUNCTION_47_3();
      v235 = v350;
      OUTLINED_FUNCTION_27_5(v234, v236, v350);
      if (v237)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_49_3(&v365);
      v239 = v342;
      (*(v238 + 32))(v342, v122, v235);
      v240 = v338;
      sub_222DDADA0();
      v241 = OUTLINED_FUNCTION_47_3();
      if (__swift_getEnumTagSinglePayload(v241, v242, v89))
      {
        v243 = v116[1];
        ++v116;
        v243(v239, v235);
        sub_222DB6FC0(v240, &qword_27D047E98, &qword_222DDE110);
        v178 = v144;
      }

      else
      {
        v244 = v337;
        v318(v337, v240, v89);
        sub_222DB6FC0(v240, &qword_27D047E98, &qword_222DDE110);
        v245 = v336;
        sub_222DDAC50();
        v168(v244, v89);
        v246 = OUTLINED_FUNCTION_47_3();
        OUTLINED_FUNCTION_27_5(v246, v247, v170);
        if (!v174)
        {
          v251 = v339;
          sub_222DDA9A0();
          v252 = v251;
          v316(v245, v170);
          v253 = v251;
          v254 = v341;
          OUTLINED_FUNCTION_27_5(v253, 1, v341);
          v178 = v144;
          if (!v255)
          {
            (*(v335 + 32))(v334, v252, v254);
            if (qword_27D0475A8 != -1)
            {
              OUTLINED_FUNCTION_3_4();
            }

            v259 = sub_222DDB3E0();
            OUTLINED_FUNCTION_63_0(v259, qword_27D04C910);
            v260 = v320;
            v261 = v350;
            (v116[2])(v320, v342, v350);
            v344 = v252;
            v262 = sub_222DDB3C0();
            v263 = sub_222DDB6B0();
            if (os_log_type_enabled(v262, v263))
            {
              v264 = OUTLINED_FUNCTION_29_4();
              v265 = v260;
              v266 = OUTLINED_FUNCTION_25_2();
              *&v369 = v266;
              *v264 = 136315138;
              v267 = sub_222DDAA30();
              v268 = v116;
              v270 = v269;
              v348 = v268[1];
              v348(v265, v350);
              v271 = sub_222D8F7F0(v267, v270, &v369);

              *(v264 + 4) = v271;
              _os_log_impl(&dword_222D8A000, v262, v263, "About to set locationName with bounded value: %s", v264, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v266);
              OUTLINED_FUNCTION_48_2();
              OUTLINED_FUNCTION_16_1();
            }

            else
            {

              v348 = v116[1];
              v348(v260, v261);
            }

            v272 = v326;
            v273 = v322;
            v274 = sub_222DDB040();
            v275 = *(v274 + 48);
            v276 = *(v274 + 52);
            swift_allocObject();
            sub_222DDB030();
            v277 = v321;
            sub_222DDADE0();
            v278 = sub_222DDAA20();
            OUTLINED_FUNCTION_61_0(v277);
            v279 = v327;
            if (v174)
            {
              sub_222DB6FC0(v277, &qword_27D047E88, &qword_222DDE0F8);
              v281 = 1;
            }

            else
            {
              sub_222DDAA10();
              OUTLINED_FUNCTION_28_2(v278);
              (*(v280 + 8))();
              OUTLINED_FUNCTION_5_6();
              sub_222DDB210();
              v281 = 0;
            }

            sub_222DDB240();
            OUTLINED_FUNCTION_12_4(v273, v281);
            sub_222DDAFA0();

            sub_222DB6FC0(v273, &qword_27D0479C0, &qword_222DDE100);
            v282 = v323;
            sub_222DDADF0();
            OUTLINED_FUNCTION_61_0(v282);
            if (v174)
            {
              sub_222DB6FC0(v282, &qword_27D047E88, &qword_222DDE0F8);
              v285 = 1;
              v284 = v324;
            }

            else
            {
              sub_222DDAA10();
              OUTLINED_FUNCTION_28_2(v278);
              (*(v283 + 8))(v282, v278);
              v284 = v324;
              OUTLINED_FUNCTION_5_6();
              sub_222DDB210();
              v285 = 0;
            }

            OUTLINED_FUNCTION_12_4(v284, v285);
            sub_222DDAFB0();

            sub_222DB6FC0(v284, &qword_27D0479C0, &qword_222DDE100);
            v286 = v325;
            sub_222DDADD0();
            OUTLINED_FUNCTION_61_0(v286);
            if (v174)
            {
              sub_222DB6FC0(v286, &qword_27D047E88, &qword_222DDE0F8);
              v288 = 1;
            }

            else
            {
              sub_222DDAA10();
              OUTLINED_FUNCTION_46_3();
              OUTLINED_FUNCTION_28_2(v278);
              (*(v287 + 8))();
              OUTLINED_FUNCTION_5_6();
              sub_222DDB210();
              v288 = 0;
            }

            v289 = v341;
            OUTLINED_FUNCTION_12_4(v272, v288);
            sub_222DDAFC0();

            sub_222DB6FC0(v272, &qword_27D0479C0, &qword_222DDE100);
            sub_222DDADC0();
            OUTLINED_FUNCTION_61_0(v279);
            if (v174)
            {
              sub_222DB6FC0(v279, &qword_27D047E88, &qword_222DDE0F8);
              v292 = 1;
              v291 = v328;
            }

            else
            {
              sub_222DDAA10();
              OUTLINED_FUNCTION_28_2(v278);
              (*(v290 + 8))(v279, v278);
              v291 = v328;
              OUTLINED_FUNCTION_5_6();
              sub_222DDB210();
              v292 = 0;
            }

            OUTLINED_FUNCTION_12_4(v291, v292);
            sub_222DDAF90();
            OUTLINED_FUNCTION_46_3();

            sub_222DB6FC0(v291, &qword_27D0479C0, &qword_222DDE100);
            sub_222DDB000();

            v293 = sub_222DDB020();

            v294 = *v178;
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v296 = [objc_opt_self() bundleForClass_];
            sub_222DDB1B0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_222DDDFD0;
            *(inited + 32) = 0x746361746E6F63;
            *(inited + 40) = 0xE700000000000000;
            v298 = sub_222DDB0D0();
            *(inited + 48) = v293;
            *(inited + 72) = v298;
            strcpy((inited + 80), "addressLabel");
            *(inited + 93) = 0;
            *(inited + 94) = -5120;

            v299 = sub_222DDAA30();
            *(inited + 120) = MEMORY[0x277D837D0];
            *(inited + 96) = v299;
            *(inited + 104) = v300;
            sub_222DDB460();
            sub_222DDB180();
            v369 = 0u;
            v370 = 0u;
            v371 = 0;
            v116 = sub_222DDB170();
            v301 = v329;
            sub_222DDB3A0();
            v302 = v333;
            sub_222DDB1A0();

            OUTLINED_FUNCTION_20_4(v361);
            v303(v301, v332);
            sub_222DB6FC0(&v369, &qword_27D047BB8, &qword_222DDD430);
            v304 = sub_222DDBBA0();
            if (v305)
            {
              v306 = v304;
              v307 = v305;
              v308 = sub_222DDB3C0();
              v116 = sub_222DDB6B0();
              if (OUTLINED_FUNCTION_54_2(v116))
              {
                OUTLINED_FUNCTION_29_4();
                v309 = OUTLINED_FUNCTION_37_3();
                *&v369 = v309;
                *v302 = 136315138;
                *(v302 + 4) = sub_222D8F7F0(v306, v307, &v369);
                _os_log_impl(&dword_222D8A000, v308, v116, "Setting locationName to %s", v302, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v309);
                v289 = v341;
                OUTLINED_FUNCTION_48_2();
                v302 = v333;
                OUTLINED_FUNCTION_48_2();
              }

              sub_222DDAD70();
            }

            else
            {
              v310 = sub_222DDB3C0();
              v311 = sub_222DDB6B0();
              if (OUTLINED_FUNCTION_54_2(v311))
              {
                v312 = OUTLINED_FUNCTION_43_0();
                *v312 = 0;
                _os_log_impl(&dword_222D8A000, v310, v311, "result from cat is nil", v312, 2u);
                OUTLINED_FUNCTION_48_2();
              }
            }

            sub_222DB6FC0(v302, &unk_27D047F60, &qword_222DDE000);
            OUTLINED_FUNCTION_20_4(&v364);
            v313(v334, v289);
            v314 = OUTLINED_FUNCTION_26_4();
            (v348)(v314);
            v161 = &swift_deallocObject;
            goto LABEL_20;
          }

          v256 = v116[1];
          ++v116;
          v257 = OUTLINED_FUNCTION_26_4();
          v258(v257);
          goto LABEL_43;
        }

        v248 = v116[1];
        ++v116;
        v249 = OUTLINED_FUNCTION_26_4();
        v250(v249);
        sub_222DB6FC0(v245, &qword_27D047EA0, &qword_222DDE118);
        v178 = v144;
      }

      v252 = v339;
      __swift_storeEnumTagSinglePayload(v339, 1, 1, v341);
LABEL_43:
      sub_222DB6FC0(v252, &qword_27D047E90, &qword_222DDE108);
      goto LABEL_20;
    }

    sub_222DB6FC0(v21, &qword_27D047CF0, &unk_222DDDE10);
    v146 = 0x27D047000uLL;
  }

  if (*(v146 + 1448) != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v147 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v147, qword_27D04C910);
  v148 = sub_222DDB3C0();
  v149 = sub_222DDB6C0();
  if (OUTLINED_FUNCTION_34_2(v149))
  {
    v150 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v150);
    OUTLINED_FUNCTION_5_5(&dword_222D8A000, v151, v152, "serverConversion and nlIntent are nil, returning early from handleLocationResolved");
    OUTLINED_FUNCTION_16_1();
  }

  v153 = v20[2];
  sub_222DC4034();
  v154 = v360;
  OUTLINED_FUNCTION_18_4();

  OUTLINED_FUNCTION_22_4();
  v155();
  OUTLINED_FUNCTION_20_4(&v374);
  v157 = v154;
  v158 = &a9;
LABEL_35:
  v156(v157, *(v158 - 32));
  OUTLINED_FUNCTION_36_1();
}

void sub_222DC8854()
{
  OUTLINED_FUNCTION_32_2();
  v81 = v3;
  v82 = v2;
  v4 = sub_222DDA650();
  v5 = OUTLINED_FUNCTION_2(v4);
  v83 = v6;
  v84 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = sub_222DDA890();
  v13 = OUTLINED_FUNCTION_2(v12);
  v76 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = sub_222DDA900();
  v21 = OUTLINED_FUNCTION_2(v20);
  v79 = v22;
  v80 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_44_3();
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &v73 - v32;
  v34 = sub_222DDA940();
  v35 = OUTLINED_FUNCTION_2(v34);
  v78 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_6();
  v77 = v39;
  v40 = sub_222DC2D7C();
  if (v40)
  {
    v41 = v40;
    sub_222DC2CB8(v33);
    OUTLINED_FUNCTION_27_5(v33, 1, v34);
    if (!v42)
    {
      v75 = v11;
      v50 = v78;
      v51 = *(v78 + 32);
      v73 = v12;
      v52 = v0;
      v53 = v77;
      v51(v77, v33, v34);
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48);
      v55 = *(v50 + 16);
      v56 = v53;
      v57 = v27;
      v74 = v34;
      v55(v27, v56, v34);
      *&v27[v54] = v41;
      v59 = v79;
      v58 = v80;
      (*(v79 + 104))(v27, *MEMORY[0x277D5C158], v80);
      v60 = v59;
      v61 = *(v52 + 16);
      (*(v60 + 16))(v1, v27, v58);

      sub_222DDA880();
      v62 = sub_222DDA290();
      (*(v76 + 8))(v19, v73);
      if (qword_27D0475A8 != -1)
      {
        OUTLINED_FUNCTION_3_4();
      }

      v63 = sub_222DDB3E0();
      OUTLINED_FUNCTION_63_0(v63, qword_27D04C910);

      v64 = sub_222DDB3C0();
      v65 = sub_222DDB6B0();
      v76 = v52;

      v66 = os_log_type_enabled(v64, v65);
      v67 = v75;
      if (v66)
      {
        swift_slowAlloc();
        v68 = OUTLINED_FUNCTION_37_3();
        v85 = v61;
        v86 = v68;
        *v62 = 67109378;
        OUTLINED_FUNCTION_52_3(v62 & 1);
        sub_222DC966C();
        v69 = sub_222DDBAB0();
        v71 = sub_222D8F7F0(v69, v70, &v86);

        *(v62 + 10) = v71;
        _os_log_impl(&dword_222D8A000, v64, v65, "nextFlowOn: %{BOOL}d, flow is: %s", v62, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v68);
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_48_2();
      }

      v72 = v74;
      sub_222DC4034();
      sub_222DDA620();

      v82(v67);

      (*(v83 + 8))(v67, v84);
      (*(v79 + 8))(v57, v80);
      (*(v78 + 8))(v77, v72);
      goto LABEL_15;
    }

    sub_222DB6FC0(v33, &qword_27D047CF0, &unk_222DDDE10);
  }

  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v43 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v43, qword_27D04C910);
  v44 = sub_222DDB3C0();
  v45 = sub_222DDB6C0();
  if (OUTLINED_FUNCTION_34_2(v45))
  {
    v46 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v46);
    OUTLINED_FUNCTION_5_5(&dword_222D8A000, v47, v48, "serverConversion and nlIntent are nil, returning early from passThroughIntent");
    OUTLINED_FUNCTION_16_1();
  }

  v49 = *(v0 + 16);
  sub_222DC4034();
  sub_222DDA620();

  v82(v11);
  (*(v83 + 8))(v11, v84);
LABEL_15:
  OUTLINED_FUNCTION_36_1();
}