uint64_t sub_1B4EF1464()
{
  v1 = v0[13];
  v2 = v0[10];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_1B4EF1520()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83960;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 40) = 354;
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_1B4EF1664;

  return TransportClient.sendRequest(_:)((v0 + 40), ObjectType, v5);
}

uint64_t sub_1B4EF1664()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EF5D7C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t WorkoutPlanClient.deleteWorkoutPlan(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF17B8, 0, 0);
}

uint64_t sub_1B4EF17B8()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83980;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 316;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F649A4();
  *v8 = v0;
  v8[1] = sub_1B4EEE0CC;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CAE60];
  v12 = MEMORY[0x1E69CAE68];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v10, ObjectType, v9, v5, v11, v12);
}

uint64_t WorkoutPlanClient.insertWorkoutPlan(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF1948, 0, 0);
}

uint64_t sub_1B4EF1948()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F839A0;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 318;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F64ED4();
  *v8 = v0;
  v8[1] = sub_1B4EEE0CC;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CB0C8];
  v12 = MEMORY[0x1E69CB0D0];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v10, ObjectType, v9, v5, v11, v12);
}

uint64_t WorkoutPlanClient.insertWorkoutPlanTemplate(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF1AD8, 0, 0);
}

uint64_t sub_1B4EF1AD8()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F839C0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 344;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F66384();
  *v8 = v0;
  v8[1] = sub_1B4EEE0CC;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CC070];
  v12 = MEMORY[0x1E69CC078];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v10, ObjectType, v9, v5, v11, v12);
}

uint64_t WorkoutPlanClient.requestWorkoutPlan(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF1C6C, 0, 0);
}

uint64_t sub_1B4EF1C6C()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F839E0;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 327;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F649A4();
  v10 = sub_1B4F64ED4();
  *v8 = v0;
  v8[1] = sub_1B4EED954;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = MEMORY[0x1E69CAE60];

  return TransportClient.sendRequest<A, B>(_:payload:)(v11, (v0 + 56), v12, ObjectType, v9, v10, v5, v13);
}

uint64_t WorkoutPlanClient.validateSchedule(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF1E2C, 0, 0);
}

uint64_t sub_1B4EF1E2C()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83A00;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 331;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F66EF4();
  *v8 = v0;
  v8[1] = sub_1B4EEE0CC;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CCC40];
  v12 = MEMORY[0x1E69CCC48];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v10, ObjectType, v9, v5, v11, v12);
}

uint64_t sub_1B4EF1FBC()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x80000001B4F83A20;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 334;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6758, &qword_1B4F7A0C0);
  v10 = sub_1B4EF58C8();
  v11 = sub_1B4EF594C();
  *v8 = v0;
  v8[1] = sub_1B4EEEA14;

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v9, v5, v10, v11);
}

uint64_t sub_1B4EF2168()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83A50;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 353;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = sub_1B4EEEA14;
  v9 = MEMORY[0x1E69E6530];
  v10 = MEMORY[0x1E69CD4A0];
  v11 = MEMORY[0x1E69CD4A8];

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v9, v5, v10, v11);
}

uint64_t WorkoutPlanClient.queryWorkoutPlanTemplateMetadata(identifiers:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF22EC, 0, 0);
}

uint64_t sub_1B4EF22EC()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB71500);
  v4._object = 0x80000001B4F83410;
  v5._countAndFlagsBits = 0xD00000000000002ELL;
  v5._object = 0x80000001B4F83A80;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 16);
  v14 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 64) = 337;
  *(v0 + 24) = v2;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6718, &qword_1B4F7A070);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6778, &qword_1B4F7A0D8);
  v10 = sub_1B4EF5658();
  sub_1B4EF56DC();
  sub_1B4EF5A00();
  sub_1B4EF5A84();
  *v7 = v0;
  v7[1] = sub_1B4EF24C4;

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 64), v0 + 24, ObjectType, v8, v9, v14, v10);
}

uint64_t sub_1B4EF24C4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1B4EF25D8;
  }

  else
  {
    v3 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t WorkoutPlanClient.queryAllWorkoutPlans(forTemplateIdentifier:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF2610, 0, 0);
}

uint64_t sub_1B4EF2610()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v4._object = 0x80000001B4F83AB0;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 336;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F649A4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6698, &qword_1B4F7A000);
  sub_1B4EF5194();
  sub_1B4EF5218();
  *v8 = v0;
  v8[1] = sub_1B4EEE754;
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CAE60];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 56), v11, ObjectType, v9, v10, v5, v12);
}

uint64_t WorkoutPlanClient.deleteWorkoutPlanTemplate(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF27E4, 0, 0);
}

uint64_t sub_1B4EF27E4()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83AE0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 343;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F649A4();
  *v8 = v0;
  v8[1] = sub_1B4EEE0CC;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CAE60];
  v12 = MEMORY[0x1E69CAE68];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v10, ObjectType, v9, v5, v11, v12);
}

uint64_t WorkoutPlanClient.updateWorkoutPlanTemplateName(identifier:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B4F649A4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1B4F673F4();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EF2A74, 0, 0);
}

uint64_t sub_1B4EF2A74()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = sub_1B4F67C54();
  __swift_project_value_buffer(v9, qword_1EDB71500);
  v10._object = 0x80000001B4F83410;
  v11._countAndFlagsBits = 0xD00000000000002FLL;
  v11._object = 0x80000001B4F83B00;
  v10._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v10, v11);
  (*(v3 + 16))(v2, v8, v4);

  sub_1B4F673E4();
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 112) = 338;
  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  *v15 = v0;
  v15[1] = sub_1B4EF2C34;
  v16 = *(v0 + 88);
  v17 = *(v0 + 72);
  v18 = MEMORY[0x1E69CD0A8];
  v19 = MEMORY[0x1E69CD0B0];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 112), v16, ObjectType, v17, v12, v18, v19);
}

uint64_t sub_1B4EF2C34()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1B4EF2DD0;
  }

  else
  {
    v3 = sub_1B4EF2D48;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4EF2D48()
{
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B4EF2DD0()
{
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t WorkoutPlanClient.endWorkoutPlan(identifier:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF2E78, 0, 0);
}

uint64_t sub_1B4EF2E78()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83B30;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 339;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F649A4();
  *v8 = v0;
  v8[1] = sub_1B4EEE0CC;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CAE60];
  v12 = MEMORY[0x1E69CAE68];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v10, ObjectType, v9, v5, v11, v12);
}

uint64_t sub_1B4EF3008()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83B50;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 333;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6798, &qword_1B4F7A108);
  v10 = sub_1B4EF5B38();
  v11 = sub_1B4EF5BBC();
  *v8 = v0;
  v8[1] = sub_1B4EEEA14;

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v9, v5, v10, v11);
}

uint64_t WorkoutPlanClient.insertArchivedPlanSession(session:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF31B4, 0, 0);
}

uint64_t sub_1B4EF31B4()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83B70;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 332;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F66E44();
  *v8 = v0;
  v8[1] = sub_1B4EEE0CC;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CCB50];
  v12 = MEMORY[0x1E69CCB58];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v10, ObjectType, v9, v5, v11, v12);
}

uint64_t WorkoutPlanClient.filterCatalog(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF3348, 0, 0);
}

uint64_t sub_1B4EF3348()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83BA0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 352;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F67584();
  v10 = sub_1B4F66144();
  *v8 = v0;
  v8[1] = sub_1B4EED954;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = MEMORY[0x1E69CD230];

  return TransportClient.sendRequest<A, B>(_:payload:)(v11, (v0 + 56), v12, ObjectType, v9, v10, v5, v13);
}

uint64_t sub_1B4EF34E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *v8;
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.createWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B4EF35F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *v8;
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.replaceWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B4EF3700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *v8;
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.createUnsavedWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B4EF380C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.repeatWorkoutPlan(request:)(a1, a2);
}

uint64_t sub_1B4EF38B8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.validateSchedule(request:)(a1);
}

uint64_t sub_1B4EF3950(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.makeWorkoutPlanSchedule(request:)(a1, a2);
}

uint64_t sub_1B4EF39FC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.updateWorkoutPlan(_:)(a1, a2);
}

uint64_t sub_1B4EF3AA8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.queryActiveWorkoutPlanProgressSnapshot()(a1);
}

uint64_t sub_1B4EF3B44(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.requestWorkoutPlans(state:)(a1, a2 & 1);
}

uint64_t sub_1B4EF3BEC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryDailyNotificationSchedule(for:)(a1);
}

uint64_t sub_1B4EF3C84(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.queryNextIncompleteWorkoutReference(after:)(a1, a2);
}

uint64_t sub_1B4EF3D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryIncompleteMatchingWorkoutReferences(plan:workout:)(a1, a2, a3);
}

uint64_t sub_1B4EF3DE0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryAllWorkoutPlanTemplateReferences()();
}

uint64_t sub_1B4EF3E70()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryAllWorkoutPlanTemplatesCount()();
}

uint64_t sub_1B4EF3F00(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryWorkoutPlanTemplateMetadata(identifiers:)(a1);
}

uint64_t sub_1B4EF3F98(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryWorkoutPlanTemplates(identifiers:)(a1);
}

uint64_t sub_1B4EF4030(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryAllWorkoutPlans(forTemplateIdentifier:)(a1);
}

uint64_t sub_1B4EF40C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.requestWorkoutPlanAlternatives(workoutIdentifier:workoutPlan:)(a1, a2, a3, a4);
}

uint64_t sub_1B4EF418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.updateWorkoutPlanAlternatives(planIdentifier:reference:workoutIdentifier:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1B4EF4258()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.deleteAllActiveWorkoutPlans()();
}

uint64_t sub_1B4EF42E8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.deleteWorkoutPlan(_:)(a1);
}

uint64_t sub_1B4EF4380(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.insertWorkoutPlan(_:)(a1);
}

uint64_t sub_1B4EF4418(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.insertWorkoutPlanTemplate(_:)(a1);
}

uint64_t sub_1B4EF44B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.deleteWorkoutPlanTemplate(_:)(a1);
}

uint64_t sub_1B4EF4548(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.requestWorkoutPlan(_:)(a1, a2);
}

uint64_t sub_1B4EF45F4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.queryWorkoutPlanSummary(_:)(a1, a2);
}

uint64_t sub_1B4EF46A0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryWorkoutPlanSummaries(request:)(a1);
}

uint64_t sub_1B4EF4738(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.queryPendingWorkoutPlanSummary()(a1);
}

uint64_t sub_1B4EF47D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryWorkoutPlanSummariesViewed()();
}

uint64_t sub_1B4EF4864(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.insertCompletedWorkoutPlanSummary(_:)(a1);
}

uint64_t sub_1B4EF48FC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.insertArchivedPlanSession(session:)(a1);
}

uint64_t sub_1B4EF4994()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.evaluateActiveWorkoutPlanCompletion()();
}

uint64_t sub_1B4EF4A24()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDED70;

  return WorkoutPlanClient.queryActiveWorkoutPlanItemMetrics()();
}

uint64_t sub_1B4EF4AB4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryWorkoutPlanItemMetrics(planIdentifier:)(a1);
}

uint64_t sub_1B4EF4B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.updateWorkoutPlanTemplateName(identifier:name:)(a1, a2, a3);
}

uint64_t sub_1B4EF4BFC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.endWorkoutPlan(identifier:)(a1);
}

uint64_t sub_1B4EF4C94(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.filterCatalog(request:)(a1, a2);
}

void *sub_1B4EF4D40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v11 = a1;
  v10 = 50;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v10, sub_1B4EF5D68, v7, ObjectType, &protocol witness table for XPCClient);

  v11 = a1;
  v10 = 51;
  v8 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v10, sub_1B4EF5D6C, v8, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4EF4EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC84B4(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4EF4F38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6648, &qword_1B4F79F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4EF4FA8()
{
  result = qword_1EB8F6660;
  if (!qword_1EB8F6660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6650, &qword_1B4F79FD0);
    sub_1B4EF5C70(&qword_1EB8F6668, MEMORY[0x1E69CBE40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6660);
  }

  return result;
}

unint64_t sub_1B4EF505C()
{
  result = qword_1EB8F6678;
  if (!qword_1EB8F6678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6670, &qword_1B4F79FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6678);
  }

  return result;
}

unint64_t sub_1B4EF50E0()
{
  result = qword_1EB8F6680;
  if (!qword_1EB8F6680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6670, &qword_1B4F79FE0);
    sub_1B4EF5C70(&qword_1EB8F6688, MEMORY[0x1E69CCA00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6680);
  }

  return result;
}

unint64_t sub_1B4EF5194()
{
  result = qword_1EB8F66A0;
  if (!qword_1EB8F66A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6698, &qword_1B4F7A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66A0);
  }

  return result;
}

unint64_t sub_1B4EF5218()
{
  result = qword_1EB8F66A8;
  if (!qword_1EB8F66A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6698, &qword_1B4F7A000);
    sub_1B4EF5C70(&qword_1EB8F66B0, MEMORY[0x1E69CB0E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66A8);
  }

  return result;
}

unint64_t sub_1B4EF52CC()
{
  result = qword_1EDB6DBA8;
  if (!qword_1EDB6DBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F66B8, &qword_1B4F7A010);
    sub_1B4EF5C70(&qword_1EDB70048, MEMORY[0x1E69CCD48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBA8);
  }

  return result;
}

unint64_t sub_1B4EF5380()
{
  result = qword_1EB8F66C8;
  if (!qword_1EB8F66C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F66C0, &qword_1B4F7A028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66C8);
  }

  return result;
}

unint64_t sub_1B4EF5404()
{
  result = qword_1EB8F66D0;
  if (!qword_1EB8F66D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F66C0, &qword_1B4F7A028);
    sub_1B4EF5C70(&qword_1EB8F66D8, MEMORY[0x1E69CC278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66D0);
  }

  return result;
}

unint64_t sub_1B4EF54B8()
{
  result = qword_1EB8F66E8;
  if (!qword_1EB8F66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F66E0, &qword_1B4F7A040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66E8);
  }

  return result;
}

unint64_t sub_1B4EF553C()
{
  result = qword_1EB8F66F0;
  if (!qword_1EB8F66F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F66E0, &qword_1B4F7A040);
    sub_1B4EF5C70(&qword_1EB8F66F8, MEMORY[0x1E69CCD78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66F0);
  }

  return result;
}

uint64_t sub_1B4EF55F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6700, &qword_1B4F7A058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4EF5658()
{
  result = qword_1EB8F6728;
  if (!qword_1EB8F6728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6718, &qword_1B4F7A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6728);
  }

  return result;
}

unint64_t sub_1B4EF56DC()
{
  result = qword_1EB8F6730;
  if (!qword_1EB8F6730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6718, &qword_1B4F7A070);
    sub_1B4EF5C70(&qword_1EB8F6738, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6730);
  }

  return result;
}

unint64_t sub_1B4EF5790()
{
  result = qword_1EB8F6740;
  if (!qword_1EB8F6740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6720, &qword_1B4F7A078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6740);
  }

  return result;
}

unint64_t sub_1B4EF5814()
{
  result = qword_1EB8F6748;
  if (!qword_1EB8F6748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6720, &qword_1B4F7A078);
    sub_1B4EF5C70(&qword_1EB8F6750, MEMORY[0x1E69CC088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6748);
  }

  return result;
}

unint64_t sub_1B4EF58C8()
{
  result = qword_1EB8F6760;
  if (!qword_1EB8F6760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6758, &qword_1B4F7A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6760);
  }

  return result;
}

unint64_t sub_1B4EF594C()
{
  result = qword_1EB8F6768;
  if (!qword_1EB8F6768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6758, &qword_1B4F7A0C0);
    sub_1B4EF5C70(&qword_1EB8F6770, MEMORY[0x1E69CCEA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6768);
  }

  return result;
}

unint64_t sub_1B4EF5A00()
{
  result = qword_1EB8F6780;
  if (!qword_1EB8F6780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6778, &qword_1B4F7A0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6780);
  }

  return result;
}

unint64_t sub_1B4EF5A84()
{
  result = qword_1EB8F6788;
  if (!qword_1EB8F6788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6778, &qword_1B4F7A0D8);
    sub_1B4EF5C70(&qword_1EB8F6790, MEMORY[0x1E69CCDC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6788);
  }

  return result;
}

unint64_t sub_1B4EF5B38()
{
  result = qword_1EB8F67A0;
  if (!qword_1EB8F67A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6798, &qword_1B4F7A108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F67A0);
  }

  return result;
}

unint64_t sub_1B4EF5BBC()
{
  result = qword_1EB8F67A8;
  if (!qword_1EB8F67A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6798, &qword_1B4F7A108);
    sub_1B4EF5C70(&unk_1EB8F67B0, MEMORY[0x1E69CCB68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F67A8);
  }

  return result;
}

uint64_t sub_1B4EF5C70(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B4EF5DB4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B4EF5EC8(_BYTE *a1, uint64_t a2, char a3, void *a4, void (*a5)(void))
{
  a1[*a4] = a3;
  v6 = a1;
  a5();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B4EF75A0();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_1B4EF5F6C()
{
  result = qword_1EB8F6858;
  if (!qword_1EB8F6858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8F6858);
  }

  return result;
}

uint64_t BadgingCountsUpdated.init(appBadgeCount:seymourTabBadges:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id NetworkMonitor.__allocating_init(queue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1B4DC9CD0(a1);

  return v4;
}

id NetworkMonitor.cellularDataRestrictedState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1B4F67DA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v9 = v10;
  (*(v4 + 104))(v9, *MEMORY[0x1E69E8020], v3, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1B4F67DC4();
  result = (*(v4 + 8))(v9, v3);
  if (v10)
  {
    v13 = *(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_coreTelephonyObserver);
    return sub_1B4DDCE08(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NetworkMonitor.init(queue:)(void *a1)
{
  v2 = sub_1B4DC9CD0(a1);

  return v2;
}

id NetworkMonitor.isAirplaneModeEnabled.getter()
{
  v1 = sub_1B4F67DA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v7 = v8;
  (*(v2 + 104))(v7, *MEMORY[0x1E69E8020], v1, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1B4F67DC4();
  result = (*(v2 + 8))(v7, v1);
  if (v8)
  {
    return [*(v0 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_airplaneModeObserver) enabled];
  }

  __break(1u);
  return result;
}

id sub_1B4EF62E0(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  if (swift_dynamicCast())
  {
    sub_1B4EF77D0();
    swift_allocError();
    *v3 = v5;
    return swift_willThrow();
  }

  else
  {
    swift_willThrow();
    return a1;
  }
}

id NetworkMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall NetworkMonitor.cellularDataRestrictedStateChanged(_:)(SeymourClient::CellularDataRestrictedState a1)
{
  v2 = sub_1B4F67DA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2);
  v9 = v8;
  LOBYTE(v8) = sub_1B4F67DC4();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B4DD5BFC();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B4EF6644(void *a1, void *a2)
{
  v5 = sub_1B4F67DA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v11 = v12;
  (*(v6 + 104))(v11, *MEMORY[0x1E69E8020], v5, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1B4F67DC4();
  result = (*(v6 + 8))(v11, v5);
  if (v12)
  {
    return *(*(v2 + *a1) + *a2);
  }

  __break(1u);
  return result;
}

id sub_1B4EF6774@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1B4F67DA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v1;
  v11 = *(*v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v9 = v11;
  (*(v4 + 104))(v9, *MEMORY[0x1E69E8020], v3, v7);
  v12 = v11;
  LOBYTE(v11) = sub_1B4F67DC4();
  result = (*(v4 + 8))(v9, v3);
  if (v11)
  {
    v14 = *(v10 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_coreTelephonyObserver);
    return sub_1B4DDCE08(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B4EF68A0()
{
  v1 = sub_1B4F67DA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v0;
  v9 = *(*v0 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v7 = v9;
  (*(v2 + 104))(v7, *MEMORY[0x1E69E8020], v1, v5);
  v10 = v9;
  LOBYTE(v9) = sub_1B4F67DC4();
  result = (*(v2 + 8))(v7, v1);
  if (v9)
  {
    return [*(v8 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_airplaneModeObserver) enabled];
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4EF6A08(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1B4F67DA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *v4;
  v15 = *(*v4 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v13 = v15;
  (*(v8 + 104))(v13, *MEMORY[0x1E69E8020], v7, v11);
  v16 = v15;
  LOBYTE(v15) = sub_1B4F67DC4();
  result = (*(v8 + 8))(v13, v7);
  if (v15)
  {
    return *(*(v14 + *a3) + *a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4EF6BB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_1B4F675F4();
}

void sub_1B4EF6C48(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v9 = 0;
  a1(&v8);
  v6 = v8;
  v7 = v9;

  sub_1B4DDC730(v6, v7);
}

void sub_1B4EF6CD4(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_1B4DDC730(v6, 0);
}

void sub_1B4EF6E00(void *a1, char a2, void (*a3)(id *), uint64_t a4, void (*a5)(void *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44F0, &qword_1B4F6CD98);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v18 - v14;
  if (a2)
  {
    a5(a1);
    v16 = sub_1B4F67654();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;

    v16(sub_1B4E56960, v17);

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    a3(&v18);
    sub_1B4DDC730(v18, v19);
  }
}

void sub_1B4EF6F98(void *a1, char a2, void (*a3)(id *), uint64_t a4, void (*a5)(void *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F68B0, &qword_1B4F6CDA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v18 - v14;
  if (a2)
  {
    a5(a1);
    v16 = sub_1B4F67654();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;

    v16(sub_1B4DDA420, v17);

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    a3(&v18);
    sub_1B4DDC730(v18, v19);
  }
}

uint64_t sub_1B4EF7130(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *, double), uint64_t a4, void (*a5)(uint64_t, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v20 - v15;
  if (a2)
  {
    a5(a1, v14);
    v17 = sub_1B4F67654();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;

    v17(sub_1B4E56960, v18);

    return (*(v11 + 8))(v16, v10);
  }

  else
  {
    v20 = a1;
    v21 = 0;
    return a3(&v20, v14);
  }
}

void sub_1B4EF72BC(void *a1, unint64_t a2, char a3, void (*a4)(id *), uint64_t a5, void (*a6)(void *, double))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v21 - v17;
  if (a3)
  {
    a6(a1, v16);
    v19 = sub_1B4F67654();
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    v19(sub_1B4EF7738, v20);

    (*(v13 + 8))(v18, v12);
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v24 = 0;
    sub_1B4DD3014(a1, a2);
    a4(&v22);
    sub_1B4E21804(v22, v23, v24);
  }
}

uint64_t sub_1B4EF7464(uint64_t result, uint64_t (*a2)(__int128 *))
{
  v2 = *(result + 16);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_1B4EF7510(char *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7[0] = *a1;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  return sub_1B4DDBC7C(v7);
}

uint64_t sub_1B4EF75B8(void (*a1)(void))
{
  v3 = sub_1B4F67DA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3);
  v10 = v9;
  LOBYTE(v9) = sub_1B4F67DC4();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      a1();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4EF7738(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 16);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

unint64_t sub_1B4EF77D0()
{
  result = qword_1EB8F6940;
  if (!qword_1EB8F6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6940);
  }

  return result;
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EventDeliveryStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EventDeliveryStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B4EF8208(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4EF8300()
{
  v0 = sub_1B4F66754();
  __swift_allocate_value_buffer(v0, qword_1EDB70070);
  __swift_project_value_buffer(v0, qword_1EDB70070);
  sub_1B4F684B4();
  return sub_1B4F66724();
}

uint64_t _s11SeymourCore23AudioLanguagePreferenceV0A6ClientE7defaultACyFZ_0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB70068 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F66754();
  v3 = __swift_project_value_buffer(v2, qword_1EDB70070);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t XPCServerClientConnected.processName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t XPCServerClientConnected.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CommentaryEventEnded.commentaryEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65A44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CommentaryEventEnded.init(commentaryEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CommentaryEventEnded()
{
  result = qword_1EB8F6CF0;
  if (!qword_1EB8F6CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PublishRecord.init(lastDelivery:queuedEvent:timer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  v7 = type metadata accessor for PublishRecord();
  v8 = *(v7 + 28);
  v9 = sub_1B4F687D4();
  result = (*(*(v9 - 8) + 32))(a3 + v8, a1, v9);
  *(a3 + *(v7 + 32)) = a2;
  return result;
}

void sub_1B4EF86A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1B4F687D4();
  if (v2 <= 0x3F)
  {
    sub_1B4EF8B50();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4EF873C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 7;
  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((v11 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_33:
    v21 = (a1 + v9 + 8) & ~v9;
    if (v7 < 0x7FFFFFFE)
    {
      v23 = *((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      if ((v23 + 1) >= 2)
      {
        return v23;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v22 = (*(v5 + 48))(v21);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void sub_1B4EF88D0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = (a1 + v10 + 8) & ~v10;
  if (v8 < 0x7FFFFFFE)
  {
    v23 = ((v11 + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v23 = 0;
      *v23 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v23 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);
    v25 = a2 + 1;
    v26 = (a1 + v10 + 8) & ~v10;

    v24(v26, v25);
  }

  else
  {
    if (v11 <= 3)
    {
      v20 = ~(-1 << (8 * v11));
    }

    else
    {
      v20 = -1;
    }

    if (v11)
    {
      v21 = v20 & (~v8 + a2);
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      bzero(((a1 + v10 + 8) & ~v10), v11);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *v19 = v21;
          *(v19 + 2) = BYTE2(v21);
        }

        else
        {
          *v19 = v21;
        }
      }

      else if (v22 == 1)
      {
        *v19 = v21;
      }

      else
      {
        *v19 = v21;
      }
    }
  }
}

void sub_1B4EF8B50()
{
  if (!qword_1EB8F6D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6D88, qword_1B4F7A900);
    v0 = sub_1B4F687D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8F6D80);
    }
  }
}

uint64_t sub_1B4EF8BB4@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v31 = a6;
  v29 = a5;
  v11 = *(a5 + 16);
  v12 = sub_1B4F687D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v29 - v20;
  v32 = a4;
  v30 = v6;
  if (a2)
  {
    v22 = *v6;
  }

  else
  {
    v22 = a1;
  }

  v23 = *(v13 + 16);
  v23(v18, a3, v12);
  v24 = *(v11 - 8);
  v25 = *(v24 + 48);
  if (v25(v18, 1, v11) == 1)
  {
    v26 = v30;
    v23(v21, v30 + *(v29 + 28), v12);
    if (v25(v18, 1, v11) != 1)
    {
      (*(v13 + 8))(v18, v12);
    }
  }

  else
  {
    (*(v24 + 32))(v21, v18, v11);
    (*(v24 + 56))(v21, 0, 1, v11);
    v26 = v30;
  }

  v27 = v32;
  if (!v32)
  {
    v27 = *(v26 + *(v29 + 32));
    swift_unknownObjectRetain();
  }

  PublishRecord.init(lastDelivery:queuedEvent:timer:)(v21, v27, v31, v22);
  return swift_unknownObjectRetain();
}

uint64_t sub_1B4EF8E20(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v9 = v8;
  v76 = a2;
  v77 = a4;
  v75 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v15 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v59 = &v58 - v17;
  v62 = a5;
  v60 = *(a5 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v72 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v73 = &v58 - v24;
  v25 = sub_1B4F687D4();
  v63 = *(v25 - 8);
  v64 = v25;
  v26 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v25, v27);
  v66 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v58 - v31;
  v33 = *(*(a4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v34, v35);
  v65 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v71 = *(a3 - 1);
  v39 = *(v71 + 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v58 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a6;
  v78 = swift_getAssociatedTypeWitness();
  v67 = *(v78 - 8);
  v44 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v78, v45);
  v47 = &v58 - v46;
  v48 = sub_1B4F680D4();
  v79 = sub_1B4F68AB4();
  v74 = sub_1B4F68AC4();
  sub_1B4F68A64();
  (*(v71 + 2))(v43, v68, a3);
  v77 = v47;
  v71 = a3;
  result = sub_1B4F680C4();
  if (v48 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v48)
  {
    v50 = (v70 + 48);
    v51 = (v70 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1B4F68834();
      result = (*v50)(v32, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v75(v32, v73);
      if (v9)
      {
        (*(v67 + 8))(v77, v78);

        (*(v60 + 32))(v61, v73, v62);
        return (*v51)(v32, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v51)(v32, AssociatedTypeWitness);
      sub_1B4F68AA4();
      if (!--v48)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v52 = v66;
  sub_1B4F68834();
  v53 = v52;
  v54 = v70;
  v55 = *(v70 + 48);
  v73 = (v70 + 48);
  v71 = v55;
  if (v55(v52, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v67 + 8))(v77, v78);
    (*(v63 + 8))(v53, v64);
    return v79;
  }

  else
  {
    v70 = *(v54 + 32);
    v56 = (v54 + 8);
    v57 = v59;
    while (1)
    {
      (v70)(v57, v53, AssociatedTypeWitness);
      v75(v57, v72);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v56)(v57, AssociatedTypeWitness);
      sub_1B4F68AA4();
      sub_1B4F68834();
      if (v71(v53, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v56)(v57, AssociatedTypeWitness);
    (*(v67 + 8))(v77, v78);

    return (*(v60 + 32))(v61, v72, v62);
  }
}

uint64_t Digest.hexString.getter(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B4EF8E20(sub_1B4EF95D4, 0, a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], *(a2 + 32), MEMORY[0x1E69E7410], a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  sub_1B4E5D5B8();
  v8 = sub_1B4F67F34();

  return v8;
}

uint64_t sub_1B4EF95D4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5498, qword_1B4F730E0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7508];
  *(v4 + 16) = xmmword_1B4F6CF50;
  v6 = MEMORY[0x1E69E7558];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_1B4F67F84();
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t HashAlgorithm.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1B8C82740](0);
  return MEMORY[0x1B8C82740](v1);
}

uint64_t HashAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](0);
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4EF970C()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](0);
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4EF9760()
{
  v1 = *v0;
  MEMORY[0x1B8C82740](0);
  return MEMORY[0x1B8C82740](v1);
}

uint64_t sub_1B4EF97A0()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](0);
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4EF97F4()
{
  result = qword_1EB8F6D90;
  if (!qword_1EB8F6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6D90);
  }

  return result;
}

uint64_t sub_1B4EF9908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v47 = a2;
  v48 = a4;
  v54 = sub_1B4F64854();
  v44 = *(v54 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v54, v14);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a5 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B4F67E04();
  v49 = a1;
  if (!a1)
  {
    v25 = v21;
    sub_1B4F67DE4();
    return (*(v45 + 8))(v25, a5);
  }

  v50 = v21;
  v51 = a6;
  v23 = a3 >> 62;
  v43[1] = a7;
  v43[2] = v7;
  v52 = a5;
  if ((a3 >> 62) > 1)
  {
    if (v23 == 2)
    {
      v27 = *(v47 + 16);
      v26 = *(v47 + 24);
      v24 = v26 - v27;
      if (__OFSUB__(v26, v27))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v24 < 1)
      {
        goto LABEL_23;
      }

LABEL_13:
      v29 = 0;
      LODWORD(v47) = *MEMORY[0x1E6969010];
      v46 = (v44 + 104);
      v30 = (v44 + 8);
      while (!__OFSUB__(v24, v29))
      {
        if (v24 - v29 >= v48)
        {
          v31 = v48;
        }

        else
        {
          v31 = v24 - v29;
        }

        (*v46)(v16, v47, v54);
        sub_1B4F64844();
        if (v31)
        {
          v32 = sub_1B4F64784();
          v33 = *(v32 + 48);
          v34 = *(v32 + 52);
          swift_allocObject();

          v35 = sub_1B4F64734();
          v36 = sub_1B4F64774();
          *v37 |= 0x8000000000000000;
          v36(v53, 0);
          v38 = sub_1B4EF9DA8(v35, v31);
          v40 = v39;
        }

        else
        {
          v41 = sub_1B4F64844();
          v41(v49 + v29, 0);

          v38 = 0;
          v40 = 0xC000000000000000;
        }

        (*v30)(v16, v54);
        v53[0] = v38;
        v53[1] = v40;
        sub_1B4EF9E8C();
        sub_1B4F67DF4();
        result = sub_1B4DD2B70(v38, v40);
        v42 = __OFADD__(v29, v31);
        v29 += v31;
        if (v42)
        {
          goto LABEL_26;
        }

        if (v29 >= v24)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_23:
    v25 = v50;
    a5 = v52;
    sub_1B4F67DE4();
    return (*(v45 + 8))(v25, a5);
  }

  if (!v23)
  {
    v24 = BYTE6(a3);
    if (!BYTE6(a3))
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  v28 = HIDWORD(v47) - v47;
  if (!__OFSUB__(HIDWORD(v47), v47))
  {
    v24 = v28;
    if (v28 >= 1)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B4EF9CF0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B4EF9DA8(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1B4F64864();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1B4F64744();
  if (v3)
  {
    result = sub_1B4F64764();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1B4F64754();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B4EF9CF0(v3, v7);

  return v8;
}

unint64_t sub_1B4EF9E8C()
{
  result = qword_1EB8F6D98;
  if (!qword_1EB8F6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6D98);
  }

  return result;
}

uint64_t TransportDataSerializable.hash(_:)(uint64_t *a1)
{
  v4 = sub_1B4F67E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_1B4F66E04();
  if (!v2)
  {
    v13 = v11;
    v14 = v12;
    sub_1B4DD3014(v11, v12);
    sub_1B4E5D3A0(v13, v14, v13, v14, v10, v9);
    v16[1] = sub_1B4E5C9F8(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
    sub_1B4E5D5B8();
    v1 = sub_1B4F67F34();
    sub_1B4DD2B70(v13, v14);
    (*(v5 + 8))(v9, v4);
  }

  return v1;
}

uint64_t *Array<A>.hash(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B4F67E24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v22 = a2;
  sub_1B4F68254();
  v21[1] = a4;
  swift_getWitnessTable();
  v15 = &v22;
  v16 = sub_1B4F671D4();
  if (!v4)
  {
    v18 = v16;
    v19 = v17;
    sub_1B4DD3014(v16, v17);
    sub_1B4E5D3A0(v18, v19, v18, v19, v14, v13);
    v22 = sub_1B4E5C9F8(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
    sub_1B4E5D5B8();
    v15 = sub_1B4F67F34();
    sub_1B4DD2B70(v18, v19);
    (*(v9 + 8))(v13, v8);
  }

  return v15;
}

uint64_t Data.hash(_:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B4F67E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1B4DD3014(a2, a3);
  sub_1B4E5D3A0(a2, a3, a2, a3, v12, v11);
  v15 = sub_1B4E5C9F8(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  sub_1B4E5D5B8();
  v13 = sub_1B4F67F34();
  (*(v7 + 8))(v11, v6);

  return v13;
}

uint64_t MusicTrackStarted.musicTrack.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64AD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MusicTrackStarted.init(musicTrack:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MusicTrackStarted()
{
  result = qword_1EB8F6DA0;
  if (!qword_1EB8F6DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SessionClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F024D4(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4EFA808()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 40);
    v1 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, &type metadata for DistributedSessionCancelled, &protocol witness table for DistributedSessionCancelled, ObjectType, v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B4EFA8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + 40);
    v17 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v19 = a4(0);
    (*(*(v19 - 8) + 16))(v14, a1, v19);
    (*(v17 + 8))(v14, v10, a5, ObjectType, v17);
    swift_unknownObjectRelease();
    return sub_1B4F02C84(v14, a6);
  }

  return result;
}

uint64_t SessionClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SessionClient.queryActiveSession()()
{
  v1 = v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F83F10;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 241;
  v8 = *(v6 + 24);
  v9 = sub_1B4F678C4();
  return v8(&v11, v9, MEMORY[0x1E69CD260], MEMORY[0x1E69CD268], ObjectType, v6);
}

uint64_t SessionClient.createSession(token:catalogWorkout:supportedMetrics:workoutActivityType:startTime:queueIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v231 = a5;
  v237 = a4;
  v236 = a3;
  v220 = a2;
  v262 = a6;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v238 = *(v228 - 8);
  v7 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v228, v8);
  v240 = v217 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v217 - v12;
  v239 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v242 = v217 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v235 = v217 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v234 = v217 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v233 = v217 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v232 = v217 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8, v36);
  v229 = v217 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v227 = v217 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8, v44);
  v226 = v217 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8, v48);
  v225 = v217 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8, v52);
  v261 = v217 - v53;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4160, &qword_1B4F6A660);
  v54 = *(*(v221 - 8) + 64);
  MEMORY[0x1EEE9AC00](v221, v55);
  v222 = v217 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8, v59);
  v224 = v217 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61 - 8, v63);
  v260 = v217 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65 - 8, v67);
  v259 = v217 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69 - 8, v71);
  v258 = v217 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73 - 8, v75);
  v257 = v217 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77 - 8, v79);
  v256 = v217 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81 - 8, v83);
  v255 = v217 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85 - 8, v87);
  v253 = v217 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  v90 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89 - 8, v91);
  v252 = v217 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93 - 8, v95);
  v251 = v217 - v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  v98 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97 - 8, v99);
  v248 = v217 - v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  v102 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101 - 8, v103);
  v247 = v217 - v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  v106 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105 - 8, v107);
  v246 = v217 - v108;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  v110 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109 - 8, v111);
  v245 = v217 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  v114 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113 - 8, v115);
  v244 = v217 - v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  v118 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117 - 8, v119);
  v243 = v217 - v120;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  v122 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121 - 8, v123);
  v125 = v217 - v124;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v127 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126 - 8, v128);
  v130 = v217 - v129;
  v131 = sub_1B4F65804();
  v132 = *(v131 - 8);
  v133 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v131, v134);
  v136 = v217 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1B4F678C4();
  v254 = *(v137 - 8);
  v138 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v137, v139);
  v249 = v140;
  v250 = v217 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v141, v142);
  v263 = v217 - v143;
  v144 = a1;
  v145 = *(a1 + 32);
  os_unfair_lock_lock((v145 + 20));
  v146 = *(v145 + 16);
  os_unfair_lock_unlock((v145 + 20));
  if (v146 == 1)
  {
    v223 = v137;
    v230 = v13;
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v147 = sub_1B4F67C54();
    __swift_project_value_buffer(v147, qword_1EDB6DF00);
    v148._countAndFlagsBits = 0xD000000000000021;
    v148._object = 0x80000001B4F83EE0;
    v149._countAndFlagsBits = 0xD000000000000063;
    v149._object = 0x80000001B4F83F30;
    Logger.trace(file:function:)(v148, v149);
    v150 = [objc_opt_self() mainBundle];
    v151 = [v150 bundleIdentifier];

    if (v151)
    {
      v218 = sub_1B4F67F74();
      v219 = v152;
    }

    else
    {
      v219 = 0x80000001B4F83FA0;
      v218 = 0xD000000000000017;
    }

    v217[5] = v144;
    v157 = *(v144 + 24);
    v217[4] = *(v144 + 16);
    v217[0] = v157;
    v158 = *(v132 + 16);
    v217[3] = v136;
    v158(v136, v220, v131);
    v159 = sub_1B4F65184();
    v160 = *(*(v159 - 8) + 56);
    v217[2] = v130;
    v160(v130, 1, 1, v159);
    v161 = sub_1B4F663B4();
    v162 = *(*(v161 - 8) + 56);
    v217[1] = v125;
    v162(v125, 1, 1, v161);
    v163 = sub_1B4F66754();
    (*(*(v163 - 8) + 56))(v243, 1, 1, v163);
    v164 = sub_1B4F65274();
    (*(*(v164 - 8) + 56))(v244, 1, 1, v164);
    v165 = sub_1B4F67AF4();
    (*(*(v165 - 8) + 56))(v245, 1, 1, v165);
    v166 = sub_1B4F65AD4();
    (*(*(v166 - 8) + 56))(v246, 1, 1, v166);
    v167 = sub_1B4F66014();
    (*(*(v167 - 8) + 56))(v247, 1, 1, v167);
    v168 = sub_1B4F65854();
    (*(*(v168 - 8) + 56))(v248, 1, 1, v168);
    v169 = sub_1B4F64FD4();
    (*(*(v169 - 8) + 56))(v251, 1, 1, v169);
    v170 = sub_1B4F65D04();
    (*(*(v170 - 8) + 56))(v252, 1, 1, v170);
    v171 = sub_1B4F66B74();
    (*(*(v171 - 8) + 56))(v253, 1, 1, v171);
    v172 = sub_1B4F65B84();
    (*(*(v172 - 8) + 56))(v255, 1, 1, v172);
    v173 = sub_1B4F64AA4();
    (*(*(v173 - 8) + 56))(v256, 1, 1, v173);
    v174 = sub_1B4F66454();
    (*(*(v174 - 8) + 56))(v257, 1, 1, v174);
    v175 = sub_1B4F65DB4();
    (*(*(v175 - 8) + 56))(v258, 1, 1, v175);
    v176 = sub_1B4F66E84();
    (*(*(v176 - 8) + 56))(v259, 1, 1, v176);
    v177 = sub_1B4F64B04();
    (*(*(v177 - 8) + 56))(v260, 1, 1, v177);

    sub_1B4F684B4();
    v178 = *MEMORY[0x1E69CD330];
    v179 = sub_1B4F67A14();
    (*(*(v179 - 8) + 104))(v222, v178, v179);
    swift_storeEnumTagMultiPayload();
    v264 = 1;
    v180 = v224;
    sub_1B4F679F4();
    v181 = sub_1B4F67A34();
    (*(*(v181 - 8) + 56))(v180, 0, 1, v181);
    v182 = sub_1B4F65894();
    (*(*(v182 - 8) + 56))(v261, 1, 1, v182);
    sub_1B4E21A90(v231, v225, &qword_1EB8F4098, &unk_1B4F78910);
    v183 = sub_1B4F66914();
    (*(*(v183 - 8) + 56))(v226, 1, 1, v183);
    v184 = sub_1B4F64E44();
    (*(*(v184 - 8) + 56))(v227, 1, 1, v184);
    v185 = sub_1B4F65C34();
    (*(*(v185 - 8) + 56))(v229, 1, 1, v185);
    v186 = sub_1B4F66084();
    (*(*(v186 - 8) + 56))(v232, 1, 1, v186);
    v187 = sub_1B4F66AC4();
    (*(*(v187 - 8) + 56))(v233, 1, 1, v187);
    v188 = sub_1B4F679A4();
    (*(*(v188 - 8) + 56))(v234, 1, 1, v188);
    v189 = sub_1B4F66964();
    (*(*(v189 - 8) + 56))(v235, 1, 1, v189);

    v190 = v263;
    sub_1B4F676A4();

    v191 = v230;
    sub_1B4F67604();
    v192 = v254;
    v193 = *(v254 + 16);
    v260 = (v254 + 16);
    v261 = v193;
    v194 = v250;
    v195 = v223;
    (v193)(v250, v190, v223);
    v196 = *(v192 + 80);
    v197 = swift_allocObject();
    *(v197 + 16) = v241;
    v258 = *(v192 + 32);
    v259 = (v192 + 32);
    (v258)(v197 + ((v196 + 24) & ~v196), v194, v195);
    v198 = swift_allocObject();
    *(v198 + 16) = sub_1B4F02824;
    *(v198 + 24) = v197;
    v199 = v238;
    v200 = *(v238 + 16);
    v256 = (v238 + 16);
    v257 = v200;
    v201 = v240;
    v202 = v228;
    (v200)(v240, v191, v228);
    v203 = *(v199 + 80);
    v255 = v203;
    v204 = (v203 + 16) & ~v203;
    v253 = v204;
    v205 = (v239 + v204 + 7) & 0xFFFFFFFFFFFFFFF8;
    v248 = v205;
    v206 = swift_allocObject();
    v252 = *(v199 + 32);
    (v252)(v206 + v204, v201, v202);
    v207 = (v206 + v205);
    *v207 = sub_1B4DD9224;
    v207[1] = v198;

    v208 = v242;
    sub_1B4F675F4();
    v251 = *(v199 + 8);
    v209 = v230;
    (v251)(v230, v202);
    v210 = v250;
    v211 = v223;
    (v261)(v250, v263, v223);
    v212 = swift_allocObject();
    (v258)(v212 + ((v196 + 16) & ~v196), v210, v211);
    v213 = swift_allocObject();
    *(v213 + 16) = sub_1B4F02898;
    *(v213 + 24) = v212;
    (v257)(v209, v208, v202);
    v214 = v248;
    v215 = swift_allocObject();
    (v252)(&v253[v215], v209, v202);
    v216 = &v214[v215];
    *v216 = sub_1B4DD91FC;
    v216[1] = v213;
    sub_1B4F675F4();
    (v251)(v208, v202);
    return (*(v254 + 8))(v263, v211);
  }

  else
  {
    v153 = sub_1B4F65114();
    sub_1B4F029CC(&qword_1EB8F6DB0, MEMORY[0x1E69CB200]);
    v154 = swift_allocError();
    (*(*(v153 - 8) + 104))(v155, *MEMORY[0x1E69CB1F0], v153);
    *(swift_allocObject() + 16) = v154;

    return sub_1B4F67604();
  }
}

void sub_1B4EFC578(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 20));
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 0;
  }

  else
  {
    v2 = sub_1B4F65114();
    sub_1B4F029CC(&qword_1EB8F6DB0, MEMORY[0x1E69CB200]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69CB1F0], v2);
    swift_willThrow();
  }

  os_unfair_lock_unlock((v1 + 20));
}

uint64_t sub_1B4EFC674(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 240;
  v6 = *(v4 + 16);
  v7 = sub_1B4F678C4();
  return v6(&v9, a2, v7, MEMORY[0x1E69CD260], MEMORY[0x1E69CD268], ObjectType, v4);
}

uint64_t sub_1B4EFC718(uint64_t a1)
{
  v2 = sub_1B4F678C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1B4F67604();
}

Swift::Void __swiftcall SessionClient.detachRemoteDisplay()()
{
  v1 = v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F83FC0;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v0 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 30;
  (*(v5 + 40))(&v8, ObjectType, v5);
}

uint64_t SessionClient.requestDistributedSessionWithParticipant(havingRole:)(char a1)
{
  v2 = v1;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF00);
  v5._object = 0x80000001B4F83EE0;
  v6._countAndFlagsBits = 0xD000000000000035;
  v6._object = 0x80000001B4F83FE0;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 246;
  v11 = a1;
  return (*(v8 + 16))(&v12, &v11, MEMORY[0x1E69CC378], MEMORY[0x1E69CC368], MEMORY[0x1E69CC370], ObjectType, v8);
}

uint64_t SessionClient.requestDistributedSessionWithParticipant(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF00);
  v5._object = 0x80000001B4F83EE0;
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001B4F84020;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 245;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65F84();
  return v10(&v13, a1, v11, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v8);
}

uint64_t SessionClient.activateDistributedSession(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v186 = a2;
  v185 = a1;
  v188 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v184 = v171 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v183 = v171 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v182 = v171 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v181 = v171 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v180 = v171 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v179 = v171 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v178 = v171 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v177 = v171 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8, v37);
  v176 = v171 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8, v41);
  v197 = v171 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v196 = v171 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8, v49);
  v195 = v171 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8, v53);
  v194 = v171 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8, v57);
  v193 = v171 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8, v61);
  v192 = v171 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8, v65);
  v191 = v171 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8, v69);
  v190 = v171 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8, v73);
  v189 = v171 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75 - 8, v77);
  v79 = v171 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80 - 8, v82);
  v84 = v171 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85 - 8, v87);
  v89 = v171 - v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  v91 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90 - 8, v92);
  v94 = v171 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  v96 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95 - 8, v97);
  v99 = v171 - v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  v101 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100 - 8, v102);
  v104 = v171 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  v106 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105 - 8, v107);
  v109 = v171 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  v111 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110 - 8, v112);
  v114 = v171 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v116 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115 - 8, v117);
  v119 = v171 - v118;
  v175 = sub_1B4F65504();
  v174 = *(v175 - 8);
  v120 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v175, v121);
  v173 = v171 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v123 = sub_1B4F67C54();
  __swift_project_value_buffer(v123, qword_1EDB6DF00);
  v124._object = 0x80000001B4F83EE0;
  v125._countAndFlagsBits = 0xD000000000000027;
  v125._object = 0x80000001B4F84050;
  v124._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v124, v125);
  v172 = sub_1B4F68F24();
  v126 = sub_1B4F65184();
  v127 = *(*(v126 - 8) + 56);
  v171[9] = v119;
  v127(v119, 1, 1, v126);
  v128 = sub_1B4F663B4();
  v129 = *(*(v128 - 8) + 56);
  v171[8] = v114;
  v129(v114, 1, 1, v128);
  v130 = sub_1B4F66754();
  v131 = *(*(v130 - 8) + 56);
  v171[7] = v109;
  v131(v109, 1, 1, v130);
  v132 = sub_1B4F65274();
  v133 = *(*(v132 - 8) + 56);
  v171[6] = v104;
  v133(v104, 1, 1, v132);
  v134 = sub_1B4F65AD4();
  v135 = *(*(v134 - 8) + 56);
  v171[5] = v99;
  v135(v99, 1, 1, v134);
  v136 = sub_1B4F67AF4();
  v137 = *(*(v136 - 8) + 56);
  v171[4] = v94;
  v137(v94, 1, 1, v136);
  v138 = sub_1B4F66014();
  v139 = *(*(v138 - 8) + 56);
  v171[3] = v89;
  v139(v89, 1, 1, v138);
  v140 = sub_1B4F65854();
  v141 = *(*(v140 - 8) + 56);
  v171[2] = v84;
  v141(v84, 1, 1, v140);
  v142 = sub_1B4F64FD4();
  v143 = *(*(v142 - 8) + 56);
  v171[1] = v79;
  v143(v79, 1, 1, v142);
  v144 = sub_1B4F65D04();
  (*(*(v144 - 8) + 56))(v189, 1, 1, v144);
  v145 = sub_1B4F66B74();
  (*(*(v145 - 8) + 56))(v190, 1, 1, v145);
  v146 = sub_1B4F65B84();
  (*(*(v146 - 8) + 56))(v191, 1, 1, v146);
  v147 = sub_1B4F64AA4();
  (*(*(v147 - 8) + 56))(v192, 1, 1, v147);
  v148 = sub_1B4F66454();
  (*(*(v148 - 8) + 56))(v193, 1, 1, v148);
  v149 = sub_1B4F65DB4();
  (*(*(v149 - 8) + 56))(v194, 1, 1, v149);
  v150 = sub_1B4F66E84();
  (*(*(v150 - 8) + 56))(v195, 1, 1, v150);
  v151 = sub_1B4F64B04();
  (*(*(v151 - 8) + 56))(v196, 1, 1, v151);
  v152 = sub_1B4F65894();
  (*(*(v152 - 8) + 56))(v197, 1, 1, v152);
  v153 = sub_1B4F67A34();
  (*(*(v153 - 8) + 56))(v176, 1, 1, v153);
  v154 = sub_1B4F66914();
  (*(*(v154 - 8) + 56))(v177, 1, 1, v154);
  v155 = sub_1B4F64E14();
  (*(*(v155 - 8) + 56))(v178, 1, 1, v155);
  v156 = sub_1B4F64E44();
  (*(*(v156 - 8) + 56))(v179, 1, 1, v156);
  v157 = sub_1B4F65C34();
  (*(*(v157 - 8) + 56))(v180, 1, 1, v157);
  v158 = sub_1B4F66084();
  (*(*(v158 - 8) + 56))(v181, 1, 1, v158);
  v159 = sub_1B4F66964();
  (*(*(v159 - 8) + 56))(v182, 1, 1, v159);
  v160 = sub_1B4F66AC4();
  (*(*(v160 - 8) + 56))(v183, 1, 1, v160);
  v161 = sub_1B4F679A4();
  (*(*(v161 - 8) + 56))(v184, 1, 1, v161);

  sub_1B4F684B4();
  v162 = v173;
  sub_1B4F65424();
  v163 = *(v187 + 16);
  v164 = *(v187 + 24);
  ObjectType = swift_getObjectType();
  v198 = 238;
  v166 = *(v164 + 32);
  v167 = sub_1B4F678C4();
  v170 = ObjectType;
  v168 = v175;
  v166(&v198, v162, v175, v167, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398], MEMORY[0x1E69CD260], MEMORY[0x1E69CD268], v170, v164);
  return (*(v174 + 8))(v162, v168);
}

uint64_t SessionClient.cancelDistributedSessionWithParticipant(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF00);
  v5._object = 0x80000001B4F83EE0;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001B4F84080;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 239;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65F84();
  return v10(&v13, a1, v11, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v8);
}

uint64_t SessionClient.reportAppRequirementCompleted()()
{
  v1 = v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F840B0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 251;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t SessionClient.reportAppRequirementFailed()()
{
  v1 = v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F840D0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 252;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

void SessionClient.sendCountdownIntent(_:token:)(uint64_t a1, uint64_t a2)
{
  v201 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v187 = v176 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v176 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = v176 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = v176 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v192 = v176 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v191 = v176 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v190 = v176 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8, v36);
  v189 = v176 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v188 = v176 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8, v44);
  v46 = v176 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8, v49);
  v211 = (v176 - v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8, v53);
  v210 = v176 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8, v57);
  v59 = v176 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60 - 8, v62);
  v209 = v176 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64 - 8, v66);
  v208 = v176 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68 - 8, v70);
  v207 = v176 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72 - 8, v74);
  v206 = v176 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76 - 8, v78);
  v205 = v176 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80 - 8, v82);
  v204 = v176 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  v85 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84 - 8, v86);
  v203 = v176 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88 - 8, v90);
  v202 = v176 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  v93 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92 - 8, v94);
  v200 = v176 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  v97 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96 - 8, v98);
  v199 = v176 - v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  v101 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100 - 8, v102);
  v198 = v176 - v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  v105 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104 - 8, v106);
  v197 = v176 - v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  v109 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108 - 8, v110);
  v196 = v176 - v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v113 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112 - 8, v114);
  v195 = v176 - v115;
  v186 = sub_1B4F65504();
  v185 = *(v186 - 8);
  v116 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v186, v117);
  v184 = v176 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1B4F65AD4();
  v120 = *(v119 - 8);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119, v122);
  v124 = v176 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = a2;
  v125 = *(a2 + 32);
  os_unfair_lock_lock((v125 + 20));
  v126 = *(v125 + 16);
  os_unfair_lock_unlock((v125 + 20));
  if (v126)
  {
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v127 = sub_1B4F67C54();
    __swift_project_value_buffer(v127, qword_1EDB6DF00);
    v211 = sub_1B4F67C34();
    v128 = sub_1B4F685C4();
    if (os_log_type_enabled(v211, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_1B4DC2000, v211, v128, "Send countdown intent failed with inactive token", v129, 2u);
      MEMORY[0x1B8C831D0](v129, -1, -1);
    }

    v130 = v211;
  }

  else
  {
    v181 = v21;
    v182 = v16;
    v183 = v11;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v131 = sub_1B4F67C54();
    __swift_project_value_buffer(v131, qword_1EDB72490);
    v132 = *(v120 + 16);
    v178 = v120 + 16;
    v177 = v132;
    v132(v124, v201, v119);
    v133 = v194;

    v134 = sub_1B4F67C34();
    v135 = sub_1B4F685E4();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v212 = v180;
      *v136 = 136446466;
      sub_1B4F029CC(&qword_1EB8F6DB8, MEMORY[0x1E69CB588]);
      v137 = sub_1B4F68D04();
      v138 = v59;
      v140 = v139;
      (*(v120 + 8))(v124, v119);
      v141 = sub_1B4DC4F88(v137, v140, &v212);
      v59 = v138;
      v133 = v194;

      *(v136 + 4) = v141;
      *(v136 + 12) = 2082;
      *(v136 + 14) = sub_1B4DC4F88(*(v133 + 16), *(v133 + 24), &v212);
      _os_log_impl(&dword_1B4DC2000, v134, v135, "Sending countdown intent %{public}s for session: %{public}s", v136, 0x16u);
      v142 = v180;
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v142, -1, -1);
      MEMORY[0x1B8C831D0](v136, -1, -1);
    }

    else
    {

      (*(v120 + 8))(v124, v119);
    }

    v176[0] = v46;
    v176[1] = v59;
    LODWORD(v180) = sub_1B4F68F24();
    v143 = *(v133 + 24);
    v194 = *(v133 + 16);
    v179 = v143;
    v144 = sub_1B4F65184();
    (*(*(v144 - 8) + 56))(v195, 1, 1, v144);
    v145 = sub_1B4F663B4();
    (*(*(v145 - 8) + 56))(v196, 1, 1, v145);
    v146 = sub_1B4F66754();
    (*(*(v146 - 8) + 56))(v197, 1, 1, v146);
    v147 = sub_1B4F65274();
    (*(*(v147 - 8) + 56))(v198, 1, 1, v147);
    v148 = v199;
    v177(v199, v201, v119);
    (*(v120 + 56))(v148, 0, 1, v119);
    v149 = sub_1B4F67AF4();
    (*(*(v149 - 8) + 56))(v200, 1, 1, v149);
    v150 = sub_1B4F66014();
    (*(*(v150 - 8) + 56))(v202, 1, 1, v150);
    v151 = sub_1B4F65854();
    (*(*(v151 - 8) + 56))(v203, 1, 1, v151);
    v152 = sub_1B4F64FD4();
    (*(*(v152 - 8) + 56))(v204, 1, 1, v152);
    v153 = sub_1B4F65D04();
    (*(*(v153 - 8) + 56))(v205, 1, 1, v153);
    v154 = sub_1B4F66B74();
    (*(*(v154 - 8) + 56))(v206, 1, 1, v154);
    v155 = sub_1B4F65B84();
    (*(*(v155 - 8) + 56))(v207, 1, 1, v155);
    v156 = sub_1B4F64AA4();
    (*(*(v156 - 8) + 56))(v208, 1, 1, v156);
    v157 = sub_1B4F66454();
    (*(*(v157 - 8) + 56))(v209, 1, 1, v157);
    v158 = sub_1B4F65DB4();
    (*(*(v158 - 8) + 56))(v59, 1, 1, v158);
    v159 = sub_1B4F66E84();
    (*(*(v159 - 8) + 56))(v210, 1, 1, v159);
    v160 = sub_1B4F64B04();
    (*(*(v160 - 8) + 56))(v211, 1, 1, v160);
    v161 = sub_1B4F65894();
    (*(*(v161 - 8) + 56))(v46, 1, 1, v161);
    v162 = sub_1B4F67A34();
    (*(*(v162 - 8) + 56))(v188, 1, 1, v162);
    v163 = sub_1B4F66914();
    (*(*(v163 - 8) + 56))(v189, 1, 1, v163);
    v164 = sub_1B4F64E14();
    (*(*(v164 - 8) + 56))(v190, 1, 1, v164);
    v165 = sub_1B4F64E44();
    (*(*(v165 - 8) + 56))(v191, 1, 1, v165);
    v166 = sub_1B4F65C34();
    (*(*(v166 - 8) + 56))(v192, 1, 1, v166);
    v167 = sub_1B4F66084();
    (*(*(v167 - 8) + 56))(v181, 1, 1, v167);
    v168 = sub_1B4F66964();
    (*(*(v168 - 8) + 56))(v182, 1, 1, v168);
    v169 = sub_1B4F66AC4();
    (*(*(v169 - 8) + 56))(v183, 1, 1, v169);
    v170 = sub_1B4F679A4();
    (*(*(v170 - 8) + 56))(v187, 1, 1, v170);

    sub_1B4F684B4();
    v171 = v184;
    sub_1B4F65424();
    v173 = *(v193 + 16);
    v172 = *(v193 + 24);
    ObjectType = swift_getObjectType();
    v213 = 33;
    v175 = v186;
    (*(v172 + 48))(&v213, v171, v186, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398], ObjectType, v172);
    (*(v185 + 8))(v171, v175);
  }
}

void SessionClient.startCountdown(_:token:)(uint64_t a1, void *a2)
{
  v174 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v183 = v168 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v182 = v168 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v181 = v168 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v180 = v168 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v179 = v168 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v178 = v168 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v177 = v168 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v176 = v168 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8, v37);
  v175 = v168 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8, v41);
  v195 = (v168 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v194 = v168 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8, v49);
  v193 = v168 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8, v53);
  v192 = v168 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8, v57);
  v191 = v168 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8, v61);
  v190 = v168 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8, v65);
  v189 = v168 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8, v69);
  v188 = v168 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8, v73);
  v187 = v168 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75 - 8, v77);
  v186 = v168 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79 - 8, v81);
  v185 = v168 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83 - 8, v85);
  v87 = v168 - v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88 - 8, v90);
  v92 = v168 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93 - 8, v95);
  v97 = v168 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  v99 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98 - 8, v100);
  v102 = v168 - v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103 - 8, v105);
  v107 = v168 - v106;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  v109 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108 - 8, v110);
  v112 = v168 - v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v114 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113 - 8, v115);
  v117 = v168 - v116;
  v173 = sub_1B4F65504();
  v172 = *(v173 - 8);
  v118 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173, v119);
  v171 = v168 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a2[4];
  os_unfair_lock_lock((v121 + 20));
  v122 = *(v121 + 16);
  os_unfair_lock_unlock((v121 + 20));
  if (v122)
  {
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v123 = sub_1B4F67C54();
    __swift_project_value_buffer(v123, qword_1EDB6DF00);
    v195 = sub_1B4F67C34();
    v124 = sub_1B4F685C4();
    if (os_log_type_enabled(v195, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_1B4DC2000, v195, v124, "Start countdown failed with inactive token", v125, 2u);
      MEMORY[0x1B8C831D0](v125, -1, -1);
    }

    v126 = v195;
  }

  else
  {
    v169 = sub_1B4F68F24();
    v127 = a2[3];
    v170 = a2[2];
    v168[6] = v127;
    v128 = sub_1B4F65184();
    v129 = *(*(v128 - 8) + 56);
    v168[8] = v117;
    v129(v117, 1, 1, v128);
    v130 = sub_1B4F663B4();
    v131 = *(*(v130 - 8) + 56);
    v168[7] = v112;
    v131(v112, 1, 1, v130);
    v132 = sub_1B4F66754();
    v133 = *(*(v132 - 8) + 56);
    v168[5] = v107;
    v133(v107, 1, 1, v132);
    v134 = sub_1B4F65274();
    v135 = *(*(v134 - 8) + 56);
    v168[4] = v102;
    v135(v102, 1, 1, v134);
    v136 = sub_1B4F65AD4();
    v137 = *(*(v136 - 8) + 56);
    v168[3] = v97;
    v137(v97, 1, 1, v136);
    v138 = sub_1B4F67AF4();
    v139 = *(v138 - 8);
    v140 = *(v139 + 16);
    v168[2] = v92;
    v140(v92, v174, v138);
    (*(v139 + 56))(v92, 0, 1, v138);
    v141 = sub_1B4F66014();
    v142 = *(*(v141 - 8) + 56);
    v168[1] = v87;
    v142(v87, 1, 1, v141);
    v143 = sub_1B4F65854();
    (*(*(v143 - 8) + 56))(v185, 1, 1, v143);
    v144 = sub_1B4F64FD4();
    (*(*(v144 - 8) + 56))(v186, 1, 1, v144);
    v145 = sub_1B4F65D04();
    (*(*(v145 - 8) + 56))(v187, 1, 1, v145);
    v146 = sub_1B4F66B74();
    (*(*(v146 - 8) + 56))(v188, 1, 1, v146);
    v147 = sub_1B4F65B84();
    (*(*(v147 - 8) + 56))(v189, 1, 1, v147);
    v148 = sub_1B4F64AA4();
    (*(*(v148 - 8) + 56))(v190, 1, 1, v148);
    v149 = sub_1B4F66454();
    (*(*(v149 - 8) + 56))(v191, 1, 1, v149);
    v150 = sub_1B4F65DB4();
    (*(*(v150 - 8) + 56))(v192, 1, 1, v150);
    v151 = sub_1B4F66E84();
    (*(*(v151 - 8) + 56))(v193, 1, 1, v151);
    v152 = sub_1B4F64B04();
    (*(*(v152 - 8) + 56))(v194, 1, 1, v152);
    v153 = sub_1B4F65894();
    (*(*(v153 - 8) + 56))(v195, 1, 1, v153);
    v154 = sub_1B4F67A34();
    (*(*(v154 - 8) + 56))(v175, 1, 1, v154);
    v155 = sub_1B4F66914();
    (*(*(v155 - 8) + 56))(v176, 1, 1, v155);
    v156 = sub_1B4F64E14();
    (*(*(v156 - 8) + 56))(v177, 1, 1, v156);
    v157 = sub_1B4F64E44();
    (*(*(v157 - 8) + 56))(v178, 1, 1, v157);
    v158 = sub_1B4F65C34();
    (*(*(v158 - 8) + 56))(v179, 1, 1, v158);
    v159 = sub_1B4F66084();
    (*(*(v159 - 8) + 56))(v180, 1, 1, v159);
    v160 = sub_1B4F66964();
    (*(*(v160 - 8) + 56))(v181, 1, 1, v160);
    v161 = sub_1B4F66AC4();
    (*(*(v161 - 8) + 56))(v182, 1, 1, v161);
    v162 = sub_1B4F679A4();
    (*(*(v162 - 8) + 56))(v183, 1, 1, v162);

    sub_1B4F684B4();
    v163 = v171;
    sub_1B4F65424();
    v165 = *(v184 + 16);
    v164 = *(v184 + 24);
    ObjectType = swift_getObjectType();
    v196 = 33;
    v167 = v173;
    (*(v164 + 48))(&v196, v163, v173, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398], ObjectType, v164);
    (*(v172 + 8))(v163, v167);
  }
}

void SessionClient.applySessionUpdate(token:activityRings:audioFocusPreference:audioLanguagePreference:cadenceMetric:displayPreferences:distanceMetric:energyMetric:gymKitConnection:heartRateDeviceConnection:heartRateMetric:meditation:mindfulMinutesMetric:multiUserSession:multiUserSessionIdentities:paceMetric:playbackIntent:playback:remoteDisplayConnection:scoreMetric:termination:unitPreferences:userMassMetric:workoutDeviceConnection:watchConnectionRejection:workout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v200 = a8;
  v198 = a7;
  v196 = a6;
  v194 = a5;
  v193 = a4;
  v191 = a3;
  v190 = a2;
  v217 = a25;
  v218 = a26;
  v214 = a23;
  v215 = a24;
  v212 = a22;
  v211 = a21;
  v210 = a20;
  v209 = a19;
  v208 = a18;
  v207 = a17;
  v206 = a16;
  v205 = a15;
  v204 = a14;
  v203 = a13;
  v202 = a12;
  v201 = a11;
  v199 = a10;
  v197 = a9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v216 = v177 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v213 = v177 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8, v37);
  v195 = v177 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8, v41);
  v192 = v177 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v189 = v177 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8, v49);
  v188 = v177 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8, v53);
  v187 = v177 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8, v57);
  v186 = v177 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8, v61);
  v185 = v177 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8, v65);
  v230 = (v177 - v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8, v69);
  v229 = v177 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8, v73);
  v228 = v177 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75 - 8, v77);
  v227 = v177 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79 - 8, v81);
  v226 = v177 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83 - 8, v85);
  v225 = v177 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87 - 8, v89);
  v224 = v177 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  v92 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91 - 8, v93);
  v223 = v177 - v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  v96 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95 - 8, v97);
  v222 = v177 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  v100 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99 - 8, v101);
  v221 = v177 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103 - 8, v105);
  v220 = v177 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  v108 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107 - 8, v109);
  v111 = v177 - v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  v113 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112 - 8, v114);
  v116 = v177 - v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  v118 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117 - 8, v119);
  v121 = v177 - v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  v123 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122 - 8, v124);
  v126 = v177 - v125;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  v128 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127 - 8, v129);
  v131 = v177 - v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  v133 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132 - 8, v134);
  v136 = v177 - v135;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v138 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137 - 8, v139);
  v141 = v177 - v140;
  v184 = sub_1B4F65504();
  v183 = *(v184 - 8);
  v142 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184, v143);
  v182 = v177 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v145, v146);
  v181 = v177 - v147;
  v148 = a1;
  v149 = *(a1 + 32);
  os_unfair_lock_lock((v149 + 20));
  LOBYTE(a1) = *(v149 + 16);
  os_unfair_lock_unlock((v149 + 20));
  if (a1)
  {
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v150 = sub_1B4F67C54();
    __swift_project_value_buffer(v150, qword_1EDB6DF00);
    v230 = sub_1B4F67C34();
    v151 = sub_1B4F685C4();
    if (os_log_type_enabled(v230, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&dword_1B4DC2000, v230, v151, "Apply session update failed with inactive token", v152, 2u);
      MEMORY[0x1B8C831D0](v152, -1, -1);
    }

    v153 = v230;
  }

  else
  {
    v178 = sub_1B4F68F24();
    v154 = *(v148 + 24);
    v180 = *(v148 + 16);
    v177[4] = v154;
    v179 = v141;
    sub_1B4E21A90(v190, v141, &qword_1EB8F7050, &qword_1B4F71500);
    v177[7] = v136;
    sub_1B4E21A90(v191, v136, &qword_1EB8F4140, qword_1B4F789A0);
    v177[6] = v131;
    sub_1B4E21A90(v193, v131, &qword_1EB8F4138, &qword_1B4F6A640);
    v177[5] = v126;
    sub_1B4E21A90(v194, v126, &qword_1EB8F4130, &unk_1B4F78990);
    v155 = sub_1B4F65AD4();
    v156 = *(*(v155 - 8) + 56);
    v177[3] = v121;
    v156(v121, 1, 1, v155);
    v157 = sub_1B4F67AF4();
    v158 = *(*(v157 - 8) + 56);
    v177[2] = v116;
    v158(v116, 1, 1, v157);
    v177[1] = v111;
    sub_1B4E21A90(v196, v111, &qword_1EB8F4118, &qword_1B4F6A630);
    sub_1B4E21A90(v198, v220, &qword_1EB8F40F8, &unk_1B4F78970);
    sub_1B4E21A90(v200, v221, &qword_1EB8F72D0, &qword_1B4F6A610);
    sub_1B4E21A90(v197, v222, &qword_1EB8F40F0, &unk_1B4F78960);
    sub_1B4E21A90(v199, v223, &qword_1EB8F40E8, &qword_1B4F6A608);
    sub_1B4E21A90(v201, v224, &qword_1EB8F40E0, &unk_1B4F78950);
    sub_1B4E21A90(v202, v225, &qword_1EB8F40D8, &qword_1B4F6A600);
    sub_1B4E21A90(v203, v226, &qword_1EB8F40D0, &unk_1B4F78940);
    sub_1B4E21A90(v204, v227, &qword_1EB8F40C8, &qword_1B4F6A5F8);
    sub_1B4E21A90(v205, v228, &qword_1EB8F40C0, &unk_1B4F78930);
    sub_1B4E21A90(v206, v229, &qword_1EB8F40B8, &qword_1B4F6A5F0);
    sub_1B4E21A90(v207, v230, &qword_1EB8F40A0, &qword_1B4F6A5E0);
    sub_1B4E21A90(v208, v185, &qword_1EB8F40B0, &unk_1B4F78920);
    sub_1B4E21A90(v209, v186, &qword_1EB8F4090, &qword_1B4F6A5D8);
    sub_1B4E21A90(v210, v187, &qword_1EB8F51D8, &unk_1B4F78900);
    sub_1B4E21A90(v211, v188, &qword_1EB8F4088, &qword_1B4F6A5D0);
    sub_1B4E21A90(v212, v189, &qword_1EB8F4080, &unk_1B4F788F0);
    sub_1B4E21A90(v214, v192, &qword_1EB8F4078, &qword_1B4F6A5C8);
    sub_1B4E21A90(v215, v195, &qword_1EB8F4060, &unk_1B4F788D0);
    sub_1B4E21A90(v217, v213, &qword_1EB8F4070, &unk_1B4F788E0);
    sub_1B4E21A90(v218, v216, &qword_1EB8F4068, &qword_1B4F6A5C0);

    sub_1B4F684B4();
    v159 = v181;
    sub_1B4F65424();
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v160 = sub_1B4F67C54();
    __swift_project_value_buffer(v160, qword_1EDB6DF00);
    v161 = v183;
    v162 = v182;
    v163 = v184;
    (*(v183 + 16))(v182, v159, v184);
    v164 = sub_1B4F67C34();
    v165 = sub_1B4F685E4();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v231 = v167;
      *v166 = 136315138;
      sub_1B4F029CC(&qword_1EB8F6DC0, MEMORY[0x1E69CB3A0]);
      v168 = sub_1B4F68D04();
      v169 = v162;
      v171 = v170;
      v172 = *(v161 + 8);
      v172(v169, v163);
      v173 = sub_1B4DC4F88(v168, v171, &v231);

      *(v166 + 4) = v173;
      _os_log_impl(&dword_1B4DC2000, v164, v165, "Updating session: %s", v166, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v167);
      MEMORY[0x1B8C831D0](v167, -1, -1);
      MEMORY[0x1B8C831D0](v166, -1, -1);
    }

    else
    {

      v172 = *(v161 + 8);
      v172(v162, v163);
    }

    v175 = *(v219 + 16);
    v174 = *(v219 + 24);
    ObjectType = swift_getObjectType();
    v232 = 33;
    (*(v174 + 48))(&v232, v159, v163, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398], ObjectType, v174);
    v172(v159, v163);
  }
}

uint64_t sub_1B4F01C58()
{
  v1 = *v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F83F10;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 241;
  v8 = *(v6 + 24);
  v9 = sub_1B4F678C4();
  return v8(&v11, v9, MEMORY[0x1E69CD260], MEMORY[0x1E69CD268], ObjectType, v6);
}

uint64_t sub_1B4F01D90()
{
  v1 = *v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F83FC0;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 30;
  return (*(v5 + 40))(&v9, ObjectType, v5);
}

uint64_t sub_1B4F01E6C(char a1)
{
  v3 = *v1;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF00);
  v5._object = 0x80000001B4F83EE0;
  v6._countAndFlagsBits = 0xD000000000000035;
  v6._object = 0x80000001B4F83FE0;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 246;
  v11 = a1;
  return (*(v8 + 16))(&v12, &v11, MEMORY[0x1E69CC378], MEMORY[0x1E69CC368], MEMORY[0x1E69CC370], ObjectType, v8);
}

uint64_t sub_1B4F01F80(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF00);
  v5._object = 0x80000001B4F83EE0;
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001B4F84020;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 245;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65F84();
  return v10(&v13, a1, v11, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v8);
}

uint64_t sub_1B4F020C8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF00);
  v5._object = 0x80000001B4F83EE0;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  v6._object = 0x80000001B4F84080;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 239;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65F84();
  return v10(&v13, a1, v11, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v8);
}

uint64_t sub_1B4F02238()
{
  v1 = *v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F840B0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 251;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4F02324()
{
  v1 = *v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F840D0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 252;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

__n128 sub_1B4F02410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = *v26;
  SessionClient.applySessionUpdate(token:activityRings:audioFocusPreference:audioLanguagePreference:cadenceMetric:displayPreferences:distanceMetric:energyMetric:gymKitConnection:heartRateDeviceConnection:heartRateMetric:meditation:mindfulMinutesMetric:multiUserSession:multiUserSessionIdentities:paceMetric:playbackIntent:playback:remoteDisplayConnection:scoreMetric:termination:unitPreferences:userMassMetric:workoutDeviceConnection:watchConnectionRejection:workout:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  return result;
}

void *sub_1B4F024D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = 33;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F65504();

  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4F02CE8, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398]);

  v17 = a1;
  v16 = 29;
  v9 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v16, sub_1B4F02CE4, v9, ObjectType, &protocol witness table for XPCClient);

  v17 = a1;
  v16 = 31;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = sub_1B4F678C4();
  v12 = MEMORY[0x1E69CD260];
  v13 = MEMORY[0x1E69CD268];
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4F02CEC, v10, ObjectType, v11, &protocol witness table for XPCClient, MEMORY[0x1E69CD260], MEMORY[0x1E69CD268]);

  v17 = a1;
  v16 = 32;
  v14 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4F02CF0, v14, ObjectType, v11, &protocol witness table for XPCClient, v12, v13);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4F0276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC7F8C(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4F02824()
{
  v1 = *(sub_1B4F678C4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1B4EFC674(v2, v3);
}

uint64_t sub_1B4F02898()
{
  v1 = *(sub_1B4F678C4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B4EFC718(v2);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B4F029CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_11Tm()
{
  v1 = sub_1B4F678C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4F02C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4F02CF4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDED70;

  return (sub_1B4F02DA4)(a1);
}

uint64_t sub_1B4F02DA4(uint64_t a1)
{
  v3 = sub_1B4F67034();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  v6[1] = sub_1B4F02EB8;

  return WorkoutPlanClient.queryDailyNotificationSchedule(for:)(a1);
}

uint64_t sub_1B4F02EB8(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  v4[8] = a1;

  if (v1)
  {
    v6 = v4[5];
    v5 = v4[6];
    v7 = v4[4];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F03014, 0, 0);
  }
}

void sub_1B4F03014()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v0[3];
    v39 = (v5 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    v35 = *(v1 + 16);
    v37 = v0[8];
    while (v4 < *(v1 + 16))
    {
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      (*(v5 + 16))(v0[6], v0[8] + v7 + v8 * v4, v0[2]);
      v9 = sub_1B4F67024();
      v10 = v0[6];
      if (v9)
      {
        (*(v5 + 8))(v0[6], v0[2]);
      }

      else
      {
        v11 = *v39;
        (*v39)(v0[4], v0[6], v0[2]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B4E25978(0, *(v6 + 16) + 1, 1);
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1B4E25978(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[4];
        v15 = v0[2];
        *(v6 + 16) = v13 + 1;
        v11(v6 + v7 + v13 * v8, v14, v15);
        v2 = v35;
        v1 = v37;
      }

      if (v2 == ++v4)
      {
        v16 = v0[8];
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v17 = *(v6 + 16);
    if (v17)
    {
      v18 = v0[3];
      sub_1B4E257A4(0, v17, 0);
      v19 = v3;
      v20 = *(v18 + 16);
      v18 += 16;
      v21 = v6 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v36 = *(v18 + 56);
      v38 = v20;
      v22 = (v18 - 8);
      do
      {
        v23 = v0[5];
        v24 = v0[2];
        v38(v23, v21, v24);
        v25 = sub_1B4F67014();
        v27 = v26;
        (*v22)(v23, v24);
        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1B4E257A4((v28 > 1), v29 + 1, 1);
        }

        *(v19 + 16) = v29 + 1;
        v30 = v19 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v21 += v36;
        --v17;
      }

      while (v17);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v32 = v0[5];
    v31 = v0[6];
    v33 = v0[4];

    v34 = v0[1];

    v34(v19);
  }
}

uint64_t WorkoutPlanClientProtocol.queryRemainingWorkouts(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B4F67034();
  v3[2] = v7;
  v8 = *(v7 - 8);
  v3[3] = v8;
  v9 = *(v8 + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v10 = *(a3 + 88);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v3[7] = v12;
  *v12 = v3;
  v12[1] = sub_1B4F034DC;

  return v14(a1, a2, a3);
}

uint64_t sub_1B4F034DC(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  v4[8] = a1;

  if (v1)
  {
    v6 = v4[5];
    v5 = v4[6];
    v7 = v4[4];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F03638, 0, 0);
  }
}

void sub_1B4F03638()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v0[3];
    v39 = (v5 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    v35 = *(v1 + 16);
    v37 = v0[8];
    while (v4 < *(v1 + 16))
    {
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      (*(v5 + 16))(v0[6], v0[8] + v7 + v8 * v4, v0[2]);
      v9 = sub_1B4F67024();
      v10 = v0[6];
      if (v9)
      {
        (*(v5 + 8))(v0[6], v0[2]);
      }

      else
      {
        v11 = *v39;
        (*v39)(v0[5], v0[6], v0[2]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B4E25978(0, *(v6 + 16) + 1, 1);
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1B4E25978(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[5];
        v15 = v0[2];
        *(v6 + 16) = v13 + 1;
        v11(v6 + v7 + v13 * v8, v14, v15);
        v2 = v35;
        v1 = v37;
      }

      if (v2 == ++v4)
      {
        v16 = v0[8];
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v17 = *(v6 + 16);
    if (v17)
    {
      v18 = v0[3];
      sub_1B4E257A4(0, v17, 0);
      v19 = v3;
      v20 = *(v18 + 16);
      v18 += 16;
      v21 = v6 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v36 = *(v18 + 56);
      v38 = v20;
      v22 = (v18 - 8);
      do
      {
        v23 = v0[4];
        v24 = v0[2];
        v38(v23, v21, v24);
        v25 = sub_1B4F67014();
        v27 = v26;
        (*v22)(v23, v24);
        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1B4E257A4((v28 > 1), v29 + 1, 1);
        }

        *(v19 + 16) = v29 + 1;
        v30 = v19 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v21 += v36;
        --v17;
      }

      while (v17);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v32 = v0[5];
    v31 = v0[6];
    v33 = v0[4];

    v34 = v0[1];

    v34(v19);
  }
}

uint64_t sub_1B4F03964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DDECC4;

  return WorkoutPlanClientProtocol.queryRemainingWorkouts(for:)(a1, a2, a3);
}

uint64_t WorkoutPlanClientProtocol.requestWorkoutPlan(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v12, v10);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v8 + 32))(v15 + v13, v11, a3);
  v16 = (v15 + v14);
  *v16 = a1;
  v16[1] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = "SeymourClient/WorkoutPlanClientProtocol.swift";
  *(v17 + 24) = 45;
  *(v17 + 32) = 2;
  *(v17 + 40) = 100;
  *(v17 + 48) = &unk_1B4F7AAD0;
  *(v17 + 56) = v15;
  sub_1B4F64ED4();

  return sub_1B4F675F4();
}

uint64_t sub_1B4F03BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B0, &unk_1B4F7AC60);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4F03CA0, 0, 0);
}

uint64_t sub_1B4F03CA0()
{
  v1 = v0[10];
  v2 = v0[3];
  WorkoutPlanClientProtocol.requestWorkoutPlan(_:)(v0[4], v0[5], v0[6], v0[7]);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = "SeymourClient/WorkoutPlanClientProtocol.swift";
  *(v3 + 24) = 45;
  *(v3 + 32) = 2;
  *(v3 + 40) = 100;
  *(v3 + 48) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = sub_1B4F64ED4();
  *v5 = v0;
  v5[1] = sub_1B4F03DCC;
  v7 = v0[2];

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000013, 0x80000001B4F808E0, sub_1B4F073A4, v3, v6);
}

uint64_t sub_1B4F03DCC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  v4[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F03F50, 0, 0);
  }

  else
  {
    (*(v4[9] + 8))(v4[10], v4[8]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1B4F03F50()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t WorkoutPlanClientProtocol.insertCompletedWorkoutPlanSummary(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v24[0] = a3;
  v24[1] = a4;
  v8 = sub_1B4F66AF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  (*(v13 + 16))(v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = (v14 + *(v9 + 80) + v18) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v24[0];
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  (*(v13 + 32))(v20 + v18, v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  (*(v9 + 32))(v20 + v19, v12, v8);
  v22 = swift_allocObject();
  *(v22 + 16) = "SeymourClient/WorkoutPlanClientProtocol.swift";
  *(v22 + 24) = 45;
  *(v22 + 32) = 2;
  *(v22 + 40) = 104;
  *(v22 + 48) = &unk_1B4F7AAE0;
  *(v22 + 56) = v20;
  return sub_1B4F675F4();
}

uint64_t sub_1B4F04234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(a5 + 256) + **(a5 + 256));
  v9 = *(*(a5 + 256) + 4);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B4DE13F0;

  return v12(a3, a4, a5);
}

uint64_t sub_1B4F04364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4F03BCC(a1, v1 + v6, v8, v9, v4, v5);
}

uint64_t sub_1B4F044A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = *(sub_1B4F66AF4() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B4DE0D94;

  return sub_1B4F04234(a1, v1 + v8, v1 + v10, v5, v6);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.createWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(a13 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v13 + 16) = v20;
  *v20 = v13;
  v20[1] = sub_1B4DE0D94;
  LOBYTE(a10) = a10 & 1;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.replaceWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(a13 + 16);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v13 + 16) = v20;
  *v20 = v13;
  v20[1] = sub_1B4DE0D94;
  LOBYTE(a10) = a10 & 1;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.createUnsavedWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(a13 + 24);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v13 + 16) = v20;
  *v20 = v13;
  v20[1] = sub_1B4DE0D94;
  LOBYTE(a10) = a10 & 1;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.repeatWorkoutPlan(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.validateSchedule(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.makeWorkoutPlanSchedule(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.updateWorkoutPlan(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryActiveWorkoutPlanProgressSnapshot()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.requestWorkoutPlans(state:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4E9CF24;

  return (v13)(a1, a2 & 1, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryDailyNotificationSchedule(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4E9CF24;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryRemainingWorkouts(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4E9CF24;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryNextIncompleteWorkoutReference(after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryIncompleteMatchingWorkoutReferences(plan:workout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 112);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B4E9CF24;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryAllWorkoutPlanTemplateReferences()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 120);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryAllWorkoutPlanTemplatesCount()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 128);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanTemplateMetadata(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 136);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4E9CF24;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanTemplates(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4E9CF24;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryAllWorkoutPlans(forTemplateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 152);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4E9CF24;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.requestWorkoutPlanAlternatives(workoutIdentifier:workoutPlan:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 160);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1B4DE0D94;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.updateWorkoutPlanAlternatives(planIdentifier:reference:workoutIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 168);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1B4DE0D94;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.deleteAllActiveWorkoutPlans()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 176);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.deleteWorkoutPlan(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 184);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.insertWorkoutPlan(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 192);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.insertWorkoutPlanTemplate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 200);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.deleteWorkoutPlanTemplate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 208);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.requestWorkoutPlan(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 216);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanSummary(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 224);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanSummaries(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 232);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4E9CF24;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryPendingWorkoutPlanSummary()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 240);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanSummariesViewed()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 248);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.insertCompletedWorkoutPlanSummary(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 256) + **(a3 + 256));
  v7 = *(*(a3 + 256) + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B4DE0D94;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.insertArchivedPlanSession(session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 264) + **(a3 + 264));
  v7 = *(*(a3 + 264) + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B4DE0D94;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.evaluateActiveWorkoutPlanCompletion()(uint64_t a1, uint64_t a2)
{
  v8 = (*(a2 + 272) + **(a2 + 272));
  v5 = *(*(a2 + 272) + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B4DE0D94;

  return v8(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryActiveWorkoutPlanItemMetrics()(uint64_t a1, uint64_t a2)
{
  v8 = (*(a2 + 280) + **(a2 + 280));
  v5 = *(*(a2 + 280) + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B4E2BDB0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.queryWorkoutPlanItemMetrics(planIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 288) + **(a3 + 288));
  v7 = *(*(a3 + 288) + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B4E9CF24;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.updateWorkoutPlanTemplateName(identifier:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(a5 + 296) + **(a5 + 296));
  v11 = *(*(a5 + 296) + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B4DE0D94;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.endWorkoutPlan(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 304) + **(a3 + 304));
  v7 = *(*(a3 + 304) + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B4DE0D94;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutPlanClientProtocol.filterCatalog(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 312) + **(a4 + 312));
  v9 = *(*(a4 + 312) + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B4DE0D94;

  return v12(a1, a2, a3, a4);
}

void CoreAnalyticsReporter.report(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  AnalyticsEvent.identifier.getter(v2, v3);
  v4 = sub_1B4F67F64();

  sub_1B4DC40A0(a1, v8);
  v5 = swift_allocObject();
  sub_1B4DC933C(v8, v5 + 16);
  aBlock[4] = sub_1B4F074D0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4F074D4;
  aBlock[3] = &block_descriptor_12;
  v6 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

id sub_1B4F074D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1B4DE1BDC();
    v5 = sub_1B4F67EE4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B4F07560(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  AnalyticsEvent.identifier.getter(v2, v3);
  v4 = sub_1B4F67F64();

  sub_1B4DC40A0(a1, v8);
  v5 = swift_allocObject();
  sub_1B4DC933C(v8, v5 + 16);
  aBlock[4] = sub_1B4F076E0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4F074D4;
  aBlock[3] = &block_descriptor_11_0;
  v6 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_1B4F07688()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t retryWithBackoff<A>(_:maximumAttempts:backoffIntervalProvider:retryCondition:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B4DE13F0;

  return sub_1B4F077D0(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B4F077D0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v13 = (a2 + *a2);
  v10 = a2[1];
  v11 = swift_task_alloc();
  v8[15] = v11;
  *v11 = v8;
  v11[1] = sub_1B4F078D8;

  return v13(a1);
}

uint64_t sub_1B4F078D8()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F07A0C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B4F07A0C()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[13];
    v3 = v0[10];
    if ((v1(v0[16]) & 1) != 0 && v3 > 1)
    {
LABEL_4:
      sub_1B4DC40A0(v0[11], (v0 + 2));
      v4 = v0[5];
      v5 = v0[6];
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v4);
      v7 = (*(v5 + 8))(v4, v5) * 1000000000.0;
      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v7 > -1.0)
      {
        if (v7 < 1.84467441e19)
        {
          v8 = v7;
          v9 = *(MEMORY[0x1E69E86C8] + 4);
          v10 = swift_task_alloc();
          v0[17] = v10;
          *v10 = v0;
          v10[1] = sub_1B4F07BA8;
          v6 = v8;

          return MEMORY[0x1EEE6DA60](v6);
        }

LABEL_16:
        __break(1u);
        return MEMORY[0x1EEE6DA60](v6);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v0[10] >= 2)
  {
    goto LABEL_4;
  }

  v11 = v0[16];
  swift_willThrow();
  v12 = v0[16];
  v13 = v0[1];

  return v13();
}

uint64_t sub_1B4F07BA8()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4F07E48, 0, 0);
  }

  else
  {
    v4 = v3[10] - 1;
    v5 = swift_task_alloc();
    v3[19] = v5;
    *v5 = v3;
    v5[1] = sub_1B4F07D34;
    v6 = v3[13];
    v7 = v3[14];
    v8 = v3[12];
    v9 = v3[8];
    v10 = v3[9];
    v11 = v3[7];

    return sub_1B4F077D0(v11, v9, v10, v4, v3 + 2, v8, v6, v7);
  }
}

uint64_t sub_1B4F07D34()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1B4F07F20;
  }

  else
  {
    v3 = sub_1B4F07EB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F07E48()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4F07EB4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4F07F20()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Promise.retryWithBackoff(maximumAttempts:backoffIntervalProvider:queue:retryCondition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a4;
  v27 = a5;
  v25 = a1;
  v28 = a7;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v14, v13);
  sub_1B4DC40A0(a2, v29);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = *(a6 + 16);
  *(v18 + 24) = a3;
  (*(v11 + 32))(v18 + v15, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  *(v18 + v16) = v25;
  sub_1B4DC933C(v29, v18 + v17);
  v19 = (v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  v22 = a3;
  sub_1B4DEA370(v21);
  return sub_1B4F675F4();
}

uint64_t sub_1B4F08138(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a7;
  v49 = a8;
  v43 = a5;
  v45 = a3;
  v46 = a1;
  v47 = a2;
  v42 = a9;
  v52 = sub_1B4F67D54();
  v54 = *(v52 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52, v12);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1B4F67D74();
  v51 = *(v53 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53, v15);
  v44 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B4F67674();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v42 - v22;
  (*(v18 + 16))(&v42 - v22, a4, v17, v21);
  sub_1B4DC40A0(a6, v57);
  v24 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v25 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v42;
  (*(v18 + 32))(v30 + v24, v23, v17);
  *(v30 + v25) = v43;
  sub_1B4DC933C(v57, v30 + v26);
  v31 = v45;
  *(v30 + v27) = v45;
  v32 = (v30 + v28);
  v34 = v48;
  v33 = v49;
  *v32 = v48;
  v32[1] = v33;
  v35 = (v30 + v29);
  v36 = v47;
  *v35 = v46;
  v35[1] = v36;
  aBlock[4] = sub_1B4F08748;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = &block_descriptor_13;
  v37 = _Block_copy(aBlock);
  v31;
  sub_1B4DEA370(v34);

  v38 = v44;
  sub_1B4F67D64();
  v55 = MEMORY[0x1E69E7CC0];
  sub_1B4DCD900();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
  sub_1B4DCBA40();
  v39 = v50;
  v40 = v52;
  sub_1B4F688A4();
  MEMORY[0x1B8C81F10](0, v38, v39, v37);
  _Block_release(v37);
  (*(v54 + 8))(v39, v40);
  (*(v51 + 8))(v38, v53);
}

uint64_t sub_1B4F08548(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_1B4F67674() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B4F08138(a1, a2, *(v2 + 24), v2 + v7, *(v2 + v8), v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8), v5);
}

uint64_t sub_1B4F0861C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[1] = a8;
  v13 = sub_1B4F67674();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v20 - v17;
  sub_1B4F0881C(a2, a3, a4, a5, a6, v13, v20 - v17);
  sub_1B4F67644();
  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1B4F08748()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1B4F67674() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B4F0861C(v0 + v3, *(v0 + v4), v0 + v5, *(v0 + v6), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1B4F0881C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a4;
  v27 = a5;
  v28 = a3;
  v29 = a7;
  v25 = a1;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v13, v12);
  sub_1B4DC40A0(a2, v30);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = *(a6 + 16);
  (*(v10 + 32))(v18 + v14, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  v19 = v26;
  *(v18 + v15) = v25;
  v20 = (v18 + v16);
  v21 = v27;
  *v20 = v19;
  v20[1] = v21;
  sub_1B4DC933C(v30, v18 + v17);
  v22 = v28;
  *(v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8)) = v28;
  sub_1B4DEA370(v19);
  v23 = v22;
  return sub_1B4F675F4();
}

uint64_t sub_1B4F089D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v28 = a1;
  v29 = a8;
  v27 = a4;
  v14 = sub_1B4F67674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v27 - v18;
  sub_1B4DC40A0(a7, v30);
  (*(v15 + 16))(v19, a3, v14);
  v20 = (*(v15 + 80) + 112) & ~*(v15 + 80);
  v21 = swift_allocObject();
  v23 = v27;
  v22 = v28;
  *(v21 + 2) = a9;
  *(v21 + 3) = v23;
  *(v21 + 4) = a5;
  *(v21 + 5) = a6;
  *(v21 + 6) = v22;
  *(v21 + 7) = a2;
  sub_1B4DC933C(v30, (v21 + 64));
  v24 = v29;
  *(v21 + 13) = v29;
  (*(v15 + 32))(&v21[v20], v19, v14);
  sub_1B4DEA370(a5);

  v25 = v24;
  sub_1B4F67644();
}

uint64_t sub_1B4F08B88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_1B4F67674() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B4F089D4(a1, a2, v2 + v7, *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), v5);
}

uint64_t sub_1B4F08C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t (*a4)(void *), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v66 = a8;
  v64 = a7;
  v78 = a5;
  v79 = a6;
  v72 = a4;
  v76 = a3;
  v65 = sub_1B4F67D54();
  v71 = *(v65 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v65, v13);
  v69 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1B4F67D74();
  v68 = *(v70 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70, v16);
  v67 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1B4F67674();
  v18 = *(v73 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v73, v20);
  v22 = &v60 - v21;
  v75 = sub_1B4F67D94();
  v77 = *(v75 - 8);
  v23 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75, v24);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v74 = &v60 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v30 = sub_1B4F68F14();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = (&v60 - v35);
  (*(v31 + 16))(&v60 - v35, a1, v30, v34);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v36;
    if (a2 >= 2 && (!v76 || (v76(v37) & 1) != 0))
    {
      v61 = a9;
      v38 = swift_allocObject();
      sub_1B4DC40A0(v64, v38 + 16);
      sub_1B4F67D84();
      v62 = a2;
      v64 = v37;
      v60 = v38;
      v40 = *(v38 + 40);
      v39 = *(v38 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v38 + 16, v40);
      (*(v39 + 8))(v40, v39);
      sub_1B4F67DB4();
      v41 = *(v77 + 8);
      v77 += 8;
      v63 = v41;
      v41(v26, v75);
      (*(v18 + 16))(v22, v61, v73);
      v42 = (*(v18 + 80) + 24) & ~*(v18 + 80);
      v43 = (v19 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
      v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
      v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      *(v47 + 16) = a10;
      (*(v18 + 32))(v47 + v42, v22, v73);
      *(v47 + v43) = v62;
      *(v47 + v44) = v60;
      v48 = v66;
      *(v47 + v45) = v66;
      v49 = (v47 + v46);
      v50 = v76;
      v51 = v72;
      *v49 = v76;
      v49[1] = v51;
      v52 = (v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8));
      v53 = v79;
      *v52 = v78;
      v52[1] = v53;
      aBlock[4] = sub_1B4F09518;
      aBlock[5] = v47;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B4DCA7B0;
      aBlock[3] = &block_descriptor_20;
      v54 = _Block_copy(aBlock);

      v48;
      sub_1B4DEA370(v50);

      v55 = v67;
      sub_1B4F67D64();
      v80 = MEMORY[0x1E69E7CC0];
      sub_1B4DCD900();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
      sub_1B4DCBA40();
      v56 = v69;
      v57 = v65;
      sub_1B4F688A4();
      v58 = v74;
      MEMORY[0x1B8C81EE0](v74, v55, v56, v54);
      _Block_release(v54);

      (*(v71 + 8))(v56, v57);
      (*(v68 + 8))(v55, v70);
      v63(v58, v75);
    }
  }

  else
  {
    (*(v31 + 8))(v36, v30);
  }

  return v78(a1);
}

uint64_t sub_1B4F09324(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_1B4F67674() - 8);
  return sub_1B4F08C64(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), (v1 + 64), *(v1 + 104), v1 + ((*(v4 + 80) + 112) & ~*(v4 + 80)), v3);
}

void sub_1B4F093B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[1] = a8;
  v13 = sub_1B4F67674();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v21 - v17;
  v19 = __OFSUB__(a2, 1);
  v20 = a2 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    sub_1B4DC40A0(a3 + 16, v22);
    sub_1B4F0881C(v20, v22, a4, a5, a6, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    sub_1B4F67644();
    (*(v14 + 8))(v18, v13);
  }
}

void sub_1B4F09518()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1B4F67674() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B4F093B8(v0 + v3, *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t RemoteParticipantDiscovered.init(participant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t RemoteParticipantDiscovered.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65F84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for RemoteParticipantDiscovered()
{
  result = qword_1EDB6E5A0;
  if (!qword_1EDB6E5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Network.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1B8C82740](*v0);
  sub_1B4F68EA4();
  sub_1B4F68EA4();
  sub_1B4F67FE4();
}

uint64_t Network.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  sub_1B4F68EA4();
  sub_1B4F68EA4();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4F09A00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  sub_1B4F68EA4();
  sub_1B4F68EA4();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t _s13SeymourClient7NetworkV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    v3 = a1[3];
    v4 = 0x6C62616863616572;
    v5 = 0xE900000000000065;
    if (v3 != 1)
    {
      v4 = 0x6168636165726E75;
      v5 = 0xEB00000000656C62;
    }

    if (a1[3])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x65526E6F69746361;
    }

    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0xEE00646572697571;
    }

    v8 = 0x6C62616863616572;
    v9 = 0xE900000000000065;
    if (a2[3] != 1)
    {
      v8 = 0x6168636165726E75;
      v9 = 0xEB00000000656C62;
    }

    if (a2[3])
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x65526E6F69746361;
    }

    if (a2[3])
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xEE00646572697571;
    }

    if (v6 == v10 && v7 == v11)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1B4F68D54();
    }
  }

  return v2 & 1;
}

unint64_t sub_1B4F09C58()
{
  result = qword_1EB8F6DC8;
  if (!qword_1EB8F6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6DC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Network(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Network(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t AnalyticsEventDomain.description.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001BLL;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

unint64_t sub_1B4F09D8C()
{
  if (*v0)
  {
    result = 0xD00000000000001BLL;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t DispatchTimerProvider.makeRepeatingTimer(fireAfter:fireInterval:leewayInterval:queue:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v48 = a3;
  v49 = a4;
  v45 = a2;
  v46 = a1;
  v7 = sub_1B4F67D54();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v50 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4F67D74();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v47 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1B4F67D94();
  v15 = *(v44 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v44, v17);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v43 - v22;
  v24 = sub_1B4F68684();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[1] = sub_1B4DD44F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B4DD4540(&qword_1EDB71448, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6530, &unk_1B4F7ADD0);
  sub_1B4DC9C58(&qword_1EDB71478, &qword_1EB8F6530, &unk_1B4F7ADD0);
  sub_1B4F688A4();
  v30 = sub_1B4F68694();
  (*(v25 + 8))(v29, v24);
  ObjectType = swift_getObjectType();
  sub_1B4F67D84();
  sub_1B4F67DB4();
  v32 = *(v15 + 8);
  v33 = v19;
  v34 = v44;
  v32(v33, v44);
  MEMORY[0x1B8C81FF0](v23, v46, ObjectType, a6);
  v32(v23, v34);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v38 = v48;
  v37 = v49;
  v36[2] = v35;
  v36[3] = v38;
  v36[4] = v37;
  aBlock[4] = sub_1B4F0A350;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = &block_descriptor_10;
  v39 = _Block_copy(aBlock);

  sub_1B4ED9704(v38);
  v40 = v47;
  sub_1B4F67D64();
  v41 = v50;
  sub_1B4DD458C();
  sub_1B4F686B4();
  _Block_release(v39);
  (*(v53 + 8))(v41, v54);
  (*(v51 + 8))(v40, v52);

  sub_1B4F686D4();
  return v30;
}

uint64_t sub_1B4F0A2CC(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result || (swift_getObjectType(), v4 = sub_1B4F686A4(), result = swift_unknownObjectRelease(), (v4 & 1) == 0))
  {
    if (a2)
    {
      return a2();
    }
  }

  return result;
}

id DispatchTimerProvider.makeScheduledTimer(fireInterval:leewayInterval:queue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v22 = a2;
  v7 = sub_1B4F67D44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v13, a1, v7, v11);
  v14 = type metadata accessor for DispatchTimer();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  *v18 = 0;
  v18[1] = 0;
  *(v17 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer) = 0;
  *(v17 + 16) = a4;
  (*(v8 + 32))(v17 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval, v13, v7);
  v19 = v22;
  *(v17 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_queue) = v22;
  a3[3] = v14;
  a3[4] = &protocol witness table for DispatchTimer;
  *a3 = v17;

  return v19;
}

uint64_t sub_1B4F0A51C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a6;
  v62 = a3;
  v63 = a5;
  v60 = a4;
  v61 = a2;
  v58 = a1;
  v6 = sub_1B4F67D54();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v64 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4F67D74();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1B4F67D44();
  v56 = *(v57 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57, v15);
  v53 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v55 = &v52 - v19;
  v54 = sub_1B4F67D94();
  v70 = *(v54 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v54, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v52 - v26;
  v28 = sub_1B4F68684();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4DD44F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B4DD4540(&qword_1EDB71448, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6530, &unk_1B4F7ADD0);
  sub_1B4DC9C58(&qword_1EDB71478, &qword_1EB8F6530, &unk_1B4F7ADD0);
  sub_1B4F688A4();
  v34 = sub_1B4F68694();
  (*(v29 + 8))(v33, v28);
  ObjectType = swift_getObjectType();
  sub_1B4F67D84();
  sub_1B4F67DB4();
  v36 = *(v70 + 8);
  v70 += 8;
  v58 = v36;
  v37 = v54;
  v36(v23, v54);
  v38 = v56;
  v39 = *(v56 + 104);
  v40 = v55;
  v41 = v57;
  v39(v55, *MEMORY[0x1E69E7F40], v57);
  v42 = v53;
  *v53 = 0;
  v39(v42, *MEMORY[0x1E69E7F28], v41);
  MEMORY[0x1B8C81FE0](v27, v40, v42, ObjectType);
  v43 = *(v38 + 8);
  v43(v42, v41);
  v43(v40, v41);
  v58(v27, v37);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  v47 = v61;
  v46 = v62;
  v45[2] = v44;
  v45[3] = v47;
  v45[4] = v46;
  aBlock[4] = v63;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = v65;
  v48 = _Block_copy(aBlock);

  sub_1B4ED9704(v47);
  v49 = v59;
  sub_1B4F67D64();
  v50 = v64;
  sub_1B4DD458C();
  sub_1B4F686B4();
  _Block_release(v48);
  (*(v68 + 8))(v50, v69);
  (*(v66 + 8))(v49, v67);

  sub_1B4F686D4();
  return v34;
}

uint64_t sub_1B4F0AB4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v4 = sub_1B4F686A4();
    result = swift_unknownObjectRelease();
    if ((v4 & 1) == 0)
    {
      if (a2)
      {
        return a2(result);
      }
    }
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4F0AD4C(uint64_t a1)
{
  swift_beginAccess();
  sub_1B4DD3B0C(a1 + 32, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_1B4DDFFB8(v8);
    }

    sub_1B4F0B204();
    v2 = swift_allocError();
    *v3 = 1;
    *(swift_allocObject() + 16) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DD0, &qword_1B4F7AEE0);
    return sub_1B4F67604();
  }

  else
  {
    sub_1B4DC933C(v8, v7);
    sub_1B4DC40A0(v7, v6);
    v5 = swift_allocObject();
    sub_1B4DC933C(v6, v5 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DD0, &qword_1B4F7AEE0);
    sub_1B4F67604();
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B4F0AEC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4F0AF04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B4F0AF50(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1B4F0AF90(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B4DD66D8(a1, result);
  }

  return result;
}

uint64_t sub_1B4F0AFF4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B4F0B04C();
  }

  return result;
}

void sub_1B4F0B04C()
{
  v1 = sub_1B4F67DA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 96);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1);
  v8 = v7;
  LOBYTE(v7) = sub_1B4F67DC4();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    swift_beginAccess();
    sub_1B4DD3B0C(v0 + 32, &v14);
    if (v15)
    {
      if (v15 == 1)
      {
        v9 = v14;
        swift_unknownObjectRelease();
        v10 = *(v0 + 88);
        v12[3] = sub_1B4F67D34();
        v12[4] = &off_1F2CE2310;
        __swift_allocate_boxed_opaque_existential_1(v12);
        sub_1B4F67C84();
        v13 = 0;
        swift_beginAccess();
        sub_1B4DD4AA8(v12, v0 + 32);
        swift_endAccess();
        dispatch_group_leave(v9);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B4F0B204()
{
  result = qword_1EB8F6DD8;
  if (!qword_1EB8F6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6DD8);
  }

  return result;
}

uint64_t Trainer.reference()()
{
  v0 = sub_1B4F67934();
  v1 = sub_1B4F678D4();
  v3 = v2;
  v4 = sub_1B4F678F4();
  v6 = v5;
  v8 = sub_1B4F67924();

  return MEMORY[0x1EEE35890](v0, v1, v3, v4, v6, v8, v7);
}

uint64_t sub_1B4F0B40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66694();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4F0B47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66694();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RemoteBrowsingIdentityUpdated()
{
  result = qword_1EDB6E568;
  if (!qword_1EDB6E568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F0B564()
{
  result = sub_1B4F66694();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WorkoutPlanFilter.onOrAfter(_:)(uint64_t a1)
{
  v2 = sub_1B4F65FC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE0, &qword_1B4F7AF40);
  v8 = *(sub_1B4F66E34() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B4F6CF50;
  v12 = sub_1B4F64964();
  (*(*(v12 - 8) + 16))(v11 + v10, a1, v12);
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C438(v11);
  swift_setDeallocating();
  sub_1B4F0BEC8(v11 + v10);
  swift_deallocClassInstance();
  sub_1B4F65F94();
  v13 = sub_1B4F65FA4();
  v14 = sub_1B4F65FA4();
  sub_1B4E455E0(v14, v13);
  v15 = sub_1B4F65FB4();
  v16 = sub_1B4F65FB4();
  sub_1B4E455E0(v16, v15);
  sub_1B4F65F94();
  return (*(v3 + 8))(v7, v2);
}

uint64_t static WorkoutPlanFilter.+ infix(_:_:)()
{
  v0 = sub_1B4F65FA4();
  v1 = sub_1B4F65FA4();
  sub_1B4E455E0(v1, v0);
  v2 = sub_1B4F65FB4();
  v3 = sub_1B4F65FB4();
  sub_1B4E455E0(v3, v2);

  return sub_1B4F65F94();
}

uint64_t WorkoutPlanFilter.state(_:)(char a1)
{
  v2 = sub_1B4F65FC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE0, &qword_1B4F7AF40);
  v8 = *(sub_1B4F66E34() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B4F6CF50;
  *(v11 + v10) = a1;
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C438(v11);
  swift_setDeallocating();
  sub_1B4F0BEC8(v11 + v10);
  swift_deallocClassInstance();
  sub_1B4F65F94();
  v12 = sub_1B4F65FA4();
  v13 = sub_1B4F65FA4();
  sub_1B4E455E0(v13, v12);
  v14 = sub_1B4F65FB4();
  v15 = sub_1B4F65FB4();
  sub_1B4E455E0(v15, v14);
  sub_1B4F65F94();
  return (*(v3 + 8))(v7, v2);
}

uint64_t WorkoutPlanFilter.between(_:)(uint64_t a1)
{
  v2 = sub_1B4F65FC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE8, &qword_1B4F7AF48);
  WorkoutPlanFilter.between(startDate:endDate:)(a1, a1 + *(v8 + 36), v7);
  v9 = sub_1B4F65FA4();
  v10 = sub_1B4F65FA4();
  sub_1B4E455E0(v10, v9);
  v11 = sub_1B4F65FB4();
  v12 = sub_1B4F65FB4();
  sub_1B4E455E0(v12, v11);
  sub_1B4F65F94();
  return (*(v3 + 8))(v7, v2);
}

uint64_t WorkoutPlanFilter.between(startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v20 = a2;
  v23 = a3;
  v24 = sub_1B4F65FC4();
  v22 = *(v24 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE0, &qword_1B4F7AF40);
  v7 = *(sub_1B4F66E34() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v19 = xmmword_1B4F6CF50;
  *(v10 + 16) = xmmword_1B4F6CF50;
  v11 = sub_1B4F64964();
  v12 = *(*(v11 - 8) + 16);
  v12(v10 + v9, v20, v11);
  swift_storeEnumTagMultiPayload();
  v20 = sub_1B4E2C438(v10);
  swift_setDeallocating();
  sub_1B4F0BEC8(v10 + v9);
  swift_deallocClassInstance();
  v13 = swift_allocObject();
  *(v13 + 16) = v19;
  v12(v13 + v9, v21, v11);
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C438(v13);
  swift_setDeallocating();
  sub_1B4F0BEC8(v13 + v9);
  swift_deallocClassInstance();
  sub_1B4F65F94();
  v14 = sub_1B4F65FA4();
  v15 = sub_1B4F65FA4();
  sub_1B4E455E0(v15, v14);
  v16 = sub_1B4F65FB4();
  v17 = sub_1B4F65FB4();
  sub_1B4E455E0(v17, v16);
  sub_1B4F65F94();
  return (*(v22 + 8))(v6, v24);
}

uint64_t sub_1B4F0BEC8(uint64_t a1)
{
  v2 = sub_1B4F66E34();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CacheResult.map<A>(transform:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20);
  v21 = 1;
  if ((*(v9 + 48))(v18, 1, v8) != 1)
  {
    (*(v9 + 32))(v13, v18, v8);
    a1(v13);
    (*(v9 + 8))(v13, v8);
    v21 = 0;
  }

  return (*(*(a4 - 8) + 56))(a5, v21, 1, a4);
}

uint64_t sub_1B4F0C124(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B4F0C180(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1B4F0C300(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t Error.isContainerSanitized(object:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4DC4F2C(a1, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A50, &unk_1B4F7C150);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = 0;
    v8 = v44;
    v10 = v44 + 64;
    v9 = *(v44 + 64);
    v11 = 1 << *(v44 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v14 = (v11 + 63) >> 6;
    if ((v12 & v9) != 0)
    {
      while (1)
      {
        v15 = v7;
LABEL_13:
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v19 = v18 | (v15 << 6);
        sub_1B4DF47F4(*(v8 + 48) + 40 * v19, &v41);
        sub_1B4DC4F2C(*(v8 + 56) + 32 * v19, &v53);
        v44 = v41;
        v45 = v42;
        *&v46 = v43;
        sub_1B4E2C940(&v53, (&v46 + 8));
        v17 = v15;
LABEL_14:
        v50 = v45;
        v51[0] = v46;
        v51[1] = v47;
        v52 = v48;
        v49 = v44;
        if (!*(&v45 + 1))
        {

          return 1;
        }

        sub_1B4E2C940((v51 + 8), &v44);
        *(&v42 + 1) = MEMORY[0x1E69E69B8];
        v20 = swift_allocObject();
        *&v41 = v20;
        v21 = v50;
        *(v20 + 16) = v49;
        *(v20 + 32) = v21;
        *(v20 + 48) = *&v51[0];
        v22 = Error.isValidElement(_:)(&v41, a2, a3);
        __swift_destroy_boxed_opaque_existential_1Tm(&v41);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v23 = Error.isValidElement(_:)(&v44, a2, a3);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v44);
        if ((v23 & 1) == 0)
        {
          goto LABEL_28;
        }

        v7 = v17;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
LABEL_28:

      return 0;
    }

    else
    {
LABEL_6:
      if (v14 <= v7 + 1)
      {
        v16 = v7 + 1;
      }

      else
      {
        v16 = v14;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v15 >= v14)
        {
          v13 = 0;
          v48 = 0;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v44 = 0u;
          goto LABEL_14;
        }

        v13 = *(v10 + 8 * v15);
        ++v7;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  else
  {
    sub_1B4DC4F2C(a1, &v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
    if (swift_dynamicCast())
    {
      sub_1B4DC933C(&v44, &v49);
      v24 = *(&v50 + 1);
      v25 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
      v26 = *(*(v24 - 8) + 64);
      v27 = MEMORY[0x1EEE9AC00](v25, v25);
      (*(v29 + 16))(&v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
      *(&v45 + 1) = swift_getAssociatedTypeWitness();
      *&v46 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v44);
      sub_1B4F680C4();
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v31 = sub_1B4F687D4();
        v32 = *(v31 - 8);
        v33 = *(v32 + 64);
        MEMORY[0x1EEE9AC00](v31, v34);
        v36 = &v40 - v35;
        sub_1B4F68834();
        v37 = *(AssociatedTypeWitness - 8);
        if ((*(v37 + 48))(v36, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        v54 = AssociatedTypeWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
        (*(v37 + 32))(boxed_opaque_existential_1, v36, AssociatedTypeWitness);
        sub_1B4E2C940(&v53, &v41);
        v39 = Error.isValidElement(_:)(&v41, a2, a3);
        __swift_destroy_boxed_opaque_existential_1Tm(&v41);
        if ((v39 & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v44);
          __swift_destroy_boxed_opaque_existential_1Tm(&v49);
          return 0;
        }
      }

      (*(v32 + 8))(v36, v31);
      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
      __swift_destroy_boxed_opaque_existential_1Tm(&v49);
    }

    else
    {
      *&v46 = 0;
      v45 = 0u;
      v44 = 0u;
      sub_1B4DD2BC4(&v44, &unk_1EB8F6E20, &unk_1B4F7E040);
    }

    return 1;
  }

  return result;
}

uint64_t Error.isValidElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4DC4F2C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    if ((Error.isContainerSanitized(object:)(a1, a2, a3) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B4DC4F2C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80);
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  swift_unknownObjectRelease();
  sub_1B4DC4F2C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020);
  if (swift_dynamicCast())
  {
    return 0;
  }

  sub_1B4DC4F2C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
  return swift_dynamicCast() ^ 1;
}

uint64_t Error.isDenylisted(object:)(uint64_t a1)
{
  sub_1B4DC4F2C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020);
  if (swift_dynamicCast())
  {
    return 1;
  }

  sub_1B4DC4F2C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
  return swift_dynamicCast();
}

unint64_t sub_1B4F0CD3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1B4F0CD84(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B4DC933C(a4, a5[7] + 40 * a1);
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

_OWORD *sub_1B4F0CDF4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1B4E2C940(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1B4F0CE70(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
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

_OWORD *sub_1B4F0CEB8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B4E2C940(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1B4F0CF24(unint64_t result, __int16 a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 2 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1B4F0CF6C(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t _ss5ErrorP13SeymourClientE17isObjectSanitized6objectSbyp_tF_0(uint64_t a1)
{
  sub_1B4DC4F2C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80);
  result = swift_dynamicCast();
  if (result)
  {
    swift_unknownObjectRelease();
    sub_1B4DC4F2C(a1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020);
    if (swift_dynamicCast())
    {
      return 0;
    }

    else
    {
      sub_1B4DC4F2C(a1, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
      return swift_dynamicCast() ^ 1;
    }
  }

  return result;
}

uint64_t MindfulMinutesMetricUpdated.init(mindfulMinutesMetric:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66454();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MindfulMinutesMetricUpdated.mindfulMinutesMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66454();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MindfulMinutesMetricUpdated()
{
  result = qword_1EDB70708;
  if (!qword_1EDB70708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F0D1FC()
{
  result = sub_1B4F66454();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Countdown.applyingTimestampOffset(_:)()
{
  sub_1B4F67AD4();

  return sub_1B4F67AE4();
}

uint64_t sub_1B4F0D2EC()
{
  sub_1B4F67AD4();

  return sub_1B4F67AE4();
}

uint64_t DistanceMetric.applyingTimestampOffset(_:)()
{
  sub_1B4F65814();

  return sub_1B4F65844();
}

uint64_t sub_1B4F0D3A8()
{
  sub_1B4F65814();

  return sub_1B4F65844();
}

SeymourClient::NetworkInterfaceAvailability_optional __swiftcall NetworkInterfaceAvailability.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4F68C34();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4F0D468(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x616C696176616E75;
  }

  else
  {
    v4 = 0x6C62616C69617661;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xEB00000000656C62;
  }

  if (*a2)
  {
    v6 = 0x616C696176616E75;
  }

  else
  {
    v6 = 0x6C62616C69617661;
  }

  if (*a2)
  {
    v7 = 0xEB00000000656C62;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4F68D54();
  }

  return v9 & 1;
}

uint64_t sub_1B4F0D51C()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4F0D5AC()
{
  *v0;
  sub_1B4F67FE4();
}

uint64_t sub_1B4F0D628()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4F0D6B4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4F68C34();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B4F0D714(uint64_t *a1@<X8>)
{
  v2 = 0x6C62616C69617661;
  if (*v1)
  {
    v2 = 0x616C696176616E75;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEB00000000656C62;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t NetworkInterfaceAvailability.description.getter()
{
  if (*v0)
  {
    result = 0x616C696176616E75;
  }

  else
  {
    result = 0x6C62616C69617661;
  }

  *v0;
  return result;
}

unint64_t sub_1B4F0D7AC()
{
  result = qword_1EB8F6E30;
  if (!qword_1EB8F6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6E30);
  }

  return result;
}

uint64_t sub_1B4F0D800()
{
  if (*v0)
  {
    result = 0x616C696176616E75;
  }

  else
  {
    result = 0x6C62616C69617661;
  }

  *v0;
  return result;
}

uint64_t DebounceDelay.__allocating_init(delay:max:callback:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 152) = 0;
  *(v10 + 160) = 0;
  *(v10 + 112) = a5;
  *(v10 + 120) = a1;
  *(v10 + 128) = a2 & 1;
  *(v10 + 136) = a3;
  *(v10 + 144) = a4;
  return v10;
}

uint64_t DebounceDelay.init(delay:max:callback:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_defaultActor_initialize();
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  *(v5 + 112) = a5;
  *(v5 + 120) = a1;
  *(v5 + 128) = a2 & 1;
  *(v5 + 136) = a3;
  *(v5 + 144) = a4;
  return v5;
}

uint64_t sub_1B4F0D934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v9 - v4;
  v6 = sub_1B4F68324();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  sub_1B4E4E620(0, 0, v5, &unk_1B4F7B130, v7);
}

uint64_t sub_1B4F0DA5C()
{
  v1 = *(v0 + 16);
  sub_1B4F0DB70();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4F0DABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE13F0;

  return sub_1B4F0DA3C(a1, v4, v5, v6);
}

uint64_t sub_1B4F0DB70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v20 - v4;
  if (!*(v0 + 152) && (*(v0 + 128) & 1) == 0)
  {
    v6 = *(v0 + 120);
    v7 = sub_1B4F68324();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = sub_1B4F0E470();
    v9 = swift_allocObject();
    v9[2] = v0;
    v9[3] = v8;
    v9[4] = v6;
    v9[5] = v0;
    swift_retain_n();
    v10 = sub_1B4E4E620(0, 0, v5, &unk_1B4F7B1D8, v9);
    v11 = *(v0 + 152);
    *(v0 + 152) = v10;
  }

  if (*(v0 + 160))
  {
    v12 = *(v0 + 160);

    sub_1B4F683B4();
  }

  v13 = *(v0 + 112);
  v14 = sub_1B4F68324();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = sub_1B4F0E470();
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v15;
  v16[4] = v13;
  v16[5] = v0;
  swift_retain_n();
  v17 = sub_1B4E4E620(0, 0, v5, &unk_1B4F7B1D0, v16);
  v18 = *(v0 + 160);
  *(v0 + 160) = v17;
}

uint64_t sub_1B4F0DD9C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F0DDC0, 0, 0);
}

uint64_t sub_1B4F0DDC0(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x1E69E86C8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_1B4F0DEA8;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B4F0DEA8()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1B4F0E050;
  }

  else
  {
    v4 = sub_1B4F0DFD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B4F0DFD0()
{
  v1 = v0[5];
  sub_1B4F683D4();
  if (v1)
  {
  }

  else
  {
    v2 = v0[3];
    sub_1B4F0E0B0();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B4F0E050()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4F0E0B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v14 - v4;
  v6 = sub_1B4F68324();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_1B4F0E470();
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v0;
  swift_retain_n();
  sub_1B4E4E620(0, 0, v5, &unk_1B4F7B1C0, v8);

  if (*(v0 + 152))
  {
    v9 = *(v0 + 152);

    sub_1B4F683B4();

    v10 = *(v0 + 152);
  }

  *(v0 + 152) = 0;

  if (*(v0 + 160))
  {
    v11 = *(v0 + 160);

    sub_1B4F683B4();

    v12 = *(v0 + 160);
  }

  *(v0 + 160) = 0;
}

uint64_t sub_1B4F0E274()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 144);
  v6 = (*(v1 + 136) + **(v1 + 136));
  v3 = *(*(v1 + 136) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1B4DF8418;

  return v6();
}

void *DebounceDelay.deinit()
{
  v1 = v0[18];

  v2 = v0[19];

  v3 = v0[20];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DebounceDelay.__deallocating_deinit()
{
  v1 = v0[18];

  v2 = v0[19];

  v3 = v0[20];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1B4F0E470()
{
  result = qword_1EDB6F208;
  if (!qword_1EDB6F208)
  {
    type metadata accessor for DebounceDelay();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6F208);
  }

  return result;
}

uint64_t sub_1B4F0E4C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4F0E254(a1, v4, v5, v6);
}

uint64_t sub_1B4F0E578(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4F0DD9C(v6, a1, v4, v5, v7);
}

uint64_t PlaybackInformationUpdated.duration.getter()
{
  result = *v0;
  v2 = *(v0 + 8) | (*(v0 + 9) << 8);
  return result;
}

uint64_t PlaybackInformationUpdated.elapsedTime.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24) | (*(v0 + 25) << 8);
  return result;
}

uint64_t PlaybackInformationUpdated.itemAlbumTitle.getter()
{
  v1 = *(v0 + 32);
  sub_1B4F0E6A8(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_1B4F0E6A8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t PlaybackInformationUpdated.itemArtist.getter()
{
  v1 = *(v0 + 48);
  sub_1B4F0E6A8(v1, *(v0 + 56));
  return v1;
}

uint64_t PlaybackInformationUpdated.itemArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlaybackInformationUpdated() + 32);

  return sub_1B4F0E780(v3, a1);
}

uint64_t type metadata accessor for PlaybackInformationUpdated()
{
  result = qword_1EB8F6E40;
  if (!qword_1EB8F6E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F0E780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6E38, &qword_1B4F7B1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PlaybackInformationUpdated.itemTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for PlaybackInformationUpdated() + 36));
  v2 = *v1;
  sub_1B4F0E6A8(*v1, v1[1]);
  return v2;
}

uint64_t PlaybackInformationUpdated.playbackRate.getter()
{
  v1 = (v0 + *(type metadata accessor for PlaybackInformationUpdated() + 40));
  result = *v1;
  v3 = *(v1 + 8) | (*(v1 + 9) << 8);
  return result;
}

uint64_t PlaybackInformationUpdated.init(duration:elapsedTime:itemAlbumTitle:itemArtist:itemArtwork:itemTitle:playbackRate:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 9) = HIBYTE(a2) & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 25) = HIBYTE(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v16 = type metadata accessor for PlaybackInformationUpdated();
  result = sub_1B4F0E91C(a10, a9 + v16[8]);
  v18 = (a9 + v16[9]);
  *v18 = a11;
  v18[1] = a12;
  v19 = a9 + v16[10];
  *v19 = a13;
  *(v19 + 8) = a14;
  *(v19 + 9) = a15 & 1;
  return result;
}

uint64_t sub_1B4F0E91C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6E38, &qword_1B4F7B1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B4F0E9C4()
{
  sub_1B4F0EABC(319, &qword_1EB8F6E50);
  if (v0 <= 0x3F)
  {
    sub_1B4F0EABC(319, &qword_1EB8F6E58);
    if (v1 <= 0x3F)
    {
      sub_1B4F0EB08();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4F0EABC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for PlaybackInformationUpdated.InfoType();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B4F0EB08()
{
  if (!qword_1EB8F6E60[0])
  {
    sub_1B4F675E4();
    v0 = type metadata accessor for PlaybackInformationUpdated.InfoType();
    if (!v1)
    {
      atomic_store(v0, qword_1EB8F6E60);
    }
  }
}

uint64_t sub_1B4F0EB60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1B4F687D4();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B4F0EBBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 < 2)
  {
    v7 = 0;
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_30;
  }

  v10 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v12 = ((v9 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v8);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_30;
      }

LABEL_17:
      v13 = (v11 - 1) << v10;
      if (v8 > 3)
      {
        v13 = 0;
      }

      if (v8)
      {
        if (v8 <= 3)
        {
          v14 = v8;
        }

        else
        {
          v14 = 4;
        }

        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v15 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v15 = *a1;
          }
        }

        else if (v14 == 1)
        {
          v15 = *a1;
        }

        else
        {
          v15 = *a1;
        }
      }

      else
      {
        v15 = 0;
      }

      return v7 + (v15 | v13) + 1;
    }

    v11 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  v17 = v16 >= 2;
  result = v16 - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_1B4F0ED48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = v10 - 1;
  if (!v8)
  {
    ++v9;
  }

  if (v8 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = v9 + 1;
  }

  v13 = a3 >= v11;
  v14 = a3 - v11;
  if (v14 == 0 || !v13)
  {
LABEL_20:
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v11 < a2)
  {
LABEL_21:
    v17 = ~v11 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v12] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v23 = *(v7 + 56);

      v23();
    }
  }

  else
  {
    if (v9 <= 3)
    {
      v20 = ~(-1 << (8 * v9));
    }

    else
    {
      v20 = -1;
    }

    if (v9)
    {
      v21 = v20 & (a2 - v10);
      if (v9 <= 3)
      {
        v22 = v9;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v9);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }

      else if (v22 == 1)
      {
        *a1 = v21;
      }

      else
      {
        *a1 = v21;
      }
    }
  }
}

uint64_t WorkoutDeviceConnectionUpdated.workoutDeviceConnection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66964();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutDeviceConnectionUpdated.init(workoutDeviceConnection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66964();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for WorkoutDeviceConnectionUpdated()
{
  result = qword_1EB8F6EE8;
  if (!qword_1EB8F6EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4F0F164()
{
  result = sub_1B4F66964();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WorkoutFeatures.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4F68C34();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1B4F0F268()
{
  result = qword_1EB8F6EF8;
  if (!qword_1EB8F6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6EF8);
  }

  return result;
}

uint64_t sub_1B4F0F2BC()
{
  sub_1B4F68E84();
  sub_1B4F67FE4();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F0F320()
{
  sub_1B4F68E84();
  sub_1B4F67FE4();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4F0F36C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4F68C34();

  *a2 = v5 != 0;
  return result;
}

uint64_t EventHubProtocol.makeAsyncStream<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  EventHubProtocol.makeAsyncStream<A, B>(for:transforming:)(a1, &unk_1B4F7B3A8, v12, a2, a3, a3, a4, a5, a6);
}

uint64_t sub_1B4F0F4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4F0F4EC, 0, 0);
}

uint64_t sub_1B4F0F4EC()
{
  (*(*(v0[4] - 8) + 16))(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4F0F578(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4F0F4C8(a1, a2, v6, v7);
}

uint64_t EventHubProtocol.makeAsyncStream<A, B>(for:transforming:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v26 = a8;
  v27 = a3;
  v25 = a2;
  v28 = a9;
  v16 = sub_1B4F68354();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v25 - v20;
  type metadata accessor for SubscriptionToken();
  v22 = swift_allocObject();
  v23 = sub_1B4DF7B68(v10, v22, a4, a7);
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = v26;
  v34 = v10;
  v35 = a1;
  v36 = v23;
  v37 = v25;
  v38 = v27;
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8650], v16);
  sub_1B4F683A4();
}

uint64_t sub_1B4F0F7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a5;
  v36 = a6;
  v37 = a3;
  v38 = a4;
  v39 = a2;
  v40 = a1;
  v33 = a7;
  v34 = a9;
  v14 = sub_1B4F68374();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v32 - v19;
  (*(v15 + 16))(&v32 - v19, a1, v14, v18);
  v21 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a7;
  *(v22 + 3) = a8;
  *(v22 + 4) = a9;
  *(v22 + 5) = a10;
  v23 = v35;
  v24 = v36;
  *(v22 + 6) = a11;
  *(v22 + 7) = v23;
  *(v22 + 8) = v24;
  (*(v15 + 32))(&v22[v21], v20, v14);
  v25 = *(a10 + 48);

  v26 = v38;
  v27 = a8;
  v28 = a8;
  v29 = v33;
  v25(v41, v37, v38, &unk_1B4F7B3B8, v22, v28, a11, v33, a10);

  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v27;
  v30[4] = v34;
  v30[5] = a10;
  v30[6] = a11;
  v30[7] = v26;

  return sub_1B4F68344();
}

uint64_t sub_1B4F0F9D8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a7;
  v11 = sub_1B4F68334();
  v7[4] = v11;
  v12 = *(v11 - 8);
  v7[5] = v12;
  v13 = *(v12 + 64) + 15;
  v7[6] = swift_task_alloc();
  v14 = *(a7 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64) + 15;
  v7[8] = swift_task_alloc();
  v16 = swift_task_alloc();
  v7[9] = v16;
  v20 = (a2 + *a2);
  v17 = a2[1];
  v18 = swift_task_alloc();
  v7[10] = v18;
  *v18 = v7;
  v18[1] = sub_1B4F0FBAC;

  return v20(v16, a1);
}

uint64_t sub_1B4F0FBAC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1B4F0FDC8;
  }

  else
  {
    v3 = sub_1B4F0FCC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4F0FCC0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  (*(v3 + 16))(v0[8], v1, v6);
  sub_1B4F68374();
  sub_1B4F68364();
  (*(v5 + 8))(v2, v4);
  (*(v3 + 8))(v1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B4F0FDC8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_1B4F0FE7C(uint64_t a1)
{
  v4 = v1[3];
  v15 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(sub_1B4F68374() - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = v1[7];
  v11 = v1[8];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B4DE13F0;

  return sub_1B4F0F9D8(a1, v10, v11, v1 + v9, v15, v4, v5);
}

uint64_t WorkoutPlanQueryRequest.init(between:state:limit:offset:sortCriteria:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a5;
  v42 = a6;
  v43 = a3;
  v44 = a4;
  v37 = a2;
  v40 = sub_1B4F669A4();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v40, v9);
  v39 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1B4F65FC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v36[-v19];
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_1B4F65F94();
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F00, &qword_1B4F7B3C0) + 36);
  v38 = a1;
  WorkoutPlanFilter.between(startDate:endDate:)(a1, a1 + v23, v20);
  v24 = *(v12 + 8);
  v24(v16, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6DE0, &qword_1B4F7AF40);
  v25 = *(sub_1B4F66E34() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B4F6CF50;
  *(v28 + v27) = v37;
  swift_storeEnumTagMultiPayload();
  sub_1B4E2C438(v28);
  swift_setDeallocating();
  sub_1B4F0BEC8(v28 + v27);
  swift_deallocClassInstance();
  sub_1B4F65F94();
  v29 = sub_1B4F65FA4();
  v30 = sub_1B4F65FA4();
  sub_1B4E455E0(v30, v29);
  v31 = sub_1B4F65FB4();
  v32 = sub_1B4F65FB4();
  sub_1B4E455E0(v32, v31);
  sub_1B4F65F94();
  v24(v16, v11);
  v24(v20, v11);
  v33 = v40;
  v34 = v41;
  (*(v7 + 16))(v39, v41, v40);
  sub_1B4F66984();
  (*(v7 + 8))(v34, v33);
  return sub_1B4F10344(v38);
}

uint64_t sub_1B4F10344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F00, &qword_1B4F7B3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CatalogLockup.init(tile:bundleDateRequested:bundleLoadStatus:bundleProgress:bundleReason:completedCount:dateBookmarked:isIncompletePlanWorkout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v111 = a9;
  v112 = a8;
  v113 = a7;
  v114 = a6;
  v115 = a3;
  v101 = a5;
  v116 = a4;
  v106 = a2;
  v110 = a11;
  v117 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F08, &qword_1B4F7B3C8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v109 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v108 = v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v107 = v69 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F10, &qword_1B4F7B3D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v118 = v69 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F18, &qword_1B4F7B3D8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8, v31);
  v80 = v69 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6F20, &qword_1B4F7B3E0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v37 = v69 - v36;
  v98 = v69 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v42 = v69 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = v69 - v45;
  v99 = v69 - v45;
  v47 = sub_1B4F65E34();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8, v49);
  v102 = v69 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1B4F64C14();
  v104 = v52;
  v105 = v51;
  v103 = sub_1B4F64B54();
  sub_1B4F64BF4();
  v100 = sub_1B4F64C64();
  sub_1B4E21A90(a2, v46, &qword_1EB8F54A0, &qword_1B4F730F8);
  sub_1B4E21A90(a5, v37, &qword_1EB8F6F20, &qword_1B4F7B3E0);
  v97 = sub_1B4F64BB4();
  v96 = v53;
  v88 = v54;
  v95 = sub_1B4F64C74();
  v94 = sub_1B4F64C34();
  sub_1B4E21A90(v117, v42, &qword_1EB8F54A0, &qword_1B4F730F8);
  v92 = sub_1B4F64B64();
  v91 = sub_1B4F64CD4();
  v81 = v55;
  v90 = sub_1B4F64CA4();
  v89 = v56;
  v87 = v57;
  v86 = sub_1B4F64C84();
  v85 = v58;
  v84 = sub_1B4F64C54();
  v83 = sub_1B4F64B74();
  v82 = v59;
  sub_1B4F64CC4();
  v79 = sub_1B4F64CE4();
  v78 = v60;
  v77 = v61;
  v76 = sub_1B4F64B84();
  v75 = v62;
  v74 = sub_1B4F64BC4();
  v73 = v63;
  v70 = v64;
  v72 = sub_1B4F64C94();
  v71 = v65;
  sub_1B4F64BE4();
  v69[2] = sub_1B4F64CB4();
  v69[1] = v66;
  sub_1B4F64C04();
  sub_1B4F64BD4();
  sub_1B4F64B94();
  sub_1B4F64BA4();
  sub_1B4F64C44();
  sub_1B4F64CF4();
  sub_1B4F64C24();
  sub_1B4F65294();
  sub_1B4DD2BC4(v117, &qword_1EB8F54A0, &qword_1B4F730F8);
  sub_1B4DD2BC4(v101, &qword_1EB8F6F20, &qword_1B4F7B3E0);
  sub_1B4DD2BC4(v106, &qword_1EB8F54A0, &qword_1B4F730F8);
  v67 = sub_1B4F64D04();
  return (*(*(v67 - 8) + 8))(a1, v67);
}