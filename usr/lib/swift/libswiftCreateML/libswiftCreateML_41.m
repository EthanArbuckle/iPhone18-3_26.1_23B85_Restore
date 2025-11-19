uint64_t specialized MLTrainingSession.transition(to:)(int a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *(v2 + direct field offset for MLTrainingSession.delegate + 24);
  v5 = *(v2 + direct field offset for MLTrainingSession.delegate + 32);
  v11 = __swift_project_boxed_opaque_existential_0Tm((v3 + direct field offset for MLTrainingSession.delegate), *(v3 + direct field offset for MLTrainingSession.delegate + 24));
  v6 = *(*v3 + 112) + v3;
  swift_beginAccess(v6, v10, 1, 0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(a2);
  v13 = *(*(v7 + 28) + v6);
  v12 = a1;
  v14[0] = a1;
  result = (*(v5 + 80))(&v13, v14, v4, v5);
  v9 = *(v7 + 28);
  if (result)
  {
    *(v6 + v9) = v12;
    result = *(v7 + 32);
    *(v6 + result) = 0;
  }

  else
  {
    *(v6 + v9) = 4;
  }

  return result;
}

uint64_t specialized MLTrainingSession.extractFeatures(job:)(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[20] = swift_task_alloc(v11);
  v2[21] = swift_task_alloc(v11);
  return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
}

uint64_t specialized MLTrainingSession.extractFeatures(job:)()
{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[16];
    v53 = v1[17];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[19];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[19];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[16];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[14];
    v54 = v50[9];
    v53 = v50[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 120);
      v71 = *(v1 + 64);
      v48 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 120);
        v53 = *(v1 + 96);
        v54 = *(*(v1 + 104) + 8);
        v54(*(v1 + 112), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 128)) == 1)
      {
        v61 = *(v1 + 120);
        v62 = *(v1 + 96);
        v63 = *(*(v1 + 104) + 8);
        v63(*(v1 + 112), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v64 = *(v1 + 144);
        v72 = *(v1 + 120);
        v73 = *(v1 + 112);
        v74 = *(v1 + 104);
        v71 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 112);
      v72 = *(v1 + 72);
      v73 = *(v1 + 88);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 112);
  v75 = *(v1 + 72);
  v72 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[16];
    v53 = v1[17];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[19];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[19];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[16];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[14];
    v54 = v50[9];
    v53 = v50[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 120);
      v71 = *(v1 + 64);
      v48 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 120);
        v53 = *(v1 + 96);
        v54 = *(*(v1 + 104) + 8);
        v54(*(v1 + 112), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 128)) == 1)
      {
        v61 = *(v1 + 120);
        v62 = *(v1 + 96);
        v63 = *(*(v1 + 104) + 8);
        v63(*(v1 + 112), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v64 = *(v1 + 144);
        v72 = *(v1 + 120);
        v73 = *(v1 + 112);
        v74 = *(v1 + 104);
        v71 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 112);
      v72 = *(v1 + 72);
      v73 = *(v1 + 88);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 112);
  v75 = *(v1 + 72);
  v72 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[16];
    v53 = v1[17];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[19];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[19];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[16];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[14];
    v54 = v50[9];
    v53 = v50[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 120);
      v71 = *(v1 + 64);
      v48 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 120);
        v53 = *(v1 + 96);
        v54 = *(*(v1 + 104) + 8);
        v54(*(v1 + 112), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 128)) == 1)
      {
        v61 = *(v1 + 120);
        v62 = *(v1 + 96);
        v63 = *(*(v1 + 104) + 8);
        v63(*(v1 + 112), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v64 = *(v1 + 144);
        v72 = *(v1 + 120);
        v73 = *(v1 + 112);
        v74 = *(v1 + 104);
        v71 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 112);
      v72 = *(v1 + 72);
      v73 = *(v1 + 88);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 112);
  v75 = *(v1 + 72);
  v72 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[16];
    v53 = v1[17];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[19];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[19];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[16];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[14];
    v54 = v50[9];
    v53 = v50[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 120);
      v71 = *(v1 + 64);
      v48 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 120);
        v53 = *(v1 + 96);
        v54 = *(*(v1 + 104) + 8);
        v54(*(v1 + 112), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 128)) == 1)
      {
        v61 = *(v1 + 120);
        v62 = *(v1 + 96);
        v63 = *(*(v1 + 104) + 8);
        v63(*(v1 + 112), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v64 = *(v1 + 144);
        v72 = *(v1 + 120);
        v73 = *(v1 + 112);
        v74 = *(v1 + 104);
        v71 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 112);
      v72 = *(v1 + 72);
      v73 = *(v1 + 88);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 112);
  v75 = *(v1 + 72);
  v72 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[16];
    v53 = v1[17];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[19];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[19];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[16];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[14];
    v54 = v50[9];
    v53 = v50[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 120);
      v71 = *(v1 + 64);
      v48 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 120);
        v53 = *(v1 + 96);
        v54 = *(*(v1 + 104) + 8);
        v54(*(v1 + 112), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 128)) == 1)
      {
        v61 = *(v1 + 120);
        v62 = *(v1 + 96);
        v63 = *(*(v1 + 104) + 8);
        v63(*(v1 + 112), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v64 = *(v1 + 144);
        v72 = *(v1 + 120);
        v73 = *(v1 + 112);
        v74 = *(v1 + 104);
        v71 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 112);
      v72 = *(v1 + 72);
      v73 = *(v1 + 88);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 112);
  v75 = *(v1 + 72);
  v72 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[16];
    v53 = v1[17];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[19];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[19];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[19];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[16];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[16] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[14];
    v54 = v50[9];
    v53 = v50[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 80) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 72), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 120), *(v1 + 72), *(v1 + 96));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 120);
      v71 = *(v1 + 64);
      v48 = *(v1 + 112);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 120);
        v53 = *(v1 + 96);
        v54 = *(*(v1 + 104) + 8);
        v54(*(v1 + 112), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 128)) == 1)
      {
        v61 = *(v1 + 120);
        v62 = *(v1 + 96);
        v63 = *(*(v1 + 104) + 8);
        v63(*(v1 + 112), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v64 = *(v1 + 144);
        v72 = *(v1 + 120);
        v73 = *(v1 + 112);
        v74 = *(v1 + 104);
        v71 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 112);
      v72 = *(v1 + 72);
      v73 = *(v1 + 88);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 112);
  v75 = *(v1 + 72);
  v72 = *(v1 + 88);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

{
  v56 = v0 | 0x1000000000000000;
  v55 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
  v1[23] = v5;
  v48 = v5;
  v47 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = *(v6 + 16);
  v50 = v1;
  if (v7)
  {
    v54 = v1[9];
    v53 = v1[10];
    v52 = (v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)));
    v6;
    v49 = v6;
    while (1)
    {
      if (v7 > *(v6 + 16))
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(v52 + v7 * *(v53 + 72), v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v54 + 5)))
      {
        case 0:
          v10 = *(v8 + *(v54 + 5));
          v9 = 0xEB0000000064657ALL;
          v11 = 0x696C616974696E69;
          goto LABEL_9;
        case 1:
          v46 = v1[11];
          0xEA0000000000676ELL;
          outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLCheckpoint);
          LODWORD(v54) = 0;
          goto LABEL_14;
        case 2:
          v9 = 0xE800000000000000;
          v11 = 0x676E696E69617274;
          goto LABEL_9;
        case 3:
          v9 = 0xEA0000000000676ELL;
          v11 = 0x697461756C617665;
          goto LABEL_9;
        case 4:
          v9 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          v11 = 0x636E657265666E69;
LABEL_9:
          v12 = v1[11];
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v11, v9, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v9;
          v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
          if (v13)
          {
            LODWORD(v54) = 0;
            v15 = v49;
            goto LABEL_16;
          }

          v1 = v50;
          v6 = v49;
          if (!v7)
          {
            goto LABEL_13;
          }

          break;
      }
    }
  }

  v14 = v6;
LABEL_13:
  LOBYTE(v14) = 1;
  LODWORD(v54) = v14;
  v7 = 0;
LABEL_14:
  v15 = v6;
LABEL_16:
  v52 = v50 + 6;
  v53 = v50[9];
  v16 = v50[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v50 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v17, v7, v54, v52);
  v15;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v53);
  v19 = v50[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v50[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v54 = v50[7];
  v20 = v50[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v50[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v51 = *(v47 + *(v48 + 28));
  v23 = (*(v53 + 32))(&v51, v22);
  LOBYTE(v22) = v24;
  v50[25] = v23;
  *(v50 + 256) = v24;
  v53 = *(v47 + *(v48 + 32));
  v25 = *(v47 + *(v48 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v50[26] = v26;
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v54;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v50[21];
    v31 = v50[20];
    v32 = v50[19];
    v33 = v50[18];
    v34 = v50[15];
    v52 = v50[13];
    v54 = v50[11];
    v53 = v50[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v54;
    return (v50[1])();
  }

  else
  {
    v50[27] = direct field offset for MLTrainingSession.parameters;
    v50[28] = v52;
    v36 = v50[8];
    v37 = v50[23];
    v38 = (v36 + v50[24]);
    v39 = v36 + v50[22];
    v40 = v38[3];
    v41 = v38[4];
    v54 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 48);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v50[29] = v45;
    *v45 = v50;
    v45[1] = specialized MLTrainingSession.extractFeatures(job:);
    return v44(v42, v40, v41);
  }
}

{
  v77 = v0 | 0x1000000000000000;
  v76 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 240), v5);
  v7 = *(v1 + 240) + v5;
  if (v6)
  {
    BUG();
  }

  v75 = *(v1 + 224);
  v8 = *(v1 + 208);
  v9 = *(v1 + 256);
  v73 = *(v1 + 56);
  v71 = *(v1 + 200);
  *(v3 + v4) = v7;
  LODWORD(v74) = *(v3 + *(v2 + 28));
  v72 = v2;
  v10 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v8);
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, v74, v71, v9 & 1, v10, specialized MLJob.currentPhase.setter);
  v10;
  v11 = *(v3 + *(v72 + 32));
  if (__OFSUB__(v11, v75))
  {
    BUG();
  }

  v12 = (v1 + 224);
  v13 = *(v1 + 216) + *(v1 + 64);
  if (v11 - v75 < *(*(*(v1 + 112) + 24) + v13) && (*(v1 + 257) & (*(v1 + 240) > 0)) == 0)
  {
    goto LABEL_7;
  }

  v75 = v11;
  v14 = *(v1 + 128);
  v15 = *(v1 + 104);
  v16 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v13, v16, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v16, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v1 + 104), &demangling cache variable for type metadata for URL?);
LABEL_7:
    v17 = *(v1 + 248);
    goto LABEL_8;
  }

  v29 = *(v1 + 184);
  v30 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 104), *(v1 + 128));
  v31 = *(*(v29 + 28) + v30);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v33 = swift_allocObject(v32, 112, 7);
  v33[2] = 2;
  v33[3] = 4;
  switch(v31)
  {
    case 0:
      v74 = 0x696C616974696E69;
      v69 = 0xEB0000000064657ALL;
      goto LABEL_22;
    case 1:
      v46 = 0x6974636172747865;
      goto LABEL_21;
    case 2:
      v69 = 0xE800000000000000;
      v45 = 0x676E696E69617274;
      goto LABEL_18;
    case 3:
      v46 = 0x697461756C617665;
LABEL_21:
      v74 = v46;
      v69 = 0xEA0000000000676ELL;
      goto LABEL_22;
    case 4:
      v69 = 0xEB00000000676E69;
      v45 = 0x636E657265666E69;
LABEL_18:
      v74 = v45;
LABEL_22:
      v72 = *(v1 + 248);
      v73 = *(v1 + 160);
      v47 = *(v1 + 152);
      v71 = *(v1 + 64);
      v48 = *(v1 + 144);
      v33[7] = &type metadata for String;
      v33[8] = lazy protocol witness table accessor for type String and conformance String();
      v33[4] = v74;
      v33[5] = v69;
      v33[12] = &type metadata for Int;
      v33[13] = &protocol witness table for Int;
      v33[9] = v75;
      v49 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v33);
      v51 = v50;
      URL.appendingPathComponent(_:)(v49, v50);
      v51;
      specialized MLTrainingSession.saveFeatureExtractionCheckpoint(to:)(v48, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata, specialized MLTrainingSession.save());
      if (v72)
      {
        v75 = v72;
        v52 = *(v1 + 152);
        v53 = *(v1 + 128);
        v54 = *(*(v1 + 136) + 8);
        v54(*(v1 + 144), v53);
        v54(v52, v53);
        goto LABEL_24;
      }

      v60 = *(v1 + 160);
      if (__swift_getEnumTagSinglePayload(v60, 1, *(v1 + 72)) == 1)
      {
        v61 = *(v1 + 152);
        v62 = *(v1 + 128);
        v63 = *(*(v1 + 136) + 8);
        v63(*(v1 + 144), v62);
        v63(v61, v62);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for MLCheckpoint?);
        v17 = 0;
        v12 = (v1 + 224);
      }

      else
      {
        v75 = *(v1 + 184);
        v72 = *(v1 + 152);
        v73 = *(v1 + 144);
        v74 = *(v1 + 136);
        v71 = *(v1 + 128);
        v64 = *(v1 + 96);
        v65 = *(v1 + 56);
        v66 = *(v1 + 176) + *(v1 + 64);
        outlined init with take of MLClassifierMetrics(v60, v64, type metadata accessor for MLCheckpoint);
        v67 = *(v65 + 16);
        PassthroughSubject.send(_:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        v68 = *(v74 + 8);
        v68(v73, v71);
        v68(v72, v71);
        v12 = (v66 + *(v75 + 8));
        v17 = 0;
      }

      break;
  }

LABEL_8:
  if (*(v1 + 257) == 1)
  {
    v18 = (*(v1 + 192) + *(v1 + 64));
    v75 = v17;
    specialized MLTrainingSession.transition(to:)(2, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
    v19 = v18[3];
    v20 = v18[4];
    v70 = 2;
    __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v21 = v75;
    (*(v20 + 40))(&v70, v19, v20);
    if (v21)
    {
      v75 = v21;
LABEL_24:
      v55 = *(v1 + 168);
      v56 = *(v1 + 160);
      v57 = *(v1 + 152);
      v58 = *(v1 + 144);
      v59 = *(v1 + 120);
      v71 = *(v1 + 104);
      v72 = *(v1 + 88);
      v73 = *(v1 + 96);
      v55;
      v56;
      v57;
      v58;
      v59;
      v71;
      v73;
      v72;
      v28 = *(v1 + 8);
      return v28();
    }
  }

  else
  {
    v22 = *v12;
    if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
    {
      *(v1 + 224) = v22;
      v34 = *(v1 + 64);
      v35 = *(v1 + 184);
      v36 = (v34 + *(v1 + 192));
      v37 = v34 + *(v1 + 176);
      v38 = v36[3];
      v39 = v36[4];
      v75 = __swift_project_boxed_opaque_existential_0Tm(v36, v38);
      v40 = *(*(v35 + 32) + v37);
      v41 = *(v39 + 48);
      v42 = (v41 + *v41);
      v43 = swift_task_alloc(v41[1]);
      *(v1 + 232) = v43;
      *v43 = v1;
      v43[1] = specialized MLTrainingSession.extractFeatures(job:);
      return v42(v40, v38, v39);
    }
  }

  v23 = *(v1 + 168);
  v24 = *(v1 + 160);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v27 = *(v1 + 120);
  v73 = *(v1 + 104);
  v75 = *(v1 + 88);
  v72 = *(v1 + 96);
  v23;
  v24;
  v25;
  v26;
  v27;
  v73;
  v72;
  v75;
  v28 = *(v1 + 8);
  return v28();
}

uint64_t specialized MLTrainingSession.extractFeatures(job:)(uint64_t a1, char a2)
{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 112);
  v10 = *(v5 + 72);
  v8 = *(v5 + 88);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

{
  v4 = *(*v3 + 232);
  v5 = *v3;
  *(v5 + 240) = a1;
  *(v5 + 257) = a2 & 1;
  *(v5 + 248) = v2;
  v4;
  if (!v2)
  {
    return swift_task_switch(specialized MLTrainingSession.extractFeatures(job:), 0, 0);
  }

  v6 = *(v5 + 160);
  v7 = *(v5 + 152);
  v13 = *(v5 + 144);
  v12 = *(v5 + 120);
  v11 = *(v5 + 104);
  v10 = *(v5 + 88);
  v8 = *(v5 + 96);
  *(v5 + 168);
  v6;
  v7;
  v13;
  v12;
  v11;
  v8;
  v10;
  return (*(v5 + 8))();
}

uint64_t specialized MLTrainingSession.train(job:)(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[9] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v7);
  v2[15] = swift_task_alloc(v7);
  v2[16] = swift_task_alloc(v7);
  v8 = type metadata accessor for MLCheckpoint(0);
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

{
  v2[8] = v1;
  v2[7] = a1;
  v3 = type metadata accessor for MLCheckpoint(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[11] = swift_task_alloc(v5);
  v2[12] = swift_task_alloc(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v2[13] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v2[14] = v7;
  v2[15] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL(0);
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v2[20] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[21] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.train(job:), 0, 0);
}

uint64_t specialized MLTrainingSession.train(job:)()
{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[17];
    v52 = v1[18];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[20];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[20];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[17];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[16];
    v34 = v49[15];
    v52 = v49[14];
    v51 = v49[9];
    v53 = v49[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v116 = v0 | 0x1000000000000000;
  v115 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 80) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v114 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v114 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 96);
  v17 = *(v1 + 72);
  v18 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v113 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v109 = 0x696C616974696E69;
      v110 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v110 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v109 = v55;
      v110 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v110 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v109 = v54;
LABEL_28:
      v112 = *(v1 + 248);
      v104 = *(v1 + 192);
      v111 = *(v1 + 184);
      v103 = *(v1 + 128);
      v56 = *(v1 + 64);
      v106 = *(v1 + 120);
      v101 = (v56 + v104);
      v99 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v109;
      v24[5] = v110;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v114;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v104 + 24);
      v61 = *(v56 + v104 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v101, v60);
      v62 = v111;
      *(v1 + 256) = *(*(v111 + 28) + v99);
      v63 = (*(v61 + 72))(v106, v113, *(*(v62 + 32) + v99), v60, v61);
      if (v112)
      {
        v114 = v112;
        v64 = *(v1 + 128);
        v65 = *(v1 + 120);
        v66 = *(v1 + 96);
        v67 = *(v1 + 104);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v113 = *(v1 + 184);
        v75 = *(v1 + 152);
        v109 = *(v1 + 144);
        v110 = *(v1 + 136);
        v76 = *(v1 + 120);
        v77 = *(v1 + 112);
        v112 = *(v1 + 104);
        v111 = *(v1 + 64);
        v114 = 0;
        v98 = *(v1 + 96);
        v78 = v111 + *(v1 + 176);
        v79 = v112[2];
        v100 = v74;
        v79(v77, v76);
        v105 = *(v113[7] + v78);
        v107 = *(v113[8] + v78);
        v80 = v75;
        (v79)(v75, v77, v98);
        v81 = v110;
        v82 = v75;
        *(v75 + *(v110 + 20)) = v105;
        *(v75 + *(v81 + 24)) = v107;
        v83 = *(v81 + 28);
        v84 = v81;
        v85 = v82;
        v102 = v82;
        Date.init()(v80);
        v112 = v112[1];
        (v112)(v77, v98);
        *(v85 + *(v84 + 32)) = v100;
        v86 = v113[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v87 = *(*(v86 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v87);
        v88 = *(v86 + v78);
        *(v88 + 16) = v87 + 1;
        outlined init with copy of MLTrainingSessionParameters(v102, v88 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v87, type metadata accessor for MLCheckpoint);
        *(v86 + v78) = v88;
        v25 = *(v113[8] + v78);
        specialized MLTrainingSession.save()();
        v89 = *(v1 + 152);
        v113 = *(v1 + 128);
        v90 = *(v1 + 96);
        v111 = *(v1 + 120);
        if (v114)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
          (v112)(v111, v90);
          (v112)(v113, v90);
          goto LABEL_30;
        }

        v96 = v90;
        v97 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(v89);
        outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
        (v112)(v111, v96);
        (v112)(v113, v96);
      }

      else
      {
        v91 = *(v1 + 128);
        v92 = *(v1 + 120);
        v93 = *(v1 + 96);
        v94 = *(v1 + 104);
        v74;
        v95 = *(v94 + 8);
        v95(v92, v93);
        v95(v91, v93);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v114 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v108 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v114;
  (*(v35 + 40))(&v108, v34, v35);
  if (v36)
  {
    v114 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 128);
    v73 = *(v1 + 120);
    v111 = *(v1 + 112);
    v113 = *(v1 + 72);
    v112 = *(v1 + 88);
    v69;
    v70;
    v71;
    v72;
    v73;
    v111;
    v112;
    v113;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 128);
  v41 = *(v1 + 120);
  v112 = *(v1 + 112);
  v114 = *(v1 + 72);
  v113 = *(v1 + 88);
  v37;
  v38;
  v39;
  v40;
  v41;
  v112;
  v113;
  v114;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[17];
    v52 = v1[18];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[20];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[20];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[17];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[16];
    v34 = v49[15];
    v52 = v49[14];
    v51 = v49[9];
    v53 = v49[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v116 = v0 | 0x1000000000000000;
  v115 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 80) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v114 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v114 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 96);
  v17 = *(v1 + 72);
  v18 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v113 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v109 = 0x696C616974696E69;
      v110 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v110 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v109 = v55;
      v110 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v110 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v109 = v54;
LABEL_28:
      v112 = *(v1 + 248);
      v104 = *(v1 + 192);
      v111 = *(v1 + 184);
      v103 = *(v1 + 128);
      v56 = *(v1 + 64);
      v106 = *(v1 + 120);
      v101 = (v56 + v104);
      v99 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v109;
      v24[5] = v110;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v114;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v104 + 24);
      v61 = *(v56 + v104 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v101, v60);
      v62 = v111;
      *(v1 + 256) = *(*(v111 + 28) + v99);
      v63 = (*(v61 + 72))(v106, v113, *(*(v62 + 32) + v99), v60, v61);
      if (v112)
      {
        v114 = v112;
        v64 = *(v1 + 128);
        v65 = *(v1 + 120);
        v66 = *(v1 + 96);
        v67 = *(v1 + 104);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v113 = *(v1 + 184);
        v75 = *(v1 + 152);
        v109 = *(v1 + 144);
        v110 = *(v1 + 136);
        v76 = *(v1 + 120);
        v77 = *(v1 + 112);
        v112 = *(v1 + 104);
        v111 = *(v1 + 64);
        v114 = 0;
        v98 = *(v1 + 96);
        v78 = v111 + *(v1 + 176);
        v79 = v112[2];
        v100 = v74;
        v79(v77, v76);
        v105 = *(v113[7] + v78);
        v107 = *(v113[8] + v78);
        v80 = v75;
        (v79)(v75, v77, v98);
        v81 = v110;
        v82 = v75;
        *(v75 + *(v110 + 20)) = v105;
        *(v75 + *(v81 + 24)) = v107;
        v83 = *(v81 + 28);
        v84 = v81;
        v85 = v82;
        v102 = v82;
        Date.init()(v80);
        v112 = v112[1];
        (v112)(v77, v98);
        *(v85 + *(v84 + 32)) = v100;
        v86 = v113[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v87 = *(*(v86 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v87);
        v88 = *(v86 + v78);
        *(v88 + 16) = v87 + 1;
        outlined init with copy of MLTrainingSessionParameters(v102, v88 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v87, type metadata accessor for MLCheckpoint);
        *(v86 + v78) = v88;
        v25 = *(v113[8] + v78);
        specialized MLTrainingSession.save()();
        v89 = *(v1 + 152);
        v113 = *(v1 + 128);
        v90 = *(v1 + 96);
        v111 = *(v1 + 120);
        if (v114)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
          (v112)(v111, v90);
          (v112)(v113, v90);
          goto LABEL_30;
        }

        v96 = v90;
        v97 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(v89);
        outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
        (v112)(v111, v96);
        (v112)(v113, v96);
      }

      else
      {
        v91 = *(v1 + 128);
        v92 = *(v1 + 120);
        v93 = *(v1 + 96);
        v94 = *(v1 + 104);
        v74;
        v95 = *(v94 + 8);
        v95(v92, v93);
        v95(v91, v93);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v114 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v108 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v114;
  (*(v35 + 40))(&v108, v34, v35);
  if (v36)
  {
    v114 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 128);
    v73 = *(v1 + 120);
    v111 = *(v1 + 112);
    v113 = *(v1 + 72);
    v112 = *(v1 + 88);
    v69;
    v70;
    v71;
    v72;
    v73;
    v111;
    v112;
    v113;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 128);
  v41 = *(v1 + 120);
  v112 = *(v1 + 112);
  v114 = *(v1 + 72);
  v113 = *(v1 + 88);
  v37;
  v38;
  v39;
  v40;
  v41;
  v112;
  v113;
  v114;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[17];
    v52 = v1[18];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[20];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[20];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[17];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[16];
    v34 = v49[15];
    v52 = v49[14];
    v51 = v49[9];
    v53 = v49[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v116 = v0 | 0x1000000000000000;
  v115 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 80) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v114 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v114 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 96);
  v17 = *(v1 + 72);
  v18 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v113 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v109 = 0x696C616974696E69;
      v110 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v110 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v109 = v55;
      v110 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v110 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v109 = v54;
LABEL_28:
      v112 = *(v1 + 248);
      v104 = *(v1 + 192);
      v111 = *(v1 + 184);
      v103 = *(v1 + 128);
      v56 = *(v1 + 64);
      v106 = *(v1 + 120);
      v101 = (v56 + v104);
      v99 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v109;
      v24[5] = v110;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v114;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v104 + 24);
      v61 = *(v56 + v104 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v101, v60);
      v62 = v111;
      *(v1 + 256) = *(*(v111 + 28) + v99);
      v63 = (*(v61 + 72))(v106, v113, *(*(v62 + 32) + v99), v60, v61);
      if (v112)
      {
        v114 = v112;
        v64 = *(v1 + 128);
        v65 = *(v1 + 120);
        v66 = *(v1 + 96);
        v67 = *(v1 + 104);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v113 = *(v1 + 184);
        v75 = *(v1 + 152);
        v109 = *(v1 + 144);
        v110 = *(v1 + 136);
        v76 = *(v1 + 120);
        v77 = *(v1 + 112);
        v112 = *(v1 + 104);
        v111 = *(v1 + 64);
        v114 = 0;
        v98 = *(v1 + 96);
        v78 = v111 + *(v1 + 176);
        v79 = v112[2];
        v100 = v74;
        v79(v77, v76);
        v105 = *(v113[7] + v78);
        v107 = *(v113[8] + v78);
        v80 = v75;
        (v79)(v75, v77, v98);
        v81 = v110;
        v82 = v75;
        *(v75 + *(v110 + 20)) = v105;
        *(v75 + *(v81 + 24)) = v107;
        v83 = *(v81 + 28);
        v84 = v81;
        v85 = v82;
        v102 = v82;
        Date.init()(v80);
        v112 = v112[1];
        (v112)(v77, v98);
        *(v85 + *(v84 + 32)) = v100;
        v86 = v113[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v87 = *(*(v86 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v87);
        v88 = *(v86 + v78);
        *(v88 + 16) = v87 + 1;
        outlined init with copy of MLTrainingSessionParameters(v102, v88 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v87, type metadata accessor for MLCheckpoint);
        *(v86 + v78) = v88;
        v25 = *(v113[8] + v78);
        specialized MLTrainingSession.save()();
        v89 = *(v1 + 152);
        v113 = *(v1 + 128);
        v90 = *(v1 + 96);
        v111 = *(v1 + 120);
        if (v114)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
          (v112)(v111, v90);
          (v112)(v113, v90);
          goto LABEL_30;
        }

        v96 = v90;
        v97 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(v89);
        outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
        (v112)(v111, v96);
        (v112)(v113, v96);
      }

      else
      {
        v91 = *(v1 + 128);
        v92 = *(v1 + 120);
        v93 = *(v1 + 96);
        v94 = *(v1 + 104);
        v74;
        v95 = *(v94 + 8);
        v95(v92, v93);
        v95(v91, v93);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v114 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v108 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v114;
  (*(v35 + 40))(&v108, v34, v35);
  if (v36)
  {
    v114 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 128);
    v73 = *(v1 + 120);
    v111 = *(v1 + 112);
    v113 = *(v1 + 72);
    v112 = *(v1 + 88);
    v69;
    v70;
    v71;
    v72;
    v73;
    v111;
    v112;
    v113;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 128);
  v41 = *(v1 + 120);
  v112 = *(v1 + 112);
  v114 = *(v1 + 72);
  v113 = *(v1 + 88);
  v37;
  v38;
  v39;
  v40;
  v41;
  v112;
  v113;
  v114;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[17];
    v52 = v1[18];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[20];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[20];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[17];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[16];
    v34 = v49[15];
    v52 = v49[14];
    v51 = v49[9];
    v53 = v49[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v116 = v0 | 0x1000000000000000;
  v115 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 80) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v114 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v114 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 96);
  v17 = *(v1 + 72);
  v18 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v113 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v109 = 0x696C616974696E69;
      v110 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v110 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v109 = v55;
      v110 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v110 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v109 = v54;
LABEL_28:
      v112 = *(v1 + 248);
      v104 = *(v1 + 192);
      v111 = *(v1 + 184);
      v103 = *(v1 + 128);
      v56 = *(v1 + 64);
      v106 = *(v1 + 120);
      v101 = (v56 + v104);
      v99 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v109;
      v24[5] = v110;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v114;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v104 + 24);
      v61 = *(v56 + v104 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v101, v60);
      v62 = v111;
      *(v1 + 256) = *(*(v111 + 28) + v99);
      v63 = (*(v61 + 72))(v106, v113, *(*(v62 + 32) + v99), v60, v61);
      if (v112)
      {
        v114 = v112;
        v64 = *(v1 + 128);
        v65 = *(v1 + 120);
        v66 = *(v1 + 96);
        v67 = *(v1 + 104);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v113 = *(v1 + 184);
        v75 = *(v1 + 152);
        v109 = *(v1 + 144);
        v110 = *(v1 + 136);
        v76 = *(v1 + 120);
        v77 = *(v1 + 112);
        v112 = *(v1 + 104);
        v111 = *(v1 + 64);
        v114 = 0;
        v98 = *(v1 + 96);
        v78 = v111 + *(v1 + 176);
        v79 = v112[2];
        v100 = v74;
        v79(v77, v76);
        v105 = *(v113[7] + v78);
        v107 = *(v113[8] + v78);
        v80 = v75;
        (v79)(v75, v77, v98);
        v81 = v110;
        v82 = v75;
        *(v75 + *(v110 + 20)) = v105;
        *(v75 + *(v81 + 24)) = v107;
        v83 = *(v81 + 28);
        v84 = v81;
        v85 = v82;
        v102 = v82;
        Date.init()(v80);
        v112 = v112[1];
        (v112)(v77, v98);
        *(v85 + *(v84 + 32)) = v100;
        v86 = v113[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v87 = *(*(v86 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v87);
        v88 = *(v86 + v78);
        *(v88 + 16) = v87 + 1;
        outlined init with copy of MLTrainingSessionParameters(v102, v88 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v87, type metadata accessor for MLCheckpoint);
        *(v86 + v78) = v88;
        v25 = *(v113[8] + v78);
        specialized MLTrainingSession.save()();
        v89 = *(v1 + 152);
        v113 = *(v1 + 128);
        v90 = *(v1 + 96);
        v111 = *(v1 + 120);
        if (v114)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
          (v112)(v111, v90);
          (v112)(v113, v90);
          goto LABEL_30;
        }

        v96 = v90;
        v97 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(v89);
        outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
        (v112)(v111, v96);
        (v112)(v113, v96);
      }

      else
      {
        v91 = *(v1 + 128);
        v92 = *(v1 + 120);
        v93 = *(v1 + 96);
        v94 = *(v1 + 104);
        v74;
        v95 = *(v94 + 8);
        v95(v92, v93);
        v95(v91, v93);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v114 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v108 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v114;
  (*(v35 + 40))(&v108, v34, v35);
  if (v36)
  {
    v114 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 128);
    v73 = *(v1 + 120);
    v111 = *(v1 + 112);
    v113 = *(v1 + 72);
    v112 = *(v1 + 88);
    v69;
    v70;
    v71;
    v72;
    v73;
    v111;
    v112;
    v113;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 128);
  v41 = *(v1 + 120);
  v112 = *(v1 + 112);
  v114 = *(v1 + 72);
  v113 = *(v1 + 88);
  v37;
  v38;
  v39;
  v40;
  v41;
  v112;
  v113;
  v114;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[17];
    v52 = v1[18];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[20];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[20];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[17];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[16];
    v34 = v49[15];
    v52 = v49[14];
    v51 = v49[9];
    v53 = v49[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v116 = v0 | 0x1000000000000000;
  v115 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 80) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v114 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v114 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 96);
  v17 = *(v1 + 72);
  v18 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v113 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v109 = 0x696C616974696E69;
      v110 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v110 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v109 = v55;
      v110 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v110 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v109 = v54;
LABEL_28:
      v112 = *(v1 + 248);
      v104 = *(v1 + 192);
      v111 = *(v1 + 184);
      v103 = *(v1 + 128);
      v56 = *(v1 + 64);
      v106 = *(v1 + 120);
      v101 = (v56 + v104);
      v99 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v109;
      v24[5] = v110;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v114;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v104 + 24);
      v61 = *(v56 + v104 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v101, v60);
      v62 = v111;
      *(v1 + 256) = *(*(v111 + 28) + v99);
      v63 = (*(v61 + 72))(v106, v113, *(*(v62 + 32) + v99), v60, v61);
      if (v112)
      {
        v114 = v112;
        v64 = *(v1 + 128);
        v65 = *(v1 + 120);
        v66 = *(v1 + 96);
        v67 = *(v1 + 104);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v113 = *(v1 + 184);
        v75 = *(v1 + 152);
        v109 = *(v1 + 144);
        v110 = *(v1 + 136);
        v76 = *(v1 + 120);
        v77 = *(v1 + 112);
        v112 = *(v1 + 104);
        v111 = *(v1 + 64);
        v114 = 0;
        v98 = *(v1 + 96);
        v78 = v111 + *(v1 + 176);
        v79 = v112[2];
        v100 = v74;
        v79(v77, v76);
        v105 = *(v113[7] + v78);
        v107 = *(v113[8] + v78);
        v80 = v75;
        (v79)(v75, v77, v98);
        v81 = v110;
        v82 = v75;
        *(v75 + *(v110 + 20)) = v105;
        *(v75 + *(v81 + 24)) = v107;
        v83 = *(v81 + 28);
        v84 = v81;
        v85 = v82;
        v102 = v82;
        Date.init()(v80);
        v112 = v112[1];
        (v112)(v77, v98);
        *(v85 + *(v84 + 32)) = v100;
        v86 = v113[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v87 = *(*(v86 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v87);
        v88 = *(v86 + v78);
        *(v88 + 16) = v87 + 1;
        outlined init with copy of MLTrainingSessionParameters(v102, v88 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v87, type metadata accessor for MLCheckpoint);
        *(v86 + v78) = v88;
        v25 = *(v113[8] + v78);
        specialized MLTrainingSession.save()();
        v89 = *(v1 + 152);
        v113 = *(v1 + 128);
        v90 = *(v1 + 96);
        v111 = *(v1 + 120);
        if (v114)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
          (v112)(v111, v90);
          (v112)(v113, v90);
          goto LABEL_30;
        }

        v96 = v90;
        v97 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(v89);
        outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
        (v112)(v111, v96);
        (v112)(v113, v96);
      }

      else
      {
        v91 = *(v1 + 128);
        v92 = *(v1 + 120);
        v93 = *(v1 + 96);
        v94 = *(v1 + 104);
        v74;
        v95 = *(v94 + 8);
        v95(v92, v93);
        v95(v91, v93);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v114 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v108 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v114;
  (*(v35 + 40))(&v108, v34, v35);
  if (v36)
  {
    v114 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 128);
    v73 = *(v1 + 120);
    v111 = *(v1 + 112);
    v113 = *(v1 + 72);
    v112 = *(v1 + 88);
    v69;
    v70;
    v71;
    v72;
    v73;
    v111;
    v112;
    v113;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 128);
  v41 = *(v1 + 120);
  v112 = *(v1 + 112);
  v114 = *(v1 + 72);
  v113 = *(v1 + 88);
  v37;
  v38;
  v39;
  v40;
  v41;
  v112;
  v113;
  v114;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[17];
    v52 = v1[18];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[20];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[20];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[20];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[17];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[17] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[16];
    v34 = v49[15];
    v52 = v49[14];
    v51 = v49[9];
    v53 = v49[11];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v116 = v0 | 0x1000000000000000;
  v115 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 80) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v114 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v114 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 96);
  v17 = *(v1 + 72);
  v18 = *(v1 + 88);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 72);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 104) + 32))(*(v1 + 128), *(v1 + 72), *(v1 + 96));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v113 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v109 = 0x696C616974696E69;
      v110 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v110 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v109 = v55;
      v110 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v110 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v109 = v54;
LABEL_28:
      v112 = *(v1 + 248);
      v104 = *(v1 + 192);
      v111 = *(v1 + 184);
      v103 = *(v1 + 128);
      v56 = *(v1 + 64);
      v106 = *(v1 + 120);
      v101 = (v56 + v104);
      v99 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v109;
      v24[5] = v110;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v114;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v104 + 24);
      v61 = *(v56 + v104 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v101, v60);
      v62 = v111;
      *(v1 + 256) = *(*(v111 + 28) + v99);
      v63 = (*(v61 + 72))(v106, v113, *(*(v62 + 32) + v99), v60, v61);
      if (v112)
      {
        v114 = v112;
        v64 = *(v1 + 128);
        v65 = *(v1 + 120);
        v66 = *(v1 + 96);
        v67 = *(v1 + 104);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v113 = *(v1 + 184);
        v75 = *(v1 + 152);
        v109 = *(v1 + 144);
        v110 = *(v1 + 136);
        v76 = *(v1 + 120);
        v77 = *(v1 + 112);
        v112 = *(v1 + 104);
        v111 = *(v1 + 64);
        v114 = 0;
        v98 = *(v1 + 96);
        v78 = v111 + *(v1 + 176);
        v79 = v112[2];
        v100 = v74;
        v79(v77, v76);
        v105 = *(v113[7] + v78);
        v107 = *(v113[8] + v78);
        v80 = v75;
        (v79)(v75, v77, v98);
        v81 = v110;
        v82 = v75;
        *(v75 + *(v110 + 20)) = v105;
        *(v75 + *(v81 + 24)) = v107;
        v83 = *(v81 + 28);
        v84 = v81;
        v85 = v82;
        v102 = v82;
        Date.init()(v80);
        v112 = v112[1];
        (v112)(v77, v98);
        *(v85 + *(v84 + 32)) = v100;
        v86 = v113[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v87 = *(*(v86 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v87);
        v88 = *(v86 + v78);
        *(v88 + 16) = v87 + 1;
        outlined init with copy of MLTrainingSessionParameters(v102, v88 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v87, type metadata accessor for MLCheckpoint);
        *(v86 + v78) = v88;
        v25 = *(v113[8] + v78);
        specialized MLTrainingSession.save()();
        v89 = *(v1 + 152);
        v113 = *(v1 + 128);
        v90 = *(v1 + 96);
        v111 = *(v1 + 120);
        if (v114)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
          (v112)(v111, v90);
          (v112)(v113, v90);
          goto LABEL_30;
        }

        v96 = v90;
        v97 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(v89);
        outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLCheckpoint);
        (v112)(v111, v96);
        (v112)(v113, v96);
      }

      else
      {
        v91 = *(v1 + 128);
        v92 = *(v1 + 120);
        v93 = *(v1 + 96);
        v94 = *(v1 + 104);
        v74;
        v95 = *(v94 + 8);
        v95(v92, v93);
        v95(v91, v93);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v114 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v108 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v114;
  (*(v35 + 40))(&v108, v34, v35);
  if (v36)
  {
    v114 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 128);
    v73 = *(v1 + 120);
    v111 = *(v1 + 112);
    v113 = *(v1 + 72);
    v112 = *(v1 + 88);
    v69;
    v70;
    v71;
    v72;
    v73;
    v111;
    v112;
    v113;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 128);
  v41 = *(v1 + 120);
  v112 = *(v1 + 112);
  v114 = *(v1 + 72);
  v113 = *(v1 + 88);
  v37;
  v38;
  v39;
  v40;
  v41;
  v112;
  v113;
  v114;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}

{
  v55 = v0 | 0x1000000000000000;
  v54 = v1;
  v2 = v1[8];
  v3 = *(*v2 + 112);
  v1[22] = v3;
  v4 = v3 + v2;
  swift_beginAccess(v4, v1 + 2, 1, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
  v1[23] = v5;
  v47 = v5;
  v46 = v4;
  v6 = *(*(v5 + 44) + v4);
  v1[5] = v6;
  v7 = v6[2];
  v49 = v1;
  v51 = v6;
  if (v7)
  {
    v53 = v1[9];
    v52 = v1[10];
    v48 = v6 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v6;
    while (1)
    {
      if (v7 > v6[2])
      {
        BUG();
      }

      --v7;
      v8 = v1[11];
      outlined init with copy of MLTrainingSessionParameters(&v48[v7 * *(v52 + 72)], v8, type metadata accessor for MLCheckpoint);
      switch(*(v8 + *(v53 + 20)))
      {
        case 0:
          v10 = *(v8 + *(v53 + 20));
          v9 = 0x696C616974696E69;
          v11 = 0xEB0000000064657ALL;
          break;
        case 1:
          v9 = 0x6974636172747865;
          goto LABEL_9;
        case 2:
          v15 = v49[11];
          0xE800000000000000;
          v1 = v49;
          outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLCheckpoint);
          LODWORD(v53) = 0;
          goto LABEL_17;
        case 3:
          v9 = 0x697461756C617665;
LABEL_9:
          v11 = 0xEA0000000000676ELL;
          break;
        case 4:
          v9 = 0x636E657265666E69;
          v11 = &loc_308EF - 0x14FFFFFFFF9B9A86;
          break;
      }

      v12 = v1[11];
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v11, 0x676E696E69617274, 0xE800000000000000, 0);
      v11;
      v14 = outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLCheckpoint);
      if (v13)
      {
        break;
      }

      v1 = v49;
      v6 = v51;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v53) = 0;
    v1 = v49;
  }

  else
  {
    v14 = v6;
LABEL_14:
    LOBYTE(v14) = 1;
    LODWORD(v53) = v14;
    v7 = 0;
  }

LABEL_17:
  v52 = v1[9];
  v16 = v1[21];
  v17 = swift_task_alloc(32);
  *(v17 + 16) = v1 + 5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(closure #1 in BidirectionalCollection.last(where:)specialized partial apply, v17, v7, v53, (v1 + 6));
  v51;
  v17;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v52);
  v19 = v49[21];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for MLCheckpoint?);
    v52 = 0;
  }

  else
  {
    v52 = *(v19 + *(v49[9] + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  v51 = v49[7];
  v20 = v49[8];
  v21 = direct field offset for MLTrainingSession.delegate;
  v49[24] = direct field offset for MLTrainingSession.delegate;
  v22 = *(v20 + v21 + 24);
  v53 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_0Tm((v20 + v21), v22);
  v50 = *(v46 + *(v47 + 28));
  v23 = (*(v53 + 32))(&v50, v22);
  LOBYTE(v22) = v24;
  v49[25] = v23;
  *(v49 + 257) = v24;
  v53 = *(v46 + *(v47 + 32));
  v25 = *(v46 + *(v47 + 28));
  v26 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v26);
  v28 = v23;
  v29 = v51;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v53, v25, v28, v22 & 1, v27, specialized MLJob.currentPhase.setter);
  v27;
  if ([*(v29 + direct field offset for MLJob.progress) isCancelled])
  {
    v30 = v49[21];
    v31 = v49[20];
    v32 = v49[19];
    v33 = v49[18];
    v34 = v49[15];
    v52 = v49[13];
    v51 = v49[11];
    v53 = v49[12];
    v30;
    v31;
    v32;
    v33;
    v34;
    v52;
    v53;
    v51;
    return (v49[1])();
  }

  else
  {
    v49[26] = direct field offset for MLTrainingSession.parameters;
    v49[27] = v52;
    v36 = v49[8];
    v37 = v49[23];
    v38 = (v36 + v49[24]);
    v39 = v36 + v49[22];
    v40 = v38[3];
    v41 = v38[4];
    v51 = __swift_project_boxed_opaque_existential_0Tm(v38, v40);
    v42 = *(*(v37 + 32) + v39);
    v43 = *(v41 + 56);
    v44 = (v43 + *v43);
    v45 = swift_task_alloc(v43[1]);
    v49[28] = v45;
    *v45 = v49;
    v45[1] = specialized MLTrainingSession.train(job:);
    return v44(v42, v40, v41);
  }
}

{
  v111 = v0 | 0x1000000000000000;
  v110 = v1;
  v2 = *(v1 + 184);
  v3 = *(v1 + 176) + *(v1 + 64);
  v4 = *(v2 + 32);
  v5 = *(v4 + v3);
  v6 = __OFADD__(*(v1 + 232), v5);
  v7 = *(v1 + 232) + v5;
  if (v6)
  {
    BUG();
  }

  v8 = *(v1 + 240);
  v9 = *(v1 + 216);
  v10 = *(v1 + 56);
  v11 = *(v1 + 200);
  v12 = *(v1 + 257) & 1;
  *(v3 + v4) = v7;
  specialized MLJob.reportProgress(completedUnitCount:phase:phaseUnitCount:metrics:)(v7, *(v3 + *(v2 + 28)), v11, v12, v8, specialized MLJob.currentPhase.setter);
  v13 = *(v3 + *(v2 + 32));
  v6 = __OFSUB__(v13, v9);
  v14 = v13 - v9;
  if (v6)
  {
    BUG();
  }

  v15 = *(v1 + 208) + *(v1 + 64);
  if (v14 < *(*(*(v1 + 112) + 24) + v15))
  {
    if (*(v1 + 232) <= 0)
    {
      *(v1 + 240);
      goto LABEL_11;
    }

    if (!*(v1 + 258))
    {
      *(v1 + 240);
      v25 = *(v1 + 216);
LABEL_19:
      if (![*(*(v1 + 56) + direct field offset for MLJob.progress) isCancelled])
      {
        *(v1 + 216) = v25;
        v43 = *(v1 + 64);
        v44 = *(v1 + 184);
        v45 = (v43 + *(v1 + 192));
        v46 = v43 + *(v1 + 176);
        v47 = v45[3];
        v48 = v45[4];
        v109 = __swift_project_boxed_opaque_existential_0Tm(v45, v47);
        v49 = *(*(v44 + 32) + v46);
        v50 = *(v48 + 56);
        v51 = (v50 + *v50);
        v52 = swift_task_alloc(v50[1]);
        *(v1 + 224) = v52;
        *v52 = v1;
        v52[1] = specialized MLTrainingSession.train(job:);
        return v51(v49, v47, v48);
      }

      goto LABEL_20;
    }
  }

  v109 = *(v3 + *(v2 + 32));
  v16 = *(v1 + 128);
  v17 = *(v1 + 104);
  v18 = *(v1 + 120);
  outlined init with copy of MLTrainingSessionParameters(v15, v18, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of URL?(v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = *(v1 + 104);
    *(v1 + 240);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
LABEL_11:
    v25 = *(v1 + 216);
    v26 = *(v1 + 248);
    goto LABEL_12;
  }

  v20 = *(v1 + 184);
  v21 = *(v1 + 176) + *(v1 + 64);
  (*(*(v1 + 136) + 32))(*(v1 + 160), *(v1 + 104), *(v1 + 128));
  v22 = *(*(v20 + 28) + v21);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v24 = swift_allocObject(v23, 112, 7);
  v24[2] = 2;
  v24[3] = 4;
  v108 = (v1 + 256);
  switch(v22)
  {
    case 0:
      v104 = 0x696C616974696E69;
      v105 = 0xEB0000000064657ALL;
      goto LABEL_28;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_27;
    case 2:
      v105 = 0xE800000000000000;
      v54 = 0x676E696E69617274;
      goto LABEL_24;
    case 3:
      v55 = 0x697461756C617665;
LABEL_27:
      v104 = v55;
      v105 = 0xEA0000000000676ELL;
      goto LABEL_28;
    case 4:
      v105 = 0xEB00000000676E69;
      v54 = 0x636E657265666E69;
LABEL_24:
      v104 = v54;
LABEL_28:
      v107 = *(v1 + 248);
      v99 = *(v1 + 192);
      v106 = *(v1 + 184);
      v97 = *(v1 + 160);
      v56 = *(v1 + 64);
      v101 = *(v1 + 152);
      v95 = (v56 + v99);
      v94 = v56 + *(v1 + 176);
      v24[7] = &type metadata for String;
      v24[8] = lazy protocol witness table accessor for type String and conformance String();
      v24[4] = v104;
      v24[5] = v105;
      v24[12] = &type metadata for Int;
      v24[13] = &protocol witness table for Int;
      v24[9] = v109;
      v57 = String.init(format:_:)(0xD000000000000012, "ng a features checkpoint." + 0x8000000000000000, v24);
      v59 = v58;
      URL.appendingPathComponent(_:)(v57, v58);
      v59;
      v60 = *(v56 + v99 + 24);
      v61 = *(v56 + v99 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v95, v60);
      v62 = v106;
      *(v1 + 256) = *(*(v106 + 28) + v94);
      v63 = (*(v61 + 72))(v101, v108, *(*(v62 + 32) + v94), v60, v61);
      if (v107)
      {
        v109 = v107;
        v64 = *(v1 + 160);
        v65 = *(v1 + 152);
        v66 = *(v1 + 128);
        v67 = *(v1 + 136);
        *(v1 + 240);
        v68 = *(v67 + 8);
        v68(v65, v66);
        v68(v64, v66);
        goto LABEL_30;
      }

      v74 = *(v1 + 240);
      if (v63)
      {
        v108 = *(v1 + 184);
        v75 = *(v1 + 152);
        v76 = *(v1 + 144);
        v107 = *(v1 + 136);
        v109 = 0;
        v93 = *(v1 + 128);
        v77 = *(v1 + 96);
        v104 = *(v1 + 80);
        v106 = *(v1 + 64);
        v98 = *(v1 + 72);
        v78 = v106 + *(v1 + 176);
        v79 = v107[2];
        v105 = v76;
        v79(v76, v75);
        v100 = *(v108[7] + v78);
        v102 = *(v108[8] + v78);
        (v79)(v77, v76, v93);
        *(v77 + v98[5]) = v100;
        *(v77 + v98[6]) = v102;
        v80 = v98[7];
        v96 = v77;
        Date.init()(v77);
        v107 = v107[1];
        (v107)(v105, v93);
        *(v77 + v98[8]) = v74;
        v81 = v108[11];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(*(v81 + v78) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v82);
        v83 = *(v81 + v78);
        *(v83 + 16) = v82 + 1;
        outlined init with copy of MLTrainingSessionParameters(v96, v83 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v82, type metadata accessor for MLCheckpoint);
        *(v81 + v78) = v83;
        v25 = *(v108[8] + v78);
        specialized MLTrainingSession.save()();
        v108 = *(v1 + 160);
        v106 = *(v1 + 152);
        v84 = *(v1 + 96);
        v85 = *(v1 + 128);
        if (v109)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
          (v107)(v106, v85);
          (v107)(v108, v85);
          goto LABEL_30;
        }

        v91 = *(v1 + 128);
        v92 = *(*(v1 + 56) + 16);
        PassthroughSubject.send(_:)(*(v1 + 96));
        outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLCheckpoint);
        (v107)(v106, v91);
        (v107)(v108, v91);
      }

      else
      {
        v86 = *(v1 + 160);
        v87 = *(v1 + 152);
        v88 = *(v1 + 128);
        v89 = *(v1 + 136);
        v74;
        v90 = *(v89 + 8);
        v90(v87, v88);
        v90(v86, v88);
        v25 = *(v1 + 216);
      }

      v26 = 0;
      break;
  }

LABEL_12:
  if (*(v1 + 258) != 1)
  {
    goto LABEL_19;
  }

  v27 = AnalyticsReporter.init()();
  v28 = *(v1 + 64);
  v109 = v26;
  if (!v27)
  {
    v29 = *(v28 + direct field offset for MLTrainingSession.modelType);
    if (v29 != CreateML_ModelType_unknownDefault)
    {
      v30 = *(v1 + 56);
      v31 = v29;
      AnalyticsReporter.reportTemplateUsed(model:mode:)(v29);
      v32 = Date.timeIntervalSinceReferenceDate.getter();
      AnalyticsReporter.reportEventDuration(model:task:startTime:)(v31, __PAIR128__(0xE800000000000000, 0x676E696E69617254), v32);
      v28 = *(v1 + 64);
    }
  }

  v33 = (*(v1 + 192) + v28);
  specialized MLTrainingSession.transition(to:)(3, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
  v34 = v33[3];
  v35 = v33[4];
  v103 = 3;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v36 = v109;
  (*(v35 + 40))(&v103, v34, v35);
  if (v36)
  {
    v109 = v36;
LABEL_30:
    v69 = *(v1 + 168);
    v70 = *(v1 + 160);
    v71 = *(v1 + 152);
    v72 = *(v1 + 144);
    v73 = *(v1 + 120);
    v106 = *(v1 + 104);
    v108 = *(v1 + 88);
    v107 = *(v1 + 96);
    v69;
    v70;
    v71;
    v72;
    v73;
    v106;
    v107;
    v108;
    v42 = *(v1 + 8);
    return v42();
  }

LABEL_20:
  v37 = *(v1 + 168);
  v38 = *(v1 + 160);
  v39 = *(v1 + 152);
  v40 = *(v1 + 144);
  v41 = *(v1 + 120);
  v107 = *(v1 + 104);
  v109 = *(v1 + 88);
  v108 = *(v1 + 96);
  v37;
  v38;
  v39;
  v40;
  v41;
  v107;
  v108;
  v109;
  v42 = *(v1 + 8);
  return v42();
}