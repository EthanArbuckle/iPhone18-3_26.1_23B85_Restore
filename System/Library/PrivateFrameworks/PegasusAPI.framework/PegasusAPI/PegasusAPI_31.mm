uint64_t sub_1B8F9A580()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA28);
  __swift_project_value_buffer(v0, qword_1EBABFA28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "FBTHTophitNo";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FBTHTophitShouldBe";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FBTHTophitMustBe";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9A7AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA40);
  __swift_project_value_buffer(v0, qword_1EBABFA40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B965A600;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TriggerVisibleResultsEventUnknown";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TriggerVisibleResultsEventResultListUpdated";
  *(v10 + 8) = 43;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TriggerVisibleResultsEventScroll";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TriggerVisibleResultsEventShowMore";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "TriggerVisibleResultsEventPeek";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "TriggerVisibleResultsEventPop";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "TriggerVisibleResultsEventShowLess";
  *(v20 + 1) = 34;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "TriggerVisibleResultsEventCardSwipe";
  *(v22 + 1) = 35;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "TriggerVisibleResultsEventClick";
  *(v24 + 1) = 31;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "TriggerVisibleResultsEventViewResized";
  *(v26 + 1) = 37;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "TriggerVisibleResultsEventScrollUp";
  *(v28 + 1) = 34;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "TriggerVisibleResultsEventScrollDown";
  *(v30 + 1) = 36;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "TriggerVisibleResultsEventResumeSearch";
  *(v32 + 1) = 38;
  v32[16] = 2;
  v9();
  v33 = (v5 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "TriggerVisibleResultsEventArrowUp";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v9();
  v35 = (v5 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "TriggerVisibleResultsEventArrowDown";
  *(v36 + 1) = 35;
  v36[16] = 2;
  v9();
  v37 = (v5 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 15;
  *v38 = "TriggerVisibleResultsEventShowMoreResults";
  *(v38 + 1) = 41;
  v38[16] = 2;
  v9();
  v39 = (v5 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 16;
  *v40 = "TriggerVisibleResultsEventScrollLeft";
  *(v40 + 1) = 36;
  v40[16] = 2;
  v9();
  v41 = (v5 + 17 * v2);
  v42 = v41 + v1[14];
  *v41 = 17;
  *v42 = "TriggerVisibleResultsEventScrollRight";
  *(v42 + 1) = 37;
  v42[16] = 2;
  v9();
  v43 = (v5 + 18 * v2);
  v44 = v43 + v1[14];
  *v43 = 18;
  *v44 = "TriggerVisibleResultsBackButton";
  *(v44 + 1) = 31;
  v44[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9ADAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA58);
  __swift_project_value_buffer(v0, qword_1EBABFA58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SessionEndTriggerEventUnknown";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SessionEndTriggerEventNoPreviousSession";
  *(v10 + 8) = 39;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SessionEndTriggerEventExternalRequest";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SessionEndTriggerEventSessionIdle";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SessionEndTriggerEventMaxSessionTimePassed";
  *(v16 + 1) = 42;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SessionEndTriggerEventGuidChanged";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SessionEndTriggerEventCriticalMemory";
  *(v20 + 1) = 36;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "SessionEndTriggerEventEngagementReceived";
  *(v22 + 1) = 40;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "SessionEndTriggerEventFBFPostProcessed";
  *(v24 + 1) = 38;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9B14C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA70);
  __swift_project_value_buffer(v0, qword_1EBABFA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ActionCardTypeUnknown";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ActionCardTypeNormal";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ActionCardTypeMaps";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ActionCardTypeITunesSheet";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ActionCardTypeHostedHTMLPage";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9B3F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA88);
  __swift_project_value_buffer(v0, qword_1EBABFA88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1B965CDB0;
  v4 = v62 + v3 + v1[14];
  *(v62 + v3) = 0;
  *v4 = "TriggerSearchRequestEventUnknown";
  *(v4 + 8) = 32;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v62 + v3 + v2 + v1[14];
  *(v62 + v3 + v2) = 1;
  *v8 = "TriggerSearchRequestEventNewCharacter";
  *(v8 + 8) = 37;
  *(v8 + 16) = 2;
  v7();
  v9 = (v62 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TriggerSearchRequestEventIMECommit";
  *(v10 + 1) = 34;
  v10[16] = 2;
  v7();
  v11 = (v62 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TriggerSearchRequestEventBackspace";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v7();
  v13 = (v62 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "TriggerSearchRequestEventVoiceSearch";
  *(v14 + 1) = 36;
  v14[16] = 2;
  v7();
  v15 = (v62 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TriggerSearchRequestEventDictation";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v7();
  v17 = (v62 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "TriggerSearchRequestEventCopyAndPaste";
  *(v18 + 1) = 37;
  v18[16] = 2;
  v7();
  v19 = (v62 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "TriggerSearchRequestEventDragAndDrop";
  *(v20 + 1) = 36;
  v20[16] = 2;
  v7();
  v21 = (v62 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "TriggerSearchRequestEventSuggestion";
  *(v22 + 1) = 35;
  v22[16] = 2;
  v7();
  v23 = (v62 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TriggerSearchRequestEventPrefetch";
  *(v24 + 1) = 33;
  v24[16] = 2;
  v7();
  v25 = (v62 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "TriggerSearchRequestEventPartialSuggestion";
  *(v26 + 1) = 42;
  v26[16] = 2;
  v7();
  v27 = (v62 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "TriggerSearchRequestEventLookup";
  *(v28 + 1) = 31;
  v28[16] = 2;
  v7();
  v29 = (v62 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "TriggerSearchRequestEventCrossButton";
  *(v30 + 1) = 36;
  v30[16] = 2;
  v7();
  v31 = (v62 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TriggerSearchRequestEventShowMore";
  *(v32 + 1) = 33;
  v32[16] = 2;
  v7();
  v33 = (v62 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "TriggerSearchRequestEventCard";
  *(v34 + 1) = 29;
  v34[16] = 2;
  v7();
  v35 = (v62 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "TriggerSearchRequestEventImageLoad";
  *(v36 + 1) = 34;
  v36[16] = 2;
  v7();
  v37 = (v62 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "TriggerSearchRequestEventBag";
  *(v38 + 1) = 28;
  v38[16] = 2;
  v7();
  v39 = (v62 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "TriggerSearchRequestEventUnlockDevice";
  *(v40 + 1) = 37;
  v40[16] = 2;
  v7();
  v41 = (v62 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "TriggerSearchRequestEventCorrection";
  *(v42 + 1) = 35;
  v42[16] = 2;
  v7();
  v43 = (v62 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "TriggerSearchRequestEventWarm";
  *(v44 + 1) = 29;
  v44[16] = 2;
  v7();
  v45 = (v62 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "TriggerSearchRequestEventFlight";
  *(v46 + 1) = 31;
  v46[16] = 2;
  v7();
  v47 = (v62 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "TriggerSearchRequestEventSuggestQueries";
  *(v48 + 1) = 39;
  v48[16] = 2;
  v7();
  v49 = (v62 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "TriggerSearchRequestEventSearchOnly";
  *(v50 + 1) = 35;
  v50[16] = 2;
  v7();
  v51 = (v62 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "TriggerSearchRequestEventReturnKey";
  *(v52 + 1) = 34;
  v52[16] = 2;
  v7();
  v53 = (v62 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "TriggerSearchRequestEventSuggestWithResults";
  *(v54 + 1) = 43;
  v54[16] = 2;
  v7();
  v55 = (v62 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "TriggerSearchRequestEventQueryBuilder";
  *(v56 + 1) = 37;
  v56[16] = 2;
  v7();
  v57 = (v62 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "TriggerSearchRequestEventResumeSearch";
  *(v58 + 1) = 37;
  v58[16] = 2;
  v7();
  v59 = (v62 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "TriggerSearchRequestEventScopeChanged";
  *(v60 + 1) = 37;
  v60[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9BC00()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFAA0);
  __swift_project_value_buffer(v0, qword_1EBABFAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EndpointTypeUnknown";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EndpointTypeParsec";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EndpointTypeGoogle";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EndpointTypeYahoo";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EndpointTypeBing";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "EndpointTypeDuckduckgo";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "EndpointTypeParsecSearch";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "EndpointTypeParsecImage";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "EndpointTypeYandex";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "EndpointTypeBaidu";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "EndpointTypeParsecBag";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "EndpointTypeParsecCard";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "EndpointTypeParsecWarm";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v9();
  v33 = (v5 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "EndpointTypeParsecFlight";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v9();
  v35 = (v5 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "EndpointTypeSogou";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v9();
  v37 = (v5 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 15;
  *v38 = "EndpointTypeQihoo";
  *(v38 + 1) = 17;
  v38[16] = 2;
  v9();
  v39 = (v5 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 16;
  *v40 = "EndpointTypeEcosia";
  *(v40 + 1) = 18;
  v40[16] = 2;
  v9();
  v41 = (v5 + 17 * v2);
  v42 = v41 + v1[14];
  *v41 = 17;
  *v42 = "EndpointTypeParsecZeroKeywordSuggest";
  *(v42 + 1) = 36;
  v42[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9C1C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFAB8);
  __swift_project_value_buffer(v0, qword_1EBABFAB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "IndexTypeUnknown";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IndexTypeSpotlight";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "IndexTypeCalculator";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IndexTypeCoreDuet";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "IndexTypeSafariBookmarks";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "IndexTypeSafariHistory";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "IndexTypeLookupDictionary";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "IndexTypeEngagedCompletionCache";
  *(v22 + 1) = 31;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9C52C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFAD0);
  __swift_project_value_buffer(v0, qword_1EBABFAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CardDisappearEventUnknown";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CardDisappearEventBack";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CardDisappearEventSwipe";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CardDisappearEventPop";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CardDisappearEventDone";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CardDisappearEventReplaced";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "CardDisappearEventBackgroundTap";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "CardDisappearEventClose";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9C894()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFAE8);
  __swift_project_value_buffer(v0, qword_1EBABFAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ClearInputTriggerEventUnknown";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ClearInputTriggerEventCrossButton";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ClearInputTriggerEventCut";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ClearInputTriggerEventBackspace";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9CAFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB00);
  __swift_project_value_buffer(v0, qword_1EBABFB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SectionEngagementTriggerEventUnknown";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SectionEngagementTriggerEventSearchInApp";
  *(v10 + 8) = 40;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SectionEngagementTriggerEventShowMore";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SectionEngagementTriggerEventShowLess";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SectionEngagementTriggerEventClear";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9CDA0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB18);
  __swift_project_value_buffer(v0, qword_1EBABFB18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VisibleSectionHeaderTypeUnknown";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VisibleSectionHeaderTypeSearchInApp";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VisibleSectionHeaderTypeShowMore";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VisibleSectionHeaderTypeNormal";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9D008()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB30);
  __swift_project_value_buffer(v0, qword_1EBABFB30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B9661280;
  v4 = v46 + v3 + v1[14];
  *(v46 + v3) = 0;
  *v4 = "KnownFeedbackTypeUnknown";
  *(v4 + 8) = 24;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v46 + v3 + v2 + v1[14];
  *(v46 + v3 + v2) = 1;
  *v8 = "SafariAutoFill";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v46 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "Crowdsourcing";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v46 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SpotlightResultFeatures";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v7();
  v13 = (v46 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SafariAutoPlay";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v46 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "Trystero";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v46 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "EngagedCompletionFeatures";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  v19 = (v46 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ProactiveEventTracker";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v46 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "PhiDES";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  v23 = (v46 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "DuetExpert";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v46 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "UserReport";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v46 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "Usage";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v46 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "FeedbackV2";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v46 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "FeedbackV2PB";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v7();
  v33 = (v46 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ProactiveEventTrackerAggregated";
  *(v34 + 1) = 31;
  v34[16] = 2;
  v7();
  v35 = (v46 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "Handwashing";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v7();
  v37 = (v46 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "Experiments";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v46 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "FeatureQuality";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v46 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "OnDeviceAnalytics";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v7();
  v43 = (v46 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "ModelFeedback";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9D628()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB48);
  __swift_project_value_buffer(v0, qword_1EBABFB48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FeedbackGradeUnknown";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FeedbackGradeDisastrous";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FeedbackGradeBad";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FeedbackGradeOK";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "FeedbackGradeGood";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "FeedbackGradeExcellent";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "FeedbackGradeOther";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9D94C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB60);
  __swift_project_value_buffer(v0, qword_1EBABFB60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1B965DC60;
  v4 = v54 + v3 + v1[14];
  *(v54 + v3) = 0;
  *v4 = "TriggerEngagementEventUnknown";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v54 + v3 + v2 + v1[14];
  *(v54 + v3 + v2) = 1;
  *v8 = "TriggerEngagementEventEnter";
  *(v8 + 8) = 27;
  *(v8 + 16) = 2;
  v7();
  v9 = (v54 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TriggerEngagementEventTap";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v54 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TriggerEngagementEventClick";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v7();
  v13 = (v54 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "TriggerEngagementEventDoubleClick";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v7();
  v15 = (v54 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TriggerEngagementEventPeek";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v7();
  v17 = (v54 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "TriggerEngagementEventPop";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  v19 = (v54 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "TriggerEngagementEventReveal";
  *(v20 + 1) = 28;
  v20[16] = 2;
  v7();
  v21 = (v54 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "TriggerEngagementEventArrowUp";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v7();
  v23 = (v54 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TriggerEngagementEventArrowDown";
  *(v24 + 1) = 31;
  v24[16] = 2;
  v7();
  v25 = (v54 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "TriggerEngagementEventThreeFingersTap";
  *(v26 + 1) = 37;
  v26[16] = 2;
  v7();
  v27 = (v54 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "TriggerEngagementEventSwipe";
  *(v28 + 1) = 27;
  v28[16] = 2;
  v7();
  v29 = (v54 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "TriggerEngagementEventForcedAfterListUpdate";
  *(v30 + 1) = 43;
  v30[16] = 2;
  v7();
  v31 = (v54 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TriggerEngagementEventShortcut";
  *(v32 + 1) = 30;
  v32[16] = 2;
  v7();
  v33 = (v54 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "TriggerEngagementEventPan";
  *(v34 + 1) = 25;
  v34[16] = 2;
  v7();
  v35 = (v54 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "TriggerEngagementEventSwipeLeft";
  *(v36 + 1) = 31;
  v36[16] = 2;
  v7();
  v37 = (v54 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "TriggerEngagementEventSwipeRight";
  *(v38 + 1) = 32;
  v38[16] = 2;
  v7();
  v39 = (v54 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "TriggerEngagementEventClear";
  *(v40 + 1) = 27;
  v40[16] = 2;
  v7();
  v41 = (v54 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "TriggerEngagementEventDrag";
  *(v42 + 1) = 26;
  v42[16] = 2;
  v7();
  v43 = (v54 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "TriggerEngagementEventMultipleSelection";
  *(v44 + 1) = 39;
  v44[16] = 2;
  v7();
  v45 = (v54 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "TriggerEngagementEventAutoVoice";
  *(v46 + 1) = 31;
  v46[16] = 2;
  v7();
  v47 = (v54 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "TriggerEngagementMultipleSelectionMenu";
  *(v48 + 1) = 38;
  v48[16] = 2;
  v7();
  v49 = (v54 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "TriggerEngagementEventGetInfo";
  *(v50 + 1) = 29;
  v50[16] = 2;
  v7();
  v51 = (v54 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "TriggerEngagementEventArrowRight";
  *(v52 + 1) = 32;
  v52[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9E070()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB78);
  __swift_project_value_buffer(v0, qword_1EBABFB78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1B966F8C0;
  v4 = v78 + v3 + v1[14];
  *(v78 + v3) = 0;
  *v4 = "ViewAppearEventUnknown";
  *(v4 + 8) = 22;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v78 + v3 + v2 + v1[14];
  *(v78 + v3 + v2) = 1;
  *v8 = "ViewAppearEventSwipeDown";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v78 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ViewAppearEventTodayView";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v78 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ViewAppearEventLockScreen";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v78 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ViewAppearEventBreadcrumb";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v7();
  v15 = (v78 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ViewAppearEventKeyboardShortcut";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v7();
  v17 = (v78 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ViewAppearEventMouseClickOnMenu";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v7();
  v19 = (v78 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ViewAppearEventAppLaunch";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v7();
  v21 = (v78 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ViewAppearEventNewTab";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v78 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ViewAppearEventTapToInput";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v7();
  v25 = (v78 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ViewAppearEventNewWindow";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v78 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ViewAppearEventClick";
  *(v28 + 1) = 20;
  v28[16] = 2;
  v7();
  v29 = (v78 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ViewAppearEventTabSwitch";
  *(v30 + 1) = 24;
  v30[16] = 2;
  v7();
  v31 = (v78 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ViewAppearEventOrb";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v78 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ViewAppearEventContextualMenu";
  *(v34 + 1) = 29;
  v34[16] = 2;
  v7();
  v35 = (v78 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ViewAppearEventLookupHintTap";
  *(v36 + 1) = 28;
  v36[16] = 2;
  v7();
  v37 = (v78 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "ViewAppearEventLookupTap";
  *(v38 + 1) = 24;
  v38[16] = 2;
  v7();
  v39 = (v78 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "ViewAppearEventSwipeUp";
  *(v40 + 1) = 22;
  v40[16] = 2;
  v7();
  v41 = (v78 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "ViewAppearEventSwipeLeft";
  *(v42 + 1) = 24;
  v42[16] = 2;
  v7();
  v43 = (v78 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "ViewAppearEventSwipeRight";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v7();
  v45 = (v78 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "ViewAppearEventStartComposing";
  *(v46 + 1) = 29;
  v46[16] = 2;
  v7();
  v47 = (v78 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "ViewAppearEventFindPopularItems";
  *(v48 + 1) = 31;
  v48[16] = 2;
  v7();
  v49 = (v78 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "ViewAppearEventPullDownHomeScreen";
  *(v50 + 1) = 33;
  v50[16] = 2;
  v7();
  v51 = (v78 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "ViewAppearEventNotificationCenter";
  *(v52 + 1) = 33;
  v52[16] = 2;
  v7();
  v53 = (v78 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "ViewAppearEventPartialPullDown";
  *(v54 + 1) = 30;
  v54[16] = 2;
  v7();
  v55 = (v78 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "ViewAppearEventUnlockDevice";
  *(v56 + 1) = 27;
  v56[16] = 2;
  v7();
  v57 = (v78 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "ViewAppearEventDidEnterForeground";
  *(v58 + 1) = 33;
  v58[16] = 2;
  v7();
  v59 = (v78 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "ViewAppearEventBack";
  *(v60 + 1) = 19;
  v60[16] = 2;
  v7();
  v61 = (v78 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "ViewAppearEventInfoIconTap";
  *(v62 + 1) = 26;
  v62[16] = 2;
  v7();
  v63 = (v78 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "ViewAppearEventPullDownNotificationCenter";
  *(v64 + 1) = 41;
  v64[16] = 2;
  v7();
  v65 = (v78 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "ViewAppearEventHomeScreenButton";
  *(v66 + 1) = 31;
  v66[16] = 2;
  v7();
  v67 = (v78 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "ViewAppearEventPausedVideoIconTap";
  *(v68 + 1) = 33;
  v68[16] = 2;
  v7();
  v69 = (v78 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "ViewAppearEventLiftedSubjectStaticImageLongPress";
  *(v70 + 1) = 48;
  v70[16] = 2;
  v7();
  v71 = (v78 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "ViewAppearEventLiftedSubjectPausedVideoLongPress";
  *(v72 + 1) = 48;
  v72[16] = 2;
  v7();
  v73 = (v78 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "ViewAppearEventStaticImageIconTap";
  *(v74 + 1) = 33;
  v74[16] = 2;
  v7();
  v75 = (v78 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "ViewAppearEventStaticImageLongPress";
  *(v76 + 1) = 35;
  v76[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9EA48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFB90);
  __swift_project_value_buffer(v0, qword_1EBABFB90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1B9667720;
  v4 = v59 + v3;
  v5 = v59 + v3 + v1[14];
  *(v59 + v3) = 0;
  *v5 = "ViewDisappearEventUnknown";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ViewDisappearEventKilled";
  *(v9 + 8) = 24;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ViewDisappearEventHomeButton";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ViewDisappearEventTaskSwitcher";
  *(v13 + 1) = 30;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ViewDisappearEventCancel";
  *(v15 + 1) = 24;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ViewDisappearEventEscape";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ViewDisappearEventCloseWindowByKeyboard";
  *(v19 + 1) = 39;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ViewDisappearEventCloseWindowByMouse";
  *(v21 + 1) = 36;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "ViewDisappearEventMinimizeWindowByKeyboard";
  *(v23 + 1) = 42;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "ViewDisappearEventMinimizeWindowByMouse";
  *(v25 + 1) = 39;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "ViewDisappearEventSwitchedToOtherApp";
  *(v27 + 1) = 36;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "ViewDisappearEventQuitApp";
  *(v29 + 1) = 25;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "ViewDisappearEventLockButton";
  *(v31 + 1) = 28;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "ViewDisappearEventClickNotificationBanner";
  *(v33 + 1) = 41;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "ViewDisappearEventPhoneCall";
  *(v35 + 1) = 27;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "ViewDisappearEventLostFocus";
  *(v37 + 1) = 27;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "ViewDisappearEventDone";
  *(v39 + 1) = 22;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "ViewDisappearEventSwipeDown";
  *(v41 + 1) = 27;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 18;
  *v43 = "ViewDisappearEventSwipeUp";
  *(v43 + 1) = 25;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 19;
  *v45 = "ViewDisappearEventSwipeLeft";
  *(v45 + 1) = 27;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 20;
  *v47 = "ViewDisappearEventSwipeRight";
  *(v47 + 1) = 28;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 21;
  *v49 = "ViewDisappearEventShareButton";
  *(v49 + 1) = 29;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 22;
  *v51 = "ViewDisappearEventDeviceIdle";
  *(v51 + 1) = 28;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 23;
  *v53 = "ViewDisappearEventDidEnterBackground";
  *(v53 + 1) = 36;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 24;
  *v55 = "ViewDisappearEventGoToSite";
  *(v55 + 1) = 26;
  v55[16] = 2;
  v8();
  v56 = (v4 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 25;
  *v57 = "ViewDisappearEventDidChangeTab";
  *(v57 + 1) = 30;
  v57[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8F9F1D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFBA8);
  __swift_project_value_buffer(v0, qword_1EBABFBA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1B966F8D0;
  v4 = v104 + v3 + v1[14];
  *(v104 + v3) = 0;
  *v4 = "TimingDataKeyUnknown";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v104 + v3 + v2 + v1[14];
  *(v104 + v3 + v2) = 1;
  *v8 = "TimingDataConnectionReused";
  *(v8 + 8) = 26;
  *(v8 + 16) = 2;
  v7();
  v9 = (v104 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TimingDataConnectionPeerAddress";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v7();
  v11 = (v104 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TimingDataConnectionInterfaceIdentifier";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v7();
  v13 = (v104 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "TimingDataConnectionUUID";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v104 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TimingDataConnectionStartTimeCounts";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v7();
  v17 = (v104 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "TimingDataConnectionStopTimeCounts";
  *(v18 + 1) = 34;
  v18[16] = 2;
  v7();
  v19 = (v104 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "TimingDataNStatRXPackets";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v7();
  v21 = (v104 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "TimingDataNStatRXBytes";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v7();
  v23 = (v104 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TimingDataNStatTXPackets";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v7();
  v25 = (v104 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "TimingDataNStatTXBytes";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v7();
  v27 = (v104 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "TimingDataNStatRXDuplicateBytes";
  *(v28 + 1) = 31;
  v28[16] = 2;
  v7();
  v29 = (v104 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "TimingDataNStatRXOutOfOrderBytes";
  *(v30 + 1) = 32;
  v30[16] = 2;
  v7();
  v31 = (v104 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TimingDataNStatTXRetransmit";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v7();
  v33 = (v104 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "TimingDataNStatConnectAttempts";
  *(v34 + 1) = 30;
  v34[16] = 2;
  v7();
  v35 = (v104 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "TimingDataNStatConnectSuccesses";
  *(v36 + 1) = 31;
  v36[16] = 2;
  v7();
  v37 = (v104 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "TimingDataNStatMinRTT";
  *(v38 + 1) = 21;
  v38[16] = 2;
  v7();
  v39 = (v104 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "TimingDataNStatAvgRTT";
  *(v40 + 1) = 21;
  v40[16] = 2;
  v7();
  v41 = (v104 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "TimingDataNStatVarRTT";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v7();
  v43 = (v104 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "TimingDataNStatCellRXPackets";
  *(v44 + 1) = 28;
  v44[16] = 2;
  v7();
  v45 = (v104 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "TimingDataNStatCellTXPackets";
  *(v46 + 1) = 28;
  v46[16] = 2;
  v7();
  v47 = (v104 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "TimingDataNStatWifiRXPackets";
  *(v48 + 1) = 28;
  v48[16] = 2;
  v7();
  v49 = (v104 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "TimingDataNStatWifiTXPackets";
  *(v50 + 1) = 28;
  v50[16] = 2;
  v7();
  v51 = (v104 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "TimingDataNStatWiredRXPackets";
  *(v52 + 1) = 29;
  v52[16] = 2;
  v7();
  v53 = (v104 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "TimingDataNStatWiredTXPackets";
  *(v54 + 1) = 29;
  v54[16] = 2;
  v7();
  v55 = (v104 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "TimingDataTCPFastOpenStats";
  *(v56 + 1) = 26;
  v56[16] = 2;
  v7();
  v57 = (v104 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "TimingDataTCPInfoAtStart";
  *(v58 + 1) = 24;
  v58[16] = 2;
  v7();
  v59 = (v104 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "TimingDataTCPInfoAtStop";
  *(v60 + 1) = 23;
  v60[16] = 2;
  v7();
  v61 = (v104 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "TimingDataLocalAddressAndPort";
  *(v62 + 1) = 29;
  v62[16] = 2;
  v7();
  v63 = (v104 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "TimingDataRemoteAddressAndPort";
  *(v64 + 1) = 30;
  v64[16] = 2;
  v7();
  v65 = (v104 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "TimingDataNetworkProtocolName";
  *(v66 + 1) = 29;
  v66[16] = 2;
  v7();
  v67 = (v104 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "TimingDataConnectionRace";
  *(v68 + 1) = 24;
  v68[16] = 2;
  v7();
  v69 = (v104 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "TimingDataQUICWhitelistedDomain";
  *(v70 + 1) = 31;
  v70[16] = 2;
  v7();
  v71 = (v104 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "TimingDataRequestHeaderSize";
  *(v72 + 1) = 27;
  v72[16] = 2;
  v7();
  v73 = (v104 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "TimingDataResponseHeaderSize";
  *(v74 + 1) = 28;
  v74[16] = 2;
  v7();
  v75 = (v104 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "TimingDataResponseBodyBytesReceived";
  *(v76 + 1) = 35;
  v76[16] = 2;
  v7();
  v77 = (v104 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "TimingDataResponseBodyBytesDecoded";
  *(v78 + 1) = 34;
  v78[16] = 2;
  v7();
  v79 = (v104 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "TimingDataFetchStart";
  *(v80 + 1) = 20;
  v80[16] = 2;
  v7();
  v81 = (v104 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "TimingDataDomainLookupStart";
  *(v82 + 1) = 27;
  v82[16] = 2;
  v7();
  v83 = (v104 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "TimingDataDomainLookupEnd";
  *(v84 + 1) = 25;
  v84[16] = 2;
  v7();
  v85 = (v104 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "TimingDataConnectStart";
  *(v86 + 1) = 22;
  v86[16] = 2;
  v7();
  v87 = (v104 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "TimingDataSecureConnectionStart";
  *(v88 + 1) = 31;
  v88[16] = 2;
  v7();
  v89 = (v104 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "TimingDataConnectEnd";
  *(v90 + 1) = 20;
  v90[16] = 2;
  v7();
  v91 = (v104 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "TimingDataRequestStart";
  *(v92 + 1) = 22;
  v92[16] = 2;
  v7();
  v93 = (v104 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "TimingDataRequestEnd";
  *(v94 + 1) = 20;
  v94[16] = 2;
  v7();
  v95 = (v104 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "TimingDataResponseStart";
  *(v96 + 1) = 23;
  v96[16] = 2;
  v7();
  v97 = (v104 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "TimingDataResponseEnd";
  *(v98 + 1) = 21;
  v98[16] = 2;
  v7();
  v99 = (v104 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "TimingDataRedirectStart";
  *(v100 + 1) = 23;
  v100[16] = 2;
  v7();
  v101 = (v104 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "TimingDataRedirectEnd";
  *(v102 + 1) = 21;
  v102[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9FEA8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFBC0);
  __swift_project_value_buffer(v0, qword_1EBABFBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1B966F8D0;
  v4 = v104 + v3 + v1[14];
  *(v104 + v3) = 0;
  *v4 = "CommandTypeUnknown";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v104 + v3 + v2 + v1[14];
  *(v104 + v3 + v2) = 1;
  *v8 = "CommandTypeShowContactCard";
  *(v8 + 8) = 26;
  *(v8 + 16) = 2;
  v7();
  v9 = (v104 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CommandTypeShowSFCard";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v104 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CommandTypeShowAppStoreSheet";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v7();
  v13 = (v104 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CommandTypeOpenPunchout";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v104 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CommandTypeOpenFileProviderItem";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v7();
  v17 = (v104 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CommandTypeOpenAppClip";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v104 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CommandTypeOpenWebClip";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v104 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CommandTypeRequestAppClipInstall";
  *(v22 + 1) = 32;
  v22[16] = 2;
  v7();
  v23 = (v104 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CommandTypeRequestUserReport";
  *(v24 + 1) = 28;
  v24[16] = 2;
  v7();
  v25 = (v104 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CommandTypeLaunchApp";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v104 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CommandTypeRunVoiceShortcut";
  *(v28 + 1) = 27;
  v28[16] = 2;
  v7();
  v29 = (v104 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CommandTypeIndexedUserActivity";
  *(v30 + 1) = 30;
  v30[16] = 2;
  v7();
  v31 = (v104 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CommandTypeOpenCoreSpotlightItem";
  *(v32 + 1) = 32;
  v32[16] = 2;
  v7();
  v33 = (v104 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CommandTypePerformIntent";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v7();
  v35 = (v104 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CommandTypeSearchInApp";
  *(v36 + 1) = 22;
  v36[16] = 2;
  v7();
  v37 = (v104 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "CommandTypeUpdateSearchQuery";
  *(v38 + 1) = 28;
  v38[16] = 2;
  v7();
  v39 = (v104 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "CommandTypeSearchWeb";
  *(v40 + 1) = 20;
  v40[16] = 2;
  v7();
  v41 = (v104 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "CommandTypeInvokeSiri";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v7();
  v43 = (v104 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "CommandTypePerformContactQuery";
  *(v44 + 1) = 30;
  v44[16] = 2;
  v7();
  v45 = (v104 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "CommandTypeOpenCalculation";
  *(v46 + 1) = 26;
  v46[16] = 2;
  v7();
  v47 = (v104 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "CommandTypePlayVideo";
  *(v48 + 1) = 20;
  v48[16] = 2;
  v7();
  v49 = (v104 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "CommandTypeCall";
  *(v50 + 1) = 15;
  v50[16] = 2;
  v7();
  v51 = (v104 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "CommandTypeEmail";
  *(v52 + 1) = 16;
  v52[16] = 2;
  v7();
  v53 = (v104 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "CommandTypeBeginMapsRouting";
  *(v54 + 1) = 27;
  v54[16] = 2;
  v7();
  v55 = (v104 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "CommandTypeToggleAudio";
  *(v56 + 1) = 22;
  v56[16] = 2;
  v7();
  v57 = (v104 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "CommandTypePerformPersonEntityQuery";
  *(v58 + 1) = 35;
  v58[16] = 2;
  v7();
  v59 = (v104 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "CommandTypeShowPurchaseRequest";
  *(v60 + 1) = 30;
  v60[16] = 2;
  v7();
  v61 = (v104 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "CommandTypeShowScreenTimeRequestSheet";
  *(v62 + 1) = 37;
  v62[16] = 2;
  v7();
  v63 = (v104 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "CommandTypePerformEntityQuery";
  *(v64 + 1) = 29;
  v64[16] = 2;
  v7();
  v65 = (v104 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "CommandTypeShare";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v104 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "CommandTypeCopy";
  *(v68 + 1) = 15;
  v68[16] = 2;
  v7();
  v69 = (v104 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "CommandTypeToggleWatchListStatus";
  *(v70 + 1) = 32;
  v70[16] = 2;
  v7();
  v71 = (v104 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "CommandTypeShowPhotosOneUpView";
  *(v72 + 1) = 30;
  v72[16] = 2;
  v7();
  v73 = (v104 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "CommandTypePlayMedia";
  *(v74 + 1) = 20;
  v74[16] = 2;
  v7();
  v75 = (v104 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "CommandTypeOpenMedia";
  *(v76 + 1) = 20;
  v76[16] = 2;
  v7();
  v77 = (v104 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "CommandTypeAddToPhotosLibrary";
  *(v78 + 1) = 29;
  v78[16] = 2;
  v7();
  v79 = (v104 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "CommandTypePerformContactAction";
  *(v80 + 1) = 31;
  v80[16] = 2;
  v7();
  v81 = (v104 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "CommandTypeExpandInline";
  *(v82 + 1) = 23;
  v82[16] = 2;
  v7();
  v83 = (v104 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "CommandTypeSubscribeForUpdates";
  *(v84 + 1) = 30;
  v84[16] = 2;
  v7();
  v85 = (v104 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "CommandTypeViewEmail";
  *(v86 + 1) = 20;
  v86[16] = 2;
  v7();
  v87 = (v104 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "CommandTypeRejectPeopleInPhoto";
  *(v88 + 1) = 30;
  v88[16] = 2;
  v7();
  v89 = (v104 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "CommandTypeShowWrapperResponseView";
  *(v90 + 1) = 34;
  v90[16] = 2;
  v7();
  v91 = (v104 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "CommandTypeClearProactiveCategory";
  *(v92 + 1) = 33;
  v92[16] = 2;
  v7();
  v93 = (v104 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "CommandTypeCreateContact";
  *(v94 + 1) = 24;
  v94[16] = 2;
  v7();
  v95 = (v104 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "CommandTypeCreateCalendarEvent";
  *(v96 + 1) = 30;
  v96[16] = 2;
  v7();
  v97 = (v104 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "CommandTypeCreateReminder";
  *(v98 + 1) = 25;
  v98[16] = 2;
  v7();
  v99 = (v104 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "CommandTypeManageReservation";
  *(v100 + 1) = 28;
  v100[16] = 2;
  v7();
  v101 = (v104 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 50;
  *v102 = "CommandTypeFlightCheckin";
  *(v102 + 1) = 24;
  v102[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA0B9C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFBD8);
  __swift_project_value_buffer(v0, qword_1EBABFBD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoreSpotlightIndexUsedUnknown";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoreSpotlightIndexUsedMainIndex";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CoreSpotlightIndexUsedHighPriorityIndex";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA0DC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFBF0);
  __swift_project_value_buffer(v0, qword_1EBABFBF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoreSpotlightIndexUsedReasonUnknown";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoreSpotlightIndexUsedReasonHighPriorityDueToTimeOut";
  *(v10 + 1) = 52;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CoreSpotlightIndexUsedReasonHighPriorityDueToHighRelevance";
  *(v12 + 1) = 58;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA0FF4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC08);
  __swift_project_value_buffer(v0, qword_1EBABFC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ThirdPartyQueryCompletionMatchedUnknown";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ThirdPartyQueryCompletionMatchedFalse";
  *(v10 + 1) = 37;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ThirdPartyQueryCompletionMatchedTrue";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA1220()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC20);
  __swift_project_value_buffer(v0, qword_1EBABFC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PhotosSuggestionTypeUnknown";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PhotosSuggestionTypeRecentlyViewed";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PhotosSuggestionTypeRecentlyEdited";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PhotosSuggestionTypeRecentlyShared";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PhotosSuggestionTypeRecentlySearched";
  *(v16 + 1) = 36;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PhotosSuggestionTypeSearchPrompt";
  *(v18 + 1) = 32;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PhotosSuggestionTypeCompletion";
  *(v20 + 1) = 30;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "PhotosSuggestionTypeNextToken";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA1584()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC38);
  __swift_project_value_buffer(v0, qword_1EBABFC38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HideReasonUnknown";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HideReasonSafariDemoting";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HideReason3rdPartyNavigational";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA17B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC50);
  __swift_project_value_buffer(v0, qword_1EBABFC50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MailSuggestionDataSourcesUnknown";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MailSuggestionDataSourcesPommes";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MailSuggestionDataSourcesSKGMegadome";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MailSuggestionDataSourcesContacts";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA1A18()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC68);
  __swift_project_value_buffer(v0, qword_1EBABFC68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "CoreSpotlightResultQueryRecencyUnknown";
  *(v4 + 8) = 38;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "CoreSpotlightResultQueryRecencyLastDay";
  *(v8 + 8) = 38;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CoreSpotlightResultQueryRecencyLast3Days";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CoreSpotlightResultQueryRecencyLastWeek";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CoreSpotlightResultQueryRecencyLastMonth";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CoreSpotlightResultQueryRecencyLast3Months";
  *(v16 + 1) = 42;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CoreSpotlightResultQueryRecencyLastYear";
  *(v18 + 1) = 39;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CoreSpotlightResultQueryRecencyLast18Months";
  *(v20 + 1) = 43;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CoreSpotlightResultQueryRecencyBefore18Months";
  *(v22 + 1) = 45;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA1DAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC80);
  __swift_project_value_buffer(v0, qword_1EBABFC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "EmbeddingStatusTypeNoEmbedding";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EmbeddingStatusTypeNonPurgeableEmbedding";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EmbeddingStatusTypePurgeableEmbedding";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA1FD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFC98);
  __swift_project_value_buffer(v0, qword_1EBABFC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ContactActionTypeUnknown";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ContactActionTypeMail";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ContactActionTypeMessage";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ContactActionTypeVideoCall";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ContactActionTypeAudioCall";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ContactActionTypeTTYCall";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "ContactActionTypeTTYRelayCall";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "ContactActionTypePay";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "ContactActionTypeDirections";
  *(v24 + 1) = 27;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "ContactActionTypeExpanse";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA23B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFCB0);
  __swift_project_value_buffer(v0, qword_1EBABFCB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CounterfactualErrorNone";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CounterfactualErrorUnknown";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CounterfactualErrorTimeout";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA25DC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFCC8);
  __swift_project_value_buffer(v0, qword_1EBABFCC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B965A5F0;
  v4 = v50 + v3 + v1[14];
  *(v50 + v3) = 0;
  *v4 = "MKPlaceViewFeedbackTypeUnknown";
  *(v4 + 8) = 30;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v50 + v3 + v2 + v1[14];
  *(v50 + v3 + v2) = 2;
  *v8 = "MKPlaceViewFeedbackTypePhoneNumber";
  *(v8 + 8) = 34;
  *(v8 + 16) = 2;
  v7();
  v9 = (v50 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "MKPlaceViewFeedbackTypeWebsite";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v7();
  v11 = (v50 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "MKPlaceViewFeedbackTypeAddContact";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v7();
  v13 = (v50 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "MKPlaceViewFeedbackTypeShare";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v7();
  v15 = (v50 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 12;
  *v16 = "MKPlaceViewFeedbackTypeDirectionsToHere";
  *(v16 + 1) = 39;
  v16[16] = 2;
  v7();
  v17 = (v50 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "MKPlaceViewFeedbackTypeDirectionsFromHere";
  *(v18 + 1) = 41;
  v18[16] = 2;
  v7();
  v19 = (v50 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 14;
  *v20 = "MKPlaceViewFeedbackTypeDismissed";
  *(v20 + 1) = 32;
  v20[16] = 2;
  v7();
  v21 = (v50 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 62;
  *v22 = "MKPlaceViewFeedbackTypeReportAProblem";
  *(v22 + 1) = 37;
  v22[16] = 2;
  v7();
  v23 = (v50 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 124;
  *v24 = "MKPlaceViewFeedbackTypeEditContact";
  *(v24 + 1) = 34;
  v24[16] = 2;
  v7();
  v25 = (v50 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 125;
  *v26 = "MKPlaceViewFeedbackTypeDeleteContact";
  *(v26 + 1) = 36;
  v26[16] = 2;
  v7();
  v27 = (v50 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 127;
  *v28 = "MKPlaceViewFeedbackTypeFlyoverTour";
  *(v28 + 1) = 34;
  v28[16] = 2;
  v7();
  v29 = (v50 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 172;
  *v30 = "MKPlaceViewFeedbackTypeAllPhotos";
  *(v30 + 1) = 32;
  v30[16] = 2;
  v7();
  v31 = (v50 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 173;
  *v32 = "MKPlaceViewFeedbackTypePhoto";
  *(v32 + 1) = 28;
  v32[16] = 2;
  v7();
  v33 = (v50 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 174;
  *v34 = "MKPlaceViewFeedbackTypeAddPhoto";
  *(v34 + 1) = 31;
  v34[16] = 2;
  v7();
  v35 = (v50 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 175;
  *v36 = "MKPlaceViewFeedbackTypeAllReviews";
  *(v36 + 1) = 33;
  v36[16] = 2;
  v7();
  v37 = (v50 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 176;
  *v38 = "MKPlaceViewFeedbackTypeReview";
  *(v38 + 1) = 29;
  v38[16] = 2;
  v7();
  v39 = (v50 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 177;
  *v40 = "MKPlaceViewFeedbackTypeWriteReview";
  *(v40 + 1) = 34;
  v40[16] = 2;
  v7();
  v41 = (v50 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 178;
  *v42 = "MKPlaceViewFeedbackTypeDeal";
  *(v42 + 1) = 27;
  v42[16] = 2;
  v7();
  v43 = (v50 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 179;
  *v44 = "MKPlaceViewFeedbackTypeCheckin";
  *(v44 + 1) = 30;
  v44[16] = 2;
  v7();
  v45 = (v50 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 180;
  *v46 = "MKPlaceViewFeedbackTypeMoreInfo";
  *(v46 + 1) = 31;
  v46[16] = 2;
  v7();
  v47 = (v50 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 201;
  *v48 = "MKPlaceViewFeedbackTypePostalAddress";
  *(v48 + 1) = 36;
  v48[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA2CB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFCE0);
  __swift_project_value_buffer(v0, qword_1EBABFCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SKProductPageResultCanceled";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SKProductPageResultClosed";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SKProductPageResultDownloadComplete";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SKProductPageResultGotoStore";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SKProductPageResultPurchased";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SKProductPageResultRightBarButtonAction";
  *(v18 + 1) = 39;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA2F94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFCF8);
  __swift_project_value_buffer(v0, qword_1EBABFCF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SearchTypeUnknown";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SearchTypeZeroKeyword";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SearchTypeAsYouType";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SearchTypeCommitted";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA31F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD10);
  __swift_project_value_buffer(v0, qword_1EBABFD10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EntityTypeUnknown";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EntityTypePhotos";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EntityTypePerson";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EntityTypeServer";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EntityTypeTopic";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA3498()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD28);
  __swift_project_value_buffer(v0, qword_1EBABFD28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SpotlightQueryIntentTypeUnknown";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SpotlightQueryIntentTypeLocal";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SpotlightQueryIntentTypeStrong_Local";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SpotlightQueryIntentTypeServer";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SpotlightQueryIntentTypeStrong_Server";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA3740()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD40);
  __swift_project_value_buffer(v0, qword_1EBABFD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "QueryUnderstandingQueryIntentTypeUnknown";
  *(v6 + 8) = 40;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "QueryUnderstandingQueryIntentTypeUnrelated";
  *(v10 + 8) = 42;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "QueryUnderstandingQueryIntentTypePhotoSearch";
  *(v12 + 1) = 44;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "QueryUnderstandingQueryIntentTypePhotoSearchOCR";
  *(v14 + 1) = 47;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA39A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD58);
  __swift_project_value_buffer(v0, qword_1EBABFD58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v4 = "PhotosLibraryBucketUnknown";
  *(v4 + 8) = 26;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 1;
  *v8 = "PhotosLibraryBucket500OrLess";
  *(v8 + 8) = 28;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PhotosLibraryBucket500To2K";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PhotosLibraryBucket2KTo5K";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PhotosLibraryBucket5KTo10K";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PhotosLibraryBucket10KTo20K";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PhotosLibraryBucket20KTo30K";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "PhotosLibraryBucket30KTo40K";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "PhotosLibraryBucket40KTo50K";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PhotosLibraryBucket50KTo100K";
  *(v24 + 1) = 28;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "PhotosLibraryBucketMoreThan100K";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA3DAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD70);
  __swift_project_value_buffer(v0, qword_1EBABFD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 0;
  *v4 = "PhotosRetrievalBucketUnknown";
  *(v4 + 8) = 28;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 1;
  *v8 = "PhotosRetrievalBucket10OrLess";
  *(v8 + 8) = 29;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PhotosRetrievalBucket10To50";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PhotosRetrievalBucket50To100";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PhotosRetrievalBucket100To250";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "PhotosRetrievalBucket250To500";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "PhotosRetrievalBucket500To2K";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "PhotosRetrievalBucket2KTo5K";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "PhotosRetrievalBucket5KTo10K";
  *(v22 + 1) = 28;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PhotosRetrievalBucket10KTo20K";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "PhotosRetrievalBucket20KTo30K";
  *(v26 + 1) = 29;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "PhotosRetrievalBucket30KTo40K";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "PhotosRetrievalBucket40KTo50K";
  *(v30 + 1) = 29;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "PhotosRetrievalBucket50KTo100K";
  *(v32 + 1) = 30;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "PhotosRetrievalBucketMoreThan100K";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA4294()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFD88);
  __swift_project_value_buffer(v0, qword_1EBABFD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LookupHintRelevancyUnknown";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LookupHintRelevancyGood";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LookupHintRelevancyBad";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA44C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFDA0);
  __swift_project_value_buffer(v0, qword_1EBABFDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "FlusherEndpointCrowdsourcing";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FlusherEndpointFeedback";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA46B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFDB8);
  __swift_project_value_buffer(v0, qword_1EBABFDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1B966F8F0;
  v4 = v102 + v3 + v1[14];
  *(v102 + v3) = 0;
  *v4 = "FeedbackTypeUnknown";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v102 + v3 + v2 + v1[14];
  *(v102 + v3 + v2) = 1;
  *v8 = "FeedbackTypeSearchViewAppear";
  *(v8 + 8) = 28;
  *(v8 + 16) = 2;
  v7();
  v9 = (v102 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "FeedbackTypeSearchViewDisappear";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v7();
  v11 = (v102 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "FeedbackTypeRanking";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v102 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "FeedbackTypeRankSections";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v102 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "FeedbackTypeResultRanking";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v7();
  v17 = (v102 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "FeedbackTypeResult";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  v19 = (v102 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "FeedbackTypeEngagement";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v102 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "FeedbackTypeVisibleResults";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v7();
  v23 = (v102 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "FeedbackTypeCardSection";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v7();
  v25 = (v102 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "FeedbackTypeMapsCardSection";
  *(v26 + 1) = 27;
  v26[16] = 2;
  v7();
  v27 = (v102 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "FeedbackTypeStoreCardSection";
  *(v28 + 1) = 28;
  v28[16] = 2;
  v7();
  v29 = (v102 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "FeedbackTypeStartSearch";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v102 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "FeedbackTypeEndSearch";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v7();
  v33 = (v102 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "FeedbackTypeStartNetworkSearch";
  *(v34 + 1) = 30;
  v34[16] = 2;
  v7();
  v35 = (v102 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "FeedbackTypeEndNetworkSearch";
  *(v36 + 1) = 28;
  v36[16] = 2;
  v7();
  v37 = (v102 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "FeedbackTypeStartLocalSearch";
  *(v38 + 1) = 28;
  v38[16] = 2;
  v7();
  v39 = (v102 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "FeedbackTypeEndLocalSearch";
  *(v40 + 1) = 26;
  v40[16] = 2;
  v7();
  v41 = (v102 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "FeedbackTypeError";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v7();
  v43 = (v102 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "FeedbackTypeCustomUnknown";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v7();
  v45 = (v102 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "FeedbackTypeSuggestionEngagement";
  *(v46 + 1) = 32;
  v46[16] = 2;
  v7();
  v47 = (v102 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "FeedbackTypeCardViewDisappear";
  *(v48 + 1) = 29;
  v48[16] = 2;
  v7();
  v49 = (v102 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "FeedbackTypeVisibleSuggestions";
  *(v50 + 1) = 30;
  v50[16] = 2;
  v7();
  v51 = (v102 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "FeedbackTypeResultsReceivedAfterTimeout";
  *(v52 + 1) = 39;
  v52[16] = 2;
  v7();
  v53 = (v102 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "FeedbackTypeLateSectionsAppended";
  *(v54 + 1) = 32;
  v54[16] = 2;
  v7();
  v55 = (v102 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "FeedbackTypeClearInput";
  *(v56 + 1) = 22;
  v56[16] = 2;
  v7();
  v57 = (v102 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "FeedbackTypeSectionEngagement";
  *(v58 + 1) = 29;
  v58[16] = 2;
  v7();
  v59 = (v102 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "FeedbackTypeVisibleSectionHeader";
  *(v60 + 1) = 32;
  v60[16] = 2;
  v7();
  v61 = (v102 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "FeedbackTypeDidGoToSite";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v102 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "FeedbackTypeDidGoToSearch";
  *(v64 + 1) = 25;
  v64[16] = 2;
  v7();
  v65 = (v102 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "FeedbackTypeSessionMissingResults";
  *(v66 + 1) = 33;
  v66[16] = 2;
  v7();
  v67 = (v102 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "FeedbackTypeSessionMissingSuggestions";
  *(v68 + 1) = 37;
  v68[16] = 2;
  v7();
  v69 = (v102 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "FeedbackTypeResultGrading";
  *(v70 + 1) = 25;
  v70[16] = 2;
  v7();
  v71 = (v102 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "FeedbackTypeLookupHintRelevancyGraded";
  *(v72 + 1) = 37;
  v72[16] = 2;
  v7();
  v73 = (v102 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "FeedbackTypeConnectionInvalidated";
  *(v74 + 1) = 33;
  v74[16] = 2;
  v7();
  v75 = (v102 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "FeedbackTypeEngagementCard";
  *(v76 + 1) = 26;
  v76[16] = 2;
  v7();
  v77 = (v102 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "FeedbackTypeSessionEnd";
  *(v78 + 1) = 22;
  v78[16] = 2;
  v7();
  v79 = (v102 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "FeedbackTypeCardViewAppear";
  *(v80 + 1) = 26;
  v80[16] = 2;
  v7();
  v81 = (v102 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "FeedbackTypeSkipSearch";
  *(v82 + 1) = 22;
  v82[16] = 2;
  v7();
  v83 = (v102 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "FeedbackTypeCacheHit";
  *(v84 + 1) = 20;
  v84[16] = 2;
  v7();
  v85 = (v102 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "FeedbackTypeCBAEngagement";
  *(v86 + 1) = 25;
  v86[16] = 2;
  v7();
  v87 = (v102 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "FeedbackTypeClientTiming";
  *(v88 + 1) = 24;
  v88[16] = 2;
  v7();
  v89 = (v102 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "FeedbackTypeCommandEngagement";
  *(v90 + 1) = 29;
  v90[16] = 2;
  v7();
  v91 = (v102 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "FeedbackTypeDynamicButtonVisibility";
  *(v92 + 1) = 35;
  v92[16] = 2;
  v7();
  v93 = (v102 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "FeedbackTypeExperimentTriggeredFeedback";
  *(v94 + 1) = 39;
  v94[16] = 2;
  v7();
  v95 = (v102 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 100;
  *v96 = "FeedbackTypeCustomCrowdsourcing";
  *(v96 + 1) = 31;
  v96[16] = 2;
  v7();
  v97 = (v102 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 101;
  *v98 = "FeedbackTypeCustomSafariAutofill";
  *(v98 + 1) = 32;
  v98[16] = 2;
  v7();
  v99 = (v102 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 102;
  *v100 = "FeedbackTypeCustomSpotlightResultFeatures";
  *(v100 + 1) = 41;
  v100[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA5370()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFDD0);
  __swift_project_value_buffer(v0, qword_1EBABFDD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LookupSelectionTypeDefault";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LookupSelectionTypeExplicit";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LookupSelectionTypeHintTap";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LookupSelectionTypeSceneAware";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA55D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFDE8);
  __swift_project_value_buffer(v0, qword_1EBABFDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SkipSearchTriggerEventUnknown";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SkipSearchTriggerEventLessThanMinimumQueryLength";
  *(v10 + 8) = 48;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SkipSearchTriggerEventBagDisabled";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SkipSearchTriggerEventBagFetchFailed";
  *(v14 + 1) = 36;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SkipSearchTriggerEventCacheHit";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SkipSearchTriggerEventEmptyQueryInput";
  *(v18 + 1) = 37;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SkipSearchTriggerEventQueryInputWithURISchemePrefix";
  *(v20 + 1) = 51;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA58FC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE00);
  __swift_project_value_buffer(v0, qword_1EBABFE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PrivateRelayStatusUnknown";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PrivateRelayStatusEnabled";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PrivateRelayStatusDisabled";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA5B6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE30);
  __swift_project_value_buffer(v0, qword_1EBABFE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NoCBAMatch";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EffectiveTLDPlusOneMatch";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ParameterStrippedMatch";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ExactMatch";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA5DD4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE48);
  __swift_project_value_buffer(v0, qword_1EBABFE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v366 = swift_allocObject();
  *(v366 + 16) = xmmword_1B966F900;
  v4 = v366 + v3 + v1[14];
  *(v366 + v3) = 0;
  *v4 = "Unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v366 + v3 + v2 + v1[14];
  *(v366 + v3 + v2) = 1;
  *v8 = "ParsecWebIndex";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v366 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "Application";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v366 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "Preferences";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v366 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "MobileMail";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v366 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "MobileSafari";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v366 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "MobileSMS";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  v19 = (v366 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "Stocks";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v366 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ParsecStocks";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v7();
  v23 = (v366 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TapToRadar";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v366 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SearchdZKWApps";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v366 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SearchdSuggestions";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v366 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "Podcasts";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  v31 = (v366 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "MobileAddressBook";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  v33 = (v366 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "DocumentsApp";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  v35 = (v366 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CoreSuggestions";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v7();
  v37 = (v366 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "MobileDocumentsFileProvider";
  *(v38 + 1) = 27;
  v38[16] = 2;
  v7();
  v39 = (v366 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "Music";
  *(v40 + 1) = 5;
  v40[16] = 2;
  v7();
  v41 = (v366 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "MobileCal";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v366 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "OtherSearchWeb";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v366 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "OtherSearchAppStore";
  *(v46 + 1) = 19;
  v46[16] = 2;
  v7();
  v47 = (v366 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "OtherSearchMaps";
  *(v48 + 1) = 15;
  v48[16] = 2;
  v7();
  v49 = (v366 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "SuggestionListUserTypedString";
  *(v50 + 1) = 29;
  v50[16] = 2;
  v7();
  v51 = (v366 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "SuggestionListParsec";
  *(v52 + 1) = 20;
  v52[16] = 2;
  v7();
  v53 = (v366 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "OtherTapToRadar";
  *(v54 + 1) = 15;
  v54[16] = 2;
  v7();
  v55 = (v366 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "SpotlightUISearchThrough";
  *(v56 + 1) = 24;
  v56[16] = 2;
  v7();
  v57 = (v366 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "Weather";
  *(v58 + 1) = 7;
  v58[16] = 2;
  v7();
  v59 = (v366 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "Maps";
  *(v60 + 1) = 4;
  v60[16] = 2;
  v7();
  v61 = (v366 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "GoogleCompletion";
  *(v62 + 1) = 16;
  v62[16] = 2;
  v7();
  v63 = (v366 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "History";
  *(v64 + 1) = 7;
  v64[16] = 2;
  v7();
  v65 = (v366 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "SafariCompletionListSearchEngineSuggestion";
  *(v66 + 1) = 42;
  v66[16] = 2;
  v7();
  v67 = (v366 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "GoogleSearch";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v366 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "SafariCompletionListUserTypedString";
  *(v70 + 1) = 35;
  v70[16] = 2;
  v7();
  v71 = (v366 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "AppleHistory";
  *(v72 + 1) = 12;
  v72[16] = 2;
  v7();
  v73 = (v366 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "SafariCompletionListFindOnPage";
  *(v74 + 1) = 30;
  v74[16] = 2;
  v7();
  v75 = (v366 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "TopHit";
  *(v76 + 1) = 6;
  v76[16] = 2;
  v7();
  v77 = (v366 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "AppleTopHit";
  *(v78 + 1) = 11;
  v78[16] = 2;
  v7();
  v79 = (v366 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "ICloudTab";
  *(v80 + 1) = 9;
  v80[16] = 2;
  v7();
  v81 = (v366 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "SafariCompletionListRecentSearch";
  *(v82 + 1) = 32;
  v82[16] = 2;
  v7();
  v83 = (v366 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "Bookmark";
  *(v84 + 1) = 8;
  v84[16] = 2;
  v7();
  v85 = (v366 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "YahooCompletion";
  *(v86 + 1) = 15;
  v86[16] = 2;
  v7();
  v87 = (v366 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "AppleBookmarks";
  *(v88 + 1) = 14;
  v88[16] = 2;
  v7();
  v89 = (v366 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "AppleOther";
  *(v90 + 1) = 10;
  v90[16] = 2;
  v7();
  v91 = (v366 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "BingCompletion";
  *(v92 + 1) = 14;
  v92[16] = 2;
  v7();
  v93 = (v366 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "HashtagImagesQuerySuggestion";
  *(v94 + 1) = 28;
  v94[16] = 2;
  v7();
  v95 = (v366 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "SafariCompletionListRestoredSearch";
  *(v96 + 1) = 34;
  v96[16] = 2;
  v7();
  v97 = (v366 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "DDGCompletion";
  *(v98 + 1) = 13;
  v98[16] = 2;
  v7();
  v99 = (v366 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "YahooSearch";
  *(v100 + 1) = 11;
  v100[16] = 2;
  v7();
  v101 = (v366 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "Tweetie";
  *(v102 + 1) = 7;
  v102[16] = 2;
  v7();
  v103 = (v366 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 49;
  *v104 = "AddressBox";
  *(v104 + 1) = 10;
  v104[16] = 2;
  v7();
  v105 = (v366 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 50;
  *v106 = "SpotlightSuggestionListLocal";
  *(v106 + 1) = 28;
  v106[16] = 2;
  v7();
  v107 = (v366 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 51;
  *v108 = "DDGSearch";
  *(v108 + 1) = 9;
  v108[16] = 2;
  v7();
  v109 = (v366 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 52;
  *v110 = "BingSearch";
  *(v110 + 1) = 10;
  v110[16] = 2;
  v7();
  v111 = (v366 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 53;
  *v112 = "AppleNews";
  *(v112 + 1) = 9;
  v112[16] = 2;
  v7();
  v113 = (v366 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 54;
  *v114 = "AppleCoreSuggestions";
  *(v114 + 1) = 20;
  v114[16] = 2;
  v7();
  v115 = (v366 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 55;
  *v116 = "GiphyForMessenger";
  *(v116 + 1) = 17;
  v116[16] = 2;
  v7();
  v117 = (v366 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 56;
  *v118 = "AppleSettings";
  *(v118 + 1) = 13;
  v118[16] = 2;
  v7();
  v119 = (v366 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 57;
  *v120 = "Youtube";
  *(v120 + 1) = 7;
  v120[16] = 2;
  v7();
  v121 = (v366 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 58;
  *v122 = "WhatsApp";
  *(v122 + 1) = 8;
  v122[16] = 2;
  v7();
  v123 = (v366 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 59;
  *v124 = "AppleApplications";
  *(v124 + 1) = 17;
  v124[16] = 2;
  v7();
  v125 = (v366 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 60;
  *v126 = "RiffsyKeyboard";
  *(v126 + 1) = 14;
  v126[16] = 2;
  v7();
  v127 = (v366 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 61;
  *v128 = "SpotlightSuggestionListContact";
  *(v128 + 1) = 30;
  v128[16] = 2;
  v7();
  v129 = (v366 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 62;
  *v130 = "Yelp";
  *(v130 + 1) = 4;
  v130[16] = 2;
  v7();
  v131 = (v366 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 63;
  *v132 = "MicrosoftOfficeOutlook";
  *(v132 + 1) = 22;
  v132[16] = 2;
  v7();
  v133 = (v366 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 64;
  *v134 = "Pinterest";
  *(v134 + 1) = 9;
  v134[16] = 2;
  v7();
  v135 = (v366 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 65;
  *v136 = "AppleMail";
  *(v136 + 1) = 9;
  v136[16] = 2;
  v7();
  v137 = (v366 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 66;
  *v138 = "HashtagImagesCategory";
  *(v138 + 1) = 21;
  v138[16] = 2;
  v7();
  v139 = (v366 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 67;
  *v140 = "MobileNotes";
  *(v140 + 1) = 11;
  v140[16] = 2;
  v7();
  v141 = (v366 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 68;
  *v142 = "ApplePDFs";
  *(v142 + 1) = 9;
  v142[16] = 2;
  v7();
  v143 = (v366 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 69;
  *v144 = "AppleDocuments";
  *(v144 + 1) = 14;
  v144[16] = 2;
  v7();
  v145 = (v366 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 70;
  *v146 = "GoogleChromeIOS";
  *(v146 + 1) = 15;
  v146[16] = 2;
  v7();
  v147 = (v366 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 71;
  *v148 = "AppleDeveloper";
  *(v148 + 1) = 14;
  v148[16] = 2;
  v7();
  v149 = (v366 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 72;
  *v150 = "GoogleMaps";
  *(v150 + 1) = 10;
  v150[16] = 2;
  v7();
  v151 = (v366 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 73;
  *v152 = "AppleDirectories";
  *(v152 + 1) = 16;
  v152[16] = 2;
  v7();
  v153 = (v366 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 74;
  *v154 = "BaiduCompletion";
  *(v154 + 1) = 15;
  v154[16] = 2;
  v7();
  v155 = (v366 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 75;
  *v156 = "BaiduSearch";
  *(v156 + 1) = 11;
  v156[16] = 2;
  v7();
  v157 = (v366 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 76;
  *v158 = "AppleReminders";
  *(v158 + 1) = 14;
  v158[16] = 2;
  v7();
  v159 = (v366 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 77;
  *v160 = "ApplePhotos";
  *(v160 + 1) = 11;
  v160[16] = 2;
  v7();
  v161 = (v366 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 78;
  *v162 = "AppleDictionary";
  *(v162 + 1) = 15;
  v162[16] = 2;
  v7();
  v163 = (v366 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 79;
  *v164 = "SiriCompletion";
  *(v164 + 1) = 14;
  v164[16] = 2;
  v7();
  v165 = (v366 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 80;
  *v166 = "GooglePhotos";
  *(v166 + 1) = 12;
  v166[16] = 2;
  v7();
  v167 = (v366 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 81;
  *v168 = "AppleIBooks";
  *(v168 + 1) = 11;
  v168[16] = 2;
  v7();
  v169 = (v366 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 82;
  *v170 = "Linkedin";
  *(v170 + 1) = 8;
  v170[16] = 2;
  v7();
  v171 = (v366 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 83;
  *v172 = "AppleNumbers";
  *(v172 + 1) = 12;
  v172[16] = 2;
  v7();
  v173 = (v366 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 84;
  *v174 = "AppleMobileTimer";
  *(v174 + 1) = 16;
  v174[16] = 2;
  v7();
  v175 = (v366 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 85;
  *v176 = "Pandora";
  *(v176 + 1) = 7;
  v176[16] = 2;
  v7();
  v177 = (v366 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 86;
  *v178 = "HashtagImagesRecent";
  *(v178 + 1) = 19;
  v178[16] = 2;
  v7();
  v179 = (v366 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 87;
  *v180 = "MLBAtBat";
  *(v180 + 1) = 8;
  v180[16] = 2;
  v7();
  v181 = (v366 + v3 + 88 * v2);
  v182 = v181 + v1[14];
  *v181 = 88;
  *v182 = "YahooAerogram";
  *(v182 + 1) = 13;
  v182[16] = 2;
  v7();
  v183 = (v366 + v3 + 89 * v2);
  v184 = v183 + v1[14];
  *v183 = 89;
  *v184 = "Dropbox";
  *(v184 + 1) = 7;
  v184[16] = 2;
  v7();
  v185 = (v366 + v3 + 90 * v2);
  v186 = v185 + v1[14];
  *v185 = 90;
  *v186 = "AppleLookupSearchThrough";
  *(v186 + 1) = 24;
  v186[16] = 2;
  v7();
  v187 = (v366 + v3 + 91 * v2);
  v188 = v187 + v1[14];
  *v187 = 91;
  *v188 = "AppleCalendar";
  *(v188 + 1) = 13;
  v188[16] = 2;
  v7();
  v189 = (v366 + v3 + 92 * v2);
  v190 = v189 + v1[14];
  *v189 = 92;
  *v190 = "AirBNB";
  *(v190 + 1) = 6;
  v190[16] = 2;
  v7();
  v191 = (v366 + v3 + 93 * v2);
  v192 = v191 + v1[14];
  *v191 = 93;
  *v192 = "StubHub";
  *(v192 + 1) = 7;
  v192[16] = 2;
  v7();
  v193 = (v366 + v3 + 94 * v2);
  v194 = v193 + v1[14];
  *v193 = 94;
  *v194 = "Groupon";
  *(v194 + 1) = 7;
  v194[16] = 2;
  v7();
  v195 = (v366 + v3 + 95 * v2);
  v196 = v195 + v1[14];
  *v195 = 95;
  *v196 = "AppleCalculator";
  *(v196 + 1) = 15;
  v196[16] = 2;
  v7();
  v197 = (v366 + v3 + 96 * v2);
  v198 = v197 + v1[14];
  *v197 = 96;
  *v198 = "Twitch";
  *(v198 + 1) = 6;
  v198[16] = 2;
  v7();
  v199 = (v366 + v3 + 97 * v2);
  v200 = v199 + v1[14];
  *v199 = 97;
  *v200 = "AppleKeynote";
  *(v200 + 1) = 12;
  v200[16] = 2;
  v7();
  v201 = (v366 + v3 + 98 * v2);
  v202 = v201 + v1[14];
  *v201 = 98;
  *v202 = "Zillow";
  *(v202 + 1) = 6;
  v202[16] = 2;
  v7();
  v203 = (v366 + v3 + 99 * v2);
  v204 = v203 + v1[14];
  *v203 = 99;
  *v204 = "AppleVoiceMemos";
  *(v204 + 1) = 15;
  v204[16] = 2;
  v7();
  v205 = (v366 + v3 + 100 * v2);
  v206 = v205 + v1[14];
  *v205 = 100;
  *v206 = "SafariCompletionListQuickSearch";
  *(v206 + 1) = 31;
  v206[16] = 2;
  v7();
  v207 = (v366 + v3 + 101 * v2);
  v208 = v207 + v1[14];
  *v207 = 101;
  *v208 = "HashtagImagesZKW";
  *(v208 + 1) = 16;
  v208[16] = 2;
  v7();
  v209 = (v366 + v3 + 102 * v2);
  v210 = v209 + v1[14];
  *v209 = 102;
  *v210 = "SafariSearchSuggestion";
  *(v210 + 1) = 22;
  v210[16] = 2;
  v7();
  v211 = (v366 + v3 + 103 * v2);
  v212 = v211 + v1[14];
  *v211 = 103;
  *v212 = "ZKWSuggestions";
  *(v212 + 1) = 14;
  v212[16] = 2;
  v7();
  v213 = (v366 + v3 + 104 * v2);
  v214 = v213 + v1[14];
  *v213 = 104;
  *v214 = "OtherSearchSiri";
  *(v214 + 1) = 15;
  v214[16] = 2;
  v7();
  v215 = (v366 + v3 + 105 * v2);
  v216 = v215 + v1[14];
  *v215 = 105;
  *v216 = "SafariSwitchToTab";
  *(v216 + 1) = 17;
  v216[16] = 2;
  v7();
  v217 = (v366 + v3 + 106 * v2);
  v218 = v217 + v1[14];
  *v217 = 106;
  *v218 = "SafariQuickWebsiteSearch";
  *(v218 + 1) = 24;
  v218[16] = 2;
  v7();
  v219 = (v366 + v3 + 107 * v2);
  v220 = v219 + v1[14];
  *v219 = 107;
  *v220 = "SpotlightSiriSuggestion";
  *(v220 + 1) = 23;
  v220[16] = 2;
  v7();
  v221 = (v366 + v3 + 108 * v2);
  v222 = v221 + v1[14];
  *v221 = 108;
  *v222 = "AppleContacts";
  *(v222 + 1) = 13;
  v222[16] = 2;
  v7();
  v223 = (v366 + v3 + 109 * v2);
  v224 = v223 + v1[14];
  *v223 = 109;
  *v224 = "ParsecAppStore";
  *(v224 + 1) = 14;
  v224[16] = 2;
  v7();
  v225 = (v366 + v3 + 110 * v2);
  v226 = v225 + v1[14];
  *v225 = 110;
  *v226 = "ParsecMaps";
  *(v226 + 1) = 10;
  v226[16] = 2;
  v7();
  v227 = (v366 + v3 + 111 * v2);
  v228 = v227 + v1[14];
  *v227 = 111;
  *v228 = "ParsecWiki";
  *(v228 + 1) = 10;
  v228[16] = 2;
  v7();
  v229 = (v366 + v3 + 112 * v2);
  v230 = v229 + v1[14];
  *v229 = 112;
  *v230 = "ParsecKG";
  *(v230 + 1) = 8;
  v230[16] = 2;
  v7();
  v231 = (v366 + v3 + 113 * v2);
  v232 = v231 + v1[14];
  *v231 = 113;
  *v232 = "ParsecNews";
  *(v232 + 1) = 10;
  v232[16] = 2;
  v7();
  v233 = (v366 + v3 + 114 * v2);
  v234 = v233 + v1[14];
  *v233 = 114;
  *v234 = "ParsecWeather";
  *(v234 + 1) = 13;
  v234[16] = 2;
  v7();
  v235 = (v366 + v3 + 115 * v2);
  v236 = v235 + v1[14];
  *v235 = 115;
  *v236 = "SpotlightSearchInApp";
  *(v236 + 1) = 20;
  v236[16] = 2;
  v7();
  v237 = (v366 + v3 + 116 * v2);
  v238 = v237 + v1[14];
  *v237 = 116;
  *v238 = "SpotlightWebSuggestionsUserTyped";
  *(v238 + 1) = 32;
  v238[16] = 2;
  v7();
  v239 = (v366 + v3 + 117 * v2);
  v240 = v239 + v1[14];
  *v239 = 117;
  *v240 = "SpotlightWebSuggestionsParsec";
  *(v240 + 1) = 29;
  v240[16] = 2;
  v7();
  v241 = (v366 + v3 + 118 * v2);
  v242 = v241 + v1[14];
  *v241 = 118;
  *v242 = "SpotlightWebRelatedSearch";
  *(v242 + 1) = 25;
  v242[16] = 2;
  v7();
  v243 = (v366 + v3 + 119 * v2);
  v244 = v243 + v1[14];
  *v243 = 119;
  *v244 = "SpotlightTopHits";
  *(v244 + 1) = 16;
  v244[16] = 2;
  v7();
  v245 = (v366 + v3 + 120 * v2);
  v246 = v245 + v1[14];
  *v245 = 120;
  *v246 = "SpotlightRelatedSearch";
  *(v246 + 1) = 22;
  v246[16] = 2;
  v7();
  v247 = (v366 + v3 + 121 * v2);
  v248 = v247 + v1[14];
  *v247 = 121;
  *v248 = "MailSearchTopHit";
  *(v248 + 1) = 16;
  v248[16] = 2;
  v7();
  v249 = (v366 + v3 + 122 * v2);
  v250 = v249 + v1[14];
  *v249 = 122;
  *v250 = "MailSearchSuggestion";
  *(v250 + 1) = 20;
  v250[16] = 2;
  v7();
  v251 = (v366 + v3 + 123 * v2);
  v252 = v251 + v1[14];
  *v251 = 123;
  *v252 = "MailSearchSuggestionVip";
  *(v252 + 1) = 23;
  v252[16] = 2;
  v7();
  v253 = (v366 + v3 + 124 * v2);
  v254 = v253 + v1[14];
  *v253 = 124;
  *v254 = "MailSearchSuggestionUserTyped";
  *(v254 + 1) = 29;
  v254[16] = 2;
  v7();
  v255 = (v366 + v3 + 125 * v2);
  v256 = v255 + v1[14];
  *v255 = 125;
  *v256 = "MailSearchMessageResult";
  *(v256 + 1) = 23;
  v256[16] = 2;
  v7();
  v257 = (v366 + v3 + 126 * v2);
  v258 = v257 + v1[14];
  *v257 = 126;
  *v258 = "MailSearchMessageList";
  *(v258 + 1) = 21;
  v258[16] = 2;
  v7();
  v259 = (v366 + v3 + 127 * v2);
  v260 = v259 + v1[14];
  *v259 = 127;
  *v260 = "ParsecEntity";
  *(v260 + 1) = 12;
  v260[16] = 2;
  v7();
  v261 = (v366 + v3 + (v2 << 7));
  v262 = v261 + v1[14];
  *v261 = 128;
  *v262 = "MailSearchSuggestionDate";
  *(v262 + 1) = 24;
  v262[16] = 2;
  v7();
  v263 = (v366 + v3 + 129 * v2);
  v264 = v263 + v1[14];
  *v263 = 129;
  *v264 = "MailSearchSuggestionFreeText";
  *(v264 + 1) = 28;
  v264[16] = 2;
  v7();
  v265 = (v366 + v3 + 130 * v2);
  v266 = v265 + v1[14];
  *v265 = 130;
  *v266 = "MailSearchSuggestionAttachment";
  *(v266 + 1) = 30;
  v266[16] = 2;
  v7();
  v267 = (v366 + v3 + 131 * v2);
  v268 = v267 + v1[14];
  *v267 = 131;
  *v268 = "MailSearchSuggestionPeople";
  *(v268 + 1) = 26;
  v268[16] = 2;
  v7();
  v269 = (v366 + v3 + 132 * v2);
  v270 = v269 + v1[14];
  *v269 = 132;
  *v270 = "MailSearchSuggestionContact";
  *(v270 + 1) = 27;
  v270[16] = 2;
  v7();
  v271 = (v366 + v3 + 133 * v2);
  v272 = v271 + v1[14];
  *v271 = 133;
  *v272 = "MailSearchSuggestionMailbox";
  *(v272 + 1) = 27;
  v272[16] = 2;
  v7();
  v273 = (v366 + v3 + 134 * v2);
  v274 = v273 + v1[14];
  *v273 = 134;
  *v274 = "MailSearchSuggestionFlag";
  *(v274 + 1) = 24;
  v274[16] = 2;
  v7();
  v275 = (v366 + v3 + 135 * v2);
  v276 = v275 + v1[14];
  *v275 = 135;
  *v276 = "MailSearchSuggestionSubject";
  *(v276 + 1) = 27;
  v276[16] = 2;
  v7();
  v277 = (v366 + v3 + 136 * v2);
  v278 = v277 + v1[14];
  *v277 = 136;
  *v278 = "MailSearchLocation";
  *(v278 + 1) = 18;
  v278[16] = 2;
  v7();
  v279 = (v366 + v3 + 137 * v2);
  v280 = v279 + v1[14];
  *v279 = 137;
  *v280 = "MailSearchDocument";
  *(v280 + 1) = 18;
  v280[16] = 2;
  v7();
  v281 = (v366 + v3 + 138 * v2);
  v282 = v281 + v1[14];
  *v281 = 138;
  *v282 = "MailSearchLink";
  *(v282 + 1) = 14;
  v282[16] = 2;
  v7();
  v283 = (v366 + v3 + 139 * v2);
  v284 = v283 + v1[14];
  *v283 = 139;
  *v284 = "FirstPartyApp";
  *(v284 + 1) = 13;
  v284[16] = 2;
  v7();
  v285 = (v366 + v3 + 140 * v2);
  v286 = v285 + v1[14];
  *v285 = 140;
  *v286 = "ThirdPartyApp";
  *(v286 + 1) = 13;
  v286[16] = 2;
  v7();
  v287 = (v366 + v3 + 141 * v2);
  v288 = v287 + v1[14];
  *v287 = 141;
  *v288 = "MailSearchSuggestionSenderContains";
  *(v288 + 1) = 34;
  v288[16] = 2;
  v7();
  v289 = (v366 + v3 + 142 * v2);
  v290 = v289 + v1[14];
  *v289 = 142;
  *v290 = "MailSearchSuggestionTopicContains";
  *(v290 + 1) = 33;
  v290[16] = 2;
  v7();
  v291 = (v366 + v3 + 143 * v2);
  v292 = v291 + v1[14];
  *v291 = 143;
  *v292 = "MailSearchSuggestionInstantAnswer";
  *(v292 + 1) = 33;
  v292[16] = 2;
  v7();
  v293 = (v366 + v3 + 144 * v2);
  v294 = v293 + v1[14];
  *v293 = 144;
  *v294 = "PhotosAlbums";
  *(v294 + 1) = 12;
  v294[16] = 2;
  v7();
  v295 = (v366 + v3 + 145 * v2);
  v296 = v295 + v1[14];
  *v295 = 145;
  *v296 = "PhotosCaption";
  *(v296 + 1) = 13;
  v296[16] = 2;
  v7();
  v297 = (v366 + v3 + 146 * v2);
  v298 = v297 + v1[14];
  *v297 = 146;
  *v298 = "PhotosCategories";
  *(v298 + 1) = 16;
  v298[16] = 2;
  v7();
  v299 = (v366 + v3 + 147 * v2);
  v300 = v299 + v1[14];
  *v299 = 147;
  *v300 = "PhotosDates";
  *(v300 + 1) = 11;
  v300[16] = 2;
  v7();
  v301 = (v366 + v3 + 148 * v2);
  v302 = v301 + v1[14];
  *v301 = 148;
  *v302 = "PhotosImportedByApp";
  *(v302 + 1) = 19;
  v302[16] = 2;
  v7();
  v303 = (v366 + v3 + 149 * v2);
  v304 = v303 + v1[14];
  *v303 = 149;
  *v304 = "PhotosKeywords";
  *(v304 + 1) = 14;
  v304[16] = 2;
  v7();
  v305 = (v366 + v3 + 150 * v2);
  v306 = v305 + v1[14];
  *v305 = 150;
  *v306 = "PhotosMediaType";
  *(v306 + 1) = 15;
  v306[16] = 2;
  v7();
  v307 = (v366 + v3 + 151 * v2);
  v308 = v307 + v1[14];
  *v307 = 151;
  *v308 = "PhotosMemories";
  *(v308 + 1) = 14;
  v308[16] = 2;
  v7();
  v309 = (v366 + v3 + 152 * v2);
  v310 = v309 + v1[14];
  *v309 = 152;
  *v310 = "PhotosMoments";
  *(v310 + 1) = 13;
  v310[16] = 2;
  v7();
  v311 = (v366 + v3 + 153 * v2);
  v312 = v311 + v1[14];
  *v311 = 153;
  *v312 = "PhotosOcr";
  *(v312 + 1) = 9;
  v312[16] = 2;
  v7();
  v313 = (v366 + v3 + 154 * v2);
  v314 = v313 + v1[14];
  *v313 = 154;
  *v314 = "PhotosPeople";
  *(v314 + 1) = 12;
  v314[16] = 2;
  v7();
  v315 = (v366 + v3 + 155 * v2);
  v316 = v315 + v1[14];
  *v315 = 155;
  *v316 = "PhotosPlaces";
  *(v316 + 1) = 12;
  v316[16] = 2;
  v7();
  v317 = (v366 + v3 + 156 * v2);
  v318 = v317 + v1[14];
  *v317 = 156;
  *v318 = "PhotosTitle";
  *(v318 + 1) = 11;
  v318[16] = 2;
  v7();
  v319 = (v366 + v3 + 157 * v2);
  v320 = v319 + v1[14];
  *v319 = 157;
  *v320 = "PhotosTopResults";
  *(v320 + 1) = 16;
  v320[16] = 2;
  v7();
  v321 = (v366 + v3 + 158 * v2);
  v322 = v321 + v1[14];
  *v321 = 158;
  *v322 = "PhotosSuggestionsGeneric";
  *(v322 + 1) = 24;
  v322[16] = 2;
  v7();
  v323 = (v366 + v3 + 159 * v2);
  v324 = v323 + v1[14];
  *v323 = 159;
  *v324 = "PhotosSuggestionsPlace";
  *(v324 + 1) = 22;
  v324[16] = 2;
  v7();
  v325 = (v366 + v3 + 160 * v2);
  v326 = v325 + v1[14];
  *v325 = 160;
  *v326 = "PhotosZkwDate";
  *(v326 + 1) = 13;
  v326[16] = 2;
  v7();
  v327 = (v366 + v3 + 161 * v2);
  v328 = v327 + v1[14];
  *v327 = 161;
  *v328 = "PhotosZkwMeaning";
  *(v328 + 1) = 16;
  v328[16] = 2;
  v7();
  v329 = (v366 + v3 + 162 * v2);
  v330 = v329 + v1[14];
  *v329 = 162;
  *v330 = "PhotosZkwPerson";
  *(v330 + 1) = 15;
  v330[16] = 2;
  v7();
  v331 = (v366 + v3 + 163 * v2);
  v332 = v331 + v1[14];
  *v331 = 163;
  *v332 = "PhotosZkwPlace";
  *(v332 + 1) = 14;
  v332[16] = 2;
  v7();
  v333 = (v366 + v3 + 164 * v2);
  v334 = v333 + v1[14];
  *v333 = 164;
  *v334 = "PhotosZkwScene";
  *(v334 + 1) = 14;
  v334[16] = 2;
  v7();
  v335 = (v366 + v3 + 165 * v2);
  v336 = v335 + v1[14];
  *v335 = 165;
  *v336 = "PhotosZkwSeason";
  *(v336 + 1) = 15;
  v336[16] = 2;
  v7();
  v337 = (v366 + v3 + 166 * v2);
  v338 = v337 + v1[14];
  *v337 = 166;
  *v338 = "PhotosZkwSocialGroup";
  *(v338 + 1) = 20;
  v338[16] = 2;
  v7();
  v339 = (v366 + v3 + 167 * v2);
  v340 = v339 + v1[14];
  *v339 = 167;
  *v340 = "PhotosZkwUnnamedPerson";
  *(v340 + 1) = 22;
  v340[16] = 2;
  v7();
  v341 = (v366 + v3 + 168 * v2);
  v342 = v341 + v1[14];
  *v341 = 168;
  *v342 = "MailSearchSuggestionInstantAnswerFlight";
  *(v342 + 1) = 39;
  v342[16] = 2;
  v7();
  v343 = (v366 + v3 + 169 * v2);
  v344 = v343 + v1[14];
  *v343 = 169;
  *v344 = "MailSearchSuggestionInstantAnswerLodging";
  *(v344 + 1) = 40;
  v344[16] = 2;
  v7();
  v345 = (v366 + v3 + 170 * v2);
  v346 = v345 + v1[14];
  *v345 = 170;
  *v346 = "PhotosTrip";
  *(v346 + 1) = 10;
  v346[16] = 2;
  v7();
  v347 = (v366 + v3 + 171 * v2);
  v348 = v347 + v1[14];
  *v347 = 171;
  *v348 = "PhotosAllResults";
  *(v348 + 1) = 16;
  v348[16] = 2;
  v7();
  v349 = (v366 + v3 + 172 * v2);
  v350 = v349 + v1[14];
  *v349 = 172;
  *v350 = "PhotosSuggestionsUserGeneratedText";
  *(v350 + 1) = 34;
  v350[16] = 2;
  v7();
  v351 = (v366 + v3 + 173 * v2);
  v352 = v351 + v1[14];
  *v351 = 173;
  *v352 = "PhotosSuggestionsScene";
  *(v352 + 1) = 22;
  v352[16] = 2;
  v7();
  v353 = (v366 + v3 + 174 * v2);
  v354 = v353 + v1[14];
  *v353 = 174;
  *v354 = "PhotosSuggestionsPublicEvent";
  *(v354 + 1) = 28;
  v354[16] = 2;
  v7();
  v355 = (v366 + v3 + 175 * v2);
  v356 = v355 + v1[14];
  *v355 = 175;
  *v356 = "PhotosSuggestionsActionCam";
  *(v356 + 1) = 26;
  v356[16] = 2;
  v7();
  v357 = (v366 + v3 + 176 * v2);
  v358 = v357 + v1[14];
  *v357 = 176;
  *v358 = "PhotosSuggestionsSpatial";
  *(v358 + 1) = 24;
  v358[16] = 2;
  v7();
  v359 = (v366 + v3 + 177 * v2);
  v360 = v359 + v1[14];
  *v359 = 177;
  *v360 = "PhotosSuggestionsFilename";
  *(v360 + 1) = 25;
  v360[16] = 2;
  v7();
  v361 = (v366 + v3 + 178 * v2);
  v362 = v361 + v1[14];
  *v361 = 178;
  *v362 = "PhotosSectionPrompt";
  *(v362 + 1) = 19;
  v362[16] = 2;
  v7();
  v363 = (v366 + v3 + 179 * v2);
  v364 = v363 + v1[14];
  *v363 = 179;
  *v364 = "PhotosSectionSuggestions";
  *(v364 + 1) = 24;
  v364[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FA8918()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE60);
  __swift_project_value_buffer(v0, qword_1EBABFE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UserReportTypeDefault";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UserReportTypeVisualLookup";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UserReportTypeHashtagImages";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UserReportTypeSafariSBA";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA8B80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE78);
  __swift_project_value_buffer(v0, qword_1EBABFE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UnknownClient";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Safari";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Spotlight";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Images";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "News";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VisualIntelligence";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FA8E60()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFE90);
  __swift_project_value_buffer(v0, qword_1EBABFE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "DeletionReasonUnknown";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "Age";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "Size";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "UnknownVersion";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MismatchedVersion";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "Filesystem";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "Corruption";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "JSON";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "JetsamPrevention";
  *(v23 + 1) = 16;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "TooManyFiles";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "DiagnosticsAndUsageDisabled";
  *(v27 + 1) = 27;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "Empty";
  *(v29 + 1) = 5;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "UploadSuccess";
  *(v31 + 1) = 13;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "NotFulfilled";
  *(v33 + 1) = 12;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "CarryOnly";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "UnknownFileType";
  *(v37 + 1) = 15;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8FA93A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CBF78);
  __swift_project_value_buffer(v0, qword_1ED9CBF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B9661280;
  v4 = v46 + v3 + v1[14];
  *(v46 + v3) = 1;
  *v4 = "avgRTT";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v46 + v3 + v2 + v1[14];
  *(v46 + v3 + v2) = 2;
  *v8 = "cellRXPackets";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v46 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "cellTXPackets";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v46 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "connectAttempts";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v46 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "connectSuccesses";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v46 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "minRTT";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v46 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "rxBytes";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v46 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "rxDuplicateBytes";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v46 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "rxOutOfOrderBytes";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v46 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "rxPackets";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v46 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "txBytes";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v7();
  v27 = (v46 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "txPackets";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v46 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "txRetransmitPackets";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v46 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "varRTT";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v7();
  v33 = (v46 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "wifiRXPackets";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v7();
  v35 = (v46 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "wifiTXPackets";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v46 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "wiredRXPackets";
  *(v38 + 1) = 14;
  v38[16] = 2;
  v7();
  v39 = (v46 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "wiredTXPackets";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v46 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "statsType";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v46 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "txRetransmitBytes";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v7();
  return sub_1B964C760();
}

double sub_1B8FA99DC()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
  OUTLINED_FUNCTION_475_0();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 100) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  qword_1ED9CBF98 = v0;
  return result;
}

void sub_1B8FA9A40()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  *(v0 + 16) = 0;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 24) = 0;
  *(v0 + 100) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 152) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  OUTLINED_FUNCTION_521();
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_18();
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_521();
  v4 = *(v2 + 24);
  OUTLINED_FUNCTION_18();
  *(v0 + 24) = v4;
  OUTLINED_FUNCTION_521();
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_18();
  *(v0 + 32) = v5;
  OUTLINED_FUNCTION_521();
  v6 = *(v2 + 40);
  OUTLINED_FUNCTION_18();
  *(v0 + 40) = v6;
  OUTLINED_FUNCTION_521();
  v7 = *(v2 + 44);
  OUTLINED_FUNCTION_18();
  *(v0 + 44) = v7;
  OUTLINED_FUNCTION_521();
  v8 = *(v2 + 48);
  OUTLINED_FUNCTION_18();
  *(v0 + 48) = v8;
  OUTLINED_FUNCTION_521();
  v9 = *(v2 + 56);
  OUTLINED_FUNCTION_18();
  *(v0 + 56) = v9;
  OUTLINED_FUNCTION_521();
  v10 = *(v2 + 64);
  OUTLINED_FUNCTION_18();
  *(v0 + 64) = v10;
  OUTLINED_FUNCTION_521();
  v11 = *(v2 + 72);
  OUTLINED_FUNCTION_18();
  *(v0 + 72) = v11;
  OUTLINED_FUNCTION_521();
  v12 = *(v2 + 80);
  OUTLINED_FUNCTION_18();
  *(v0 + 80) = v12;
  OUTLINED_FUNCTION_521();
  v13 = *(v2 + 88);
  OUTLINED_FUNCTION_18();
  *(v0 + 88) = v13;
  OUTLINED_FUNCTION_521();
  v14 = *(v2 + 96);
  OUTLINED_FUNCTION_18();
  *(v0 + 96) = v14;
  OUTLINED_FUNCTION_521();
  v15 = *(v2 + 104);
  OUTLINED_FUNCTION_18();
  *(v0 + 104) = v15;
  OUTLINED_FUNCTION_521();
  LODWORD(v15) = *(v2 + 112);
  OUTLINED_FUNCTION_18();
  *(v0 + 112) = v15;
  OUTLINED_FUNCTION_521();
  v16 = *(v2 + 120);
  OUTLINED_FUNCTION_18();
  *(v0 + 120) = v16;
  OUTLINED_FUNCTION_521();
  v17 = *(v2 + 128);
  OUTLINED_FUNCTION_18();
  *(v0 + 128) = v17;
  OUTLINED_FUNCTION_521();
  v18 = *(v2 + 136);
  OUTLINED_FUNCTION_18();
  *(v0 + 136) = v18;
  OUTLINED_FUNCTION_521();
  v19 = *(v2 + 144);
  OUTLINED_FUNCTION_18();
  *(v0 + 144) = v19;
  OUTLINED_FUNCTION_521();
  v21 = *(v2 + 152);
  v20 = *(v2 + 160);
  OUTLINED_FUNCTION_18();
  *(v0 + 152) = v21;
  *(v0 + 160) = v20;
  OUTLINED_FUNCTION_521();
  v22 = *(v2 + 168);

  OUTLINED_FUNCTION_18();
  *(v0 + 168) = v22;
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8FA9DE8()
{
  v1 = *(v0 + 160);

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

void Apple_Parsec_Feedback_V2_TCPInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_822();
  v2 = v0;
  OUTLINED_FUNCTION_12_8();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_704_0(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_475_0();
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    sub_1B8FA9A40();
    *(v2 + v1) = v6;
  }

  OUTLINED_FUNCTION_7_6();
  sub_1B8FA9E9C();
  OUTLINED_FUNCTION_823();
}

void sub_1B8FA9E9C()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B900BFB0();
        break;
      case 2:
        sub_1B9006EF0();
        break;
      case 3:
        sub_1B8FBF3C4();
        break;
      case 4:
        sub_1B900C1AC();
        break;
      case 5:
        sub_1B900C204();
        break;
      case 6:
        sub_1B900C25C();
        break;
      case 7:
        sub_1B8FFD568();
        break;
      case 8:
        sub_1B8FAA1B4();
        break;
      case 9:
        sub_1B8FD7984();
        break;
      case 10:
        sub_1B8DE25F4();
        break;
      case 11:
        sub_1B8FAA238();
        break;
      case 12:
        sub_1B8FAA2BC();
        break;
      case 13:
        sub_1B8FAA340();
        break;
      case 14:
        sub_1B8FBF7B4();
        break;
      case 15:
        sub_1B8FAA3C4();
        break;
      case 16:
        sub_1B8FAA448();
        break;
      case 17:
        sub_1B8FAA4CC();
        break;
      case 18:
        sub_1B8FAA550();
        break;
      case 19:
        sub_1B8E71960();
        break;
      case 20:
        sub_1B8FAA5D4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FAA1B4()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA238()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA2BC()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA340()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA3C4()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA448()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA4CC()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA550()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA5D4()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FAA698(uint64_t a1)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_1B964C710(), !v1))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_1B964C720(), !v1))
    {
      swift_beginAccess();
      if (!*(a1 + 32) || (result = sub_1B964C720(), !v1))
      {
        swift_beginAccess();
        if (!*(a1 + 40) || (result = sub_1B964C710(), !v1))
        {
          swift_beginAccess();
          if (!*(a1 + 44) || (result = sub_1B964C710(), !v1))
          {
            swift_beginAccess();
            if (!*(a1 + 48) || (result = sub_1B964C710(), !v1))
            {
              swift_beginAccess();
              if (!*(a1 + 56) || (result = sub_1B964C720(), !v1))
              {
                swift_beginAccess();
                if (!*(a1 + 64) || (result = sub_1B964C720(), !v1))
                {
                  swift_beginAccess();
                  if (!*(a1 + 72) || (result = sub_1B964C720(), !v1))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 80) || (result = sub_1B964C720(), !v1))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 88) || (result = sub_1B964C720(), !v1))
                      {
                        swift_beginAccess();
                        if (!*(a1 + 96) || (result = sub_1B964C720(), !v1))
                        {
                          swift_beginAccess();
                          if (!*(a1 + 104) || (result = sub_1B964C720(), !v1))
                          {
                            swift_beginAccess();
                            if (!*(a1 + 112) || (result = sub_1B964C710(), !v1))
                            {
                              swift_beginAccess();
                              if (!*(a1 + 120) || (result = sub_1B964C720(), !v1))
                              {
                                swift_beginAccess();
                                if (!*(a1 + 128) || (result = sub_1B964C720(), !v1))
                                {
                                  swift_beginAccess();
                                  if (!*(a1 + 136) || (result = sub_1B964C720(), !v1))
                                  {
                                    swift_beginAccess();
                                    if (!*(a1 + 144) || (result = sub_1B964C720(), !v1))
                                    {
                                      swift_beginAccess();
                                      v4 = *(a1 + 160);
                                      v5 = HIBYTE(v4) & 0xF;
                                      if ((v4 & 0x2000000000000000) == 0)
                                      {
                                        v5 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
                                      }

                                      if (!v5 || (v6 = *(a1 + 160), , sub_1B964C700(), result = , !v1))
                                      {
                                        swift_beginAccess();
                                        result = *(a1 + 168);
                                        if (result)
                                        {
                                          return sub_1B964C720();
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B8FAAB9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (v5 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  if (v6 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 40);
  swift_beginAccess();
  if (v7 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 44);
  swift_beginAccess();
  if (v8 != *(a2 + 44))
  {
    return 0;
  }

  swift_beginAccess();
  v9 = *(a1 + 48);
  swift_beginAccess();
  if (v9 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v10 = *(a1 + 56);
  swift_beginAccess();
  if (v10 != *(a2 + 56))
  {
    return 0;
  }

  swift_beginAccess();
  v11 = *(a1 + 64);
  swift_beginAccess();
  if (v11 != *(a2 + 64))
  {
    return 0;
  }

  swift_beginAccess();
  v12 = *(a1 + 72);
  swift_beginAccess();
  if (v12 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v13 = *(a1 + 80);
  swift_beginAccess();
  if (v13 != *(a2 + 80))
  {
    return 0;
  }

  swift_beginAccess();
  v14 = *(a1 + 88);
  swift_beginAccess();
  if (v14 != *(a2 + 88))
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 96);
  swift_beginAccess();
  if (v15 != *(a2 + 96))
  {
    return 0;
  }

  swift_beginAccess();
  v16 = *(a1 + 104);
  swift_beginAccess();
  if (v16 != *(a2 + 104))
  {
    return 0;
  }

  swift_beginAccess();
  v17 = *(a1 + 112);
  swift_beginAccess();
  if (v17 != *(a2 + 112))
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 120);
  swift_beginAccess();
  if (v18 != *(a2 + 120))
  {
    return 0;
  }

  swift_beginAccess();
  v19 = *(a1 + 128);
  swift_beginAccess();
  if (v19 != *(a2 + 128))
  {
    return 0;
  }

  swift_beginAccess();
  v20 = *(a1 + 136);
  swift_beginAccess();
  if (v20 != *(a2 + 136))
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 144);
  swift_beginAccess();
  if (v21 != *(a2 + 144))
  {
    return 0;
  }

  swift_beginAccess();
  v22 = *(a1 + 152);
  v23 = *(a1 + 160);
  swift_beginAccess();
  v24 = v22 == *(a2 + 152) && v23 == *(a2 + 160);
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v25 = *(a1 + 168);
  swift_beginAccess();
  return v25 == *(a2 + 168);
}

uint64_t sub_1B8FAB0F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E78, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FAB174(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FAB1E4()
{
  sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FAB270()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1ED9CA130);
  __swift_project_value_buffer(v0, qword_1ED9CA130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1B966F910;
  v4 = v64 + v3 + v1[14];
  *(v64 + v3) = 3;
  *v4 = "interfaceIdentifier";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v64 + v3 + v2 + v1[14];
  *(v64 + v3 + v2) = 4;
  *v8 = "peerAddress";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v64 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 5;
  *v10 = "connectionRace";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v64 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "connectionReused";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v64 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "startTimeCounts";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v64 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "stopTimeCounts";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v64 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "connectionUUID";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v64 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "networkProtocolName";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v7();
  v21 = (v64 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 14;
  *v22 = "QUICWhitelistedDomain";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v64 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 15;
  *v24 = "redirectCount";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v64 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 16;
  *v26 = "redirectCountW3C";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  v27 = (v64 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 21;
  *v28 = "requestHeaderSize";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v7();
  v29 = (v64 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 22;
  *v30 = "responseBodyBytesDecoded";
  *(v30 + 1) = 24;
  v30[16] = 2;
  v7();
  v31 = (v64 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 23;
  *v32 = "responseBodyBytesReceived";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  v33 = (v64 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 26;
  *v34 = "responseHeaderSize";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v7();
  v35 = (v64 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 27;
  *v36 = "TFOSuccess";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v7();
  v37 = (v64 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 28;
  *v38 = "timingDataInit";
  *(v38 + 1) = 14;
  v38[16] = 2;
  v7();
  v39 = (v64 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 31;
  *v40 = "connectStart";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v64 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 32;
  *v42 = "connectEnd";
  *(v42 + 1) = 10;
  v42[16] = 2;
  v7();
  v43 = (v64 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 33;
  *v44 = "domainLookupStart";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v7();
  v45 = (v64 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 34;
  *v46 = "domainLookupEnd";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v64 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 35;
  *v48 = "fetchStart";
  *(v48 + 1) = 10;
  v48[16] = 2;
  v7();
  v49 = (v64 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 36;
  *v50 = "redirectStart";
  *(v50 + 1) = 13;
  v50[16] = 2;
  v7();
  v51 = (v64 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 37;
  *v52 = "redirectEnd";
  *(v52 + 1) = 11;
  v52[16] = 2;
  v7();
  v53 = (v64 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 38;
  *v54 = "requestStart";
  *(v54 + 1) = 12;
  v54[16] = 2;
  v7();
  v55 = (v64 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 39;
  *v56 = "requestEnd";
  *(v56 + 1) = 10;
  v56[16] = 2;
  v7();
  v57 = (v64 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 40;
  *v58 = "responseStart";
  *(v58 + 1) = 13;
  v58[16] = 2;
  v7();
  v59 = (v64 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 41;
  *v60 = "responseEnd";
  *(v60 + 1) = 11;
  v60[16] = 2;
  v7();
  v61 = (v64 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 42;
  *v62 = "secureConnectStart";
  *(v62 + 1) = 18;
  v62[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FABB34()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = xmmword_1B9652FE0;
  *(v0 + 48) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__startTimeCounts;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__stopTimeCounts, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart) = 0;
  return v0;
}

uint64_t sub_1B8FABCD4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  *(v1 + 16) = 0;
  *(v1 + 32) = xmmword_1B9652FE0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
  v55 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
  v56 = (v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v57 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain) = 0;
  v58 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount) = 0;
  v59 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C) = 0;
  v60 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize) = 0;
  v61 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded) = 0;
  v62 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived) = 0;
  v63 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize) = 0;
  v64 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess) = 0;
  v65 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit) = 0;
  v66 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart) = 0;
  v67 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd) = 0;
  v68 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart) = 0;
  v69 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd) = 0;
  v70 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart) = 0;
  v71 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart) = 0;
  v72 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd) = 0;
  v73 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart) = 0;
  v74 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd) = 0;
  v75 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart) = 0;
  v76 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd) = 0;
  v77 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart) = 0;
  OUTLINED_FUNCTION_521();
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v16;
  *(v1 + 24) = v17;
  OUTLINED_FUNCTION_521();
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  OUTLINED_FUNCTION_18();
  v20 = *(v1 + 32);
  v21 = *(v1 + 40);
  *(v1 + 32) = v18;
  *(v1 + 40) = v19;

  v22 = OUTLINED_FUNCTION_467();
  sub_1B8D91FCC(v22, v23);
  sub_1B8D538A0(v20, v21);
  OUTLINED_FUNCTION_521();
  LOBYTE(v20) = *(a1 + 48);
  OUTLINED_FUNCTION_18();
  *(v1 + 48) = v20;
  OUTLINED_FUNCTION_521();
  LOBYTE(v20) = *(a1 + 49);
  OUTLINED_FUNCTION_18();
  *(v1 + 49) = v20;
  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_593_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_593_0();
  sub_1B8F188B0();
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
  OUTLINED_FUNCTION_505_0();
  v26 = *v24;
  v25 = v24[1];
  OUTLINED_FUNCTION_18();
  v27 = v55[1];
  *v55 = v26;
  v55[1] = v25;

  v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
  OUTLINED_FUNCTION_505_0();
  v30 = *v28;
  v29 = v28[1];
  OUTLINED_FUNCTION_18();
  v31 = v56[1];
  *v56 = v30;
  v56[1] = v29;

  v32 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
  OUTLINED_FUNCTION_521();
  LOBYTE(v32) = *(a1 + v32);
  OUTLINED_FUNCTION_18();
  *(v1 + v57) = v32;
  v33 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
  OUTLINED_FUNCTION_521();
  LODWORD(v33) = *(a1 + v33);
  OUTLINED_FUNCTION_18();
  *(v1 + v58) = v33;
  v34 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
  OUTLINED_FUNCTION_521();
  LODWORD(v34) = *(a1 + v34);
  OUTLINED_FUNCTION_18();
  *(v1 + v59) = v34;
  v35 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
  OUTLINED_FUNCTION_521();
  LODWORD(v35) = *(a1 + v35);
  OUTLINED_FUNCTION_18();
  *(v1 + v60) = v35;
  v36 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
  OUTLINED_FUNCTION_521();
  LODWORD(v36) = *(a1 + v36);
  OUTLINED_FUNCTION_18();
  *(v1 + v61) = v36;
  v37 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
  OUTLINED_FUNCTION_521();
  LODWORD(v37) = *(a1 + v37);
  OUTLINED_FUNCTION_18();
  *(v1 + v62) = v37;
  v38 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
  OUTLINED_FUNCTION_521();
  LODWORD(v38) = *(a1 + v38);
  OUTLINED_FUNCTION_18();
  *(v1 + v63) = v38;
  v39 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
  OUTLINED_FUNCTION_521();
  LOBYTE(v39) = *(a1 + v39);
  OUTLINED_FUNCTION_18();
  *(v1 + v64) = v39;
  v40 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
  OUTLINED_FUNCTION_521();
  v41 = *(a1 + v40);
  OUTLINED_FUNCTION_18();
  *(v1 + v65) = v41;
  v42 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
  OUTLINED_FUNCTION_521();
  LODWORD(v42) = *(a1 + v42);
  OUTLINED_FUNCTION_18();
  *(v1 + v66) = v42;
  v43 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
  OUTLINED_FUNCTION_521();
  LODWORD(v43) = *(a1 + v43);
  OUTLINED_FUNCTION_18();
  *(v1 + v67) = v43;
  v44 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
  OUTLINED_FUNCTION_521();
  LODWORD(v44) = *(a1 + v44);
  OUTLINED_FUNCTION_18();
  *(v1 + v68) = v44;
  v45 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
  OUTLINED_FUNCTION_521();
  LODWORD(v45) = *(a1 + v45);
  OUTLINED_FUNCTION_18();
  *(v1 + v69) = v45;
  v46 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
  OUTLINED_FUNCTION_521();
  LODWORD(v46) = *(a1 + v46);
  OUTLINED_FUNCTION_18();
  *(v1 + v70) = v46;
  v47 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
  OUTLINED_FUNCTION_521();
  LODWORD(v47) = *(a1 + v47);
  OUTLINED_FUNCTION_18();
  *(v1 + v71) = v47;
  v48 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
  OUTLINED_FUNCTION_521();
  LODWORD(v48) = *(a1 + v48);
  OUTLINED_FUNCTION_18();
  *(v1 + v72) = v48;
  v49 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
  OUTLINED_FUNCTION_521();
  LODWORD(v49) = *(a1 + v49);
  OUTLINED_FUNCTION_18();
  *(v1 + v73) = v49;
  v50 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
  OUTLINED_FUNCTION_521();
  LODWORD(v50) = *(a1 + v50);
  OUTLINED_FUNCTION_18();
  *(v1 + v74) = v50;
  v51 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
  OUTLINED_FUNCTION_521();
  LODWORD(v51) = *(a1 + v51);
  OUTLINED_FUNCTION_18();
  *(v1 + v75) = v51;
  v52 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
  OUTLINED_FUNCTION_521();
  LODWORD(v52) = *(a1 + v52);
  OUTLINED_FUNCTION_18();
  *(v1 + v76) = v52;
  v53 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
  OUTLINED_FUNCTION_521();
  LODWORD(v53) = *(a1 + v53);

  OUTLINED_FUNCTION_18();
  *(v1 + v77) = v53;
  return v1;
}

uint64_t sub_1B8FAC528()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B8FAC578()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B8FAC5C8()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void *sub_1B8FAC6BC()
{
  v1 = v0[3];

  sub_1B8D538A0(v0[4], v0[5]);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__startTimeCounts, &qword_1EBAB8C78, &qword_1B966F950);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__stopTimeCounts, &qword_1EBAB8C78, &qword_1B966F950);
  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName + 8);

  return v0;
}

void sub_1B8FAC7DC()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        sub_1B8FFD418();
        break;
      case 4:
        sub_1B8FFD46C();
        break;
      case 5:
        sub_1B8E4317C();
        break;
      case 6:
        sub_1B8FDAB24();
        break;
      case 7:
        sub_1B8FACAB8();
        break;
      case 8:
        sub_1B8FACB94();
        break;
      case 9:
      case 13:
        sub_1B9003EAC();
        break;
      case 14:
      case 27:
        sub_1B900709C();
        break;
      case 15:
      case 16:
      case 21:
      case 22:
      case 23:
      case 26:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
        sub_1B900C4C4();
        break;
      case 28:
        sub_1B8FC8A90();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FACAB8()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FACB94()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FACCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v7 = a4(0);
  OUTLINED_FUNCTION_847(v7);
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8FACD24(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - v8;
  v67 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v10 = *(*(v67 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v67);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    sub_1B964C700();
    if (v2)
    {
    }

    v65 = v13;
    v18 = 0;
  }

  else
  {
    v65 = v13;
    v18 = v2;
  }

  v19 = v68;
  swift_beginAccess();
  if (!sub_1B8D99EA8(*(v19 + 32), *(v19 + 40)))
  {
    v20 = *(v19 + 32);
    v21 = *(v19 + 40);
    sub_1B8D91FCC(v20, v21);
    sub_1B964C6A0();
    if (v18)
    {
      return sub_1B8D538A0(v20, v21);
    }

    sub_1B8D538A0(v20, v21);
  }

  v22 = v68;
  swift_beginAccess();
  if (*(v22 + 48) != 1 || (result = sub_1B964C670(), !v18))
  {
    v23 = v68;
    swift_beginAccess();
    if (*(v23 + 49) != 1 || (result = sub_1B964C670(), !v18))
    {
      v24 = v68;
      swift_beginAccess();
      sub_1B8F1B8B8();
      v25 = v67;
      if (__swift_getEnumTagSinglePayload(v9, 1, v67) == 1)
      {
        sub_1B8D9207C(v9, &qword_1EBAB8C78, &qword_1B966F950);
        v26 = v25;
      }

      else
      {
        sub_1B8FAC528();
        sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);
        sub_1B964C740();
        if (v18)
        {
          return sub_1B8FAC5C8();
        }

        v26 = v25;
        sub_1B8FAC5C8();
      }

      swift_beginAccess();
      v27 = v66;
      sub_1B8F1B8B8();
      if (__swift_getEnumTagSinglePayload(v27, 1, v26) == 1)
      {
        sub_1B8D9207C(v27, &qword_1EBAB8C78, &qword_1B966F950);
LABEL_26:
        v28 = (v24 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
        swift_beginAccess();
        v29 = *v28;
        v30 = v28[1];
        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {

          sub_1B964C700();
          if (v18)
          {
          }
        }

        v32 = (v24 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
        swift_beginAccess();
        v33 = *v32;
        v34 = v32[1];
        v35 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v35 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {

          sub_1B964C700();
          if (v18)
          {
          }
        }

        v36 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
        swift_beginAccess();
        if (*(v24 + v36) != 1 || (result = sub_1B964C670(), !v18))
        {
          v37 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
          swift_beginAccess();
          if (!*(v24 + v37) || (result = sub_1B964C710(), !v18))
          {
            v38 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
            swift_beginAccess();
            if (!*(v24 + v38) || (result = sub_1B964C710(), !v18))
            {
              v39 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
              swift_beginAccess();
              if (!*(v24 + v39) || (result = sub_1B964C710(), !v18))
              {
                v40 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
                swift_beginAccess();
                if (!*(v24 + v40) || (result = sub_1B964C710(), !v18))
                {
                  v41 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
                  swift_beginAccess();
                  if (!*(v24 + v41) || (result = sub_1B964C710(), !v18))
                  {
                    v42 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
                    swift_beginAccess();
                    if (!*(v24 + v42) || (result = sub_1B964C710(), !v18))
                    {
                      v43 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
                      swift_beginAccess();
                      if (*(v24 + v43) != 1 || (result = sub_1B964C670(), !v18))
                      {
                        v44 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
                        swift_beginAccess();
                        if (*(v24 + v44) == 0.0 || (result = sub_1B964C6F0(), !v18))
                        {
                          v45 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
                          swift_beginAccess();
                          if (!*(v24 + v45) || (result = sub_1B964C710(), !v18))
                          {
                            v46 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
                            swift_beginAccess();
                            if (!*(v24 + v46) || (result = sub_1B964C710(), !v18))
                            {
                              v47 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
                              swift_beginAccess();
                              if (!*(v24 + v47) || (result = sub_1B964C710(), !v18))
                              {
                                v48 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
                                swift_beginAccess();
                                if (!*(v24 + v48) || (result = sub_1B964C710(), !v18))
                                {
                                  v49 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
                                  swift_beginAccess();
                                  if (!*(v24 + v49) || (result = sub_1B964C710(), !v18))
                                  {
                                    v50 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
                                    v51 = v68;
                                    swift_beginAccess();
                                    if (!*(v51 + v50) || (result = sub_1B964C710(), !v18))
                                    {
                                      v52 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
                                      v53 = v68;
                                      swift_beginAccess();
                                      if (!*(v53 + v52) || (result = sub_1B964C710(), !v18))
                                      {
                                        v54 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
                                        v55 = v68;
                                        swift_beginAccess();
                                        if (!*(v55 + v54) || (result = sub_1B964C710(), !v18))
                                        {
                                          v56 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
                                          v57 = v68;
                                          swift_beginAccess();
                                          if (!*(v57 + v56) || (result = sub_1B964C710(), !v18))
                                          {
                                            v58 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
                                            v59 = v68;
                                            swift_beginAccess();
                                            if (!*(v59 + v58) || (result = sub_1B964C710(), !v18))
                                            {
                                              v60 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
                                              v61 = v68;
                                              swift_beginAccess();
                                              if (!*(v61 + v60) || (result = sub_1B964C710(), !v18))
                                              {
                                                v62 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
                                                v63 = v68;
                                                swift_beginAccess();
                                                result = *(v63 + v62);
                                                if (result)
                                                {
                                                  return sub_1B964C710();
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        return result;
      }

      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1ED9CBF68, type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo);
      sub_1B964C740();
      if (!v18)
      {
        sub_1B8FAC5C8();
        goto LABEL_26;
      }

      return sub_1B8FAC5C8();
    }
  }

  return result;
}

BOOL sub_1B8FAD8E8(uint64_t a1, uint64_t a2)
{
  v121 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  v4 = *(*(v121 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v121);
  v7 = &v112[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v117 = &v112[-v8];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20C8, &qword_1B967F570);
  v9 = *(*(v120 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v120);
  v12 = &v112[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v112[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8C78, &qword_1B966F950);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v112[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v118 = &v112[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v112[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v112[-v24];
  swift_beginAccess();
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  swift_beginAccess();
  v28 = v26 == *(a2 + 16) && v27 == *(a2 + 24);
  if (v28 || (v29 = sub_1B964C9F0(), result = 0, (v29 & 1) != 0))
  {
    v115 = v12;
    v116 = v18;
    v114 = v7;
    swift_beginAccess();
    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    swift_beginAccess();
    v34 = *(a2 + 32);
    v33 = *(a2 + 40);

    sub_1B8D91FCC(v31, v32);
    sub_1B8D91FCC(v34, v33);
    v35 = MEMORY[0x1BFADC060](v31, v32, v34, v33);
    sub_1B8D538A0(v34, v33);
    sub_1B8D538A0(v31, v32);
    if ((v35 & 1) == 0)
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v36 = *(a1 + 48);
    swift_beginAccess();
    if (v36 != *(a2 + 48))
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    v37 = *(a1 + 49);
    swift_beginAccess();
    if (v37 != *(a2 + 49))
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    sub_1B8F1B8B8();
    swift_beginAccess();
    v38 = v119;
    v39 = *(v120 + 48);
    sub_1B8F1B8B8();
    v40 = v38;
    sub_1B8F1B8B8();
    v41 = v121;
    if (__swift_getEnumTagSinglePayload(v38, 1, v121) == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBAB8C78, &qword_1B966F950);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38 + v39, 1, v41);
      v43 = v116;
      if (EnumTagSinglePayload != 1)
      {
LABEL_21:
        v51 = &qword_1EBAC20C8;
        v52 = &qword_1B967F570;
        v53 = v40;
LABEL_22:
        sub_1B8D9207C(v53, v51, v52);
        goto LABEL_23;
      }

      sub_1B8D9207C(v40, &qword_1EBAB8C78, &qword_1B966F950);
    }

    else
    {
      sub_1B8F1B8B8();
      v44 = __swift_getEnumTagSinglePayload(v38 + v39, 1, v41);
      v43 = v116;
      if (v44 == 1)
      {
LABEL_20:
        sub_1B8D9207C(v25, &qword_1EBAB8C78, &qword_1B966F950);
        sub_1B8FAC5C8();
        goto LABEL_21;
      }

      v45 = v117;
      sub_1B8FAC528();
      v46 = *(v41 + 20);
      v47 = *&v23[v46];
      v48 = *&v45[v46];
      if (v47 != v48 && !sub_1B8FAAB9C(v47, v48))
      {
        sub_1B8FAC5C8();
        sub_1B8D9207C(v25, &qword_1EBAB8C78, &qword_1B966F950);
        sub_1B8FAC5C8();
        v53 = v40;
        goto LABEL_61;
      }

      sub_1B964C2B0();
      sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
      v113 = sub_1B964C850();
      sub_1B8FAC5C8();
      sub_1B8D9207C(v25, &qword_1EBAB8C78, &qword_1B966F950);
      sub_1B8FAC5C8();
      sub_1B8D9207C(v40, &qword_1EBAB8C78, &qword_1B966F950);
      if ((v113 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    swift_beginAccess();
    v25 = v118;
    sub_1B8F1B8B8();
    swift_beginAccess();
    v49 = *(v120 + 48);
    v40 = v115;
    sub_1B8F1B8B8();
    sub_1B8F1B8B8();
    v50 = v121;
    if (__swift_getEnumTagSinglePayload(v40, 1, v121) == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBAB8C78, &qword_1B966F950);
      if (__swift_getEnumTagSinglePayload(v40 + v49, 1, v50) == 1)
      {
        sub_1B8D9207C(v40, &qword_1EBAB8C78, &qword_1B966F950);
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v40 + v49, 1, v50) == 1)
    {
      goto LABEL_20;
    }

    v54 = v114;
    sub_1B8FAC528();
    v55 = *(v50 + 20);
    v56 = *&v43[v55];
    v57 = *&v54[v55];
    if (v56 == v57 || sub_1B8FAAB9C(v56, v57))
    {
      sub_1B964C2B0();
      sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
      v58 = sub_1B964C850();
      sub_1B8FAC5C8();
      sub_1B8D9207C(v25, &qword_1EBAB8C78, &qword_1B966F950);
      sub_1B8FAC5C8();
      sub_1B8D9207C(v115, &qword_1EBAB8C78, &qword_1B966F950);
      if (v58)
      {
LABEL_28:
        v59 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
        swift_beginAccess();
        v60 = *v59;
        v61 = v59[1];
        v62 = (a2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectionUuid);
        swift_beginAccess();
        v63 = v60 == *v62 && v61 == v62[1];
        if (v63 || (sub_1B964C9F0() & 1) != 0)
        {
          v64 = (a1 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
          swift_beginAccess();
          v65 = *v64;
          v66 = v64[1];
          v67 = (a2 + OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__networkProtocolName);
          swift_beginAccess();
          v68 = v65 == *v67 && v66 == v67[1];
          if (v68 || (sub_1B964C9F0() & 1) != 0)
          {
            v69 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
            swift_beginAccess();
            LODWORD(v69) = *(a1 + v69);
            v70 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__quicwhitelistedDomain;
            swift_beginAccess();
            if (v69 == *(a2 + v70))
            {
              v71 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
              swift_beginAccess();
              LODWORD(v71) = *(a1 + v71);
              v72 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCount;
              swift_beginAccess();
              if (v71 == *(a2 + v72))
              {
                v73 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
                swift_beginAccess();
                LODWORD(v73) = *(a1 + v73);
                v74 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectCountW3C;
                swift_beginAccess();
                if (v73 == *(a2 + v74))
                {
                  v75 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
                  swift_beginAccess();
                  LODWORD(v75) = *(a1 + v75);
                  v76 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestHeaderSize;
                  swift_beginAccess();
                  if (v75 == *(a2 + v76))
                  {
                    v77 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
                    swift_beginAccess();
                    LODWORD(v77) = *(a1 + v77);
                    v78 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesDecoded;
                    swift_beginAccess();
                    if (v77 == *(a2 + v78))
                    {
                      v79 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
                      swift_beginAccess();
                      LODWORD(v79) = *(a1 + v79);
                      v80 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseBodyBytesReceived;
                      swift_beginAccess();
                      if (v79 == *(a2 + v80))
                      {
                        v81 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
                        swift_beginAccess();
                        LODWORD(v81) = *(a1 + v81);
                        v82 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseHeaderSize;
                        swift_beginAccess();
                        if (v81 == *(a2 + v82))
                        {
                          v83 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
                          swift_beginAccess();
                          LODWORD(v83) = *(a1 + v83);
                          v84 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__tfosuccess;
                          swift_beginAccess();
                          if (v83 == *(a2 + v84))
                          {
                            v85 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
                            swift_beginAccess();
                            v86 = *(a1 + v85);
                            v87 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timingDataInit;
                            swift_beginAccess();
                            if (v86 == *(a2 + v87))
                            {
                              v88 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
                              swift_beginAccess();
                              LODWORD(v88) = *(a1 + v88);
                              v89 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectStart;
                              swift_beginAccess();
                              if (v88 == *(a2 + v89))
                              {
                                v90 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
                                swift_beginAccess();
                                LODWORD(v90) = *(a1 + v90);
                                v91 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__connectEnd;
                                swift_beginAccess();
                                if (v90 == *(a2 + v91))
                                {
                                  v92 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
                                  swift_beginAccess();
                                  LODWORD(v92) = *(a1 + v92);
                                  v93 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupStart;
                                  swift_beginAccess();
                                  if (v92 == *(a2 + v93))
                                  {
                                    v94 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
                                    swift_beginAccess();
                                    LODWORD(v94) = *(a1 + v94);
                                    v95 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__domainLookupEnd;
                                    swift_beginAccess();
                                    if (v94 == *(a2 + v95))
                                    {
                                      v96 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
                                      swift_beginAccess();
                                      LODWORD(v96) = *(a1 + v96);
                                      v97 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fetchStart;
                                      swift_beginAccess();
                                      if (v96 == *(a2 + v97))
                                      {
                                        v98 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
                                        swift_beginAccess();
                                        LODWORD(v98) = *(a1 + v98);
                                        v99 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectStart;
                                        swift_beginAccess();
                                        if (v98 == *(a2 + v99))
                                        {
                                          v100 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
                                          swift_beginAccess();
                                          LODWORD(v100) = *(a1 + v100);
                                          v101 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__redirectEnd;
                                          swift_beginAccess();
                                          if (v100 == *(a2 + v101))
                                          {
                                            v102 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
                                            swift_beginAccess();
                                            LODWORD(v102) = *(a1 + v102);
                                            v103 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestStart;
                                            swift_beginAccess();
                                            if (v102 == *(a2 + v103))
                                            {
                                              v104 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
                                              swift_beginAccess();
                                              LODWORD(v104) = *(a1 + v104);
                                              v105 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__requestEnd;
                                              swift_beginAccess();
                                              if (v104 == *(a2 + v105))
                                              {
                                                v106 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
                                                swift_beginAccess();
                                                LODWORD(v106) = *(a1 + v106);
                                                v107 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseStart;
                                                swift_beginAccess();
                                                if (v106 == *(a2 + v107))
                                                {
                                                  v108 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
                                                  swift_beginAccess();
                                                  LODWORD(v108) = *(a1 + v108);
                                                  v109 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__responseEnd;
                                                  swift_beginAccess();
                                                  if (v108 == *(a2 + v109))
                                                  {
                                                    v110 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
                                                    swift_beginAccess();
                                                    LODWORD(v110) = *(a1 + v110);

                                                    v111 = OBJC_IVAR____TtCV10PegasusAPI42Apple_Parsec_Feedback_V2_NetworkTimingDataP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__secureConnectStart;
                                                    swift_beginAccess();
                                                    LODWORD(v111) = *(a2 + v111);

                                                    return v110 == v111;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_23:

      return 0;
    }

    sub_1B8FAC5C8();
    sub_1B8D9207C(v25, &qword_1EBAB8C78, &qword_1B966F950);
    sub_1B8FAC5C8();
    v53 = v115;
LABEL_61:
    v51 = &qword_1EBAB8C78;
    v52 = &qword_1B966F950;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B8FAE8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E70, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FAE95C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAB4570, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FAE9CC()
{
  sub_1B8CD2450(&qword_1EBAB4570, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FAEA58()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFEA8);
  __swift_project_value_buffer(v0, qword_1EBABFEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "results";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "identifier";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "rankingScore";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "fallbackResultSection";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "bundleIdentifier";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "knownBundleIdentifier";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "isInitiallyHidden";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "totalAvailableResults";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "titleButtonItem";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9002548();
        break;
      case 2:
        OUTLINED_FUNCTION_311_0();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FAEF40(v3, v4);
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B8FAF00C();
        break;
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 10:
        OUTLINED_FUNCTION_9();
        sub_1B8FAF0F0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FAEF40(uint64_t a1, uint64_t a2)
{
  result = sub_1B964C520();
  if (v2)
  {
  }

  if (v8)
  {
    if (*(a2 + 64) == 255)
    {
      v5 = -1;
    }

    else
    {
      sub_1B964C3D0();
      v5 = *(a2 + 64);
    }

    v6 = *(a2 + 48);
    v7 = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = v8;
    *(a2 + 64) = 0;
    return sub_1B8D525DC(v6, v7, v5);
  }

  return result;
}

uint64_t sub_1B8FAF0F0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0) + 48);
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0830, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_ResultSectionForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D0, &qword_1B966F958);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_151();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v7);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_835();
  if (!v12 || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_16(), sub_1B8CD2450(v13, v14), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    v15 = *(v1 + 8);
    v16 = *(v1 + 16);
    OUTLINED_FUNCTION_1();
    if (!v17 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v0))
    {
      if (*(v1 + 24) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6F0(), !v0))
      {
        v18 = *(v1 + 32);
        v19 = *(v1 + 40);
        v20 = OUTLINED_FUNCTION_616();
        if (sub_1B8D99EA8(v20, v21) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
        {
          if (*(v1 + 64) == 255)
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_491();
          OUTLINED_FUNCTION_292_0();
          if (v23)
          {
            sub_1B8FAF474(v22);
          }

          else
          {
            sub_1B8FAF428(v22);
          }

          if (!v0)
          {
LABEL_27:
            if (*(v1 + 65) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
            {
              if (!*(v1 + 68) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v0))
              {
                v24 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
                v25 = *(v24 + 48);
                OUTLINED_FUNCTION_715_0();
                OUTLINED_FUNCTION_243_1();
                if (v26)
                {
                  sub_1B8D9207C(v2, &qword_1EBAC06D0, &qword_1B966F958);
LABEL_23:
                  v29 = *(v24 + 44);
                  OUTLINED_FUNCTION_8_1();
                  goto LABEL_24;
                }

                OUTLINED_FUNCTION_48_5();
                sub_1B8FAC528();
                OUTLINED_FUNCTION_153_2();
                sub_1B8CD2450(v27, v28);
                OUTLINED_FUNCTION_597_0();
                OUTLINED_FUNCTION_687();
                sub_1B964C740();
                OUTLINED_FUNCTION_325_0();
                sub_1B8FAC5C8();
                if (!v0)
                {
                  goto LABEL_23;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FAF428(uint64_t result)
{
  v1 = *(result + 64);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 48);
    v2 = *(result + 56);
    return sub_1B964C700();
  }

  return result;
}

uint64_t sub_1B8FAF474(uint64_t result)
{
  v1 = *(result + 64);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 48);
    v3 = *(result + 56) & 1;
    sub_1B9023B40();
    return sub_1B964C680();
  }

  return result;
}

void static Apple_Parsec_Feedback_V2_ResultSectionForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D0, &qword_1B966F958);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0838, &qword_1B966FAB8);
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = *v1;
  v17 = *v0;
  sub_1B8D7EC30();
  if ((v18 & 1) == 0)
  {
    goto LABEL_29;
  }

  v19 = *(v1 + 1);
  v20 = *(v1 + 2);
  OUTLINED_FUNCTION_524_0();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_1B964C9F0() & 1) == 0 || v1[3] != *(v0 + 3) || (MEMORY[0x1BFADC060](*(v1 + 4), *(v1 + 5), v0[4], v0[5]) & 1) == 0)
  {
    goto LABEL_29;
  }

  v24 = *(v1 + 64);
  v76 = v0[6];
  v77 = v0[7];
  v25 = *(v0 + 64);
  if (v24 != 255)
  {
    v81 = *(v1 + 6);
    v82 = *(v1 + 7);
    if (v25 != 255)
    {
      v79 = v0[6];
      v80 = v0[7];
      v72 = v25 & 1;
      v73 = *(v0 + 64);
      v26 = OUTLINED_FUNCTION_511_0();
      sub_1B8D52584(v26, v27, v28);
      sub_1B8D52584(v76, v77, v73);
      v29 = OUTLINED_FUNCTION_511_0();
      sub_1B8D52584(v29, v30, v31);
      static Apple_Parsec_Feedback_V2_ResultSectionForFeedback.OneOf_BundleID.== infix(_:_:)();
      v74 = v32;
      sub_1B8D52574(v76, v77, v72);
      v33 = OUTLINED_FUNCTION_233();
      sub_1B8D52574(v33, v34, v35);
      v36 = OUTLINED_FUNCTION_511_0();
      sub_1B8D525DC(v36, v37, v38);
      if ((v74 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    v46 = OUTLINED_FUNCTION_233();
    v44 = v47;
    sub_1B8D52584(v46, v48, v24);
    v49 = OUTLINED_FUNCTION_288();
    sub_1B8D52584(v49, v50, 255);
    v51 = OUTLINED_FUNCTION_511_0();
    sub_1B8D52584(v51, v52, v53);
    v54 = OUTLINED_FUNCTION_233();
    sub_1B8D52574(v54, v55, v56);
LABEL_16:
    v57 = OUTLINED_FUNCTION_511_0();
    sub_1B8D525DC(v57, v58, v59);
    v60 = OUTLINED_FUNCTION_288();
    sub_1B8D525DC(v60, v61, v44);
    goto LABEL_29;
  }

  v39 = OUTLINED_FUNCTION_233();
  v75 = v40;
  sub_1B8D52584(v39, v41, 255);
  if (v75 != 255)
  {
    v42 = OUTLINED_FUNCTION_288();
    v44 = v43;
    sub_1B8D52584(v42, v45, v43);
    goto LABEL_16;
  }

  sub_1B8D52584(v76, v77, 255);
  v62 = OUTLINED_FUNCTION_233();
  sub_1B8D525DC(v62, v63, 255);
LABEL_18:
  if (*(v1 + 65) != *(v0 + 65) || *(v1 + 17) != *(v0 + 17))
  {
    goto LABEL_29;
  }

  v78 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v64 = *(v78 + 48);
  v65 = *(v12 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v2);
  if (v23)
  {
    OUTLINED_FUNCTION_50(v2 + v65);
    if (v23)
    {
      sub_1B8D9207C(v2, &qword_1EBAC06D0, &qword_1B966F958);
      goto LABEL_32;
    }
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_50(v2 + v65);
    if (!v66)
    {
      OUTLINED_FUNCTION_48_5();
      OUTLINED_FUNCTION_870();
      OUTLINED_FUNCTION_246();
      v68 = static Apple_Parsec_Feedback_V2_ButtonForFeedback.== infix(_:_:)();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_467();
      sub_1B8FAC5C8();
      sub_1B8D9207C(v2, &qword_1EBAC06D0, &qword_1B966F958);
      if ((v68 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_32:
      v69 = *(v78 + 44);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_40();
      sub_1B8CD2450(v70, v71);
      v67 = OUTLINED_FUNCTION_634();
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_325_0();
    sub_1B8FAC5C8();
  }

  sub_1B8D9207C(v2, &qword_1EBAC0838, &qword_1B966FAB8);
LABEL_29:
  v67 = 0;
LABEL_30:
  OUTLINED_FUNCTION_264(v67);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8FAF988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E68, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FAFA08(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0920, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FAFA78()
{
  sub_1B8CD2450(&qword_1EBAC0920, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FAFB70()
{
  v0 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0) + 20);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_ActionItemForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v10 = OUTLINED_FUNCTION_163_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0) + 20);
  v18 = v0;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v8, 1, v2);
  if (v14)
  {
    sub_1B8D9207C(v8, &qword_1EBAC06D8, &qword_1B966F960);
LABEL_5:
    OUTLINED_FUNCTION_541_0();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_23();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_548_0();
  sub_1B8CD2450(v15, v16);
  OUTLINED_FUNCTION_749();
  sub_1B964C740();
  OUTLINED_FUNCTION_119_2();
  sub_1B8FAC5C8();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Feedback_V2_ActionItemForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0788, &qword_1B966FA28) - 8);
  v13 = *(*v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_22_3();
  v16 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(v15) + 20);
  v17 = v12[14];
  OUTLINED_FUNCTION_89_3();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_50(v0 + v17);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
LABEL_12:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_40();
      sub_1B8CD2450(v23, v24);
      OUTLINED_FUNCTION_288();
      v19 = OUTLINED_FUNCTION_656_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_119_2();
    sub_1B8FAC5C8();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAC0788, &qword_1B966FA28);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_23();
  sub_1B8FAC528();
  v20 = OUTLINED_FUNCTION_246();
  v22 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v20, v21);
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_467();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8FB0098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E60, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FB0118(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1470, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FB0188()
{
  sub_1B8CD2450(&qword_1EBAC1470, type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FB0214()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFED8);
  __swift_project_value_buffer(v0, qword_1EBABFED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "suggestion";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "fbr";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "topicIdentifier";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8FB05DC();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
  {
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v8 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v1))
    {
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v11 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
      {
        if (*(v2 + 48) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6F0(), !v1))
        {
          if (!*(v2 + 56) || (v12 = *(v2 + 64), OUTLINED_FUNCTION_94_4(), sub_1B9013634(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
          {
            v13 = *(v2 + 72);
            v14 = *(v2 + 80);
            OUTLINED_FUNCTION_1();
            if (!v15 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
            {
              v16 = *(v2 + 88);
              v17 = *(v2 + 96);
              OUTLINED_FUNCTION_1();
              if (!v18 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
              {
                v19 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0) + 44);
                OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 48) != *(v2 + 48))
  {
    return 0;
  }

  v13 = *(v2 + 64);
  if (!sub_1B8D92198(*(v3 + 56), *(v3 + 64), *(v2 + 56)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_737();
  v16 = v6 && v14 == v15;
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v17 = *(v3 + 88) == *(v2 + 88) && *(v3 + 96) == *(v2 + 96);
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v19, v20);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8FB0940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E58, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FB09C0(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0A98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FB0A30()
{
  sub_1B8CD2450(&qword_1EBAC0A98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FB0ABC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFEF0);
  __swift_project_value_buffer(v0, qword_1EBABFEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "label";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "urls";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "bundleIdentifier";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "knownBundleIdentifier";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FB0E10(v3, v4);
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B8FB0EDC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FB0E10(uint64_t a1, uint64_t a2)
{
  result = sub_1B964C520();
  if (v2)
  {
  }

  if (v8)
  {
    if (*(a2 + 56) == 255)
    {
      v5 = -1;
    }

    else
    {
      sub_1B964C3D0();
      v5 = *(a2 + 56);
    }

    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    *(a2 + 40) = 0;
    *(a2 + 48) = v8;
    *(a2 + 56) = 0;
    return sub_1B8D525DC(v6, v7, v5);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_PunchoutForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
      {
        if (*(v2 + 56) == 255 || ((OUTLINED_FUNCTION_491(), OUTLINED_FUNCTION_292_0(), (v11 & 1) == 0) ? (result = sub_1B8FB1094(v10)) : (result = sub_1B8FB10E0(v10)), !v1))
        {
          v12 = *(type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8FB1094(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(result + 40);
    v2 = *(result + 48);
    return sub_1B964C700();
  }

  return result;
}

uint64_t sub_1B8FB10E0(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 40);
    v3 = *(result + 48) & 1;
    sub_1B9023B40();
    return sub_1B964C680();
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v3 + 32), *(v2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 56);
  v11 = *(v2 + 56);
  if (v10 == 255)
  {
    v28 = OUTLINED_FUNCTION_461();
    sub_1B8D52584(v28, v29, 255);
    if (v11 == 255)
    {
      v46 = OUTLINED_FUNCTION_259();
      sub_1B8D52584(v46, v47, 255);
      v48 = OUTLINED_FUNCTION_461();
      sub_1B8D525DC(v48, v49, 255);
LABEL_23:
      v50 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
      OUTLINED_FUNCTION_764(v50);
      OUTLINED_FUNCTION_0_40();
      sub_1B8CD2450(v51, v52);
      return OUTLINED_FUNCTION_634() & 1;
    }

    v30 = OUTLINED_FUNCTION_259();
    sub_1B8D52584(v30, v31, v11);
    goto LABEL_19;
  }

  v55 = *(v3 + 40);
  v56 = *(v3 + 48);
  if (v11 == 255)
  {
    v32 = OUTLINED_FUNCTION_461();
    sub_1B8D52584(v32, v33, v10);
    v34 = OUTLINED_FUNCTION_259();
    sub_1B8D52584(v34, v35, 255);
    v36 = OUTLINED_FUNCTION_461();
    sub_1B8D52584(v36, v37, v10);
    v38 = OUTLINED_FUNCTION_461();
    sub_1B8D52574(v38, v39, v40);
LABEL_19:
    v41 = OUTLINED_FUNCTION_461();
    sub_1B8D525DC(v41, v42, v10);
    v43 = OUTLINED_FUNCTION_259();
    sub_1B8D525DC(v43, v44, v11);
    return 0;
  }

  v53 = *(v2 + 40);
  v54 = *(v2 + 48);
  v12 = v11 & 1;
  v13 = OUTLINED_FUNCTION_461();
  sub_1B8D52584(v13, v14, v10);
  v15 = OUTLINED_FUNCTION_259();
  sub_1B8D52584(v15, v16, v11);
  v17 = OUTLINED_FUNCTION_461();
  sub_1B8D52584(v17, v18, v10);
  static Apple_Parsec_Feedback_V2_PunchoutForFeedback.OneOf_BundleID.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_259();
  sub_1B8D52574(v21, v22, v12);
  v23 = OUTLINED_FUNCTION_461();
  sub_1B8D52574(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_461();
  sub_1B8D525DC(v26, v27, v10);
  if (v20)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_1B8FB13EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E50, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FB146C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FB14DC()
{
  sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FB1574()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFF08);
  __swift_project_value_buffer(v0, qword_1EBABFF08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1B966F920;
  v4 = v118 + v3 + v1[14];
  *(v118 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v118 + v3 + v2 + v1[14];
  *(v118 + v3 + v2) = 2;
  *v8 = "topHit";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v118 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "action";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v118 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "punchout";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v118 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v118 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "localFeatures";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v118 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "resultType";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v118 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "rankingScore";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v118 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 13;
  *v22 = "isStaticCorrection";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v7();
  v23 = (v118 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "queryId";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v118 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 15;
  *v26 = "intendedQuery";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v118 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 16;
  *v28 = "correctedQuery";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v118 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 17;
  *v30 = "completedQuery";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v7();
  v31 = (v118 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 18;
  *v32 = "isLocalApplicationResult";
  *(v32 + 1) = 24;
  v32[16] = 2;
  v7();
  v33 = (v118 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 19;
  *v34 = "publiclyIndexable";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v7();
  v35 = (v118 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 20;
  *v36 = "fbr";
  *(v36 + 1) = 3;
  v36[16] = 2;
  v7();
  v37 = (v118 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 21;
  *v38 = "userInput";
  *(v38 + 1) = 9;
  v38[16] = 2;
  v7();
  v39 = (v118 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 22;
  *v40 = "isFuzzyMatch";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v118 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 23;
  *v42 = "doNotFold";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v118 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 24;
  *v44 = "blockId";
  *(v44 + 1) = 7;
  v44[16] = 2;
  v7();
  v45 = (v118 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 25;
  *v46 = "hashedIdentifier";
  *(v46 + 1) = 16;
  v46[16] = 2;
  v7();
  v47 = (v118 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 26;
  *v48 = "resultBundleId";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v118 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 27;
  *v50 = "knownResultBundleId";
  *(v50 + 1) = 19;
  v50[16] = 2;
  v7();
  v51 = (v118 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 28;
  *v52 = "sectionBundleIdentifier";
  *(v52 + 1) = 23;
  v52[16] = 2;
  v7();
  v53 = (v118 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 29;
  *v54 = "knownSectionBundleIdentifier";
  *(v54 + 1) = 28;
  v54[16] = 2;
  v7();
  v55 = (v118 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 30;
  *v56 = "applicationBundleIdentifier";
  *(v56 + 1) = 27;
  v56[16] = 2;
  v7();
  v57 = (v118 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 31;
  *v58 = "knownApplicationBundleIdentifier";
  *(v58 + 1) = 32;
  v58[16] = 2;
  v7();
  v59 = (v118 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 32;
  *v60 = "entityData";
  *(v60 + 1) = 10;
  v60[16] = 2;
  v7();
  v61 = (v118 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 33;
  *v62 = "shouldUseCompactDisplay";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v118 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 34;
  *v64 = "noGoTakeover";
  *(v64 + 1) = 12;
  v64[16] = 2;
  v7();
  v65 = (v118 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 35;
  *v66 = "preferTopPlatter";
  *(v66 + 1) = 16;
  v66[16] = 2;
  v7();
  v67 = (v118 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 36;
  *v68 = "wasCompact";
  *(v68 + 1) = 10;
  v68[16] = 2;
  v7();
  v69 = (v118 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 37;
  *v70 = "didTakeoverGo";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v7();
  v71 = (v118 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 38;
  *v72 = "usesCompactDisplay";
  *(v72 + 1) = 18;
  v72[16] = 2;
  v7();
  v73 = (v118 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 39;
  *v74 = "isInstantAnswer";
  *(v74 + 1) = 15;
  v74[16] = 2;
  v7();
  v75 = (v118 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 40;
  *v76 = "shouldAutoNavigate";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v7();
  v77 = (v118 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 41;
  *v78 = "card";
  *(v78 + 1) = 4;
  v78[16] = 2;
  v7();
  v79 = (v118 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 42;
  *v80 = "inlineCard";
  *(v80 + 1) = 10;
  v80[16] = 2;
  v7();
  v81 = (v118 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 43;
  *v82 = "compactCard";
  *(v82 + 1) = 11;
  v82[16] = 2;
  v7();
  v83 = (v118 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 44;
  *v84 = "containsPersonalResult";
  *(v84 + 1) = 22;
  v84[16] = 2;
  v7();
  v85 = (v118 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 45;
  *v86 = "didRerankPersonalResult";
  *(v86 + 1) = 23;
  v86[16] = 2;
  v7();
  v87 = (v118 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 46;
  *v88 = "coreSpotlightIndexUsed";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v7();
  v89 = (v118 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 47;
  *v90 = "coreSpotlightIndexUsedReason";
  *(v90 + 1) = 28;
  v90[16] = 2;
  v7();
  v91 = (v118 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 48;
  *v92 = "coreSpotlightRankingSignals";
  *(v92 + 1) = 27;
  v92[16] = 2;
  v7();
  v93 = (v118 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 49;
  *v94 = "mailRankingSignals";
  *(v94 + 1) = 18;
  v94[16] = 2;
  v7();
  v95 = (v118 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 50;
  *v96 = "mailResultDetails";
  *(v96 + 1) = 17;
  v96[16] = 2;
  v7();
  v97 = (v118 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 51;
  *v98 = "isVideoAssetFromPhotos";
  *(v98 + 1) = 22;
  v98[16] = 2;
  v7();
  v99 = (v118 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 52;
  *v100 = "isMailInstantAnswerUpdated";
  *(v100 + 1) = 26;
  v100[16] = 2;
  v7();
  v101 = (v118 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 53;
  *v102 = "indexOfSectionWhenRanked";
  *(v102 + 1) = 24;
  v102[16] = 2;
  v7();
  v103 = (v118 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 54;
  *v104 = "indexOfResultInSectionWhenRanked";
  *(v104 + 1) = 32;
  v104[16] = 2;
  v7();
  v105 = (v118 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 55;
  *v106 = "safariAttributes";
  *(v106 + 1) = 16;
  v106[16] = 2;
  v7();
  v107 = (v118 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 56;
  *v108 = "hasAppTopHitShortcut";
  *(v108 + 1) = 20;
  v108[16] = 2;
  v7();
  v109 = (v118 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 57;
  *v110 = "photosAttributes";
  *(v110 + 1) = 16;
  v110[16] = 2;
  v7();
  v111 = (v118 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 58;
  *v112 = "photosAggregatedInfo";
  *(v112 + 1) = 20;
  v112[16] = 2;
  v7();
  v113 = (v118 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 59;
  *v114 = "thirdPartyQueryCompletionMatched";
  *(v114 + 1) = 32;
  v114[16] = 2;
  v7();
  v115 = (v118 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 60;
  *v116 = "thirdPartyNavigationIntentScore";
  *(v116 + 1) = 31;
  v116[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FB24C8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_57_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B8FB2518()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__action;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__punchout;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__type;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__localFeatures;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultType);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID) = 0;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__intendedQuery);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__correctedQuery);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__completedQuery);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable) = 0;
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fbr);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__doNotFold) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier) = 0;
  v14 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = -1;
  v15 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = -1;
  v16 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = -1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityData) = xmmword_1B9652FE0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldUseCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__noGoTakeover) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__preferTopPlatter) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__wasCompact) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didTakeoverGo) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usesCompactDisplay) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInstantAnswer) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldAutoNavigate) = 0;
  v17 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__card;
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__inlineCard, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__compactCard, 1, 1, v18);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__containsPersonalResult) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didRerankPersonalResult) = 0;
  v19 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsed;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsedReason;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightRankingSignals;
  v22 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailRankingSignals;
  v24 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailResultDetails;
  v26 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v25, 1, 1, v26);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isVideoAssetFromPhotos) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isMailInstantAnswerUpdated) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked) = 0;
  v27 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__safariAttributes;
  v28 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v27, 1, 1, v28);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hasAppTopHitShortcut_p) = 0;
  v29 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes;
  v30 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAggregatedInfo;
  v32 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v31, 1, 1, v32);
  v33 = v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyQueryCompletionMatched;
  *v33 = 0;
  *(v33 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore) = 0;
  return v0;
}

uint64_t sub_1B8FB2928(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0720, &qword_1B966F9A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v245 = v188 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v244 = v188 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0710, &qword_1B966F998);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v243 = v188 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0708, &qword_1B966F990);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v242 = v188 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0700, &qword_1B966F988);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v241 = v188 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F8, &qword_1B966F980);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v240 = v188 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v231 = v188 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E8, &qword_1B966F970);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v196 = v188 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v192 = v188 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E0, &qword_1B966F968);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v32 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__action;
  v188[1] = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__action;
  v33 = type metadata accessor for Apple_Parsec_Feedback_V2_ActionItemForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__punchout;
  v190 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__punchout;
  v35 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v34, 1, 1, v35);
  v36 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__type;
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__localFeatures;
  v191 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__localFeatures;
  v38 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  __swift_storeEnumTagSinglePayload(v1 + v37, 1, 1, v38);
  v39 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultType);
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  v193 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore) = 0;
  v194 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection) = 0;
  v195 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID) = 0;
  v40 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__intendedQuery);
  v197 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__intendedQuery);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  v41 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__correctedQuery);
  v198 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__correctedQuery);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__completedQuery);
  v199 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__completedQuery);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  v200 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult) = 0;
  v201 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable) = 0;
  v43 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fbr);
  v202 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fbr);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  v44 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput);
  v203 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  v204 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch) = 0;
  v205 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__doNotFold;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__doNotFold) = 0;
  v206 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID) = 0;
  v207 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier) = 0;
  v45 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier;
  v189 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier);
  *v45 = 0;
  *(v45 + 8) = 0;
  *(v45 + 16) = -1;
  v46 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID;
  v208 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID);
  *v46 = 0;
  *(v46 + 8) = 0;
  *(v46 + 16) = -1;
  v47 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID;
  *(v47 + 16) = -1;
  *v47 = 0;
  *(v47 + 8) = 0;
  v209 = v47;
  v210 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityData);
  *v210 = xmmword_1B9652FE0;
  v211 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldUseCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldUseCompactDisplay) = 0;
  v212 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__noGoTakeover;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__noGoTakeover) = 0;
  v213 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__preferTopPlatter;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__preferTopPlatter) = 0;
  v214 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__wasCompact;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__wasCompact) = 0;
  v215 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didTakeoverGo;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didTakeoverGo) = 0;
  v216 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usesCompactDisplay;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usesCompactDisplay) = 0;
  v217 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInstantAnswer;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInstantAnswer) = 0;
  v218 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldAutoNavigate;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldAutoNavigate) = 0;
  v48 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__card;
  v219 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__card;
  v49 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v48, 1, 1, v49);
  v220 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__inlineCard;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__inlineCard, 1, 1, v49);
  v221 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__compactCard;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__compactCard, 1, 1, v49);
  v222 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__containsPersonalResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__containsPersonalResult) = 0;
  v223 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didRerankPersonalResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didRerankPersonalResult) = 0;
  v50 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsed;
  v224 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsed;
  *v50 = 0;
  *(v50 + 8) = 1;
  v51 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsedReason;
  v225 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsedReason;
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightRankingSignals;
  v226 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightRankingSignals;
  v53 = type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v52, 1, 1, v53);
  v54 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailRankingSignals;
  v227 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailRankingSignals;
  v55 = type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v54, 1, 1, v55);
  v56 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailResultDetails;
  v228 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__mailResultDetails;
  v57 = type metadata accessor for Apple_Parsec_Feedback_V2_MailResultDetailsForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v56, 1, 1, v57);
  v229 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isVideoAssetFromPhotos;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isVideoAssetFromPhotos) = 0;
  v230 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isMailInstantAnswerUpdated;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isMailInstantAnswerUpdated) = 0;
  v232 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked) = 0;
  v233 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked) = 0;
  v58 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__safariAttributes;
  v234 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__safariAttributes;
  v59 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v58, 1, 1, v59);
  v235 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hasAppTopHitShortcut_p;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hasAppTopHitShortcut_p) = 0;
  v60 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes;
  v236 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes;
  v61 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v60, 1, 1, v61);
  v62 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAggregatedInfo;
  v237 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAggregatedInfo;
  v63 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAggregatedInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v62, 1, 1, v63);
  v64 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyQueryCompletionMatched;
  v238 = v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyQueryCompletionMatched;
  *v64 = 0;
  *(v64 + 8) = 1;
  v239 = (v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore) = 0;
  swift_beginAccess();
  v66 = *(a1 + 16);
  v65 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v66;
  *(v1 + 24) = v65;
  swift_beginAccess();
  v67 = *(a1 + 32);
  v68 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v67;
  *(v1 + 40) = v68;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();

  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v69 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__type);
  swift_beginAccess();
  v70 = *v69;
  LOBYTE(v69) = *(v69 + 8);
  swift_beginAccess();
  *v36 = v70;
  *(v36 + 8) = v69;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v71 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultType);
  swift_beginAccess();
  v73 = *v71;
  v72 = v71[1];
  swift_beginAccess();
  v74 = v39[1];
  *v39 = v73;
  v39[1] = v72;

  v75 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__rankingScore;
  swift_beginAccess();
  v76 = *(a1 + v75);
  v77 = v193;
  swift_beginAccess();
  *(v1 + v77) = v76;
  v78 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isStaticCorrection;
  swift_beginAccess();
  LOBYTE(v78) = *(a1 + v78);
  v79 = v194;
  swift_beginAccess();
  *(v1 + v79) = v78;
  v80 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__queryID;
  swift_beginAccess();
  v81 = *(a1 + v80);
  v82 = v195;
  swift_beginAccess();
  *(v1 + v82) = v81;
  v83 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__intendedQuery);
  swift_beginAccess();
  v85 = *v83;
  v84 = v83[1];
  v86 = v197;
  swift_beginAccess();
  v87 = v86[1];
  *v86 = v85;
  v86[1] = v84;

  v88 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__correctedQuery);
  swift_beginAccess();
  v90 = *v88;
  v89 = v88[1];
  v91 = v198;
  swift_beginAccess();
  v92 = v91[1];
  *v91 = v90;
  v91[1] = v89;

  v93 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__completedQuery);
  swift_beginAccess();
  v95 = *v93;
  v94 = v93[1];
  v96 = v199;
  swift_beginAccess();
  v97 = v96[1];
  *v96 = v95;
  v96[1] = v94;

  v98 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isLocalApplicationResult;
  swift_beginAccess();
  LOBYTE(v98) = *(a1 + v98);
  v99 = v200;
  swift_beginAccess();
  *(v1 + v99) = v98;
  v100 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__publiclyIndexable;
  swift_beginAccess();
  LOBYTE(v100) = *(a1 + v100);
  v101 = v201;
  swift_beginAccess();
  *(v1 + v101) = v100;
  v102 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__fbr);
  swift_beginAccess();
  v104 = *v102;
  v103 = v102[1];
  v105 = v202;
  swift_beginAccess();
  v106 = v105[1];
  *v105 = v104;
  v105[1] = v103;

  v107 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userInput);
  swift_beginAccess();
  v109 = *v107;
  v108 = v107[1];
  v110 = v203;
  swift_beginAccess();
  v111 = v110[1];
  *v110 = v109;
  v110[1] = v108;

  v112 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isFuzzyMatch;
  swift_beginAccess();
  LOBYTE(v112) = *(a1 + v112);
  v113 = v204;
  swift_beginAccess();
  *(v1 + v113) = v112;
  v114 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__doNotFold;
  swift_beginAccess();
  LOBYTE(v114) = *(a1 + v114);
  v115 = v205;
  swift_beginAccess();
  *(v1 + v115) = v114;
  v116 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__blockID;
  swift_beginAccess();
  v117 = *(a1 + v116);
  v118 = v206;
  swift_beginAccess();
  *(v1 + v118) = v117;
  v119 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hashedIdentifier;
  swift_beginAccess();
  v120 = *(a1 + v119);
  v121 = v207;
  swift_beginAccess();
  *(v1 + v121) = v120;
  v122 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier);
  v123 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier + 8);
  v124 = v189;
  v125 = *v189;
  v126 = v189[1];
  v127 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultBundleIdentifier + 16);
  *v189 = v122;
  v124[1] = v123;
  LOBYTE(v109) = *(v124 + 16);
  *(v124 + 16) = v127;
  sub_1B8D52584(v122, v123, v127);
  sub_1B8D525DC(v125, v126, v109);
  v128 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID);
  v129 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID + 8);
  v130 = v208;
  v131 = *v208;
  v132 = v208[1];
  v133 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sectionBundleID + 16);
  *v208 = v128;
  v130[1] = v129;
  LOBYTE(v109) = *(v130 + 16);
  *(v130 + 16) = v133;
  sub_1B8D52584(v128, v129, v133);
  sub_1B8D525DC(v131, v132, v109);
  v134 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID);
  v135 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID + 8);
  v136 = v209;
  v137 = *v209;
  v138 = v209[1];
  v139 = *(a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__applicationBundleID + 16);
  *v209 = v134;
  v136[1] = v135;
  LOBYTE(v109) = *(v136 + 16);
  *(v136 + 16) = v139;
  sub_1B8D52584(v134, v135, v139);
  sub_1B8D525DC(v137, v138, v109);
  v140 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityData);
  swift_beginAccess();
  v142 = *v140;
  v141 = v140[1];
  v143 = v210;
  swift_beginAccess();
  v144 = *v143;
  v145 = v143[1];
  *v143 = v142;
  v143[1] = v141;
  sub_1B8D91FCC(v142, v141);
  sub_1B8D538A0(v144, v145);
  v146 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldUseCompactDisplay;
  swift_beginAccess();
  LOBYTE(v146) = *(a1 + v146);
  v147 = v211;
  swift_beginAccess();
  *(v1 + v147) = v146;
  v148 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__noGoTakeover;
  swift_beginAccess();
  LOBYTE(v148) = *(a1 + v148);
  v149 = v212;
  swift_beginAccess();
  *(v1 + v149) = v148;
  v150 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__preferTopPlatter;
  swift_beginAccess();
  LOBYTE(v150) = *(a1 + v150);
  v151 = v213;
  swift_beginAccess();
  *(v1 + v151) = v150;
  v152 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__wasCompact;
  swift_beginAccess();
  LOBYTE(v152) = *(a1 + v152);
  v153 = v214;
  swift_beginAccess();
  *(v1 + v153) = v152;
  v154 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didTakeoverGo;
  swift_beginAccess();
  LOBYTE(v154) = *(a1 + v154);
  v155 = v215;
  swift_beginAccess();
  *(v1 + v155) = v154;
  v156 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usesCompactDisplay;
  swift_beginAccess();
  LOBYTE(v156) = *(a1 + v156);
  v157 = v216;
  swift_beginAccess();
  *(v1 + v157) = v156;
  v158 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInstantAnswer;
  swift_beginAccess();
  LOBYTE(v158) = *(a1 + v158);
  v159 = v217;
  swift_beginAccess();
  *(v1 + v159) = v158;
  v160 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__shouldAutoNavigate;
  swift_beginAccess();
  LOBYTE(v160) = *(a1 + v160);
  v161 = v218;
  swift_beginAccess();
  *(v1 + v161) = v160;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v162 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__containsPersonalResult;
  swift_beginAccess();
  LOBYTE(v162) = *(a1 + v162);
  v163 = v222;
  swift_beginAccess();
  *(v1 + v163) = v162;
  v164 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didRerankPersonalResult;
  swift_beginAccess();
  LOBYTE(v164) = *(a1 + v164);
  v165 = v223;
  swift_beginAccess();
  *(v1 + v165) = v164;
  v166 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsed);
  swift_beginAccess();
  v167 = *v166;
  LOBYTE(v166) = *(v166 + 8);
  v168 = v224;
  swift_beginAccess();
  *v168 = v167;
  *(v168 + 8) = v166;
  v169 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexUsedReason);
  swift_beginAccess();
  v170 = *v169;
  LOBYTE(v169) = *(v169 + 8);
  v171 = v225;
  swift_beginAccess();
  *v171 = v170;
  *(v171 + 8) = v169;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v172 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isVideoAssetFromPhotos;
  swift_beginAccess();
  LOBYTE(v172) = *(a1 + v172);
  v173 = v229;
  swift_beginAccess();
  *(v1 + v173) = v172;
  v174 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isMailInstantAnswerUpdated;
  swift_beginAccess();
  LOBYTE(v174) = *(a1 + v174);
  v175 = v230;
  swift_beginAccess();
  *(v1 + v175) = v174;
  v176 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfSectionWhenRanked;
  swift_beginAccess();
  LODWORD(v176) = *(a1 + v176);
  v177 = v232;
  swift_beginAccess();
  *(v1 + v177) = v176;
  v178 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexOfResultInSectionWhenRanked;
  swift_beginAccess();
  LODWORD(v178) = *(a1 + v178);
  v179 = v233;
  swift_beginAccess();
  *(v1 + v179) = v178;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v180 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__hasAppTopHitShortcut_p;
  swift_beginAccess();
  LOBYTE(v180) = *(a1 + v180);
  v181 = v235;
  swift_beginAccess();
  *(v1 + v181) = v180;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v182 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyQueryCompletionMatched);
  swift_beginAccess();
  v183 = *v182;
  LOBYTE(v182) = *(v182 + 8);
  v184 = v238;
  swift_beginAccess();
  *v184 = v183;
  *(v184 + 8) = v182;
  v185 = (a1 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Feedback_V2_SearchResultForFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__thirdPartyNavigationIntentScore);
  swift_beginAccess();
  LODWORD(v76) = *v185;

  v186 = v239;
  swift_beginAccess();
  *v186 = v76;
  return v1;
}