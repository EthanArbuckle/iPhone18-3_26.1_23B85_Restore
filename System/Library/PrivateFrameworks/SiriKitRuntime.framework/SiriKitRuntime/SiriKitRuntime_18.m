void type metadata completion function for Conversation()
{
  v0 = type metadata accessor for Conversation.State(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of Conversation.cancel()()
{
  v2 = *(*v0 + 384);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v6();
}

uint64_t dispatch thunk of Conversation.ensureReady(timeout:)(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1);
}

uint64_t dispatch thunk of Conversation.accept(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 408);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of Conversation.paraphrase()(uint64_t a1)
{
  v4 = *(*v1 + 416);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1);
}

uint64_t dispatch thunk of Conversation.prepare()()
{
  v2 = *(*v0 + 424);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6();
}

uint64_t dispatch thunk of Conversation.flexibleExecutionSupport()(uint64_t a1)
{
  v4 = *(*v1 + 432);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1);
}

uint64_t dispatch thunk of Conversation.commit()(uint64_t a1)
{
  v4 = *(*v1 + 440);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1);
}

uint64_t *initializeBufferWithCopyOfBuffer for Conversation.State(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;

      goto LABEL_27;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = a2[1];
      *a1 = *a2;
      a1[1] = v13;
      v14 = type metadata accessor for SiriRequest(0);
      v15 = v14[5];
      v16 = type metadata accessor for Input();
      v17 = *(*(v16 - 8) + 16);

      v17(a1 + v15, a2 + v15, v16);
      *(a1 + v14[6]) = *(a2 + v14[6]);
      *(a1 + v14[7]) = *(a2 + v14[7]);
      v18 = v14[8];
      v19 = a1 + v18;
      v20 = (a2 + v18);
      v21 = *(a2 + v18 + 8);

      if (v21 >> 60 == 15)
      {
        *v19 = *v20;
      }

      else
      {
        v22 = *v20;
        outlined copy of Data._Representation(*v20, v21);
        *v19 = v22;
        *(v19 + 1) = v21;
      }

      *(a1 + v14[9]) = *(a2 + v14[9]);
      *(a1 + v14[10]) = *(a2 + v14[10]);
      *(a1 + v14[11]) = *(a2 + v14[11]);
      v23 = v14[12];
      __dst = a1 + v23;
      v24 = a2 + v23;
      v25 = type metadata accessor for SiriRequestIdentities(0);
      v40 = *(v25 - 8);
      v26 = *(v40 + 48);

      v27 = v24;
      if (v26(v24, 1, v25))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dst, v24, *(*(v28 - 8) + 64));
      }

      else
      {
        v29 = type metadata accessor for IdentifiedUser();
        v30 = *(v29 - 8);
        v31 = v27;
        v32 = v27;
        v33 = *(v30 + 48);
        v39 = v30;
        if (v33(v32, 1, v29))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dst, v31, *(*(v34 - 8) + 64));
        }

        else
        {
          (*(v30 + 16))(__dst, v31, v29);
          (*(v30 + 56))(__dst, 0, 1, v29);
        }

        v35 = *(v25 + 20);
        if (v33(&v31[v35], 1, v29))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dst[v35], &v31[v35], *(*(v36 - 8) + 64));
        }

        else
        {
          (*(v39 + 16))(&__dst[v35], &v31[v35], v29);
          (*(v39 + 56))(&__dst[v35], 0, 1, v29);
        }

        *&__dst[*(v25 + 24)] = *&v31[*(v25 + 24)];
        v37 = *(v40 + 56);

        v37(__dst, 0, 1, v25);
      }

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);
      *(a1 + *(v38 + 48)) = *(a2 + *(v38 + 48));

      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v8 = *a2;
      v9 = a2[1];
      *a1 = v8;
      a1[1] = v9;

LABEL_27:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v11 = *(v6 + 64);

  return memcpy(a1, a2, v11);
}

char *assignWithCopy for Conversation.State(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of Conversation.State(a1, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;

      goto LABEL_26;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      v9 = type metadata accessor for SiriRequest(0);
      v10 = v9[5];
      v11 = type metadata accessor for Input();
      v12 = *(*(v11 - 8) + 16);

      v12(&a1[v10], &a2[v10], v11);
      *&a1[v9[6]] = *&a2[v9[6]];
      *&a1[v9[7]] = *&a2[v9[7]];
      v13 = v9[8];
      v14 = &a1[v13];
      v15 = &a2[v13];
      v16 = *&a2[v13 + 8];

      if (v16 >> 60 == 15)
      {
        *v14 = *v15;
      }

      else
      {
        v17 = *v15;
        outlined copy of Data._Representation(*v15, v16);
        *v14 = v17;
        *(v14 + 1) = v16;
      }

      *&a1[v9[9]] = *&a2[v9[9]];
      *&a1[v9[10]] = *&a2[v9[10]];
      *&a1[v9[11]] = *&a2[v9[11]];
      v18 = v9[12];
      __dst = &a1[v18];
      v19 = &a2[v18];
      v20 = type metadata accessor for SiriRequestIdentities(0);
      v35 = *(v20 - 8);
      v21 = *(v35 + 48);

      v22 = v19;
      if (v21(v19, 1, v20))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dst, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v24 = type metadata accessor for IdentifiedUser();
        v25 = *(v24 - 8);
        v26 = v22;
        v27 = v22;
        v28 = *(v25 + 48);
        v34 = v25;
        if (v28(v27, 1, v24))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dst, v26, *(*(v29 - 8) + 64));
        }

        else
        {
          (*(v25 + 16))(__dst, v26, v24);
          (*(v25 + 56))(__dst, 0, 1, v24);
        }

        v30 = *(v20 + 20);
        if (v28(&v26[v30], 1, v24))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dst[v30], &v26[v30], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(v34 + 16))(&__dst[v30], &v26[v30], v24);
          (*(v34 + 56))(&__dst[v30], 0, 1, v24);
        }

        *&__dst[*(v20 + 24)] = *&v26[*(v20 + 24)];
        v32 = *(v35 + 56);

        v32(__dst, 0, 1, v20);
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);
      *&a1[*(v33 + 48)] = *&a2[*(v33 + 48)];

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);

LABEL_26:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

_OWORD *initializeWithTake for Conversation.State(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = type metadata accessor for SiriRequest(0);
    v9 = v8[5];
    v10 = type metadata accessor for Input();
    (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
    *(a1 + v8[6]) = *(a2 + v8[6]);
    *(a1 + v8[7]) = *(a2 + v8[7]);
    *(a1 + v8[8]) = *(a2 + v8[8]);
    *(a1 + v8[9]) = *(a2 + v8[9]);
    *(a1 + v8[10]) = *(a2 + v8[10]);
    *(a1 + v8[11]) = *(a2 + v8[11]);
    v11 = v8[12];
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = type metadata accessor for SiriRequestIdentities(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(v12, v13, *(*(v16 - 8) + 64));
    }

    else
    {
      v17 = type metadata accessor for IdentifiedUser();
      v18 = *(v17 - 8);
      v24 = *(v18 + 48);
      v23 = v18;
      if (v24(v13, 1, v17))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(v12, v13, *(*(v19 - 8) + 64));
      }

      else
      {
        (*(v18 + 32))(v12, v13, v17);
        (*(v18 + 56))(v12, 0, 1, v17);
      }

      v20 = *(v14 + 20);
      if (v24(&v13[v20], 1, v17))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v12[v20], &v13[v20], *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v23 + 32))(&v12[v20], &v13[v20], v17);
        (*(v23 + 56))(&v12[v20], 0, 1, v17);
      }

      *&v12[*(v14 + 24)] = *&v13[*(v14 + 24)];
      (*(v15 + 56))(v12, 0, 1, v14);
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);
    *(a1 + *(v22 + 48)) = *(a2 + *(v22 + 48));
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

uint64_t type metadata completion function for Conversation.State()
{
  result = type metadata accessor for SiriRequest(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    v3 = MEMORY[0x1E69E5D20] + 64;
    swift_getTupleTypeLayout2();
    v4[4] = v4;
    v4[5] = &unk_1DCA69550;
    v4[6] = &unk_1DCA69580;
    v4[7] = v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of ConversationTaskObservationDelegate.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ConversationTaskObservationDelegate.executionDidComplete()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of ConversationTaskObservationDelegate.activeTasksDidChange(activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v15(a1, a2, a3, a4, a5);
}

char *initializeBufferWithCopyOfBuffer for SiriRequest(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *v4 = *a2;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;
    v8 = a3[5];
    v9 = type metadata accessor for Input();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], a2 + v8, v9);
    v11 = a3[7];
    *&v4[a3[6]] = *(a2 + a3[6]);
    *&v4[v11] = *(a2 + v11);
    v12 = a3[8];
    v13 = &v4[v12];
    v14 = (a2 + v12);
    v15 = *(a2 + v12 + 8);

    if (v15 >> 60 == 15)
    {
      *v13 = *v14;
    }

    else
    {
      v17 = *v14;
      outlined copy of Data._Representation(*v14, v15);
      *v13 = v17;
      *(v13 + 1) = v15;
    }

    v18 = a3[10];
    *&v4[a3[9]] = *(a2 + a3[9]);
    *&v4[v18] = *(a2 + v18);
    v19 = a3[12];
    *&v4[a3[11]] = *(a2 + a3[11]);
    v20 = &v4[v19];
    v21 = a2 + v19;
    v22 = type metadata accessor for SiriRequestIdentities(0);
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);

    if (v24(v21, 1, v22))
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(v20, v21, *(*(v25 - 8) + 64));
    }

    else
    {
      v26 = type metadata accessor for IdentifiedUser();
      v27 = *(v26 - 8);
      v28 = *(v27 + 48);
      if (v28(v21, 1, v26))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(v20, v21, *(*(v29 - 8) + 64));
      }

      else
      {
        (*(v27 + 16))(v20, v21, v26);
        (*(v27 + 56))(v20, 0, 1, v26);
      }

      v30 = *(v22 + 20);
      if (v28(&v21[v30], 1, v26))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v20[v30], &v21[v30], *(*(v31 - 8) + 64));
      }

      else
      {
        (*(v27 + 16))(&v20[v30], &v21[v30], v26);
        (*(v27 + 56))(&v20[v30], 0, 1, v26);
      }

      *&v20[*(v22 + 24)] = *&v21[*(v22 + 24)];
      v32 = *(v23 + 56);

      v32(v20, 0, 1, v22);
    }
  }

  return v4;
}

char *assignWithCopy for SiriRequest(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = a3[5];
  v8 = type metadata accessor for Input();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = a3[6];
  v10 = *&a1[v9];
  *&a1[v9] = *&a2[v9];

  v11 = a3[7];
  v12 = *&a1[v11];
  *&a1[v11] = *&a2[v11];

  v13 = a3[8];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *&a2[v13 + 8];
  if (*&a1[v13 + 8] >> 60 == 15)
  {
    if (v16 >> 60 != 15)
    {
      v17 = *v15;
      outlined copy of Data._Representation(v17, v16);
      *v14 = v17;
      v14[1] = v16;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v16 >> 60 == 15)
  {
    outlined destroy of Data(v14);
LABEL_6:
    *v14 = *v15;
    goto LABEL_8;
  }

  v18 = *v15;
  outlined copy of Data._Representation(v18, v16);
  v19 = *v14;
  v20 = v14[1];
  *v14 = v18;
  v14[1] = v16;
  outlined consume of Data._Representation(v19, v20);
LABEL_8:
  v21 = a3[9];
  v22 = *&a1[v21];
  *&a1[v21] = *&a2[v21];

  v23 = a3[10];
  v24 = *&a1[v23];
  *&a1[v23] = *&a2[v23];

  v25 = a3[11];
  v26 = *&a1[v25];
  *&a1[v25] = *&a2[v25];

  v27 = a3[12];
  v28 = &a1[v27];
  v29 = &a2[v27];
  v30 = type metadata accessor for SiriRequestIdentities(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v33 = v32(v28, 1, v30);
  v34 = v32(v29, 1, v30);
  if (!v33)
  {
    if (v34)
    {
      outlined destroy of Conversation.State(v28, type metadata accessor for SiriRequestIdentities);
      goto LABEL_14;
    }

    v40 = type metadata accessor for IdentifiedUser();
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    v43 = v42(v28, 1, v40);
    v44 = v42(v29, 1, v40);
    if (v43)
    {
      if (!v44)
      {
        (*(v41 + 16))(v28, v29, v40);
        (*(v41 + 56))(v28, 0, 1, v40);
        goto LABEL_26;
      }
    }

    else
    {
      if (!v44)
      {
        (*(v41 + 24))(v28, v29, v40);
LABEL_26:
        v49 = *(v30 + 20);
        v50 = v42(&v28[v49], 1, v40);
        v51 = v42(&v29[v49], 1, v40);
        if (v50)
        {
          if (!v51)
          {
            (*(v41 + 16))(&v28[v49], &v29[v49], v40);
            (*(v41 + 56))(&v28[v49], 0, 1, v40);
LABEL_32:
            v53 = *(v30 + 24);
            v54 = *&v29[v53];
            v55 = *&v28[v53];
            *&v28[v53] = v54;

            return a1;
          }
        }

        else
        {
          if (!v51)
          {
            (*(v41 + 24))(&v28[v49], &v29[v49], v40);
            goto LABEL_32;
          }

          (*(v41 + 8))(&v28[v49], v40);
        }

        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v28[v49], &v29[v49], *(*(v52 - 8) + 64));
        goto LABEL_32;
      }

      (*(v41 + 8))(v28, v40);
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(v28, v29, *(*(v48 - 8) + 64));
    goto LABEL_26;
  }

  if (v34)
  {
LABEL_14:
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    memcpy(v28, v29, *(*(v39 - 8) + 64));
    return a1;
  }

  v35 = type metadata accessor for IdentifiedUser();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v29, 1, v35))
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(v28, v29, *(*(v38 - 8) + 64));
  }

  else
  {
    (*(v36 + 16))(v28, v29, v35);
    (*(v36 + 56))(v28, 0, 1, v35);
  }

  v45 = *(v30 + 20);
  if (v37(&v29[v45], 1, v35))
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&v28[v45], &v29[v45], *(*(v46 - 8) + 64));
  }

  else
  {
    (*(v36 + 16))(&v28[v45], &v29[v45], v35);
    (*(v36 + 56))(&v28[v45], 0, 1, v35);
  }

  *&v28[*(v30 + 24)] = *&v29[*(v30 + 24)];
  v47 = *(v31 + 56);

  v47(v28, 0, 1, v30);
  return a1;
}

char *initializeWithTake for SiriRequest(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for Input();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v8] = *&a2[v8];
  v9 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v9] = *&a2[v9];
  v10 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[12];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = type metadata accessor for SiriRequestIdentities(0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    memcpy(v12, v13, *(*(v16 - 8) + 64));
  }

  else
  {
    v17 = type metadata accessor for IdentifiedUser();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (v19(v13, 1, v17))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(v12, v13, *(*(v20 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(v12, v13, v17);
      (*(v18 + 56))(v12, 0, 1, v17);
    }

    v21 = *(v14 + 20);
    if (v19(&v13[v21], 1, v17))
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(&v12[v21], &v13[v21], *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(&v12[v21], &v13[v21], v17);
      (*(v18 + 56))(&v12[v21], 0, 1, v17);
    }

    *&v12[*(v14 + 24)] = *&v13[*(v14 + 24)];
    (*(v15 + 56))(v12, 0, 1, v14);
  }

  return a1;
}

char *assignWithTake for SiriRequest(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = a3[5];
  v9 = type metadata accessor for Input();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  v10 = a3[6];
  v11 = *&a1[v10];
  *&a1[v10] = *&a2[v10];

  v12 = a3[7];
  v13 = *&a1[v12];
  *&a1[v12] = *&a2[v12];

  v14 = a3[8];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = *&a1[v14 + 8];
  if (v17 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v18 = *(v16 + 1);
  if (v18 >> 60 == 15)
  {
    outlined destroy of Data(v15);
LABEL_4:
    *v15 = *v16;
    goto LABEL_6;
  }

  v19 = *v15;
  *v15 = *v16;
  *(v15 + 8) = v18;
  outlined consume of Data._Representation(v19, v17);
LABEL_6:
  v20 = a3[9];
  v21 = *&a1[v20];
  *&a1[v20] = *&a2[v20];

  v22 = a3[10];
  v23 = *&a1[v22];
  *&a1[v22] = *&a2[v22];

  v24 = a3[11];
  v25 = *&a1[v24];
  *&a1[v24] = *&a2[v24];

  v26 = a3[12];
  v27 = &a1[v26];
  v28 = &a2[v26];
  v29 = type metadata accessor for SiriRequestIdentities(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(v27, 1, v29);
  v33 = v31(v28, 1, v29);
  if (!v32)
  {
    if (v33)
    {
      outlined destroy of Conversation.State(v27, type metadata accessor for SiriRequestIdentities);
      goto LABEL_12;
    }

    v39 = type metadata accessor for IdentifiedUser();
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    v42 = v41(v27, 1, v39);
    v43 = v41(v28, 1, v39);
    if (v42)
    {
      if (!v43)
      {
        (*(v40 + 32))(v27, v28, v39);
        (*(v40 + 56))(v27, 0, 1, v39);
        goto LABEL_24;
      }
    }

    else
    {
      if (!v43)
      {
        (*(v40 + 40))(v27, v28, v39);
LABEL_24:
        v47 = *(v29 + 20);
        v48 = v41(&v27[v47], 1, v39);
        v49 = v41(&v28[v47], 1, v39);
        if (v48)
        {
          if (!v49)
          {
            (*(v40 + 32))(&v27[v47], &v28[v47], v39);
            (*(v40 + 56))(&v27[v47], 0, 1, v39);
LABEL_30:
            v51 = *(v29 + 24);
            v52 = *&v27[v51];
            *&v27[v51] = *&v28[v51];

            return a1;
          }
        }

        else
        {
          if (!v49)
          {
            (*(v40 + 40))(&v27[v47], &v28[v47], v39);
            goto LABEL_30;
          }

          (*(v40 + 8))(&v27[v47], v39);
        }

        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v27[v47], &v28[v47], *(*(v50 - 8) + 64));
        goto LABEL_30;
      }

      (*(v40 + 8))(v27, v39);
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(v27, v28, *(*(v46 - 8) + 64));
    goto LABEL_24;
  }

  if (v33)
  {
LABEL_12:
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    memcpy(v27, v28, *(*(v38 - 8) + 64));
    return a1;
  }

  v34 = type metadata accessor for IdentifiedUser();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v28, 1, v34))
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(v27, v28, *(*(v37 - 8) + 64));
  }

  else
  {
    (*(v35 + 32))(v27, v28, v34);
    (*(v35 + 56))(v27, 0, 1, v34);
  }

  v44 = *(v29 + 20);
  if (v36(&v28[v44], 1, v34))
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&v27[v44], &v28[v44], *(*(v45 - 8) + 64));
  }

  else
  {
    (*(v35 + 32))(&v27[v44], &v28[v44], v34);
    (*(v35 + 56))(&v27[v44], 0, 1, v34);
  }

  *&v27[*(v29 + 24)] = *&v28[*(v29 + 24)];
  (*(v30 + 56))(v27, 0, 1, v29);
  return a1;
}

void type metadata completion function for SiriRequest()
{
  v0 = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for SiriRequestIdentities?, type metadata accessor for SiriRequestIdentities);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for SiriRequestIdentities(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IdentifiedUser();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(a2, 1, v7))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v12 = *(a3 + 20);
    if (v9((a2 + v12), 1, v7))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(a1 + v12, a2 + v12, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1 + v12, a2 + v12, v7);
      (*(v8 + 56))(a1 + v12, 0, 1, v7);
    }

    *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return a1;
}

char *assignWithCopy for SiriRequestIdentities(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for IdentifiedUser();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (!v13)
  {
    if (!v14)
    {
      (*(v7 + 24))(&a1[v12], &a2[v12], v6);
      goto LABEL_13;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    goto LABEL_13;
  }

  (*(v7 + 16))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
LABEL_13:
  v16 = *(a3 + 24);
  v17 = *&a2[v16];
  v18 = *&a1[v16];
  *&a1[v16] = v17;

  return a1;
}

char *initializeWithTake for SiriRequestIdentities(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for IdentifiedUser();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  if (v8(&a2[v10], 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *assignWithTake for SiriRequestIdentities(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for IdentifiedUser();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (!v13)
  {
    if (!v14)
    {
      (*(v7 + 40))(&a1[v12], &a2[v12], v6);
      goto LABEL_13;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    goto LABEL_13;
  }

  (*(v7 + 32))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
LABEL_13:
  v16 = *(a3 + 24);
  v17 = *&a1[v16];
  *&a1[v16] = *&a2[v16];

  return a1;
}

void type metadata completion function for SiriRequestIdentities()
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for IdentifiedUser?, MEMORY[0x1E69CFE58]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

id ConversationalContextContainer.__allocating_init(dialogActs:activeTasks:executedTasks:entities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs] = a1;
  *&v9[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks] = a2;
  *&v9[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks] = a3;
  *&v9[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id ConversationalContextContainer.init(dialogActs:activeTasks:executedTasks:entities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs] = a1;
  *&v4[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks] = a2;
  *&v4[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks] = a3;
  *&v4[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for ConversationalContextContainer();
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall ConversationalContextContainer.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for RREntity();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs);
  if (isa)
  {
    v9 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs);

    _sSa14SiriKitRuntime21InternalSwiftProtobuf7MessageRzlE09serializeF14ElementsAsData9swiftType7objectsSay10Foundation0K0VGqd__m_Sayqd__GtAbCRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_ANTtg5Tf4dn_nTm(v10, MEMORY[0x1E69D0B48], &lazy protocol witness table cache variable for type Siri_Nlu_External_SystemDialogAct and conformance Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69D0B48], MEMORY[0x1E69D0B40]);

    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v11 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA7AD90, v6);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v11];
  swift_unknownObjectRelease();

  v12 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks);

    _sSa14SiriKitRuntime21InternalSwiftProtobuf7MessageRzlE09serializeF14ElementsAsData9swiftType7objectsSay10Foundation0K0VGqd__m_Sayqd__GtAbCRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_ANTtg5Tf4dn_nTm(v14, MEMORY[0x1E69D0948], &lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);

    v12 = Array._bridgeToObjectiveC()().super.isa;
  }

  v15 = MEMORY[0x1E12A1410](0x6154657669746361, 0xEB00000000736B73);
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v15];
  swift_unknownObjectRelease();

  v16 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks);
  if (v16)
  {
    v17 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks);

    _sSa14SiriKitRuntime21InternalSwiftProtobuf7MessageRzlE09serializeF14ElementsAsData9swiftType7objectsSay10Foundation0K0VGqd__m_Sayqd__GtAbCRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_ANTtg5Tf4dn_nTm(v18, MEMORY[0x1E69D0948], &lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);

    v16 = Array._bridgeToObjectiveC()().super.isa;
  }

  v19 = MEMORY[0x1E12A1410](0x6465747563657865, 0xED0000736B736154);
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v19];
  swift_unknownObjectRelease();

  v21 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities);
  if (!v21)
  {
    v43 = 0;
LABEL_21:
    v44 = MEMORY[0x1E12A1410](0x7365697469746E65, 0xE800000000000000);
    [(objc_class *)with.super.isa encodeObject:v43 forKey:v44];
    swift_unknownObjectRelease();

    return;
  }

  v47 = with.super.isa;
  v22 = *(v21 + 16);
  if (!v22)
  {
    v48 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v43 = Array._bridgeToObjectiveC()().super.isa;

    with.super.isa = v47;
    goto LABEL_21;
  }

  v23 = 0;
  v54 = v4 + 16;
  v24 = (v4 + 8);
  v48 = MEMORY[0x1E69E7CC0];
  v53 = v22;
  v46 = v22 - 1;
  *&v20 = 136315138;
  v49 = v20;
  v50 = v4;
  v51 = v3;
  while (1)
  {
    v25 = v23;
    v26 = v52;
    if (v23 >= *(v21 + 16))
    {
      break;
    }

    (*(v4 + 16))(v52, v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23++, v3);
    v27 = type metadata accessor for JSONEncoder();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type RREntity and conformance RREntity, MEMORY[0x1E69D2948]);
    v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v32 = v31;
    v33 = v26;
    v34 = v3;
    v35 = v30;

    (*v24)(v33, v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
    }

    v37 = *(v48 + 2);
    v36 = *(v48 + 3);
    if (v37 >= v36 >> 1)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v48);
      v39 = v32;
      v48 = v42;
      v38 = v35;
    }

    else
    {
      v38 = v35;
      v39 = v32;
    }

    v4 = v50;
    v3 = v51;
    v40 = v48;
    *(v48 + 2) = v37 + 1;
    v41 = &v40[16 * v37];
    *(v41 + 4) = v38;
    *(v41 + 5) = v39;
    if (v46 == v25)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

id ConversationalContextContainer.init(coder:)(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v71 - v4;
  v6 = type metadata accessor for RREntity();
  v78 = *(v6 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v71 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v75 = &v71 - v14;
  v15 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA7AD90, v13);
  v16 = [a1 decodeObjectForKey_];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v90 = v88;
  v91 = v89;
  v81 = v11;
  if (*(&v89 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (one-time initialization token for conversationBridge == -1)
      {
LABEL_11:
        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.conversationBridge);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1DC659000, v22, v23, "Failed to decode the SystemDialogAct", v24, 2u);
          MEMORY[0x1E12A2F50](v24, -1, -1);
        }

        goto LABEL_60;
      }

LABEL_65:
      swift_once();
      goto LABEL_11;
    }

    v17 = _sSa14SiriKitRuntime10Foundation4DataVRszlE011deserializeE18ElementsAsProtobuf9swiftTypeSayqd__Gqd__m_t013InternalSwiftI07MessageRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_Ttg5(v86);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v90, &_sypSgMd, &_sypSgMR);
    v17 = 0;
  }

  v18 = OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs;
  *&v84[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs] = v17;
  v19 = MEMORY[0x1E12A1410](0x6154657669746361, 0xEB00000000736B73);
  v20 = [a1 decodeObjectForKey_];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v90 = v88;
  v91 = v89;
  if (*(&v89 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.conversationBridge);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v29, v30, "Failed to decode the Active Tasks", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }

      v32 = *&v84[v18];
      goto LABEL_59;
    }

    v25 = _sSa14SiriKitRuntime10Foundation4DataVRszlE011deserializeE18ElementsAsProtobuf9swiftTypeSayqd__Gqd__m_t013InternalSwiftI07MessageRd__lF0A8NLUTypes0A18_Nlu_External_TaskV_Ttg5(v86);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v90, &_sypSgMd, &_sypSgMR);
    v25 = 0;
  }

  *&v84[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks] = v25;
  v26 = MEMORY[0x1E12A1410](0x6465747563657865, 0xED0000736B736154);
  v27 = [a1 decodeObjectForKey_];

  if (v27)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v90 = v88;
  v91 = v89;
  if (*(&v89 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.conversationBridge);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v37, v38, "Failed to decode the Executed Tasks", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      v40 = v84;
      v41 = *&v84[v18];

      v42 = OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks;
      goto LABEL_58;
    }

    v72 = a1;
    v33 = _sSa14SiriKitRuntime10Foundation4DataVRszlE011deserializeE18ElementsAsProtobuf9swiftTypeSayqd__Gqd__m_t013InternalSwiftI07MessageRd__lF0A8NLUTypes0A18_Nlu_External_TaskV_Ttg5(v86);
  }

  else
  {
    v72 = a1;
    outlined destroy of ReferenceResolutionClientProtocol?(&v90, &_sypSgMd, &_sypSgMR);
    v33 = 0;
  }

  *&v84[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks] = v33;
  v34 = MEMORY[0x1E12A1410](0x7365697469746E65, 0xE800000000000000);
  v35 = [v72 decodeObjectForKey_];

  if (v35)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v90 = v88;
  v91 = v89;
  if (!*(&v89 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v90, &_sypSgMd, &_sypSgMR);
    v59 = 0;
    goto LABEL_63;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.conversationBridge);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1DC659000, v61, v62, "Failed to decode the entities", v63, 2u);
      MEMORY[0x1E12A2F50](v63, -1, -1);
    }

    v40 = v84;
    v64 = *&v84[v18];

    v65 = *&v40[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks];

    v42 = OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks;
LABEL_58:
    v66 = *&v40[v42];
LABEL_59:

LABEL_60:
    type metadata accessor for ConversationalContextContainer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v44 = v86;
  v79 = *(v86 + 16);
  if (v79)
  {
    v45 = 0;
    v77 = (v78 + 56);
    v82 = (v78 + 32);
    v76 = (v78 + 48);
    v80 = MEMORY[0x1E69E7CC0];
    a1 = (v86 + 40);
    *&v43 = 136315138;
    v71 = v43;
    v46 = v5;
    v47 = v81;
    v74 = v86;
    v73 = v6;
    while (v45 < *(v44 + 16))
    {
      v49 = *(a1 - 1);
      v48 = *a1;
      v50 = type metadata accessor for JSONDecoder();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      outlined copy of Data._Representation(v49, v48);
      JSONDecoder.init()();
      lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type RREntity and conformance RREntity, MEMORY[0x1E69D2948]);
      v85 = v49;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      (*v82)(v46, v47, v6);
      (*v77)(v46, 0, 1, v6);
      outlined consume of Data._Representation(v85, v48);
      if ((*v76)(v46, 1, v6) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      }

      else
      {
        v53 = *v82;
        v54 = v75;
        (*v82)(v75, v46, v6);
        v53(v83, v54, v6);
        v55 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
        }

        v57 = v55[2];
        v56 = v55[3];
        if (v57 >= v56 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1, v55);
        }

        v55[2] = v57 + 1;
        v58 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v80 = v55;
        v53(v55 + v58 + *(v78 + 72) * v57, v83, v6);
        v47 = v81;
        v44 = v74;
      }

      ++v45;
      a1 += 2;
      if (v79 == v45)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

  v80 = MEMORY[0x1E69E7CC0];
LABEL_62:

  v59 = v80;
LABEL_63:
  v68 = v84;
  *&v84[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities] = v59;
  v69 = type metadata accessor for ConversationalContextContainer();
  v87.receiver = v68;
  v87.super_class = v69;
  v70 = objc_msgSendSuper2(&v87, sel_init);

  return v70;
}

char *_sSa14SiriKitRuntime10Foundation4DataVRszlE011deserializeE18ElementsAsProtobuf9swiftTypeSayqd__Gqd__m_t013InternalSwiftI07MessageRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_Ttg5(uint64_t a1)
{
  v2 = type metadata accessor for BinaryDecodingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = (v12 + 56);
  v25 = v12;
  v27 = (v12 + 32);
  v16 = (a1 + 40);
  v17 = MEMORY[0x1E69E7CC0];
  v26 = v5;
  do
  {
    v19 = *(v16 - 1);
    v18 = *v16;
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    outlined copy of Data._Representation(v19, v18);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemDialogAct and conformance Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69D0B48]);
    Message.init(serializedData:extensions:partial:options:)();
    (*v15)(v9, 0, 1, v10);
    v20 = *v27;
    (*v27)(v28, v9, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v22 = *(v17 + 2);
    v21 = *(v17 + 3);
    if (v22 >= v21 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v17);
    }

    *(v17 + 2) = v22 + 1;
    v20(&v17[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22], v28, v10);
    v16 += 2;
    --v14;
  }

  while (v14);
  return v17;
}

char *_sSa14SiriKitRuntime10Foundation4DataVRszlE011deserializeE18ElementsAsProtobuf9swiftTypeSayqd__Gqd__m_t013InternalSwiftI07MessageRd__lF0A8NLUTypes0A18_Nlu_External_TaskV_Ttg5(uint64_t a1)
{
  v2 = type metadata accessor for BinaryDecodingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_Task();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = (v12 + 56);
  v25 = v12;
  v27 = (v12 + 32);
  v16 = (a1 + 40);
  v17 = MEMORY[0x1E69E7CC0];
  v26 = v5;
  do
  {
    v19 = *(v16 - 1);
    v18 = *v16;
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    outlined copy of Data._Representation(v19, v18);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948]);
    Message.init(serializedData:extensions:partial:options:)();
    (*v15)(v9, 0, 1, v10);
    v20 = *v27;
    (*v27)(v28, v9, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v22 = *(v17 + 2);
    v21 = *(v17 + 3);
    if (v22 >= v21 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v17);
    }

    *(v17 + 2) = v22 + 1;
    v20(&v17[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22], v28, v10);
    v16 += 2;
    --v14;
  }

  while (v14);
  return v17;
}

id ConversationalContextContainer.init(serializedBackingStore:)(uint64_t *a1)
{
  v2 = v1;
  outlined init with copy of Any(a1, v31);
  v4 = &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd;
  v5 = &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd;
  if (swift_dynamicCast())
  {
    v6 = v29;
    type metadata accessor for NSKeyedUnarchiver();
    static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
    if (v31[3])
    {
      type metadata accessor for ConversationalContextContainer();
      if (swift_dynamicCast())
      {
        v27 = v30;
        v15 = v29;
        v14 = *&v29[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs];
        v13 = *&v29[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks];
        v12 = *&v29[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks];
        v11 = *&v29[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities];
        v16 = one-time initialization token for conversationBridge;

        if (v16 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Logger.conversationBridge);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = v18;
          v22 = v20;
          *v20 = 0;
          v23 = v19;
          v24 = v21;
          _os_log_impl(&dword_1DC659000, v21, v23, "Decoded the ConversationalContextContainer", v20, 2u);
          MEMORY[0x1E12A2F50](v22, -1, -1);
          outlined consume of Data._Representation(v6, v27);
        }

        else
        {
          outlined consume of Data._Representation(v29, v30);
        }

        v5 = &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd;
        goto LABEL_17;
      }

      outlined consume of Data._Representation(v29, v30);
    }

    else
    {
      outlined consume of Data._Representation(v29, v30);
      outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sypSgMd, &_sypSgMR);
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_17:
    v4 = &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd;
    goto LABEL_18;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationBridge);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DC659000, v8, v9, "The backing store for conversational context is not of type Data", v10, 2u);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_18:
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs] = v14;
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks] = v13;
  *&v2[v4[186]] = v12;
  *&v2[v5[187]] = v11;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for ConversationalContextContainer();
  v25 = objc_msgSendSuper2(&v28, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v25;
}

void ConversationalContextContainer.serializedBackingStore()(uint64_t *a1@<X8>)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v21];
  v4 = v21[0];
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v8 = v4;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      v16 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v21);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1DC659000, v12, v13, "Failed to encode the context: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12A2F50](v15, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    else
    {
    }

    v5 = 0;
    v7 = 0xC000000000000000;
  }

  a1[3] = MEMORY[0x1E6969080];
  *a1 = v5;
  a1[1] = v7;
  v20 = *MEMORY[0x1E69E9840];
}

id ConversationalContextContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationalContextContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationalContextContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *_sSa14SiriKitRuntime21InternalSwiftProtobuf7MessageRzlE09serializeF14ElementsAsData9swiftType7objectsSay10Foundation0K0VGqd__m_Sayqd__GtAbCRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_ANTtg5Tf4dn_nTm(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v31 = a3;
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 64);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v13 = v27 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v10 + 16);
  v15 = v10 + 16;
  v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v29 = *(v15 + 56);
  v30 = v16;
  v28 = (v15 - 8);
  v32 = MEMORY[0x1E69E7CC0];
  v27[0] = a4;
  v27[1] = a5;
  do
  {
    v18 = v15;
    v30(v13, v17, v8, v11);
    lazy protocol witness table accessor for type RREntity and conformance RREntity(v31, a4);
    v19 = Message.serializedData(partial:)();
    v21 = v20;
    (*v28)(v13, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
    }

    v23 = *(v32 + 2);
    v22 = *(v32 + 3);
    if (v23 >= v22 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v32);
    }

    v24 = v32;
    *(v32 + 2) = v23 + 1;
    v25 = &v24[16 * v23];
    *(v25 + 4) = v19;
    *(v25 + 5) = v21;
    a4 = v27[0];
    v17 += v29;
    --v14;
    v15 = v18;
  }

  while (v14);
  return v32;
}

unint64_t type metadata accessor for NSKeyedUnarchiver()
{
  result = lazy cache variable for type metadata for NSKeyedUnarchiver;
  if (!lazy cache variable for type metadata for NSKeyedUnarchiver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RREntity and conformance RREntity(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v45 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42 - v11;
  v47[0] = type metadata accessor for StartRequestMessageBase();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes012StartRequestB4BaseCmMd, &_s16SiriMessageTypes012StartRequestB4BaseCmMR);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  v16 = *(*v2 + 176);

  v18 = v16(v17);
  v19 = v13;
  if (*(v18 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v13, v15), (v20 & 1) != 0))
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47[0] = v24;
      *v23 = 136315138;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v15, v47);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DC659000, v21, v22, "Message type: %s is already registered. Ignoring this request", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v43 = v13;

    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    v27 = one-time initialization token for shared;

    if (v27 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v28 = static MessageBusActor.shared;
    v29 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor);
    v30 = swift_allocObject();
    v30[2] = v28;
    v30[3] = v29;
    v30[4] = v3;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:), v30);

    (*(v5 + 16))(v8, v3 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0E7HandlerCyAA0dG0C_AA37ServerFallbackCapableRequestProcessorC0aE5Types05StartmeH0CGMd, &_s14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0E7HandlerCyAA0dG0C_AA37ServerFallbackCapableRequestProcessorC0aE5Types05StartmeH0CGMR);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    v35 = v45;
    *(v34 + 16) = v44;
    *(v34 + 24) = v35;
    (*(v5 + 32))(v34 + direct field offset for ConversationMessageDispatchingBridgeBase.MessageHandler.logger, v8, v4);
    v36 = *(*v3 + 192);

    v37 = v36(v47);
    v39 = v38;
    v40 = *v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *v39;
    *v39 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v43, v15, isUniquelyReferenced_nonNull_native);

    *v39 = v46;
    v37(v47, 0);
  }
}

{
  v30 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = type metadata accessor for EndRequestMessageBase();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010EndRequestB4BaseCmMd, &_s16SiriMessageTypes010EndRequestB4BaseCmMR);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  v12 = *(*v2 + 176);

  if (*(v12(v13) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v9, v11), (v14 & 1) != 0))
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *v17 = 136315138;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v32);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_1DC659000, v15, v16, "Message type: %s is already registered. Ignoring this request", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    (*(v5 + 16))(v8, v2 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v4);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0E7HandlerCyAA0dG0C_AA37ServerFallbackCapableRequestProcessorC0aE5Types03EndmeH0CGMd, &_s14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0E7HandlerCyAA0dG0C_AA37ServerFallbackCapableRequestProcessorC0aE5Types03EndmeH0CGMR);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();
    *(v23 + 16) = v30;
    *(v23 + 24) = a2;
    (*(v5 + 32))(v23 + direct field offset for ConversationMessageDispatchingBridgeBase.MessageHandler.logger, v8, v4);
    v24 = *(*v2 + 192);

    v25 = v24(v32);
    v27 = v26;
    v28 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v27;
    *v27 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v9, v11, isUniquelyReferenced_nonNull_native);

    *v27 = v31;
    v25(v32, 0);
  }
}

void *specialized ConversationMessageDispatchingBridgeBase.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  v3 = v0[15];

  v4 = v0[16];

  v5 = v0[17];

  v6 = direct field offset for ConversationMessageDispatchingBridgeBase.logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t static ConversationBridgeSPI.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static ConversationBridgeFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static ConversationBridgeFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for ConversationBridgeFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

void *ConversationBridgeSPI.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v34 = a6;
  v33 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, static Logger.conversationBridge);
  (*(v11 + 16))(v14, v16, v10);
  v17 = type metadata accessor for AsyncSerialQueue();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v20[2] = MEMORY[0x1E69E7CC0];
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v20[6] = v21;
  v20[7] = 0xD000000000000012;
  v20[8] = 0x80000001DCA696E0;
  (*(v11 + 32))(v20 + OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger, v14, v10);
  v15[2] = v20;
  v15[4] = a5;
  v15[5] = a1;
  v15[6] = a2;
  outlined init with copy of ReferenceResolutionClientProtocol(a3, v39);
  v22 = v34;
  outlined init with copy of ReferenceResolutionClientProtocol(v34, v38);
  type metadata accessor for FeatureChecker();
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v23 = swift_allocObject();
  v24 = a5;

  *(v23 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v35[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v35[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v25 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  *(v23 + 17) = v25 & 1;
  v26 = type metadata accessor for ConversationBridge(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(a1, a2, v39, v33, v38, v36, v23, v29);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v15[3] = v30;
  return v15;
}

void *ConversationBridgeSPI.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v34 = a6;
  v33 = a4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, static Logger.conversationBridge);
  (*(v12 + 16))(v15, v16, v11);
  v17 = type metadata accessor for AsyncSerialQueue();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v20[2] = MEMORY[0x1E69E7CC0];
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v20[6] = v21;
  v20[7] = 0xD000000000000012;
  v20[8] = 0x80000001DCA696E0;
  (*(v12 + 32))(v20 + OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger, v15, v11);
  v6[2] = v20;
  v6[4] = a5;
  v6[5] = a1;
  v6[6] = a2;
  outlined init with copy of ReferenceResolutionClientProtocol(a3, v39);
  v22 = v34;
  outlined init with copy of ReferenceResolutionClientProtocol(v34, v38);
  type metadata accessor for FeatureChecker();
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v23 = swift_allocObject();
  v24 = a5;

  *(v23 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v35[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v35[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v25 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  *(v23 + 17) = v25 & 1;
  v26 = type metadata accessor for ConversationBridge(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(a1, a2, v39, v33, v38, v36, v23, v29);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v6[3] = v30;
  return v6;
}

void *ConversationBridge.__allocating_init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v15 = a7[3];
  v16 = a7[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  v18 = specialized ConversationBridge.__allocating_init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(a1, a2, a3, a4, a5, a6, v17, v7, v15, v16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v18;
}

uint64_t ConversationBridgeSPI.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ConversationBridgeSPI.handle(_:executionContextInfo:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  _StringGuts.grow(_:)(28);

  v10 = [a1 aceId];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v12 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v12);

  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v14 = *(*v9 + 208);

  v15 = a1;
  v16 = a2;
  sub_1DC680C50(a3);
  v14(0xD00000000000001ALL, 0x80000001DCA7EAE0, &async function pointer to partial apply for closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:), v13);
}

uint64_t closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:), v6, 0);
}

uint64_t closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:)()
{
  if (v0[8])
  {
    v1 = v0[9];
  }

  (*(**(v0[5] + 24) + 272))(v0[6], v0[7]);
  v2 = v0[1];

  return v2();
}

uint64_t ConversationBridgeSPI.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return v0;
}

uint64_t ConversationBridgeSPI.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t key path setter for ConversationBridge.runSiriKitExecutorProcessor : ConversationBridge(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for ConversationBridge.runSiriKitExecutorProcessor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t closure #1 in ConversationBridge.executionClient.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of ReferenceResolutionClientProtocol?(a1 + direct field offset for ConversationBridge.overrideExecutionClient, &v7, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  if (v8)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v7, v9);
    return outlined init with take of ReferenceResolutionClientProtocol(v9, a2);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v7, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = type metadata accessor for ConversationRuntimeClient();
    swift_allocObject();
    v6 = specialized ConversationRuntimeClient.init(onConnectionInterrupted:)(partial apply for closure #1 in closure #1 in ConversationBridge.executionClient.getter, v4);

    a2[3] = v5;
    a2[4] = &protocol witness table for ConversationRuntimeClient;
    *a2 = v6;
  }

  return result;
}

uint64_t closure #1 in closure #1 in ConversationBridge.executionClient.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);

    v9 = a1;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static MessageBusActor.shared;
    v11 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor);
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v7;
    v12[5] = a1;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter, v12);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter, v6, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter()
{
  (*(**(v0 + 40) + 1248))(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ConversationBridge.executionClient.setter(__int128 *a1)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, v4);
  v2 = direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v4, v1 + v2, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  return swift_endAccess();
}

void (*ConversationBridge.executionClient.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  ConversationBridge.executionClient.getter(v3);
  return ConversationBridge.executionClient.modify;
}

void ConversationBridge.executionClient.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(*a1, (v2 + 5));
    v4 = direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
    swift_beginAccess();
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)((v2 + 5), v3 + v4, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of ReferenceResolutionClientProtocol(*a1, (v2 + 5));
    v5 = direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
    swift_beginAccess();
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)((v2 + 5), v3 + v5, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
    swift_endAccess();
  }

  free(v2);
}

uint64_t NonRequestExecutionBridgeDelegate.__allocating_init(executionOutputSubmitter:userId:serviceHelper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  outlined init with take of UserID?(a2, v9 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId);
  *(v9 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_serviceHelper) = a3;
  return v9;
}

uint64_t ConversationBridge.nonRequestBridgePublisher.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher);
  *(v1 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher) = a1;
}

uint64_t (*ConversationBridge.nonRequestBridgePublisher.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationBridge.nonRequestBridgePublisher.getter();
  return ConversationBridge.nonRequestBridgePublisher.modify;
}

uint64_t ConversationBridge.nonRequestBridgePublisher.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher);
  *(v1 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher) = v2;
}

uint64_t ConversationBridge.networkAvailabilityProvider.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t key path setter for ConversationBridge.currentSessionId : ConversationBridge(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*(**a2 + 920))(v7);
}

uint64_t key path setter for ConversationBridge.sessionConfiguration : ConversationBridge(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  return (*(**a2 + 944))(v7);
}

uint64_t key path setter for ConversationBridge.sessionUserId : ConversationBridge(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return (*(**a2 + 992))(v7);
}

uint64_t ConversationBridge.isMUXEnabled.setter(char a1)
{
  v3 = direct field offset for ConversationBridge.isMUXEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void ConversationBridge.muxContextMessage.setter(uint64_t a1)
{
  v3 = direct field offset for ConversationBridge.muxContextMessage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for ConversationBridge.userSessionState : ConversationBridge(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserSessionState();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return (*(**a2 + 1088))(v8);
}

void *ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v15 = a7[3];
  v14 = a7[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(a1, a2, a3, a4, a5, a6, v20, v24[1], v15, v14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v22;
}

void *ConversationBridge.__allocating_init(name:messagePublisher:serviceHelper:conversationSessionsManaging:conversationClient:rrClient:correctionsPlatformClient:networkAvailabilityProvider:coreTelephonyServiceProvider:recentDialogTracker:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v116 = a8;
  v117 = a7;
  v118 = a5;
  v123 = a4;
  v110 = a1;
  v111 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v99 - v17);
  v108 = type metadata accessor for DispatchTimeInterval();
  v19 = *(v108 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Logger();
  v121 = *(v23 - 8);
  v122 = v23;
  v24 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v120 = &v99 - v27;
  v28 = *(v12 + 48);
  v29 = *(v12 + 52);
  v30 = swift_allocObject();
  v31 = (v30 + direct field offset for ConversationBridge.contextDonator);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v105 = v22;
  v106 = v18;
  v107 = v19;
  v119 = a12;
  v115 = a11;
  v114 = a10;
  v113 = a9;
  v32 = static DeviceContextHelper.sharedInstance;
  v31[3] = type metadata accessor for DeviceContextHelper();
  v31[4] = &protocol witness table for DeviceContextHelper;
  *v31 = v32;
  *(v30 + direct field offset for ConversationBridge.runSiriKitExecutorProcessor) = 0;
  *(v30 + direct field offset for ConversationBridge.isFirstRequestInSession) = 1;
  v33 = v30 + direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 4) = 0;
  *(v30 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher) = 0;
  v34 = v30 + direct field offset for ConversationBridge.rraasClient;
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v100 = v34;
  *(v34 + 4) = 0;
  v35 = v30 + direct field offset for ConversationBridge.correctionsPlatformClient;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v101 = v35;
  *(v35 + 4) = 0;
  v102 = direct field offset for ConversationBridge.networkAvailabilityProvider;
  *(v30 + direct field offset for ConversationBridge.networkAvailabilityProvider) = 0;
  v104 = direct field offset for ConversationBridge.coreTelephonyServiceProvider;
  *(v30 + direct field offset for ConversationBridge.coreTelephonyServiceProvider) = 0;
  v36 = direct field offset for ConversationBridge.currentSessionId;
  v37 = type metadata accessor for UUID();
  (*(*(v37 - 8) + 56))(v30 + v36, 1, 1, v37);
  v38 = direct field offset for ConversationBridge.sessionConfiguration;
  v39 = type metadata accessor for SessionConfiguration();
  (*(*(v39 - 8) + 56))(v30 + v38, 1, 1, v39);
  v40 = v30 + direct field offset for ConversationBridge.sessionState;
  *v40 = 0u;
  *(v40 + 1) = 0u;
  *(v40 + 4) = 0;
  v41 = direct field offset for ConversationBridge.sessionUserId;
  v42 = type metadata accessor for UserID();
  (*(*(v42 - 8) + 56))(v30 + v41, 1, 1, v42);
  v43 = direct field offset for ConversationBridge.isMUXEnabled;

  *(v30 + v43) = AFDeviceSupportsSiriMUX();
  *(v30 + direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled) = 2;
  *(v30 + direct field offset for ConversationBridge.muxContextMessage) = 0;
  v44 = direct field offset for ConversationBridge.userSessionState;
  v45 = *MEMORY[0x1E69D06E8];
  v46 = type metadata accessor for UserSessionState();
  (*(*(v46 - 8) + 104))(v30 + v44, v45, v46);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v47 = direct field offset for ConversationBridge.instrumentationUtil;
  *(v30 + direct field offset for ConversationBridge.instrumentationUtil) = static ConversationBridgeInstrumentationUtil.sharedInstance;
  v112 = a6;
  outlined init with copy of ReferenceResolutionClientProtocol(a6, v30 + direct field offset for ConversationBridge.overrideExecutionClient);
  swift_beginAccess();
  v48 = *(v30 + v43);
  outlined init with copy of ReferenceResolutionClientProtocol(a3, v129);
  v49 = type metadata accessor for FeatureChecker();
  v50 = swift_allocObject();

  v51 = v123;
  swift_unknownObjectRetain();
  *(v50 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v127 = &type metadata for IntelligenceFlowFeatureFlag;
  v128 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v52 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v126);
  *(v50 + 17) = v52 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v53 = swift_allocObject();
  v127 = v49;
  v128 = &protocol witness table for FeatureChecker;
  *&v126 = v50;
  type metadata accessor for ConcurrentTaskPool();
  v54 = swift_allocObject();
  v55 = MEMORY[0x1E69E7CC0];
  *(v54 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v54 + 24) = v56;
  *(v53 + 16) = v54;
  *(v53 + 88) = 0;
  *(v53 + 80) = 0;
  *(v53 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v55);
  *(v53 + 104) = 30000000000;
  *(v53 + 24) = v51;
  *(v53 + 72) = v48;
  swift_beginAccess();
  v57 = *(v53 + 80);
  *(v53 + 80) = 0;

  outlined init with take of ReferenceResolutionClientProtocol(v129, v53 + 32);
  outlined init with take of ReferenceResolutionClientProtocol(&v126, v53 + 112);
  v58 = direct field offset for ConversationBridge.executionOutputSubmitter;
  *(v30 + direct field offset for ConversationBridge.executionOutputSubmitter) = v53;
  type metadata accessor for PreExecutionDecisionMaker();
  *(v30 + direct field offset for ConversationBridge.decisionMaker) = swift_allocObject();
  v59 = [objc_opt_self() sharedPreferences];
  type metadata accessor for PreExecutionActionHandler();
  swift_getObjectType();
  v60 = *(v30 + v47);
  v61 = *(v30 + v58);
  type metadata accessor for PreExecutionDialogHandler();
  v62 = a3;
  v63 = swift_allocObject();
  *(v63 + 16) = v61;
  *(v63 + 24) = v59;
  swift_retain_n();
  v64 = v59;
  swift_unknownObjectRetain();
  v65 = v64;

  v66 = v60;
  v103 = v65;
  v67 = v62;
  *(v30 + direct field offset for ConversationBridge.preExecutionActionHandler) = specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(v51, v66, v61, v65, v63);
  v68 = v100;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v117, v68, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  swift_endAccess();
  v69 = v101;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v116, v69, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
  swift_endAccess();
  v70 = v102;
  swift_beginAccess();
  v71 = *(v30 + v70);
  *(v30 + v70) = v113;

  v72 = v104;
  swift_beginAccess();
  v73 = *(v72 + v30);
  *(v72 + v30) = v114;

  *(v30 + direct field offset for ConversationBridge.recentDialogTracker) = v115;
  outlined init with copy of ReferenceResolutionClientProtocol(v119, v30 + direct field offset for ConversationBridge.featureChecker);
  v104 = v67;
  outlined init with copy of ReferenceResolutionClientProtocol(v67, v129);
  outlined init with copy of ReferenceResolutionClientProtocol(v118, &v126);
  v74 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();

  if (v74 != -1)
  {
    swift_once();
  }

  v75 = v122;
  v76 = __swift_project_value_buffer(v122, static Logger.conversationBridge);
  v77 = *(v121 + 16);
  v77(v120, v76, v75);
  *(v30 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor) = 0;
  *(v30 + direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors) = MEMORY[0x1E69E7CC8];
  v78 = direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMR);
  v79 = swift_allocObject();
  *(v79 + 24) = 0;
  *(v79 + 16) = MEMORY[0x1E69E7CC0];
  *(v30 + v78) = v79;
  v80 = direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest;
  *(v30 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) = 1;
  *(v30 + v80) = 1;
  v81 = v106;
  static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()(v106);
  v82 = v107;
  v83 = v108;
  v84 = *(v107 + 48);
  if (v84(v81, 1, v108) == 1)
  {
    v85 = v105;
    *v105 = 500;
    (*(v82 + 104))(v85, *MEMORY[0x1E69E7F38], v83);
    v86 = v84(v81, 1, v83);
    v87 = v112;
    if (v86 != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    }
  }

  else
  {
    v85 = v105;
    (*(v82 + 32))(v105, v81, v83);
    v87 = v112;
  }

  (*(v82 + 32))(v30 + direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout, v85, v83);
  outlined init with copy of ReferenceResolutionClientProtocol(v129, v125);
  outlined init with copy of ReferenceResolutionClientProtocol(&v126, v124);
  v88 = v109;
  v89 = v122;
  v77(v109, v120, v122);
  v90 = v123;
  swift_unknownObjectRetain();
  v91 = MEMORY[0x1E69E7CC0];
  v30[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v30[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(v91);
  v30[17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC014CommandHandlerJ0CyAC0fI0C_GGTt0g5Tf4g_n(v91);
  v92 = v111;
  v30[2] = v110;
  v30[3] = v92;
  outlined init with take of ReferenceResolutionClientProtocol(v125, (v30 + 4));
  v30[9] = v90;
  outlined init with take of ReferenceResolutionClientProtocol(v124, (v30 + 10));
  (*(v121 + 32))(v30 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v88, v89);
  LODWORD(v91) = *(v30 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase);

  if (v91 == 1)
  {
    specialized ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessages(), 0);
  }

  specialized ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(specialized closure #2 in ConversationRequestAwareBridgeBase.registerMessages(), 0);
  swift_unknownObjectRelease();

  (*(v121 + 8))(v120, v122);
  __swift_destroy_boxed_opaque_existential_1Tm(&v126);
  __swift_destroy_boxed_opaque_existential_1Tm(v129);

  ConversationBridge.executionClient.getter(v129);
  outlined init with take of ReferenceResolutionClientProtocol(v129, &v126);
  v93 = direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(&v126, v30 + v93, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  swift_endAccess();
  v94 = v119;
  v95 = v119[3];
  v96 = v119[4];
  __swift_project_boxed_opaque_existential_1(v119, v95);
  v97 = (*(v96 + 8))(v95, v96);
  ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:)(v97 & 1);
  swift_unknownObjectRelease();

  outlined destroy of ReferenceResolutionClientProtocol?(v116, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v117, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  return v30;
}

void *ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:conversationClient:rrClient:correctionsPlatformClient:networkAvailabilityProvider:coreTelephonyServiceProvider:recentDialogTracker:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v13 = v12;
  v119 = a8;
  v120 = a7;
  v121 = a5;
  v126 = a4;
  v113 = a1;
  v114 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v102 - v18);
  v20 = type metadata accessor for DispatchTimeInterval();
  v110 = *(v20 - 8);
  v111 = v20;
  v21 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v108 = (&v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for Logger();
  v124 = *(v23 - 8);
  v125 = v23;
  v24 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v112 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v123 = &v102 - v27;
  v28 = (v12 + direct field offset for ConversationBridge.contextDonator);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v109 = v19;
  v122 = a12;
  v117 = a11;
  v116 = a10;
  v118 = a9;
  v29 = static DeviceContextHelper.sharedInstance;
  v28[3] = type metadata accessor for DeviceContextHelper();
  v28[4] = &protocol witness table for DeviceContextHelper;
  *v28 = v29;
  *(v13 + direct field offset for ConversationBridge.runSiriKitExecutorProcessor) = 0;
  *(v13 + direct field offset for ConversationBridge.isFirstRequestInSession) = 1;
  v30 = v13 + direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 4) = 0;
  *(v13 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher) = 0;
  v31 = v13 + direct field offset for ConversationBridge.rraasClient;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v103 = v31;
  *(v31 + 4) = 0;
  v32 = v13 + direct field offset for ConversationBridge.correctionsPlatformClient;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v104 = v32;
  *(v32 + 4) = 0;
  v105 = direct field offset for ConversationBridge.networkAvailabilityProvider;
  *(v13 + direct field offset for ConversationBridge.networkAvailabilityProvider) = 0;
  v106 = direct field offset for ConversationBridge.coreTelephonyServiceProvider;
  *(v13 + direct field offset for ConversationBridge.coreTelephonyServiceProvider) = 0;
  v33 = direct field offset for ConversationBridge.currentSessionId;
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 56))(v13 + v33, 1, 1, v34);
  v35 = direct field offset for ConversationBridge.sessionConfiguration;
  v36 = type metadata accessor for SessionConfiguration();
  (*(*(v36 - 8) + 56))(v13 + v35, 1, 1, v36);
  v37 = v13 + direct field offset for ConversationBridge.sessionState;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 4) = 0;
  v38 = direct field offset for ConversationBridge.sessionUserId;
  v39 = type metadata accessor for UserID();
  (*(*(v39 - 8) + 56))(v13 + v38, 1, 1, v39);
  v40 = direct field offset for ConversationBridge.isMUXEnabled;

  *(v13 + v40) = AFDeviceSupportsSiriMUX();
  *(v13 + direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled) = 2;
  *(v13 + direct field offset for ConversationBridge.muxContextMessage) = 0;
  v41 = direct field offset for ConversationBridge.userSessionState;
  v42 = *MEMORY[0x1E69D06E8];
  v43 = type metadata accessor for UserSessionState();
  (*(*(v43 - 8) + 104))(v13 + v41, v42, v43);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v44 = direct field offset for ConversationBridge.instrumentationUtil;
  *(v13 + direct field offset for ConversationBridge.instrumentationUtil) = static ConversationBridgeInstrumentationUtil.sharedInstance;
  v115 = a6;
  outlined init with copy of ReferenceResolutionClientProtocol(a6, v13 + direct field offset for ConversationBridge.overrideExecutionClient);
  swift_beginAccess();
  v45 = *(v13 + v40);
  outlined init with copy of ReferenceResolutionClientProtocol(a3, v132);
  v46 = type metadata accessor for FeatureChecker();
  v47 = swift_allocObject();

  v48 = v126;
  swift_unknownObjectRetain();
  *(v47 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v130 = &type metadata for IntelligenceFlowFeatureFlag;
  v131 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v49 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v129);
  *(v47 + 17) = v49 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v50 = swift_allocObject();
  v130 = v46;
  v131 = &protocol witness table for FeatureChecker;
  *&v129 = v47;
  type metadata accessor for ConcurrentTaskPool();
  v51 = swift_allocObject();
  v52 = MEMORY[0x1E69E7CC0];
  *(v51 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v51 + 24) = v53;
  *(v50 + 16) = v51;
  *(v50 + 88) = 0;
  *(v50 + 80) = 0;
  *(v50 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v52);
  *(v50 + 104) = 30000000000;
  *(v50 + 24) = v48;
  *(v50 + 72) = v45;
  swift_beginAccess();
  v54 = *(v50 + 80);
  *(v50 + 80) = 0;

  outlined init with take of ReferenceResolutionClientProtocol(v132, v50 + 32);
  outlined init with take of ReferenceResolutionClientProtocol(&v129, v50 + 112);
  v55 = direct field offset for ConversationBridge.executionOutputSubmitter;
  *(v13 + direct field offset for ConversationBridge.executionOutputSubmitter) = v50;
  type metadata accessor for PreExecutionDecisionMaker();
  *(v13 + direct field offset for ConversationBridge.decisionMaker) = swift_allocObject();
  v56 = [objc_opt_self() sharedPreferences];
  type metadata accessor for PreExecutionActionHandler();
  swift_getObjectType();
  v57 = *(v13 + v44);
  v58 = *(v13 + v55);
  type metadata accessor for PreExecutionDialogHandler();
  v59 = a3;
  v60 = swift_allocObject();
  *(v60 + 16) = v58;
  *(v60 + 24) = v56;
  swift_retain_n();
  v61 = v56;
  swift_unknownObjectRetain();
  v62 = v61;

  v63 = v58;
  v107 = v62;
  v64 = v59;
  *(v13 + direct field offset for ConversationBridge.preExecutionActionHandler) = specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(v48, v57, v63, v62, v60);
  v65 = v103;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v120, v65, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  swift_endAccess();
  v66 = v104;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v119, v66, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
  swift_endAccess();
  v67 = v105;
  swift_beginAccess();
  v68 = *(v13 + v67);
  *(v13 + v67) = v118;

  v69 = v106;
  swift_beginAccess();
  v70 = *(v13 + v69);
  *(v13 + v69) = v116;

  *(v13 + direct field offset for ConversationBridge.recentDialogTracker) = v117;
  outlined init with copy of ReferenceResolutionClientProtocol(v122, v13 + direct field offset for ConversationBridge.featureChecker);
  outlined init with copy of ReferenceResolutionClientProtocol(v64, v132);
  outlined init with copy of ReferenceResolutionClientProtocol(v121, &v129);
  v71 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();

  if (v71 != -1)
  {
    swift_once();
  }

  v72 = v125;
  v73 = __swift_project_value_buffer(v125, static Logger.conversationBridge);
  v74 = *(v124 + 16);
  v74(v123, v73, v72);
  *(v13 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor) = 0;
  *(v13 + direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors) = MEMORY[0x1E69E7CC8];
  v75 = direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMR);
  v76 = swift_allocObject();
  *(v76 + 24) = 0;
  *(v76 + 16) = MEMORY[0x1E69E7CC0];
  *(v13 + v75) = v76;
  v77 = direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest;
  *(v13 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) = 0;
  *(v13 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) = 1;
  *(v13 + v77) = 1;
  v78 = v109;
  static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()(v109);
  v79 = v110;
  v80 = v111;
  v81 = *(v110 + 48);
  if (v81(v78, 1, v111) == 1)
  {
    v106 = v74;
    v82 = v64;
    v83 = v108;
    *v108 = 500;
    (*(v79 + 104))(v83, *MEMORY[0x1E69E7F38], v80);
    v84 = v81(v78, 1, v80);
    v85 = v83;
    v64 = v82;
    v74 = v106;
    if (v84 != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    }
  }

  else
  {
    v85 = v108;
    (*(v79 + 32))(v108, v78, v80);
  }

  (*(v79 + 32))(v13 + direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout, v85, v80);
  outlined init with copy of ReferenceResolutionClientProtocol(v132, v128);
  outlined init with copy of ReferenceResolutionClientProtocol(&v129, v127);
  v86 = v112;
  v87 = v125;
  v74(v112, v123, v125);
  v88 = v126;
  swift_unknownObjectRetain();
  v89 = MEMORY[0x1E69E7CC0];
  v13[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v13[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(v89);
  v13[17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC014CommandHandlerJ0CyAC0fI0C_GGTt0g5Tf4g_n(v89);
  v90 = v114;
  v13[2] = v113;
  v13[3] = v90;
  outlined init with take of ReferenceResolutionClientProtocol(v128, (v13 + 4));
  v13[9] = v88;
  outlined init with take of ReferenceResolutionClientProtocol(v127, (v13 + 10));
  (*(v124 + 32))(v13 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v86, v87);
  if (*(v13 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) == 1)
  {
    v91 = *(*v13 + 464);
    started = type metadata accessor for StartRequestMessageBase();

    v91(specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessages(), 0, started);
  }

  else
  {
  }

  v93 = *(*v13 + 464);
  v94 = type metadata accessor for EndRequestMessageBase();
  v93(specialized closure #2 in ConversationRequestAwareBridgeBase.registerMessages(), 0, v94);
  swift_unknownObjectRelease();

  (*(v124 + 8))(v123, v125);
  __swift_destroy_boxed_opaque_existential_1Tm(&v129);
  __swift_destroy_boxed_opaque_existential_1Tm(v132);
  v95 = *(*v13 + 768);

  v95(v132, v96);
  (*(*v13 + 776))(v132);
  v97 = v122;
  v98 = v122[3];
  v99 = v122[4];
  __swift_project_boxed_opaque_existential_1(v122, v98);
  v100 = (*(v99 + 8))(v98, v99);
  ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:)(v100 & 1);
  swift_unknownObjectRelease();

  outlined destroy of ReferenceResolutionClientProtocol?(v119, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v121);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v97);
  return v13;
}

uint64_t ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:)(char a1)
{
  v2 = v1;
  v4 = *(*v1 + 288);
  v5 = type metadata accessor for SessionStartedMessage();
  v4(closure #1 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v5);
  v6 = type metadata accessor for SessionEndedMessage();
  v4(closure #2 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v6);
  v7 = type metadata accessor for MUXContextMessage();
  v4(closure #3 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v7);
  v8 = type metadata accessor for ExecutionSystemSwitchedMessage();
  v4(closure #4 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v8);
  v9 = *(*v1 + 464);
  v10 = type metadata accessor for FlowOutputResponseMessage();
  v9(closure #5 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v10);
  v11 = type metadata accessor for RequestContextMessage();
  v9(closure #6 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v11);
  v12 = type metadata accessor for AsrResultCandidateMessage();
  v9(closure #7 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v12);
  v13 = type metadata accessor for MUXAsrResultCandidateMessage();
  v9(closure #8 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v13);
  v14 = type metadata accessor for NLResultCandidateMessage();
  v9(closure #9 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v14);
  v15 = type metadata accessor for PommesResultCandidateMessage();
  v9(closure #10 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v15);
  v16 = type metadata accessor for ResultSelectedMessage();
  v9(closure #11 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v16);
  v17 = type metadata accessor for CancelRequestMessage();
  v9(closure #12 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v17);
  v18 = type metadata accessor for ExecuteNLOnServerMessage();
  v9(closure #13 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v18);
  started = type metadata accessor for StartTextRequestMessage();
  v9(closure #14 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, started);
  v20 = type metadata accessor for StartDirectActionRequestMessage();
  v9(closure #15 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v20);
  v21 = type metadata accessor for StartLocalRequestMessage();
  v9(closure #16 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v21);
  v22 = type metadata accessor for StartUnderstandingOnServerRequestMessage();
  v9(closure #17 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v22);
  v23 = type metadata accessor for StartUnderstandingOnServerTextRequestMessage();
  v9(closure #18 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v23);
  v24 = type metadata accessor for StartCandidateRequestMessage();
  v9(closure #19 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v24);
  v25 = type metadata accessor for TextBasedResultCandidateMessage();
  v9(closure #20 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v25);
  v26 = type metadata accessor for GestureBasedResultCandidateMessage();
  v9(closure #21 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v26);
  v27 = type metadata accessor for DirectActionResultCandidateMessage();
  v9(closure #22 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v27);
  v28 = type metadata accessor for NLRepetitionMessage();
  v9(closure #23 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v28);
  v29 = type metadata accessor for StartCorrectedSpeechRequestMessage();
  v9(closure #24 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v29);
  v30 = type metadata accessor for StartSpeechRequestMessage();
  v9(closure #25 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v30);
  v31 = type metadata accessor for StartChildTextRequestMessage();
  v9(closure #26 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v31);
  v32 = type metadata accessor for StartChildSpeechRequestMessage();
  v9(closure #27 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v32);
  v33 = type metadata accessor for StartIFRequestMessage();
  v9(closure #28 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v33);
  v34 = type metadata accessor for TRPCandidateRequestMessage();
  v9(closure #29 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v34);
  v35 = type metadata accessor for TextBasedTRPCandidateMessage();
  v9(closure #30 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v35);
  v36 = type metadata accessor for TTResponseMessage();
  v9(closure #31 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v36);
  v37 = type metadata accessor for RewrittenUtteranceCandidateMessage();
  v9(closure #32 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v37);
  v38 = type metadata accessor for NLRoutingDecisionMessage();
  v9(closure #33 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v38);
  v39 = type metadata accessor for SpeechStopDetectedMessage();
  v9(closure #34 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v39);
  v40 = type metadata accessor for MultiUserStoppedListeningForSpeechContinuationMessage();
  v9(closure #35 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v40);
  v41 = type metadata accessor for StoppedListeningForSpeechContinuationMessage();
  v9(closure #36 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v41);
  v42 = type metadata accessor for StoppedListeningForTextContinuationMessage();
  v9(closure #37 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v42);
  v43 = type metadata accessor for RunPommesResponseMessage();
  v9(closure #38 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v43);
  v44 = type metadata accessor for PommesTRPCandidateMessage();
  v9(closure #39 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v44);
  active = type metadata accessor for ActiveUserSessionDetectedMessage();
  v4(closure #40 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, active);
  if (a1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.conversationBridge);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DC659000, v47, v48, "AssistantEngine feature flag is enabled, listening for RunSiriKitExecutorMessage on message bus instead of RunSiriKitExecutor ACE command", v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    v50 = type metadata accessor for RunSiriKitExecutorMessage();
    v4(closure #41 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v50);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.conversationBridge);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DC659000, v52, v53, "AssistantEngine feature flag is disabled, listening for RunSiriKitExecutor ACE command instead of RunSiriKitExecutorMessage from message bus", v54, 2u);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    v55 = *(*v2 + 296);
    v56 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x1E69C7880);
    v55(closure #42 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v56);
  }

  v63 = *(*v2 + 296);
  v57 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDServerContextUpdateCandidate, 0x1E69C79A8);
  v63(closure #43 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v57);
  v58 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDFlowOutputCandidate, 0x1E69C7980);
  v63(closure #44 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v58);
  v59 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitPluginSignal, 0x1E69C78B0);
  v63(closure #45 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v59);
  v60 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitClearContext, 0x1E69C7898);
  v63(closure #46 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v60);
  v61 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDRemoteExecutionContextUpdate, 0x1E69C7998);

  return (v63)(closure #47 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v61);
}

uint64_t closure #1 in ConversationBridge.asyncInit()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for OSSignpostID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationBridge.asyncInit(), v8, 0);
}

uint64_t closure #1 in ConversationBridge.asyncInit()()
{
  v27 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[10];
  v3 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v4 = os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(*v2 + 816))(v4);
  v5 = v0[5];
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 2), &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (!v5)
  {
    v6 = v0[10];
    v7 = type metadata accessor for ReferenceResolutionClient();
    v8 = ReferenceResolutionClient.__allocating_init()();
    v25 = v7;
    v26 = MEMORY[0x1E69D01B0];
    v24[0] = v8;
    (*(*v6 + 824))(v24);
  }

  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v23 = v0[11];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v14 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v15 = type metadata accessor for CorrectionsPlatformClient();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = CorrectionsPlatformClient.init()();
  v25 = v15;
  v26 = &protocol witness table for CorrectionsPlatformClient;
  v24[0] = v18;
  (*(*v13 + 848))(v24);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v19 = SiriEnvironment.networkAvailability.getter();

  (*(*v13 + 872))(v19);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v20 = *(v12 + 8);
  v20(v11, v23);
  v20(v10, v23);
  v20(v9, v23);

  v21 = v0[1];

  return v21();
}

void ConversationBridge.handleMUXContextMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1DC659000, v13, v14, "ExecutionBridge received message: %@", v15, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  if ((*(*v2 + 1008))())
  {
    v18 = *(*v2 + 1064);
    v19 = v12;
    v18(v12);
    (*(**(v2 + direct field offset for ConversationBridge.executionOutputSubmitter) + 184))(v12);
    MUXContextMessage.userIdOfPrimaryUser()(v7);
    v20 = type metadata accessor for UserID();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v7, 1, v20) == 1)
    {
      (*(*v2 + 984))();
      if (v22(v7, 1, v20) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      }
    }

    else
    {
      (*(v21 + 32))(v10, v7, v20);
      (*(v21 + 56))(v10, 0, 1, v20);
    }

    (*(*v2 + 992))(v10);
  }

  else
  {
    v27 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v27, v23, "Ignoring MUXContextMessage since MUX is not enabled", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v25 = v27;
  }
}

void ConversationBridge.handleActiveUserSessionDetectedMessage(_:)(void *a1)
{
  v2 = type metadata accessor for UserSessionState();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v65 - v10;
  v11 = type metadata accessor for UserID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v65 - v18;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.conversationBridge);
  v22 = a1;
  v71 = v21;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v67 = v3;
    v27 = v2;
    v28 = v15;
    v29 = v12;
    v30 = v11;
    v31 = v26;
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v32 = v22;
    _os_log_impl(&dword_1DC659000, v23, v24, "#user-session: received message: %@", v25, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = v31;
    v11 = v30;
    v12 = v29;
    v15 = v28;
    v2 = v27;
    v3 = v67;
    MEMORY[0x1E12A2F50](v33, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  v34 = v72;
  (*(*v72 + 912))();
  v35 = type metadata accessor for UUID();
  v36 = (*(*(v35 - 8) + 48))(v19, 1, v35);
  v37 = outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v36 == 1)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "#user-session: cannot handle ActiveUserSessionDetectedMessage. currentSessionId is nil";
LABEL_14:
      _os_log_impl(&dword_1DC659000, v38, v39, v41, v40, 2u);
      MEMORY[0x1E12A2F50](v40, -1, -1);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v42 = (*(*v34 + 1056))(v37);
  if (!v42)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "#user-session: cannot handle ActiveUserSessionDetectedMessage. muxcontext hasn't arrived";
      goto LABEL_14;
    }

LABEL_15:

    return;
  }

  v43 = v42;
  v44 = v70;
  ActiveUserSessionDetectedMessage.userSessionState.getter();
  v45 = v69;
  UserSessionState.getActiveUserSharedUserId(fromMuxContextMessage:)();
  v46 = v3[1];
  v46(v44, v2);
  if ((*(v12 + 48))(v45, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v43;
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DC659000, v47, v48, "#user-session: cannot handle ActiveUserSessionDetectedMessage. No shared user id found.", v50, 2u);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v66 = v46;
    v67 = v43;
    (*(v12 + 32))(v15, v45, v11);
    ActiveUserSessionDetectedMessage.userSessionState.getter();
    v51 = v72;
    (*(*v72 + 1088))(v44);
    v52 = v68;
    (*(v12 + 16))(v68, v15, v11);
    (*(v12 + 56))(v52, 0, 1, v11);
    v53 = (*(*v51 + 1096))(v73);
    UserSessionState.activeUserSharedUserId.setter();
    v53(v73, 0);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v71 = v15;
      v69 = v11;
      v57 = v56;
      v58 = swift_slowAlloc();
      v73[0] = v58;
      *v57 = 136315138;
      v59 = v70;
      (*(*v51 + 1080))();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserSessionState and conformance UserSessionState, 255, MEMORY[0x1E69D06F8]);
      v60 = v55;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v66(v59, v2);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v73);

      *(v57 + 4) = v64;
      _os_log_impl(&dword_1DC659000, v54, v60, "#user-session: final user session state: %s.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1E12A2F50](v58, -1, -1);
      MEMORY[0x1E12A2F50](v57, -1, -1);

      (*(v12 + 8))(v71, v69);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }
  }
}

void ConversationBridge.handleExecutionSystemSwitchedMessage(_:)(void *a1)
{
  v2 = v1;
  v131 = a1;
  v3 = type metadata accessor for UserID();
  v120 = *(v3 - 8);
  v4 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v119 = &v116[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ExecutionSystemSwitchedMessage.SwitchType();
  v125 = *(v6 - 8);
  v126 = v6;
  v7 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v116[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UUID();
  v130 = *(v9 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v116[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v116[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v123 = &v116[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v116[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v116[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v116[-v26];
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v129 = __swift_project_value_buffer(v28, static Logger.conversationBridge);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v132 = v9;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v128 = v12;
    v34 = v3;
    v35 = v21;
    v36 = v2;
    v37 = v33;
    v135[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA7EB00, v135);
    _os_log_impl(&dword_1DC659000, v29, v30, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v38 = v37;
    v2 = v36;
    v21 = v35;
    v3 = v34;
    v12 = v128;
    MEMORY[0x1E12A2F50](v38, -1, -1);
    v39 = v32;
    v9 = v132;
    MEMORY[0x1E12A2F50](v39, -1, -1);
  }

  v40 = (*v2 + 912);
  v41 = *v40;
  v128 = v2;
  v122 = v41;
  v121 = v40;
  v41();
  SessionMessageBase.sessionId.getter();
  v42 = v130;
  (*(v130 + 56))(v24, 0, 1, v9);
  v43 = *(v12 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v27, v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v44 = v132;
  outlined init with copy of ReferenceResolutionClientProtocol?(v24, &v15[v43], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v45 = *(v42 + 48);
  if (v45(v15, 1, v44) == 1)
  {
    v118 = v3;
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v45(&v15[v43], 1, v44) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v46 = v128;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v15, v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v45(&v15[v43], 1, v44) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v130 + 8))(v21, v132);
LABEL_10:
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_11;
  }

  v118 = v3;
  v58 = v130;
  v59 = &v15[v43];
  v60 = v127;
  (*(v130 + 32))(v127, v59, v44);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
  v117 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v58 + 8);
  v61(v60, v44);
  outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v61(v21, v132);
  outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v46 = v128;
  if (v117)
  {
LABEL_15:
    v62 = v124;
    ExecutionSystemSwitchedMessage.switchType.getter();
    v64 = v125;
    v63 = v126;
    v65 = (*(v125 + 88))(v62, v126);
    v66 = *MEMORY[0x1E69D03D8];
    (*(v64 + 8))(v62, v63);
    if (v65 == v66)
    {
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_1DC659000, v67, v68, "Sending ClearExecutionContext to Conversation", v69, 2u);
        MEMORY[0x1E12A2F50](v69, -1, -1);
      }

      type metadata accessor for ClearExecutionContext();
      v70 = swift_allocObject();
      (*(*v46 + 768))(v135);
      v71 = v136;
      v72 = v137;
      __swift_project_boxed_opaque_existential_1(v135, v136);
      v73 = (*(*v46 + 792))();
      (*(v72 + 32))(v70, v73, &protocol witness table for NonRequestExecutionBridgeDelegate, v71, v72);

      __swift_destroy_boxed_opaque_existential_1Tm(v135);
      v74 = v46[14];
      __swift_project_boxed_opaque_existential_1(v46 + 10, v46[13]);
      v75 = v127;
      SessionMessageBase.sessionId.getter();
      dispatch thunk of ConversationSessionsManaging.conversationSessionState(forConversationSessionId:)();
      (*(v130 + 8))(v75, v132);
      if (v134)
      {
        outlined init with take of ReferenceResolutionClientProtocol(&v133, v135);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes22ConversationSessionKeyO_ypSgtGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes22ConversationSessionKeyO_ypSgtGMR);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR);
        v77 = *(*(v76 - 8) + 72);
        v78 = (*(*(v76 - 8) + 80) + 32) & ~*(*(v76 - 8) + 80);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1DCA696F0;
        v80 = v79 + v78;
        v81 = (v79 + v78 + *(v76 + 48));
        v82 = *MEMORY[0x1E69D07B8];
        v83 = type metadata accessor for ConversationSessionKey();
        v84 = *(*(v83 - 8) + 104);
        (v84)(v80, v82, v83);
        *v81 = 0u;
        v81[1] = 0u;
        v85 = (v80 + v77 + *(v76 + 48));
        v86 = *MEMORY[0x1E69D07C8];
        v84();
        *v85 = 0u;
        v85[1] = 0u;
        v87 = (v80 + 2 * v77 + *(v76 + 48));
        v88 = *MEMORY[0x1E69D07E8];
        v84();
        *v87 = 0u;
        v87[1] = 0u;
        v89 = (v80 + 3 * v77 + *(v76 + 48));
        v90 = *MEMORY[0x1E69D07F8];
        v84();
        *v89 = 0u;
        v89[1] = 0u;
        v91 = (v80 + 4 * v77 + *(v76 + 48));
        v92 = *MEMORY[0x1E69D07F0];
        v84();
        *v91 = 0u;
        v91[1] = 0u;
        v93 = (v80 + 5 * v77 + *(v76 + 48));
        v94 = *MEMORY[0x1E69D0800];
        v84();
        *v93 = 0u;
        v93[1] = 0u;
        v95 = (v80 + 6 * v77 + *(v76 + 48));
        v96 = *MEMORY[0x1E69D07D0];
        v84();
        *v95 = 0u;
        v95[1] = 0u;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_ypSgTt0g5Tf4g_n(v79);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        __swift_project_boxed_opaque_existential_1(v135, v136);
        v97 = v119;
        ExecutionSystemSwitchedMessage.userId.getter();
        dispatch thunk of ConversationSessionState.updateValues(data:userId:)();
        (*(v120 + 8))(v97, v118);

        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *&v133 = v101;
          *v100 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, 255, MEMORY[0x1E69D0820]);
          v102 = Dictionary.Keys.description.getter();
          v104 = v103;

          v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v133);

          *(v100 + 4) = v105;
          _os_log_impl(&dword_1DC659000, v98, v99, "Cleared following keys from ConversationSessionState: %s", v100, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v101);
          MEMORY[0x1E12A2F50](v101, -1, -1);
          MEMORY[0x1E12A2F50](v100, -1, -1);
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v135);
      }

      else
      {
        outlined destroy of ReferenceResolutionClientProtocol?(&v133, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&dword_1DC659000, v113, v114, "Could not find a ConversationSessionState for given sessionId", v115, 2u);
          MEMORY[0x1E12A2F50](v115, -1, -1);
        }
      }
    }

    return;
  }

LABEL_11:

  v47 = v131;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v135[0] = v51;
    *v50 = 136315394;
    v52 = v123;
    v122();
    v53 = v132;
    if (v45(v52, 1, v132))
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v54 = 0xE500000000000000;
      v55 = 0x3E6C696E3CLL;
      v56 = v130;
      v57 = v127;
    }

    else
    {
      v56 = v130;
      v57 = v127;
      (*(v130 + 16))(v127, v52, v53);
      outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v106 = UUID.uuidString.getter();
      v54 = v107;
      (*(v56 + 8))(v57, v53);
      v55 = v106;
    }

    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v135);

    *(v50 + 4) = v108;
    *(v50 + 12) = 2080;
    SessionMessageBase.sessionId.getter();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v110;
    (*(v56 + 8))(v57, v53);
    v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, v135);

    *(v50 + 14) = v112;
    _os_log_impl(&dword_1DC659000, v48, v49, "SessionId mismatch. CurrentSessionId: %s, executionSystemSwitchedMessage.sessionId: %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v51, -1, -1);
    MEMORY[0x1E12A2F50](v50, -1, -1);
  }
}

uint64_t ConversationBridge.createRunSiriKitExecutorProcessor(command:executionContext:reply:source:userId:sessionId:plannerInvocationId:)(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v110 = a6;
  v107 = a3;
  v106 = a2;
  v105 = a1;
  v97 = type metadata accessor for ConversationSessionKey();
  v94 = *(v97 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UserSessionState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v92 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v119 = &v92 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v115 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v117 = &v92 - v34;
  v118 = type metadata accessor for RequestType();
  v114 = *(v118 - 8);
  v35 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v113 = &v92 - v38;
  v104 = a5;
  v112 = v18;
  v111 = v19;
  v109 = a8;
  v108 = a4;
  if (a5 == 1)
  {

    v39 = MEMORY[0x1E69D0540];
    v40 = v110;
  }

  else
  {
    v40 = v110;
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v39 = MEMORY[0x1E69D0528];
    if (v41)
    {
      v39 = MEMORY[0x1E69D0540];
    }
  }

  v42 = v114;
  v43 = v113;
  v44 = v118;
  v45 = (*(v114 + 104))(v113, *v39, v118);
  v100 = *(v10 + direct field offset for ConversationBridge.executionOutputSubmitter);
  (*(*v10 + 768))(&v129, v45);
  v128 = 0;
  memset(v127, 0, sizeof(v127));
  v98 = *(v10 + direct field offset for ConversationBridge.instrumentationUtil);
  v103 = v10[9];
  v46 = *(v42 + 16);
  v96 = v42 + 16;
  v95 = v46;
  v46(v116, v43, v44);
  outlined init with copy of ReferenceResolutionClientProtocol?(v40, v117, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v47 = outlined init with copy of ReferenceResolutionClientProtocol?(a7, v119, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v48 = *(*v10 + 936);
  v102 = v26;
  v48(v47);
  v49 = outlined init with copy of ReferenceResolutionClientProtocol((v10 + 4), &v126);
  v99 = (*(*v10 + 1008))(v49);
  v50 = *(*v10 + 1080);
  v110 = v22;
  v51 = v50();
  v101 = (*(*v10 + 1056))(v51);
  v52 = *(*v10 + 960);
  v52(&v122);
  if (v123)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v122, v120);
    outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    __swift_project_boxed_opaque_existential_1(v120, v121);
    v53 = v94;
    v54 = v97;
    (*(v94 + 104))(v17, *MEMORY[0x1E69D07D8], v97);
    dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
    (*(v53 + 8))(v17, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    if (*(&v125 + 1))
    {
      v55 = type metadata accessor for UserID();
      v56 = v115;
      v57 = swift_dynamicCast();
      v58 = (*(*(v55 - 8) + 56))(v56, v57 ^ 1u, 1, v55);
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    v124 = 0u;
    v125 = 0u;
    v54 = v97;
    v53 = v94;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v124, &_sypSgMd, &_sypSgMR);
  v59 = type metadata accessor for UserID();
  v58 = (*(*(v59 - 8) + 56))(v115, 1, 1, v59);
LABEL_10:
  v97 = a9;
  (v52)(&v122, v58);
  if (!v123)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    v124 = 0u;
    v125 = 0u;
    goto LABEL_15;
  }

  outlined init with copy of ReferenceResolutionClientProtocol(&v122, v120);
  outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  __swift_project_boxed_opaque_existential_1(v120, v121);
  (*(v53 + 104))(v17, *MEMORY[0x1E69D0808], v54);
  dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
  (*(v53 + 8))(v17, v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v120);
  if (!*(&v125 + 1))
  {
LABEL_15:
    outlined destroy of ReferenceResolutionClientProtocol?(&v124, &_sypSgMd, &_sypSgMR);
    goto LABEL_16;
  }

  if (!swift_dynamicCast())
  {
LABEL_16:
    LODWORD(v94) = 0;
    goto LABEL_17;
  }

  LODWORD(v94) = v122;
LABEL_17:
  v60 = type metadata accessor for RunSiriKitExecutorProcessor();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  v63 = swift_allocObject();
  v64 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v93 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v65 = type metadata accessor for UserID();
  (*(*(v65 - 8) + 56))(v63 + v64, 1, 1, v65);
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall) = 0;
  v66 = (v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId);
  *v66 = 0;
  v66[1] = 0;
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished) = 0;
  v67 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo) = 0;
  v68 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v69 = swift_allocObject();
  *(v69 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  *(v63 + v68) = v69;
  *(v69 + 24) = v70;
  v71 = v105;
  v72 = v106;
  *(v63 + 16) = v105;
  *(v63 + 24) = v72;
  v73 = v107;
  v74 = v108;
  *(v63 + 32) = v107;
  *(v63 + 40) = v74;
  *(v63 + 48) = v100;
  outlined init with copy of ReferenceResolutionClientProtocol(&v129, v63 + 56);
  outlined init with copy of ReferenceResolutionClientProtocol?(v127, v63 + 96, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source) = v104;
  *(v63 + 152) = 0u;
  *(v63 + 136) = 0u;
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter) = 0;
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil) = v98;
  v75 = v103;
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestDispatcherServiceHelper) = v103;
  swift_beginAccess();
  *v66 = 0;
  v66[1] = 0;
  swift_beginAccess();
  *(v63 + v67) = 0;
  v95(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType, v116, v118);
  v76 = v93;
  swift_beginAccess();
  v77 = v71;
  v78 = v72;
  sub_1DC680C50(v73);

  swift_unknownObjectRetain();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v117, v63 + v76, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  swift_endAccess();
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold) = 0;
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol?(v119, v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v79 = v102;
  outlined init with copy of ReferenceResolutionClientProtocol?(v102, v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v80 = (v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId);
  v81 = v97;
  *v80 = v109;
  v80[1] = v81;
  outlined init with copy of ReferenceResolutionClientProtocol(&v126, v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher);
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_isMuxEnabled) = v99 & 1;
  v82 = v101;
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage) = v101;
  v83 = v115;
  outlined init with copy of ReferenceResolutionClientProtocol?(v115, v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v84 = v111;
  v85 = v110;
  v86 = v112;
  (*(v111 + 16))(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userSessionState, v110, v112);
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_remoteRequestWasMadeInSession) = v94;
  type metadata accessor for RunSiriKitExecutorProcessorExecutionDelegate();
  v87 = swift_allocObject();
  swift_weakInit();
  *(v87 + 24) = v75;
  *(v63 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate) = v87;
  v88 = v82;
  swift_unknownObjectRetain();

  RunSiriKitExecutorProcessorExecutionDelegate.setRSKEProcessor(rskeProcessor:)();

  (*(v84 + 8))(v85, v86);
  __swift_destroy_boxed_opaque_existential_1Tm(&v126);
  outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v119, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v117, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v89 = *(v114 + 8);
  v90 = v118;
  v89(v116, v118);
  outlined destroy of ReferenceResolutionClientProtocol?(v127, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(&v129);
  v89(v113, v90);
  outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return v63;
}

uint64_t ConversationBridge.handleFlowOutputCandidate(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v15 = *(*v7 + 488);
  v13 = type metadata accessor for OS_dispatch_queue(0, a5, a6);

  return v15(a1, a2, a3, a4, a7, 0, v13);
}

void ConversationBridge.handleSiriKitPluginSignal(_:_:_:)(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v77 = a4;
  v8 = type metadata accessor for UUID();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v13 = a1;
  v73 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v72 = a3;
    v16 = 0x3E6C696E3CLL;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v78 = v18;
    *v17 = 136315394;
    v19 = [v13 bundleIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v23 = 0xE500000000000000;
      v21 = 0x3E6C696E3CLL;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v78);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    v25 = [v13 refId];
    a3 = v72;
    if (v25)
    {
      v26 = v25;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v28, &v78);

    *(v17 + 14) = v29;
    _os_log_impl(&dword_1DC659000, v14, v15, "SiriKitPluginSignal received with bundleIdentifier: %s and refId: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  [v13 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitPluginSignal, 0x1E69C78B0);
  if (swift_dynamicCast())
  {
    v30 = v82;
    (*(*v5 + 768))(&v78);
    v31 = v80;
    v32 = v81;
    __swift_project_boxed_opaque_existential_1(&v78, v80);
    v33 = (*(*v5 + 792))();
    (*(v32 + 72))(v30, v33, &protocol witness table for NonRequestExecutionBridgeDelegate, v31, v32);

    __swift_destroy_boxed_opaque_existential_1Tm(&v78);
    v34 = v13;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&dword_1DC659000, v35, v36, "Successfully sent: %@", v37, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v38, -1, -1);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    if (a3)
    {
      v40 = objc_allocWithZone(MEMORY[0x1E69C7788]);

      v41 = [v40 init];
      v42 = v74;
      UUID.init()();
      v43 = UUID.uuidString.getter();
      v45 = v44;
      (*(v75 + 8))(v42, v76);
      v46 = MEMORY[0x1E12A1410](v43, v45);

      [v41 setAceId_];

      v47 = v41;
      v48 = [v34 aceId];
      [v47 setRefId_];

      a3(v47, 0);
      _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a3);
    }
  }

  else
  {
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v78 = 0x6F6E20646C756F43;
    v79 = 0xEF2079706F632074;
    v49 = [v13 debugDescription];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    MEMORY[0x1E12A1580](v50, v52);

    v53 = v79;
    if (a3)
    {
      v54 = a3;
      v55 = v78;
      v56 = objc_allocWithZone(MEMORY[0x1E69C7778]);

      v57 = [v56 init];
      v58 = v74;
      UUID.init()();
      v59 = UUID.uuidString.getter();
      v61 = v60;
      (*(v75 + 8))(v58, v76);
      v62 = MEMORY[0x1E12A1410](v59, v61);

      [v57 setAceId_];

      v63 = v57;
      v64 = [v13 aceId];
      [v63 setRefId_];

      [v63 setErrorCode_];
      v65 = MEMORY[0x1E12A1410](v55, v53);
      [v63 setReason_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = 0x6567617373654DLL;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = v55;
      *(inited + 56) = v53;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v67 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v68 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v70 = [v67 initWithDomain:v68 code:-1 userInfo:isa];

      v54(v63, v70);

      _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v54);
    }

    else
    {
    }
  }
}

void ConversationBridge.handleSiriKitClearContext(_:_:_:)(void *a1, uint64_t a2, void (*a3)(id, id))
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DC659000, v11, v12, "Received SiriKitClearContext. Ignoring since this command is deprecated in Siri X", v13, 2u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  if (a3)
  {
    v14 = objc_allocWithZone(MEMORY[0x1E69C7780]);

    v15 = [v14 init];
    UUID.init()();
    v16 = UUID.uuidString.getter();
    v18 = v17;
    (*(v6 + 8))(v9, v5);
    v19 = MEMORY[0x1E12A1410](v16, v18);

    [v15 setAceId_];

    v20 = v15;
    v21 = [a1 aceId];
    [v20 setRefId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 32) = 0x6567617373654DLL;
    v23 = inited + 32;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = 0xD00000000000002BLL;
    *(inited + 56) = 0x80000001DCA7EB30;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_sSS_yptMd, &_sSS_yptMR);
    v24 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v25 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = [v24 initWithDomain:v25 code:-1 userInfo:isa];

    a3(v20, v27);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a3);
  }
}

void ConversationBridge.handleRemoteExecutionContextUpdate(_:_:_:)(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v59 = a2;
  v9 = type metadata accessor for UUID();
  v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationBridge);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DC659000, v13, v14, "Received RemoteExecutionContextUpdate command", v15, 2u);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v16 = [a1 refId];
  if (v16)
  {
  }

  else
  {
    v56 = a3;
    v17 = (*(*v5 + 376))();
    if (v17)
    {
      v55 = v9;
      v19 = *(v17 + 80);
      v18 = *(v17 + 88);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v54 = v19;
        v23 = v22;
        v24 = swift_slowAlloc();
        v53 = a4;
        v25 = v24;
        v60 = v24;
        *v23 = 136315138;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v18, &v60);
        _os_log_impl(&dword_1DC659000, v20, v21, "RemoteExecutionContextUpdate refId is nil. Setting to current rootRequestId: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        v26 = v25;
        a4 = v53;
        MEMORY[0x1E12A2F50](v26, -1, -1);
        v27 = v23;
        v19 = v54;
        MEMORY[0x1E12A2F50](v27, -1, -1);
      }

      v9 = v55;
      v28 = MEMORY[0x1E12A1410](v19, v18);

      [a1 setRefId_];

      a3 = v56;
    }

    else
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      v31 = os_log_type_enabled(v29, v30);
      a3 = v56;
      if (v31)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DC659000, v29, v30, "RemoteExecutionContextUpdate refId is nil, and there is no currentRequestProcessor, so we don't know the current refId.", v32, 2u);
        MEMORY[0x1E12A2F50](v32, -1, -1);
      }
    }
  }

  v33 = *(*v5 + 480);
  v34 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDRemoteExecutionContextUpdate, 0x1E69C7998);
  if ((v33(a1, v59, a3, a4, _s14SiriKitRuntime37ServerFallbackCapableRequestProcessorCSo32SARDRemoteExecutionContextUpdateCSo09AFCommandJ4InfoCSo13SABaseCommandCSgs5Error_pSgIeghgg_SgIegggg_Iggo_ACxAgMRlzCRi_zRi0_zlyAEIsegggg_Ieggo_TR04_s14ab42Runtime18ConversationBridgeC34handleRemotejk33UpdateyySo010SARDRemotehiJ0C_So09m2H4n6CySo13op6CSg_s5q47_pSgtYbcSgtFyAF_AhNtAA15MessageBusActorCYccAA37defgH6Ccfu0_Tf3npf_n, 0, v34) & 1) == 0)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DC659000, v35, v36, "Could not handle RemoteExecutionContextUpdate", v37, 2u);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    if (a3)
    {
      v38 = objc_allocWithZone(MEMORY[0x1E69C7780]);

      v39 = [v38 init];
      v40 = v57;
      UUID.init()();
      v41 = UUID.uuidString.getter();
      v43 = v42;
      (*(v58 + 8))(v40, v9);
      v44 = MEMORY[0x1E12A1410](v41, v43);

      [v39 setAceId_];

      v45 = v39;
      v46 = [a1 aceId];
      [v45 setRefId_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = 0x6567617373654DLL;
      v48 = inited + 32;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = 0xD00000000000002DLL;
      *(inited + 56) = 0x80000001DCA7EB60;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(v48, &_sSS_yptMd, &_sSS_yptMR);
      v49 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v50 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v52 = [v49 initWithDomain:v50 code:-1 userInfo:isa];

      a3(v45, v52);
      _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a3);
    }
  }
}

void ConversationBridge.handleExecutionServiceRuntimeError(error:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v32);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v6, v7, "Runtime error occurred in Execution service: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v16 = (*(*v2 + 376))(v14, v15);
  if (v16)
  {
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "Dispatching runtime error to the request processor", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v22 = _convertErrorToNSError(_:)();
    (*(*v18 + 1168))(v22, v23);
  }

  else
  {
    v24 = (*(*v2 + 720))(0, v17);
    if (v24)
    {
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1DC659000, v26, v27, "Dispatching runtime error to RSKE processor", v28, 2u);
        MEMORY[0x1E12A2F50](v28, -1, -1);
      }

      v22 = _convertErrorToNSError(_:)();
      (*(*v25 + 528))(v22, v29);
    }

    else
    {
      v22 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v22, v30, "There is no request processor to send the runtime error to", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }
    }
  }
}

void closure #1 in static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:)(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, void *))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = a3;
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    v15 = [v9 debugDescription];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v23);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v20 = Optional.debugDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v23);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v11, v12, "Sent %s with error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  if (a4)
  {
    a4(a1, a2);
  }
}

uint64_t ConversationBridge.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for ConversationBridge.featureChecker));
  v1 = *(v0 + direct field offset for ConversationBridge.decisionMaker);

  v2 = *(v0 + direct field offset for ConversationBridge.preExecutionActionHandler);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for ConversationBridge.contextDonator));
  v3 = *(v0 + direct field offset for ConversationBridge.instrumentationUtil);

  v4 = *(v0 + direct field offset for ConversationBridge.executionOutputSubmitter);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.overrideExecutionClient, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  v5 = *(v0 + direct field offset for ConversationBridge.runSiriKitExecutorProcessor);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.$__lazy_storage_$_executionClient, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  v6 = *(v0 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.rraasClient, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.correctionsPlatformClient, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
  v7 = *(v0 + direct field offset for ConversationBridge.networkAvailabilityProvider);

  v8 = *(v0 + direct field offset for ConversationBridge.coreTelephonyServiceProvider);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.sessionConfiguration, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.sessionUserId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);

  v9 = direct field offset for ConversationBridge.userSessionState;
  v10 = type metadata accessor for UserSessionState();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(v0 + direct field offset for ConversationBridge.recentDialogTracker);
}

char *ConversationBridge.deinit()
{
  v0 = specialized ConversationMessageDispatchingBridgeBase.deinit();
  v1 = *&v0[direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor];

  v2 = *&v0[direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors];

  v3 = *&v0[direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase];

  v4 = direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout;
  v5 = type metadata accessor for DispatchTimeInterval();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[direct field offset for ConversationBridge.featureChecker]);
  v6 = *&v0[direct field offset for ConversationBridge.decisionMaker];

  v7 = *&v0[direct field offset for ConversationBridge.preExecutionActionHandler];

  __swift_destroy_boxed_opaque_existential_1Tm(&v0[direct field offset for ConversationBridge.contextDonator]);
  v8 = *&v0[direct field offset for ConversationBridge.instrumentationUtil];

  v9 = *&v0[direct field offset for ConversationBridge.executionOutputSubmitter];

  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.overrideExecutionClient], &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  v10 = *&v0[direct field offset for ConversationBridge.runSiriKitExecutorProcessor];

  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.$__lazy_storage_$_executionClient], &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  v11 = *&v0[direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher];

  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.rraasClient], &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.correctionsPlatformClient], &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
  v12 = *&v0[direct field offset for ConversationBridge.networkAvailabilityProvider];

  v13 = *&v0[direct field offset for ConversationBridge.coreTelephonyServiceProvider];

  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.currentSessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.sessionState], &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.sessionUserId], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);

  v14 = direct field offset for ConversationBridge.userSessionState;
  v15 = type metadata accessor for UserSessionState();
  (*(*(v15 - 8) + 8))(&v0[v14], v15);
  v16 = *&v0[direct field offset for ConversationBridge.recentDialogTracker];

  return v0;
}

uint64_t ConversationBridge.__deallocating_deinit()
{
  v0 = *ConversationBridge.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t NonRequestExecutionBridgeDelegate.init(executionOutputSubmitter:userId:serviceHelper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  outlined init with take of UserID?(a2, v3 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId);
  *(v3 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_serviceHelper) = a3;
  return v3;
}

void NonRequestExecutionBridgeDelegate.submit(executionOutput:completion:)(void *a1, void (*a2)(void, id), uint64_t a3)
{
  v49 = a3;
  v50 = a2;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v42[-v6];
  v45 = type metadata accessor for RequestType();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42[-v13];
  v15 = type metadata accessor for UserID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42[-v21];
  v46 = v3;
  outlined init with copy of ReferenceResolutionClientProtocol?(v3 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId, v14, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v23 = v50;
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.conversationBridge);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DC659000, v25, v26, "UserID is nil. Cannot process ExecutionOutput", v27, 2u);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v29 = MEMORY[0x1E12A1410](0x6920444972657355, 0xED00006C696E2073);
    v30 = [v28 initWithDomain:v29 code:-1 userInfo:0];

    v23(0, v30);
  }

  else
  {
    v44 = *(v16 + 32);
    v44(v22, v14, v15);
    v31 = v45;
    (*(v7 + 104))(v10, *MEMORY[0x1E69D0538], v45);
    v32 = (*(v16 + 16))(v19, v22, v15);
    v33 = v48;
    v43 = (*((*MEMORY[0x1E69E7D40] & *v48) + 0xB8))(v32);
    updated = type metadata accessor for ConversationContextUpdateMetadata();
    v35 = *(updated + 48);
    v36 = *(updated + 52);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    (*(v7 + 32))(v37 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v10, v31);
    *(v37 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = 0;
    v44((v37 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId), v19, v15);
    *(v37 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v43 & 1;
    *(v37 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = 0;
    *(v37 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = 0;
    v38 = *(v46 + 16);
    v39 = type metadata accessor for UUID();
    memset(v51, 0, sizeof(v51));
    v52 = 0;
    v40 = v47;
    (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
    v41 = *(*v38 + 296);

    v41(v33, 0, 0, 0, 0, v51, 0, v37, 0, 0, v40, 0, 0, v50, v49);

    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    (*(v16 + 8))(v22, v15);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.close(withExecutionOutput:errorString:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v15);
    _os_log_impl(&dword_1DC659000, v9, v10, "There was an error while running execution: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v13 = *(*v4 + 112);

  return v13(a1, destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0);
}

void NonRequestExecutionBridgeDelegate.close(withExecutionOutput:errorString:shouldFailRequest:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001DCA7EC40, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Ignoring %s outside of a request", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

void NonRequestExecutionBridgeDelegate.fallbackToServer(forResultCandidateId:serverFallbackReason:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Server-fallback not supported outside of a request", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

Swift::Void __swiftcall NonRequestExecutionBridgeDelegate.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v2, "Fallback to info domain not yet supported: Incomplete feature work", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }
}

void NonRequestExecutionBridgeDelegate.fallbackToIntelligenceFlow(prescribedTool:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Fallback to IntelligenceFlow not yet supported: Incomplete feature work", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

Swift::Void __swiftcall NonRequestExecutionBridgeDelegate.fallbackToPeer()()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Fallback to Peer not yet supported: Incomplete feature work", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

void NonRequestExecutionBridgeDelegate.willRedirectToSiriX(rcId:context:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Fallback to SiriX not supported outside of a request", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.prepareForAudioHandoff(completion:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "prepareForAudioHandoff not supported outside of a request", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1(0);
}

uint64_t NonRequestExecutionBridgeDelegate.prepareForAudioHandoffFailed(completion:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "prepareForAudioHandoffFailed not supported outside of a request", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1();
}

uint64_t NonRequestExecutionBridgeDelegate.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "fetchContext() not supported outside of a request", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  return a3(0);
}

uint64_t NonRequestExecutionBridgeDelegate.fetchSpeechInfo(reply:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001DCA7EC80, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: There is no SpeechInfo outside of a request", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1(0);
}

void NonRequestExecutionBridgeDelegate.flowPluginWillExecute(flowPluginInfo:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Ignoring FlowPluginInfo outside of a request", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.acquireConversationUserInput(forUserId:requestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x80000001DCA7ECA0, &v12);
    _os_log_impl(&dword_1DC659000, v7, v8, "Ignoring %s outside of a request", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  return a5(0);
}

uint64_t NonRequestExecutionBridgeDelegate.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000060, 0x80000001DCA7ECE0, &v14);
    _os_log_impl(&dword_1DC659000, v9, v10, "Ignoring %s outside of a request", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  return a7(0);
}

Swift::Void __swiftcall NonRequestExecutionBridgeDelegate.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001DCA7ED50, &v6);
    _os_log_impl(&dword_1DC659000, oslog, v2, "Ignoring %s outside of a request", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1E12A2F50](v4, -1, -1);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.fetchRecentDialogs(reply:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001DCA7ED80, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "Ignoring %s outside of a request", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1(MEMORY[0x1E69E7CC0]);
}

Swift::Void __swiftcall NonRequestExecutionBridgeDelegate.actionCandidatesGenerated(_:rcId:)(Swift::OpaquePointer _, Swift::String rcId)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001DCA7EDA0, &v7);
    _os_log_impl(&dword_1DC659000, oslog, v3, "Ignoring %s outside of a request", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }
}

void NonRequestExecutionBridgeDelegate.willExecute(executionInputInfo:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001DCA7EDD0, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Ignoring %s outside of a request", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.fetchSelfReflectionDecision(reply:)(uint64_t (*a1)(char *))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x80000001DCA7EE00, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "Ignoring %s outside of a request", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v9 = 2;
  return a1(&v9);
}

void NonRequestExecutionBridgeDelegate.postToMessageBus(message:completion:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001DCA7EE30, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Ignoring %s outside of a request", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_serviceHelper);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NonRequestExecutionBridgeDelegate.__deallocating_deinit()
{
  v1 = v0[2];

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_serviceHelper);
  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag()
{
  result = lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag;
  if (!lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag;
  if (!lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag);
  }

  return result;
}

void specialized static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v37 = a3;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x1E69C7BB8]) init];
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v12 + 8))(v15, v11);
  v20 = MEMORY[0x1E12A1410](v17, v19);

  [v16 setAceId_];

  v21 = v16;
  if (a5)
  {
    v22 = MEMORY[0x1E12A1410](a4, a5);
  }

  else
  {
    v22 = 0;
  }

  [v16 setRefId_];

  v23 = MEMORY[0x1E12A1410](a1, a2);
  [v16 setRequestHandlingStatus_];

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.conversationBridge);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    _os_log_impl(&dword_1DC659000, v25, v26, "Sending ShowRequestHandlingStatus with status: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1E12A2F50](v28, -1, -1);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  v29 = swift_allocObject();
  v31 = v35;
  v30 = v36;
  v29[2] = v16;
  v29[3] = v31;
  v29[4] = v30;
  aBlock[4] = partial apply for closure #1 in static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:);
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_2;
  v32 = _Block_copy(aBlock);
  v33 = v16;
  sub_1DC680C50(v31);

  [v37 handleCommand:v33 completion:v32];
  _Block_release(v32);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void *specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v113 = a6;
  v116 = a4;
  v115 = a3;
  v106 = a2;
  v105 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v111 = &v97 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v97 - v16);
  v103 = type metadata accessor for DispatchTimeInterval();
  v102 = *(v103 - 8);
  v18 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v100 = (&v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = type metadata accessor for Logger();
  v118 = *(v107 - 8);
  v20 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v97 - v23;
  v110 = type metadata accessor for OSSignpostID();
  v109 = *(v110 - 8);
  v24 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FeatureChecker();
  v125[3] = v26;
  v125[4] = &protocol witness table for FeatureChecker;
  v108 = a7;
  v125[0] = a7;
  v27 = (a8 + direct field offset for ConversationBridge.contextDonator);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v101 = v17;
  v114 = a5;
  v28 = static DeviceContextHelper.sharedInstance;
  v27[3] = type metadata accessor for DeviceContextHelper();
  v27[4] = &protocol witness table for DeviceContextHelper;
  *v27 = v28;
  *(a8 + direct field offset for ConversationBridge.runSiriKitExecutorProcessor) = 0;
  *(a8 + direct field offset for ConversationBridge.isFirstRequestInSession) = 1;
  v29 = a8 + direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  *(a8 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher) = 0;
  v30 = a8 + direct field offset for ConversationBridge.rraasClient;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0;
  v31 = a8 + direct field offset for ConversationBridge.correctionsPlatformClient;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  *(v31 + 4) = 0;
  *(a8 + direct field offset for ConversationBridge.networkAvailabilityProvider) = 0;
  *(a8 + direct field offset for ConversationBridge.coreTelephonyServiceProvider) = 0;
  v32 = direct field offset for ConversationBridge.currentSessionId;
  v33 = type metadata accessor for UUID();
  (*(*(v33 - 8) + 56))(a8 + v32, 1, 1, v33);
  v34 = direct field offset for ConversationBridge.sessionConfiguration;
  v35 = type metadata accessor for SessionConfiguration();
  (*(*(v35 - 8) + 56))(a8 + v34, 1, 1, v35);
  v36 = a8 + direct field offset for ConversationBridge.sessionState;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 4) = 0;
  v37 = direct field offset for ConversationBridge.sessionUserId;
  v38 = type metadata accessor for UserID();
  (*(*(v38 - 8) + 56))(a8 + v37, 1, 1, v38);
  v39 = direct field offset for ConversationBridge.isMUXEnabled;

  *(a8 + v39) = AFDeviceSupportsSiriMUX();
  *(a8 + direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled) = 2;
  *(a8 + direct field offset for ConversationBridge.muxContextMessage) = 0;
  v40 = direct field offset for ConversationBridge.userSessionState;
  v41 = *MEMORY[0x1E69D06E8];
  v42 = type metadata accessor for UserSessionState();
  (*(*(v42 - 8) + 104))(a8 + v40, v41, v42);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v43 = direct field offset for ConversationBridge.instrumentationUtil;
  *(a8 + direct field offset for ConversationBridge.instrumentationUtil) = static ConversationBridgeInstrumentationUtil.sharedInstance;
  outlined init with copy of ReferenceResolutionClientProtocol(v125, a8 + direct field offset for ConversationBridge.featureChecker);
  v44 = one-time initialization token for executor;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v46 = MEMORY[0x1E69E7CC0];
  v99 = v45;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  swift_beginAccess();
  LOBYTE(v45) = *(a8 + v39);
  v47 = v115;
  outlined init with copy of ReferenceResolutionClientProtocol(v115, &v124);
  v48 = swift_allocObject();
  v49 = v116;
  swift_unknownObjectRetain();
  *(v48 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v122 = &type metadata for IntelligenceFlowFeatureFlag;
  v123 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v50 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v121);
  *(v48 + 17) = v50 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v51 = swift_allocObject();
  v122 = v26;
  v123 = &protocol witness table for FeatureChecker;
  *&v121 = v48;
  type metadata accessor for ConcurrentTaskPool();
  v52 = swift_allocObject();
  *(v52 + 16) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v52 + 24) = v53;
  *(v51 + 16) = v52;
  *(v51 + 88) = 0;
  *(v51 + 80) = 0;
  *(v51 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v46);
  *(v51 + 104) = 30000000000;
  *(v51 + 24) = v49;
  *(v51 + 72) = v45;
  swift_beginAccess();
  v54 = *(v51 + 80);
  *(v51 + 80) = 0;

  outlined init with take of ReferenceResolutionClientProtocol(&v124, v51 + 32);
  outlined init with take of ReferenceResolutionClientProtocol(&v121, v51 + 112);
  v55 = direct field offset for ConversationBridge.executionOutputSubmitter;
  *(a8 + direct field offset for ConversationBridge.executionOutputSubmitter) = v51;
  type metadata accessor for PreExecutionDecisionMaker();
  *(a8 + direct field offset for ConversationBridge.decisionMaker) = swift_allocObject();
  v56 = [objc_opt_self() sharedPreferences];
  type metadata accessor for PreExecutionActionHandler();
  swift_getObjectType();
  v57 = *(a8 + v43);
  v58 = *(a8 + v55);
  type metadata accessor for PreExecutionDialogHandler();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = v56;
  swift_retain_n();
  v60 = v56;
  swift_unknownObjectRetain();
  v61 = v60;

  v98 = v61;
  *(a8 + direct field offset for ConversationBridge.preExecutionActionHandler) = specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(v49, v57, v58, v61, v59);
  v62 = a8 + direct field offset for ConversationBridge.overrideExecutionClient;
  *v62 = 0u;
  *(v62 + 1) = 0u;
  *(v62 + 4) = 0;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v113, v30, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  swift_endAccess();
  v63 = type metadata accessor for RecentDialogTracker();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  *(a8 + direct field offset for ConversationBridge.recentDialogTracker) = RecentDialogTracker.init(timeProvider:)(closure #1 in RecentDialogTracker.init(), 0);
  outlined init with copy of ReferenceResolutionClientProtocol(v47, &v124);
  outlined init with copy of ReferenceResolutionClientProtocol(v114, &v121);
  v66 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();
  if (v66 != -1)
  {
    swift_once();
  }

  v67 = v107;
  v68 = __swift_project_value_buffer(v107, static Logger.conversationBridge);
  v69 = *(v118 + 16);
  v69(v117, v68, v67);
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor) = 0;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors) = MEMORY[0x1E69E7CC8];
  v70 = direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMR);
  v71 = swift_allocObject();
  *(v71 + 24) = 0;
  *(v71 + 16) = MEMORY[0x1E69E7CC0];
  *(a8 + v70) = v71;
  v72 = direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) = 0;
  v73 = &unk_1EE14F000;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) = 1;
  *(a8 + v72) = 1;
  v74 = v101;
  static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()(v101);
  v75 = v102;
  v76 = *(v102 + 48);
  v77 = v103;
  if (v76(v74, 1, v103) == 1)
  {
    v78 = v100;
    *v100 = 500;
    (*(v75 + 104))(v78, *MEMORY[0x1E69E7F38], v77);
    v79 = v78;
    v73 = &unk_1EE14F000;
    if (v76(v74, 1, v77) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    }
  }

  else
  {
    v79 = v100;
    (*(v75 + 32))(v100, v74, v77);
  }

  (*(v75 + 32))(a8 + direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout, v79, v77);
  outlined init with copy of ReferenceResolutionClientProtocol(&v124, v120);
  outlined init with copy of ReferenceResolutionClientProtocol(&v121, v119);
  v80 = v104;
  v69(v104, v117, v67);
  v81 = v116;
  swift_unknownObjectRetain();
  v82 = MEMORY[0x1E69E7CC0];
  a8[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a8[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(v82);
  a8[17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC014CommandHandlerJ0CyAC0fI0C_GGTt0g5Tf4g_n(v82);
  v83 = v106;
  a8[2] = v105;
  a8[3] = v83;
  outlined init with take of ReferenceResolutionClientProtocol(v120, (a8 + 4));
  a8[9] = v81;
  outlined init with take of ReferenceResolutionClientProtocol(v119, (a8 + 10));
  (*(v118 + 32))(a8 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v80, v67);
  if (*(a8 + v73[341]) == 1)
  {
    v84 = *(*a8 + 464);
    started = type metadata accessor for StartRequestMessageBase();

    v84(specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessages(), 0, started);
  }

  else
  {
  }

  v86 = *(*a8 + 464);
  v87 = type metadata accessor for EndRequestMessageBase();
  v86(specialized closure #2 in ConversationRequestAwareBridgeBase.registerMessages(), 0, v87);
  swift_unknownObjectRelease();

  (*(v118 + 8))(v117, v67);
  __swift_destroy_boxed_opaque_existential_1Tm(&v121);
  __swift_destroy_boxed_opaque_existential_1Tm(&v124);
  v88 = *(v108 + 16);

  ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:)(v88);
  v89 = type metadata accessor for TaskPriority();
  v90 = v111;
  (*(*(v89 - 8) + 56))(v111, 1, 1, v89);
  v91 = one-time initialization token for shared;

  if (v91 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v92 = static MessageBusActor.shared;
  v93 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor);
  v94 = swift_allocObject();
  v94[2] = v92;
  v94[3] = v93;
  v94[4] = a8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v90, &closure #1 in ConversationBridge.asyncInit()partial apply, v94);

  static os_signpost_type_t.end.getter();
  v95 = v112;
  os_signpost(_:dso:log:name:signpostID:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v113, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v114);
  __swift_destroy_boxed_opaque_existential_1Tm(v115);
  (*(v109 + 8))(v95, v110);
  __swift_destroy_boxed_opaque_existential_1Tm(v125);
  return a8;
}

void *specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v125 = a6;
  v126 = a5;
  v127 = a4;
  v124 = a3;
  v116 = a2;
  v115 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v123 = &v106 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v106 - v17);
  v19 = type metadata accessor for DispatchTimeInterval();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v109 = (&v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = type metadata accessor for Logger();
  v129 = *(v117 - 8);
  v23 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v128 = &v106 - v26;
  v122 = type metadata accessor for OSSignpostID();
  v121 = *(v122 - 8);
  v27 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136[3] = a9;
  v136[4] = a10;
  v119 = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v136);
  v31 = *(*(a9 - 8) + 32);
  v114 = boxed_opaque_existential_0;
  v118 = a9;
  v31(boxed_opaque_existential_0, a7, a9);
  v32 = (a8 + direct field offset for ConversationBridge.contextDonator);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v111 = v20;
  v112 = v19;
  v33 = static DeviceContextHelper.sharedInstance;
  v32[3] = type metadata accessor for DeviceContextHelper();
  v32[4] = &protocol witness table for DeviceContextHelper;
  *v32 = v33;
  *(a8 + direct field offset for ConversationBridge.runSiriKitExecutorProcessor) = 0;
  *(a8 + direct field offset for ConversationBridge.isFirstRequestInSession) = 1;
  v34 = a8 + direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 4) = 0;
  *(a8 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher) = 0;
  v35 = a8 + direct field offset for ConversationBridge.rraasClient;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v35 + 32) = 0;
  v36 = a8 + direct field offset for ConversationBridge.correctionsPlatformClient;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 4) = 0;
  *(a8 + direct field offset for ConversationBridge.networkAvailabilityProvider) = 0;
  *(a8 + direct field offset for ConversationBridge.coreTelephonyServiceProvider) = 0;
  v37 = direct field offset for ConversationBridge.currentSessionId;
  v38 = type metadata accessor for UUID();
  (*(*(v38 - 8) + 56))(a8 + v37, 1, 1, v38);
  v39 = direct field offset for ConversationBridge.sessionConfiguration;
  v40 = type metadata accessor for SessionConfiguration();
  (*(*(v40 - 8) + 56))(a8 + v39, 1, 1, v40);
  v41 = a8 + direct field offset for ConversationBridge.sessionState;
  *v41 = 0u;
  *(v41 + 1) = 0u;
  *(v41 + 4) = 0;
  v42 = direct field offset for ConversationBridge.sessionUserId;
  v43 = type metadata accessor for UserID();
  (*(*(v43 - 8) + 56))(a8 + v42, 1, 1, v43);
  v44 = direct field offset for ConversationBridge.isMUXEnabled;

  *(a8 + v44) = AFDeviceSupportsSiriMUX();
  *(a8 + direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled) = 2;
  *(a8 + direct field offset for ConversationBridge.muxContextMessage) = 0;
  v45 = direct field offset for ConversationBridge.userSessionState;
  v46 = *MEMORY[0x1E69D06E8];
  v47 = type metadata accessor for UserSessionState();
  (*(*(v47 - 8) + 104))(a8 + v45, v46, v47);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v110 = v18;
  v48 = direct field offset for ConversationBridge.instrumentationUtil;
  *(a8 + direct field offset for ConversationBridge.instrumentationUtil) = static ConversationBridgeInstrumentationUtil.sharedInstance;
  outlined init with copy of ReferenceResolutionClientProtocol(v136, a8 + direct field offset for ConversationBridge.featureChecker);
  v49 = one-time initialization token for executor;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v51 = MEMORY[0x1E69E7CC0];
  v108 = v50;
  v120 = v29;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  swift_beginAccess();
  v52 = *(a8 + v44);
  v53 = v124;
  outlined init with copy of ReferenceResolutionClientProtocol(v124, &v135);
  v54 = type metadata accessor for FeatureChecker();
  v55 = swift_allocObject();
  v56 = v127;
  swift_unknownObjectRetain();
  *(v55 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v133 = &type metadata for IntelligenceFlowFeatureFlag;
  v134 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v57 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v132);
  *(v55 + 17) = v57 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v58 = swift_allocObject();
  v133 = v54;
  v134 = &protocol witness table for FeatureChecker;
  *&v132 = v55;
  type metadata accessor for ConcurrentTaskPool();
  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v59 + 24) = v60;
  *(v58 + 16) = v59;
  *(v58 + 88) = 0;
  *(v58 + 80) = 0;
  *(v58 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v51);
  *(v58 + 104) = 30000000000;
  *(v58 + 24) = v56;
  *(v58 + 72) = v52;
  swift_beginAccess();
  v61 = *(v58 + 80);
  *(v58 + 80) = 0;

  outlined init with take of ReferenceResolutionClientProtocol(&v135, v58 + 32);
  outlined init with take of ReferenceResolutionClientProtocol(&v132, v58 + 112);
  v62 = direct field offset for ConversationBridge.executionOutputSubmitter;
  *(a8 + direct field offset for ConversationBridge.executionOutputSubmitter) = v58;
  type metadata accessor for PreExecutionDecisionMaker();
  *(a8 + direct field offset for ConversationBridge.decisionMaker) = swift_allocObject();
  v63 = [objc_opt_self() sharedPreferences];
  type metadata accessor for PreExecutionActionHandler();
  swift_getObjectType();
  v64 = *(a8 + v48);
  v65 = *(a8 + v62);
  type metadata accessor for PreExecutionDialogHandler();
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = v63;
  swift_retain_n();
  v67 = v63;
  swift_unknownObjectRetain();
  v68 = v67;

  v107 = v68;
  *(a8 + direct field offset for ConversationBridge.preExecutionActionHandler) = specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(v56, v64, v65, v68, v66);
  v69 = a8 + direct field offset for ConversationBridge.overrideExecutionClient;
  *v69 = 0u;
  *(v69 + 1) = 0u;
  *(v69 + 4) = 0;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v125, v35, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  swift_endAccess();
  v70 = type metadata accessor for RecentDialogTracker();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  *(a8 + direct field offset for ConversationBridge.recentDialogTracker) = RecentDialogTracker.init(timeProvider:)(closure #1 in RecentDialogTracker.init(), 0);
  outlined init with copy of ReferenceResolutionClientProtocol(v53, &v135);
  outlined init with copy of ReferenceResolutionClientProtocol(v126, &v132);
  v73 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();
  if (v73 != -1)
  {
    swift_once();
  }

  v74 = v117;
  v75 = __swift_project_value_buffer(v117, static Logger.conversationBridge);
  v76 = *(v129 + 16);
  v76(v128, v75, v74);
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor) = 0;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors) = MEMORY[0x1E69E7CC8];
  v77 = direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMR);
  v78 = swift_allocObject();
  *(v78 + 24) = 0;
  *(v78 + 16) = MEMORY[0x1E69E7CC0];
  *(a8 + v77) = v78;
  v79 = direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) = 0;
  v80 = &unk_1EE14F000;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) = 1;
  *(a8 + v79) = 1;
  v81 = v110;
  static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()(v110);
  v82 = v111;
  v83 = *(v111 + 48);
  v84 = v112;
  if (v83(v81, 1, v112) == 1)
  {
    v85 = v109;
    *v109 = 500;
    (*(v82 + 104))(v85, *MEMORY[0x1E69E7F38], v84);
    v86 = v85;
    v80 = &unk_1EE14F000;
    if (v83(v81, 1, v84) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    }
  }

  else
  {
    v86 = v109;
    (*(v82 + 32))(v109, v81, v84);
  }

  (*(v82 + 32))(a8 + direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout, v86, v84);
  outlined init with copy of ReferenceResolutionClientProtocol(&v135, v131);
  outlined init with copy of ReferenceResolutionClientProtocol(&v132, v130);
  v87 = v113;
  v76(v113, v128, v74);
  v88 = v127;
  swift_unknownObjectRetain();
  v89 = MEMORY[0x1E69E7CC0];
  a8[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a8[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(v89);
  a8[17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC014CommandHandlerJ0CyAC0fI0C_GGTt0g5Tf4g_n(v89);
  v90 = v116;
  a8[2] = v115;
  a8[3] = v90;
  outlined init with take of ReferenceResolutionClientProtocol(v131, (a8 + 4));
  a8[9] = v88;
  outlined init with take of ReferenceResolutionClientProtocol(v130, (a8 + 10));
  (*(v129 + 32))(a8 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v87, v74);
  if (*(a8 + v80[341]) == 1)
  {
    v91 = *(*a8 + 464);
    started = type metadata accessor for StartRequestMessageBase();

    v91(specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessages(), 0, started);
  }

  else
  {
  }

  v93 = *(*a8 + 464);
  v94 = type metadata accessor for EndRequestMessageBase();
  v93(specialized closure #2 in ConversationRequestAwareBridgeBase.registerMessages(), 0, v94);
  swift_unknownObjectRelease();

  (*(v129 + 8))(v128, v74);
  __swift_destroy_boxed_opaque_existential_1Tm(&v132);
  __swift_destroy_boxed_opaque_existential_1Tm(&v135);
  v95 = v119;
  v96 = *(v119 + 8);

  v97 = v96(v118, v95);
  ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:)(v97 & 1);
  v98 = type metadata accessor for TaskPriority();
  v99 = v123;
  (*(*(v98 - 8) + 56))(v123, 1, 1, v98);
  v100 = one-time initialization token for shared;

  if (v100 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v101 = static MessageBusActor.shared;
  v102 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor);
  v103 = swift_allocObject();
  v103[2] = v101;
  v103[3] = v102;
  v103[4] = a8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v99, &async function pointer to partial apply for closure #1 in ConversationBridge.asyncInit(), v103);

  static os_signpost_type_t.end.getter();
  v104 = v120;
  os_signpost(_:dso:log:name:signpostID:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v125, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v126);
  __swift_destroy_boxed_opaque_existential_1Tm(v124);
  (*(v121 + 8))(v104, v122);
  __swift_destroy_boxed_opaque_existential_1Tm(v136);
  return a8;
}

void *specialized ConversationBridge.__allocating_init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a5;
  v25 = a6;
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ConversationBridge(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 16))(v18, a7, a9);
  return specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(a1, a2, a3, a4, v24, v25, v18, v22, a9, a10);
}

uint64_t partial apply for closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:)(v2, v3, v4, v5, v6);
}

uint64_t outlined init with take of UserID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ConversationBridge()
{
  _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for SessionConfiguration?, MEMORY[0x1E69D07A0]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UserID?, MEMORY[0x1E69D08C8]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = type metadata accessor for UserSessionState();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void _s10Foundation4UUIDVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for NonRequestExecutionBridgeDelegate()
{
  _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UserID?, MEMORY[0x1E69D08C8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14SiriKitRuntime24RemoteConversationClientC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
LABEL_12:
    while (1)
    {
      result = MEMORY[0x1E12A1FE0](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();
      v11 = *(v9 + 112);
      v12 = *(v9 + 120);
      String.hash(into:)();
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v6 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = *(*(v3 + 48) + 8 * i);
        if (*(v16 + 112) != *(v9 + 112) || *(v16 + 120) != *(v9 + 120))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }

        goto LABEL_12;
      }

      *(v6 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + 8 * i) = v9;
      v18 = *(v3 + 16);
      v8 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v8)
      {
        goto LABEL_40;
      }

      *(v3 + 16) = v19;
      if (v7 == v5)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = 0;
    v21 = v1 + 32;
    v22 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v20 != v22)
    {
      v23 = *(v21 + 8 * v20);
      v24 = *(v3 + 40);
      Hasher.init(_seed:)();
      v25 = *(v23 + 112);
      v26 = *(v23 + 120);

      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = ~(-1 << *(v3 + 32));
      for (j = result & v27; ; j = (j + 1) & v27)
      {
        v29 = *(v6 + 8 * (j >> 6));
        if (((1 << j) & v29) == 0)
        {
          break;
        }

        v30 = *(*(v3 + 48) + 8 * j);
        if (*(v30 + 112) != *(v23 + 112) || *(v30 + 120) != *(v23 + 120))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      *(v6 + 8 * (j >> 6)) = (1 << j) | v29;
      *(*(v3 + 48) + 8 * j) = v23;
      v32 = *(v3 + 16);
      v8 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v8)
      {
        goto LABEL_41;
      }

      *(v3 + 16) = v33;
LABEL_26:
      if (++v20 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E20_Nlu_External_ParserV0I10IdentifierO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriNLUTypes0C20_Nlu_External_ParserV0G10IdentifierOGMd, &_ss11_SetStorageCy12SiriNLUTypes0C20_Nlu_External_ParserV0G10IdentifierOGMR);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, 255, MEMORY[0x1E69D0990]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, 255, MEMORY[0x1E69D0990]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t partial apply for specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationBridge.asyncInit()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationBridge.asyncInit()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter(a1, v4, v5, v7, v6);
}

unint64_t ConversationOutputError.rawValue.getter(char a1)
{
  result = 0x5464696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0x636E61436E727574;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 6:
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 9:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x426567617373656DLL;
      break;
    case 14:
      result = 0x7553746F4E697061;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000019;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationOutputError(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ConversationOutputError.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ConversationOutputError.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationOutputError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationOutputError.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationOutputError()
{
  ConversationOutputError.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationOutputError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationOutputError.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationOutputError@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized ConversationOutputError.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationOutputError@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationOutputError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t specialized ConversationOutputError.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for ConversationOutputError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationOutputError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ConversationBridgeFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static ConversationBridgeFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static ConversationBridgeFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for ConversationBridgeFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

uint64_t *ConversationBridgeFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static ConversationBridgeFeatureFlag.forceEnabled;
}

uint64_t static ConversationBridgeFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

Swift::Int ConversationBridgeFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t *ConversationBridgeInstrumentationUtil.sharedInstance.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  return &static ConversationBridgeInstrumentationUtil.sharedInstance;
}

uint64_t one-time initialization function for sharedInstance()
{
  v0 = type metadata accessor for FeatureChecker();
  v1 = swift_allocObject();
  *(v1 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v7 = &type metadata for IntelligenceFlowFeatureFlag;
  v8 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v6);
  *(v1 + 17) = v2 & 1;
  v7 = v0;
  v8 = &protocol witness table for FeatureChecker;
  *&v6 = v1;
  type metadata accessor for ConversationBridgeInstrumentationUtil();
  v3 = swift_allocObject();
  v4 = objc_opt_self();
  v3[2] = [v4 sharedStream];
  type metadata accessor for InstrumentationUtil();
  v3[3] = swift_allocObject();
  v3[7] = &type metadata for ComponentIdGeneratorImpl;
  v3[8] = &protocol witness table for ComponentIdGeneratorImpl;
  v3[9] = [v4 sharedAnalytics];
  result = outlined init with take of ReferenceResolutionClientProtocol(&v6, (v3 + 10));
  static ConversationBridgeInstrumentationUtil.sharedInstance = v3;
  return result;
}

uint64_t static ConversationBridgeInstrumentationUtil.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

void *ConversationBridgeInstrumentationUtil.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  outlined init with take of ReferenceResolutionClientProtocol(a3, (v10 + 4));
  v10[9] = a4;
  outlined init with take of ReferenceResolutionClientProtocol(a5, (v10 + 10));
  return v10;
}

void *ConversationBridgeInstrumentationUtil.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  outlined init with take of ReferenceResolutionClientProtocol(a3, (v5 + 4));
  v5[9] = a4;
  outlined init with take of ReferenceResolutionClientProtocol(a5, (v5 + 10));
  return v5;
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logExecutionRequestEnded(rootRequestId:requestId:resultCandidateId:)(Swift::String rootRequestId, Swift::String requestId, Swift::String resultCandidateId)
{
  object = resultCandidateId._object;
  countAndFlagsBits = resultCandidateId._countAndFlagsBits;
  v48 = requestId;
  v6 = rootRequestId._object;
  v7 = rootRequestId._countAndFlagsBits;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = [objc_allocWithZone(MEMORY[0x1E69CF338]) init];
  if (v21)
  {
    v50 = v21;
    [v21 setExists:1];
    v22 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(v7, v6, countAndFlagsBits, object, 1);
    if (v22)
    {
      v23 = v22;
      v24 = [objc_allocWithZone(MEMORY[0x1E69CF330]) init];
      if (v24)
      {
        v25 = v24;
        UUID.init(uuidString:)();
        v26 = v15;
        v46 = *(v15 + 48);
        if (v46(v13, 1, v14) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {
          (*(v15 + 32))(v20, v13, v14);
          v35 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v26 = v15;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v37 = [v35 initWithNSUUID_];

          [v25 setTrpId_];
          (*(v15 + 8))(v20, v14);
        }

        v38 = v3[13];
        v39 = v3[14];
        v40 = v3;
        __swift_project_boxed_opaque_existential_1(v3 + 10, v38);
        if ((*(v39 + 16))(v38, v39))
        {
          v41 = v49;
          UUID.init(uuidString:)();
          if (v46(v41, 1, v14) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v42 = v47;
            (*(v26 + 32))(v47, v41, v14);
            v43 = objc_allocWithZone(MEMORY[0x1E69CF638]);
            v44 = UUID._bridgeToObjectiveC()().super.isa;
            v45 = [v43 initWithNSUUID_];

            [v25 setSubRequestId_];
            (*(v26 + 8))(v42, v14);
          }
        }

        [v25 setEnded_];
        [v23 setExecutionBridgeContext_];
        [v40[2] emitMessage_];

        return;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.conversationBridge);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DC659000, v31, v32, "Failed to create ORCHSchemaORCHExecutionBridgeContext event", v33, 2u);
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationBridge);
    v50 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v50, v28, "Failed to create ORCHSchemaORCHExecutionEnded event", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }
  }

  v34 = v50;
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logExecutionRequestFailed(error:rootRequestId:requestId:resultCandidateId:)(Swift::String error, Swift::String rootRequestId, Swift::String requestId, Swift::String_optional resultCandidateId)
{
  object = resultCandidateId.value._object;
  countAndFlagsBits = resultCandidateId.value._countAndFlagsBits;
  v53 = requestId;
  v6 = rootRequestId._object;
  v7 = rootRequestId._countAndFlagsBits;
  v8 = error._object;
  v9 = error._countAndFlagsBits;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = type metadata accessor for UUID();
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  v22 = [objc_allocWithZone(MEMORY[0x1E69CF340]) init];
  if (v22)
  {
    v57 = v22;
    v23 = MEMORY[0x1E12A1410](v9, v8);
    [v57 setErrorString:v23];

    v24 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(v7, v6, countAndFlagsBits, object, 1);
    if (v24)
    {
      v25 = v24;
      v26 = [objc_allocWithZone(MEMORY[0x1E69CF330]) init];
      if (v26)
      {
        v27 = v26;
        v28 = v16;
        v29 = v55;
        if (object)
        {
          UUID.init(uuidString:)();
          v30 = v56;
          if ((*(v56 + 48))(v15, 1, v28) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            (*(v30 + 32))(v21, v15, v28);
            v39 = objc_allocWithZone(MEMORY[0x1E69CF638]);
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v41 = [v39 initWithNSUUID_];

            [v27 setTrpId_];
            (*(v30 + 8))(v21, v28);
          }
        }

        v42 = v29[13];
        v43 = v29[14];
        v44 = v29;
        __swift_project_boxed_opaque_existential_1(v29 + 10, v42);
        if ((*(v43 + 16))(v42, v43))
        {
          v45 = v54;
          UUID.init(uuidString:)();
          v46 = v56;
          if ((*(v56 + 48))(v45, 1, v28) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v47 = v52;
            (*(v46 + 32))(v52, v45, v28);
            v48 = objc_allocWithZone(MEMORY[0x1E69CF638]);
            v49 = UUID._bridgeToObjectiveC()().super.isa;
            v50 = [v48 initWithNSUUID_];

            [v27 setSubRequestId_];
            (*(v46 + 8))(v47, v28);
          }
        }

        [v27 setFailed_];
        [v25 setExecutionBridgeContext_];
        [v44[2] emitMessage_];

        return;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.conversationBridge);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1DC659000, v35, v36, "Failed to create ORCHSchemaORCHExecutionBridgeContext event", v37, 2u);
        MEMORY[0x1E12A2F50](v37, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.conversationBridge);
    v57 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DC659000, v57, v32, "Failed to create ORCHSchemaORCHExecutionFailed event", v33, 2u);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }
  }

  v38 = v57;
}

uint64_t ConversationBridgeInstrumentationUtil.logRequestCancelledForMitigation(requestId:mitigationSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*v3 + 184))();
  v7 = *(*v3 + 192);

  return v7(a3, a1, a2);
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logRequestCancelled(requestId:)(Swift::String requestId)
{
  v2 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(requestId._countAndFlagsBits, requestId._object, 0, 0, 0);
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69CF3C0]) init];
    if (v4)
    {
      v18 = v4;
      v5 = [objc_allocWithZone(MEMORY[0x1E69CF3B8]) init];
      if (v5)
      {
        v6 = v5;
        [v5 setReason:1];
        [v18 setCancelled:v6];
        [v3 setRequestContext_];
        [*(v1 + 16) emitMessage_];

        v7 = v6;
        goto LABEL_20;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.conversationBridge);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1DC659000, v15, v16, "Failed to create ORCHSchemaORCHRequestCancelled event", v17, 2u);
        MEMORY[0x1E12A2F50](v17, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.conversationBridge);
      v18 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1DC659000, v18, v12, "Failed to create ORCHSchemaORCHRequestContext event", v13, 2u);
        MEMORY[0x1E12A2F50](v13, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.conversationBridge);
    v18 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v18, v9, "Failed to create wrapper for ORCHSchemaORCHRequestCancelled event", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }

  v7 = v18;
LABEL_20:
}

void ConversationBridgeInstrumentationUtil.logRequestMitigated(mitigationSource:requestId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(a2, a3, 0, 0, 0);
  if (v8)
  {
    v9 = v8;
    oslog = [objc_allocWithZone(MEMORY[0x1E69CF3C8]) init];
    [oslog setMitigationSource:a1];
    [v9 setRequestMitigated_];
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
      _os_log_impl(&dword_1DC659000, v11, v12, "Sending SELF RequestMitigated event for requestId %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    [*(v4 + 16) emitMessage_];
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v16, "Could not build wrapper when logging requestMitigatedEvent", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }
  }
}

void ConversationBridgeInstrumentationUtil.logServerFallbackInitiated(requestId:resultCandidateId:contextId:fallbackReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v70 = a5;
  v13 = type metadata accessor for ServerFallbackReason();
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v71 = v15;
  v72 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v62 - v18;
  v75 = type metadata accessor for UUID();
  v69 = *(v75 - 8);
  v20 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v68 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = [objc_allocWithZone(MEMORY[0x1E69CF3F0]) init];
  if (v24)
  {
    v25 = *(*v7 + 34);
    v76 = a4;
    v77 = v24;
    v65 = a6;
    v26 = v25(a6);
    [v77 setFallbackReason:v26];
    v66 = a3;
    v27 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(a1, a2, a3, v76, 1);
    if (v27)
    {
      v67 = v27;
      v28 = [objc_allocWithZone(MEMORY[0x1E69CF3E0]) init];
      if (v28)
      {
        v29 = v28;
        v63 = a1;
        v64 = a2;
        v30 = objc_allocWithZone(MEMORY[0x1E69CF638]);
        v31 = v70;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v33 = [v30 initWithNSUUID_];

        [v29 setContextId_];
        [v29 setStartedOrChanged_];
        v34 = v66;
        UUID.init(uuidString:)();
        v35 = v69;
        v36 = v75;
        if ((*(v69 + 48))(v19, 1, v75) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {
          (*(v35 + 32))(v23, v19, v36);
          v45 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v46 = v36;
          v47 = UUID._bridgeToObjectiveC()().super.isa;
          v48 = [v45 initWithNSUUID_];

          v36 = v46;
          [v29 setTrpId_];

          (*(v35 + 8))(v23, v46);
        }

        v49 = v65;
        v50 = v67;
        [v67 setServerFallbackContext_];
        [v7[2] emitMessage_];
        v65 = v29;
        if (one-time initialization token for insightRequestSummaryLogger != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for InsightRequestSummaryLogger();
        v62 = __swift_project_value_buffer(v51, static Logger.insightRequestSummaryLogger);
        v52 = v68;
        (*(v35 + 16))(v68, v31, v36);
        v53 = v35;
        v54 = v72;
        v55 = v73;
        v56 = v74;
        (*(v73 + 16))(v72, v49, v74);
        v57 = (*(v53 + 80) + 48) & ~*(v53 + 80);
        v58 = (v20 + *(v55 + 80) + v57) & ~*(v55 + 80);
        v59 = swift_allocObject();
        v60 = v64;
        *(v59 + 2) = v63;
        *(v59 + 3) = v60;
        *(v59 + 4) = v34;
        v61 = v75;
        *(v59 + 5) = v76;
        (*(v53 + 32))(&v59[v57], v52, v61);
        (*(v55 + 32))(&v59[v58], v54, v56);

        InsightRequestSummaryLogger.emitDebug(_:)(partial apply for implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackInitiated(requestId:resultCandidateId:contextId:fallbackReason:));

        return;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.conversationBridge);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1DC659000, v41, v42, "Failed to create ORCHSchemaORCHServerFallbackContext event", v43, 2u);
        MEMORY[0x1E12A2F50](v43, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.conversationBridge);
    v77 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DC659000, v77, v38, "Failed to create ORCHSchemaORCHServerFallbackInitiated event", v39, 2u);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }
  }

  v44 = v77;
}

uint64_t implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackInitiated(requestId:resultCandidateId:contextId:fallbackReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DCA69C00;
  *(v8 + 32) = 0x614E656764697262;
  *(v8 + 40) = 0xEA0000000000656DLL;
  *(v8 + 48) = 0xD000000000000012;
  *(v8 + 56) = 0x80000001DCA7F2A0;
  *(v8 + 64) = 0xD000000000000012;
  *(v8 + 72) = 0x80000001DCA7F2C0;
  *(v8 + 80) = 0xD00000000000001ALL;
  *(v8 + 88) = 0x80000001DCA7B760;
  *(v8 + 96) = 0x4974736575716572;
  *(v8 + 104) = 0xE900000000000064;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  *(v8 + 128) = 0xD000000000000011;
  *(v8 + 136) = 0x80000001DCA7AB40;
  *(v8 + 144) = a3;
  *(v8 + 152) = a4;
  *(v8 + 160) = 0xD000000000000017;
  *(v8 + 168) = 0x80000001DCA7F2E0;

  *(v8 + 176) = UUID.uuidString.getter();
  *(v8 + 184) = v9;
  *(v8 + 192) = 0xD000000000000014;
  *(v8 + 200) = 0x80000001DCA7AB00;
  *(v8 + 208) = ServerFallbackReason.rawValue.getter();
  *(v8 + 216) = v10;
  return v8;
}

void ConversationBridgeInstrumentationUtil.logServerFallbackResponseReceived(requestId:contextId:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v52 - v12;
  v14 = type metadata accessor for UUID();
  v59 = *(v14 - 8);
  isa = v59[8].isa;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v52 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x1E69CF3F8]) init];
  if (v19)
  {
    v55 = a3;
    v58 = v19;
    [v19 setExists:1];
    v20 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(a1, a2, a4, a5, 1);
    if (v20)
    {
      v21 = v20;
      v54 = v14;
      v22 = [objc_allocWithZone(MEMORY[0x1E69CF3E0]) init];
      if (v22)
      {
        v23 = v22;
        v24 = objc_allocWithZone(MEMORY[0x1E69CF638]);
        v52 = a2;
        v53 = a1;
        v25 = v21;
        v26 = v24;
        v27 = UUID._bridgeToObjectiveC()().super.isa;
        v28 = [v26 initWithNSUUID_];

        [v23 setContextId_];
        v29 = a4;
        v30 = v59;
        if (a5)
        {
          UUID.init(uuidString:)();
          v31 = v54;
          if ((v30[6].isa)(v13, 1, v54) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            (v30[4].isa)(v18, v13, v31);
            v40 = objc_allocWithZone(MEMORY[0x1E69CF638]);
            v41 = UUID._bridgeToObjectiveC()().super.isa;
            v42 = [v40 initWithNSUUID_];

            [v23 setTrpId_];
            (v59[1].isa)(v18, v31);
          }
        }

        v43 = v29;
        [v23 setEnded_];
        [v25 setServerFallbackContext_];
        [v56[2] emitMessage_];
        v44 = v25;
        v56 = v23;
        if (one-time initialization token for insightRequestSummaryLogger != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for InsightRequestSummaryLogger();
        __swift_project_value_buffer(v45, static Logger.insightRequestSummaryLogger);
        v46 = v59;
        v47 = v57;
        v48 = v54;
        (v59[2].isa)(v57, v55, v54);
        v49 = (LOBYTE(v46[10].isa) + 48) & ~LOBYTE(v46[10].isa);
        v50 = swift_allocObject();
        v51 = v52;
        v50[2] = v53;
        v50[3] = v51;
        v50[4] = v43;
        v50[5] = a5;
        (v46[4].isa)(v50 + v49, v47, v48);

        InsightRequestSummaryLogger.emitDebug(_:)(partial apply for implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackResponseReceived(requestId:contextId:rcId:));

        return;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.conversationBridge);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v37, v38, "Failed to create ORCHSchemaORCHServerFallbackContext event", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }
    }

    v35 = v58;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.conversationBridge);
    v59 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DC659000, v59, v33, "Failed to create ORCHSchemaORCHServerFallbackResponseReceived event", v34, 2u);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    v35 = v59;
  }
}

uint64_t implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackResponseReceived(requestId:contextId:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = xmmword_1DCA69C10;
  *(v8 + 32) = 0x614E656764697262;
  *(v8 + 40) = 0xEA0000000000656DLL;
  *(v8 + 48) = 0xD000000000000012;
  *(v8 + 56) = 0x80000001DCA7F2A0;
  *(v8 + 64) = 0xD000000000000012;
  *(v8 + 72) = 0x80000001DCA7F2C0;
  *(v8 + 80) = 0xD000000000000021;
  *(v8 + 88) = 0x80000001DCA7B780;
  *(v8 + 96) = 0x4974736575716572;
  *(v8 + 104) = 0xE900000000000064;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  *(v8 + 128) = 0xD000000000000011;
  *(v8 + 136) = 0x80000001DCA7AB40;
  if (a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (a4)
  {
    v11 = a4;
  }

  *(v8 + 144) = v10;
  *(v8 + 152) = v11;
  *(v8 + 160) = 0xD000000000000017;
  *(v8 + 168) = 0x80000001DCA7F2E0;

  *(v9 + 176) = UUID.uuidString.getter();
  *(v9 + 184) = v12;
  return v9;
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logRequestLinkEvent(requestId:)(Swift::String requestId)
{
  v2 = v1;
  object = requestId._object;
  countAndFlagsBits = requestId._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  UUID.init(uuidString:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v31);
      _os_log_impl(&dword_1DC659000, v18, v19, "RequestId=%s isn't in the right format of a uuid string", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    v22 = *(v2 + 56);
    v23 = *(v2 + 64);
    __swift_project_boxed_opaque_existential_1((v2 + 32), v22);
    (*(v23 + 8))(3, v16, v22, v23);
    v24 = specialized InstrumentationUtil.buildRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(1, v16, 3);
    if (v24)
    {
      v25 = v24;
      [*(v2 + 16) emitMessage_];
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.conversationBridge);
      v25 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1DC659000, v25, v27, "Failed to create RequestLink event for ExecutionBridge", v28, 2u);
        MEMORY[0x1E12A2F50](v28, -1, -1);
      }
    }

    v29 = *(v10 + 8);
    v29(v13, v9);
    v29(v16, v9);
  }
}

void ConversationBridgeInstrumentationUtil.logSensitiveCondition(forSensitiveCondition:requestId:)(unsigned int a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.conversationBridge);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v44 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v41 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = v10;
    v21 = a2;
    v22 = v20;
    aBlock[0] = v20;
    *v19 = 136315394;
    v23 = SISchemaDeviceSensitivityState.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, aBlock);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, a3, aBlock);
    _os_log_impl(&dword_1DC659000, v15, v16, "Logging SiriAnalytics sensitive condition: %s for requestId: %s", v19, 0x16u);
    swift_arrayDestroy();
    v26 = v22;
    a2 = v21;
    v10 = v42;
    MEMORY[0x1E12A2F50](v26, -1, -1);
    v27 = v19;
    v11 = v41;
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  UUID.init(uuidString:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, aBlock);
      _os_log_impl(&dword_1DC659000, v28, v29, "Failed to redact SiriAnalytics since requestId %s is malformed", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }
  }

  else
  {
    v32 = v45;
    (*(v11 + 32))(v45, v9, v10);
    v33 = objc_allocWithZone(MEMORY[0x1E69CE200]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v35 = v44;
    v36 = [v33 initWithConditionType:v44 requestId:isa joined:1];

    v37 = *(v43 + 72);
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    *(v38 + 24) = a2;
    *(v38 + 32) = a3;
    aBlock[4] = partial apply for closure #1 in ConversationBridgeInstrumentationUtil.logSensitiveCondition(forSensitiveCondition:requestId:);
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_3;
    v39 = _Block_copy(aBlock);

    [v37 createTag:v36 completion:v39];
    _Block_release(v39);

    (*(v11 + 8))(v32, v10);
  }
}

void closure #1 in ConversationBridgeInstrumentationUtil.logSensitiveCondition(forSensitiveCondition:requestId:)(char a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);

  v10 = a2;
  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 136315906;
    v15 = SISchemaDeviceSensitivityState.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v22);
    *(v12 + 22) = 1024;
    *(v12 + 24) = a1 & 1;
    *(v12 + 28) = 2112;
    if (a2)
    {
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v12 + 30) = v19;
    *v13 = v20;
    _os_log_impl(&dword_1DC659000, oslog, v11, "Logged sensitive condition: %s for requestId: %s successfully: %{BOOL}d. Error: %@", v12, 0x26u);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }
}

void ConversationBridgeInstrumentationUtil.logSREvent(requestId:strategy:predictedErrorType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v16, v11, v12);
    v21 = objc_allocWithZone(MEMORY[0x1E69CF638]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v23 = [v21 initWithNSUUID_];

    v24 = [objc_allocWithZone(MEMORY[0x1E69CF678]) init];
    v25 = v24;
    if (v24)
    {
      [v24 setRequestId_];
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E69CF668]) init];
    [v26 setSelectedRecoveryStrategy_];
    [v26 setPredictedErrorType_];
    v27 = [objc_allocWithZone(MEMORY[0x1E69CF680]) init];
    [v27 setCheckErrorResponse_];
    v28 = [objc_allocWithZone(MEMORY[0x1E69CF670]) init];
    if (v28)
    {
      v29 = v28;
      [v28 setEventMetadata:v25];
      [v29 setErrorChecked:v27];
      [*(v5 + 16) emitMessage_];
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.conversationBridge);
      v29 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v29, v31))
      {

        goto LABEL_16;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DC659000, v29, v31, "Failed to create SRSchemaSRClientEvent.", v32, 2u);
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

LABEL_16:
    (*(v13 + 8))(v16, v12);
    return;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.conversationBridge);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "The requestId is not a valid UUID.", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }
}

void ConversationBridgeInstrumentationUtil.logSearchRequestClassifierExecutedEvent(isPegasusSearchPerformed:mitigationResponseDecision:)(char a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2080;
    v11 = POMMESSchemaPOMMESSelfReflectionAgentDecision.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v9 + 10) = v13;
    _os_log_impl(&dword_1DC659000, v7, v8, "Search query classifier ran: (isPegasusSearchPerformed: %{BOOL}d, mitigationResponseDecision: %s)", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69CF4A8]) init];
  if (v14)
  {
    v18 = v14;
    v15 = [objc_allocWithZone(MEMORY[0x1E69CF4A0]) init];
    if (v15)
    {
      v16 = v15;
      [v18 setIsPegasusSearchPerformed_];
      [v18 setMitigationResponseDecision_];
      [v16 setPommesSearchRequestClassifierExecuted_];
      [*(v3 + 16) emitMessage_];

      v17 = v16;
    }

    else
    {
      v17 = v18;
    }
  }
}

uint64_t ConversationBridgeInstrumentationUtil.mapServerFallbackReasonToLoggingReason(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ServerFallbackReason();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69D0768])
  {
    return 5;
  }

  if (v8 == *MEMORY[0x1E69D0770])
  {
    return 4;
  }

  if (v8 == *MEMORY[0x1E69D0758])
  {
    return 2;
  }

  if (v8 == *MEMORY[0x1E69D0780])
  {
    return 3;
  }

  if (v8 == *MEMORY[0x1E69D0760])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x1E69D0778])
  {
    return 6;
  }

  if (v8 != *MEMORY[0x1E69D0788])
  {
    (*(v3 + 8))(v7, v2);
  }

  return 0;
}

uint64_t ConversationBridgeInstrumentationUtil.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  return v0;
}

uint64_t ConversationBridgeInstrumentationUtil.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t partial apply for implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackInitiated(requestId:resultCandidateId:contextId:fallbackReason:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ServerFallbackReason() - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackInitiated(requestId:resultCandidateId:contextId:fallbackReason:)(v5, v6, v7, v8);
}

uint64_t partial apply for implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackResponseReceived(requestId:contextId:rcId:)()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];

  return implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackResponseReceived(requestId:contextId:rcId:)(v2, v3, v4, v5);
}

uint64_t ConversationBridgeProcessorDelegate.__allocating_init(requestDispatcherServiceHelper:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(v2 + 24) = a1;
  return v2;
}

uint64_t ConversationBridgeProcessorDelegate.init(requestDispatcherServiceHelper:)(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 24) = a1;
  return v1;
}

void ConversationBridgeProcessorDelegate.submit(executionOutput:completion:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1016))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v15);
      _os_log_impl(&dword_1DC659000, v9, v10, "ConversationRequestProcessor already released, ingoring sumbit of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v13 = swift_allocError();
    *v14 = 0;
    a2(0, v13);
  }
}

void ConversationBridgeProcessorDelegate.close(withExecutionOutput:needsUserInput:)(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1048))(a1, a2 & 1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationBridge);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v6[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v6[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v11);
      _os_log_impl(&dword_1DC659000, v7, v8, "ConversationRequestProcessor already released, ignoring close of %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.close(withExecutionOutput:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1024))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v4[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v4[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v9);
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring close of %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.close(withExecutionOutput:errorString:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1032))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v13);
      _os_log_impl(&dword_1DC659000, v9, v10, "ConversationRequestProcessor already released, ignoring close of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.close(withExecutionOutput:errorString:shouldFailRequest:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1040))(a1, a2, a3, a4 & 1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationBridge);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v10[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v10[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v15);
      _os_log_impl(&dword_1DC659000, v11, v12, "ConversationRequestProcessor already released, ignoring close of %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.fallbackToServer(forResultCandidateId:serverFallbackReason:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1056))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      if (a2)
      {
        v12 = a2;
      }

      else
      {
        a1 = 7104878;
        v12 = 0xE300000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v12, &v14);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_1DC659000, v8, v9, "ConversationRequestProcessor already released, ignoring fallbackToServer of %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }
}

Swift::Void __swiftcall ConversationBridgeProcessorDelegate.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  object = forResultCandidateId.value._object;
  countAndFlagsBits = forResultCandidateId.value._countAndFlagsBits;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1064))(countAndFlagsBits, object);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      if (object)
      {
        v9 = object;
      }

      else
      {
        countAndFlagsBits = 7104878;
        v9 = 0xE300000000000000;
      }

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v9, &v11);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring fallbackToInfoDomainResults of %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.fallbackToIntelligenceFlow(prescribedTool:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 816))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "ConversationRequestProcessor already released, ignoring fallbackToIntelligenceFlow", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.redirectToSiriX(rcId:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 824))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "ConversationRequestProcessor already released, ignoring redirectToSiriX", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.willRedirectToSiriX(rcId:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 832))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "ConversationRequestProcessor already released, ignoring willRedirectToSiriX", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.flowPluginWillExecute(flowPluginInfo:)(char *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "Checking if request is sensitive", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v8 = objc_opt_self();
    v9 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_sensitivityPolicy];
    v10 = objc_opt_self();
    v11 = [v10 sharedPreferences];
    v12 = [v11 siriDataSharingOptInStatus];

    v13 = [v10 sharedPreferences];
    v14 = [v13 languageCode];

    LODWORD(v8) = [v8 isRequestSensitiveWithPolicy:v9 optInStatus:v12 siriLanguageCode:v14];
    if (v8)
    {
      v15 = v3[8];
      v16 = v3[9];
      v17 = *(**(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) + 232);

      v17(6, v15, v16);
    }

    (*(*v3 + 1088))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.conversationBridge);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_1DC659000, v20, v21, "ConversationRequestProcessor already released, ignoring flowPluginWillExecute of %@", v22, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }
  }
}

uint64_t ConversationBridgeProcessorDelegate.fetchSpeechInfo(reply:)(uint64_t (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1072))(a1, a2);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationBridge);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "ConversationRequestProcessor already released, ignoring fetchSpeechInfo", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    return a1(0);
  }
}

void ConversationBridgeProcessorDelegate.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1184))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v24);
      _os_log_impl(&dword_1DC659000, v18, v19, "ConversationRequestProcessor already released, ignoring retriggerOriginalRequest for request id %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v22 = swift_allocError();
    *v23 = 0;
    a7();
  }
}

Swift::Void __swiftcall ConversationBridgeProcessorDelegate.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  object = forExecutionRequestId._object;
  countAndFlagsBits = forExecutionRequestId._countAndFlagsBits;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1192))(countAndFlagsBits, object);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v9);
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring closeServerRequest for request id %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

uint64_t ConversationBridgeProcessorDelegate.fetchRecentDialogs(reply:)(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1080))();
    a1();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring fetchRecentDialogs", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    return (a1)(MEMORY[0x1E69E7CC0]);
  }
}

Swift::Void __swiftcall ConversationBridgeProcessorDelegate.actionCandidatesGenerated(_:rcId:)(Swift::OpaquePointer _, Swift::String rcId)
{
  object = rcId._object;
  countAndFlagsBits = rcId._countAndFlagsBits;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1376))(_._rawValue, countAndFlagsBits, object);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationBridge);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "ConversationRequestProcessor already released, ignoring actionCandidatesGenerated", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.willExecute(executionInputInfo:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1096))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring willExecute for request id %@", v7, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

uint64_t ConversationBridgeProcessorDelegate.fetchSelfReflectionDecision(reply:)(void (*a1)(void *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1104))(v8);
    a1(v8);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring fetchSelfReflectionDecision", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    LOBYTE(v8[0]) = 2;
    return (a1)(v8);
  }
}

uint64_t ConversationBridgeProcessorDelegate.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1112))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationBridge);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ConversationRequestProcessor not in scope. Routing the external activation request directly", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    return static ServiceBridgeDelegate.defaultSubmitExternalActivationRequest(withRequestInfo:serviceHelper:completion:)(a1, v4[3], a2, a3);
  }
}

uint64_t ConversationBridgeProcessorDelegate.postToMessageBus(message:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v34 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B14XPCTransporterOSgMd, &_s16SiriMessageTypes0B14XPCTransporterOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v33 - v9;
  v11 = type metadata accessor for MessageXPCTransporter();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v33[2] = __swift_project_value_buffer(v16, static Logger.conversationBridge);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33[1] = v5;
    v20 = a3;
    v21 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1DC659000, v17, v18, "Decoding and posting message to message bus", v19, 2u);
    v22 = v21;
    a3 = v20;
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = type metadata accessor for PropertyListDecoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type MessageXPCTransporter and conformance MessageXPCTransporter();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v15, v10, v11);
    v31 = MessageXPCTransporter.toMessageBase()();
    (*(*v24 + 1120))(v31, a3, v34);

    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "Not publising flow message because ConversationRequestProcessor is not in scope", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    return a3(0, 0);
  }
}

uint64_t ConversationBridgeProcessorDelegate.deinit()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

void specialized ConversationBridgeProcessorDelegate.fallbackToPeer()()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "ConversationRequestProcessor does not support fallbackToPeer", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type MessageXPCTransporter and conformance MessageXPCTransporter()
{
  result = lazy protocol witness table cache variable for type MessageXPCTransporter and conformance MessageXPCTransporter;
  if (!lazy protocol witness table cache variable for type MessageXPCTransporter and conformance MessageXPCTransporter)
  {
    type metadata accessor for MessageXPCTransporter();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageXPCTransporter and conformance MessageXPCTransporter);
  }

  return result;
}

void static ConversationBridgeUtils.replyCommandFailed(forCommand:errorCode:reason:replyHandler:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(id, id), uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v37[0] = a3;
    v17 = a2;
    v18 = objc_allocWithZone(MEMORY[0x1E69C7778]);
    v37[1] = a6;

    v19 = [v18 init];
    UUID.init()();
    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v13 + 8))(v16, v12);
    v23 = MEMORY[0x1E12A1410](v20, v22);

    [v19 setAceId_];

    v24 = v17;
    v25 = v19;
    v26 = [a1 aceId];
    [v25 setRefId_];

    [v25 setErrorCode_];
    if (a4)
    {
      v27 = v37[0];
      v28 = MEMORY[0x1E12A1410](v37[0], a4);
    }

    else
    {
      v28 = 0;
      v27 = 0xD000000000000017;
    }

    [v25 setReason_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    v30 = inited;
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 32) = 0x6567617373654DLL;
    v31 = inited + 32;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v32 = 0x80000001DCA7F380;
    if (a4)
    {
      v32 = a4;
    }

    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v27;
    *(inited + 56) = v32;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v30);
    swift_setDeallocating();
    outlined destroy of (String, Any)(v31);
    v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v34 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = [v33 initWithDomain:v34 code:v24 userInfo:isa];

    a5(v25, v36);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a5);
  }
}

void static ConversationBridgeUtils.replyCommandSucceeded(forCommand:replyHandler:)(void *a1, void (*a2)(id, void))
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E69C7788]);

    v10 = [v9 init];
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    v14 = MEMORY[0x1E12A1410](v11, v13);

    [v10 setAceId_];

    v15 = v10;
    v16 = [a1 aceId];
    [v15 setRefId_];

    a2(v15, 0);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a2);
  }
}

void static ConversationBridgeUtils.replyCommandIgnored(forCommand:errorCode:reason:replyHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, id))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v15 = objc_allocWithZone(MEMORY[0x1E69C7780]);
    v30 = a3;
    v16 = v15;

    v17 = [v16 init];
    UUID.init()();
    v18 = UUID.uuidString.getter();
    v31 = a2;
    v20 = v19;
    (*(v11 + 8))(v14, v10);
    v21 = MEMORY[0x1E12A1410](v18, v20);

    [v17 setAceId_];

    v22 = v17;
    v23 = [a1 aceId];
    [v22 setRefId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 32) = 0x6567617373654DLL;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v25 = v30;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v25;
    *(inited + 56) = a4;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v27 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = [v26 initWithDomain:v27 code:v31 userInfo:isa];

    a5(v22, v29);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a5);
  }
}

void closure #1 in static ConversationBridgeUtils.failRequest(serviceHelper:executionRequestId:reason:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Sent CommandFailed to fail this request", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized static ConversationBridgeUtils.failRequest(serviceHelper:executionRequestId:reason:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = a4;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.conversationBridge);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v15, v16, "Sending CommandFailed to fail this request.", v17, 2u);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v10 + 8))(v13, v9);
  v22 = MEMORY[0x1E12A1410](v19, v21);

  [v18 setAceId_];

  v23 = v18;
  v24 = MEMORY[0x1E12A1410](a2, a3);
  [v23 setRefId_];

  if (a5)
  {
    a5 = MEMORY[0x1E12A1410](v27, a5);
  }

  [v23 setReason_];

  aBlock[4] = closure #1 in static ConversationBridgeUtils.failRequest(serviceHelper:executionRequestId:reason:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_4;
  v25 = _Block_copy(aBlock);
  [a1 handleCommand:v23 completion:v25];
  _Block_release(v25);
}

uint64_t static ConversationCanHandleResult.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ConversationCanHandleResult.supportsSecureCoding = a1;
  return result;
}

uint64_t one-time initialization function for unsupported()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Input();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  CanHandleResult = type metadata accessor for ConversationCanHandleResult();
  v11 = objc_allocWithZone(CanHandleResult);
  v11[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 0;
  v11[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(v7, &v11[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v3, &v11[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14.receiver = v11;
  v14.super_class = CanHandleResult;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  result = outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  static ConversationCanHandleResult.unsupported = v12;
  return result;
}

uint64_t *ConversationCanHandleResult.unsupported.unsafeMutableAddressor()
{
  if (one-time initialization token for unsupported != -1)
  {
    swift_once();
  }

  return &static ConversationCanHandleResult.unsupported;
}

id static ConversationCanHandleResult.unsupported.getter()
{
  if (one-time initialization token for unsupported != -1)
  {
    swift_once();
  }

  v1 = static ConversationCanHandleResult.unsupported;

  return v1;
}

id static ConversationCanHandleResult.supported(flowIdentifier:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for Input();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  CanHandleResult = type metadata accessor for ConversationCanHandleResult();
  v12 = objc_allocWithZone(CanHandleResult);
  v12[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
  v12[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(v9, &v12[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v5, &v12[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15.receiver = v12;
  v15.super_class = CanHandleResult;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  return v13;
}