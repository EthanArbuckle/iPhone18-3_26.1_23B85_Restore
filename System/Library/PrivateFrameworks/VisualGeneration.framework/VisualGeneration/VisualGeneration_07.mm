uint64_t sub_19A36B844()
{
  (*(v0[36] + 8))(v0[37], v0[35]);
  v1 = v0[29];

  sub_19A36BAC0(v1);

  v2 = v0[1];

  return v2();
}

void sub_19A36B8E0(uint64_t a1, unint64_t a2)
{
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1EAFCA1E8);

  oslog = sub_19A5723DC();
  v5 = sub_19A57356C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_19A31F114(a1, a2, &v9);
    _os_log_impl(&dword_19A2DE000, oslog, v5, "%{public}s cancellation requested", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }
}

uint64_t GenerativePlayground.PromptGuidanceSketchAssignmentTask.deinit()
{
  v1 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A36BAC0(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__definitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller);
  return v0;
}

uint64_t sub_19A36BAC0(uint64_t a1)
{
  v2 = type metadata accessor for DefinitionSession();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GenerativePlayground.PromptGuidanceSketchAssignmentTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A36BAC0(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__definitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller);

  return swift_deallocClassInstance();
}

uint64_t sub_19A36BC14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19A57102C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A36BC58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask_id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A36BCD4()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3) & 1;
}

uint64_t sub_19A36BD38()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground34PromptGuidanceSketchAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

unint64_t sub_19A36BD98()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return 0xD000000000000023;
}

uint64_t type metadata accessor for GenerativePlayground.PromptGuidanceSketchAssignmentTask()
{
  result = qword_1EAFA0748;
  if (!qword_1EAFA0748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A36BEB0()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DefinitionSession();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_19A36BFB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A2F759C;

  return sub_19A36AD74(a1, v4, v5, v6, v7, v8);
}

void sub_19A36C080(id a1, unsigned __int8 a2)
{
  if ((a2 >> 6) <= 2u)
  {
  }
}

uint64_t sub_19A36C0A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefinitionSession();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19A36C154()
{
  type metadata accessor for AugmentedPrompt();
  if (v0 <= 0x3F)
  {
    sub_19A3330B0(319, &qword_1ED824BC8);
    if (v1 <= 0x3F)
    {
      sub_19A3330B0(319, &qword_1ED8255C0);
      if (v2 <= 0x3F)
      {
        sub_19A3330B0(319, &qword_1ED8250A8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_19A36C274(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_19A3225A0(0, v4, 0);
  v5 = v16;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v15, v9);
    if (v3)
    {
      break;
    }

    v11 = v15;
    v16 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_19A3225A0((v12 > 1), v13 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A36C3E0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for GenerationRecipe(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s15AssembledPromptV12PromptInputsVMa(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = type metadata accessor for AugmentedPrompt();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v28 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v28 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v28 - v22;
  if (*(v1 + *(v3 + 76)) == 1)
  {
    v24 = v30;
    result = sub_19A36CA0C(v21);
    if (v24)
    {
      return result;
    }

    sub_19A36D208(v1, v5, type metadata accessor for GenerationRecipe);
    sub_19A36D208(v21, v18, type metadata accessor for AugmentedPrompt);
    sub_19A36D454(v5, v18, v11);
    sub_19A36D724(v11, 0, v23);
    sub_19A36EE74(v11, _s15AssembledPromptV12PromptInputsVMa);
    sub_19A36EE74(v21, type metadata accessor for AugmentedPrompt);
    sub_19A4463EC(v29);
    v26 = v23;
  }

  else
  {
    v27 = v30;
    result = sub_19A36CA0C(v15);
    if (v27)
    {
      return result;
    }

    sub_19A36D208(v1, v5, type metadata accessor for GenerationRecipe);
    sub_19A36D208(v15, v18, type metadata accessor for AugmentedPrompt);
    sub_19A36D454(v5, v18, v9);
    sub_19A36D724(v9, 0, v29);
    sub_19A36EE74(v9, _s15AssembledPromptV12PromptInputsVMa);
    v26 = v15;
  }

  return sub_19A36EE74(v26, type metadata accessor for AugmentedPrompt);
}

void *sub_19A36C72C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v27 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v22 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = (a3 + 32);
  v23 = v12;
  v16 = (v12 + 48);
  v29 = MEMORY[0x1E69E7CC0];
  v24 = v9;
  v25 = a1;
  while (1)
  {
    v28 = *v15;
    a1(&v28);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_19A2F3FA0(v8, &qword_1EAFA01D0);
    }

    else
    {
      v17 = v26;
      sub_19A3351B8(v8, v26, &qword_1EAFA0020);
      sub_19A3351B8(v17, v27, &qword_1EAFA0020);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_19A31D094(0, v29[2] + 1, 1, v29);
      }

      v19 = v29[2];
      v18 = v29[3];
      if (v19 >= v18 >> 1)
      {
        v29 = sub_19A31D094(v18 > 1, v19 + 1, 1, v29);
      }

      v20 = v29;
      v29[2] = v19 + 1;
      sub_19A3351B8(v27, v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, &qword_1EAFA0020);
      v9 = v24;
      a1 = v25;
    }

    ++v15;
    if (!--v14)
    {
      return v29;
    }
  }

  return v29;
}

uint64_t sub_19A36CA0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = sub_19A570B9C();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A570A9C();
  v58 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResolvedTextPrompt(0);
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AugmentedPrompt();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for GenerationRecipe(0);
  v14 = *(v2 + *(v57 + 76));
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v62 = v2;
  if (v15)
  {
    v53 = v5;
    v54 = v7;
    v64[0] = MEMORY[0x1E69E7CC0];
    sub_19A322640(0, v15, 0);
    v17 = v54;
    v16 = v64[0];
    v18 = v14 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v63 = *(v63 + 72);
    do
    {
      sub_19A36D208(v18, v9, type metadata accessor for ResolvedTextPrompt);
      sub_19A36D208(&v9[*(v17 + 20)], v13, type metadata accessor for AugmentedPrompt);
      sub_19A36EE74(v9, type metadata accessor for ResolvedTextPrompt);
      v64[0] = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_19A322640(v19 > 1, v20 + 1, 1);
        v17 = v54;
        v16 = v64[0];
      }

      *(v16 + 16) = v20 + 1;
      sub_19A37834C(v13, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, type metadata accessor for AugmentedPrompt);
      v18 += v63;
      --v15;
    }

    while (v15);
    v2 = v62;
    v5 = v53;
  }

  v21 = sub_19A39C230();
  v22 = v59;
  v23 = v60;
  if (!v21)
  {
    type metadata accessor for ImageGenerator();
  }

  sub_19A4CC0E4(v16);

  sub_19A570A4C();
  sub_19A3784F4(&qword_1ED825328, MEMORY[0x1E6968678]);
  v24 = sub_19A5733EC();
  if (v24)
  {
    v25 = v24;
    v65 = MEMORY[0x1E69E7CC0];
    sub_19A322580(0, v24 & ~(v24 >> 63), 0);
    v26 = v65;
    result = sub_19A5733DC();
    if (v25 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v28 = v22;
      v29 = sub_19A57345C();
      v63 = *v30;
      v31 = v23;
      v32 = v30[1];

      v29(v64, 0);
      v65 = v26;
      v33 = v5;
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_19A322580((v34 > 1), v35 + 1, 1);
        v26 = v65;
      }

      *(v26 + 16) = v35 + 1;
      v36 = v26 + 16 * v35;
      *(v36 + 32) = v63;
      *(v36 + 40) = v32;
      sub_19A57342C();
      --v25;
      v5 = v33;
      v23 = v31;
      v22 = v28;
    }

    while (v25);
    (*(v55 + 8))(v23, v56);
    (*(v58 + 8))(v28, v33);
    v2 = v62;
    v37 = v26;
  }

  else
  {
    (*(v58 + 8))(v22, v5);
    v37 = MEMORY[0x1E69E7CC0];
  }

  v64[0] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
  v38 = sub_19A572BEC();
  v40 = v39;

  v41 = (v2 + *(v57 + 104));
  v43 = *v41;
  v42 = v41[1];
  v44 = v41[2];
  v45 = v41[3];
  v46 = qword_1ED8248B0;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = qword_1ED82BD18;
  v48 = unk_1ED82BD20;
  if (v43 == qword_1ED82BD08 && v42 == unk_1ED82BD10 || (sub_19A573F1C() & 1) != 0)
  {

    if (sub_19A4D3D04(v44, v47))
    {
      v49 = sub_19A4D3EEC(v45, v48);

      if (v49)
      {
      }

      goto LABEL_26;
    }
  }

LABEL_26:
  if (v38 == sub_19A386EC4(v44) && v40 == v50)
  {
  }

  v51 = sub_19A573F1C();

  if ((v51 & 1) == 0)
  {
    sub_19A37855C();
    swift_allocError();
    *v52 = 0xD000000000000068;
    v52[1] = 0x800000019A597400;
    swift_willThrow();
    return sub_19A36EE74(v61, type metadata accessor for AugmentedPrompt);
  }

  return result;
}

uint64_t sub_19A36D208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A36D270@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for GenerationRecipe(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15AssembledPromptV12PromptInputsVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AugmentedPrompt();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v17 - v14;
  result = sub_19A36CA0C(v17 - v14);
  if (!v2)
  {
    sub_19A36D208(v1, v6, type metadata accessor for GenerationRecipe);
    sub_19A36D208(v15, v13, type metadata accessor for AugmentedPrompt);
    sub_19A36D454(v6, v13, v9);
    sub_19A36D724(v9, 1, a1);
    sub_19A36EE74(v9, _s15AssembledPromptV12PromptInputsVMa);
    return sub_19A36EE74(v15, type metadata accessor for AugmentedPrompt);
  }

  return result;
}

uint64_t sub_19A36D454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AugmentedPrompt();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A36D208(a2, v8, type metadata accessor for AugmentedPrompt);
  v9 = type metadata accessor for GenerationRecipe(0);
  v10 = (a1 + v9[26]);
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[3];
  v14 = *(a1 + v9[6]);
  if (*(v14 + 16))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 7;
  }

  v48 = v15;
  v47 = *v10;

  v46 = sub_19A39C344();
  sub_19A39C154(v49);
  if (*(a1 + v9[27]))
  {
    v16 = 1;
  }

  else
  {
    v16 = *(a1 + v9[29]);
  }

  v45 = v16;
  v41 = v49[1];
  v42 = v49[0];
  v40 = v49[2];
  v38 = v51;
  v39 = v50;
  v17 = sub_19A39C484();
  v43 = v18;
  v44 = v17;
  v19 = (a1 + v9[5]);
  v20 = v19[1];
  v37 = *v19;
  v21 = *(a1 + v9[21] + 24);

  sub_19A39C784(v52);
  sub_19A36EE74(a2, type metadata accessor for AugmentedPrompt);
  v22 = a1 + v9[30];
  v23 = *(v22 + 16);
  if (v23 == 1)
  {
    v24 = 0;
    v23 = 0;
  }

  else
  {
    v24 = *(v22 + 8);
  }

  sub_19A37834C(v8, a3, type metadata accessor for AugmentedPrompt);
  v25 = _s15AssembledPromptV12PromptInputsVMa(0);
  v26 = (a3 + v25[5]);
  *v26 = v47;
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  *(a3 + v25[6]) = v48;
  *(a3 + v25[7]) = v46;
  v27 = a3 + v25[8];
  v28 = v41;
  *v27 = v42;
  *(v27 + 1) = v28;
  *(v27 + 2) = v40;
  v29 = v38;
  *(v27 + 8) = v39;
  *(v27 + 16) = v29;
  *(a3 + v25[9]) = v45;
  v30 = (a3 + v25[10]);
  v31 = v43;
  *v30 = v44;
  v30[1] = v31;
  v32 = (a3 + v25[11]);
  *v32 = v37;
  v32[1] = v20;
  *(a3 + v25[12]) = v21 != 0;
  v33 = a3 + v25[13];
  v34 = v52[1];
  *v33 = v52[0];
  *(v33 + 16) = v34;
  *(v33 + 32) = v53;
  v35 = (a3 + v25[14]);
  *v35 = v24;
  v35[1] = v23;
  return sub_19A36EE74(a1, type metadata accessor for GenerationRecipe);
}

uint64_t sub_19A36D724@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v170 = a3;
  v175 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v142 = &v138 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v144 = &v138 - v7;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v139 = &v138 - v8;
  v9 = sub_19A570B9C();
  v148 = *(v9 - 8);
  v149 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v147 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v138 - v12;
  v151 = sub_19A570A9C();
  v145 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v162 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_19A570BEC();
  v159 = *(v161 - 8);
  v16 = MEMORY[0x1EEE9AC00](v161);
  v157 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v158 = &v138 - v18;
  v19 = type metadata accessor for AugmentedPrompt();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v140 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v153 = (&v138 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v174 = &v138 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v138 - v27);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v152 = &v138 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v160 = &v138 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = (&v138 - v33);
  v35 = _s15AssembledPromptV12PromptInputsVMa(0);
  v36 = 0;
  v37 = v35[6];
  v38 = (a1 + v35[5]);
  v39 = v38[1];
  *&v171 = *v38;
  *(&v171 + 1) = v39;
  v177 = *(a1 + v37);
  v41 = v38[2];
  v40 = v38[3];
  v42 = v35[8];
  v176 = *(a1 + v35[7]);
  LODWORD(v39) = *(a1 + v42);
  v167 = *(a1 + v42 + 1);
  LODWORD(v168) = v39;
  LODWORD(v166) = *(a1 + v42 + 2);
  v43 = *(a1 + v42 + 8);
  v169 = *(a1 + v42 + 16);
  v44 = *(a1 + v35[9]);
  v45 = (a1 + v35[10]);
  v47 = *v45;
  v46 = v45[1];
  v156 = v47;
  v164 = v46;
  v165 = v43;
  v48 = (a1 + v35[11]);
  v50 = *v48;
  v49 = v48[1];
  v51 = v35[13];
  v52 = v35[14];
  v172 = v35;
  v53 = (a1 + v51);
  v54 = v53[1];
  v193 = *v53;
  v194 = v54;
  v195 = *(v53 + 4);
  v196 = a1;
  v55 = a1 + v52;
  v56 = *(a1 + v52);
  v154 = *(v55 + 8);
  v155 = v56;
  v173 = v49;
  v163 = v50;
  if (*(&v193 + 1) == 1)
  {
    v58 = 0;
    goto LABEL_8;
  }

  v57 = v194;
  v58 = 0;
  if (!v194)
  {
LABEL_8:

    goto LABEL_9;
  }

  v59 = *(v194 + 16);

  if (v59)
  {
    v60 = sub_19A31FC68(6u);
    if (v61)
    {
      v62 = (*(v57 + 56) + 16 * v60);
      v36 = *v62;
      v58 = v62[1];
      goto LABEL_8;
    }
  }

  v36 = 0;
  v58 = 0;
LABEL_9:
  sub_19A36D208(v196, v34, type metadata accessor for AugmentedPrompt);
  v63 = v177;
  if (v177 == 7 || (sub_19A337A30(v177, 1u) & 1) == 0)
  {

    v70 = v171;
    v189 = v171;
    *&v190 = v41;
    *(&v190 + 1) = v40;
    LOBYTE(v185) = v63;
    v68 = v174;
    v64 = v176;
    sub_19A459938(v34, v174);
    sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
    sub_19A37834C(v68, v34, type metadata accessor for AugmentedPrompt);
    if (v64)
    {
      v189 = v70;
      *&v190 = v41;
      *(&v190 + 1) = v40;
      LODWORD(v185) = 40;
      v71 = sub_19A3773D4(v34, &v189, &v185);
      sub_19A36D208(v34, v68, type metadata accessor for AugmentedPrompt);
      sub_19A374AB4(v71);

      sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
      sub_19A37834C(v68, v34, type metadata accessor for AugmentedPrompt);
    }

    if (v175)
    {
      goto LABEL_71;
    }

    sub_19A36EED4(v34, v68);
    sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
    v72 = sub_19A37834C(v68, v34, type metadata accessor for AugmentedPrompt);
    MEMORY[0x1EEE9AC00](v72);
    v73 = v167;
    *(&v138 - 48) = v168;
    *(&v138 - 47) = v73;
    *(&v138 - 46) = v166;
    v74 = v169;
    *(&v138 - 5) = v165;
    *(&v138 - 4) = v74;
    *(&v138 - 24) = v177;
    *(&v138 - 2) = v196;
    *(&v138 - 8) = v64;
    sub_19A370C20(v34, sub_19A378158, (&v138 - 8), v68);
    sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
    v75 = v68;
LABEL_19:
    sub_19A37834C(v75, v34, type metadata accessor for AugmentedPrompt);
    if (v164)
    {
      if ((v64 - 1) >= 2u)
      {
        *&v189 = v156;
        *(&v189 + 1) = v164;

        MEMORY[0x19A900A50](8236, 0xE200000000000000);
        sub_19A570C6C();
        v76 = v157;
        sub_19A570BFC();
        v77 = v158;
        sub_19A570AFC();
        v78 = v159;
        v79 = v161;
        (*(v159 + 8))(v76, v161);
        sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
        (*(v78 + 32))(v34, v77, v79);
      }
    }

    if (v177 == 7)
    {
      goto LABEL_71;
    }

    goto LABEL_23;
  }

  if (!v176)
  {
    v69 = v152;
    sub_19A36D208(v34, v152, type metadata accessor for AugmentedPrompt);
    if (v44)
    {
      v88 = v174;
      sub_19A371A20(v34, v36, v58, v174);
      sub_19A36EE74(v69, type metadata accessor for AugmentedPrompt);
      sub_19A37834C(v88, v69, type metadata accessor for AugmentedPrompt);
    }

    if (v175)
    {

      goto LABEL_30;
    }

    if (v168 == 5)
    {
      v68 = v174;
      v64 = v176;
      if (v167 == 3 && v166 != 10)
      {

        if (!v169 || sub_19A572E7C() <= 0)
        {
          LOBYTE(v189) = v166;
          sub_19A4096F0(&v193);
          sub_19A570C6C();
          v137 = v158;
          sub_19A570BFC();
          sub_19A39A330(v137, 8236, 0xE200000000000000);
          (*(v159 + 8))(v137, v161);
        }
      }

      else
      {
      }
    }

    else
    {

      v68 = v174;
      v64 = v176;
    }

    sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
    v120 = v160;
    sub_19A37834C(v69, v160, type metadata accessor for AugmentedPrompt);
    v75 = v120;
    goto LABEL_19;
  }

  v64 = v176;
  if (v176 == 1)
  {

    v65 = *(&v171 + 1);
    v66 = v171;
    v189 = v171;
    *&v190 = v41;
    *(&v190 + 1) = v40;
    LOBYTE(v185) = 1;
    sub_19A459938(v34, v28);
    v189 = __PAIR128__(v65, v66);
    *&v190 = v41;
    *(&v190 + 1) = v40;
    LODWORD(v185) = 40;
    v67 = sub_19A3773D4(v28, &v189, &v185);
    v68 = v174;
    sub_19A36D208(v28, v174, type metadata accessor for AugmentedPrompt);
    sub_19A374AB4(v67);

    sub_19A36EE74(v28, type metadata accessor for AugmentedPrompt);
    sub_19A37834C(v68, v28, type metadata accessor for AugmentedPrompt);
    if (v175)
    {
      v69 = v28;
LABEL_30:
      v89 = v160;
      sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
      sub_19A37834C(v69, v89, type metadata accessor for AugmentedPrompt);
      sub_19A37834C(v89, v34, type metadata accessor for AugmentedPrompt);
LABEL_71:

      return sub_19A37834C(v34, v170, type metadata accessor for AugmentedPrompt);
    }

    sub_19A36EED4(v28, v68);
    sub_19A36EE74(v28, type metadata accessor for AugmentedPrompt);
    sub_19A37834C(v68, v28, type metadata accessor for AugmentedPrompt);
    v108 = v168 | (v167 << 8) | (v166 << 16);
    v109 = v169;

    v110 = v160;
    sub_19A36FD80(v28, v108, v165, v109, v160);
    sub_19A36EE74(v28, type metadata accessor for AugmentedPrompt);
    sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
    v75 = v110;
    goto LABEL_19;
  }

  v90 = v168;
  if (v168 == 5)
  {
    sub_19A570A4C();
    sub_19A3784F4(&qword_1ED825330, MEMORY[0x1E6968678]);
    sub_19A572F7C();
    v91 = sub_19A572DCC();
    v93 = v92;

    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    v95 = (v94 + 16);
    *&v189 = v91;
    *(&v189 + 1) = v93;
    v96 = HIBYTE(v93) & 0xF;
    if ((v93 & 0x2000000000000000) == 0)
    {
      v96 = v91;
    }

    v97 = 11;
    if (((v93 >> 60) & ((v91 & 0x800000000000000) == 0)) == 0)
    {
      v97 = 7;
    }

    *&v185 = 15;
    *(&v185 + 1) = v97 | (v96 << 16);
    v98 = swift_allocObject();
    *(v98 + 16) = &unk_1F0DA76A0;
    *(v98 + 24) = v94;
    v168 = v94;

    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD58);
    v159 = sub_19A2F4450();
    v64 = v176;
    sub_19A2F12E4(&qword_1EAF9F0B8, &qword_1EAF9FD58);
    sub_19A57381C();

    swift_beginAccess();
    v99 = *v95;

    if (v99)
    {
      v90 = 4;
    }

    else
    {
      v90 = 5;
    }
  }

  v68 = v174;
  v100 = v153;
  v101 = v41;
  if (*(v40 + 16))
  {
    v102 = *(v40 + 48);
    v189 = *(v40 + 32);
    v190 = v102;
    v103 = *(v40 + 80);
    v191 = *(v40 + 64);
    v192 = v103;
    if ((*(&v103 + 1) ^ v103) >= 0x4000)
    {
      v116 = *(v40 + 48);
      v185 = *(v40 + 32);
      v117 = *(v40 + 64);
      v118 = *(v40 + 80);
      v186 = v116;
      v187 = v117;
      v188 = v118;
      v182[0] = v90;
      v182[1] = v167;
      v182[2] = v166;
      v183 = v165;
      v184 = v169;
      v179 = v171;
      v180 = v41;
      v181 = v40;
      sub_19A37820C(&v189, &v178);
      v106 = v175;
      v119 = v160;
      sub_19A3720E0(v34, &v185, v182, &v179, &v193, v175 & 1, v160);
      sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);

      sub_19A378268(&v189);
      goto LABEL_70;
    }
  }

  v104 = v90;
  sub_19A36D208(v34, v153, type metadata accessor for AugmentedPrompt);
  v189 = v171;
  *&v190 = v101;
  *(&v190 + 1) = v40;
  LODWORD(v185) = 40;
  v105 = sub_19A3773D4(v100, &v189, &v185);
  sub_19A36D208(v100, v68, type metadata accessor for AugmentedPrompt);
  sub_19A374AB4(v105);

  sub_19A36EE74(v100, type metadata accessor for AugmentedPrompt);
  sub_19A37834C(v68, v100, type metadata accessor for AugmentedPrompt);
  v106 = v175;
  if (v175)
  {
    v107 = v100;
  }

  else
  {
    v111 = sub_19A404544(v167, v104, 1, &v193);
    v113 = v112;
    v114 = v169;
    if (v169)
    {
      v115 = v165;
      if (sub_19A572E7C() >= 1)
      {
        *&v189 = v111;
        *(&v189 + 1) = v113;

        MEMORY[0x19A900A50](0x206874697720, 0xE600000000000000);

        MEMORY[0x19A900A50](v115, v114);
        v113 = *(&v189 + 1);
        v111 = v189;
      }
    }

    *(&v171 + 1) = v111;
    v168 = v113;
    if (v166 == 10)
    {
      v166 = 0;
      *&v171 = 0;
    }

    else
    {
      LOBYTE(v189) = v166;
      v166 = sub_19A409824(v104, &v193);
      *&v171 = v121;
    }

    v122 = v150;
    sub_19A570A4C();
    sub_19A3784F4(&qword_1ED825328, MEMORY[0x1E6968678]);
    v123 = v146;
    v124 = v151;
    sub_19A5733DC();
    v125 = v147;
    sub_19A57341C();
    sub_19A3784F4(&qword_1ED825308, MEMORY[0x1E69687E8]);
    v126 = v149;
    v167 = sub_19A572C2C();
    v127 = *(v148 + 8);
    v127(v125, v126);
    v127(v123, v126);
    (*(v145 + 8))(v122, v124);
    if (v167)
    {
      v128 = v171;
      if (v171)
      {
        *&v189 = *(&v171 + 1);
        *(&v189 + 1) = v168;
        MEMORY[0x19A900A50](8236, 0xE200000000000000);
        MEMORY[0x19A900A50](v166, v128);
      }

      sub_19A570C6C();
      v119 = v160;
      sub_19A570BFC();
      sub_19A36EE74(v153, type metadata accessor for AugmentedPrompt);
      v68 = v174;
      v64 = v176;
      v106 = v175;
      goto LABEL_69;
    }

    *&v189 = *(&v171 + 1);
    v129 = v171;
    *(&v189 + 1) = v168;
    if (v171)
    {
      MEMORY[0x19A900A50](32, 0xE100000000000000);
      MEMORY[0x19A900A50](0xD000000000000014, 0x800000019A5973E0);
      MEMORY[0x19A900A50](8236, 0xE200000000000000);
      MEMORY[0x19A900A50](v166, v129);
    }

    else
    {
      MEMORY[0x19A900A50](32, 0xE100000000000000);
      MEMORY[0x19A900A50](0xD000000000000014, 0x800000019A5973E0);
    }

    sub_19A570C6C();
    v130 = v140;
    sub_19A570BFC();
    v68 = v174;
    *&v189 = 0xD000000000000014;
    *(&v189 + 1) = 0x800000019A5973E0;
    v131 = sub_19A57112C();
    v132 = v142;
    (*(*(v131 - 8) + 56))(v142, 1, 1, v131);
    sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
    sub_19A2F4450();
    v133 = v144;
    sub_19A570D8C();
    sub_19A2F3FA0(v132, &qword_1EAF9FDC8);
    if ((*(v141 + 48))(v133, 1, v143) == 1)
    {
      sub_19A36EE74(v153, type metadata accessor for AugmentedPrompt);
      sub_19A2F3FA0(v133, &qword_1EAFA01D0);
    }

    else
    {
      v134 = v133;
      v135 = v139;
      sub_19A3351B8(v134, v139, &qword_1EAFA0020);
      sub_19A2F12E4(&qword_1ED823F20, &qword_1EAFA0020);
      v136 = v153;
      sub_19A570AEC();
      sub_19A2F3FA0(v135, &qword_1EAFA0020);
      sub_19A36EE74(v136, type metadata accessor for AugmentedPrompt);
    }

    v64 = v176;
    v106 = v175;
    v107 = v130;
  }

  v119 = v160;
  sub_19A37834C(v107, v160, type metadata accessor for AugmentedPrompt);
LABEL_69:
  sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);

LABEL_70:
  sub_19A37834C(v119, v34, type metadata accessor for AugmentedPrompt);
  if (v106)
  {
    goto LABEL_71;
  }

LABEL_23:
  type metadata accessor for ImageGenerator();
  v80 = v163;
  v81 = v173;
  sub_19A34F314(v163, v173, &v185);
  if (!*(&v186 + 1))
  {
    sub_19A2F3FA0(&v185, &qword_1EAF9FDA8);
    sub_19A2F1130();
    swift_allocError();
    *v86 = v80;
    *(v86 + 8) = v81;
    *(v86 + 16) = 0;
    swift_willThrow();
    return sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
  }

  sub_19A3355E8(&v185, &v189);
  __swift_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
  sub_19A336470(v34, v68);
  sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
  sub_19A37834C(v68, v34, type metadata accessor for AugmentedPrompt);
  v82 = v64;
  v83 = v68;
  v84 = *(&v190 + 1);
  v85 = v191;
  __swift_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
  LOBYTE(v185) = v177;
  (*(*(v85 + 8) + 8))(v34, &v185, *(v196 + v172[12]), v82, v84);
  sub_19A36EE74(v34, type metadata accessor for AugmentedPrompt);
  sub_19A37834C(v83, v34, type metadata accessor for AugmentedPrompt);
  __swift_destroy_boxed_opaque_existential_0Tm(&v189);
  return sub_19A37834C(v34, v170, type metadata accessor for AugmentedPrompt);
}

uint64_t sub_19A36EE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A36EED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = sub_19A570B9C();
  v76 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_19A570BEC();
  v77 = *(v82 - 8);
  v5 = MEMORY[0x1EEE9AC00](v82);
  v81 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v73 - v7;
  v92 = sub_19A57093C();
  v75 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v100 = &v73 - v12;
  v105 = sub_19A570CEC();
  v74 = *(v105 - 8);
  v13 = MEMORY[0x1EEE9AC00](v105);
  v89 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v73 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v16 = MEMORY[0x1EEE9AC00](v106);
  v95 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v73 - v18;
  v19 = sub_19A570B4C();
  v103 = *(v19 - 8);
  v104 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_19A570B2C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v93 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v86 = &v73 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v73 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0768);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v73 - v30;
  v32 = sub_19A570B5C();
  MEMORY[0x1EEE9AC00](v32);
  sub_19A36D208(a1, a2, type metadata accessor for AugmentedPrompt);
  v94 = a2;
  sub_19A570B6C();
  v33 = MEMORY[0x1E69687C8];
  sub_19A3784F4(&qword_1ED825318, MEMORY[0x1E69687C8]);
  sub_19A572FAC();
  sub_19A3784F4(&qword_1ED825310, v33);
  v88 = (v103 + 1);
  v103 = (v22 + 16);
  v78 = (v22 + 32);
  v101 = v22;
  v34 = (v22 + 8);
  v35 = MEMORY[0x1E69E7CC0];
  v102 = v34;
  v87 = v28;
  while (1)
  {
    v36 = v96;
    sub_19A57341C();
    sub_19A3784F4(&qword_1ED825320, MEMORY[0x1E69687B0]);
    v37 = v104;
    v38 = sub_19A572C2C();
    (*v88)(v36, v37);
    if (v38)
    {
      break;
    }

    v39 = sub_19A57345C();
    v40 = v87;
    (*v103)(v87);
    v39(v107, 0);
    sub_19A57342C();
    sub_19A378428();
    sub_19A570B3C();
    if (BYTE4(v107[0]) == 1)
    {
      (*v102)(v40, v21);
    }

    else
    {
      v41 = *v78;
      (*v78)(v86, v40, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19A322680(0, *(v35 + 16) + 1, 1);
        v35 = v108;
      }

      v44 = *(v35 + 16);
      v43 = *(v35 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v46 = v44 + 1;
        v97 = v44;
        sub_19A322680(v43 > 1, v44 + 1, 1);
        v45 = v46;
        v44 = v97;
        v35 = v108;
      }

      *(v35 + 16) = v45;
      v41(v35 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v44, v86, v21);
    }
  }

  result = sub_19A2F3FA0(v31, &qword_1EAFA0768);
  v48 = *(v35 + 16);
  v49 = v93;
  v50 = v85;
  if (!v48)
  {
  }

  v96 = (v35 + ((*(v101 + 80) + 32) & ~*(v101 + 80)));
  v104 = (v74 + 8);
  v88 = (v75 + 8);
  v78 = (v77 + 1);
  v77 = (v76 + 2);
  ++v76;
  v79 = v9;
  v97 = v35;
  v98 = v21;
  while (v48 <= *(v35 + 16))
  {
    --v48;
    (*(v101 + 16))(v49, &v96[*(v101 + 72) * v48], v21);
    sub_19A570B1C();
    sub_19A2F12E4(&qword_1ED823F20, &qword_1EAFA0020);
    v51 = v99;
    sub_19A570C3C();
    sub_19A2F3FA0(v50, &qword_1EAFA0020);
    sub_19A342038();
    v52 = v100;
    sub_19A570CFC();
    v53 = *v104;
    (*v104)(v51, v105);
    v54 = sub_19A57102C();
    v55 = (*(*(v54 - 8) + 48))(v52, 1, v54);
    sub_19A2F3FA0(v52, &qword_1EAF9FD80);
    if (v55 == 1)
    {
      v56 = v95;
      sub_19A570B1C();
      v57 = v89;
      sub_19A570C3C();
      sub_19A2F3FA0(v56, &qword_1EAFA0020);
      sub_19A570CCC();
      v53(v57, v105);
      sub_19A3784F4(&qword_1ED825330, MEMORY[0x1E6968678]);
      sub_19A572F7C();
      v58 = sub_19A572DCC();
      v60 = v59;

      v107[0] = v58;
      v107[1] = v60;
      sub_19A5708CC();
      sub_19A2F4450();
      v61 = sub_19A57380C();
      v63 = v62;
      (*v88)(v9, v92);

      if (v61 == 0x6E6F73726570 && v63 == 0xE600000000000000)
      {

        v49 = v93;
      }

      else
      {
        v64 = sub_19A573F1C();

        v49 = v93;
        if ((v64 & 1) == 0)
        {
          v65 = v95;
          sub_19A570B1C();
          v66 = sub_19A570C2C();
          LODWORD(v108) = 0;
          BYTE4(v108) = 1;
          sub_19A378428();
          sub_19A570D0C();
          v66(v107, 0);
          sub_19A2F3FA0(v65, &qword_1EAFA0020);
          v67 = v80;
          sub_19A570ACC();
          sub_19A570B3C();
          LODWORD(v108) = v107[0];
          BYTE4(v108) = BYTE4(v107[0]);
          sub_19A570C1C();
          v68 = v81;
          sub_19A570ACC();
          v86 = sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
          v69 = v82;
          sub_19A570BBC();
          v87 = *v78;
          (v87)(v68, v69);
          sub_19A570B1C();
          v70 = v83;
          v71 = v84;
          (*v77)(v83, v65, v84);
          v72 = v65;
          v50 = v85;
          sub_19A2F3FA0(v72, &qword_1EAFA0020);
          sub_19A570BCC();
          (*v76)(v70, v71);
          v9 = v79;
          (v87)(v67, v69);
        }
      }
    }

    v21 = v98;
    result = (*v102)(v49, v98);
    v35 = v97;
    if (!v48)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A36FD80@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a4;
  v97 = a3;
  v96 = a2;
  v100 = a5;
  v6 = sub_19A570CEC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  MEMORY[0x1EEE9AC00](v95);
  v86 = &v81 - v8;
  v102 = sub_19A570BEC();
  v85 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v84 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v109 = &v81 - v11;
  v93 = sub_19A570B9C();
  v92 = *(v93 - 8);
  v12 = MEMORY[0x1EEE9AC00](v93);
  v90 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v81 - v14;
  v87 = sub_19A570A9C();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_19A570B4C();
  v18 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_19A570B2C();
  v20 = *(v112 - 1);
  v21 = MEMORY[0x1EEE9AC00](v112);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v81 - v24;
  v25 = sub_19A570B5C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0768);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v81 - v30;
  v32 = type metadata accessor for AugmentedPrompt();
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v82 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v101 = &v81 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v103 = &v81 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v99 = &v81 - v39;
  sub_19A36D208(a1, &v81 - v39, type metadata accessor for AugmentedPrompt);
  v98 = a1;
  sub_19A570B6C();
  (*(v26 + 16))(v31, v28, v25);
  sub_19A3784F4(&qword_1ED825310, MEMORY[0x1E69687C8]);
  sub_19A5733DC();
  (*(v26 + 8))(v28, v25);
  v40 = (v18 + 8);
  v105 = (v20 + 32);
  v106 = (v20 + 16);
  v107 = (v20 + 8);
  while (1)
  {
    v41 = v110;
    sub_19A57341C();
    sub_19A3784F4(&qword_1ED825320, MEMORY[0x1E69687B0]);
    v42 = v25;
    v43 = v111;
    v44 = sub_19A572C2C();
    (*v40)(v41, v43);
    if (v44)
    {
      break;
    }

    v45 = sub_19A57345C();
    v46 = v108;
    v47 = v112;
    (*v106)(v108);
    v45(&v114, 0);
    sub_19A57342C();
    (*v105)(v23, v46, v47);
    sub_19A342038();
    v48 = v23;
    v49 = v109;
    sub_19A570B3C();
    v50 = sub_19A57102C();
    v51 = (*(*(v50 - 8) + 48))(v49, 1, v50);
    v52 = v49;
    v23 = v48;
    sub_19A2F3FA0(v52, &qword_1EAF9FD80);
    sub_19A378428();
    sub_19A570B3C();
    if (v117)
    {
      if (v51 != 1)
      {
        goto LABEL_8;
      }
    }

    else if (v51 != 1 || (v114 & 1) != 0)
    {
LABEL_8:
      v53 = v96;
      LODWORD(v110) = HIWORD(v96);
      v54 = v96 >> 8;
      v81 = v48;
      v55 = v86;
      sub_19A570B1C();
      v111 = sub_19A2F12E4(&qword_1ED823F20, &qword_1EAFA0020);
      sub_19A570C3C();
      sub_19A2F3FA0(v55, &qword_1EAFA0020);
      v56 = v84;
      sub_19A570C4C();
      v57 = v85;
      v58 = v82;
      v59 = v102;
      (*(v85 + 16))(v82, v56, v102);
      v114 = v53;
      v115 = v54;
      v116 = v110;
      v118 = v97;
      v119 = v104;
      v113 = 1;
      v60 = v101;
      sub_19A3999DC(v58, 1, v101);
      sub_19A36EE74(v58, type metadata accessor for AugmentedPrompt);
      v61 = v81;
      sub_19A570B1C();
      sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
      v62 = v99;
      sub_19A570AEC();
      sub_19A2F3FA0(v55, &qword_1EAFA0020);
      sub_19A36EE74(v60, type metadata accessor for AugmentedPrompt);
      (*(v57 + 8))(v56, v59);
      (*v107)(v61, v112);
      sub_19A2F3FA0(v31, &qword_1EAFA0768);
      v63 = v100;
      goto LABEL_13;
    }

    (*v107)(v48, v112);
    v25 = v42;
  }

  v64 = v96;
  v65 = HIWORD(v96);
  v66 = v96 >> 8;
  sub_19A2F3FA0(v31, &qword_1EAFA0768);
  sub_19A570C6C();
  v67 = v101;
  sub_19A570BFC();
  v114 = v64;
  v115 = v66;
  v116 = v65;
  v118 = v97;
  v119 = v104;
  v113 = 1;
  sub_19A3999DC(v67, 1, v103);
  sub_19A36EE74(v67, type metadata accessor for AugmentedPrompt);
  v68 = v88;
  sub_19A570A4C();
  sub_19A3784F4(&qword_1ED825328, MEMORY[0x1E6968678]);
  v69 = v91;
  v70 = v87;
  sub_19A5733DC();
  v71 = v90;
  sub_19A57341C();
  v72 = sub_19A3784F4(&qword_1ED825308, MEMORY[0x1E69687E8]);
  v73 = v93;
  v111 = v72;
  LOBYTE(v66) = sub_19A572C2C();
  v74 = *(v92 + 8);
  v74(v71, v73);
  v112 = v74;
  v74(v69, v73);
  v75 = *(v89 + 8);
  v75(v68, v70);
  if ((v66 & 1) == 0)
  {
    sub_19A570A4C();
    sub_19A5733DC();
    sub_19A57341C();
    v76 = sub_19A572C2C();
    v77 = v112;
    (v112)(v71, v73);
    v77(v69, v73);
    v75(v68, v70);
    if ((v76 & 1) == 0)
    {
      sub_19A570C6C();
      v78 = v101;
      sub_19A570BFC();
      sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
      sub_19A570BBC();
      sub_19A36EE74(v78, type metadata accessor for AugmentedPrompt);
    }
  }

  v62 = v99;
  sub_19A570A5C();
  sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
  v79 = v103;
  sub_19A570BCC();
  (v112)(v69, v73);
  sub_19A36EE74(v79, type metadata accessor for AugmentedPrompt);
  v63 = v100;
LABEL_13:
  sub_19A37834C(v62, v63, type metadata accessor for AugmentedPrompt);
}

uint64_t sub_19A370C20@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v91 = a2;
  v92 = a4;
  v86 = sub_19A570B9C();
  v85 = *(v86 - 8);
  v5 = MEMORY[0x1EEE9AC00](v86);
  v83 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v74 - v7;
  v82 = sub_19A570A9C();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19A570CEC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v74 - v14;
  v94 = sub_19A570BEC();
  v78 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v77 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = &v74 - v17;
  v102 = sub_19A570B4C();
  v97 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_19A570B2C();
  v19 = *(v103 - 1);
  v20 = MEMORY[0x1EEE9AC00](v103);
  v104 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v74 - v22;
  v23 = sub_19A570B5C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0768);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v74 - v28;
  v30 = type metadata accessor for AugmentedPrompt();
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v75 = &v74 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v93 = &v74 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v88 = &v74 - v38;
  sub_19A36D208(a1, &v74 - v38, type metadata accessor for AugmentedPrompt);
  v89 = a1;
  sub_19A570B6C();
  (*(v24 + 16))(v29, v26, v23);
  sub_19A3784F4(&qword_1ED825310, MEMORY[0x1E69687C8]);
  sub_19A5733DC();
  v39 = *(v24 + 8);
  v100 = v23;
  v39(v26, v23);
  v40 = (v97 + 1);
  v95 = (v19 + 32);
  v96 = (v19 + 16);
  v97 = (v19 + 8);
  while (1)
  {
    v41 = v101;
    sub_19A57341C();
    sub_19A3784F4(&qword_1ED825320, MEMORY[0x1E69687B0]);
    v42 = v102;
    v43 = sub_19A572C2C();
    (*v40)(v41, v42);
    if (v43)
    {
      break;
    }

    v44 = v33;
    v45 = v9;
    v46 = sub_19A57345C();
    v47 = v98;
    v48 = v103;
    (*v96)(v98);
    v46(&v105, 0);
    sub_19A57342C();
    (*v95)(v104, v47, v48);
    sub_19A342038();
    v49 = v99;
    sub_19A570B3C();
    v50 = sub_19A57102C();
    v51 = (*(*(v50 - 8) + 48))(v49, 1, v50);
    sub_19A2F3FA0(v49, &qword_1EAF9FD80);
    sub_19A378428();
    sub_19A570B3C();
    if (v106)
    {
      if (v51 != 1)
      {
        goto LABEL_8;
      }
    }

    else if (v51 != 1 || (v105 & 1) != 0)
    {
LABEL_8:
      v52 = v79;
      sub_19A570B1C();
      v102 = sub_19A2F12E4(&qword_1ED823F20, &qword_1EAFA0020);
      sub_19A570C3C();
      sub_19A2F3FA0(v52, &qword_1EAFA0020);
      v53 = v77;
      sub_19A570C4C();
      v54 = v78;
      v55 = v75;
      v56 = v94;
      (*(v78 + 16))(v75, v53, v94);
      v57 = v93;
      v91(v55);
      sub_19A36EE74(v55, type metadata accessor for AugmentedPrompt);
      v58 = v104;
      sub_19A570B1C();
      sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
      v59 = v88;
      sub_19A570AEC();
      sub_19A2F3FA0(v52, &qword_1EAFA0020);
      sub_19A36EE74(v57, type metadata accessor for AugmentedPrompt);
      (*(v54 + 8))(v53, v56);
      (*v97)(v58, v103);
      sub_19A2F3FA0(v29, &qword_1EAFA0768);
      return sub_19A37834C(v59, v92, type metadata accessor for AugmentedPrompt);
    }

    (*v97)(v104, v103);
    v9 = v45;
    v33 = v44;
  }

  sub_19A2F3FA0(v29, &qword_1EAFA0768);
  sub_19A570C6C();
  v60 = v93;
  sub_19A570BFC();
  v91(v60);
  sub_19A36EE74(v60, type metadata accessor for AugmentedPrompt);
  sub_19A570A4C();
  sub_19A3784F4(&qword_1ED825328, MEMORY[0x1E6968678]);
  v61 = v84;
  v62 = v82;
  sub_19A5733DC();
  v63 = v83;
  sub_19A57341C();
  v64 = sub_19A3784F4(&qword_1ED825308, MEMORY[0x1E69687E8]);
  v104 = v33;
  v65 = v86;
  v102 = v64;
  v66 = sub_19A572C2C();
  v67 = *(v85 + 8);
  v67(v63, v65);
  v103 = v67;
  v67(v61, v65);
  v68 = *(v81 + 8);
  v68(v9, v62);
  if ((v66 & 1) == 0)
  {
    sub_19A570A4C();
    sub_19A5733DC();
    sub_19A57341C();
    v69 = sub_19A572C2C();
    v70 = v103;
    (v103)(v63, v65);
    v70(v61, v65);
    v68(v9, v62);
    if ((v69 & 1) == 0)
    {
      sub_19A570C6C();
      v71 = v93;
      sub_19A570BFC();
      sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
      sub_19A570BBC();
      sub_19A36EE74(v71, type metadata accessor for AugmentedPrompt);
    }
  }

  v59 = v88;
  sub_19A570A5C();
  sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
  v72 = v104;
  sub_19A570BCC();
  (v103)(v61, v65);
  sub_19A36EE74(v72, type metadata accessor for AugmentedPrompt);
  return sub_19A37834C(v59, v92, type metadata accessor for AugmentedPrompt);
}

uint64_t sub_19A371A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v37 = &v34 - v11;
  v12 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_19A570BEC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AugmentedPrompt();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v34 - v22;
  if (!a3)
  {
    return sub_19A36D208(a1, a4, type metadata accessor for AugmentedPrompt);
  }

  v34 = v23;
  v35 = a4;
  sub_19A36D208(a1, &v34 - v22, type metadata accessor for AugmentedPrompt);
  sub_19A36D208(v24, v21, type metadata accessor for AugmentedPrompt);
  v25 = sub_19A37640C(a2, a3, v24);

  sub_19A570C6C();
  sub_19A570BFC();
  sub_19A3767A0(1701011814, 0xE400000000000000, v16, v25, v21);
  v26 = *(v14 + 8);
  v26(v16, v13);

  sub_19A570C6C();
  sub_19A570BFC();
  sub_19A3767A0(1684104552, 0xE400000000000000, v16, v25, v21);
  v26(v16, v13);

  sub_19A570C6C();
  sub_19A570BFC();
  sub_19A3767A0(0x79656C696D73, 0xE600000000000000, v16, v25, v21);

  v26(v16, v13);
  if (sub_19A570B0C())
  {
    v38 = a2;
    v39 = a3;
    v27 = sub_19A57112C();
    v28 = v36;
    (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
    sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
    sub_19A2F4450();
    v29 = v37;
    sub_19A570D8C();
    sub_19A2F3FA0(v28, &qword_1EAF9FDC8);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
    {
      sub_19A2F3FA0(v29, &qword_1EAFA01D0);
      v38 = a2;
      v39 = a3;

      MEMORY[0x19A900A50](32, 0xE100000000000000);
      sub_19A570C6C();
      v31 = v34;
      sub_19A570BFC();
      sub_19A570BBC();
      sub_19A36EE74(v21, type metadata accessor for AugmentedPrompt);
      sub_19A36EE74(v24, type metadata accessor for AugmentedPrompt);
      v21 = v31;
    }

    else
    {
      sub_19A36EE74(v24, type metadata accessor for AugmentedPrompt);
      sub_19A2F3FA0(v29, &qword_1EAFA01D0);
    }
  }

  else
  {
    sub_19A36EE74(v24, type metadata accessor for AugmentedPrompt);
  }

  v33 = v35;
  sub_19A37834C(v21, v24, type metadata accessor for AugmentedPrompt);
  return sub_19A37834C(v24, v33, type metadata accessor for AugmentedPrompt);
}

uint64_t sub_19A37202C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v12[0] = result;
    v12[1] = a2;
    MEMORY[0x1EEE9AC00](result);
    v11[2] = v12;
    result = sub_19A374F10(sub_19A33E48C, v11, v10);
    if (result)
    {
      result = swift_beginAccess();
      *(a9 + 16) = 1;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t sub_19A3720E0@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v348) = a6;
  v332 = a5;
  v346 = a7;
  v347 = a1;
  v10 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v327 = &v288 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0770);
  v12 = MEMORY[0x1EEE9AC00](v325);
  v326 = &v288 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v324 = &v288 - v14;
  v338 = sub_19A570B9C();
  v349 = *(v338 - 1);
  v15 = MEMORY[0x1EEE9AC00](v338);
  v316 = &v288 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v321 = &v288 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v310 = &v288 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v328 = &v288 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v314 = &v288 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v319 = &v288 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v293 = &v288 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v299 = &v288 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v297 = &v288 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v300 = &v288 - v33;
  v343 = sub_19A570BEC();
  v350 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v344 = &v288 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0778);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v317 = &v288 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v339 = &v288 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v311 = &v288 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v336 = &v288 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v315 = &v288 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = (&v288 - v47);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v329 = (&v288 - v50);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v330 = &v288 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v294 = &v288 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v301 = &v288 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v304 = &v288 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v306 = &v288 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v298 = &v288 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v303 = &v288 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v307 = &v288 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v308 = &v288 - v67;
  v322 = type metadata accessor for PromptEdit(0);
  v323 = *(v322 - 8);
  v68 = MEMORY[0x1EEE9AC00](v322);
  v305 = &v288 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v320 = &v288 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v309 = &v288 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v318 = &v288 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v313 = &v288 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v302 = &v288 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v312 = &v288 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v292 = &v288 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v289 = &v288 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v291 = &v288 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v296 = &v288 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v290 = &v288 - v91;
  MEMORY[0x1EEE9AC00](v90);
  v295 = &v288 - v92;
  v93 = type metadata accessor for AugmentedPrompt();
  v94 = MEMORY[0x1EEE9AC00](v93 - 8);
  v96 = &v288 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v98 = (&v288 - v97);
  v99 = a2[1];
  v342 = *a2;
  v345 = v99;
  v100 = a2[4];
  v340 = a2[7];
  v331 = *a3;
  LODWORD(v341) = a3[1];
  v335 = a3[2];
  v101 = *(a3 + 2);
  v333 = *(a3 + 1);
  v337 = v101;
  v103 = *a4;
  v102 = a4[1];
  v105 = a4[2];
  v104 = a4[3];
  sub_19A36D208(v347, &v288 - v97, type metadata accessor for AugmentedPrompt);
  if ((v348 & 1) == 0)
  {
    v352 = v103;
    v353 = v102;
    v354 = v105;
    v355 = v104;
    v351 = 32;
    v334 = v98;
    v108 = sub_19A3773D4(v98, &v352, &v351);
    if (*(v100 + 16))
    {
      v109 = *(v100 + 48);
    }

    else
    {
      v109 = MEMORY[0x1E69E7CC0];
    }

    v111 = v344;
    v110 = v345;
    v348 = v108;
    if (v341 == 3)
    {

      goto LABEL_10;
    }

    if (*(v109 + 16))
    {
      v112 = sub_19A4107B0(v341, v109);

      if (v112)
      {
LABEL_10:
        v113 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
        v114 = sub_19A572CCC();
        [v113 setString_];

        v115 = (sub_19A5734BC() + 16);
        v116 = v349;
        if (*v115)
        {
          v308 = v113;

          v117 = sub_19A572F9C();
          v121 = sub_19A37847C(v117, v118, v119, v120, 0x6E6F73726570, 0xE600000000000000);
          v347 = v48;
          v122 = v121;

          v123 = *(v350 + 16);
          v124 = v334;
          v125 = v343;
          v123(v111, v334, v343);
          sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
          v126 = v330;
          sub_19A570BAC();
          v123(v111, v124, v125);
          v116 = v349;
          LODWORD(v307) = v122;
          v127 = v347;
          v128 = v329;
          sub_19A570BAC();
          sub_19A33546C(v126, v127, &qword_1EAFA0778);
          v129 = *(v116 + 48);
          v130 = v338;
          if (v129(v127, 1, v338) == 1)
          {

            sub_19A2F3FA0(v128, &qword_1EAFA0778);
            sub_19A2F3FA0(v126, &qword_1EAFA0778);
            sub_19A2F3FA0(v127, &qword_1EAFA0778);
            v131 = v350;
            v110 = v345;
            v133 = v336;
            v132 = v337;
LABEL_15:
            v137 = v343;
            v107 = v334;
LABEL_53:
            v229 = v339;
            if (!v132 || sub_19A572E7C() < 1)
            {
              goto LABEL_64;
            }

            v230 = v116;
            v231 = v344;
            v347 = *(v131 + 16);
            v347(v344, v107, v137);
            sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
            sub_19A570BAC();
            v232 = v137;
            v233 = v130;
            v234 = v133;
            v235 = (v230 + 48);
            v236 = *(v230 + 48);
            if (v236(v234, 1, v233) == 1)
            {
              sub_19A2F3FA0(v234, &qword_1EAFA0778);
              v229 = v339;
              v110 = v345;
              v130 = v233;
              v116 = v349;
              v131 = v350;
              v137 = v232;
              goto LABEL_64;
            }

            v237 = *(v349 + 32);
            v341 = v349 + 32;
            v338 = v237;
            (v237)(v328, v234, v233);
            v347(v231, v107, v232);
            v238 = v311;
            sub_19A570BAC();
            v130 = v233;
            if (v236(v238, 1, v233) == 1)
            {
              v116 = v349;
              (*(v349 + 8))(v328, v233);
              sub_19A2F3FA0(v238, &qword_1EAFA0778);
              v229 = v339;
              v110 = v345;
              v107 = v334;
              v137 = v232;
              v131 = v350;
              goto LABEL_64;
            }

            v239 = v310;
            (v338)(v310, v238, v233);
            sub_19A3784F4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
            v240 = v328;
            if (sub_19A572C1C())
            {
              v241 = v349;
              v242 = *(v349 + 16);
              v243 = v324;
              v242(v324, v240, v233);
              v244 = v325;
              v242((v243 + *(v325 + 48)), v239, v233);
              v245 = v326;
              sub_19A33546C(v243, v326, &qword_1EAFA0770);
              v246 = *(v244 + 48);
              v247 = v338;
              (v338)(v318, v245, v130);
              v248 = *(v241 + 8);
              (v248)(v245 + v246, v130);
              sub_19A3351B8(v243, v245, &qword_1EAFA0770);
              v249 = *(v244 + 48);
              v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
              v251 = v318;
              v247(v318 + *(v250 + 36), v245 + v249, v130);
              v235 = v130;
              v347 = v248;
              (v248)(v245, v130);
              v352 = 0x206874697720;
              v353 = 0xE600000000000000;
              MEMORY[0x19A900A50](v333, v337);
              sub_19A570C6C();
              sub_19A570BFC();
              sub_19A36D208(v251, v309, type metadata accessor for PromptEdit);
              v240 = v348;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_61:
                v107 = v334;
                v253 = *(v240 + 2);
                v252 = *(v240 + 3);
                v348 = v240;
                v137 = v343;
                v116 = v349;
                v131 = v350;
                v110 = v345;
                v130 = v235;
                if (v253 >= v252 >> 1)
                {
                  v348 = sub_19A31D0B8(v252 > 1, v253 + 1, 1, v348);
                }

                sub_19A36EE74(v318, type metadata accessor for PromptEdit);
                v254 = v235;
                v255 = v347;
                (v347)(v310, v254);
                (v255)(v328, v130);
                v256 = v348;
                *(v348 + 2) = v253 + 1;
                sub_19A37834C(v309, v256 + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v253, type metadata accessor for PromptEdit);
                v229 = v339;
LABEL_64:
                if (v335 == 10)
                {
                  v257 = v348;
LABEL_79:
                  v285 = sub_19A473BF0(v257);

                  v286 = sub_19A41A33C(v285);
                  sub_19A374AB4(v286);

                  return sub_19A37834C(v107, v346, type metadata accessor for AugmentedPrompt);
                }

                LOBYTE(v352) = v335;
                v341 = sub_19A409824(v331, v332);
                v347 = v258;
                v259 = HIBYTE(v110) & 0xF;
                if ((v110 & 0x2000000000000000) == 0)
                {
                  v259 = v342;
                }

                v260 = 7;
                if (((v110 >> 60) & ((v342 & 0x800000000000000) == 0)) != 0)
                {
                  v260 = 11;
                }

                v261 = v260 | (v259 << 16);
                v262 = v131 + 16;
                v263 = *(v131 + 16);
                v350 = v262;
                v264 = v344;
                v263(v344, v107, v137);
                sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
                v345 = v261;
                sub_19A570BAC();
                v265 = v137;
                v266 = *(v116 + 48);
                if (v266(v229, 1, v130) == 1)
                {

                  sub_19A2F3FA0(v229, &qword_1EAFA0778);
                  v257 = v348;
                  goto LABEL_79;
                }

                v267 = *(v116 + 32);
                v268 = v229;
                v269 = v321;
                v342 = v116 + 32;
                v340 = v267;
                v267(v321, v268, v130);
                v263(v264, v107, v137);
                v270 = v317;
                sub_19A570BAC();
                if (v266(v270, 1, v130) == 1)
                {
                  (*(v116 + 8))(v269, v130);

                  sub_19A2F3FA0(v270, &qword_1EAFA0778);
                  v257 = v348;
                  v107 = v334;
                  goto LABEL_79;
                }

                v271 = v270;
                v257 = v316;
                v340(v316, v271, v130);
                sub_19A3784F4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
                if (sub_19A572C1C())
                {
                  v265 = v130;
                  v272 = v349;
                  v273 = *(v349 + 16);
                  v274 = v324;
                  v273(v324, v269, v265);
                  v275 = v325;
                  v273((v274 + *(v325 + 48)), v257, v265);
                  v276 = v326;
                  sub_19A33546C(v274, v326, &qword_1EAFA0770);
                  v277 = *(v275 + 48);
                  v278 = v340;
                  v340(v320, v276, v265);
                  v116 = *(v272 + 8);
                  (v116)(v276 + v277, v265);
                  sub_19A3351B8(v274, v276, &qword_1EAFA0770);
                  v279 = *(v275 + 48);
                  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
                  v281 = v320;
                  v278(&v320[*(v280 + 36)], v276 + v279, v265);
                  (v116)(v276, v265);
                  v352 = 8236;
                  v353 = 0xE200000000000000;
                  MEMORY[0x19A900A50](v341, v347);

                  sub_19A570C6C();
                  sub_19A570BFC();
                  v264 = v305;
                  sub_19A36D208(v281, v305, type metadata accessor for PromptEdit);
                  v257 = v348;
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
LABEL_76:
                    v283 = *(v257 + 2);
                    v282 = *(v257 + 3);
                    v284 = v334;
                    if (v283 >= v282 >> 1)
                    {
                      v257 = sub_19A31D0B8(v282 > 1, v283 + 1, 1, v257);
                    }

                    sub_19A36EE74(v320, type metadata accessor for PromptEdit);
                    (v116)(v316, v265);
                    (v116)(v321, v265);
                    *(v257 + 2) = v283 + 1;
                    sub_19A37834C(v264, &v257[((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v283], type metadata accessor for PromptEdit);
                    v107 = v284;
                    goto LABEL_79;
                  }
                }

                else
                {
                  __break(1u);
                }

                v257 = sub_19A31D0B8(0, *(v257 + 2) + 1, 1, v257);
                goto LABEL_76;
              }
            }

            else
            {
              __break(1u);
            }

            v240 = sub_19A31D0B8(0, *(v240 + 2) + 1, 1, v240);
            goto LABEL_61;
          }

          v134 = *(v116 + 32);
          v135 = v319;
          v134(v319, v127, v130);
          v136 = v315;
          sub_19A33546C(v128, v315, &qword_1EAFA0778);
          if (v129(v136, 1, v130) == 1)
          {

            (*(v116 + 8))(v135, v130);
            sub_19A2F3FA0(v128, &qword_1EAFA0778);
            sub_19A2F3FA0(v330, &qword_1EAFA0778);
            sub_19A2F3FA0(v136, &qword_1EAFA0778);
            v110 = v345;
            v133 = v336;
            v132 = v337;
            v131 = v350;
            goto LABEL_15;
          }

          v161 = v314;
          v134(v314, v136, v130);
          v162 = sub_19A404544(v341, v331, 0, v332);
          if (v307)
          {
            v341 = v163;
            v347 = v162;
            v164 = v134;
          }

          else
          {
            v164 = v134;
            v352 = v162;
            v353 = v163;
            MEMORY[0x19A900A50](32, 0xE100000000000000);
            v347 = v352;
            v341 = v353;
          }

          sub_19A3784F4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
          if (sub_19A572C1C())
          {
            v167 = v349;
            v168 = *(v349 + 16);
            v169 = v324;
            v168(v324, v135, v130);
            v170 = v325;
            v168((v169 + *(v325 + 48)), v161, v130);
            v171 = v326;
            sub_19A33546C(v169, v326, &qword_1EAFA0770);
            v172 = *(v170 + 48);
            v173 = v302;
            v164(v302, v171, v338);
            v174 = *(v167 + 8);
            v175 = v171 + v172;
            v130 = v338;
            v174(v175, v338);
            sub_19A3351B8(v169, v171, &qword_1EAFA0770);
            v176 = *(v170 + 48);
            v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
            v164((v173 + *(v177 + 36)), v171 + v176, v130);
            v174(v171, v130);
            sub_19A570C6C();
            sub_19A570BFC();

            v174(v314, v130);
            v174(v319, v130);
            sub_19A2F3FA0(v329, &qword_1EAFA0778);
            sub_19A2F3FA0(v330, &qword_1EAFA0778);
            v178 = v312;
            sub_19A37834C(v173, v312, type metadata accessor for PromptEdit);
            sub_19A36D208(v178, v313, type metadata accessor for PromptEdit);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_33:
              v107 = v334;
              v137 = v343;
              v116 = v349;
              v131 = v350;
              v110 = v345;
              v133 = v336;
              v179 = v337;
              v181 = *(v348 + 2);
              v180 = *(v348 + 3);
              if (v181 >= v180 >> 1)
              {
                v348 = sub_19A31D0B8(v180 > 1, v181 + 1, 1, v348);
              }

              sub_19A36EE74(v312, type metadata accessor for PromptEdit);
              v182 = v348;
              *(v348 + 2) = v181 + 1;
              v183 = v182 + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v181;
              v184 = &v345;
LABEL_52:
              sub_19A37834C(*(v184 - 32), v183, type metadata accessor for PromptEdit);
              v132 = v179;
              goto LABEL_53;
            }
          }

          else
          {
            __break(1u);
          }

          v348 = sub_19A31D0B8(0, *(v348 + 2) + 1, 1, v348);
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      v113 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v153 = sub_19A572CCC();
      [v113 setString_];

      v154 = (sub_19A5734BC() + 16);
      v116 = v349;
      if (!*v154)
      {
LABEL_22:

        v130 = v338;
LABEL_23:
        v107 = v334;
        v137 = v343;
        v131 = v350;
        v133 = v336;
        v132 = v337;
        goto LABEL_53;
      }

      v347 = v113;

      v155 = *(v350 + 16);
      v107 = v334;
      v156 = v343;
      v155(v111, v334, v343);
      sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
      v157 = v306;
      sub_19A570BAC();
      v155(v111, v107, v156);
      v116 = v349;
      v158 = v304;
      sub_19A570BAC();
      v159 = v301;
      sub_19A33546C(v157, v301, &qword_1EAFA0778);
      v160 = *(v116 + 48);
      v130 = v338;
      if (v160(v159, 1, v338) == 1)
      {

        sub_19A2F3FA0(v158, &qword_1EAFA0778);
        sub_19A2F3FA0(v157, &qword_1EAFA0778);
        sub_19A2F3FA0(v159, &qword_1EAFA0778);
        v133 = v336;
        v132 = v337;
LABEL_38:
        v137 = v343;
        v131 = v350;
        goto LABEL_53;
      }

      v185 = v158;
      v186 = v116;
      v187 = v159;
      v188 = v299;
      v329 = *(v116 + 32);
      v330 = v116 + 32;
      (v329)(v299, v187, v130);
      v189 = v294;
      sub_19A33546C(v185, v294, &qword_1EAFA0778);
      v190 = v160(v189, 1, v130);
      v133 = v336;
      if (v190 == 1)
      {

        (*(v186 + 8))(v188, v130);
        sub_19A2F3FA0(v185, &qword_1EAFA0778);
        sub_19A2F3FA0(v306, &qword_1EAFA0778);
        sub_19A2F3FA0(v189, &qword_1EAFA0778);
        v132 = v337;
        v116 = v186;
        goto LABEL_38;
      }

      v195 = v293;
      v196 = v329;
      (v329)(v293, v189, v130);
      v341 = sub_19A404544(v341, v331, 1, v332);
      v319 = v197;
      sub_19A3784F4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
      if (sub_19A572C1C())
      {
        v198 = v188;
        v199 = v349;
        v200 = *(v349 + 16);
        v201 = v324;
        v200(v324, v198, v130);
        v202 = v325;
        v200((v201 + *(v325 + 48)), v195, v130);
        v203 = v326;
        sub_19A33546C(v201, v326, &qword_1EAFA0770);
        v204 = *(v202 + 48);
        v205 = v289;
        (v196)(v289, v203, v338);
        v206 = *(v199 + 8);
        v207 = v203 + v204;
        v130 = v338;
        v206(v207, v338);
        sub_19A3351B8(v201, v203, &qword_1EAFA0770);
        v208 = *(v202 + 48);
        v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
        (v196)(v205 + *(v209 + 36), v203 + v208, v130);
        v206(v203, v130);
        sub_19A570C6C();
        sub_19A570BFC();

        v206(v293, v130);
        v206(v299, v130);
        sub_19A2F3FA0(v304, &qword_1EAFA0778);
        sub_19A2F3FA0(v306, &qword_1EAFA0778);
        v210 = v291;
        sub_19A37834C(v205, v291, type metadata accessor for PromptEdit);
        sub_19A36D208(v210, v292, type metadata accessor for PromptEdit);
        v196 = v348;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_43:
          v212 = v196[2];
          v211 = v196[3];
          v348 = v196;
          v116 = v349;
          v131 = v350;
          v107 = v334;
          v137 = v343;
          v110 = v345;
          v133 = v336;
          v179 = v337;
          if (v212 >= v211 >> 1)
          {
            v348 = sub_19A31D0B8(v211 > 1, v212 + 1, 1, v348);
          }

          sub_19A36EE74(v291, type metadata accessor for PromptEdit);
          v213 = v348;
          *(v348 + 2) = v212 + 1;
          v183 = v213 + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v212;
          v184 = &v324;
          goto LABEL_52;
        }
      }

      else
      {
        __break(1u);
      }

      v196 = sub_19A31D0B8(0, v196[2] + 1, 1, v196);
      goto LABEL_43;
    }

    v138 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v139 = sub_19A572CCC();
    [v138 setString_];

    if (!*(sub_19A5734BC() + 16))
    {

      v130 = v338;
      v116 = v349;
      goto LABEL_23;
    }

    v347 = v138;

    v140 = sub_19A572F9C();
    v144 = sub_19A37847C(v140, v141, v142, v143, 0x6E6F73726570, 0xE600000000000000);

    v145 = *(v350 + 16);
    v107 = v334;
    v137 = v343;
    v145(v111, v334, v343);
    sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
    v146 = v308;
    sub_19A570BAC();
    v145(v111, v107, v137);
    LODWORD(v330) = v144;
    v147 = v307;
    sub_19A570BAC();
    v148 = v303;
    sub_19A33546C(v146, v303, &qword_1EAFA0778);
    v149 = v349;
    v150 = *(v349 + 48);
    v130 = v338;
    if (v150(v148, 1, v338) == 1)
    {

      v151 = v148;
      sub_19A2F3FA0(v147, &qword_1EAFA0778);
      v152 = v146;
LABEL_29:
      sub_19A2F3FA0(v152, &qword_1EAFA0778);
      sub_19A2F3FA0(v151, &qword_1EAFA0778);
      v116 = v149;
      v110 = v345;
      v133 = v336;
      v132 = v337;
      v131 = v350;
      goto LABEL_53;
    }

    v165 = v300;
    v329 = *(v149 + 32);
    (v329)(v300, v148, v130);
    v166 = v298;
    sub_19A33546C(v147, v298, &qword_1EAFA0778);
    if (v150(v166, 1, v130) == 1)
    {

      (*(v149 + 8))(v165, v130);
      v151 = v166;
      sub_19A2F3FA0(v307, &qword_1EAFA0778);
      v152 = v308;
      goto LABEL_29;
    }

    v191 = v297;
    v192 = v329;
    (v329)(v297, v166, v130);
    v193 = sub_19A404544(v341, v331, 1, v332);
    if (v330)
    {
      v330 = v194;
      v341 = v193;
    }

    else
    {
      v352 = v193;
      v353 = v194;
      MEMORY[0x19A900A50](32, 0xE100000000000000);
      v341 = v352;
      v330 = v353;
    }

    v214 = v349;
    sub_19A3784F4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
    if (sub_19A572C1C())
    {
      v215 = *(v214 + 16);
      v216 = v324;
      v215(v324, v165, v130);
      v217 = v325;
      v215((v216 + *(v325 + 48)), v191, v130);
      v218 = v326;
      sub_19A33546C(v216, v326, &qword_1EAFA0770);
      v219 = *(v217 + 48);
      v220 = v290;
      v192(v290, v218, v338);
      v221 = *(v214 + 8);
      v222 = v218 + v219;
      v130 = v338;
      v221(v222, v338);
      sub_19A3351B8(v216, v218, &qword_1EAFA0770);
      v223 = *(v217 + 48);
      v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
      v192((v220 + *(v224 + 36)), v218 + v223, v130);
      v221(v218, v130);
      sub_19A570C6C();
      sub_19A570BFC();

      v221(v297, v130);
      v221(v300, v130);
      sub_19A2F3FA0(v307, &qword_1EAFA0778);
      sub_19A2F3FA0(v308, &qword_1EAFA0778);
      v225 = v295;
      sub_19A37834C(v220, v295, type metadata accessor for PromptEdit);
      sub_19A36D208(v225, v296, type metadata accessor for PromptEdit);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_49:
        v107 = v334;
        v137 = v343;
        v116 = v349;
        v131 = v350;
        v110 = v345;
        v133 = v336;
        v179 = v337;
        v227 = *(v348 + 2);
        v226 = *(v348 + 3);
        if (v227 >= v226 >> 1)
        {
          v348 = sub_19A31D0B8(v226 > 1, v227 + 1, 1, v348);
        }

        sub_19A36EE74(v295, type metadata accessor for PromptEdit);
        v228 = v348;
        *(v348 + 2) = v227 + 1;
        v183 = v228 + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v227;
        v184 = &v328;
        goto LABEL_52;
      }
    }

    else
    {
      __break(1u);
    }

    v348 = sub_19A31D0B8(0, *(v348 + 2) + 1, 1, v348);
    goto LABEL_49;
  }

  v352 = v103;
  v353 = v102;
  v354 = v105;
  v355 = v104;
  v351 = 40;
  v106 = sub_19A3773D4(v98, &v352, &v351);
  sub_19A36D208(v98, v96, type metadata accessor for AugmentedPrompt);
  sub_19A374AB4(v106);

  sub_19A36EE74(v98, type metadata accessor for AugmentedPrompt);
  sub_19A37834C(v96, v98, type metadata accessor for AugmentedPrompt);
  v107 = v98;
  return sub_19A37834C(v107, v346, type metadata accessor for AugmentedPrompt);
}

uint64_t sub_19A374AB4(uint64_t a1)
{
  v2 = sub_19A570BEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v17 - v6;
  v8 = type metadata accessor for PromptEdit(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v9 + 20);
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = (v3 + 8);
    v19 = (v3 + 16);
    v20 = *(v10 + 72);
    v21 = v14;
    do
    {
      sub_19A36D208(v15, v12, type metadata accessor for PromptEdit);
      sub_19A33546C(v12, v7, &qword_1EAFA0020);
      (*v19)(v5, &v12[v21], v2);
      sub_19A36EE74(v12, type metadata accessor for PromptEdit);
      sub_19A2F12E4(&qword_1ED823F20, &qword_1EAFA0020);
      sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
      sub_19A570AEC();
      (*v18)(v5, v2);
      sub_19A2F3FA0(v7, &qword_1EAFA0020);
      v15 += v20;
      --v13;
    }

    while (v13);
  }

  sub_19A4499BC();
  sub_19A449358();
  return sub_19A447618();
}

uint64_t sub_19A374DB4@<X0>(_BOOL8 *a1@<X8>)
{
  sub_19A570B9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  sub_19A3784F4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
  result = sub_19A572C1C();
  v3 = 0;
  if ((result & 1) == 0)
  {
    result = sub_19A572C1C();
    if ((result & 1) == 0)
    {
      sub_19A3784F4(&qword_1ED825308, MEMORY[0x1E69687E8]);
      result = sub_19A572C2C();
      if ((result & 1) == 0)
      {
        result = sub_19A572C2C();
        if ((result & 1) == 0)
        {
          v3 = 1;
        }
      }
    }
  }

  *a1 = v3;
  return result;
}

uint64_t sub_19A374F10(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_19A374FBC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19A573EBC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
        v6 = sub_19A5730DC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_19A375350(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_19A375100(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_19A375100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v8 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_19A33546C(v22, v16, &qword_1EAFA0020);
      sub_19A33546C(v19, v12, &qword_1EAFA0020);
      v23 = sub_19A570B7C();
      sub_19A2F3FA0(v12, &qword_1EAFA0020);
      result = sub_19A2F3FA0(v16, &qword_1EAFA0020);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_19A3351B8(v22, v34, &qword_1EAFA0020);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_19A3351B8(v24, v19, &qword_1EAFA0020);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19A375350(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v103 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v113 = *(v116 - 8);
  v9 = MEMORY[0x1EEE9AC00](v116);
  v107 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v115 = &v99 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v118 = &v99 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v117 = &v99 - v16;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_96:
    a4 = *v103;
    if (!*v103)
    {
      goto LABEL_136;
    }

    v4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_19A34DDAC(v4);
    }

    v94 = v6;
    v119 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (1)
      {
        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *(result + 16 * v4);
        v96 = result;
        v97 = *(result + 16 * (v4 - 1) + 40);
        sub_19A375C90(v95 + *(v113 + 72) * a3, v95 + *(v113 + 72) * *(result + 16 * (v4 - 1) + 32), v95 + *(v113 + 72) * v97, a4);
        if (v94)
        {
        }

        if (v97 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_19A34DDAC(v96);
        }

        if (v4 - 2 >= *(v96 + 2))
        {
          goto LABEL_124;
        }

        v98 = &v96[16 * v4];
        *v98 = a3;
        *(v98 + 1) = v97;
        v119 = v96;
        sub_19A34DD20(v4 - 1);
        result = v119;
        v4 = *(v119 + 16);
        a3 = v6;
        if (v4 <= 1)
        {
        }
      }
    }
  }

  v100 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v104 = a3;
  while (1)
  {
    v20 = v18;
    v108 = v19;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v102 = v6;
      v21 = v18;
      v22 = *a3;
      v23 = *(v113 + 72);
      a4 = *a3 + v23 * (v18 + 1);
      v24 = v117;
      sub_19A33546C(a4, v117, &qword_1EAFA0020);
      v25 = v118;
      sub_19A33546C(v22 + v23 * v21, v118, &qword_1EAFA0020);
      LODWORD(v112) = sub_19A570B7C();
      sub_19A2F3FA0(v25, &qword_1EAFA0020);
      result = sub_19A2F3FA0(v24, &qword_1EAFA0020);
      v101 = v21;
      v4 = v21 + 2;
      v114 = v23;
      v26 = v22 + v23 * (v21 + 2);
      while (v17 != v4)
      {
        v27 = v117;
        sub_19A33546C(v26, v117, &qword_1EAFA0020);
        v28 = v118;
        sub_19A33546C(a4, v118, &qword_1EAFA0020);
        v29 = v17;
        v30 = sub_19A570B7C() & 1;
        sub_19A2F3FA0(v28, &qword_1EAFA0020);
        result = sub_19A2F3FA0(v27, &qword_1EAFA0020);
        ++v4;
        v26 += v114;
        a4 += v114;
        v31 = (v112 & 1) == v30;
        v17 = v29;
        if (!v31)
        {
          v17 = v4 - 1;
          break;
        }
      }

      a3 = v104;
      v20 = v101;
      v6 = v102;
      if (v112)
      {
        if (v17 < v101)
        {
          goto LABEL_127;
        }

        if (v101 < v17)
        {
          v4 = v114 * (v17 - 1);
          v32 = v17 * v114;
          v33 = v17;
          v34 = v17;
          v35 = v101;
          a4 = v101 * v114;
          do
          {
            if (v35 != --v34)
            {
              v36 = *v104;
              if (!*v104)
              {
                goto LABEL_133;
              }

              sub_19A3351B8(v36 + a4, v107, &qword_1EAFA0020);
              if (a4 < v4 || v36 + a4 >= v36 + v32)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_19A3351B8(v107, v36 + v4, &qword_1EAFA0020);
            }

            ++v35;
            v4 -= v114;
            v32 -= v114;
            a4 += v114;
          }

          while (v35 < v34);
          v20 = v101;
          v6 = v102;
          a3 = v104;
          v17 = v33;
        }
      }
    }

    v37 = *(a3 + 8);
    if (v17 < v37)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_126;
      }

      if (v17 - v20 < v100)
      {
        if (__OFADD__(v20, v100))
        {
          goto LABEL_128;
        }

        if (v20 + v100 >= v37)
        {
          v38 = *(a3 + 8);
        }

        else
        {
          v38 = v20 + v100;
        }

        if (v38 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v17 != v38)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v108;
    }

    else
    {
      result = sub_19A31CF2C(0, *(v108 + 2) + 1, 1, v108);
      v19 = result;
    }

    v4 = *(v19 + 2);
    v39 = *(v19 + 3);
    a4 = v4 + 1;
    if (v4 >= v39 >> 1)
    {
      result = sub_19A31CF2C((v39 > 1), v4 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v40 = &v19[16 * v4];
    *(v40 + 4) = v20;
    *(v40 + 5) = v18;
    v41 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v42 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v43 = *(v19 + 4);
          v44 = *(v19 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_52:
          if (v46)
          {
            goto LABEL_114;
          }

          v59 = &v19[16 * a4];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_117;
          }

          v65 = &v19[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_121;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v69 = &v19[16 * a4];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_66:
        if (v64)
        {
          goto LABEL_116;
        }

        v72 = &v19[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v42 - 1;
        if (v42 - 1 >= a4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v80 = v19;
        a4 = *&v19[16 * v4 + 32];
        v81 = *&v19[16 * v42 + 40];
        sub_19A375C90(*a3 + *(v113 + 72) * a4, *a3 + *(v113 + 72) * *&v19[16 * v42 + 32], *a3 + *(v113 + 72) * v81, v41);
        if (v6)
        {
        }

        if (v81 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v82 = v80;
        }

        else
        {
          v82 = sub_19A34DDAC(v80);
        }

        if (v4 >= *(v82 + 2))
        {
          goto LABEL_111;
        }

        v83 = &v82[16 * v4];
        *(v83 + 4) = a4;
        *(v83 + 5) = v81;
        v119 = v82;
        v4 = &v119;
        result = sub_19A34DD20(v42);
        v19 = v119;
        a4 = *(v119 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v19[16 * a4 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_112;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_113;
      }

      v54 = &v19[16 * a4];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_115;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_118;
      }

      if (v58 >= v50)
      {
        v76 = &v19[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v45 < v79)
        {
          v42 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = *(a3 + 8);
    if (v18 >= v17)
    {
      goto LABEL_96;
    }
  }

  v101 = v20;
  v102 = v6;
  v84 = *a3;
  v85 = *(v113 + 72);
  v86 = *a3 + v85 * (v17 - 1);
  v87 = -v85;
  v88 = v20 - v17;
  v105 = v85;
  v106 = v38;
  v114 = v84;
  a4 = v84 + v17 * v85;
LABEL_86:
  v111 = v86;
  v112 = v17;
  v109 = a4;
  v110 = v88;
  v89 = v86;
  while (1)
  {
    v4 = v117;
    sub_19A33546C(a4, v117, &qword_1EAFA0020);
    v90 = v118;
    sub_19A33546C(v89, v118, &qword_1EAFA0020);
    v91 = sub_19A570B7C();
    sub_19A2F3FA0(v90, &qword_1EAFA0020);
    result = sub_19A2F3FA0(v4, &qword_1EAFA0020);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v17 = v112 + 1;
      v18 = v106;
      v86 = v111 + v105;
      v88 = v110 - 1;
      a4 = v109 + v105;
      if (v112 + 1 != v106)
      {
        goto LABEL_86;
      }

      v20 = v101;
      v6 = v102;
      a3 = v104;
      if (v106 < v101)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v114)
    {
      break;
    }

    v92 = v115;
    sub_19A3351B8(a4, v115, &qword_1EAFA0020);
    swift_arrayInitWithTakeFrontToBack();
    sub_19A3351B8(v92, v89, &qword_1EAFA0020);
    v89 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_19A375C90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_58;
          }

          v29 = a3;
          v37 = v23;
          a3 += v24;
          v30 = v25 + v24;
          v31 = v44;
          sub_19A33546C(v30, v44, &qword_1EAFA0020);
          v32 = v27;
          v33 = v45;
          sub_19A33546C(v32, v45, &qword_1EAFA0020);
          v34 = sub_19A570B7C();
          sub_19A2F3FA0(v33, &qword_1EAFA0020);
          sub_19A2F3FA0(v31, &qword_1EAFA0020);
          if (v34)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v42;
            a1 = v39;
          }

          else
          {
            v27 = v42;
            a1 = v39;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v29 < v41 || a3 >= v41)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v29 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a3;
    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v13;
        v20 = v44;
        sub_19A33546C(a2, v44, &qword_1EAFA0020);
        v21 = v45;
        sub_19A33546C(a4, v45, &qword_1EAFA0020);
        v22 = sub_19A570B7C();
        sub_19A2F3FA0(v21, &qword_1EAFA0020);
        sub_19A2F3FA0(v20, &qword_1EAFA0020);
        v13 = v19;
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_58:
  sub_19A376194(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_19A376194(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_19A3762B4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_19A3763B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_19A573F1C() & 1;
  }
}

void *sub_19A37640C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0758);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0760);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  v13 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v13);
  sub_19A570A4C();
  sub_19A3784F4(&qword_1ED825330, MEMORY[0x1E6968678]);
  v14 = sub_19A572F7C();
  v16 = v15;
  v21 = 25180;
  v22 = 0xE200000000000000;
  v20[2] = a1;
  v20[3] = a2;
  sub_19A572ECC();

  MEMORY[0x19A900A50](25180, 0xE200000000000000);

  sub_19A571ACC();
  (*(v10 + 56))(v8, 0, 1, v9);
  (*(v10 + 32))(v12, v8, v9);
  v21 = v14;
  v22 = v16;
  sub_19A3783B4();
  sub_19A2F12E4(&qword_1EAF9F1D0, &qword_1EAFA0760);
  v17 = sub_19A572BCC();
  MEMORY[0x1EEE9AC00](v17);
  v20[-4] = v14;
  v20[-3] = v16;
  v20[-2] = a3;
  v18 = sub_19A36C72C(sub_19A378408, &v20[-6], v17);

  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_19A3767A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v9 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v33);
  v32 = type metadata accessor for PromptEdit(0);
  v10 = *(v32 - 8);
  v11 = MEMORY[0x1EEE9AC00](v32);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v30 - v14;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020) - 8);
  v16 = a1;
  v17 = a5;
  v37 = sub_19A37640C(v16, a2, a5);

  v18 = sub_19A376F14(&v37, a4);
  v30[2] = 0;

  v19 = v37;
  v20 = v37[2];
  if (v18 > v20)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v18 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFADD__(v20, v18 - v20))
  {
LABEL_24:
    __break(1u);
LABEL_25:

    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[1] = v17;
  if (!isUniquelyReferenced_nonNull_native || v18 > v19[3] >> 1)
  {
    if (v20 <= v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = v20;
    }

    v19 = sub_19A31D094(isUniquelyReferenced_nonNull_native, v22, 1, v19);
    v37 = v19;
  }

  sub_19A415B14(v18, v20, 0);
  v23 = v19[2];
  v31 = v19 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v36[0] = v31;
  v36[1] = v23;
  sub_19A374FBC(v36);
  v24 = v19[2];
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = MEMORY[0x1E69E7CC0];
  while (v24 <= v19[2])
  {
    v26 = v19;
    --v24;
    sub_19A33546C(v31 + *(v35 + 72) * v24, v15, &qword_1EAFA0020);
    sub_19A570BEC();
    sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
    sub_19A570D5C();
    sub_19A570C6C();
    sub_19A3784F4(&qword_1ED825330, MEMORY[0x1E6968678]);
    sub_19A570C0C();
    sub_19A36D208(v15, v13, type metadata accessor for PromptEdit);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_19A31D0B8(0, v25[2] + 1, 1, v25);
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_19A31D0B8(v27 > 1, v28 + 1, 1, v25);
    }

    sub_19A36EE74(v15, type metadata accessor for PromptEdit);
    v25[2] = v28 + 1;
    sub_19A37834C(v13, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, type metadata accessor for PromptEdit);
    v19 = v26;
    if (!v24)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:

LABEL_21:
  sub_19A374AB4(v25);
}

uint64_t sub_19A376C48(uint64_t a1, uint64_t a2)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v16 - v6;
  v8 = *(a1 + 16);
  v9 = v8 == 0;
  v21 = v8;
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = a1 + v11;
  v19 = a2;
  v24 = *(v5 + 72);
  v16 = v2;
  v17 = a2 + v11;
  do
  {
    v22 = v10;
    v20 = v9;
    v12 = *(a2 + 16);
    if (v12)
    {
      sub_19A570B9C();
      v13 = v17;
      do
      {
        sub_19A33546C(v13, v7, &qword_1EAFA0020);
        sub_19A3784F4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
        if (sub_19A572C1C() & 1) != 0 || (sub_19A572C1C() & 1) != 0 || (sub_19A3784F4(&qword_1ED825308, MEMORY[0x1E69687E8]), (sub_19A572C2C()))
        {
          sub_19A2F3FA0(v7, &qword_1EAFA0020);
        }

        else
        {
          v14 = sub_19A572C2C();
          sub_19A2F3FA0(v7, &qword_1EAFA0020);
          if ((v14 & 1) == 0)
          {
            return v22;
          }
        }

        v13 += v24;
        --v12;
      }

      while (v12);
    }

    v10 = v22 + 1;
    v9 = v22 + 1 == v21;
    a2 = v19;
  }

  while (v22 + 1 != v21);
  return 0;
}

uint64_t sub_19A376F14(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v43 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v17 = *a1;
  v18 = v54;
  result = sub_19A376C48(*a1, a2);
  if (!v18)
  {
    v51 = result;
    if (v20)
    {
      return *(v17 + 16);
    }

    else
    {
      v21 = v51 + 1;
      if (!__OFADD__(v51, 1))
      {
        v22 = v17;
        v43 = 0;
        v44 = a1;
        v49 = a2;
        v55 = v4;
        v46 = v11;
        v47 = v5;
        v45 = v8;
        while (1)
        {
          v24 = *(v22 + 16);
          if (v21 == v24)
          {
            return v51;
          }

          if (v21 >= v24)
          {
            break;
          }

          v52 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v53 = v22;
          v25 = *(v5 + 72);
          v54 = v21;
          v50 = v25 * v21;
          v48 = v22 + v52;
          sub_19A33546C(v22 + v52 + v25 * v21, v16, &qword_1EAFA0020);
          v26 = *(a2 + 16);
          if (v26)
          {
            sub_19A570B9C();
            v27 = v49 + v52;
            do
            {
              sub_19A33546C(v27, v14, &qword_1EAFA0020);
              sub_19A3784F4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
              if (sub_19A572C1C() & 1) != 0 || (sub_19A572C1C() & 1) != 0 || (sub_19A3784F4(&qword_1ED825308, MEMORY[0x1E69687E8]), (sub_19A572C2C()))
              {
                sub_19A2F3FA0(v14, &qword_1EAFA0020);
              }

              else
              {
                v28 = sub_19A572C2C();
                sub_19A2F3FA0(v14, &qword_1EAFA0020);
                if ((v28 & 1) == 0)
                {
                  result = sub_19A2F3FA0(v16, &qword_1EAFA0020);
                  v22 = v53;
                  v29 = v54;
                  goto LABEL_6;
                }
              }

              v27 += v25;
              --v26;
            }

            while (v26);
          }

          result = sub_19A2F3FA0(v16, &qword_1EAFA0020);
          v30 = v51;
          v29 = v54;
          if (v51 == v54)
          {
            v22 = v53;
          }

          else
          {
            v31 = v45;
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }

            v32 = v53[2];
            if (v51 >= v32)
            {
              goto LABEL_35;
            }

            v33 = v25 * v51;
            v34 = v48;
            result = sub_19A33546C(v48 + v25 * v51, v46, &qword_1EAFA0020);
            if (v54 >= v32)
            {
              goto LABEL_36;
            }

            v35 = v34 + v50;
            v36 = v31;
            sub_19A33546C(v35, v31, &qword_1EAFA0020);
            v37 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_19A32E480(v37);
            }

            v38 = v44;
            v39 = v46;
            v40 = v37;
            v41 = v37 + v52;
            result = sub_19A3782DC(v36, &v41[v33]);
            if (v54 >= v40[2])
            {
              goto LABEL_37;
            }

            result = sub_19A3782DC(v39, &v41[v50]);
            v29 = v54;
            *v38 = v40;
            v22 = v40;
          }

          v23 = __OFADD__(v30, 1);
          v42 = v30 + 1;
          if (v23)
          {
            goto LABEL_33;
          }

          v51 = v42;
LABEL_6:
          v23 = __OFADD__(v29, 1);
          v21 = v29 + 1;
          a2 = v49;
          v5 = v47;
          if (v23)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

void *sub_19A3773D4(int *a1, uint64_t a2, int *a3)
{
  v89 = a3;
  v81 = type metadata accessor for PromptEdit(0);
  v80 = *(v81 - 8);
  v5 = MEMORY[0x1EEE9AC00](v81);
  v84 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v72 - v7;
  v88 = sub_19A570BEC();
  v72 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v72 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v76 = *(v86 - 8);
  v11 = MEMORY[0x1EEE9AC00](v86);
  v93 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v91 = &v72 - v15;
  v92 = sub_19A570B4C();
  v82 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_19A570B2C();
  v77 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v72 - v22;
  v23 = sub_19A570B5C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0768);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v72 - v28;
  v73 = *(a2 + 24);
  v74 = *v89;
  v89 = a1;
  sub_19A570B6C();
  (*(v24 + 16))(v29, v26, v23);
  sub_19A3784F4(&qword_1ED825310, MEMORY[0x1E69687C8]);
  sub_19A5733DC();
  (*(v24 + 8))(v26, v23);
  v30 = v82 + 1;
  v79 = (v77 + 2);
  v78 = (v77 + 4);
  ++v77;
  v82 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_19A57341C();
    sub_19A3784F4(&qword_1ED825320, MEMORY[0x1E69687B0]);
    v31 = v92;
    v32 = sub_19A572C2C();
    (*v30)(v17, v31);
    if (v32)
    {
      break;
    }

    v33 = sub_19A57345C();
    v34 = v90;
    (*v79)(v90);
    v33(v97, 0);
    sub_19A57342C();
    (*v78)(v21, v34, v18);
    sub_19A342038();
    v35 = v91;
    sub_19A570B3C();
    v36 = sub_19A57102C();
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {
      (*v77)(v21, v18);
      sub_19A2F3FA0(v35, &qword_1EAF9FD80);
    }

    else
    {
      sub_19A2F3FA0(v35, &qword_1EAF9FD80);
      sub_19A570B1C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_19A31D094(0, v82[2] + 1, 1, v82);
      }

      v38 = v82[2];
      v37 = v82[3];
      if (v38 >= v37 >> 1)
      {
        v82 = sub_19A31D094(v37 > 1, v38 + 1, 1, v82);
      }

      (*v77)(v21, v18);
      v39 = v82;
      v82[2] = v38 + 1;
      sub_19A3351B8(v75, v39 + ((v76[80] + 32) & ~v76[80]) + *(v76 + 9) * v38, &qword_1EAFA0020);
    }
  }

  sub_19A2F3FA0(v29, &qword_1EAFA0768);
  v40 = sub_19A47374C(v73);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v40 + 32;
    v43 = (v72 + 16);
    v44 = (v76 + 48);
    v92 = MEMORY[0x1E69E7CC0];
    v45 = v74;
    v75 = v40;
    v73 = v40 + 32;
    while (v41 <= *(v40 + 16))
    {
      v41 = (v41 - 1);
      v46 = (v42 + (v41 << 6));
      if ((v46[2] & v45) != 0)
      {
        v79 = v41;
        v47 = v46[1];
        v91 = *v46;
        v48 = v46[3];
        v49 = v46[4];
        v50 = v46[5];
        v96 = MEMORY[0x1E69E7CC0];

        if ((v45 & 8) != 0)
        {

          sub_19A470688(v51);
        }

        if ((v45 & 0x20) != 0)
        {

          sub_19A470688(v52);
        }

        v76 = v50;
        v77 = v49;
        if ((v45 & 0x10) != 0)
        {

          sub_19A470688(v53);
        }

        v78 = v48;
        v54 = sub_19A473734(v96);

        v55 = *(v54 + 16);
        if (v55)
        {
          v90 = (v54 + 32);

          while (v55 <= *(v54 + 16))
          {
            --v55;
            v97[0] = *&v90[24 * v55];
            v94 = v91;
            v95 = v47;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD58);
            sub_19A2F12E4(&qword_1EAF9F0B8, &qword_1EAF9FD58);
            sub_19A2F4450();
            sub_19A57375C();
            (*v43)(v87, v89, v88);
            sub_19A3784F4(&qword_1ED825300, MEMORY[0x1E6968848]);
            v56 = v85;
            sub_19A57346C();
            if ((*v44)(v56, 1, v86) == 1)
            {
              sub_19A2F3FA0(v56, &qword_1EAFA01D0);
              if (!v55)
              {
                goto LABEL_41;
              }
            }

            else
            {
              v57 = v56;
              v58 = v93;
              v59 = sub_19A3351B8(v57, v93, &qword_1EAFA0020);
              MEMORY[0x1EEE9AC00](v59);
              *(&v72 - 2) = v58;
              v60 = sub_19A36C274(sub_19A37853C, (&v72 - 4), v82);
              v61 = *(v60 + 16);
              if (v61)
              {
                v62 = 0;
                v63 = 32;
                do
                {
                  v64 = *(v60 + v63);
                  v65 = __OFADD__(v62, v64);
                  v62 += v64;
                  if (v65)
                  {
                    __break(1u);
                    goto LABEL_46;
                  }

                  v63 += 8;
                  --v61;
                }

                while (v61);

                if (v62)
                {
                  goto LABEL_37;
                }
              }

              else
              {
              }

              v66 = v83;
              sub_19A33546C(v93, v83, &qword_1EAFA0020);
              sub_19A570ACC();
              sub_19A36D208(v66, v84, type metadata accessor for PromptEdit);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v67 = v92;
              }

              else
              {
                v67 = sub_19A31D0B8(0, v92[2] + 1, 1, v92);
              }

              v69 = v67[2];
              v68 = v67[3];
              if (v69 >= v68 >> 1)
              {
                v92 = sub_19A31D0B8(v68 > 1, v69 + 1, 1, v67);
              }

              else
              {
                v92 = v67;
              }

              sub_19A36EE74(v83, type metadata accessor for PromptEdit);
              v70 = v92;
              v92[2] = v69 + 1;
              sub_19A37834C(v84, v70 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v69, type metadata accessor for PromptEdit);
LABEL_37:
              sub_19A2F3FA0(v93, &qword_1EAFA0020);
              if (!v55)
              {
LABEL_41:

                goto LABEL_42;
              }
            }
          }

LABEL_46:
          __break(1u);
          break;
        }

LABEL_42:

        v45 = v74;
        v40 = v75;
        v41 = v79;
        v42 = v73;
      }

      if (!v41)
      {

        return v92;
      }
    }

    __break(1u);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_19A378158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  _s15AssembledPromptV12PromptInputsVMa(0);
  return sub_19A3999DC(a1, v5, a2);
}

uint64_t sub_19A3782DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A37834C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A3783B4()
{
  result = qword_1EAF9F190;
  if (!qword_1EAF9F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F190);
  }

  return result;
}

unint64_t sub_19A378428()
{
  result = qword_1ED824970;
  if (!qword_1ED824970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824970);
  }

  return result;
}

uint64_t sub_19A37847C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_19A573ECC() & 1;
  }
}

uint64_t sub_19A3784F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A37855C()
{
  result = qword_1EAFA0780;
  if (!qword_1EAFA0780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0780);
  }

  return result;
}

void sub_19A3785D8()
{
  sub_19A37865C();
  if (v0 <= 0x3F)
  {
    sub_19A570BEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A37865C()
{
  if (!qword_1EAF9E800)
  {
    sub_19A570B9C();
    sub_19A3784F4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
    v0 = sub_19A57349C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9E800);
    }
  }
}

uint64_t LexiconUtility.__allocating_init()()
{
  v0 = swift_allocObject();
  LexiconUtility.init()();
  return v0;
}

void *LexiconUtility.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0788);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0790);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
  sub_19A57112C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19A57C030;
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  sub_19A57103C();
  v4 = sub_19A379948(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v0[4] = v4;
  return v0;
}

void LexiconUtility.detectLanguages(in:constraints:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_19A379C40((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
}

void sub_19A378A88(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = sub_19A570D4C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v12 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = *a1;
  if (*a1 || (v27 = v6, v13 = [objc_allocWithZone(MEMORY[0x1E69ABFB0]) init], (*a1 = v13) != 0))
  {
    v14 = *(a2 + 16);
    v15 = v13;
    v16 = sub_19A572CCC();
    if (v14)
    {
      sub_19A57112C();
      v17 = sub_19A57307C();
    }

    else
    {
      v17 = 0;
    }

    v29[0] = 0;
    v18 = [v15 detectLanguagesInString:v16 constraints:v17 error:v29];

    if (v29[0])
    {
      v29[0];

      swift_willThrow();
    }

    else
    {
      sub_19A57112C();
      v19 = sub_19A57308C();

      *v28 = v19;
    }
  }

  else
  {
    sub_19A379E50();
    swift_allocError();
    v21 = v20;
    sub_19A572C8C();
    sub_19A572C7C();
    sub_19A572C6C();
    sub_19A572C7C();
    sub_19A570D3C();
    v22 = v27;
    (*(v27 + 16))(v9, v11, v5);
    v23 = sub_19A572D8C();
    v25 = v24;
    (*(v22 + 8))(v11, v5);
    *v21 = v23;
    v21[1] = v25;
    swift_willThrow();
  }
}

uint64_t LexiconUtility.checkLexiconValidity(of:locales:allowlist:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock((v5 + 24));
    sub_19A332280((v5 + 16), &v8);
    os_unfair_lock_unlock((v5 + 24));
    if (!v3)
    {
      v6 = v8;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void sub_19A378E80(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, unsigned __int8 *a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v32 = a5;
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = sub_19A570D4C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = *a1;
  if (*a1 || (v30 = v7, v31 = v8, v15 = [objc_allocWithZone(MEMORY[0x1E69ABFB8]) init], (*a1 = v15) != 0))
  {
    v16 = v15;
    v17 = sub_19A3791CC(a2);
    v18 = sub_19A572CCC();
    if (v17)
    {
      sub_19A57112C();
      v19 = sub_19A57307C();
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_19A57336C();
    v35[0] = 0;
    v21 = [v16 checkValidityOfString:v18 locales:v19 allowlist:v20 error:v35];

    v22 = v35[0];
    if (v35[0])
    {
      swift_willThrow();
      v22;
    }

    else
    {

      *v32 = v21;
    }
  }

  else
  {
    sub_19A379E50();
    swift_allocError();
    v24 = v23;
    sub_19A572C8C();
    sub_19A572C7C();
    sub_19A572C6C();
    sub_19A572C7C();
    sub_19A570D3C();
    v25 = v30;
    v26 = v31;
    (*(v31 + 16))(v11, v13, v30);
    v27 = sub_19A572D8C();
    v29 = v28;
    (*(v26 + 8))(v13, v25);
    *v24 = v27;
    v24[1] = v29;
    swift_willThrow();
  }
}

uint64_t sub_19A3791CC(uint64_t a1)
{
  v2 = sub_19A57112C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v53 = &v42 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  v13 = *(a1 + 16);
  v44 = v3;
  if (v13)
  {
    v52 = objc_opt_self();
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v46 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v17 = (a1 + v46);
    v18 = *(v14 + 56);
    v48 = (v14 - 8);
    v45 = (v14 + 16);
    v54 = MEMORY[0x1E69E7CC0];
    v50 = v16;
    v51 = v14;
    v47 = v2;
    v49 = v18;
    v16(v12, (a1 + v46), v2);
    while (1)
    {
      sub_19A57104C();
      v21 = v2;
      v22 = sub_19A572CCC();

      v23 = [v52 baseLanguageFromLanguage_];

      sub_19A572CFC();
      sub_19A57103C();
      v24 = v54;
      if (sub_19A410CD4(v10, v54))
      {
        v19 = *v48;
        (*v48)(v10, v21);
        v19(v12, v21);
        v2 = v21;
        v20 = v49;
      }

      else
      {
        v15(v53, v10, v21);
        v25 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_19A31E00C(0, v24[2] + 1, 1, v24);
        }

        v27 = v25[2];
        v26 = v25[3];
        if (v27 >= v26 >> 1)
        {
          v25 = sub_19A31E00C(v26 > 1, v27 + 1, 1, v25);
        }

        v28 = v47;
        v29 = *v48;
        (*v48)(v10, v47);
        v29(v12, v28);
        v25[2] = v27 + 1;
        v2 = v28;
        v54 = v25;
        v30 = v25 + v46 + v27 * v49;
        v20 = v49;
        (*v45)(v30, v53, v28);
      }

      v17 += v20;
      --v13;
      v15 = v50;
      if (!v13)
      {
        break;
      }

      v50(v12, v17, v2);
    }
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  v31 = v54;
  if (v54[2])
  {
    v32 = v43;
    sub_19A57103C();
    if (sub_19A410CD4(v32, v31) || (v33 = *(v42 + 32), , v34 = , v35 = sub_19A421EC8(v34), , v36 = sub_19A403684(v35, v33), , v37 = v36[2], , !v37))
    {
      (*(v44 + 8))(v32, v2);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
      v38 = v44;
      v39 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_19A576E10;
      (*(v38 + 16))(v40 + v39, v32, v2);
      v55 = v31;
      sub_19A47098C(v40);
      (*(v38 + 8))(v32, v2);
      return v55;
    }
  }

  else
  {

    return 0;
  }

  return v31;
}

uint64_t LexiconUtility.deinit()
{

  return v0;
}

uint64_t LexiconUtility.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A3796E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0798);
    v3 = sub_19A57391C();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (1)
    {
      v6 = *(v22 + v4++);
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          if (*(*(v3 + 48) + v9))
          {
            if (*(*(v3 + 48) + v9) == 1)
            {
              v13 = 0xE300000000000000;
              v14 = 6647407;
              if (!v6)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v13 = 0xE800000000000000;
              v14 = 0x656C7069746C756DLL;
              if (!v6)
              {
LABEL_20:
                v16 = 0xE400000000000000;
                if (v14 != 1869768058)
                {
                  goto LABEL_22;
                }

                goto LABEL_21;
              }
            }
          }

          else
          {
            v13 = 0xE400000000000000;
            v14 = 1869768058;
            if (!v6)
            {
              goto LABEL_20;
            }
          }

          if (v6 == 1)
          {
            v15 = 6647407;
          }

          else
          {
            v15 = 0x656C7069746C756DLL;
          }

          if (v6 == 1)
          {
            v16 = 0xE300000000000000;
          }

          else
          {
            v16 = 0xE800000000000000;
          }

          if (v14 != v15)
          {
            goto LABEL_22;
          }

LABEL_21:
          if (v13 == v16)
          {

            goto LABEL_4;
          }

LABEL_22:
          v17 = sub_19A573F1C();

          if (v17)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (v4 == v21)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_19A379948(uint64_t a1)
{
  v2 = sub_19A57112C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD50);
    v9 = sub_19A57391C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_19A379EA4(&qword_1EAF9F8D8);
      v16 = sub_19A572B3C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_19A379EA4(&qword_1EAF9F8D0);
          v23 = sub_19A572C2C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_19A379CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA07A0);
    v3 = sub_19A57391C();
    v4 = 0;
    v5 = v3 + 56;
    v18 = v1;
    while (1)
    {
      v6 = *(a1 + 32 + v4);
      sub_19A5740BC();
      sub_19A572E4C();

      result = sub_19A57410C();
      v8 = -1 << *(v3 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) != 0)
      {
        v13 = ~v8;
        while (*(*(v3 + 48) + v9) << 16 != v6 << 16)
        {
          v14 = sub_19A573F1C();
          result = swift_bridgeObjectRelease_n();
          if (v14)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v13;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
          if ((v11 & (1 << v9)) == 0)
          {
            goto LABEL_10;
          }
        }

        swift_bridgeObjectRelease_n();
      }

      else
      {
LABEL_10:
        *(v5 + 8 * v10) = v11 | v12;
        *(*(v3 + 48) + v9) = v6;
        v15 = *(v3 + 16);
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v17;
      }

LABEL_4:
      if (++v4 == v18)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_19A379E50()
{
  result = qword_1EAFA07A8;
  if (!qword_1EAFA07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA07A8);
  }

  return result;
}

uint64_t sub_19A379EA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19A57112C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A379EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB0);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for DefinitionSession();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A379FF0, v3, 0);
}

uint64_t sub_19A379FF0()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[17] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A36C0A8(v2 + v4, v1);
  v9 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_19A37A128;
  v6 = v0[15];
  v7 = v0[12];

  return v9(v7, v6);
}

uint64_t sub_19A37A128()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 152) = v0;

  sub_19A36BAC0(v3);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_19A37A37C;
  }

  else
  {
    v5 = sub_19A37A270;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_19A37A270()
{
  v1 = v0[12];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    sub_19A37A530(v1);
  }

  else
  {
    v2 = v0[16];
    v3 = v0[17];
    v4 = v0[11];
    sub_19A37A598(v1, v2);
    swift_beginAccess();
    sub_19A37A5FC(v2, v4 + v3);
    swift_endAccess();
    sub_19A36BAC0(v2);
  }

  sub_19A36C0A8(v0[11] + v0[17], v0[8]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A37A37C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A37A3F4()
{
  sub_19A36BAC0(v0 + OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for DefinitionSessionAccessor()
{
  result = qword_1EAF9F360;
  if (!qword_1EAF9F360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A37A488()
{
  result = type metadata accessor for DefinitionSession();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19A37A530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A37A598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefinitionSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A37A5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefinitionSession();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_19A37A674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19A37A6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_19A37A734(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA07B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = v1[2];
  v15 = v9;
  v10 = *(v1 + 1);
  v13[1] = *(v1 + 2);
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A37AD04();
  sub_19A5741AC();
  v22 = v8;
  v21 = 0;
  sub_19A37AE54();
  sub_19A573E1C();
  if (!v2)
  {
    v11 = v14;
    v20 = v15;
    v19 = 1;
    sub_19A37AEA8();
    sub_19A573E1C();
    v18 = v11;
    v17 = 2;
    sub_19A37AEFC();
    sub_19A573E1C();
    v16 = 3;
    sub_19A573DCC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_19A37A94C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA07B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A37AD04();
  sub_19A57417C();
  if (!v2)
  {
    v23 = 0;
    sub_19A37AD58();
    sub_19A573CDC();
    v9 = v24;
    v21 = 1;
    sub_19A37ADAC();
    sub_19A573CDC();
    v10 = v22;
    v19 = 2;
    sub_19A37AE00();
    sub_19A573CDC();
    v17 = v20;
    v18 = 3;
    v11 = sub_19A573C8C();
    v14 = v13;
    v15 = *(v6 + 8);
    v16 = v11;
    v15(v8, v5);
    *a2 = v9;
    *(a2 + 1) = v10;
    *(a2 + 2) = v17;
    *(a2 + 8) = v16;
    *(a2 + 16) = v14;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_19A37ABC0()
{
  v1 = 6645601;
  v2 = 0x656E6F546E696B73;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x7265646E6567;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A37AC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A37B068(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A37AC5C(uint64_t a1)
{
  v2 = sub_19A37AD04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37AC98(uint64_t a1)
{
  v2 = sub_19A37AD04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_19A37AD04()
{
  result = qword_1ED8246D0[0];
  if (!qword_1ED8246D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8246D0);
  }

  return result;
}

unint64_t sub_19A37AD58()
{
  result = qword_1EAF9E9A8;
  if (!qword_1EAF9E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E9A8);
  }

  return result;
}

unint64_t sub_19A37ADAC()
{
  result = qword_1EAF9E988;
  if (!qword_1EAF9E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E988);
  }

  return result;
}

unint64_t sub_19A37AE00()
{
  result = qword_1EAF9E970;
  if (!qword_1EAF9E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E970);
  }

  return result;
}

unint64_t sub_19A37AE54()
{
  result = qword_1EAF9F280;
  if (!qword_1EAF9F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F280);
  }

  return result;
}

unint64_t sub_19A37AEA8()
{
  result = qword_1EAF9F218;
  if (!qword_1EAF9F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F218);
  }

  return result;
}

unint64_t sub_19A37AEFC()
{
  result = qword_1EAF9F1E0;
  if (!qword_1EAF9F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F1E0);
  }

  return result;
}

unint64_t sub_19A37AF64()
{
  result = qword_1EAFA07C0;
  if (!qword_1EAFA07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA07C0);
  }

  return result;
}

unint64_t sub_19A37AFBC()
{
  result = qword_1ED8246C0;
  if (!qword_1ED8246C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8246C0);
  }

  return result;
}

unint64_t sub_19A37B014()
{
  result = qword_1ED8246C8;
  if (!qword_1ED8246C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8246C8);
  }

  return result;
}

uint64_t sub_19A37B068(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (v3 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F546E696B73 && a2 == 0xE800000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019A5975B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t static NamedEntityData.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_19A573F1C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NamedEntityData(0) + 20);

  return _s16VisualGeneration15NamedEntityDataV0cD4TypeO2eeoiySbAE_AEtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_19A37B254()
{
  v1 = *v0;
  v2 = 1853189998;
  v3 = 0x6E6F73726570;
  v4 = 0x45636972656E6567;
  if (v1 != 3)
  {
    v4 = 0x746E4564656D616ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696A6F6D65;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19A37B2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A3838D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A37B31C(uint64_t a1)
{
  v2 = sub_19A381A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37B358(uint64_t a1)
{
  v2 = sub_19A381A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A37B394(uint64_t a1)
{
  v2 = sub_19A381BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37B3D0(uint64_t a1)
{
  v2 = sub_19A381BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A37B40C(uint64_t a1)
{
  v2 = sub_19A381AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37B448(uint64_t a1)
{
  v2 = sub_19A381AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A37B484(uint64_t a1)
{
  v2 = sub_19A381A54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37B4C0(uint64_t a1)
{
  v2 = sub_19A381A54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A37B4FC(uint64_t a1)
{
  v2 = sub_19A381C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37B538(uint64_t a1)
{
  v2 = sub_19A381C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A37B574(uint64_t a1)
{
  v2 = sub_19A381B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37B5B0(uint64_t a1)
{
  v2 = sub_19A381B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Concept.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA07C8);
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v46 - v3;
  v57 = type metadata accessor for NamedEntityData(0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA07D0);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA07D8);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v46 - v8;
  v52 = sub_19A57102C();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA07E0);
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA07E8);
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for Concept(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA07F0);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v20 = &v46 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A381A00();
  v66 = v20;
  sub_19A5741AC();
  sub_19A381CD4(v64, v18, type metadata accessor for Concept);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v31 = v62;
    v30 = v63;
    if (EnumCaseMultiPayload)
    {
      LOBYTE(v68) = 1;
      sub_19A381BEC();
      v45 = v66;
      v44 = v67;
      sub_19A573DAC();
      sub_19A573E2C();

      (*(v31 + 8))(v12, v30);
      return (*(v65 + 8))(v45, v44);
    }

    else
    {
      LOBYTE(v68) = 0;
      sub_19A381C40();
      v33 = v66;
      v32 = v67;
      sub_19A573DAC();
      sub_19A573E2C();

      (*(v47 + 8))(v15, v13);
      return (*(v65 + 8))(v33, v32);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = v50;
      v35 = v48;
      v36 = v52;
      (*(v50 + 32))(v48, v18, v52);
      LOBYTE(v68) = 2;
      sub_19A381B50();
      v37 = v49;
      v39 = v66;
      v38 = v67;
      sub_19A573DAC();
      sub_19A381BA4(&qword_1ED8252E8, MEMORY[0x1E69695A8]);
      v40 = v54;
      sub_19A573E7C();
      (*(v53 + 8))(v37, v40);
      (*(v34 + 8))(v35, v36);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v23 = *v18;
        v22 = *(v18 + 1);
        v24 = v18[16];
        LOBYTE(v68) = 3;
        sub_19A381AA8();
        v25 = v51;
        v27 = v66;
        v26 = v67;
        sub_19A573DAC();
        v68 = v23;
        v69 = v22;
        v70 = v24;
        sub_19A381AFC();
        v28 = v56;
        sub_19A573E7C();
        (*(v55 + 8))(v25, v28);
        (*(v65 + 8))(v27, v26);
      }

      v41 = v58;
      sub_19A381D3C(v18, v58, type metadata accessor for NamedEntityData);
      LOBYTE(v68) = 4;
      sub_19A381A54();
      v42 = v59;
      v39 = v66;
      v38 = v67;
      sub_19A573DAC();
      sub_19A381BA4(&qword_1EAFA0800, type metadata accessor for NamedEntityData);
      v43 = v61;
      sub_19A573E7C();
      (*(v60 + 8))(v42, v43);
      sub_19A381DA4(v41, type metadata accessor for NamedEntityData);
    }

    return (*(v65 + 8))(v39, v38);
  }
}

uint64_t Concept.hash(into:)()
{
  v1 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NamedEntityData(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19A57102C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Concept(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A381CD4(v0, v15, type metadata accessor for Concept);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    MEMORY[0x19A901C40](EnumCaseMultiPayload != 0);
    sub_19A572E4C();
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v10 + 32))(v12, v15, v9);
    MEMORY[0x19A901C40](2);
    sub_19A381BA4(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
    sub_19A572B4C();
    return (*(v10 + 8))(v12, v9);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v17 = v15[16];
    MEMORY[0x19A901C40](3);
    sub_19A572E4C();
    sub_19A5740DC();
    if (v17 != 3)
    {
      MEMORY[0x19A901C40](v17);
    }
  }

  else
  {
    sub_19A381D3C(v15, v8, type metadata accessor for NamedEntityData);
    MEMORY[0x19A901C40](4);
    sub_19A572E4C();
    sub_19A381CD4(&v8[*(v6 + 20)], v5, type metadata accessor for NamedEntityData.NamedEntityType);
    if ((*(v22 + 48))(v5, 1, v23) == 1)
    {
      MEMORY[0x19A901C40](0);
    }

    else
    {
      v19 = v21;
      sub_19A381D3C(v5, v21, type metadata accessor for NamedEntityData.PhotosPersonData);
      MEMORY[0x19A901C40](1);
      sub_19A381BA4(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
      sub_19A572B4C();
      sub_19A5740DC();
      sub_19A5740DC();
      sub_19A381DA4(v19, type metadata accessor for NamedEntityData.PhotosPersonData);
    }

    return sub_19A381DA4(v8, type metadata accessor for NamedEntityData);
  }
}

uint64_t Concept.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0818);
  v4 = *(v3 - 8);
  v88 = v3;
  v89 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v91 = &v74 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0820);
  v87 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v90 = &v74 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0828);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v97 = &v74 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0830);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v96 = &v74 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0838);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v94 = &v74 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0840);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v11 = &v74 - v10;
  v92 = type metadata accessor for Concept(0);
  v12 = MEMORY[0x1EEE9AC00](v92);
  v79 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v74 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v74 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v74 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = (&v74 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v74 - v26;
  v28 = a1[3];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_19A381A00();
  v29 = v107;
  sub_19A57417C();
  if (v29)
  {
    goto LABEL_9;
  }

  v75 = v25;
  v76 = v22;
  v78 = v19;
  v77 = v16;
  v30 = v94;
  v31 = v95;
  v33 = v96;
  v32 = v97;
  v107 = v27;
  v34 = v98;
  v35 = sub_19A573D7C();
  v36 = (2 * *(v35 + 16)) | 1;
  v103 = v35;
  v104 = v35 + 32;
  v105 = 0;
  v106 = v36;
  v37 = sub_19A343228();
  if (v37 == 5 || v105 != v106 >> 1)
  {
    v41 = sub_19A5739FC();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
    *v43 = v92;
    sub_19A573C7C();
    sub_19A5739DC();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    (*(v93 + 8))(v11, v31);
    swift_unknownObjectRelease();
LABEL_9:
    v44 = v99;
    return __swift_destroy_boxed_opaque_existential_0Tm(v44);
  }

  if (v37 <= 1u)
  {
    v46 = v34;
    if (v37)
    {
      LOBYTE(v100) = 1;
      sub_19A381BEC();
      sub_19A573C5C();
      v57 = v31;
      v58 = v93;
      v49 = v34;
      v59 = v57;
      v60 = v82;
      v72 = sub_19A573CFC();
      v70 = v73;
      (*(v83 + 8))(v33, v60);
      (*(v58 + 8))(v11, v59);
      swift_unknownObjectRelease();
      v71 = v76;
      *v76 = v72;
    }

    else
    {
      LOBYTE(v100) = 0;
      sub_19A381C40();
      v47 = v30;
      sub_19A573C5C();
      v48 = v93;
      v49 = v46;
      v50 = v81;
      v68 = sub_19A573CFC();
      v70 = v69;
      (*(v80 + 8))(v47, v50);
      (*(v48 + 8))(v11, v31);
      swift_unknownObjectRelease();
      v71 = v75;
      *v75 = v68;
    }

    *(v71 + 8) = v70;
    swift_storeEnumTagMultiPayload();
    v65 = v107;
    sub_19A381D3C(v71, v107, type metadata accessor for Concept);
    v66 = v99;
    v67 = v49;
  }

  else
  {
    if (v37 == 2)
    {
      LOBYTE(v100) = 2;
      sub_19A381B50();
      sub_19A573C5C();
      sub_19A57102C();
      sub_19A381BA4(&qword_1ED8252E0, MEMORY[0x1E69695A8]);
      v51 = v78;
      v52 = v86;
      sub_19A573D4C();
      v53 = v93;
      (*(v85 + 8))(v32, v52);
      (*(v53 + 8))(v11, v31);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v64 = v51;
    }

    else if (v37 == 3)
    {
      LOBYTE(v100) = 3;
      sub_19A381AA8();
      v38 = v90;
      sub_19A573C5C();
      sub_19A381E04();
      v39 = v84;
      sub_19A573D4C();
      v40 = v93;
      (*(v87 + 8))(v38, v39);
      (*(v40 + 8))(v11, v31);
      swift_unknownObjectRelease();
      v61 = v101;
      v62 = v102;
      v63 = v77;
      *v77 = v100;
      v63[1] = v61;
      *(v63 + 16) = v62;
      swift_storeEnumTagMultiPayload();
      v64 = v63;
    }

    else
    {
      LOBYTE(v100) = 4;
      sub_19A381A54();
      sub_19A573C5C();
      type metadata accessor for NamedEntityData(0);
      sub_19A381BA4(&qword_1EAFA0848, type metadata accessor for NamedEntityData);
      v54 = v79;
      v55 = v88;
      v56 = v91;
      sub_19A573D4C();
      (*(v89 + 8))(v56, v55);
      (*(v93 + 8))(v11, v31);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v64 = v54;
    }

    v65 = v107;
    sub_19A381D3C(v64, v107, type metadata accessor for Concept);
    v66 = v99;
    v67 = v34;
  }

  sub_19A381D3C(v65, v67, type metadata accessor for Concept);
  v44 = v66;
  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

uint64_t sub_19A37D0D4()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x694663696C627570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6867697279706F63;
  }
}

uint64_t sub_19A37D140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A383A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A37D168(uint64_t a1)
{
  v2 = sub_19A381E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37D1A4(uint64_t a1)
{
  v2 = sub_19A381E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A37D1E0(uint64_t a1)
{
  v2 = sub_19A381F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37D21C(uint64_t a1)
{
  v2 = sub_19A381F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A37D258(uint64_t a1)
{
  v2 = sub_19A381F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37D294(uint64_t a1)
{
  v2 = sub_19A381F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A37D2D0(uint64_t a1)
{
  v2 = sub_19A381EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37D30C(uint64_t a1)
{
  v2 = sub_19A381EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenericEntityData.RejectionCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0858);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0860);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0868);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0870);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A381E58();
  sub_19A5741AC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_19A381F00();
      v9 = v21;
      sub_19A573DAC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_19A381EAC();
      v9 = v24;
      sub_19A573DAC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_19A381F54();
    sub_19A573DAC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t GenericEntityData.RejectionCategory.hashValue.getter()
{
  v1 = *v0;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  return sub_19A57410C();
}

uint64_t GenericEntityData.RejectionCategory.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0898);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA08A0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA08A8);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA08B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_19A381E58();
  v15 = v36;
  sub_19A57417C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_19A573D7C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_19A344198();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_19A5739FC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
      *v24 = &type metadata for GenericEntityData.RejectionCategory;
      sub_19A573C7C();
      sub_19A5739DC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
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
          sub_19A381F00();
          sub_19A573C5C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_19A381EAC();
          v26 = v17;
          sub_19A573C5C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_19A381F54();
        sub_19A573C5C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t GenericEntityData.entityString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_19A37DD20()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x7453797469746E65;
  }
}

uint64_t sub_19A37DD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7453797469746E65 && a2 == 0xEC000000676E6972;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019A5975F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A573F1C();

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

uint64_t sub_19A37DE50(uint64_t a1)
{
  v2 = sub_19A381FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37DE8C(uint64_t a1)
{
  v2 = sub_19A381FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenericEntityData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA08B8);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A381FA8();
  sub_19A5741AC();
  v13 = 0;
  sub_19A573E2C();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_19A381FFC();
    sub_19A573E1C();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t GenericEntityData.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_19A572E4C();
  if (v1 == 3)
  {
    return sub_19A5740DC();
  }

  sub_19A5740DC();
  return MEMORY[0x19A901C40](v1);
}

uint64_t GenericEntityData.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A5740DC();
  if (v1 != 3)
  {
    MEMORY[0x19A901C40](v1);
  }

  return sub_19A57410C();
}

uint64_t GenericEntityData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA08C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A381FA8();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = 0;
  v9 = sub_19A573CFC();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_19A382050();
  sub_19A573CDC();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A37E364()
{
  v1 = *(v0 + 16);
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A5740DC();
  if (v1 != 3)
  {
    MEMORY[0x19A901C40](v1);
  }

  return sub_19A57410C();
}

uint64_t sub_19A37E3E8()
{
  v1 = *(v0 + 16);
  sub_19A572E4C();
  if (v1 == 3)
  {
    return sub_19A5740DC();
  }

  sub_19A5740DC();
  return MEMORY[0x19A901C40](v1);
}

uint64_t sub_19A37E448()
{
  v1 = *(v0 + 16);
  sub_19A5740BC();
  sub_19A572E4C();
  sub_19A5740DC();
  if (v1 != 3)
  {
    MEMORY[0x19A901C40](v1);
  }

  return sub_19A57410C();
}

uint64_t static NamedEntityData.PhotosPersonData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_19A570FFC() & 1) != 0 && (v4 = type metadata accessor for NamedEntityData.PhotosPersonData(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_19A37E538()
{
  if (*v0)
  {
    return 0x6550736F746F6870;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_19A37E57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6550736F746F6870 && a2 == 0xEC0000006E6F7372)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A573F1C();

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

uint64_t sub_19A37E65C(uint64_t a1)
{
  v2 = sub_19A3820A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37E698(uint64_t a1)
{
  v2 = sub_19A3820A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A37E6D4(uint64_t a1)
{
  v2 = sub_19A3820F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37E710(uint64_t a1)
{
  v2 = sub_19A3820F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A37E74C(uint64_t a1)
{
  v2 = sub_19A38214C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37E788(uint64_t a1)
{
  v2 = sub_19A38214C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NamedEntityData.NamedEntityType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA08D0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v22 - v3;
  v4 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA08D8);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA08E0);
  v13 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3820A4();
  sub_19A5741AC();
  sub_19A381CD4(v29, v12, type metadata accessor for NamedEntityData.NamedEntityType);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v31 = 0;
    sub_19A38214C();
    v16 = v30;
    sub_19A573DAC();
    (*(v23 + 8))(v9, v24);
    return (*(v13 + 8))(v15, v16);
  }

  else
  {
    v18 = v25;
    sub_19A381D3C(v12, v25, type metadata accessor for NamedEntityData.PhotosPersonData);
    v32 = 1;
    sub_19A3820F8();
    v19 = v26;
    v20 = v30;
    sub_19A573DAC();
    sub_19A381BA4(&qword_1EAFA08F8, type metadata accessor for NamedEntityData.PhotosPersonData);
    v21 = v28;
    sub_19A573E7C();
    (*(v27 + 8))(v19, v21);
    sub_19A381DA4(v18, type metadata accessor for NamedEntityData.PhotosPersonData);
    return (*(v13 + 8))(v15, v20);
  }
}

uint64_t NamedEntityData.NamedEntityType.hash(into:)()
{
  v1 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A381CD4(v0, v7, type metadata accessor for NamedEntityData.NamedEntityType);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x19A901C40](0);
  }

  sub_19A381D3C(v7, v4, type metadata accessor for NamedEntityData.PhotosPersonData);
  MEMORY[0x19A901C40](1);
  sub_19A57102C();
  sub_19A381BA4(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
  sub_19A572B4C();
  sub_19A5740DC();
  sub_19A5740DC();
  return sub_19A381DA4(v4, type metadata accessor for NamedEntityData.PhotosPersonData);
}

uint64_t NamedEntityData.NamedEntityType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0908);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0910);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0918);
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_19A3820A4();
  v20 = v51;
  sub_19A57417C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  v51 = v13;
  v42 = v16;
  v43 = v18;
  v22 = v48;
  v21 = v49;
  v23 = sub_19A573D7C();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_19A344188();
  v26 = v10;
  v27 = v12;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_19A5739FC();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
    *v32 = v51;
    sub_19A573C7C();
    sub_19A5739DC();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v50 + 8))(v12, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  if (v25)
  {
    v57 = 1;
    sub_19A3820F8();
    v28 = v22;
    sub_19A573C5C();
    v29 = v50;
    v35 = v21;
    v36 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
    sub_19A381BA4(&qword_1EAFA0920, type metadata accessor for NamedEntityData.PhotosPersonData);
    v37 = v42;
    v38 = v46;
    sub_19A573D4C();
    (*(v47 + 8))(v28, v38);
    (*(v29 + 8))(v27, v26);
    swift_unknownObjectRelease();
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    v39 = v43;
    sub_19A381D3C(v37, v43, type metadata accessor for NamedEntityData.NamedEntityType);
  }

  else
  {
    v57 = 0;
    sub_19A38214C();
    sub_19A573C5C();
    v34 = v50;
    v35 = v21;
    (*(v45 + 8))(v9, v44);
    (*(v34 + 8))(v12, v10);
    swift_unknownObjectRelease();
    v40 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
    v39 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }

  sub_19A381D3C(v39, v35, type metadata accessor for NamedEntityData.NamedEntityType);
  return __swift_destroy_boxed_opaque_existential_0Tm(v52);
}

uint64_t NamedEntityData.PhotosPersonData.photosPersonVID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A57102C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NamedEntityData.PhotosPersonData.init(photosPersonVID:isInferred:availableForPersonalization:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_19A57102C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t NamedEntityData.PhotosPersonData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_19A57102C();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0928);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3821A0();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v11;
  v13 = v21;
  v27 = 0;
  sub_19A381BA4(&qword_1ED8252E0, MEMORY[0x1E69695A8]);
  v14 = v23;
  sub_19A573D4C();
  (*(v13 + 32))(v12, v24, v4);
  v26 = 1;
  v16 = sub_19A573D0C();
  v24 = v9;
  *(v12 + *(v9 + 20)) = v16 & 1;
  v25 = 2;
  v17 = sub_19A573C9C();
  (*(v22 + 8))(v8, v14);
  if (v17 == 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 & 1;
  }

  *(v12 + *(v24 + 6)) = v18;
  sub_19A381CD4(v12, v20, type metadata accessor for NamedEntityData.PhotosPersonData);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_19A381DA4(v12, type metadata accessor for NamedEntityData.PhotosPersonData);
}

uint64_t sub_19A37F9F8()
{
  v1 = 0x727265666E497369;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6550736F746F6870;
  }
}

uint64_t sub_19A37FA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A383BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A37FA90(uint64_t a1)
{
  v2 = sub_19A3821A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A37FACC(uint64_t a1)
{
  v2 = sub_19A3821A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NamedEntityData.PhotosPersonData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0938);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3821A0();
  sub_19A5741AC();
  v8[15] = 0;
  sub_19A57102C();
  sub_19A381BA4(&qword_1ED8252E8, MEMORY[0x1E69695A8]);
  sub_19A573E7C();
  if (!v1)
  {
    type metadata accessor for NamedEntityData.PhotosPersonData(0);
    v8[14] = 1;
    sub_19A573E3C();
    v8[13] = 2;
    sub_19A573E3C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NamedEntityData.PhotosPersonData.hash(into:)()
{
  sub_19A57102C();
  sub_19A381BA4(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
  sub_19A572B4C();
  type metadata accessor for NamedEntityData.PhotosPersonData(0);
  sub_19A5740DC();
  return sub_19A5740DC();
}

uint64_t NamedEntityData.PhotosPersonData.hashValue.getter()
{
  sub_19A5740BC();
  sub_19A57102C();
  sub_19A381BA4(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
  sub_19A572B4C();
  type metadata accessor for NamedEntityData.PhotosPersonData(0);
  sub_19A5740DC();
  sub_19A5740DC();
  return sub_19A57410C();
}

uint64_t sub_19A37FE84()
{
  sub_19A5740BC();
  sub_19A57102C();
  sub_19A381BA4(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
  sub_19A572B4C();
  sub_19A5740DC();
  sub_19A5740DC();
  return sub_19A57410C();
}

uint64_t sub_19A37FF3C()
{
  sub_19A57102C();
  sub_19A381BA4(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
  sub_19A572B4C();
  sub_19A5740DC();
  return sub_19A5740DC();
}

uint64_t sub_19A37FFE0()
{
  sub_19A5740BC();
  sub_19A57102C();
  sub_19A381BA4(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
  sub_19A572B4C();
  sub_19A5740DC();
  sub_19A5740DC();
  return sub_19A57410C();
}

uint64_t sub_19A380094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_19A570FFC() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t NamedEntityData.entityString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_19A38017C()
{
  if (*v0)
  {
    return 0x7954797469746E65;
  }

  else
  {
    return 0x7453797469746E65;
  }
}

uint64_t sub_19A3801C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7453797469746E65 && a2 == 0xEC000000676E6972;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A573F1C();

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

uint64_t sub_19A3802AC(uint64_t a1)
{
  v2 = sub_19A3821F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A3802E8(uint64_t a1)
{
  v2 = sub_19A3821F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NamedEntityData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0940);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3821F4();
  sub_19A5741AC();
  v8[15] = 0;
  sub_19A573E2C();
  if (!v1)
  {
    type metadata accessor for NamedEntityData(0);
    v8[14] = 1;
    type metadata accessor for NamedEntityData.NamedEntityType(0);
    sub_19A381BA4(&qword_1EAFA0950, type metadata accessor for NamedEntityData.NamedEntityType);
    sub_19A573E7C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NamedEntityData.hash(into:)()
{
  v1 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A572E4C();
  v8 = type metadata accessor for NamedEntityData(0);
  sub_19A381CD4(v0 + *(v8 + 20), v7, type metadata accessor for NamedEntityData.NamedEntityType);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x19A901C40](0);
  }

  sub_19A381D3C(v7, v4, type metadata accessor for NamedEntityData.PhotosPersonData);
  MEMORY[0x19A901C40](1);
  sub_19A57102C();
  sub_19A381BA4(&qword_1EAF9FD60, MEMORY[0x1E69695A8]);
  sub_19A572B4C();
  sub_19A5740DC();
  sub_19A5740DC();
  return sub_19A381DA4(v4, type metadata accessor for NamedEntityData.PhotosPersonData);
}

uint64_t sub_19A380708(void (*a1)(_BYTE *))
{
  sub_19A5740BC();
  a1(v3);
  return sub_19A57410C();
}

uint64_t NamedEntityData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0958);
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for NamedEntityData(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3821F4();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_19A573CFC();
  v10[1] = v12;
  v14 = v12;
  v20 = 1;
  sub_19A381BA4(&qword_1EAFA0960, type metadata accessor for NamedEntityData.NamedEntityType);
  sub_19A573D4C();
  (*(v11 + 8))(v7, v19);
  sub_19A381D3C(v5, v10 + *(v15 + 20), type metadata accessor for NamedEntityData.NamedEntityType);
  sub_19A381CD4(v10, v16, type metadata accessor for NamedEntityData);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_19A381DA4(v10, type metadata accessor for NamedEntityData);
}

uint64_t sub_19A380AB4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_19A5740BC();
  a3(v5);
  return sub_19A57410C();
}

uint64_t sub_19A380B18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19A5740BC();
  a4(v6);
  return sub_19A57410C();
}

uint64_t sub_19A380B5C(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_19A573F1C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return _s16VisualGeneration15NamedEntityDataV0cD4TypeO2eeoiySbAE_AEtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_19A380BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6[2] = a1;
  v8 = type metadata accessor for Concept(0);
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v6[5] = swift_task_alloc();
  v6[6] = type metadata accessor for NamedEntityData(0);
  v9 = swift_task_alloc();
  v10 = *a6;
  v6[7] = v9;
  v6[8] = v10;

  return MEMORY[0x1EEE6DFA0](sub_19A380CD8, 0, 0);
}

uint64_t sub_19A380CD8()
{
  v1 = v0[8];
  if (*(v1 + 16))
  {
    v2 = *(v0[4] + 80);
    sub_19A381CD4(v1 + ((v2 + 32) & ~v2), v0[5], type metadata accessor for Concept);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v4 = v0[6];
      v3 = v0[7];
      v5 = v0[4];
      v7 = v0[2];
      v6 = v0[3];
      sub_19A381D3C(v0[5], v3, type metadata accessor for NamedEntityData);
      v9 = *v3;
      v8 = v3[1];

      sub_19A381DA4(v3, type metadata accessor for NamedEntityData);
      v10 = *(v4 + 20);
      v11 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      (*(*(v11 - 8) + 56))(&v7[v10], 1, 1, v11);
      *v7 = v9;
      *(v7 + 1) = v8;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 56))(v7, 0, 1, v6);
      goto LABEL_6;
    }

    sub_19A381DA4(v0[5], type metadata accessor for Concept);
  }

  (*(v0[4] + 56))(v0[2], 1, 1, v0[3]);
LABEL_6:

  v12 = v0[1];

  return v12();
}

uint64_t static Concept.makeNamedEntityPhotosPerson(from:photosPersonVID:isInferred:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for NamedEntityData(0) + 20);
  v11 = sub_19A57102C();
  (*(*(v11 - 8) + 16))(v10, a3, v11);
  v12 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v10[*(v12 + 20)] = a4;
  v10[*(v12 + 24)] = 1;
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  *a5 = a1;
  a5[1] = a2;
  type metadata accessor for Concept(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t _s16VisualGeneration15NamedEntityDataV0cD4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0A90);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_19A381CD4(a1, &v21 - v13, type metadata accessor for NamedEntityData.NamedEntityType);
  sub_19A381CD4(a2, &v14[v15], type metadata accessor for NamedEntityData.NamedEntityType);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
LABEL_3:
      sub_19A381DA4(v14, type metadata accessor for NamedEntityData.NamedEntityType);
      return 1;
    }

    goto LABEL_6;
  }

  sub_19A381CD4(v14, v10, type metadata accessor for NamedEntityData.NamedEntityType);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_19A381DA4(v10, type metadata accessor for NamedEntityData.PhotosPersonData);
LABEL_6:
    sub_19A2F3FA0(v14, &qword_1EAFA0A90);
    return 0;
  }

  sub_19A381D3C(&v14[v15], v7, type metadata accessor for NamedEntityData.PhotosPersonData);
  if ((sub_19A570FFC() & 1) != 0 && v10[*(v4 + 20)] == v7[*(v4 + 20)])
  {
    v18 = *(v4 + 24);
    v19 = v10[v18];
    v20 = v7[v18];
    sub_19A381DA4(v7, type metadata accessor for NamedEntityData.PhotosPersonData);
    if (v19 == v20)
    {
      sub_19A381DA4(v10, type metadata accessor for NamedEntityData.PhotosPersonData);
      goto LABEL_3;
    }
  }

  else
  {
    sub_19A381DA4(v7, type metadata accessor for NamedEntityData.PhotosPersonData);
  }

  sub_19A381DA4(v10, type metadata accessor for NamedEntityData.PhotosPersonData);
  sub_19A381DA4(v14, type metadata accessor for NamedEntityData.NamedEntityType);
  return 0;
}

uint64_t _s16VisualGeneration17GenericEntityDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_19A573F1C(), result = 0, (v5 & 1) != 0))
  {
    if (v2 == 3)
    {
      if (v3 != 3)
      {
        return 0;
      }
    }

    else if (v3 == 3 || v2 != v3)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t _s16VisualGeneration7ConceptO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v43 = type metadata accessor for NamedEntityData(0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_19A57102C();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Concept(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v47 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v43 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v43 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v43 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0A98);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v43 - v23;
  v25 = &v43 + *(v22 + 56) - v23;
  sub_19A381CD4(a1, &v43 - v23, type metadata accessor for Concept);
  sub_19A381CD4(v48, v25, type metadata accessor for Concept);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_19A381CD4(v24, v18, type metadata accessor for Concept);
      v34 = *v18;
      v33 = v18[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_19A381CD4(v24, v20, type metadata accessor for Concept);
      v34 = *v20;
      v33 = v20[1];
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_8:

LABEL_28:
        sub_19A2F3FA0(v24, &qword_1EAFA0A98);
LABEL_29:
        v32 = 0;
        return v32 & 1;
      }
    }

    if (v34 == *v25 && v33 == *(v25 + 1))
    {

      goto LABEL_31;
    }

    v41 = sub_19A573F1C();

    if (v41)
    {
LABEL_31:
      sub_19A381DA4(v24, type metadata accessor for Concept);
      v32 = 1;
      return v32 & 1;
    }

LABEL_34:
    sub_19A381DA4(v24, type metadata accessor for Concept);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_19A381CD4(v24, v15, type metadata accessor for Concept);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v36 = v45;
      v35 = v46;
      (*(v45 + 32))(v6, v25, v46);
      v32 = sub_19A570FFC();
      v37 = *(v36 + 8);
      v37(v6, v35);
      v37(v15, v35);
      goto LABEL_11;
    }

    (*(v45 + 8))(v15, v46);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v38 = v47;
    sub_19A381CD4(v24, v47, type metadata accessor for Concept);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_19A381DA4(v38, type metadata accessor for NamedEntityData);
      goto LABEL_28;
    }

    v39 = v44;
    sub_19A381D3C(v25, v44, type metadata accessor for NamedEntityData);
    if (*v38 == *v39 && v38[1] == v39[1] || (sub_19A573F1C()) && (_s16VisualGeneration15NamedEntityDataV0cD4TypeO2eeoiySbAE_AEtFZ_0(v38 + *(v43 + 20), v39 + *(v43 + 20)))
    {
      sub_19A381DA4(v39, type metadata accessor for NamedEntityData);
      sub_19A381DA4(v38, type metadata accessor for NamedEntityData);
      goto LABEL_31;
    }

    sub_19A381DA4(v39, type metadata accessor for NamedEntityData);
    sub_19A381DA4(v38, type metadata accessor for NamedEntityData);
    goto LABEL_34;
  }

  sub_19A381CD4(v24, v12, type metadata accessor for Concept);
  v27 = *(v12 + 1);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_8;
  }

  v28 = v12[16];
  v29 = *v25;
  v30 = *(v25 + 1);
  v31 = v25[16];
  v51[0] = *v12;
  v51[1] = v27;
  v52 = v28;
  v49[0] = v29;
  v49[1] = v30;
  v50 = v31;
  v32 = _s16VisualGeneration17GenericEntityDataV2eeoiySbAC_ACtFZ_0(v51, v49);

LABEL_11:
  sub_19A381DA4(v24, type metadata accessor for Concept);
  return v32 & 1;
}

unint64_t sub_19A381A00()
{
  result = qword_1ED824040;
  if (!qword_1ED824040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824040);
  }

  return result;
}

unint64_t sub_19A381A54()
{
  result = qword_1EAFA07F8;
  if (!qword_1EAFA07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA07F8);
  }

  return result;
}

unint64_t sub_19A381AA8()
{
  result = qword_1EAF9E980;
  if (!qword_1EAF9E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E980);
  }

  return result;
}

unint64_t sub_19A381AFC()
{
  result = qword_1EAF9EC98;
  if (!qword_1EAF9EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EC98);
  }

  return result;
}

unint64_t sub_19A381B50()
{
  result = qword_1EAFA0808;
  if (!qword_1EAFA0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0808);
  }

  return result;
}

uint64_t sub_19A381BA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A381BEC()
{
  result = qword_1EAFA0810;
  if (!qword_1EAFA0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0810);
  }

  return result;
}

unint64_t sub_19A381C40()
{
  result = qword_1ED824028;
  if (!qword_1ED824028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824028);
  }

  return result;
}

uint64_t sub_19A381CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A381D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A381DA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19A381E04()
{
  result = qword_1EAFA0850;
  if (!qword_1EAFA0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0850);
  }

  return result;
}

unint64_t sub_19A381E58()
{
  result = qword_1EAFA0878;
  if (!qword_1EAFA0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0878);
  }

  return result;
}

unint64_t sub_19A381EAC()
{
  result = qword_1EAFA0880;
  if (!qword_1EAFA0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0880);
  }

  return result;
}

unint64_t sub_19A381F00()
{
  result = qword_1EAFA0888;
  if (!qword_1EAFA0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0888);
  }

  return result;
}

unint64_t sub_19A381F54()
{
  result = qword_1EAFA0890;
  if (!qword_1EAFA0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0890);
  }

  return result;
}

unint64_t sub_19A381FA8()
{
  result = qword_1EAF9ECB8;
  if (!qword_1EAF9ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ECB8);
  }

  return result;
}

unint64_t sub_19A381FFC()
{
  result = qword_1EAF9ECA0;
  if (!qword_1EAF9ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ECA0);
  }

  return result;
}

unint64_t sub_19A382050()
{
  result = qword_1EAFA08C8;
  if (!qword_1EAFA08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA08C8);
  }

  return result;
}

unint64_t sub_19A3820A4()
{
  result = qword_1EAFA08E8;
  if (!qword_1EAFA08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA08E8);
  }

  return result;
}

unint64_t sub_19A3820F8()
{
  result = qword_1EAFA08F0;
  if (!qword_1EAFA08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA08F0);
  }

  return result;
}

unint64_t sub_19A38214C()
{
  result = qword_1EAFA0900;
  if (!qword_1EAFA0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0900);
  }

  return result;
}

unint64_t sub_19A3821A0()
{
  result = qword_1EAFA0930;
  if (!qword_1EAFA0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0930);
  }

  return result;
}

unint64_t sub_19A3821F4()
{
  result = qword_1EAFA0948;
  if (!qword_1EAFA0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0948);
  }

  return result;
}

unint64_t sub_19A382294()
{
  result = qword_1EAFA0968;
  if (!qword_1EAFA0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0968);
  }

  return result;
}

unint64_t sub_19A3822EC()
{
  result = qword_1EAFA0970;
  if (!qword_1EAFA0970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0970);
  }

  return result;
}

unint64_t sub_19A382354()
{
  result = qword_1EAFA0980;
  if (!qword_1EAFA0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0980);
  }

  return result;
}

uint64_t sub_19A382480()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NamedEntityData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_19A382508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_19A382550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A3825D8()
{
  result = type metadata accessor for NamedEntityData.NamedEntityType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19A38267C()
{
  v0 = type metadata accessor for NamedEntityData.PhotosPersonData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_19A3826FC()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleDiffusionModelMetadata.ReferenceImageInfo.ConditioningModelVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDiffusionModelMetadata.ReferenceImageInfo.ConditioningModelVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19A3829BC()
{
  result = qword_1EAFA09A0;
  if (!qword_1EAFA09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09A0);
  }

  return result;
}

unint64_t sub_19A382A14()
{
  result = qword_1EAFA09A8;
  if (!qword_1EAFA09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09A8);
  }

  return result;
}

unint64_t sub_19A382A6C()
{
  result = qword_1EAFA09B0;
  if (!qword_1EAFA09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09B0);
  }

  return result;
}

unint64_t sub_19A382AC4()
{
  result = qword_1EAFA09B8;
  if (!qword_1EAFA09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09B8);
  }

  return result;
}

unint64_t sub_19A382B1C()
{
  result = qword_1EAFA09C0;
  if (!qword_1EAFA09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09C0);
  }

  return result;
}

unint64_t sub_19A382B74()
{
  result = qword_1EAFA09C8;
  if (!qword_1EAFA09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09C8);
  }

  return result;
}

unint64_t sub_19A382BCC()
{
  result = qword_1EAFA09D0;
  if (!qword_1EAFA09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09D0);
  }

  return result;
}

unint64_t sub_19A382C24()
{
  result = qword_1EAFA09D8;
  if (!qword_1EAFA09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09D8);
  }

  return result;
}

unint64_t sub_19A382C7C()
{
  result = qword_1EAFA09E0;
  if (!qword_1EAFA09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09E0);
  }

  return result;
}

unint64_t sub_19A382CD4()
{
  result = qword_1EAFA09E8;
  if (!qword_1EAFA09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09E8);
  }

  return result;
}

unint64_t sub_19A382D2C()
{
  result = qword_1EAFA09F0;
  if (!qword_1EAFA09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09F0);
  }

  return result;
}

unint64_t sub_19A382D84()
{
  result = qword_1EAFA09F8;
  if (!qword_1EAFA09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA09F8);
  }

  return result;
}

unint64_t sub_19A382DDC()
{
  result = qword_1EAFA0A00;
  if (!qword_1EAFA0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A00);
  }

  return result;
}

unint64_t sub_19A382E34()
{
  result = qword_1EAFA0A08;
  if (!qword_1EAFA0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A08);
  }

  return result;
}

unint64_t sub_19A382E8C()
{
  result = qword_1EAFA0A10;
  if (!qword_1EAFA0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A10);
  }

  return result;
}

unint64_t sub_19A382EE4()
{
  result = qword_1EAFA0A18;
  if (!qword_1EAFA0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A18);
  }

  return result;
}

unint64_t sub_19A382F3C()
{
  result = qword_1EAFA0A20;
  if (!qword_1EAFA0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A20);
  }

  return result;
}

unint64_t sub_19A382F94()
{
  result = qword_1EAFA0A28;
  if (!qword_1EAFA0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A28);
  }

  return result;
}

unint64_t sub_19A382FEC()
{
  result = qword_1EAFA0A30;
  if (!qword_1EAFA0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A30);
  }

  return result;
}

unint64_t sub_19A383044()
{
  result = qword_1EAFA0A38;
  if (!qword_1EAFA0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A38);
  }

  return result;
}

unint64_t sub_19A38309C()
{
  result = qword_1EAFA0A40;
  if (!qword_1EAFA0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A40);
  }

  return result;
}

unint64_t sub_19A3830F4()
{
  result = qword_1EAFA0A48;
  if (!qword_1EAFA0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A48);
  }

  return result;
}

unint64_t sub_19A38314C()
{
  result = qword_1EAF9ECA8;
  if (!qword_1EAF9ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ECA8);
  }

  return result;
}

unint64_t sub_19A3831A4()
{
  result = qword_1EAF9ECB0;
  if (!qword_1EAF9ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ECB0);
  }

  return result;
}

unint64_t sub_19A3831FC()
{
  result = qword_1EAFA0A50;
  if (!qword_1EAFA0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A50);
  }

  return result;
}

unint64_t sub_19A383254()
{
  result = qword_1EAFA0A58;
  if (!qword_1EAFA0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A58);
  }

  return result;
}

unint64_t sub_19A3832AC()
{
  result = qword_1EAFA0A60;
  if (!qword_1EAFA0A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A60);
  }

  return result;
}

unint64_t sub_19A383304()
{
  result = qword_1EAFA0A68;
  if (!qword_1EAFA0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A68);
  }

  return result;
}

unint64_t sub_19A38335C()
{
  result = qword_1EAFA0A70;
  if (!qword_1EAFA0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A70);
  }

  return result;
}

unint64_t sub_19A3833B4()
{
  result = qword_1EAFA0A78;
  if (!qword_1EAFA0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A78);
  }

  return result;
}

unint64_t sub_19A38340C()
{
  result = qword_1EAFA0A80;
  if (!qword_1EAFA0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A80);
  }

  return result;
}

unint64_t sub_19A383464()
{
  result = qword_1EAFA0A88;
  if (!qword_1EAFA0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0A88);
  }

  return result;
}

unint64_t sub_19A3834BC()
{
  result = qword_1ED824018;
  if (!qword_1ED824018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824018);
  }

  return result;
}

unint64_t sub_19A383514()
{
  result = qword_1ED824020;
  if (!qword_1ED824020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824020);
  }

  return result;
}

unint64_t sub_19A38356C()
{
  result = qword_1ED824008;
  if (!qword_1ED824008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824008);
  }

  return result;
}

unint64_t sub_19A3835C4()
{
  result = qword_1ED824010;
  if (!qword_1ED824010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824010);
  }

  return result;
}

unint64_t sub_19A38361C()
{
  result = qword_1ED823FF8;
  if (!qword_1ED823FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823FF8);
  }

  return result;
}

unint64_t sub_19A383674()
{
  result = qword_1ED824000;
  if (!qword_1ED824000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824000);
  }

  return result;
}

unint64_t sub_19A3836CC()
{
  result = qword_1ED823FD8;
  if (!qword_1ED823FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823FD8);
  }

  return result;
}

unint64_t sub_19A383724()
{
  result = qword_1ED823FE0;
  if (!qword_1ED823FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823FE0);
  }

  return result;
}

unint64_t sub_19A38377C()
{
  result = qword_1ED823FE8;
  if (!qword_1ED823FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823FE8);
  }

  return result;
}

unint64_t sub_19A3837D4()
{
  result = qword_1ED823FF0;
  if (!qword_1ED823FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823FF0);
  }

  return result;
}

unint64_t sub_19A38382C()
{
  result = qword_1ED824030;
  if (!qword_1ED824030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824030);
  }

  return result;
}

unint64_t sub_19A383884()
{
  result = qword_1ED824038;
  if (!qword_1ED824038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824038);
  }

  return result;
}

uint64_t sub_19A3838D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1853189998 && a2 == 0xE400000000000000;
  if (v3 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F73726570 && a2 == 0xE600000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x45636972656E6567 && a2 == 0xED0000797469746ELL || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E4564656D616ELL && a2 == 0xEB00000000797469)
  {

    return 4;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_19A383A8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000019A5975D0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694663696C627570 && a2 == 0xEC00000065727567)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t sub_19A383BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6550736F746F6870 && a2 == 0xEF4449566E6F7372;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727265666E497369 && a2 == 0xEA00000000006465 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000019A597610 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

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

uint64_t ExternalGenerationSession.deinit()
{
  v1 = v0;
  sub_19A57253C();

  sub_19A57250C();

  sub_19A5724EC();

  v2 = OBJC_IVAR____TtC16VisualGeneration25ExternalGenerationSession_userRequestIdentifier;
  v3 = sub_19A57102C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t ExternalGenerationSession.__deallocating_deinit()
{
  v1 = v0;
  sub_19A57253C();

  sub_19A57250C();

  sub_19A5724EC();

  v2 = OBJC_IVAR____TtC16VisualGeneration25ExternalGenerationSession_userRequestIdentifier;
  v3 = sub_19A57102C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t static ExternalGenerationSession.createGenerativePlaygroundSession(generatorType:)(char *a1)
{
  v1 = *a1;
  sub_19A57395C();
  MEMORY[0x19A900A50](0xD000000000000013, 0x800000019A597630);
  sub_19A573ACC();
  v4[0] = 0xD000000000000025;
  v4[1] = 0x800000019A5960B0;
  MEMORY[0x19A900A50](0, 0xE000000000000000);

  LOBYTE(v4[0]) = v1;
  v2 = sub_19A384194(0xD000000000000025, 0x800000019A5960B0, v4);

  return v2;
}

uint64_t sub_19A383FC8@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_19A572A6C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  sub_19A572A3C();
  v8 = MEMORY[0x1E69C6388];
  sub_19A572A1C();
  v9 = *(v2 + 8);
  v9(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AC8);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19A576E10;
  (*(v2 + 16))(v11 + v10, v7, v1);
  MEMORY[0x19A900570](v11, v1, v8);

  return (v9)(v7, v1);
}

uint64_t sub_19A384194(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v59 = a2;
  v66 = a1;
  v5 = sub_19A572A6C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_19A572A8C();
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A5729AC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19A5724DC();
  v64 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v50 - v13;
  v14 = sub_19A57154C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_19A5716EC();
  v62 = *(v68 - 8);
  v16 = MEMORY[0x1EEE9AC00](v68);
  v54 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v50 - v18;
  v19 = sub_19A57102C();
  v52 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AB0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v50 - v23;
  v25 = sub_19A57155C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v72) = *a3;
  type metadata accessor for ExternalGeneratorInfo(0);
  swift_allocObject();
  v28 = sub_19A422F40(&v72);
  sub_19A384BA4(&v28[OBJC_IVAR____TtC16VisualGeneration21ExternalGeneratorInfo_llmProvider], v70);
  if (!v71)
  {

    sub_19A2F3FA0(v70, &qword_1EAFA0AB8);
    (*(v26 + 56))(v24, 1, 1, v25);
LABEL_7:
    sub_19A2F3FA0(v24, &qword_1EAFA0AB0);
    return 0;
  }

  v69 = v28;
  v51 = v10;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  sub_19A571F4C();
  if (v3)
  {

    return __swift_destroy_boxed_opaque_existential_0Tm(v70);
  }

  v30 = v25;
  v31 = v26;
  (*(v26 + 56))(v24, 0, 1, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  if ((*(v26 + 48))(v24, 1, v30) == 1)
  {

    goto LABEL_7;
  }

  v32 = *(v26 + 32);
  v33 = v65;
  v32(v65, v24, v30);
  v70[0] = v66;
  v70[1] = v59;

  MEMORY[0x19A900A50](45, 0xE100000000000000);
  sub_19A57101C();
  v34 = sub_19A570FDC();
  v50 = 0;
  v35 = v34;
  v37 = v36;
  (*(v52 + 8))(v21, v19);
  MEMORY[0x19A900A50](v35, v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AC0);
  v38 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_19A576E10;
  v40 = *(v31 + 16);
  v52 = v30;
  v40(v39 + v38, v33, v30);

  sub_19A57153C();

  v41 = v67;
  sub_19A5716DC();
  v42 = v62;
  (*(v62 + 16))(v54, v41, v68);
  (*(v55 + 104))(v57, *MEMORY[0x1E69C63F8], v58);
  v43 = v50;
  sub_19A572A7C();
  v50 = v43;
  sub_19A57299C();
  v44 = v63;
  sub_19A5724CC();
  v45 = v64;
  v46 = v51;
  (*(v64 + 16))(v60, v44, v51);
  sub_19A57253C();
  swift_allocObject();
  v47 = sub_19A5724FC();
  if (v47)
  {
    v48 = v47;
    type metadata accessor for ExternalGenerationSession();
    v49 = swift_allocObject();
    sub_19A57101C();

    (*(v45 + 8))(v44, v46);
    (*(v42 + 8))(v67, v68);
    (*(v31 + 8))(v65, v52);
    result = v49;
    *(v49 + 16) = v48;
  }

  else
  {

    (*(v45 + 8))(v44, v46);
    (*(v42 + 8))(v67, v68);
    (*(v31 + 8))(v65, v52);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ExternalGenerationSession()
{
  result = qword_1EAFA0AA0;
  if (!qword_1EAFA0AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A384AEC()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19A384BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A384C14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_19A384C5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A384CAC(void *a1, unint64_t a2)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_19A57340C();
  if ((result & 1) == 0)
  {
    v7 = *(v2 + 16);
    v8 = sub_19A386EC4(v7);
    v10 = v9;

    if (a2 >> 14)
    {
      v15 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v15 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v15 == a2 >> 14)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        result = sub_19A57340C();
        if ((result & 1) == 0)
        {
          v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          MEMORY[0x1EEE9AC00](v16);
          (*(v18 + 16))(v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
          v19 = sub_19A572F8C();
          v21 = v20;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_19A31DC7C(0, *(v7 + 16) + 1, 1, v7);
            v7 = result;
          }

          v23 = *(v7 + 16);
          v22 = *(v7 + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_19A31DC7C((v22 > 1), v23 + 1, 1, v7);
            v7 = result;
          }

          *(v7 + 16) = v23 + 1;
          v24 = v7 + 48 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
          *(v24 + 48) = 0u;
          *(v24 + 64) = 0u;
          *(v3 + 16) = v7;
        }
      }

      else
      {
        return sub_19A385294(a1, a2);
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      result = sub_19A57340C();
      if ((result & 1) == 0)
      {
        v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        MEMORY[0x1EEE9AC00](v11);
        (*(v13 + 16))(v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
        *&v25[0] = sub_19A572F8C();
        *(&v25[0] + 1) = v14;
        memset(&v25[1], 0, 32);
        return sub_19A46ACDC(0, 0, v25);
      }
    }
  }

  return result;
}

unint64_t sub_19A384FF8(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_19A57395C();

      v8 = 0xD000000000000016;
      sub_19A573ACC();
      MEMORY[0x19A900A50](3943982, 0xE300000000000000);
      sub_19A573ACC();
      MEMORY[0x19A900A50](0, 0xE000000000000000);

      v5 = 0xD000000000000011;
      v6 = 0x800000019A5977F0;
    }

    else
    {
      sub_19A57395C();

      v8 = 0xD000000000000016;
      v5 = a1;
      v6 = a2;
    }

    MEMORY[0x19A900A50](v5, v6);
  }

  else if (a3)
  {
    sub_19A57395C();

    v8 = 0xD000000000000016;
    sub_19A573ACC();
    MEMORY[0x19A900A50](3943982, 0xE300000000000000);
    sub_19A573ACC();
    MEMORY[0x19A900A50](0, 0xE000000000000000);
  }

  else
  {
    v8 = 0;
    sub_19A57395C();
    MEMORY[0x19A900A50](0xD000000000000016, 0x800000019A597830);
    sub_19A573ACC();
  }

  return v8;
}

unint64_t sub_19A385294(void *a1, uint64_t a2)
{
  v3 = a2;
  v7 = *(v2 + 16);
  v5 = v2 + 16;
  v6 = v7;
  v8 = sub_19A387278(a2, v7);
  if (v10)
  {
    v75 = v3;
    v76 = 0;
    v77 = 0;
    sub_19A387988();
    swift_willThrowTypedImpl();
    return v3;
  }

  v69 = v5;
  v70 = v9;
  v11 = v8;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v12);
  (*(v14 + 16))(&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_19A572F8C();
  if (!v70)
  {
    if (*(v6 + 16) >= v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        *&v78[0] = result;
        *(&v78[0] + 1) = v16;
        memset(&v78[1], 0, 32);
        sub_19A46ACDC(v11, v11, v78);
        return v3;
      }

      goto LABEL_30;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v11 >= *(v6 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v68 = v16;
  v65 = v11;
  v66 = result;
  v17 = v6 + 48 * v11;
  v18 = *(v17 + 32);
  v19 = *(v17 + 72);

  v67 = v18;
  v20 = sub_19A572E7C();
  if (v19 && v20 != sub_19A5737BC())
  {

    sub_19A386EC4(v6);
    v30 = sub_19A572E8C();

    if (v30 >> 14 >= v3 >> 14)
    {
      v75 = v3;
      v76 = v30;
      v29 = 2;
      goto LABEL_18;
    }

    goto LABEL_31;
  }

  v21 = v70;
  v22 = sub_19A385900();
  if (v24)
  {

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_19A57395C();

    v75 = 0xD000000000000022;
    v76 = 0x800000019A5976F0;
    v73 = v21;
    v74 = 0;
LABEL_15:
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_19A573ACC();
    MEMORY[0x19A900A50](3943982, 0xE300000000000000);
    sub_19A573ACC();
    MEMORY[0x19A900A50](v71, v72);

    v3 = v75;
    v29 = 3;
LABEL_18:
    v77 = v29;
    sub_19A387988();
    swift_willThrowTypedImpl();
    return v3;
  }

  v63 = v22;
  v64 = v23;
  v25 = sub_19A572E7C();
  v26 = sub_19A385900();
  if (v28)
  {

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_19A57395C();

    v75 = 0xD000000000000023;
    v76 = 0x800000019A597720;
    v73 = v25;
    v74 = v21;
    goto LABEL_15;
  }

  v61 = v26;
  v62 = v27;
  if (!v19)
  {
    v37 = 0;
    v70 = 0;
    v56 = 0;
    v57 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v41 = 0;
    goto LABEL_25;
  }

  v57 = v25;

  v31 = sub_19A5737AC();
  result = sub_19A5737AC();
  if (result >> 14 < v31 >> 14)
  {
    goto LABEL_32;
  }

  v32 = sub_19A572F9C();
  v59 = v33;
  v60 = v32;
  v58 = v34;
  v55 = v35;

  v36 = sub_19A5737AC();
  result = sub_19A5737AC();
  if (result >> 14 >= v36 >> 14)
  {
    v37 = sub_19A572F9C();
    v70 = v38;
    v56 = v40;
    v57 = v39;

    v41 = v55;
LABEL_25:
    v42 = sub_19A572F9C();
    v3 = MEMORY[0x19A900970](v42);
    v67 = v43;

    v44 = sub_19A572F9C();
    v45 = MEMORY[0x19A900970](v44);
    v47 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A5792A0;
    *(inited + 32) = v3;
    v50 = v59;
    v49 = v60;
    *(inited + 40) = v67;
    *(inited + 48) = v49;
    v51 = v58;
    *(inited + 56) = v50;
    *(inited + 64) = v51;
    v52 = v66;
    *(inited + 72) = v41;
    *(inited + 80) = v52;
    *(inited + 88) = v68;
    *(inited + 96) = 0u;
    *(inited + 112) = 0u;
    *(inited + 128) = v45;
    *(inited + 136) = v47;
    v53 = v70;
    *(inited + 144) = v37;
    *(inited + 152) = v53;
    v54 = v56;
    *(inited + 160) = v57;
    *(inited + 168) = v54;
    sub_19A46AF3C(v65, v65 + 1, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    return v3;
  }

LABEL_33:
  __break(1u);
  return result;
}