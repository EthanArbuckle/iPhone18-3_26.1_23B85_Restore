unint64_t sub_2301EAB7C()
{
  result = qword_27DB16F08;
  if (!qword_27DB16F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F08);
  }

  return result;
}

uint64_t sub_2301EABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2301EAC38()
{
  result = qword_280C9A0D0;
  if (!qword_280C9A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A0D0);
  }

  return result;
}

unint64_t sub_2301EAC90()
{
  result = qword_280C9BBA0;
  if (!qword_280C9BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BBA0);
  }

  return result;
}

unint64_t sub_2301EACE8()
{
  result = qword_280C9BBA8;
  if (!qword_280C9BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BBA8);
  }

  return result;
}

uint64_t sub_2301EAD6C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2301EADC8(uint64_t a1)
{
  result = sub_2301EA458();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2301EADF4()
{
  result = qword_280C97450;
  if (!qword_280C97450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97450);
  }

  return result;
}

uint64_t destroy for REMSuggestedAttributesHarvester.Request(uint64_t a1)
{
}

uint64_t initializeWithCopy for REMSuggestedAttributesHarvester.Request(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for REMSuggestedAttributesHarvester.Request(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  v7 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v7;
  v8 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v8;
  v9 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v9;
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  return a1;
}

__n128 __swift_memcpy99_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for REMSuggestedAttributesHarvester.Request(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesHarvester.Request(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 99))
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

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesHarvester.Request(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 99) = 1;
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

    *(result + 99) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesHarvester.Request.CoreBehavior(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesHarvester.Request.CoreBehavior(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

char *initializeBufferWithCopyOfBuffer for REMSuggestedAttributesHarvester.MentionsExtractionRequest(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = *(a2 + 2);
    *(a1 + 2) = v6;
    v7 = *(a3 + 24);
    v9 = sub_23030EBB8();
    v10 = *(*(v9 - 8) + 16);

    v11 = v6;
    v10(&v3[v7], &a2[v7], v9);
  }

  return v3;
}

uint64_t destroy for REMSuggestedAttributesHarvester.MentionsExtractionRequest(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_23030EBB8();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *initializeWithCopy for REMSuggestedAttributesHarvester.MentionsExtractionRequest(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 2);
  *(a1 + 2) = v6;
  v7 = *(a3 + 24);
  v8 = sub_23030EBB8();
  v9 = *(*(v8 - 8) + 16);

  v10 = v6;
  v9(&a1[v7], &a2[v7], v8);
  return a1;
}

char *assignWithCopy for REMSuggestedAttributesHarvester.MentionsExtractionRequest(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a2 + 2);
  v7 = *(a1 + 2);
  *(a1 + 2) = v6;
  v8 = v6;

  v9 = *(a3 + 24);
  v10 = sub_23030EBB8();
  (*(*(v10 - 8) + 24))(&a1[v9], &a2[v9], v10);
  return a1;
}

uint64_t initializeWithTake for REMSuggestedAttributesHarvester.MentionsExtractionRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = sub_23030EBB8();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *assignWithTake for REMSuggestedAttributesHarvester.MentionsExtractionRequest(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);

  v8 = *(a3 + 24);
  v9 = sub_23030EBB8();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  return a1;
}

uint64_t sub_2301EB768()
{
  result = sub_23030EBB8();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void destroy for REMSuggestedAttributesHarvester.RecordSuggestionRequest(uint64_t a1)
{

  v2 = *(a1 + 24);
}

uint64_t initializeWithCopy for REMSuggestedAttributesHarvester.RecordSuggestionRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for REMSuggestedAttributesHarvester.RecordSuggestionRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v4 = *(a2 + 24);
  v5 = *(a1 + 24);
  *(a1 + 24) = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for REMSuggestedAttributesHarvester.RecordSuggestionRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t sub_2301EBA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {

    v8 = vars8;
  }
}

uint64_t destroy for REMSuggestedAttributesHarvester.Response(uint64_t a1)
{
  sub_2301EBAE8(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  sub_2301EBAE8(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  v9 = *(a1 + 184);

  return sub_2301EBAE8(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2301EBAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {

    v8 = vars8;
  }
}

uint64_t initializeWithCopy for REMSuggestedAttributesHarvester.Response(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  sub_2301EBA28(*a2, v5, v6, v7, v8, v9, v10, v11);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  v12 = *(v2 + 64);
  v13 = *(v2 + 72);
  v14 = *(v2 + 80);
  v15 = *(v2 + 88);
  v16 = *(v2 + 96);
  v17 = *(v2 + 104);
  v18 = *(v2 + 112);
  v19 = *(v2 + 120);
  sub_2301EBA28(v12, v13, v14, v15, v16, v17, v18, v19);
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = v19;
  v20 = *(v2 + 128);
  v21 = *(v2 + 136);
  v22 = *(v2 + 144);
  v23 = *(v2 + 152);
  v24 = *(v2 + 160);
  v25 = *(v2 + 168);
  v26 = *(v2 + 176);
  LOBYTE(v2) = *(v2 + 184);
  sub_2301EBA28(v20, v21, v22, v23, v24, v25, v26, v2);
  *(a1 + 128) = v20;
  *(a1 + 136) = v21;
  *(a1 + 144) = v22;
  *(a1 + 152) = v23;
  *(a1 + 160) = v24;
  *(a1 + 168) = v25;
  *(a1 + 176) = v26;
  *(a1 + 184) = v2;
  return a1;
}

uint64_t assignWithCopy for REMSuggestedAttributesHarvester.Response(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  sub_2301EBA28(*a2, v5, v6, v7, v8, v9, v10, v11);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  sub_2301EBAE8(v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = *(v2 + 64);
  v21 = *(v2 + 72);
  v22 = *(v2 + 80);
  v23 = *(v2 + 88);
  v24 = *(v2 + 96);
  v25 = *(v2 + 104);
  v26 = *(v2 + 112);
  v27 = *(v2 + 120);
  sub_2301EBA28(v20, v21, v22, v23, v24, v25, v26, v27);
  v28 = *(a1 + 64);
  v29 = *(a1 + 72);
  v30 = *(a1 + 80);
  v31 = *(a1 + 88);
  v32 = *(a1 + 96);
  v33 = *(a1 + 104);
  v34 = *(a1 + 112);
  v35 = *(a1 + 120);
  *(a1 + 64) = v20;
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  *(a1 + 88) = v23;
  *(a1 + 96) = v24;
  *(a1 + 104) = v25;
  *(a1 + 112) = v26;
  *(a1 + 120) = v27;
  sub_2301EBAE8(v28, v29, v30, v31, v32, v33, v34, v35);
  v36 = *(v2 + 128);
  v37 = *(v2 + 136);
  v38 = *(v2 + 144);
  v39 = *(v2 + 152);
  v40 = *(v2 + 160);
  v41 = *(v2 + 168);
  v42 = *(v2 + 176);
  LOBYTE(v2) = *(v2 + 184);
  sub_2301EBA28(v36, v37, v38, v39, v40, v41, v42, v2);
  v43 = *(a1 + 128);
  v44 = *(a1 + 136);
  v45 = *(a1 + 144);
  v46 = *(a1 + 152);
  v47 = *(a1 + 160);
  v48 = *(a1 + 168);
  v49 = *(a1 + 176);
  v50 = *(a1 + 184);
  *(a1 + 128) = v36;
  *(a1 + 136) = v37;
  *(a1 + 144) = v38;
  *(a1 + 152) = v39;
  *(a1 + 160) = v40;
  *(a1 + 168) = v41;
  *(a1 + 176) = v42;
  *(a1 + 184) = v2;
  sub_2301EBAE8(v43, v44, v45, v46, v47, v48, v49, v50);
  return a1;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for REMSuggestedAttributesHarvester.Response(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v14;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  sub_2301EBAE8(v6, v7, v8, v9, v10, v11, v12, v13);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  v21 = *(a1 + 96);
  v22 = *(a1 + 104);
  v23 = *(a1 + 112);
  v24 = *(a1 + 120);
  v25 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v25;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  sub_2301EBAE8(v17, v18, v19, v20, v21, v22, v23, v24);
  v26 = *(a2 + 176);
  v27 = *(a2 + 184);
  v28 = *(a1 + 128);
  v29 = *(a1 + 136);
  v30 = *(a1 + 144);
  v31 = *(a1 + 152);
  v32 = *(a1 + 160);
  v33 = *(a1 + 168);
  v34 = *(a1 + 176);
  v35 = *(a1 + 184);
  v36 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v36;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v26;
  *(a1 + 184) = v27;
  sub_2301EBAE8(v28, v29, v30, v31, v32, v33, v34, v35);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesHarvester.Response(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 185))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesHarvester.Response(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *(result + 184) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for REMSuggestedAttributesHarvester.MentionsExtractionResponse(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  sub_2301EBA28(*a2, v4, v5, v6, v7, v8, v9, v10);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  return a1;
}

uint64_t assignWithCopy for REMSuggestedAttributesHarvester.MentionsExtractionResponse(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  sub_2301EBA28(*a2, v4, v5, v6, v7, v8, v9, v10);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  sub_2301EBAE8(v11, v12, v13, v14, v15, v16, v17, v18);
  return a1;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for REMSuggestedAttributesHarvester.MentionsExtractionResponse(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  sub_2301EBAE8(v5, v7, v6, v8, v9, v10, v11, v12);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesHarvester.MentionsExtractionResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesHarvester.MentionsExtractionResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesHarvester.CachedSuggestionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesHarvester.CachedSuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2301EC3FC()
{
  result = qword_27DB16F18;
  if (!qword_27DB16F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F18);
  }

  return result;
}

unint64_t sub_2301EC454()
{
  result = qword_27DB16F20;
  if (!qword_27DB16F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F20);
  }

  return result;
}

unint64_t sub_2301EC4AC()
{
  result = qword_27DB16F28;
  if (!qword_27DB16F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F28);
  }

  return result;
}

unint64_t sub_2301EC504()
{
  result = qword_27DB16F30;
  if (!qword_27DB16F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F30);
  }

  return result;
}

unint64_t sub_2301EC55C()
{
  result = qword_27DB16F38;
  if (!qword_27DB16F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F38);
  }

  return result;
}

unint64_t sub_2301EC5B4()
{
  result = qword_27DB16F40;
  if (!qword_27DB16F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F40);
  }

  return result;
}

unint64_t sub_2301EC60C()
{
  result = qword_27DB16F48;
  if (!qword_27DB16F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F48);
  }

  return result;
}

unint64_t sub_2301EC664()
{
  result = qword_280C98A68;
  if (!qword_280C98A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A68);
  }

  return result;
}

unint64_t sub_2301EC6BC()
{
  result = qword_280C98A70;
  if (!qword_280C98A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A70);
  }

  return result;
}

unint64_t sub_2301EC714()
{
  result = qword_280C9BBB8;
  if (!qword_280C9BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BBB8);
  }

  return result;
}

unint64_t sub_2301EC76C()
{
  result = qword_280C9BBC0;
  if (!qword_280C9BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BBC0);
  }

  return result;
}

unint64_t sub_2301EC7C4()
{
  result = qword_280C9BB58;
  if (!qword_280C9BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BB58);
  }

  return result;
}

unint64_t sub_2301EC81C()
{
  result = qword_280C9BB60;
  if (!qword_280C9BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BB60);
  }

  return result;
}

unint64_t sub_2301EC874()
{
  result = qword_280C98A48;
  if (!qword_280C98A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A48);
  }

  return result;
}

unint64_t sub_2301EC8CC()
{
  result = qword_280C98A50;
  if (!qword_280C98A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A50);
  }

  return result;
}

unint64_t sub_2301EC924()
{
  result = qword_280C98A00;
  if (!qword_280C98A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A00);
  }

  return result;
}

unint64_t sub_2301EC97C()
{
  result = qword_280C98A08;
  if (!qword_280C98A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A08);
  }

  return result;
}

unint64_t sub_2301EC9D4()
{
  result = qword_280C9BC50;
  if (!qword_280C9BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BC50);
  }

  return result;
}

unint64_t sub_2301ECA2C()
{
  result = qword_280C9BC58;
  if (!qword_280C9BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BC58);
  }

  return result;
}

unint64_t sub_2301ECA84()
{
  result = qword_280C9BC38;
  if (!qword_280C9BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BC38);
  }

  return result;
}

unint64_t sub_2301ECADC()
{
  result = qword_280C9BC40;
  if (!qword_280C9BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BC40);
  }

  return result;
}

uint64_t sub_2301ECB30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E696D6572 && a2 == 0xED0000656C746954;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44497473696CLL && a2 == 0xE600000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230343B00 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2301ECC54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6974736567677573 && a2 == 0xEF65756C61566E6FLL;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00657079546E6FLL || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C65706970 && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEA00000000004449)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2301ECDD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736972756568 && a2 == 0xEF746C7573655263;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEF746C7573655267 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230343B20 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2301ECF00()
{
  result = qword_280C98A60;
  if (!qword_280C98A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A60);
  }

  return result;
}

unint64_t MersenneTwister.__allocating_init()()
{
  v0 = swift_allocObject();
  result = sub_2301ED1EC(0x7FFFFFFFFFFFFFFFuLL);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = [objc_allocWithZone(RMDMersenneTwisterRandomSource) initWithSeed_];
    if (result)
    {
      *(v0 + 16) = result;
      return v0;
    }
  }

  __break(1u);
  return result;
}

unint64_t MersenneTwister.init()()
{
  result = sub_2301ED1EC(0x7FFFFFFFFFFFFFFFuLL);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = [objc_allocWithZone(RMDMersenneTwisterRandomSource) initWithSeed_];
    if (result)
    {
      *(v0 + 16) = result;
      return v0;
    }
  }

  __break(1u);
  return result;
}

void *MersenneTwister.__allocating_init(seed:)(uint64_t a1)
{
  result = swift_allocObject();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = [objc_allocWithZone(RMDMersenneTwisterRandomSource) initWithSeed_];
    if (result)
    {
      v3[2] = result;
      return v3;
    }
  }

  __break(1u);
  return result;
}

unint64_t MersenneTwister.init(seed:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = [objc_allocWithZone(RMDMersenneTwisterRandomSource) initWithSeed_];
    if (result)
    {
      *(v1 + 16) = result;
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t MersenneTwister.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2301ED1EC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2319141A0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2319141A0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Dictionary.merging(takingValuesIn:)()
{

  return sub_23030F6C8();
}

uint64_t Dictionary.removingNils<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v70 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2303104C8();
  v69 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v80 = &v54 - v12;
  v13 = *(a2 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v81 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v54 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = sub_2303104C8();
  v72 = *(v75 - 8);
  v18 = MEMORY[0x28223BE20](v75);
  v76 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v74 = &v54 - v20;
  v84 = sub_23030F5F8();
  sub_23030F698();
  v61 = sub_23030F6F8();
  sub_23030F688();
  v21 = a2;
  v22 = *(a1 + 64);
  v55 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v54 = (v23 + 63) >> 6;
  v73 = TupleTypeMetadata2 - 8;
  v77 = TupleTypeMetadata2;
  v78 = (v13 + 16);
  v63 = v69 + 16;
  v82 = (v69 + 32);
  v83 = (v13 + 32);
  v71 = (v70 + 6);
  v72 += 4;
  v60 = (v70 + 4);
  v59 = (v70 + 2);
  v58 = (v70 + 7);
  v57 = v70 + 1;
  v64 = v13;
  v70 = (v13 + 8);
  v26 = v81;
  v56 = (v69 + 8);
  v68 = a1;

  v28 = 0;
  v66 = v7;
  v67 = v3;
  v65 = v10;
  while (v25)
  {
    v29 = v28;
LABEL_15:
    v34 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v35 = v34 | (v29 << 6);
    v36 = v68;
    v37 = v64;
    (*(v64 + 16))(v79, *(v68 + 48) + *(v64 + 72) * v35, v21);
    v38 = v69;
    v39 = *(v36 + 56) + *(v69 + 72) * v35;
    v40 = v80;
    v41 = v66;
    (*(v69 + 16))(v80, v39, v66);
    v42 = *(v77 + 48);
    v43 = *(v37 + 32);
    v7 = v41;
    v33 = v76;
    v32 = v77;
    v43();
    (*(v38 + 32))(&v33[v42], v40, v7);
    v44 = 0;
    v31 = v29;
    v3 = v67;
    v10 = v65;
    v26 = v81;
LABEL_16:
    v45 = *(v32 - 8);
    (*(v45 + 56))(v33, v44, 1, v32);
    v46 = v74;
    (*v72)();
    if ((*(v45 + 48))(v46, 1, v32) == 1)
    {

      return v84;
    }

    v47 = *(v32 + 48);
    v48 = v46;
    v49 = v46;
    v50 = v21;
    (*v83)(v26, v48, v21);
    (*v82)(v10, &v49[v47], v7);
    if ((*v71)(v10, 1, v3) == 1)
    {
      (*v70)(v26, v21);
      result = (*v56)(v10, v7);
    }

    else
    {
      v51 = v62;
      (*v60)(v62, v10, v3);
      (*v78)(v79, v26, v50);
      v52 = v3;
      v53 = v80;
      (*v59)(v80, v51, v52);
      (*v58)(v53, 0, 1, v52);
      v3 = v52;
      v26 = v81;
      sub_23030F738();
      (*v57)(v51, v3);
      result = (*v70)(v26, v50);
    }

    v28 = v31;
    v21 = v50;
  }

  if (v54 <= v28 + 1)
  {
    v30 = v28 + 1;
  }

  else
  {
    v30 = v54;
  }

  v31 = v30 - 1;
  v33 = v76;
  v32 = v77;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v54)
    {
      v25 = 0;
      v44 = 1;
      goto LABEL_16;
    }

    v25 = *(v55 + 8 * v29);
    ++v28;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dictionary<>.append(_:toCollectionUnderKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v8 = *(a3 + 16);
  v39 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v38 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v9);
  v37[1] = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = v37 - v16;
  v18 = swift_allocObject();
  v18[2] = v8;
  v18[3] = v12;
  v19 = *(a3 + 32);
  v18[4] = v19;
  v18[5] = a4;
  v20 = *(v15 + 16);
  v41 = v17;
  v20(v17, v44, AssociatedTypeWitness);
  v21 = (*v4 & 0xC000000000000001) == 0;
  v43 = a4;
  v40 = v4;
  if (!v21)
  {
    v22 = a2;
    if (__OFADD__(sub_2303106D8(), 1))
    {
      __break(1u);
    }

    else
    {
      v23 = sub_230310A98();
      v45 = v23;
      sub_2301EE014(v22, v8, v19);
      v25 = *(v23 + 16);
      v26 = (v24 & 1) == 0;
      v27 = v25 + v26;
      if (!__OFADD__(v25, v26))
      {
        v28 = v24;
        if (*(v23 + 24) < v27)
        {
          v29 = sub_230310A88();
          sub_2301EE1F8(v27, 1, v29);
          v23 = v45;
          v30 = v22;
          v31 = v22;
          goto LABEL_9;
        }

        v30 = v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v32 = *v4;
  v44 = a2;
  v45 = v32;
  sub_2301EE014(a2, v8, v19);
  if (__OFADD__(*(v32 + 16), (v33 & 1) == 0))
  {
    goto LABEL_17;
  }

  v28 = v33;
  sub_230310A88();
  v34 = sub_230310A68();
  v30 = v44;
  v23 = v45;
  if (v34)
  {
    v31 = v44;
LABEL_9:
    sub_2301EE014(v31, v8, v19);
    if ((v28 & 1) == (v35 & 1))
    {
      goto LABEL_12;
    }

LABEL_18:
    result = sub_2303112A8();
    __break(1u);
    return result;
  }

LABEL_12:
  *v40 = v23;
  if ((v28 & 1) == 0)
  {
    sub_2303101B8();
    (*(v39 + 16))(v38, v30, v8);
    sub_230310A78();
  }

  sub_230310148();
}

unint64_t sub_2301EE014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030F768();

  return sub_2301EE070(a1, v6, a2, a3);
}

unint64_t sub_2301EE070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_23030F818();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_2301EE1F8(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(*(a3 + 24) - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v59 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v7);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = *(v15 + 32);
  v60 = v17;
  v52 = v16;
  sub_230310BD8();
  v53 = a2;
  result = sub_230310BA8();
  v19 = result;
  if (*(v14 + 16))
  {
    v57 = v13;
    v46 = v3;
    v20 = 0;
    v21 = (v14 + 64);
    v22 = 1 << *(v14 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v14 + 64);
    v25 = (v22 + 63) >> 6;
    v47 = v6 + 16;
    v48 = (v11 + 16);
    v50 = v11;
    v51 = v6;
    v54 = (v6 + 32);
    v55 = (v11 + 32);
    v26 = result + 64;
    v49 = v14;
    v58 = v10;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v20 << 6);
      v32 = *(v14 + 48);
      v56 = *(v11 + 72);
      v33 = v32 + v56 * v31;
      if (v53)
      {
        (*v55)(v57, v33, v58);
        v34 = *(v14 + 56);
        v35 = *(v51 + 72);
        (*(v51 + 32))(v59, v34 + v35 * v31, v60);
      }

      else
      {
        (*v48)(v57, v33, v58);
        v36 = *(v14 + 56);
        v35 = *(v51 + 72);
        (*(v51 + 16))(v59, v36 + v35 * v31, v60);
      }

      result = sub_23030F768();
      v37 = -1 << *(v19 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v26 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v11 = v50;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v26 + 8 * v39);
          if (v43 != -1)
          {
            v27 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v38) & ~*(v26 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v11 = v50;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v55)((*(v19 + 48) + v56 * v27), v57, v58);
      result = (*v54)(*(v19 + 56) + v35 * v27, v59, v60);
      ++*(v19 + 16);
      v14 = v49;
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v4 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v14 + 32);
    v4 = v46;
    if (v44 >= 64)
    {
      bzero(v21, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v44;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v4 = v19;
  return result;
}

id REMList.autoCategorizationContext.getter()
{
  v1 = v0;
  v10 = 9;
  v9 = 0;
  if (!REMFeatureFlags.isEnabled(on:)(&v9))
  {
    return 0;
  }

  if ([v0 isGroup])
  {
    return 0;
  }

  v2 = [v0 account];
  v3 = [v2 capabilities];

  LODWORD(v2) = [v3 supportsSections];
  if (!v2)
  {
    return 0;
  }

  v4 = [v1 groceryContext];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 shouldCategorizeGroceryItems];

    if (v6)
    {
      return 0;
    }
  }

  if (qword_280C97260 != -1)
  {
    swift_once();
  }

  v8[0] = 0;
  REMGenerativeModelsAvailabilityManager.modelsAvailability(feature:)(v8);
  if (v8[1] == 2 || ![v1 isAutoCategorizationSupportedInCurrentAppVersion])
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277D44670]) initWithList_];
  }
}

uint64_t AutoCategorizeSessionType.rawValue.getter()
{
  if (*v0)
  {
    return 0x62616E4574736F70;
  }

  else
  {
    return 0x6C616974696E69;
  }
}

uint64_t sub_2301EE83C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x62616E4574736F70;
  }

  else
  {
    v3 = 0x6C616974696E69;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEE00746E656D656CLL;
  }

  if (*a2)
  {
    v5 = 0x62616E4574736F70;
  }

  else
  {
    v5 = 0x6C616974696E69;
  }

  if (*a2)
  {
    v6 = 0xEE00746E656D656CLL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_2301EE8F0()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301EE980()
{
  sub_23030F9C8();
}

uint64_t sub_2301EE9FC()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_2301EEA94(uint64_t *a1@<X8>)
{
  v2 = 0x6C616974696E69;
  if (*v1)
  {
    v2 = 0x62616E4574736F70;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEE00746E656D656CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t SuggestedRemindersRecipeClassifierType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6E614C726568746FLL;
  }
}

uint64_t sub_2301EEB38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x6E614C726568746FLL;
  }

  if (v2)
  {
    v4 = 0xEE00736567617567;
  }

  else
  {
    v4 = 0x800000023033F450;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x6E614C726568746FLL;
  }

  if (*a2)
  {
    v6 = 0x800000023033F450;
  }

  else
  {
    v6 = 0xEE00736567617567;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_2301EEBF0()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301EEC84()
{
  sub_23030F9C8();
}

uint64_t sub_2301EED04()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_2301EEDA0(unint64_t *a1@<X8>)
{
  v2 = 0x800000023033F450;
  v3 = 0x6E614C726568746FLL;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xEE00736567617567;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t SuggestedRemindersAdapterType.rawValue.getter()
{
  if (*v0)
  {
    return 0x7449657069636572;
  }

  else
  {
    return 0x74496E6F69746361;
  }
}

uint64_t sub_2301EEE38(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7449657069636572;
  }

  else
  {
    v2 = 0x74496E6F69746361;
  }

  if (*a2)
  {
    v3 = 0x7449657069636572;
  }

  else
  {
    v3 = 0x74496E6F69746361;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_230311048();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2301EEECC()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301EEF50()
{
  sub_23030F9C8();
}

uint64_t sub_2301EEFC0()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301EF04C@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_2301EF0A8(uint64_t *a1@<X8>)
{
  v2 = 0x74496E6F69746361;
  if (*v1)
  {
    v2 = 0x7449657069636572;
  }

  *a1 = v2;
  a1[1] = 0xEB00000000736D65;
}

uint64_t sub_2301EF0E8()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0xD000000000000010;
    }

    else if (v1 == 4)
    {
      return 0xD000000000000011;
    }

    else
    {
      result = 0x6552657461657263;
      switch(*v0)
      {
        case 1:
          result = 0xD000000000000011;
          break;
        case 2:
          result = 0xD000000000000017;
          break;
        case 3:
          result = 0xD000000000000021;
          break;
        case 4:
          result = 0xD000000000000018;
          break;
        case 5:
          result = 0xD000000000000011;
          break;
        case 6:
        case 0x10:
          result = 0xD000000000000014;
          break;
        case 7:
        case 0xE:
          result = 0xD00000000000001BLL;
          break;
        case 8:
        case 0xF:
          result = 0xD000000000000015;
          break;
        case 9:
          result = 0xD000000000000016;
          break;
        case 0xA:
          result = 0xD000000000000025;
          break;
        case 0xB:
          result = 0xD000000000000029;
          break;
        case 0xC:
          result = 0xD00000000000001FLL;
          break;
        case 0xD:
          result = 0xD000000000000022;
          break;
        case 0x11:
          result = 0x694C64656B636970;
          break;
        case 0x12:
          result = 0x6853746567646977;
          break;
        case 0x13:
          result = 0xD000000000000012;
          break;
        case 0x14:
          result = 0xD000000000000013;
          break;
        case 0x15:
          result = 0x6F43734177656976;
          break;
        default:
          return result;
      }
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    if (v1 == 1)
    {
      v2 = 0xD000000000000013;
    }

    if (v0[1])
    {
      return v2;
    }

    else
    {
      return 0x65526574656C6564;
    }
  }

  return result;
}

unint64_t sub_2301EF430()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >= 3;
  v4 = v2 - 3;
  if (v3)
  {
    v6 = 0x74694B64756F6C63;
    if (v1)
    {
      v6 = 0x5641446C6163;
    }

    if (v1 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    if (v4 >= 2)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else if (v1 <= 0xFD)
  {
    return sub_2301EF858();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2301EF4D0()
{
  v1 = *v0;
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      v2 = 0xE900000000000064;
      v3 = *v0;
      v16 = 0x7473694C6E65706FLL;
      v4 = 0xE500000000000000;
      v5 = 0x7961646F74;
      v6 = 0xE600000000000000;
      v7 = 0x646567676174;
      if (v3 != 6)
      {
        v7 = 0x6574656C706D6F63;
        v6 = 0xE900000000000064;
      }

      v8 = 0xE800000000000000;
      v9 = 0x64656E6769737361;
      if (v3 != 4)
      {
        v9 = 0x6E756F4669726973;
        v8 = 0xEF737070416E4964;
      }

      if (*v0 <= 5u)
      {
        v7 = v9;
        v6 = v8;
      }

      v10 = 0x656C756465686373;
      if (v3 != 2)
      {
        v10 = 7105633;
        v2 = 0xE300000000000000;
      }

      if (*v0)
      {
        v5 = 0x64656767616C66;
        v4 = 0xE700000000000000;
      }

      if (*v0 <= 1u)
      {
        v2 = v4;
      }

      else
      {
        v5 = v10;
      }

      if (*v0 <= 3u)
      {
        v11 = v5;
      }

      else
      {
        v11 = v7;
      }

      if (*v0 <= 3u)
      {
        v12 = v2;
      }

      else
      {
        v12 = v6;
      }

      MEMORY[0x231911790](v11, v12);

      return v16;
    }

    v14 = 0x7473694C6E65706FLL;
    if (v1 == 32770)
    {
      v15 = 0x7473694C6E65706FLL;
    }

    else
    {
      v15 = 0xD000000000000018;
    }

    if (v1 == 0x8000)
    {
      v14 = 0xD000000000000018;
    }

    if (*v0 <= 0x8001u)
    {
      return v14;
    }

    else
    {
      return v15;
    }
  }

  else
  {
    if (v1)
    {
      result = 0xD000000000000014;
    }

    else
    {
      result = 0x7473694C6E65706FLL;
    }

    v16 = result;
    if ((v1 & 0x100) != 0)
    {
      MEMORY[0x231911790](0x657261685373692ELL, 0xE900000000000064);
      return v16;
    }
  }

  return result;
}

unint64_t REMRemindersInCalendarUserOperation.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x65526574656C6564;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000010;
    if (v1 != 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0xD000000000000014;
    }

    v3 = 0xD000000000000016;
    if (!*v0)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_2301EF858()
{
  v1 = 0xD000000000000018;
  v2 = *v0;
  v3 = v2 >> 5;
  if (v2 >> 5 <= 2)
  {
    v8 = 0xD000000000000025;
    if (v2)
    {
      v8 = 0xD000000000000028;
    }

    v9 = 0xD00000000000002FLL;
    if (v2)
    {
      v9 = 0xD000000000000032;
    }

    if (v2 == 64)
    {
      v10 = 0xD000000000000010;
    }

    else
    {
      v10 = 0xD000000000000019;
    }

    if (v3 == 1)
    {
      v10 = v9;
    }

    if (v3)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v4 = 0xD00000000000002BLL;
    v5 = 0xD000000000000017;
    if (v2 != 160)
    {
      v5 = 0xD000000000000021;
    }

    if (v3 == 5)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000011;
    if (v2 != 96)
    {
      v6 = 0xD000000000000018;
    }

    if (v2 == 128)
    {
      v1 = 0xD00000000000001CLL;
    }

    if (v3 == 3)
    {
      v1 = v6;
    }

    if (v2 >> 5 <= 4)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }
}

ReminderKitInternal::REMRemindersInCalendarUserOperation_optional __swiftcall REMRemindersInCalendarUserOperation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_2301EFA60(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v9 = 0xEE007265646E696DLL;
    v10 = 0x65526574656C6564;
    if (v2 == 6)
    {
      v10 = 0xD000000000000013;
      v9 = 0x800000023033F540;
    }

    v11 = 0x800000023033F500;
    v12 = 0xD000000000000010;
    if (v2 != 4)
    {
      v12 = 0xD000000000000012;
      v11 = 0x800000023033F520;
    }

    if (*v1 <= 5u)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    if (*v1 <= 5u)
    {
      v9 = v11;
    }

    *a1 = v13;
    a1[1] = v9;
  }

  else
  {
    v3 = 0x800000023033F4C0;
    if (v2 == 2)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v2 != 2)
    {
      v3 = 0x800000023033F4E0;
    }

    v5 = 0x800000023033F480;
    v6 = 0xD000000000000016;
    if (*v1)
    {
      v5 = 0x800000023033F4A0;
    }

    else
    {
      v6 = 0xD000000000000014;
    }

    if (*v1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    *a1 = v7;
    a1[1] = v8;
  }
}

uint64_t REMRemindersWidgetUserOperation.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301EFBD4()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_2301EFC48()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_2301EFC9C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

ReminderKitInternal::REMRemindersOpenUserOperation::SmartListType_optional __swiftcall REMRemindersOpenUserOperation.SmartListType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t REMRemindersOpenUserOperation.SmartListType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7961646F74;
  v3 = 0x646567676174;
  if (v1 != 6)
  {
    v3 = 0x6574656C706D6F63;
  }

  v4 = 0x64656E6769737361;
  if (v1 != 4)
  {
    v4 = 0x6E756F4669726973;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C756465686373;
  if (v1 != 2)
  {
    v5 = 7105633;
  }

  if (*v0)
  {
    v2 = 0x64656767616C66;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_2301EFEA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7961646F74;
  v5 = 0xE600000000000000;
  v6 = 0x646567676174;
  if (v2 != 6)
  {
    v6 = 0x6574656C706D6F63;
    v5 = 0xE900000000000064;
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656E6769737361;
  if (v2 != 4)
  {
    v8 = 0x6E756F4669726973;
    v7 = 0xEF737070416E4964;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C756465686373;
  v10 = 0xE900000000000064;
  if (v2 != 2)
  {
    v9 = 7105633;
    v10 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = 0x64656767616C66;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t REMRemindersCreateListUserOperation.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t REMSharedListUserOperationDetail.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

id sub_2301F00C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

BOOL _s19ReminderKitInternal25REMRDLUserOperationDetailO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v2 == 64)
        {
          if (v3 == 64)
          {
            return 1;
          }
        }

        else if (v3 == 65)
        {
          return 1;
        }

        return 0;
      }

      if ((v3 & 0xE0) != 0x20)
      {
        return 0;
      }
    }

    else if (v3 >= 0x20)
    {
      return 0;
    }

    return (v3 ^ v2 ^ 1) & 1;
  }

  if (v2 >> 5 <= 4)
  {
    if (v4 == 3)
    {
      if (v2 == 96)
      {
        if (v3 != 96)
        {
          return 0;
        }
      }

      else if (v3 != 97)
      {
        return 0;
      }
    }

    else if (v2 == 128)
    {
      if (v3 != 128)
      {
        return 0;
      }
    }

    else if (v3 != 129)
    {
      return 0;
    }

    return 1;
  }

  if (v4 == 5)
  {
    if (v2 == 160)
    {
      if (v3 != 160)
      {
        return 0;
      }
    }

    else if (v3 != 161)
    {
      return 0;
    }

    return 1;
  }

  return v3 == 192;
}

BOOL _s19ReminderKitInternal16REMUserOperationO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if (v5 != 3)
      {
        return 0;
      }

      if (v2 != 2)
      {
        return v4 != 2 && ((v4 ^ v2) & 1) == 0;
      }
    }

    else
    {
      if (v3 != 4)
      {
        switch(*a1)
        {
          case 1u:
            return v5 == 5 && v4 == 1;
          case 2u:
            return v5 == 5 && v4 == 2;
          case 3u:
            return v5 == 5 && v4 == 3;
          case 4u:
            return v5 == 5 && v4 == 4;
          case 5u:
            return v5 == 5 && v4 == 5;
          case 6u:
            return v5 == 5 && v4 == 6;
          case 7u:
            return v5 == 5 && v4 == 7;
          case 8u:
            return v5 == 5 && v4 == 8;
          case 9u:
            return v5 == 5 && v4 == 9;
          case 0xAu:
            return v5 == 5 && v4 == 10;
          case 0xBu:
            return v5 == 5 && v4 == 11;
          case 0xCu:
            return v5 == 5 && v4 == 12;
          case 0xDu:
            return v5 == 5 && v4 == 13;
          case 0xEu:
            return v5 == 5 && v4 == 14;
          case 0xFu:
            return v5 == 5 && v4 == 15;
          case 0x10u:
            return v5 == 5 && v4 == 16;
          case 0x11u:
            return v5 == 5 && v4 == 17;
          case 0x12u:
            return v5 == 5 && v4 == 18;
          case 0x13u:
            return v5 == 5 && v4 == 19;
          case 0x14u:
            return v5 == 5 && v4 == 20;
          case 0x15u:
            return v5 == 5 && v4 == 21;
          default:
            return v5 == 5 && v4 == 0;
        }
      }

      if (v5 != 4)
      {
        return 0;
      }

      if (v2 != 2)
      {
        return v4 != 2 && ((v4 ^ v2) & 1) == 0;
      }
    }

    return v4 == 2;
  }

  if (a1[1])
  {
    if (v3 == 1)
    {
      if (v5 != 1)
      {
        return 0;
      }

      v34[0] = *a1;
      v34[1] = v4;
      if (v2 <= 0xFD)
      {
        v33 = v2;
        if (v4 > 0xFD)
        {
          return 0;
        }

        v6 = v34;
        v7 = &v33;
        return _s19ReminderKitInternal25REMRDLUserOperationDetailO2eeoiySbAC_ACtFZ_0(v7, v6 + 1);
      }

      return v4 > 0xFD;
    }

    if (v5 != 2)
    {
      return 0;
    }

    v36[0] = *a1;
    v36[1] = v4;
    if (v2 > 0xFD)
    {
      return v4 > 0xFD;
    }

    v35 = v2;
    if (v4 > 0xFD)
    {
      return 0;
    }

    v6 = v36;
    v7 = &v35;
  }

  else
  {
    if (a2[1])
    {
      return 0;
    }

    v32[0] = *a1;
    v32[1] = v4;
    if (v2 > 0xFD)
    {
      return v4 > 0xFD;
    }

    v31 = v2;
    if (v4 > 0xFD)
    {
      return 0;
    }

    v6 = v32;
    v7 = &v31;
  }

  return _s19ReminderKitInternal25REMRDLUserOperationDetailO2eeoiySbAC_ACtFZ_0(v7, v6 + 1);
}

uint64_t _s19ReminderKitInternal29REMRemindersOpenUserOperationO2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 14)
  {
    if (v2 >> 14 == 1)
    {
      if ((v3 & 0xC000) == 0x4000)
      {
        return sub_2302AC3A4(v2, v3);
      }
    }

    else if (v2 > 32769)
    {
      if (v2 == 32770)
      {
        if (v3 == 32770)
        {
          return 1;
        }
      }

      else if (v3 == 32771)
      {
        return 1;
      }
    }

    else if (v2 == 0x8000)
    {
      if (v3 == 0x8000)
      {
        return 1;
      }
    }

    else if (v3 == 32769)
    {
      return 1;
    }
  }

  else if (v3 < 0x4000 && ((v3 ^ v2) & 1) == 0)
  {
    return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
  }

  return 0;
}

uint64_t sub_2301F057C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
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
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_23005EE00(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_23008B1D8();
      }
    }

    else
    {
      sub_23005F0F4(v29, v42 & 1);
      v31 = sub_23005EE00(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_230060014();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

id sub_2301F0804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_23030EE18();
  v4 = sub_23030EE68();
  v5 = *(v4 - 8);
  v6 = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    v6 = sub_23030EE38();
    (*(v5 + 8))(v2, v4);
  }

  [v3 setTimeZone_];

  v7 = sub_23030F8B8();
  [v3 setDateFormat_];

  return v3;
}

unint64_t sub_2301F0980()
{
  result = qword_27DB14A70;
  if (!qword_27DB14A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB14A70);
  }

  return result;
}

unint64_t sub_2301F09D0()
{
  result = qword_27DB16F78;
  if (!qword_27DB16F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F78);
  }

  return result;
}

unint64_t sub_2301F0A28()
{
  result = qword_27DB16F80;
  if (!qword_27DB16F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F80);
  }

  return result;
}

unint64_t sub_2301F0A80()
{
  result = qword_27DB16F88;
  if (!qword_27DB16F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F88);
  }

  return result;
}

unint64_t sub_2301F0AD8()
{
  result = qword_27DB16F90;
  if (!qword_27DB16F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F90);
  }

  return result;
}

unint64_t sub_2301F0B30()
{
  result = qword_27DB16F98;
  if (!qword_27DB16F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16F98);
  }

  return result;
}

unint64_t sub_2301F0B88()
{
  result = qword_27DB16FA0;
  if (!qword_27DB16FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16FA0);
  }

  return result;
}

unint64_t sub_2301F0BE0()
{
  result = qword_27DB16FA8;
  if (!qword_27DB16FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16FA8);
  }

  return result;
}

unint64_t sub_2301F0C38()
{
  result = qword_27DB16FB0;
  if (!qword_27DB16FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16FB0);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for REMAnalyticsEvent(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        *a1 = *a2;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 12) = *(a2 + 12);
        v35 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v35;
        v36 = *(a2 + 7);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = v36;
        v37 = *(a2 + 9);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = v37;
        v38 = *(a2 + 10);
        v39 = *(a2 + 11);
        *(a1 + 10) = v38;
        *(a1 + 11) = v39;
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
        }

        else
        {
          v8 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v8;
          a1[16] = a2[16];
          v9 = *(a2 + 4);
          *(a1 + 3) = *(a2 + 3);
          *(a1 + 4) = v9;
          v10 = *(a2 + 6);
          *(a1 + 5) = *(a2 + 5);
          *(a1 + 6) = v10;
          v11 = *(a2 + 8);
          *(a1 + 7) = *(a2 + 7);
          *(a1 + 8) = v11;
          v12 = *(a2 + 10);
          *(a1 + 9) = *(a2 + 9);
          *(a1 + 10) = v12;
          v13 = *(a2 + 11);
          v14 = *(a2 + 12);
          *(a1 + 11) = v13;
          *(a1 + 12) = v14;
        }
      }

      goto LABEL_36;
    }

    switch(EnumCaseMultiPayload)
    {
      case 9:
        v40 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v40;
        v41 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v41;
        v42 = *(a2 + 4);
        v43 = *(a2 + 5);
        *(a1 + 4) = v42;
        *(a1 + 5) = v43;

        goto LABEL_36;
      case 11:
        *a1 = *a2;
        a1[8] = a2[8];
        *(a1 + 2) = *(a2 + 2);
        a1[24] = a2[24];
        v32 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v32;
        *(a1 + 24) = *(a2 + 24);
        a1[64] = a2[64];
        *(a1 + 7) = *(a2 + 7);
        a1[65] = a2[65];
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 6) = *(a2 + 6);

        goto LABEL_36;
      case 14:
        v17 = *a2;
        v18 = *(a2 + 1);
        *a1 = v17;
        *(a1 + 1) = v18;
        v19 = v17;

        goto LABEL_36;
    }

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_31;
      }

      *a1 = *a2;
      v20 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v20;

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F58);
      v22 = *(v21 + 64);
      v23 = sub_23030EB58();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(&a2[v22], 1, v23))
      {
        goto LABEL_28;
      }
    }

    else
    {
      *a1 = *a2;
      v25 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v25;

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F60);
      v22 = *(v21 + 64);
      v23 = sub_23030EB58();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(&a2[v22], 1, v23))
      {
        goto LABEL_28;
      }
    }

    goto LABEL_34;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v33 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v33;

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F50);
      v22 = *(v21 + 64);
      v23 = sub_23030EB58();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(&a2[v22], 1, v23))
      {
LABEL_28:
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v22], &a2[v22], *(*(v34 - 8) + 64));
LABEL_35:
        v46 = *(v21 + 80);
        v47 = &a1[v46];
        v48 = &a2[v46];
        v49 = *(v48 + 1);
        *v47 = *v48;
        *(v47 + 1) = v49;

        goto LABEL_36;
      }

LABEL_34:
      (*(v24 + 16))(&a1[v22], &a2[v22], v23);
      (*(v24 + 56))(&a1[v22], 0, 1, v23);
      goto LABEL_35;
    case 3:
      v26 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v26;
      v27 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v27;
      v28 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v28;
      v29 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v29;
      v30 = *(a2 + 8);
      v31 = *(a2 + 9);
      *(a1 + 8) = v30;
      *(a1 + 9) = v31;

      goto LABEL_36;
    case 5:
      v16 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v16;
      *(a1 + 1) = *(a2 + 1);

LABEL_36:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_31:
  v44 = *(v6 + 64);

  return memcpy(a1, a2, v44);
}

void *assignWithCopy for REMAnalyticsEvent(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_230051BD8(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 25) = *(a2 + 25);
        a1[4] = a2[4];
        a1[5] = a2[5];
        a1[6] = a2[6];
        a1[7] = a2[7];
        a1[8] = a2[8];
        a1[9] = a2[9];
        a1[10] = a2[10];
        a1[11] = a2[11];
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          *a1 = *a2;
          a1[1] = a2[1];
        }

        else
        {
          *a1 = *a2;
          a1[1] = a2[1];
          *(a1 + 16) = *(a2 + 16);
          a1[3] = a2[3];
          a1[4] = a2[4];
          a1[5] = a2[5];
          a1[6] = a2[6];
          a1[7] = a2[7];
          a1[8] = a2[8];
          a1[9] = a2[9];
          a1[10] = a2[10];
          a1[11] = a2[11];
          a1[12] = a2[12];
        }
      }

      goto LABEL_35;
    }

    switch(EnumCaseMultiPayload)
    {
      case 9:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        a1[5] = a2[5];

        goto LABEL_35;
      case 11:
        v13 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *a1 = v13;
        v14 = a2[2];
        *(a1 + 24) = *(a2 + 24);
        a1[2] = v14;
        a1[4] = a2[4];
        a1[5] = a2[5];
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 49) = *(a2 + 49);
        v15 = a2[7];
        *(a1 + 64) = *(a2 + 64);
        a1[7] = v15;
        *(a1 + 65) = *(a2 + 65);
        a1[9] = a2[9];
        a1[10] = a2[10];
        a1[11] = a2[11];
        a1[12] = a2[12];
        a1[13] = a2[13];

        goto LABEL_35;
      case 14:
        v7 = *a2;
        *a1 = *a2;
        a1[1] = a2[1];
        v8 = v7;

        goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_30;
      }

      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F58);
      v10 = *(v9 + 64);
      v11 = sub_23030EB58();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
        goto LABEL_27;
      }
    }

    else
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F60);
      v10 = *(v9 + 64);
      v11 = sub_23030EB58();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
        goto LABEL_27;
      }
    }

    goto LABEL_33;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F50);
      v10 = *(v9 + 64);
      v11 = sub_23030EB58();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2 + v10, 1, v11))
      {
LABEL_27:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1 + v10, a2 + v10, *(*(v16 - 8) + 64));
LABEL_34:
        v19 = *(v9 + 80);
        v20 = (a1 + v19);
        v21 = (a2 + v19);
        *v20 = *v21;
        v20[1] = v21[1];

        goto LABEL_35;
      }

LABEL_33:
      (*(v12 + 16))(a1 + v10, a2 + v10, v11);
      (*(v12 + 56))(a1 + v10, 0, 1, v11);
      goto LABEL_34;
    case 3:
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      a1[4] = a2[4];
      a1[5] = a2[5];
      a1[6] = a2[6];
      a1[7] = a2[7];
      a1[8] = a2[8];
      a1[9] = a2[9];

      goto LABEL_35;
    case 5:
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];

LABEL_35:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_30:
  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

char *initializeWithTake for REMAnalyticsEvent(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F50);
      v18 = *(v17 + 64);
      v19 = sub_23030EB58();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(&a2[v18], 1, v19))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v18], &a2[v18], *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v20 + 32))(&a1[v18], &a2[v18], v19);
        (*(v20 + 56))(&a1[v18], 0, 1, v19);
      }

      *&a1[*(v17 + 80)] = *&a2[*(v17 + 80)];
      goto LABEL_19;
    case 1:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F58);
      v13 = *(v12 + 64);
      v14 = sub_23030EB58();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(&a2[v13], 1, v14))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v15 + 32))(&a1[v13], &a2[v13], v14);
        (*(v15 + 56))(&a1[v13], 0, 1, v14);
      }

      *&a1[*(v12 + 80)] = *&a2[*(v12 + 80)];
      goto LABEL_19;
    case 0:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F60);
      v8 = *(v7 + 64);
      v9 = sub_23030EB58();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(&a2[v8], 1, v9))
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
      }

      else
      {
        (*(v10 + 32))(&a1[v8], &a2[v8], v9);
        (*(v10 + 56))(&a1[v8], 0, 1, v9);
      }

      *&a1[*(v7 + 80)] = *&a2[*(v7 + 80)];
LABEL_19:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v22 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v22);
}

char *assignWithTake for REMAnalyticsEvent(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_230051BD8(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F50);
      v18 = *(v17 + 64);
      v19 = sub_23030EB58();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(&a2[v18], 1, v19))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v18], &a2[v18], *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v20 + 32))(&a1[v18], &a2[v18], v19);
        (*(v20 + 56))(&a1[v18], 0, 1, v19);
      }

      *&a1[*(v17 + 80)] = *&a2[*(v17 + 80)];
      goto LABEL_20;
    case 1:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F58);
      v13 = *(v12 + 64);
      v14 = sub_23030EB58();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(&a2[v13], 1, v14))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v15 + 32))(&a1[v13], &a2[v13], v14);
        (*(v15 + 56))(&a1[v13], 0, 1, v14);
      }

      *&a1[*(v12 + 80)] = *&a2[*(v12 + 80)];
      goto LABEL_20;
    case 0:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16F60);
      v8 = *(v7 + 64);
      v9 = sub_23030EB58();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(&a2[v8], 1, v9))
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
      }

      else
      {
        (*(v10 + 32))(&a1[v8], &a2[v8], v9);
        (*(v10 + 56))(&a1[v8], 0, 1, v9);
      }

      *&a1[*(v7 + 80)] = *&a2[*(v7 + 80)];
LABEL_20:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v22 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v22);
}

uint64_t getEnumTagSinglePayload for REMUserOperation(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 5)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for REMUserOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
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
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2301F24FC(unsigned __int8 *a1)
{
  if (a1[1] <= 4u)
  {
    return a1[1];
  }

  else
  {
    return *a1 + 5;
  }
}

_BYTE *sub_2301F2514(_BYTE *result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  result[1] = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for REMRemindersOpenUserOperation(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFFE)
  {
    goto LABEL_17;
  }

  if (a2 + 61442 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61442 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61442;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 61442;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61442;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 14) | (4 * ((*a1 >> 4) & 0x3E0 | (*a1 >> 3)))) ^ 0xFFF;
  if (v6 >= 0xFFD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for REMRemindersOpenUserOperation(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61442 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61442 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFFD)
  {
    v5 = ((a2 - 4094) >> 16) + 1;
    *result = a2 - 4094;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 2) & 0x3FF) - (a2 << 10);
    *result = (16 * v6) & 0xFE00 | (8 * (v6 & 0x1F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2301F26CC(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 7 | (8 * ((v1 >> 8) & 1))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_2301F2704(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0x107 | (a2 << 14);
  }

  else
  {
    *result = (32 * (a2 - 2)) & 0x100 | (a2 - 2) & 7 | 0x8000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMRDLUserOperationDetail(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7A)
  {
    goto LABEL_17;
  }

  if (a2 + 134 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 134) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 134;
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

      return (*a1 | (v4 << 8)) - 134;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 134;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x79)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for REMRDLUserOperationDetail(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 134 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 134) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7A)
  {
    v4 = 0;
  }

  if (a2 > 0x79)
  {
    v5 = ((a2 - 122) >> 8) + 1;
    *result = a2 - 122;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2301F28C8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x3F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 | 0xFFFFFFFE) + 2 * (v1 >> 5);
  }
}

_BYTE *sub_2301F28F4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = (a2 & 1 | (32 * (a2 >> 1))) + 32;
  }

  return result;
}

void REMSearchableItemAttributeName.attributeKey.getter()
{
  v1 = *v0 < 2u;
  v2 = objc_allocWithZone(MEMORY[0x277CC33B0]);
  v3 = sub_23030F8B8();

  v4 = [v2 initWithKeyName:v3 searchable:0 searchableByDefault:0 unique:v1 multiValued:0];

  if (!v4)
  {
    __break(1u);
  }
}

unint64_t REMSearchableItemAttributeName.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x655273494D45525FLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 0x6D6574494D45525FLL;
  if (v1 != 4)
  {
    v4 = 0x67616C464D45525FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F6363414D45525FLL;
  if (v1 != 2)
  {
    v5 = 0x7473694C4D45525FLL;
  }

  if (*v0)
  {
    v2 = 0x656A624F4D45525FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

ReminderKitInternal::REMSearchableItemAttributeName_optional __swiftcall REMSearchableItemAttributeName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_2301F2CE4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xEF746E6572727563;
  v6 = 0x655273494D45525FLL;
  if (v2 != 6)
  {
    v6 = 0xD000000000000020;
    v5 = 0x800000023033F5D0;
  }

  v7 = 0xEC00000065707954;
  v8 = 0x6D6574494D45525FLL;
  if (v2 != 4)
  {
    v8 = 0x67616C464D45525FLL;
    v7 = 0xEB00000000646567;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00004449746E75;
  v10 = 0x6F6363414D45525FLL;
  if (v2 != 2)
  {
    v10 = 0x7473694C4D45525FLL;
    v9 = 0xEA00000000004449;
  }

  if (*v1)
  {
    v4 = 0x656A624F4D45525FLL;
    v3 = 0xEC00000044497463;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t REMSearchableItemType.entityName.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    ObjCClassFromMetadata = objc_opt_self();
  }

  else
  {
    if (v1 == 3)
    {
      v2 = &qword_27DB165C8;
    }

    else
    {
      v2 = &qword_280C96EB0;
    }

    sub_23004CBA4(0, v2);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  v4 = [ObjCClassFromMetadata cdEntityName];
  v5 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v5;
}

ReminderKitInternal::REMSearchableItemType_optional __swiftcall REMSearchableItemType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2301F2FE8()
{
  if (*v0)
  {
    return 1701736302;
  }

  else
  {
    return 0x797265636F7267;
  }
}

uint64_t sub_2301F301C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797265636F7267 && a2 == 0xE700000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2301F30F8(uint64_t a1)
{
  v2 = sub_2301F3510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301F3134(uint64_t a1)
{
  v2 = sub_2301F3510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301F3170(uint64_t a1)
{
  v2 = sub_2301F35B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301F31AC(uint64_t a1)
{
  v2 = sub_2301F35B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301F31E8(uint64_t a1)
{
  v2 = sub_2301F3564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301F3224(uint64_t a1)
{
  v2 = sub_2301F3564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSearchableListType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16FC0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16FC8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16FD0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301F3510();
  sub_230311448();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2301F3564();
    v14 = v18;
    sub_230310D48();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2301F35B8();
    sub_230310D48();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_2301F3510()
{
  result = qword_27DB16FD8;
  if (!qword_27DB16FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16FD8);
  }

  return result;
}

unint64_t sub_2301F3564()
{
  result = qword_27DB16FE0;
  if (!qword_27DB16FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16FE0);
  }

  return result;
}

unint64_t sub_2301F35B8()
{
  result = qword_27DB16FE8;
  if (!qword_27DB16FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16FE8);
  }

  return result;
}

uint64_t REMSearchableListType.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t REMSearchableListType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16FF0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16FF8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17000);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301F3510();
  v12 = v31;
  sub_230311428();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_230310D08();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_2300DB8E4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_230310918();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v22 = &type metadata for REMSearchableListType;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_2301F3564();
        sub_230310C28();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2301F35B8();
        sub_230310C28();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

ReminderKitInternal::REMStringMatchingStyle_optional __swiftcall REMStringMatchingStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t REMSearchCriterion.Inclusion.description.getter()
{
  v1 = 0x6564756C636E69;
  if (*v0 != 1)
  {
    v1 = 0x466564756C636E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564756C637865;
  }
}

uint64_t sub_2301F3CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2301FA5BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2301F3CD0(uint64_t a1)
{
  v2 = sub_2301F421C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301F3D0C(uint64_t a1)
{
  v2 = sub_2301F421C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301F3D48(uint64_t a1)
{
  v2 = sub_2301F4318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301F3D84(uint64_t a1)
{
  v2 = sub_2301F4318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301F3DC0(uint64_t a1)
{
  v2 = sub_2301F42C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301F3DFC(uint64_t a1)
{
  v2 = sub_2301F42C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301F3E38(uint64_t a1)
{
  v2 = sub_2301F4270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301F3E74(uint64_t a1)
{
  v2 = sub_2301F4270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSearchCriterion.Inclusion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17010);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17018);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17020);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17028);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301F421C();
  sub_230311448();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_2301F42C4();
      v9 = v21;
      sub_230310D48();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_2301F4270();
      v9 = v24;
      sub_230310D48();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2301F4318();
    sub_230310D48();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_2301F421C()
{
  result = qword_27DB17030;
  if (!qword_27DB17030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17030);
  }

  return result;
}

unint64_t sub_2301F4270()
{
  result = qword_27DB17038;
  if (!qword_27DB17038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17038);
  }

  return result;
}

unint64_t sub_2301F42C4()
{
  result = qword_27DB17040;
  if (!qword_27DB17040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17040);
  }

  return result;
}

unint64_t sub_2301F4318()
{
  result = qword_27DB17048;
  if (!qword_27DB17048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17048);
  }

  return result;
}

uint64_t REMSearchCriterion.Inclusion.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t REMSearchCriterion.Inclusion.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17050);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17058);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17060);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17068);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2301F421C();
  v15 = v36;
  sub_230311428();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_230310D08();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_2300DB8E0();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_230310918();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v24 = &type metadata for REMSearchCriterion.Inclusion;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_2301F42C4();
          sub_230310C28();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_2301F4270();
          v26 = v17;
          sub_230310C28();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_2301F4318();
        sub_230310C28();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void (*CSSearchableItemAttributeSet.rem_objectID.modify(uint64_t *a1))(id **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = sub_23030E9B8();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[4] = v8;
  *v5 = CSSearchableItemAttributeSet.rem_objectID.getter();
  return sub_2301F4AE4;
}

uint64_t sub_2301F4B08(uint64_t a1, unint64_t *a2)
{
  v4 = sub_23030F8B8();

  v5 = [v2 attributeForKey_];

  if (v5 && (sub_2303105E8(), swift_unknownObjectRelease(), sub_230061914(&v9, &v8), sub_23004CBA4(0, a2), swift_dynamicCast()))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void (*CSSearchableItemAttributeSet.rem_objectIDString.modify(uint64_t *a1))(id **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v2;
  v6 = sub_23030F8B8();
  v7 = [v2 attributeForKey_];

  if (v7 && (sub_2303105E8(), swift_unknownObjectRelease(), sub_230061914(v5, (v5 + 32)), sub_23004CBA4(0, &qword_27DB14A70), swift_dynamicCast()) && (v8 = *(v5 + 80)) != 0)
  {
    v9 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v5 + 64) = v9;
  *(v5 + 72) = v11;
  return sub_2301F4E64;
}

id sub_2301F4EAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_23030E9B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23030F8B8();
  v10 = [v1 attributeForKey_];

  if (v10)
  {
    sub_2303105E8();
    swift_unknownObjectRelease();
    sub_230061914(&v18, &v17);
    sub_23004CBA4(0, &qword_27DB14A70);
    if (swift_dynamicCast())
    {
      v11 = v16;
      if (v16)
      {
        _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

        sub_23030E988();

        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_230166394(v4);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          v12 = sub_23030E8D8();
          v13 = [objc_opt_self() objectIDWithURL_];

          (*(v6 + 8))(v8, v5);
          result = v13;
          if (v13)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2301F512C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = sub_23030E9B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v11 = [*a1 urlRepresentation];
    sub_23030E938();

    v12 = sub_23030E888();
    v14 = v13;
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return a5(v12, v14);
}

uint64_t sub_2301F52A8()
{
  v1 = sub_23030F8B8();
  v2 = [v0 attributeForKey_];

  if (!v2)
  {
    return 0;
  }

  sub_2303105E8();
  swift_unknownObjectRelease();
  sub_230061914(&v7, &v6);
  sub_23004CBA4(0, &qword_27DB14A70);
  if (!swift_dynamicCast() || !v5)
  {
    return 0;
  }

  v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v3;
}

void (*CSSearchableItemAttributeSet.rem_accountID.modify(uint64_t *a1))(id **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = sub_23030E9B8();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[4] = v8;
  *v5 = CSSearchableItemAttributeSet.rem_accountID.getter();
  return sub_2301F5494;
}

void (*CSSearchableItemAttributeSet.rem_accountIDString.modify(uint64_t *a1))(id **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v2;
  v6 = sub_23030F8B8();
  v7 = [v2 attributeForKey_];

  if (v7 && (sub_2303105E8(), swift_unknownObjectRelease(), sub_230061914(v5, (v5 + 32)), sub_23004CBA4(0, &qword_27DB14A70), swift_dynamicCast()) && (v8 = *(v5 + 80)) != 0)
  {
    v9 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v5 + 64) = v9;
  *(v5 + 72) = v11;
  return sub_2301F5610;
}

void sub_2301F5674(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  v8 = sub_23030E9B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = [a1 urlRepresentation];
    sub_23030E938();

    sub_23030E888();
    (*(v9 + 8))(v11, v8);
    v13 = sub_23030F8B8();
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(MEMORY[0x277CC33B0]);
  v15 = sub_23030F8B8();
  v16 = [v14 initWithKeyName:v15 searchable:0 searchableByDefault:0 unique:a4 & 1 multiValued:0];

  if (v16)
  {
    [v6 setValue:v13 forCustomKey:v16];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_2301F5868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v7 = sub_23030F8B8();
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_allocWithZone(MEMORY[0x277CC33B0]);
  v9 = sub_23030F8B8();
  v10 = [v8 initWithKeyName:v9 searchable:0 searchableByDefault:0 unique:a5 & 1 multiValued:0];

  if (v10)
  {
    [v5 setValue:v7 forCustomKey:v10];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void (*CSSearchableItemAttributeSet.rem_listID.modify(uint64_t *a1))(id **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = sub_23030E9B8();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[4] = v8;
  *v5 = CSSearchableItemAttributeSet.rem_listID.getter();
  return sub_2301F5A20;
}

void sub_2301F5A40(id **a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *a1;
  v7 = **a1;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      v14 = v6[3];
      v13 = v6[4];
      v15 = v6[2];
      v16 = [**a1 urlRepresentation];
      sub_23030E938();

      sub_23030E888();
      v14[1](v13, v15);
      v17 = sub_23030F8B8();
    }

    else
    {
      v17 = 0;
    }

    v22 = objc_allocWithZone(MEMORY[0x277CC33B0]);
    v23 = sub_23030F8B8();
    v24 = [v22 initWithKeyName:v23 searchable:0 searchableByDefault:0 unique:a5 & 1 multiValued:0];

    if (v24)
    {
      v21 = v6[4];
      [v6[1] setValue:v17 forCustomKey:v24];
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return;
  }

  if (v7)
  {
    v9 = v6[3];
    v8 = v6[4];
    v10 = v6[2];
    v11 = [v7 urlRepresentation];
    sub_23030E938();

    sub_23030E888();
    v9[1](v8, v10);
    v12 = sub_23030F8B8();
  }

  else
  {
    v12 = 0;
  }

  v18 = objc_allocWithZone(MEMORY[0x277CC33B0]);
  v19 = sub_23030F8B8();
  v20 = [v18 initWithKeyName:v19 searchable:0 searchableByDefault:0 unique:a5 & 1 multiValued:0];

  if (!v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v6[4];
  [v6[1] setValue:v12 forCustomKey:v20];
  swift_unknownObjectRelease();

  v7 = *v6;
LABEL_12:

  free(v21);

  free(v6);
}

void sub_2301F5CA8(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v3 = sub_2301F4B08(a1, &qword_27DB14A70);
  if (v3)
  {
    v4 = v3;
    v5 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void (*CSSearchableItemAttributeSet.rem_listIDString.modify(uint64_t *a1))(id **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v2;
  v6 = sub_23030F8B8();
  v7 = [v2 attributeForKey_];

  if (v7 && (sub_2303105E8(), swift_unknownObjectRelease(), sub_230061914(v5, (v5 + 32)), sub_23004CBA4(0, &qword_27DB14A70), swift_dynamicCast()) && (v8 = *(v5 + 80)) != 0)
  {
    v9 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v5 + 64) = v9;
  *(v5 + 72) = v11;
  return sub_2301F5E60;
}

void sub_2301F5E80(id **a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *a1;
  v7 = (*a1)[9];
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      v9 = sub_23030F8B8();
    }

    else
    {
      v9 = 0;
    }

    v13 = objc_allocWithZone(MEMORY[0x277CC33B0]);
    v14 = sub_23030F8B8();
    v15 = [v13 initWithKeyName:v14 searchable:0 searchableByDefault:0 unique:a5 & 1 multiValued:0];

    if (v15)
    {
      [v6[11] setValue:v9 forCustomKey:v15];
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return;
  }

  if (v7)
  {

    v8 = sub_23030F8B8();
  }

  else
  {
    v8 = 0;
  }

  v10 = objc_allocWithZone(MEMORY[0x277CC33B0]);
  v11 = sub_23030F8B8();
  v12 = [v10 initWithKeyName:v11 searchable:0 searchableByDefault:0 unique:a5 & 1 multiValued:0];

  if (!v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v6[11] setValue:v8 forCustomKey:v12];
  swift_unknownObjectRelease();

LABEL_12:

  free(v6);
}

void CSSearchableItemAttributeSet.rem_itemType.getter(char *a1@<X8>)
{
  v3 = sub_23030F8B8();
  v4 = [v1 attributeForKey_];

  if (v4 && (sub_2303105E8(), swift_unknownObjectRelease(), sub_230061914(&v9, &v8), sub_23004CBA4(0, &qword_27DB17080), swift_dynamicCast()) && v7)
  {
    v5 = [v7 integerValue];

    v6 = 5;
    if (v5 < 5)
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 5;
  }

  *a1 = v6;
}

char sub_2301F6138@<W0>(char *a1@<X8>)
{
  v2 = sub_2301F4B08(4, &qword_27DB17080);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 integerValue];

    LOBYTE(v2) = REMSearchableItemType.init(rawValue:)(v4);
    v5 = v7;
  }

  else
  {
    v5 = 5;
  }

  *a1 = v5;
  return v2;
}

void CSSearchableItemAttributeSet.rem_itemType.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 5 || (v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_]) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CC33B0]);
  v5 = sub_23030F8B8();
  v6 = [v4 initWithKeyName:v5 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  if (v6)
  {
    [v1 setValue:v7 forCustomKey:v6];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void (*CSSearchableItemAttributeSet.rem_itemType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v2;
  v6 = sub_23030F8B8();
  v7 = [v2 attributeForKey_];

  if (v7 && (sub_2303105E8(), swift_unknownObjectRelease(), sub_230061914(v5, (v5 + 32)), sub_23004CBA4(0, &qword_27DB17080), swift_dynamicCast()) && (v8 = *(v5 + 64)) != 0)
  {
    v9 = [*(v5 + 64) integerValue];

    v10 = 5;
    if (v9 < 5)
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 5;
  }

  *(v5 + 80) = v10;
  return sub_2301F6418;
}

void sub_2301F6418(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 80);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 80);
    v3 = &v5;
  }

  CSSearchableItemAttributeSet.rem_itemType.setter(v3);

  free(v2);
}

id CSSearchableItemAttributeSet.rem_flagged.getter()
{
  v1 = sub_23030F8B8();
  v2 = [v0 attributeForKey_];

  if (!v2)
  {
    return 0;
  }

  sub_2303105E8();
  swift_unknownObjectRelease();
  sub_230061914(&v7, &v6);
  sub_23004CBA4(0, &qword_27DB17080);
  if (!swift_dynamicCast() || !v5)
  {
    return 0;
  }

  v3 = [v5 integerValue];

  return v3;
}

void sub_2301F6584(uint64_t a1@<X8>)
{
  v2 = sub_2301F4B08(5, &qword_27DB17080);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v3 == 0;
}

void CSSearchableItemAttributeSet.rem_flagged.setter(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_]) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v4 = objc_allocWithZone(MEMORY[0x277CC33B0]);
  v5 = sub_23030F8B8();
  v6 = [v4 initWithKeyName:v5 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  if (v6)
  {
    [v2 setValue:v7 forCustomKey:v6];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void (*CSSearchableItemAttributeSet.rem_flagged.modify(uint64_t *a1))(uint64_t a1)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v2;
  v6 = sub_23030F8B8();
  v7 = [v2 attributeForKey_];

  if (v7 && (sub_2303105E8(), swift_unknownObjectRelease(), sub_230061914(v5, (v5 + 32)), sub_23004CBA4(0, &qword_27DB17080), swift_dynamicCast()) && (v8 = *(v5 + 80)) != 0)
  {
    v9 = [*(v5 + 80) integerValue];

    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  *(v5 + 64) = v9;
  *(v5 + 72) = v10;
  return sub_2301F6858;
}

void sub_2301F6858(uint64_t a1)
{
  v1 = *a1;
  CSSearchableItemAttributeSet.rem_flagged.setter(*(*a1 + 64), *(*a1 + 72));

  free(v1);
}

uint64_t CSSearchableItemAttributeSet.rem_isRecurrent.getter()
{
  v1 = sub_23030F8B8();
  v2 = [v0 attributeForKey_];

  if (!v2)
  {
    return 2;
  }

  sub_2303105E8();
  swift_unknownObjectRelease();
  sub_230061914(&v7, &v6);
  sub_23004CBA4(0, &qword_27DB17080);
  if (!swift_dynamicCast() || !v5)
  {
    return 2;
  }

  v3 = [v5 BOOLValue];

  return v3;
}

void CSSearchableItemAttributeSet.rem_isRecurrent.setter(char a1)
{
  if (a1 == 2 || (v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_]) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CC33B0]);
  v4 = sub_23030F8B8();
  v5 = [v3 initWithKeyName:v4 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  if (v5)
  {
    [v1 setValue:v6 forCustomKey:v5];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void (*CSSearchableItemAttributeSet.rem_isRecurrent.modify(uint64_t *a1))(uint64_t a1)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v2;
  v6 = sub_23030F8B8();
  v7 = [v2 attributeForKey_];

  if (v7 && (sub_2303105E8(), swift_unknownObjectRelease(), sub_230061914(v5, (v5 + 32)), sub_23004CBA4(0, &qword_27DB17080), swift_dynamicCast()) && (v8 = *(v5 + 64)) != 0)
  {
    v9 = [*(v5 + 64) BOOLValue];
  }

  else
  {
    v9 = 2;
  }

  *(v5 + 80) = v9;
  return sub_2301F6BFC;
}

void sub_2301F6BFC(uint64_t a1)
{
  v1 = *a1;
  CSSearchableItemAttributeSet.rem_isRecurrent.setter(*(*a1 + 80));

  free(v1);
}

uint64_t CSSearchableItemAttributeSet.rem_shouldCategorizeGroceryItems.getter()
{
  v0 = sub_2301F4B08(7, &qword_27DB17080);
  if (!v0)
  {
    return 2;
  }

  v1 = v0;
  v2 = [v0 BOOLValue];

  return v2;
}

void sub_2301F6C98(uint64_t a1@<X3>, unsigned __int8 *a2@<X8>)
{
  v3 = sub_2301F4B08(a1, &qword_27DB17080);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void CSSearchableItemAttributeSet.rem_shouldCategorizeGroceryItems.setter(char a1)
{
  if (a1 == 2 || (v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_]) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CC33B0]);
  v4 = sub_23030F8B8();
  v5 = [v3 initWithKeyName:v4 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  if (v5)
  {
    [v1 setValue:v6 forCustomKey:v5];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void (*CSSearchableItemAttributeSet.rem_shouldCategorizeGroceryItems.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_2301F4B08(7, &qword_27DB17080);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  *(a1 + 8) = v5;
  return sub_2301F6E98;
}

uint64_t REMReminder.displayString.getter()
{
  v1 = v0;
  [v0 priority];
  v2 = REMReminderPriorityLevelForPriority();
  if (v2 == 3)
  {
    v4 = 0xE300000000000000;
    v3 = 2171169;
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v4 = 0xE200000000000000;
    v3 = 8481;
LABEL_9:
    v16 = v3;

    MEMORY[0x231911790](8224, 0xE200000000000000);

    MEMORY[0x231911790](v16, v4);
    goto LABEL_10;
  }

  v3 = 33;
  if (v2 == 1)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  if ((v4 & 0x300000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  v5 = [v0 titleAsString];
  if (!v5)
  {
    v5 = _REMGetLocalizedString();
  }

  v6 = v5;
  v7 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v9 = v8;

  MEMORY[0x231911790](v7, v9);

  v10 = [v1 notesAsString];
  if (v10)
  {
    v11 = v10;
    v12 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v14 = v13;

    MEMORY[0x231911790](v12, v14);

    MEMORY[0x231911790](10, 0xE100000000000000);
  }

  return 0;
}

uint64_t REMList.displayString.getter()
{
  v1 = [v0 displayName];
  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v2;
}

unint64_t sub_2301F70C8()
{
  result = qword_27DB17088;
  if (!qword_27DB17088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17088);
  }

  return result;
}

unint64_t sub_2301F7120()
{
  result = qword_27DB17090;
  if (!qword_27DB17090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17090);
  }

  return result;
}

unint64_t sub_2301F7188()
{
  result = qword_27DB170A0;
  if (!qword_27DB170A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB170A0);
  }

  return result;
}

unint64_t sub_2301F71E0()
{
  result = qword_27DB170A8;
  if (!qword_27DB170A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB170A8);
  }

  return result;
}

unint64_t sub_2301F7238()
{
  result = qword_27DB170B0;
  if (!qword_27DB170B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB170B0);
  }

  return result;
}

unint64_t sub_2301F7290()
{
  result = qword_27DB170B8;
  if (!qword_27DB170B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB170B8);
  }

  return result;
}

uint64_t sub_2301F72E4()
{
  v1 = [v0 displayName];
  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v2;
}

uint64_t keypath_set_8Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void *initializeBufferWithCopyOfBuffer for REMSearchCriterion(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = *(a3 - 8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
        *a1 = *a2;

        goto LABEL_33;
      case 3u:
        v13 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v14 = v13;
        goto LABEL_33;
      case 4u:
      case 5u:
      case 9u:
        v19 = a2[1];
        *a1 = *a2;
        a1[1] = v19;
        *(a1 + 16) = *(a2 + 16);

        goto LABEL_33;
      case 7u:
        v8 = sub_23030EB58();
        v9 = *(v8 - 8);
        v17 = *(v9 + 48);
        if (v17(a2, 1, v8))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
          memcpy(a1, a2, *(*(v18 - 8) + 64));
        }

        else
        {
          (*(v9 + 16))(a1, a2, v8);
          (*(v9 + 56))(a1, 0, 1, v8);
        }

        v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        if (!v17((a2 + v24), 1, v8))
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      case 0xAu:
        v8 = sub_23030EB58();
        v9 = *(v8 - 8);
        v22 = *(v9 + 48);
        if (v22(a2, 1, v8))
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          (*(v9 + 16))(a1, a2, v8);
          (*(v9 + 56))(a1, 0, 1, v8);
        }

        v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        if (v22((a2 + v24), 1, v8))
        {
          goto LABEL_27;
        }

        goto LABEL_32;
      case 0xCu:
        v8 = sub_23030EB58();
        v9 = *(v8 - 8);
        v20 = *(v9 + 48);
        if (v20(a2, 1, v8))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
          memcpy(a1, a2, *(*(v21 - 8) + 64));
        }

        else
        {
          (*(v9 + 16))(a1, a2, v8);
          (*(v9 + 56))(a1, 0, 1, v8);
        }

        v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        if (v20((a2 + v24), 1, v8))
        {
          goto LABEL_27;
        }

        goto LABEL_32;
      case 0xDu:
        v8 = sub_23030EB58();
        v9 = *(v8 - 8);
        v10 = *(v9 + 48);
        if (v10(a2, 1, v8))
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
          memcpy(a1, a2, *(*(v11 - 8) + 64));
        }

        else
        {
          (*(v9 + 16))(a1, a2, v8);
          (*(v9 + 56))(a1, 0, 1, v8);
        }

        v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        if (v10((a2 + v24), 1, v8))
        {
LABEL_27:
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
          memcpy(a1 + v24, a2 + v24, *(*(v25 - 8) + 64));
        }

        else
        {
LABEL_32:
          (*(v9 + 16))(a1 + v24, a2 + v24, v8);
          (*(v9 + 56))(a1 + v24, 0, 1, v8);
        }

        goto LABEL_33;
      case 0x10u:
      case 0x11u:
        v12 = a2[1];
        *a1 = *a2;
        a1[1] = v12;

LABEL_33:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v15 = *(v6 + 64);

        return memcpy(a1, a2, v15);
    }
  }

  v7 = *a2;
  *a1 = *a2;
  a1 = (v7 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for REMSearchCriterion(void **a1)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 4u:
    case 5u:
    case 9u:
    case 0x10u:
    case 0x11u:

      break;
    case 3u:
      v6 = *a1;

      break;
    case 7u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
      v2 = sub_23030EB58();
      v7 = *(v2 - 8);
      v3 = *(v7 + 48);
      if (!v3(a1, 1, v2))
      {
        (*(v7 + 8))(a1, v2);
      }

      v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (!v3((a1 + v4), 1, v2))
      {
        v5 = *(v7 + 8);

        v5(a1 + v4, v2);
      }

      break;
    default:
      return;
  }
}

void *initializeWithCopy for REMSearchCriterion(void *a1, void *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
      *a1 = *a2;

      goto LABEL_31;
    case 3u:
      v11 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v12 = v11;
      goto LABEL_31;
    case 4u:
    case 5u:
    case 9u:
      v17 = a2[1];
      *a1 = *a2;
      a1[1] = v17;
      *(a1 + 16) = *(a2 + 16);

      goto LABEL_31;
    case 7u:
      v6 = sub_23030EB58();
      v7 = *(v6 - 8);
      v15 = *(v7 + 48);
      if (v15(a2, 1, v6))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v7 + 16))(a1, a2, v6);
        (*(v7 + 56))(a1, 0, 1, v6);
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (!v15((a2 + v22), 1, v6))
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 0xAu:
      v6 = sub_23030EB58();
      v7 = *(v6 - 8);
      v20 = *(v7 + 48);
      if (v20(a2, 1, v6))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v7 + 16))(a1, a2, v6);
        (*(v7 + 56))(a1, 0, 1, v6);
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v20((a2 + v22), 1, v6))
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    case 0xCu:
      v6 = sub_23030EB58();
      v7 = *(v6 - 8);
      v18 = *(v7 + 48);
      if (v18(a2, 1, v6))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v19 - 8) + 64));
      }

      else
      {
        (*(v7 + 16))(a1, a2, v6);
        (*(v7 + 56))(a1, 0, 1, v6);
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v18((a2 + v22), 1, v6))
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    case 0xDu:
      v6 = sub_23030EB58();
      v7 = *(v6 - 8);
      v8 = *(v7 + 48);
      if (v8(a2, 1, v6))
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v7 + 16))(a1, a2, v6);
        (*(v7 + 56))(a1, 0, 1, v6);
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v8((a2 + v22), 1, v6))
      {
LABEL_25:
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1 + v22, a2 + v22, *(*(v23 - 8) + 64));
      }

      else
      {
LABEL_30:
        (*(v7 + 16))(a1 + v22, a2 + v22, v6);
        (*(v7 + 56))(a1 + v22, 0, 1, v6);
      }

      goto LABEL_31;
    case 0x10u:
    case 0x11u:
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;

LABEL_31:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v13 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v13);
      break;
  }

  return result;
}

void *assignWithCopy for REMSearchCriterion(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_2301F8F6C(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 2u:
        *a1 = *a2;

        goto LABEL_32;
      case 3u:
        v10 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v11 = v10;
        goto LABEL_32;
      case 4u:
      case 5u:
      case 9u:
        *a1 = *a2;
        a1[1] = a2[1];
        *(a1 + 16) = *(a2 + 16);

        goto LABEL_32;
      case 7u:
        v6 = sub_23030EB58();
        v7 = *(v6 - 8);
        v14 = *(v7 + 48);
        if (v14(a2, 1, v6))
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
          memcpy(a1, a2, *(*(v15 - 8) + 64));
        }

        else
        {
          (*(v7 + 16))(a1, a2, v6);
          (*(v7 + 56))(a1, 0, 1, v6);
        }

        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        if (!v14((a2 + v20), 1, v6))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      case 0xAu:
        v6 = sub_23030EB58();
        v7 = *(v6 - 8);
        v18 = *(v7 + 48);
        if (v18(a2, 1, v6))
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
          memcpy(a1, a2, *(*(v19 - 8) + 64));
        }

        else
        {
          (*(v7 + 16))(a1, a2, v6);
          (*(v7 + 56))(a1, 0, 1, v6);
        }

        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        if (v18((a2 + v20), 1, v6))
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      case 0xCu:
        v6 = sub_23030EB58();
        v7 = *(v6 - 8);
        v16 = *(v7 + 48);
        if (v16(a2, 1, v6))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
          memcpy(a1, a2, *(*(v17 - 8) + 64));
        }

        else
        {
          (*(v7 + 16))(a1, a2, v6);
          (*(v7 + 56))(a1, 0, 1, v6);
        }

        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        if (v16((a2 + v20), 1, v6))
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      case 0xDu:
        v6 = sub_23030EB58();
        v7 = *(v6 - 8);
        v8 = *(v7 + 48);
        if (v8(a2, 1, v6))
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
          memcpy(a1, a2, *(*(v9 - 8) + 64));
        }

        else
        {
          (*(v7 + 16))(a1, a2, v6);
          (*(v7 + 56))(a1, 0, 1, v6);
        }

        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        if (v8((a2 + v20), 1, v6))
        {
LABEL_26:
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
          memcpy(a1 + v20, a2 + v20, *(*(v21 - 8) + 64));
        }

        else
        {
LABEL_31:
          (*(v7 + 16))(a1 + v20, a2 + v20, v6);
          (*(v7 + 56))(a1 + v20, 0, 1, v6);
        }

        goto LABEL_32;
      case 0x10u:
      case 0x11u:
        *a1 = *a2;
        a1[1] = a2[1];

LABEL_32:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v12 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v12);
    }
  }

  return a1;
}

uint64_t sub_2301F8F6C(uint64_t a1)
{
  v2 = type metadata accessor for REMSearchCriterion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeWithTake for REMSearchCriterion(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 11)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v7 = sub_23030EB58();
      v8 = *(v7 - 8);
      v17 = *(v8 + 48);
      if (v17(a2, 1, v7))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v8 + 32))(a1, a2, v7);
        (*(v8 + 56))(a1, 0, 1, v7);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v17(&a2[v19], 1, v7))
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload == 13)
    {
      v7 = sub_23030EB58();
      v8 = *(v7 - 8);
      v11 = *(v8 + 48);
      if (v11(a2, 1, v7))
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v12 - 8) + 64));
      }

      else
      {
        (*(v8 + 32))(a1, a2, v7);
        (*(v8 + 56))(a1, 0, 1, v7);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v11(&a2[v19], 1, v7))
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 7)
    {
      v7 = sub_23030EB58();
      v8 = *(v7 - 8);
      v15 = *(v8 + 48);
      if (v15(a2, 1, v7))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v8 + 32))(a1, a2, v7);
        (*(v8 + 56))(a1, 0, 1, v7);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v15(&a2[v19], 1, v7))
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload == 10)
    {
      v7 = sub_23030EB58();
      v8 = *(v7 - 8);
      v9 = *(v8 + 48);
      if (v9(a2, 1, v7))
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v8 + 32))(a1, a2, v7);
        (*(v8 + 56))(a1, 0, 1, v7);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v9(&a2[v19], 1, v7))
      {
LABEL_27:
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v19], &a2[v19], *(*(v20 - 8) + 64));
LABEL_31:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

LABEL_30:
      (*(v8 + 32))(&a1[v19], &a2[v19], v7);
      (*(v8 + 56))(&a1[v19], 0, 1, v7);
      goto LABEL_31;
    }
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

char *assignWithTake for REMSearchCriterion(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_2301F8F6C(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 11)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v7 = sub_23030EB58();
      v8 = *(v7 - 8);
      v17 = *(v8 + 48);
      if (v17(a2, 1, v7))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v8 + 32))(a1, a2, v7);
        (*(v8 + 56))(a1, 0, 1, v7);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v17(&a2[v19], 1, v7))
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 13)
    {
      v7 = sub_23030EB58();
      v8 = *(v7 - 8);
      v11 = *(v8 + 48);
      if (v11(a2, 1, v7))
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v12 - 8) + 64));
      }

      else
      {
        (*(v8 + 32))(a1, a2, v7);
        (*(v8 + 56))(a1, 0, 1, v7);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v11(&a2[v19], 1, v7))
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 7)
    {
      v7 = sub_23030EB58();
      v8 = *(v7 - 8);
      v15 = *(v8 + 48);
      if (v15(a2, 1, v7))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v8 + 32))(a1, a2, v7);
        (*(v8 + 56))(a1, 0, 1, v7);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v15(&a2[v19], 1, v7))
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 10)
    {
      v7 = sub_23030EB58();
      v8 = *(v7 - 8);
      v9 = *(v8 + 48);
      if (v9(a2, 1, v7))
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(a1, a2, *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v8 + 32))(a1, a2, v7);
        (*(v8 + 56))(a1, 0, 1, v7);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      if (v9(&a2[v19], 1, v7))
      {
LABEL_28:
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v19], &a2[v19], *(*(v20 - 8) + 64));
LABEL_32:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

LABEL_31:
      (*(v8 + 32))(&a1[v19], &a2[v19], v7);
      (*(v8 + 56))(&a1[v19], 0, 1, v7);
      goto LABEL_32;
    }
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

void sub_2301F9E90()
{
  v5 = MEMORY[0x277D833F0] + 64;
  v6 = MEMORY[0x277D833F0] + 64;
  v7 = MEMORY[0x277D833F0] + 64;
  v8 = "\t";
  v9 = &unk_230326BF0;
  v10 = &unk_230326BF0;
  v11 = &unk_230326C08;
  sub_23005AFA0();
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v12 = &v4;
    v13 = &unk_230326C08;
    v14 = &unk_230326BF0;
    swift_getTupleTypeLayout2();
    v15 = &v3;
    v16 = &unk_230326C08;
    swift_getTupleTypeLayout2();
    v17 = &v2;
    swift_getTupleTypeLayout2();
    v18 = &v1;
    v19 = &unk_230326C08;
    v20 = &unk_230326C08;
    v21 = &unk_230326C20;
    v22 = &unk_230326C20;
    v23 = &unk_230326C08;
    swift_initEnumMetadataMultiPayload();
  }
}

unint64_t sub_2301FA040()
{
  result = qword_27DB17120;
  if (!qword_27DB17120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17120);
  }

  return result;
}

unint64_t sub_2301FA098()
{
  result = qword_27DB17128;
  if (!qword_27DB17128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17128);
  }

  return result;
}

unint64_t sub_2301FA0F0()
{
  result = qword_27DB17130;
  if (!qword_27DB17130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17130);
  }

  return result;
}

unint64_t sub_2301FA148()
{
  result = qword_27DB17138;
  if (!qword_27DB17138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17138);
  }

  return result;
}

unint64_t sub_2301FA1A0()
{
  result = qword_27DB17140;
  if (!qword_27DB17140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17140);
  }

  return result;
}

unint64_t sub_2301FA1F8()
{
  result = qword_27DB17148;
  if (!qword_27DB17148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17148);
  }

  return result;
}

unint64_t sub_2301FA250()
{
  result = qword_27DB17150;
  if (!qword_27DB17150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17150);
  }

  return result;
}

unint64_t sub_2301FA2A8()
{
  result = qword_27DB17158;
  if (!qword_27DB17158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17158);
  }

  return result;
}

unint64_t sub_2301FA300()
{
  result = qword_27DB17160;
  if (!qword_27DB17160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17160);
  }

  return result;
}

unint64_t sub_2301FA358()
{
  result = qword_27DB17168;
  if (!qword_27DB17168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17168);
  }

  return result;
}

unint64_t sub_2301FA3B0()
{
  result = qword_27DB17170;
  if (!qword_27DB17170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17170);
  }

  return result;
}

unint64_t sub_2301FA408()
{
  result = qword_27DB17178;
  if (!qword_27DB17178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17178);
  }

  return result;
}

unint64_t sub_2301FA460()
{
  result = qword_27DB17180;
  if (!qword_27DB17180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17180);
  }

  return result;
}

unint64_t sub_2301FA4B8()
{
  result = qword_27DB17188;
  if (!qword_27DB17188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17188);
  }

  return result;
}

unint64_t sub_2301FA510()
{
  result = qword_27DB17190;
  if (!qword_27DB17190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17190);
  }

  return result;
}

unint64_t sub_2301FA568()
{
  result = qword_27DB17198;
  if (!qword_27DB17198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17198);
  }

  return result;
}

uint64_t sub_2301FA5BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564756C637865 && a2 == 0xE700000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564756C636E69 && a2 == 0xE700000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x466564756C636E69 && a2 == 0xEE0069726953726FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2301FA6DC()
{
  result = qword_27DB171A0;
  if (!qword_27DB171A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB171A0);
  }

  return result;
}

unint64_t sub_2301FA730()
{
  result = qword_27DB171A8;
  if (!qword_27DB171A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB171A8);
  }

  return result;
}

uint64_t sub_2301FA78C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_2301FA824(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t PointCloud.__allocating_init(points:distanceCalculator:)(unint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  PointCloud.init(points:distanceCalculator:)(a1, a2);
  return v4;
}

uint64_t PointCloud.init(points:distanceCalculator:)(unint64_t a1, char *a2)
{
  *(v2 + 48) = 0;
  v4 = *a2;
  *(v2 + 56) = 1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v5 = a1 >> 62;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  result = sub_2303106D8();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x231912650](0, a1);
LABEL_6:
    swift_beginAccess();
    v8 = *(v7 + 24);

    swift_beginAccess();
    *(v2 + 48) = v8;
    *(v2 + 56) = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v5)
    {
LABEL_7:
      v10 = *(v9 + 16);
LABEL_11:

      *(v2 + 57) = v4;
      *(v2 + 32) = 0;
      *(v2 + 40) = v10;
      sub_2301FAC64();
      return v2;
    }

LABEL_10:
    v10 = sub_2303106D8();
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(a1 + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2301FAB00(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!sub_2303106D8())
  {
LABEL_3:
    swift_beginAccess();
    v5 = *(a1 + 24);
    swift_beginAccess();
    *(v2 + 48) = v5;
    *(v2 + 56) = 0;
  }

LABEL_4:
  swift_beginAccess();

  MEMORY[0x231911A30](v6);
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23030FD18();
  }

  sub_23030FD68();
  v7 = *(v2 + 16);
  swift_endAccess();
  if (v7 >> 62)
  {
    v8 = sub_2303106D8();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = swift_beginAccess();
  *(v2 + 40) = v8;
  return result;
}

uint64_t sub_2301FAC64()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);

  v4 = Array<A>.sum()(v3);
  if (v4)
  {
    if (v2 >> 62)
    {
      goto LABEL_72;
    }

    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    v6 = / infix(_:_:)(v4, v5);

    v7 = *(v1 + 16);
    if (v7 >> 62)
    {
      v8 = sub_2303106D8();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v4;

    if (v8)
    {
      v9 = 0;
      v4 = v7 + 32;
      v10 = 0.0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x231912650](v9, v7);
          v14 = __OFADD__(v9++, 1);
          if (v14)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_69;
          }

          v13 = *(v4 + 8 * v9);

          v14 = __OFADD__(v9++, 1);
          if (v14)
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }
        }

        if (*(v1 + 57))
        {
          if (*(v1 + 57) == 1)
          {
            sub_230130E64(v13, v6);
            v12 = v11;
          }

          else
          {
            swift_beginAccess();
            v15 = *(v13 + 24);
            if (v15 < 0)
            {
              goto LABEL_71;
            }

            if (v15)
            {
              swift_beginAccess();
              swift_beginAccess();
              v16 = *(v13 + 16);
              v17 = *(v16 + 16);
              if (!v17)
              {
                goto LABEL_66;
              }

              v18 = *(v6 + 16);
              v19 = *(v18 + 16);
              if (!v19)
              {
                goto LABEL_68;
              }

              v20 = v16 + 32;
              v21 = v18 + 32;
              v22 = *(v18 + 32);
              v23 = *(v16 + 32);
              v24 = v23 * v23;
              v25 = v22 * v22;
              v26 = v23 * v22 + 0.0;
              if (v15 != 1)
              {
                v27 = v19 - 1;
                if (v19 - 1 >= v17 - 1)
                {
                  v27 = v17 - 1;
                }

                if (v27 >= v15 - 2)
                {
                  v27 = v15 - 2;
                }

                v28 = v27 + 1;
                if (v28 > 4)
                {
                  v50 = v28 & 3;
                  if ((v28 & 3) == 0)
                  {
                    v50 = 4;
                  }

                  v51 = v28 - v50;
                  v29 = v51 + 1;
                  v52 = (v16 + 56);
                  v53 = (v18 + 56);
                  do
                  {
                    v54 = v52[-1];
                    v55 = v53[-1];
                    v56 = vmulq_f64(v54, v54);
                    v57 = vmulq_f64(*v52, *v52);
                    v58 = vmulq_f64(v55, v55);
                    v59 = vmulq_f64(*v53, *v53);
                    v60 = vmulq_f64(v54, v55);
                    v61 = vmulq_f64(*v52, *v53);
                    v26 = v26 + v60.f64[0] + v60.f64[1] + v61.f64[0] + v61.f64[1];
                    v25 = v25 + v58.f64[0] + v58.f64[1] + v59.f64[0] + v59.f64[1];
                    v24 = v24 + v56.f64[0] + v56.f64[1] + v57.f64[0] + v57.f64[1];
                    v52 += 2;
                    v53 += 2;
                    v51 -= 4;
                  }

                  while (v51);
                }

                else
                {
                  v29 = 1;
                }

                while (v17 != v29)
                {
                  if (v29 >= v19)
                  {
                    goto LABEL_68;
                  }

                  v62 = *(v20 + 8 * v29);
                  v63 = *(v21 + 8 * v29);
                  v24 = v24 + v62 * v62;
                  v25 = v25 + v63 * v63;
                  v26 = v26 + v62 * v63;
                  if (v15 == ++v29)
                  {
                    goto LABEL_54;
                  }
                }

                goto LABEL_66;
              }
            }

            else
            {
              v26 = 0.0;
              v25 = 0.0;
              v24 = 0.0;
            }

LABEL_54:

            v64 = sqrt(v24);
            v65 = v64 * sqrt(v25);
            if (v65 == 0.0)
            {
              v66 = 0.0;
            }

            else
            {
              v66 = v26 / v65;
            }

            v12 = acos(v66) / 3.14159265;
          }
        }

        else
        {
          swift_beginAccess();
          v30 = *(v13 + 24);
          if (v30 < 0)
          {
            goto LABEL_70;
          }

          if (v30)
          {
            swift_beginAccess();
            swift_beginAccess();
            v31 = *(v13 + 16);
            v32 = *(v31 + 16);
            if (!v32)
            {
              goto LABEL_65;
            }

            v33 = *(v6 + 16);
            v34 = *(v33 + 16);
            if (!v34)
            {
              goto LABEL_67;
            }

            v35 = v31 + 32;
            v36 = v33 + 32;
            v37 = *(v31 + 32) - *(v33 + 32);
            v38 = v37 * v37;
            if (v30 != 1)
            {
              v39 = v34 - 1;
              if (v34 - 1 >= v32 - 1)
              {
                v39 = v32 - 1;
              }

              if (v39 >= v30 - 2)
              {
                v39 = v30 - 2;
              }

              v40 = v39 + 1;
              if (v40 > 4)
              {
                v42 = v40 & 3;
                if ((v40 & 3) == 0)
                {
                  v42 = 4;
                }

                v43 = v40 - v42;
                v41 = v43 + 1;
                v44 = (v31 + 56);
                v45 = (v33 + 56);
                do
                {
                  v46 = vsubq_f64(v44[-1], v45[-1]);
                  v47 = vsubq_f64(*v44, *v45);
                  v48 = vmulq_f64(v46, v46);
                  v49 = vmulq_f64(v47, v47);
                  v38 = v38 + v48.f64[0] + v48.f64[1] + v49.f64[0] + v49.f64[1];
                  v44 += 2;
                  v45 += 2;
                  v43 -= 4;
                }

                while (v43);
              }

              else
              {
                v41 = 1;
              }

              while (v32 != v41)
              {
                if (v41 >= v34)
                {
                  goto LABEL_67;
                }

                v38 = v38 + (*(v35 + 8 * v41) - *(v36 + 8 * v41)) * (*(v35 + 8 * v41) - *(v36 + 8 * v41));
                if (v30 == ++v41)
                {
                  goto LABEL_46;
                }
              }

LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              v5 = sub_2303106D8();
              goto LABEL_4;
            }
          }

          else
          {
            v38 = 0.0;
          }

LABEL_46:

          v12 = sqrt(v38);
        }

        v10 = v10 + v12;
        if (v9 == v8)
        {
          goto LABEL_63;
        }
      }
    }

    v10 = 0.0;
LABEL_63:

    swift_beginAccess();
    v68 = v10 / *(v6 + 24);
    swift_beginAccess();
    *(v1 + 32) = v68;
    swift_beginAccess();
    *(v1 + 24) = v6;

    v69 = *(v6 + 24);

    result = swift_beginAccess();
    *(v1 + 48) = v69;
    v4 = v70;
  }

  else
  {
LABEL_61:

    swift_beginAccess();
    *(v1 + 24) = 0;

    result = swift_beginAccess();
    *(v1 + 48) = 0;
  }

  *(v1 + 56) = v4 == 0;
  return result;
}

uint64_t PointCloud.deinit()
{

  return v0;
}

uint64_t PointCloud.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id REMStructuredLocation.clCircularRegion.getter()
{
  [v0 latitude];
  v2 = v1;
  [v0 longitude];
  v4 = v3;
  [v0 radius];
  v6 = v5;
  v7 = [v0 title];
  if (v7)
  {
    v8 = v7;
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  }

  v9 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
  v10 = sub_23030F8B8();

  v11 = [v9 initWithCenter:v10 radius:v2 identifier:{v4, v6}];

  [v11 setGeoReferenceFrame_];
  return v11;
}

CLCircularRegion __swiftcall CLCircularRegion.init(circularRegion:radius:)(CLCircularRegion circularRegion, Swift::Double radius)
{
  v3 = sub_2301FC438(circularRegion.super.super.isa, radius);

  return v3;
}

void __swiftcall REMStructuredLocation.init(title:location:)(REMStructuredLocation *__return_ptr retstr, Swift::String title, CLLocation location)
{
  isa = location.super.isa;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_23030F8B8();

  v6 = [v4 initWithTitle_];

  v7 = v6;
  [(objc_class *)isa coordinate];
  [v7 setLatitude_];
  [(objc_class *)isa coordinate];
  [v7 setLongitude_];
  [(objc_class *)isa horizontalAccuracy];
  v10 = v9;
  [(objc_class *)isa verticalAccuracy];
  if (v10 > v11)
  {
    v11 = v10;
  }

  [v7 setRadius_];
  [(objc_class *)isa referenceFrame];
  sub_230310E58();
  v12 = sub_23030F8B8();

  [v7 setReferenceFrameString_];
}

void __swiftcall REMStructuredLocation.init(title:circularRegion:placemark:)(REMStructuredLocation *__return_ptr retstr, Swift::String title, CLCircularRegion circularRegion, CLPlacemark_optional placemark)
{
  isa = placemark.value.super.isa;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_23030F8B8();

  v8 = [v6 initWithTitle_];

  v9 = v8;
  [(objc_class *)circularRegion.super.super.isa center];
  v11 = v10;
  [v9 setLatitude_];
  [v9 setLongitude_];
  [(objc_class *)circularRegion.super.super.isa radius];
  [v9 setRadius_];
  [(objc_class *)circularRegion.super.super.isa geoReferenceFrame];
  sub_230310E58();
  v12 = sub_23030F8B8();

  [v9 setReferenceFrameString_];

  if (isa)
  {
    v13 = [(objc_class *)isa postalAddress];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() stringFromPostalAddress:v13 style:0];
      if (!v15)
      {
        _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v15 = sub_23030F8B8();
      }

      [v9 setAddress_];

      v16 = circularRegion.super.super.isa;
      circularRegion.super.super.isa = isa;
    }

    else
    {
      v16 = isa;
    }
  }
}

id static REMStructuredLocation.createFromCLLocation(title:location:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v5 = sub_23030F8B8();
    v6 = v4;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v5 = 0;
  }

  v7 = [v6 initWithTitle_];

  if (a3)
  {
    v8 = a3;
    [v8 horizontalAccuracy];
    v10 = v9;
    [v8 verticalAccuracy];
    if (v10 <= v11)
    {
      v10 = v11;
    }

    if (v10 > 0.0)
    {
      [v8 coordinate];
      [v7 setLatitude_];
      [v8 coordinate];
      [v7 setLongitude_];
      [v7 setRadius_];
      [v8 referenceFrame];
      sub_230310E58();
      v13 = sub_23030F8B8();

      [v7 setReferenceFrameString_];

      return v7;
    }

    return 0;
  }

  return v7;
}

uint64_t REMStructuredLocation.referenceFrame.getter()
{
  v1 = [v0 referenceFrameString];
  if (v1)
  {
    v2 = v1;
    v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v5 = v4;

    if (v3 == 49 && v5 == 0xE100000000000000)
    {

      return 1;
    }

    v7 = sub_230311048();

    if (v7)
    {
      return 1;
    }
  }

  v9 = [v0 referenceFrameString];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v13 = v12;

  if (v11 == 50 && v13 == 0xE100000000000000)
  {
  }

  else
  {
    v15 = sub_230311048();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  return 2;
}

id REMStructuredLocation.clLocation.getter()
{
  v1 = sub_23030EB58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 latitude];
  v6 = v5;
  [v0 longitude];
  v8 = v7;
  v9 = REMStructuredLocation.referenceFrame.getter();
  v10 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v11 = CLLocationCoordinate2DMake(v6, v8);
  sub_23030EB48();
  v12 = sub_23030EAA8();
  (*(v2 + 8))(v4, v1);
  v13 = [v10 initWithCoordinate:v12 altitude:v9 horizontalAccuracy:v11.latitude verticalAccuracy:v11.longitude timestamp:-1.0 referenceFrame:{-1.0, -1.0}];

  return v13;
}

id REMStructuredLocation.clPlacemark.getter()
{
  v1 = v0;
  v2 = sub_23030EB58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 latitude];
  v7 = v6;
  [v0 longitude];
  v9 = v8;
  v10 = REMStructuredLocation.referenceFrame.getter();
  v11 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v12 = CLLocationCoordinate2DMake(v7, v9);
  sub_23030EB48();
  v13 = sub_23030EAA8();
  (*(v3 + 8))(v5, v2);
  v14 = [v11 initWithCoordinate:v13 altitude:v10 horizontalAccuracy:v12.latitude verticalAccuracy:v12.longitude timestamp:-1.0 referenceFrame:{-1.0, -1.0}];

  v15 = [v1 displayName];
  if (v15)
  {
    v16 = v15;
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

    v17 = sub_23030F8B8();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_opt_self() placemarkWithLocation:v14 name:v17 postalAddress:0];

  return v18;
}

Swift::Bool __swiftcall REMStructuredLocation.isCloseTo(_:maxDistanceInMeters:)(REMStructuredLocation *_, Swift::Double maxDistanceInMeters)
{
  v3 = v2;
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [(REMStructuredLocation *)_ latitude];
  v11 = v10;
  [(REMStructuredLocation *)_ longitude];
  v13 = v12;
  v14 = REMStructuredLocation.referenceFrame.getter();
  v15 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v16 = CLLocationCoordinate2DMake(v11, v13);
  sub_23030EB48();
  v17 = sub_23030EAA8();
  v18 = *(v7 + 8);
  v18(v9, v6);
  v19 = [v15 initWithCoordinate:v17 altitude:v14 horizontalAccuracy:v16.latitude verticalAccuracy:v16.longitude timestamp:-1.0 referenceFrame:{-1.0, -1.0}];

  [v3 latitude];
  v21 = v20;
  [v3 longitude];
  v23 = v22;
  v24 = REMStructuredLocation.referenceFrame.getter();
  v25 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v26 = CLLocationCoordinate2DMake(v21, v23);
  sub_23030EB48();
  v27 = sub_23030EAA8();
  v18(v9, v6);
  v28 = [v25 initWithCoordinate:v27 altitude:v24 horizontalAccuracy:v26.latitude verticalAccuracy:v26.longitude timestamp:-1.0 referenceFrame:{-1.0, -1.0}];

  [v28 distanceFromLocation_];
  v30 = v29;

  return v30 <= maxDistanceInMeters;
}

Swift::Bool __swiftcall REMStructuredLocation.isCloseTo(_:maxDistanceInMeters:)(CLLocation _, Swift::Double maxDistanceInMeters)
{
  isa = _.super.isa;
  v5 = sub_23030EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 latitude];
  v10 = v9;
  [v2 longitude];
  v12 = v11;
  v13 = REMStructuredLocation.referenceFrame.getter();
  v14 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v15 = CLLocationCoordinate2DMake(v10, v12);
  sub_23030EB48();
  v16 = sub_23030EAA8();
  (*(v6 + 8))(v8, v5);
  v17 = [v14 initWithCoordinate:v16 altitude:v13 horizontalAccuracy:v15.latitude verticalAccuracy:v15.longitude timestamp:-1.0 referenceFrame:{-1.0, -1.0}];

  [v17 distanceFromLocation_];
  v19 = v18;

  return v19 <= maxDistanceInMeters;
}

id CLCircularRegion.clLocation.getter()
{
  v1 = sub_23030EB58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 center];
  v6 = v5;
  [v0 center];
  v8 = v7;
  v9 = [v0 geoReferenceFrame];
  v10 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v11 = CLLocationCoordinate2DMake(v6, v8);
  sub_23030EB48();
  v12 = sub_23030EAA8();
  (*(v2 + 8))(v4, v1);
  v13 = [v10 initWithCoordinate:v12 altitude:v9 horizontalAccuracy:v11.latitude verticalAccuracy:v11.longitude timestamp:-1.0 referenceFrame:{-1.0, -1.0}];

  return v13;
}

id sub_2301FC438(void *a1, double a2)
{
  [a1 center];
  v5 = v4;
  v7 = v6;
  v8 = a1;
  v9 = [v8 identifier];
  if (!v9)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v9 = sub_23030F8B8();
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCenter:v9 radius:v5 identifier:{v7, a2}];

  v11 = v10;
  [v11 setNotifyOnExit_];
  [v11 setNotifyOnEntry_];
  v12 = [v8 conservativeEntry];

  [v11 setConservativeEntry_];
  [v11 setGeoReferenceFrame_];

  return v11;
}

void *REMReminderDetailDataView.CheckUpdateResult.latestFetchResultToken.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void static REMReminderDetailDataView.fetchHasReminderUpdates(store:reminderID:diffingAgainst:)(void *a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v21 = a3;
  v5 = sub_23030EBB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMObjectID_Codable();
  v10 = objc_allocWithZone(v9);
  v11 = a1;
  v12 = [v11 uuid];
  sub_23030EBA8();

  v13 = sub_23030EB88();
  (*(v6 + 8))(v8, v5);
  v14 = [v11 entityName];
  if (!v14)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v14 = sub_23030F8B8();
  }

  v24.receiver = v10;
  v24.super_class = v9;
  v15 = objc_msgSendSuper2(&v24, sel_initWithUUID_entityName_, v13, v14);

  v16 = [objc_allocWithZone(type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation()) initWithFetchResultTokenToDiffAgainst_];
  v17 = v25;
  sub_2300C7B20(v16, v15, v22);

  if (!v17)
  {
    v18 = v23;
    v19 = v21;
    *v21 = v22[0];
    *(v19 + 1) = v18;
  }
}

id REMReminderDetailDataView.CheckUpdateInvocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

uint64_t sub_2301FC81C(uint64_t a1)
{
  v2 = sub_2301FD320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301FC858(uint64_t a1)
{
  v2 = sub_2301FD320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMReminderDetailDataView.CheckUpdateInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17210);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301FD320();
  v8 = v7;
  sub_230311448();
  v10[1] = v8;
  type metadata accessor for REMObjectID_Codable();
  sub_2300EBFDC(qword_280C9BFD8);
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMReminderDetailDataView.CheckUpdateInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17220);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301FD320();
  sub_230311428();
  if (!v2)
  {
    type metadata accessor for REMObjectID_Codable();
    sub_2300EBFDC(&qword_280C9C5D0);
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2301FCC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461647055736168 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2301FCC90(uint64_t a1)
{
  v2 = sub_2301FD374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301FCCCC(uint64_t a1)
{
  v2 = sub_2301FD374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMReminderDetailDataView.CheckUpdateInvocation.Result.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17228);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301FD374();
  sub_230311448();
  sub_230310DB8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t REMReminderDetailDataView.CheckUpdateInvocation.Result.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17238);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301FD374();
  sub_230311428();
  if (!v2)
  {
    v9 = sub_230310CA8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2301FCFB0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17228);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301FD374();
  sub_230311448();
  sub_230310DB8();
  return (*(v3 + 8))(v5, v2);
}

id REMReminderDetailDataView.CheckUpdateInvocation.init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a1);

  return v3;
}

id REMReminderDetailDataView.CheckUpdateInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMReminderDetailDataView.CheckUpdateInvocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id REMReminderDetailDataView.CheckUpdateInvocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2301FD320()
{
  result = qword_27DB17218;
  if (!qword_27DB17218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17218);
  }

  return result;
}

unint64_t sub_2301FD374()
{
  result = qword_27DB17230;
  if (!qword_27DB17230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17230);
  }

  return result;
}

unint64_t sub_2301FD3CC()
{
  result = qword_27DB17240;
  if (!qword_27DB17240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17240);
  }

  return result;
}

unint64_t sub_2301FD42C()
{
  result = qword_27DB17248;
  if (!qword_27DB17248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17248);
  }

  return result;
}

uint64_t assignWithCopy for REMReminderDetailDataView.CheckUpdateResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  v5 = v4;

  return a1;
}

uint64_t assignWithTake for REMReminderDetailDataView.CheckUpdateResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t sub_2301FD58C()
{
  result = qword_27DB17250;
  if (!qword_27DB17250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17250);
  }

  return result;
}

unint64_t sub_2301FD5E4()
{
  result = qword_27DB17258;
  if (!qword_27DB17258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17258);
  }

  return result;
}

unint64_t sub_2301FD63C()
{
  result = qword_27DB17260;
  if (!qword_27DB17260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17260);
  }

  return result;
}

unint64_t sub_2301FD694()
{
  result = qword_27DB17268;
  if (!qword_27DB17268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17268);
  }

  return result;
}

unint64_t sub_2301FD6EC()
{
  result = qword_27DB17270;
  if (!qword_27DB17270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17270);
  }

  return result;
}

unint64_t sub_2301FD744()
{
  result = qword_27DB17278;
  if (!qword_27DB17278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17278);
  }

  return result;
}

uint64_t REMAlarmKitAuthorizationState.description.getter()
{
  v1 = 0x6574654420746F4ELL;
  if (*v0 != 1)
  {
    v1 = 0x6465696E6544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7A69726F68747541;
  }
}

uint64_t REMAlarmKitAuthorizationState.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

unint64_t sub_2301FD8A0()
{
  result = qword_27DB17280;
  if (!qword_27DB17280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17280);
  }

  return result;
}

uint64_t sub_2301FD8F4()
{
  v1 = 0x6574654420746F4ELL;
  if (*v0 != 1)
  {
    v1 = 0x6465696E6544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7A69726F68747541;
  }
}

uint64_t REMSortableElement.init(element:sortIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for REMSortableElement();
  v9 = a5 + *(result + 28);
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  return result;
}

uint64_t Array<A>.sorted(by:)()
{
  sub_23030FDE8();
  swift_getWitnessTable();
  return sub_23030FBE8();
}

BOOL sub_2301FDB04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v2 + 8);
  v5 = v4(v1, v2);
  if (v6)
  {
    return 0;
  }

  v8 = *&v5;
  v9 = COERCE_DOUBLE(v4(v1, v2));
  if (v10)
  {
    return 1;
  }

  if (v3)
  {
    return v9 < v8;
  }

  else
  {
    return v8 < v9;
  }
}

uint64_t Array<A>.sort(by:)()
{
  v1 = Array<A>.sorted(by:)();

  *v0 = v1;
  return result;
}

uint64_t sub_2301FDC54()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_2301FDCEC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(v10 + 8);
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v10;
    *(v12 + 8) = v11;
  }

  return v3;
}

uint64_t sub_2301FDE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t sub_2301FDE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t sub_2301FDF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t sub_2301FDFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t sub_2301FE024(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void sub_2301FE140(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v14[-v4];
  sub_230310078();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_23030FC28();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  if (v6)
  {
    v7 = sub_230310138();
    v9 = v8;
    v10 = swift_getAssociatedTypeWitness();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a1, v9, v10);
    v7(v14, 0);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }

  else
  {
    v13 = swift_getAssociatedTypeWitness();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t Collection.single.getter@<X0>(uint64_t a1@<X8>)
{
  if (sub_230310058() == 1)
  {

    return sub_2303100D8();
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = *(*(AssociatedTypeWitness - 8) + 56);

    return v4(a1, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_2301FE658(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A48);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_23030EEA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_230061918(a1, &qword_27DB15A48);
    v13 = sub_230081C64(a2 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23008A018();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_23020FD2C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_230061918(v8, &qword_27DB15A48);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_2300A1CA4(v12, a2 & 1, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_2301FE8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2300A2078(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_23005EE00(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_23008AEC0();
        v14 = v16;
      }

      result = sub_230210088(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_2301FE9A0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(a1 + 32);
  if (v9 == 255)
  {
    v13 = sub_230081E34(a2, a3, a4 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      *&v20[0] = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23008B4A8();
        v17 = *&v20[0];
      }

      sub_23008E140(*(*(v17 + 48) + 24 * v15), *(*(v17 + 48) + 24 * v15 + 8), *(*(v17 + 48) + 24 * v15 + 16));
      v18 = *(v17 + 56) + 40 * v15;
      sub_2301CFE0C(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32));
      sub_230210238(v15, v17);
      result = sub_23008E140(a2, a3, a4 & 1);
      *v5 = v17;
    }

    else
    {

      return sub_23008E140(a2, a3, a4 & 1);
    }
  }

  else
  {
    v10 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v10;
    v21 = v9 & 1;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    sub_2300A2308(v20, a2, a3, a4 & 1, v11);
    result = sub_23008E140(a2, a3, a4 & 1);
    *v4 = v19;
  }

  return result;
}

id sub_2301FEB58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v116 = a2;
  v117 = a7;
  v120 = a3;
  v10 = sub_2303113D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v114 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v115 = &v108 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v108 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v112 = &v108 - v19;
  MEMORY[0x28223BE20](v18);
  v119 = &v108 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A68);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v110 = (&v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v109 = &v108 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v113 = &v108 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v108 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v108 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v108 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v108 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  sub_230055F74(a1, &v123, &qword_27DB14810);
  if (v124)
  {
    sub_23004B314(&v123, v122);
    sub_23004D5CC(v122, v121);
    sub_2303113B8();
    __swift_destroy_boxed_opaque_existential_1(v122);
    (*(v11 + 56))(v38, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v38, 1, 1, v10);
  }

  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  *&v123 = v39;
  v40 = v119;
  sub_2303113B8();
  v118 = v38;
  if (v120)
  {
    if (qword_27DB13AD0 != -1)
    {
      swift_once();
    }

    v41 = sub_23030EF48();
    __swift_project_value_buffer(v41, qword_27DB14A50);
    sub_230055F74(v38, v36, &qword_27DB14A68);
    v42 = *(v11 + 16);
    v43 = v112;
    v42(v112, v40, v10);

    v44 = v11;
    v45 = sub_23030EF38();
    v46 = sub_230310298();

    if (os_log_type_enabled(v45, v46))
    {
      LODWORD(v117) = v46;
      v47 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *&v123 = v111;
      *v47 = 136315650;
      sub_230055F74(v36, v30, &qword_27DB14A68);
      if ((*(v44 + 48))(v30, 1, v10) == 1)
      {
        v48 = 0xE300000000000000;
        v49 = 7104878;
      }

      else
      {
        v66 = *(v44 + 32);
        v110 = v45;
        v67 = v42;
        v68 = v115;
        v66(v115, v30, v10);
        v67(v114, v68, v10);
        v49 = sub_23030F948();
        v48 = v69;
        v70 = v68;
        v42 = v67;
        v45 = v110;
        (*(v44 + 8))(v70, v10);
      }

      sub_230061918(v36, &qword_27DB14A68);
      v71 = sub_23004E30C(v49, v48, &v123);

      *(v47 + 4) = v71;
      *(v47 + 12) = 2080;
      v72 = sub_2303113C8();
      v74 = v73;
      v75 = v43;
      v62 = *(v44 + 8);
      v62(v75, v10);
      v76 = sub_23004E30C(v72, v74, &v123);

      *(v47 + 14) = v76;
      *(v47 + 22) = 2080;
      *(v47 + 24) = sub_23004E30C(v116, v120, &v123);
      _os_log_impl(&dword_230044000, v45, v117, "Failed cast {given: %s, expect: %s, message: %s}", v47, 0x20u);
      v77 = v111;
      swift_arrayDestroy();
      MEMORY[0x231914180](v77, -1, -1);
      MEMORY[0x231914180](v47, -1, -1);
    }

    else
    {

      v61 = v43;
      v62 = *(v44 + 8);
      v62(v61, v10);
      sub_230061918(v36, &qword_27DB14A68);
    }

    v78 = v44;
    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    sub_230310848();

    *&v123 = 0xD000000000000014;
    *(&v123 + 1) = 0x8000000230340290;
    v79 = v113;
    sub_230055F74(v118, v113, &qword_27DB14A68);
    v80 = (*(v44 + 48))(v79, 1, v10);
    v81 = v119;
    v82 = 7104878;
    if (v80 == 1)
    {
      v83 = 0xE300000000000000;
    }

    else
    {
      v84 = v115;
      (*(v78 + 32))(v115, v79, v10);
      v42(v114, v84, v10);
      v82 = sub_23030F948();
      v83 = v85;
      v62(v84, v10);
    }

    v86 = objc_opt_self();
    MEMORY[0x231911790](v82, v83);

    MEMORY[0x231911790](0x746365707865202CLL, 0xEA0000000000203ALL);
    v87 = sub_2303113C8();
    MEMORY[0x231911790](v87);

    MEMORY[0x231911790](0x67617373656D202CLL, 0xEC00000022203A65);
    MEMORY[0x231911790](v116, v120);
    MEMORY[0x231911790](8829, 0xE200000000000000);
    v88 = sub_23030F8B8();

    v89 = [v86 internalErrorWithDebugDescription_];
    v90 = v118;
  }

  else
  {
    if (qword_27DB13AD0 != -1)
    {
      swift_once();
    }

    v50 = sub_23030EF48();
    __swift_project_value_buffer(v50, qword_27DB14A50);
    sub_230055F74(v38, v33, &qword_27DB14A68);
    v51 = *(v11 + 16);
    v52 = v111;
    v51(v111, v119, v10);
    v53 = sub_23030EF38();
    v54 = sub_230310298();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&v123 = v117;
      *v55 = 136315394;
      v56 = v109;
      sub_230055F74(v33, v109, &qword_27DB14A68);
      v57 = (*(v11 + 48))(v56, 1, v10);
      v120 = v51;
      if (v57 == 1)
      {
        v58 = 0xE300000000000000;
        v59 = v11;
        v60 = 7104878;
      }

      else
      {
        v91 = v115;
        (*(v11 + 32))(v115, v56, v10);
        v51(v114, v91, v10);
        v59 = v11;
        v60 = sub_23030F948();
        v58 = v92;
        (*(v59 + 8))(v91, v10);
      }

      sub_230061918(v33, &qword_27DB14A68);
      v93 = sub_23004E30C(v60, v58, &v123);

      *(v55 + 4) = v93;
      *(v55 + 12) = 2080;
      v94 = v111;
      v95 = sub_2303113C8();
      v97 = v96;
      v62 = *(v59 + 8);
      v62(v94, v10);
      v98 = sub_23004E30C(v95, v97, &v123);

      *(v55 + 14) = v98;
      _os_log_impl(&dword_230044000, v53, v54, "Failed cast {given: %s, expect: %s}", v55, 0x16u);
      v99 = v117;
      swift_arrayDestroy();
      MEMORY[0x231914180](v99, -1, -1);
      MEMORY[0x231914180](v55, -1, -1);

      v11 = v59;
      v65 = v110;
      v51 = v120;
    }

    else
    {

      v63 = *(v11 + 8);
      v63(v52, v10);
      v64 = v33;
      v62 = v63;
      sub_230061918(v64, &qword_27DB14A68);
      v65 = v110;
    }

    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    sub_230310848();

    *&v123 = 0xD000000000000014;
    *(&v123 + 1) = 0x8000000230340290;
    v90 = v118;
    sub_230055F74(v118, v65, &qword_27DB14A68);
    if ((*(v11 + 48))(v65, 1, v10) == 1)
    {
      v100 = 0xE300000000000000;
      v101 = 7104878;
    }

    else
    {
      v102 = v115;
      (*(v11 + 32))(v115, v65, v10);
      v51(v114, v102, v10);
      v101 = sub_23030F948();
      v100 = v103;
      v62(v102, v10);
    }

    v104 = objc_opt_self();
    MEMORY[0x231911790](v101, v100);

    MEMORY[0x231911790](0x746365707865202CLL, 0xEA0000000000203ALL);
    v81 = v119;
    v105 = sub_2303113C8();
    MEMORY[0x231911790](v105);

    MEMORY[0x231911790](125, 0xE100000000000000);
    v88 = sub_23030F8B8();

    v89 = [v104 internalErrorWithDebugDescription_];
  }

  v106 = v89;

  v62(v81, v10);
  sub_230061918(v90, &qword_27DB14A68);
  return v106;
}