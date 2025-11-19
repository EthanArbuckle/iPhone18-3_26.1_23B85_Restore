uint64_t sub_1B7955B78()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B7955C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7955CDC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7955D14()
{
  sub_1B7955DD8(319, &qword_1EDC10A88, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B7955DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B7A97040();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B7955E38(void *a1)
{
  v2 = v1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B48);
  v98 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v100 = (&v70 - v4);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B40);
  v5 = *(v99 - 1);
  MEMORY[0x1EEE9AC00](v99);
  v7 = &v70 - v6;
  v8 = sub_1B7A97040();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v70 - v13;
  v87 = v15;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v70 - v16;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  v18 = OBJC_IVAR____TtC18_JetEngine_SwiftUI15JetSceneSession__scenePhase;
  v20 = v9 + 13;
  v19 = v9[13];
  v79 = *MEMORY[0x1E697BE30];
  v80 = v19;
  v19(v17);
  v91 = v9[2];
  v92 = v9 + 2;
  v91(v14, v17, v8);
  sub_1B7A96EE0();
  v90 = v9;
  v22 = v9[1];
  v21 = v9 + 1;
  v93 = v17;
  v77 = v22;
  v22(v17, v8);
  (*(v5 + 32))(v2 + v18, v7, v99);
  swift_unknownObjectWeakAssign();
  v95 = a1;
  if (a1)
  {
    v75 = v21;
    v76 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B50);
    v23 = swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA468D8);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v88 = v23;
    *(v23 + 24) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B58);
    v25 = *(v98 + 72);
    v26 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v73 = swift_allocObject();
    v27 = (v73 + v26);
    v28 = v94;
    v29 = *(v94 + 48);
    v99 = *MEMORY[0x1E69DE338];
    *v27 = v99;
    v71 = *MEMORY[0x1E697BE38];
    v30 = v80;
    (v80)(&v27[v29]);
    v31 = *(v28 + 48);
    v32 = *MEMORY[0x1E69DE358];
    *&v27[v25] = *MEMORY[0x1E69DE358];
    v33 = *MEMORY[0x1E697BE40];
    v30(&v27[v25 + v31], v33, v8);
    v34 = &v27[2 * v25];
    v35 = *(v28 + 48);
    v36 = *MEMORY[0x1E69DE360];
    *v34 = *MEMORY[0x1E69DE360];
    v70 = v33;
    v30(&v34[v35], v33, v8);
    v86 = v25;
    v37 = &v27[3 * v25];
    v38 = *(v28 + 48);
    v39 = *MEMORY[0x1E69DE348];
    *v37 = *MEMORY[0x1E69DE348];
    v89 = v8;
    v74 = v20;
    v30(&v37[v38], v79, v8);
    v106 = MEMORY[0x1E69E7CC0];
    v40 = v99;
    v41 = v32;
    v42 = v36;
    v43 = v39;
    v44 = 4;
    sub_1B7957CC0(0, 4, 0);
    v45 = v106;
    v85 = sub_1B7A9A760();
    v84 = objc_opt_self();
    v83 = objc_opt_self();
    v46 = v90;
    v82 = v90 + 4;
    v81 = &v102;
    v72 = v27;
    v47 = v27;
    v48 = v28;
    v49 = v100;
    v50 = v88;
    do
    {
      v98 = v45;
      v99 = v44;
      v51 = v100;
      sub_1B7957CE0(v47, v100);
      v96 = *v51;
      v52 = *(v48 + 48);
      v97 = sub_1B7A9A750();
      sub_1B7A9A710();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v53 = [v84 defaultCenter];
      v54 = [v83 mainQueue];
      v55 = v93;
      v56 = v89;
      v91(v93, (v49 + v52), v89);
      v57 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = v50;
      (v46[4])(v58 + v57, v55, v56);
      v104 = sub_1B795AF1C;
      v105 = v58;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v102 = sub_1B795AE28;
      ObjectType = &block_descriptor_0;
      v59 = _Block_copy(aBlock);

      v60 = [v53 addObserverForName:v96 object:v95 queue:v54 usingBlock:v59];
      _Block_release(v59);

      ObjectType = swift_getObjectType();

      aBlock[0] = v60;
      sub_1B79577B8(v49);
      v45 = v98;
      v61 = v99;
      v106 = v98;
      v63 = *(v98 + 16);
      v62 = *(v98 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1B7957CC0((v62 > 1), v63 + 1, 1);
        v45 = v106;
      }

      *(v45 + 16) = v63 + 1;
      sub_1B7957D50(aBlock, v45 + 32 * v63 + 32);
      v47 += v86;
      v44 = v61 - 1;
      v48 = v94;
      v46 = v90;
    }

    while (v61 != 1);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v2 = v76;
    *(v76 + 24) = v45;

    v64 = [v95 activationState];
    if (v64 == 1)
    {
      v67 = v70;
      v65 = v89;
      v66 = v80;
    }

    else
    {
      v65 = v89;
      v66 = v80;
      v67 = v79;
      if (!v64)
      {
        v67 = v71;
      }
    }

    v68 = v78;
    v66(v78, v67, v65);
    swift_getKeyPath();
    swift_getKeyPath();
    v91(v93, v68, v65);

    sub_1B7A96F30();

    v77(v68, v65);
  }

  return v2;
}

uint64_t sub_1B7956778()
{
  v1 = sub_1B7A97040();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t View.jetSceneSession(_:)(void *a1)
{
  swift_getKeyPath();
  type metadata accessor for JetSceneSession(0);
  swift_allocObject();
  v2 = a1;
  sub_1B7955E38(a1);
  sub_1B7A98150();
}

{
  swift_getKeyPath();
  v2 = [a1 scene];
  type metadata accessor for JetSceneSession(0);
  swift_allocObject();
  sub_1B7955E38(v2);
  sub_1B7A98150();
}

void sub_1B7956918(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for ClickLocationViewModifier()
{
  result = qword_1EDC103E0;
  if (!qword_1EDC103E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7956A1C()
{
  sub_1B7956B60(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1B7956C28();
    if (v1 <= 0x3F)
    {
      sub_1B7956B60(319, &qword_1EDC10100, MEMORY[0x1E69AB1B8], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B7956B60(319, &qword_1EDC10128, MEMORY[0x1E69695A8], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7956B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B7956BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B7956C28()
{
  if (!qword_1EDC10150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D18);
    v0 = sub_1B7A970E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC10150);
    }
  }
}

void sub_1B7956CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B7956D10()
{
  sub_1B7956CAC(319, &qword_1EDC0FCA0, MEMORY[0x1E69AAF88], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B7A99360();
    if (v1 <= 0x3F)
    {
      sub_1B7956E94(319, &qword_1EDC0FC90, &qword_1EBA45D88, &unk_1B7A9C4F8, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B7956CAC(319, &qword_1EDC0FEF8, type metadata accessor for ClickLocationConfiguration, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B7956E94(319, &qword_1EDC0FD78, &qword_1EBA465D8, &unk_1B7A9D430, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B7956E94(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B7956F18()
{
  sub_1B7956CAC(319, &qword_1EDC10100, MEMORY[0x1E69AB1B8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B7956FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t View.pageMetrics(_:pipeline:tracker:clickLocationConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a1;
  v50 = a3;
  v51 = a7;
  v49 = a4;
  v46 = a2;
  v52 = a8;
  v10 = type metadata accessor for PageMetricsViewModifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - v17;
  type metadata accessor for ClickLocationViewModifier();
  v43 = a6;
  v19 = sub_1B7A97590();
  v45 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = sub_1B7A97590();
  v48 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v42 - v26;
  v47 = a5;
  sub_1B7957820(a5, v15, &qword_1EBA465C8);
  v28 = type metadata accessor for ClickLocationConfiguration(0);
  if ((*(*(v28 - 8) + 48))(v15, 1, v28) == 1)
  {
    sub_1B7957888(v15, &qword_1EBA465C8);
    v29 = sub_1B7A995F0();
    (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
  }

  else
  {
    sub_1B7957820(v15, v18, &qword_1EBA465D0);
    sub_1B7957C4C(v15, type metadata accessor for ClickLocationConfiguration);
  }

  v30 = v51;
  View.impressionableClickLocation(data:)(v18, v43, v51);
  sub_1B7957888(v18, &qword_1EBA465D0);
  sub_1B7957820(v44, v12, &qword_1EBA465C0);
  v31 = v10[5];
  v32 = sub_1B7A99360();
  (*(*(v32 - 8) + 16))(&v12[v31], v46, v32);
  sub_1B7957820(v47, &v12[v10[7]], &qword_1EBA465C8);
  v33 = &v12[v10[8]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = &v12[v10[6]];
  v35 = v49;
  *v34 = v50;
  *(v34 + 1) = v35;
  v36 = sub_1B7957B74(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  v55 = v30;
  v56 = v36;
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v12, v19, v10, WitnessTable);
  sub_1B7957C4C(v12, type metadata accessor for PageMetricsViewModifier);
  (*(v45 + 8))(v21, v19);
  v38 = sub_1B7957B74(&qword_1EDC0FFE0, type metadata accessor for PageMetricsViewModifier);
  v53 = WitnessTable;
  v54 = v38;
  v39 = swift_getWitnessTable();
  sub_1B7957EE0(v24, v22, v39);
  v40 = *(v48 + 8);
  v40(v24, v22);
  sub_1B7957EE0(v27, v22, v39);
  return (v40)(v27, v22);
}

uint64_t sub_1B79575E0@<X0>(void *a1@<X8>)
{
  sub_1B7995018();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

char *sub_1B7957634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B79577B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7957820(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7957888(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.impressionableClickLocation(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ClickLocationViewModifier();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B7957820(a1, v8, &qword_1EBA465D0);
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v12 = v9[5];
  *(v11 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0);
  swift_storeEnumTagMultiPayload();
  sub_1B7957820(v8, v11 + v9[6], &qword_1EBA465D0);
  v13 = v11 + v9[7];
  sub_1B7A96C10();
  sub_1B7957888(v8, &qword_1EBA465D0);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8) + 28)] = 0;
  MEMORY[0x1B8CA96D0](v11, a2, v9, a3);
  return sub_1B7957B18(v11);
}

uint64_t sub_1B7957B18(uint64_t a1)
{
  v2 = type metadata accessor for ClickLocationViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7957B74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7957BBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7957C04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7957C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1B7957CC0(char *a1, int64_t a2, char a3)
{
  result = sub_1B7957634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B7957CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1B7957D54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1B7957D84()
{
  sub_1B7957E58(319, &qword_1EDC10160, 255, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContentUnavailableButton.Action();
    if (v1 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B7957E58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B7957F20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7957F8C()
{
  result = qword_1EDC10A60;
  if (!qword_1EDC10A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49260);
    sub_1B7958010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A60);
  }

  return result;
}

unint64_t sub_1B7958010()
{
  result = qword_1EDC10A68;
  if (!qword_1EDC10A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49268);
    sub_1B795809C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A68);
  }

  return result;
}

unint64_t sub_1B795809C()
{
  result = qword_1EDC10A80;
  if (!qword_1EDC10A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A80);
  }

  return result;
}

void sub_1B7958118()
{
  type metadata accessor for ContentUnavailableView.Implementation();
  if (v0 <= 0x3F)
  {
    sub_1B79583D4(319, &qword_1EDC100E0, &qword_1EBA46448, &unk_1B7A9D0E0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B7958EAC();
      if (v3 <= 0x3F)
      {
        sub_1B7957E58(319, qword_1EDC10170, v2, type metadata accessor for ContentUnavailableTextLogBuilder, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B79583D4(319, &qword_1EDC10158, &qword_1EBA48FD8, &unk_1B7AA4D60, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1B79583D4(319, &qword_1EBA46B30, &qword_1EBA46B38, &unk_1B7AA4460, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1B7957E58(319, &qword_1EDC108B8, 255, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1B79583D4(319, &qword_1EDC10A78, &qword_1EBA45D10, &unk_1B7AA0B40, MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1B79583D4(319, &qword_1EDC10138, &qword_1EBA48FE0, &unk_1B7AA4D68, MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
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
}

uint64_t sub_1B7958398()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B79583D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B7958438()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B795848C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ImpressionableLayoutStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ImpressionableLayoutStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B7958684()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49218);
  type metadata accessor for _CompatibilityLoadingViewContent();
  sub_1B7A97B40();
  sub_1B7A97590();
  swift_getTupleTypeMetadata();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD0);
  sub_1B7A97590();
  sub_1B7A97E00();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EDC10A50, &qword_1EBA48FD0);
  swift_getWitnessTable();
  sub_1B7957F20(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A973E0();
  return swift_getWitnessTable();
}

uint64_t LoadingView.init<>()@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A986C0();
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = swift_getKeyPath();
  *(a1 + 48) = 0;
  *(a1 + 56) = swift_getKeyPath();
  *(a1 + 64) = 0;
  result = swift_getKeyPath();
  *(a1 + 72) = result;
  *(a1 + 80) = 0;
  *a1 = sub_1B795AAEC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

{
  sub_1B7A986C0();
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = nullsub_1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = result;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_1B7958A34@<X0>(_BYTE *a1@<X8>)
{
  sub_1B7958B80();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7958AD0@<X0>(void *a1@<X8>)
{
  sub_1B7958BE0();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7958B24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A97780();
  *a1 = result;
  return result;
}

unint64_t sub_1B7958B80()
{
  result = qword_1EDC10A98[0];
  if (!qword_1EDC10A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC10A98);
  }

  return result;
}

unint64_t sub_1B7958BE0()
{
  result = qword_1EDC10B20;
  if (!qword_1EDC10B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10B20);
  }

  return result;
}

uint64_t sub_1B7958C44(void *a1, uint64_t a2)
{
  sub_1B7A9A160();

  *a1 = a2;
  return result;
}

uint64_t sub_1B7958CF0()
{
  sub_1B7958BE0();

  return sub_1B7A978A0();
}

unint64_t sub_1B7958D50()
{
  result = sub_1B7958DD8();
  if (v1 <= 0x3F)
  {
    result = sub_1B7958E28();
    if (v2 <= 0x3F)
    {
      result = sub_1B7A96B90();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B7958DD8()
{
  result = qword_1EDC10898;
  if (!qword_1EDC10898)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDC10898);
  }

  return result;
}

unint64_t sub_1B7958E28()
{
  result = qword_1EDC10108;
  if (!qword_1EDC10108)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC10108);
  }

  return result;
}

void sub_1B7958EAC()
{
  if (!qword_1EDC100F8)
  {
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC100F8);
    }
  }
}

uint64_t LoadingView.body.getter(uint64_t a1)
{
  v3 = v1[3];
  v36 = v1[2];
  v37 = v3;
  v38 = v1[4];
  v39 = *(v1 + 80);
  v4 = v1[1];
  v34 = *v1;
  v35 = v4;
  sub_1B7A46FC4(&v30);
  if (v30 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v30;
  }

  v6 = swift_allocObject();
  v7 = *(a1 + 24);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 24) = v7;
  v8 = v37;
  *(v6 + 64) = v36;
  *(v6 + 80) = v8;
  *(v6 + 96) = v38;
  *(v6 + 112) = v39;
  v9 = v35;
  *(v6 + 32) = v34;
  *(v6 + 48) = v9;
  *(v6 + 113) = v5;
  (*(*(a1 - 8) + 16))(&v30, &v34, a1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49218);
  v11 = MEMORY[0x1E6981840];
  v30 = v10;
  v31 = MEMORY[0x1E6981840];
  type metadata accessor for _CompatibilityLoadingViewContent();
  sub_1B7A97B40();
  v32 = sub_1B7A97590();
  v33 = v11;
  swift_getTupleTypeMetadata();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD0);
  sub_1B7A97590();
  sub_1B7A97E00();
  sub_1B7A97590();
  v12 = sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  v29 = MEMORY[0x1E697EBF8];
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x1E6980A30];
  v24 = swift_getWitnessTable();
  v25 = sub_1B797EC34(&qword_1EDC10A50, &qword_1EBA48FD0);
  v22 = swift_getWitnessTable();
  v23 = sub_1B7957F20(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  v20 = swift_getWitnessTable();
  v21 = v23;
  v13 = swift_getWitnessTable();
  v30 = v12;
  v31 = v13;
  swift_getOpaqueTypeMetadata2();
  v30 = v12;
  v31 = v13;
  swift_getOpaqueTypeConformance2();
  v18 = sub_1B7A973D0();
  v19 = v14;
  v15 = sub_1B7A973E0();
  v16 = swift_getWitnessTable();
  sub_1B7957EE0(&v18, v15, v16);

  v18 = v30;
  v19 = v31;
  sub_1B7957EE0(&v18, v15, v16);
}

uint64_t sub_1B7959374()
{
  sub_1B79599CC();

  sub_1B795AE10(*(v0 + 72), *(v0 + 80));
  j__swift_release();
  sub_1B795AE1C(*(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

double sub_1B79593DC()
{
  v1 = *(v0 + 48);
  v30[2] = *(v0 + 32);
  v30[3] = v1;
  v30[4] = *(v0 + 64);
  v31 = *(v0 + 80);
  v2 = *(v0 + 16);
  v30[0] = *v0;
  v30[1] = v2;
  v3 = sub_1B7A47380();
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [v3 scene];

  Height = 0.0;
  if (v5)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 windows];

      sub_1B79596F8(0, &qword_1EDC10A20);
      v9 = sub_1B7A9A640();

      if (v9 >> 62)
      {
        goto LABEL_30;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7A9AD90())
      {
        sub_1B7A9A760();
        v29 = v9 + 32;
        while (!__OFSUB__(i--, 1))
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1B8CABED0](i, v9);
          }

          else
          {
            if ((i & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v12 = *(v29 + 8 * i);
          }

          v13 = v12;
          sub_1B7A9A750();
          sub_1B7A9A710();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v14 = [v13 isKeyWindow];

          if (v14)
          {
            MEMORY[0x1EEE9AC00](v15);
            v32 = i;
            sub_1B7959740(&v32, v30);
            v16 = *&v30[0];
            goto LABEL_21;
          }

          if (!i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

LABEL_17:
      v16 = 0;
LABEL_21:

      if (v16)
      {
        v17 = [v16 windowScene];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 statusBarManager];

          if (v19)
          {
            [v19 statusBarFrame];
            v21 = v20;
            v23 = v22;
            v25 = v24;
            v27 = v26;

            v33.origin.x = v21;
            v33.origin.y = v23;
            v33.size.width = v25;
            v33.size.height = v27;
            Height = CGRectGetHeight(v33);
          }
        }
      }
    }

    else
    {
    }
  }

  return Height;
}

uint64_t sub_1B79596F8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1B7959760@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1B8CABED0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B79597CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    *&v12 = a1;
    *(&v12 + 1) = a2;
    v3 = type metadata accessor for _CompatibilityLoadingViewContent();
    swift_getWitnessTable();
    sub_1B79599D4();
    sub_1B7959A28(&v12, v3, &type metadata for _PlatformLoadingViewContent);
  }

  else
  {
    *&v13 = a1;
    *(&v13 + 1) = a2;
    v4 = type metadata accessor for _CompatibilityLoadingViewContent();
    WitnessTable = swift_getWitnessTable();
    sub_1B7957EE0(&v13, v4, WitnessTable);
    v13 = v12;
    sub_1B7957EE0(&v13, v4, WitnessTable);
    v11[0] = v11[2];
    v11[1] = v11[3];
    sub_1B79599D4();
    sub_1B79B5878(v11, v4);
  }

  type metadata accessor for _CompatibilityLoadingViewContent();
  v6 = sub_1B7A97B40();
  v7 = swift_getWitnessTable();
  v8 = sub_1B79599D4();
  v11[4] = v7;
  v11[5] = v8;
  v9 = swift_getWitnessTable();
  sub_1B7957EE0(&v13, v6, v9);
  return sub_1B79599CC();
}

unint64_t sub_1B79599D4()
{
  result = qword_1EDC10B30;
  if (!qword_1EDC10B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10B30);
  }

  return result;
}

uint64_t sub_1B7959A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B7A97B10();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1B7A97B30();
}

unint64_t sub_1B7959B20()
{
  result = qword_1EDC10A58;
  if (!qword_1EDC10A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A58);
  }

  return result;
}

uint64_t sub_1B7959BAC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1B7A98AD0();
}

unint64_t sub_1B7959D7C()
{
  result = qword_1EDC10A90;
  if (!qword_1EDC10A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A90);
  }

  return result;
}

uint64_t LoadingView.pageRenderMetrics(_:)(uint64_t a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  swift_getWitnessTable();
  sub_1B7A98320();
}

uint64_t sub_1B7959EC0()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1B7A97500();
  }

  else
  {
    sub_1B7A97360();
  }

  return sub_1B7A97590();
}

uint64_t sub_1B7959F28()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1B7A97500();
    sub_1B7A97590();
    sub_1B7974C70();
  }

  else
  {
    sub_1B7A97360();
    sub_1B7A97590();
    sub_1B7975E58(&qword_1EDC10A70, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1B795A01C()
{

  return swift_deallocObject();
}

uint64_t sub_1B795A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1B7A9AD10();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1B795AC78, 0, 0);
}

uint64_t sub_1B795A158@<X0>(void *a1@<X8>)
{
  sub_1B795A1B4();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

unint64_t sub_1B795A1B4()
{
  result = qword_1EDC10980;
  if (!qword_1EDC10980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10980);
  }

  return result;
}

uint64_t View.automationSemantics(_:)()
{
  v0 = sub_1B7A99110();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A997A0();
  View._automationIdentifier(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t View._automationIdentifier(_:)()
{
  sub_1B7A990D0();
  sub_1B7A98350();
}

uint64_t sub_1B795A374()
{
  sub_1B795A1B4();

  return sub_1B7A978A0();
}

id sub_1B795A3D4()
{
  type metadata accessor for ThisFramework();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDC10A30 = result;
  return result;
}

uint64_t sub_1B795A450(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1B795A460@<X0>(uint64_t a1@<X8>)
{
  if (*v1 == 1)
  {
    v3 = sub_1B7A975C0();
    v4 = 256;
    result = sub_1B7A97ED0();
  }

  else
  {
    v3 = 0;
    result = 0;
    v4 = 2;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B795A4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B795A520();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

unint64_t sub_1B795A520()
{
  result = qword_1EDC10B28;
  if (!qword_1EDC10B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10B28);
  }

  return result;
}

uint64_t sub_1B795A578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B795A520();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

id sub_1B795A5E8()
{
  if (qword_1EDC10B38 != -1)
  {
    swift_once();
  }

  v0 = byte_1EDC108D8;
  v1 = [objc_opt_self() emptyConfiguration];
  if (v0 == 1)
  {
    v2 = type metadata accessor for _PlatformLoadingViewContent._JEContentUnavailableView();
  }

  else
  {
    v2 = MEMORY[0x1E69DC8D0];
  }

  v3 = [objc_allocWithZone(v2) initWithConfiguration_];

  [v3 setScrollEnabled_];
  LODWORD(v4) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];
  return v3;
}

void sub_1B795A6CC()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = sub_1B7A9A4B0();
  v5 = v4;

  if (v3 == 0xD000000000000017 && 0x80000001B7AC7940 == v5)
  {
    goto LABEL_14;
  }

  v7 = sub_1B7A9AE80();

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = [v0 mainBundle];
    v8 = [v9 bundleIdentifier];

    if (!v8)
    {
      goto LABEL_16;
    }

    v10 = sub_1B7A9A4B0();
    v12 = v11;

    if (v10 != 0xD00000000000001FLL || 0x80000001B7AC7920 != v12)
    {
      LOBYTE(v8) = sub_1B7A9AE80();
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    LOBYTE(v8) = 1;
    goto LABEL_15;
  }

  LOBYTE(v8) = 1;
LABEL_16:
  byte_1EDC108D8 = v8 & 1;
}

uint64_t sub_1B795A854(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v23 = a1;
  v4 = sub_1B7A97880();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A96E10();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1B7A96EA0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A96E90();
  sub_1B7A96E00();
  v12 = sub_1B7A96E20();
  v13 = a3(v12);
  v15 = v14;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49220);
  sub_1B7A97DA0();
  sub_1B7A98050();
  sub_1B795A450(v13, v15, v17 & 1);

  (*(v21 + 8))(v6, v22);
  sub_1B7A96E60();
  v24[3] = v8;
  v24[4] = MEMORY[0x1E69DC1D0];
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24);
  (*(v9 + 16))(boxed_opaque_existential_1Tm, v11, v8);
  sub_1B7A9AAC0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B795AAEC()
{
  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC10A30;
  return sub_1B7A98070();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B795AC28(uint64_t a1, char a2, int a3, int a4, id a5)
{
  if (a2)
  {
    return 0;
  }

  [a5 intrinsicContentSize];
  return a1;
}

uint64_t sub_1B795AC78()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1B7A9AD20();
  v5 = sub_1B7957F20(&qword_1EDC10A10, MEMORY[0x1E69E8820]);
  sub_1B7A9AED0();
  sub_1B7957F20(&qword_1EDC10A18, MEMORY[0x1E69E87E8]);
  sub_1B7A9AD30();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1B7A4A884;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1B795AE10(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_1B795AE1C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B795AE28(uint64_t a1)
{
  v2 = sub_1B7A96A20();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1B7A96A10();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_1B795AF1C(uint64_t a1)
{
  v3 = *(sub_1B7A97040() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1B795AF90(a1, v4, v5);
}

void sub_1B795AF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B7A97040();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *(a2 + 24);
  os_unfair_lock_lock(v12 + 4);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v12 + 4);
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B7A96F20();

    sub_1B79E92F0(&qword_1EDC108C0, MEMORY[0x1E697BE48]);
    v14 = sub_1B7A9A470();
    v15 = *(v6 + 8);
    v15(v11, v5);
    if (v14)
    {
    }

    else
    {
      v16 = *(v6 + 16);
      v16(v11, a3, v5);
      swift_getKeyPath();
      swift_getKeyPath();
      v16(v9, v11, v5);
      sub_1B7A96F30();
      v15(v11, v5);
    }
  }
}

uint64_t sub_1B795B318()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1B7A97D10();

    return sub_1B7A97590();
  }

  else
  {
    sub_1B7A976C0();
    swift_getWitnessTable();
    sub_1B7A97C20();
    sub_1B7A97590();
    sub_1B7A9AB60();
    swift_getWitnessTable();
    sub_1B7A976C0();
    swift_getWitnessTable();
    sub_1B7A97C20();
    return sub_1B7A97590();
  }
}

uint64_t sub_1B795B47C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1B7A97D10();
    sub_1B7A97590();
  }

  else
  {
    sub_1B7A976C0();
    swift_getWitnessTable();
    sub_1B7A97C20();
    sub_1B7A97590();
    sub_1B7A9AB60();
    swift_getWitnessTable();
    sub_1B7A976C0();
    swift_getWitnessTable();
    sub_1B7A97C20();
    sub_1B7A97590();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B795B67C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B795B69C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

double sub_1B795B6C4@<D0>(uint64_t a1@<X8>)
{
  sub_1B797E898();
  sub_1B7A97890();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1B795B764@<X0>(void *a1@<X8>)
{
  sub_1B795A1B4();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B795B820()
{
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  sub_1B797C7FC(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier);
  swift_getWitnessTable();
  sub_1B797C7FC(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B795B930()
{
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  sub_1B797C7FC(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B795B9CC()
{
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  sub_1B797C7FC(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier);
  swift_getWitnessTable();
  sub_1B797C7FC(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B795BAE0()
{
  sub_1B7A98030();
  type metadata accessor for ListContainerGeometryModifier(255);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797C7FC(&qword_1EBA45CC8, type metadata accessor for ListContainerGeometryModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B795BBB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B795BC28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CD0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B795BCA4(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1B7A99A20();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

char *sub_1B795BE7C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1B7A99A20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[14]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B795C054()
{

  return swift_deallocObject();
}

uint64_t sub_1B795C09C()
{
  v1 = *(type metadata accessor for ListContainerGeometryModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EC8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45ED0);

  return swift_deallocObject();
}

uint64_t sub_1B795C1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1B797B5EC(v3);
}

uint64_t sub_1B795C1E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B795C200()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EC0);
  type metadata accessor for ListContainerGeometry(255);
  sub_1B797E68C();
  sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B795C2B4()
{

  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1B795C318()
{

  return swift_deallocObject();
}

uint64_t sub_1B795C350()
{

  return swift_deallocObject();
}

uint64_t sub_1B795C3EC()
{

  return swift_deallocObject();
}

uint64_t sub_1B795C424()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ShelfPage() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

__n128 sub_1B795C550(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B795C564()
{
  v3 = *(v0 + 16);
  v1 = *(type metadata accessor for _ShelfPageStaticContent() - 8);
  (*(*(v3 - 8) + 8))(v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B795C660()
{
  v3 = *(v0 + 16);
  v1 = *(type metadata accessor for _ShelfPageContinuousContent() - 8);
  (*(*(v3 - 8) + 8))(v0 + ((*(v1 + 80) + 104) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B795C7AC()
{

  return swift_deallocObject();
}

uint64_t sub_1B795C83C@<X0>(uint64_t a1@<X8>)
{
  sub_1B79888A8();
  result = sub_1B7A97890();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B795C8E8@<X0>(_BYTE *a1@<X8>)
{
  sub_1B79888FC();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B795C958@<X0>(_BYTE *a1@<X8>)
{
  sub_1B798A858();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B795C9F4@<X0>(_BYTE *a1@<X8>)
{
  sub_1B798A804();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B795CA6C()
{
  sub_1B7A97020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F98);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EF8);
  sub_1B7A97590();
  sub_1B7A97B40();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A97050();
  sub_1B7A97590();
  type metadata accessor for ShelfContainerEnvironmentValues();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A973E0();
  return swift_getWitnessTable();
}

uint64_t sub_1B795CD28()
{
  type metadata accessor for IndexedRandomAccessCollection();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1B7A988E0();
  return swift_getWitnessTable();
}

uint64_t sub_1B795CE50()
{
  type metadata accessor for IndexedRandomAccessCollection();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResultView();
  type metadata accessor for _ContinuousIntentDispatchWorker();
  swift_getWitnessTable();
  type metadata accessor for _IntentDispatchViewModifier();
  sub_1B7A97590();
  type metadata accessor for PageResourceMetricsViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B7A988E0();
  type metadata accessor for _PrefetchMediaArtworkAdapter();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FB0);
  sub_1B79886C8();
  type metadata accessor for _PrefetchMediaArtworkViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B795D19C()
{
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();

  return swift_getWitnessTable();
}

uint64_t sub_1B795D230()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA462F0);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA45FF0, &qword_1EBA45FE8);
  swift_getWitnessTable();
  sub_1B797EC34(qword_1EBA462F8, &qword_1EBA462F0);
  return swift_getWitnessTable();
}

uint64_t sub_1B795D368()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ShelfPage() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 88) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1B795D494()
{

  return swift_deallocObject();
}

uint64_t sub_1B795D4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B795D610(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B795D750()
{
  v1 = sub_1B7A99B70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B795D81C()
{
  v1 = sub_1B7A99A50();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A99B70();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1B795D978()
{
  v1 = sub_1B7A99B70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B795DA44()
{
  v1 = sub_1B7A99A50();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A99B70();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1B795DB9C()
{
  v1 = sub_1B7A96BF0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A99570();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1B795DCEC()
{
  v1 = sub_1B7A96BF0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B795DDC8()
{

  return swift_deallocObject();
}

uint64_t sub_1B795DE00()
{
  v1 = sub_1B7A96BF0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A99B70();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1B795DF60()
{
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  type metadata accessor for PageMetricsViewModifier(255);
  sub_1B7A97590();
  sub_1B7957B74(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  swift_getWitnessTable();
  sub_1B7957B74(&qword_1EDC0FFE0, type metadata accessor for PageMetricsViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B795E070(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1B7A99360();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B795E208(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1B7A99360();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1B795E3B4()
{
  v1 = sub_1B7A99360();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B795E47C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[7];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[8];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46610);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[11];

  return v19(v20, a2, v18);
}

uint64_t sub_1B795E674(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46610);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1B795E870()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46628);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46620);
  sub_1B7995B64();
  sub_1B797EC34(&qword_1EDC0FC98, &qword_1EBA46620);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B795E938()
{

  return swift_deallocObject();
}

uint64_t sub_1B795E984()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B795E9BC()
{

  return swift_deallocObject();
}

__n128 sub_1B795EA50(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B795EA5C()
{

  return swift_deallocObject();
}

uint64_t sub_1B795EA94()
{

  return swift_deallocObject();
}

uint64_t sub_1B795EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7A991E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B795EBD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7A991E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B795EC78@<X0>(void *a1@<X8>)
{
  sub_1B79A16FC();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B795ECCC()
{

  return swift_deallocObject();
}

uint64_t sub_1B795ED0C()
{
  type metadata accessor for PlayableViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EB8);
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EDC0FCE8, &qword_1EBA45EB8);
  swift_getWitnessTable();
  sub_1B797D3EC();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B795EE8C()
{
  type metadata accessor for OnPlayableViewChangeModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46A70);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46A78, &qword_1EBA46A70);
  return swift_getWitnessTable();
}

uint64_t sub_1B795EF9C()
{
  type metadata accessor for _PrefetchMediaArtworkViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B795F040()
{
  v6 = *(v0 + 16);
  v1 = type metadata accessor for _PrefetchMediaArtworkViewModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));
  (*(*(v6 - 8) + 8))(v2);

  sub_1B795AE10(*(v2 + v1[14]), *(v2 + v1[14] + 8));
  v3 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1B7A97580();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1B79A5B8C(*(v2 + v1[16]), *(v2 + v1[16] + 8));
  sub_1B79A5B8C(*(v2 + v1[17]), *(v2 + v1[17] + 8));
  j__swift_release();
  return swift_deallocObject();
}

uint64_t sub_1B795F1FC()
{
  v7 = *(v0 + 32);
  v1 = type metadata accessor for _PrefetchMediaArtworkViewModifier();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  (*(*(v7 - 8) + 8))(v0 + v2);

  sub_1B795AE10(*(v3 + v1[14]), *(v3 + v1[14] + 8));
  v4 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1B7A97580();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1B79A5B8C(*(v3 + v1[16]), *(v3 + v1[16] + 8));
  sub_1B79A5B8C(*(v3 + v1[17]), *(v3 + v1[17] + 8));
  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1B795F3EC()
{

  return swift_deallocObject();
}

__n128 sub_1B795F48C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B795F4A0()
{
  type metadata accessor for _PrefetchMediaArtworkViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  sub_1B7A97980();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B795F5B4@<X0>(void *a1@<X8>)
{
  sub_1B79AF264();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B795F608()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B795F67C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B795F6B4@<X0>(_BYTE *a1@<X8>)
{
  sub_1B79AED6C();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B795F750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B79E9404();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B795F79C@<X0>(void *a1@<X8>)
{
  sub_1B79AACCC();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B795F7F0()
{
  sub_1B7A99300();
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B78);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B80);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B98);
  sub_1B7A97590();
  type metadata accessor for AppMetricsViewModifier();
  sub_1B7A97590();
  sub_1B7A97B40();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46BA0, &qword_1EBA46B78);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46BA8, &qword_1EBA46B80);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46BB0, &qword_1EBA46B88);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46BC0, &qword_1EBA46B98);
  swift_getWitnessTable();
  sub_1B79AECBC(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _ResultView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  swift_getOpaqueTypeConformance2();
  sub_1B79AAC78();
  return swift_getWitnessTable();
}

uint64_t sub_1B795FC64()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CF8);
  sub_1B7A97590();
  sub_1B797EC34(qword_1EBA46D00, &qword_1EBA46CF8);
  return swift_getWitnessTable();
}

uint64_t sub_1B795FD10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B7A97850();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B795FD98()
{

  return swift_deallocObject();
}

uint64_t sub_1B795FDD4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46D88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46D90);
  sub_1B7A976B0();
  sub_1B797EC34(&qword_1EBA46D98, &qword_1EBA46D90);
  swift_getOpaqueTypeConformance2();
  sub_1B7A979C0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A98980();
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7960074()
{

  return swift_deallocObject();
}

uint64_t sub_1B79600C4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 80) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

__n128 sub_1B79601AC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B79601E4()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _ResultView();
  return swift_getWitnessTable();
}

uint64_t sub_1B7960284()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B79602BC()
{
  v1 = *(v0 + 32);
  v2 = *(sub_1B7A99D80() - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(*(v1 - 8) + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B79603BC()
{
  swift_unknownObjectRelease();
  sub_1B79599CC();

  return swift_deallocObject();
}

uint64_t sub_1B7960424()
{

  return swift_deallocObject();
}

uint64_t sub_1B796046C()
{
  v1 = sub_1B7A9A000();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7960530()
{

  return swift_deallocObject();
}

uint64_t sub_1B7960568()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B79605B0()
{
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  sub_1B7957BBC(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B796064C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1B7960804(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1B79609C8()
{
  v1 = type metadata accessor for ClickLocationViewModifier();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1B7A99900();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B7A96C20();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[6];
  v9 = sub_1B7A995F0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v1[7];
  v12 = sub_1B7A96C20();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);

  return swift_deallocObject();
}

uint64_t sub_1B7960CA4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for _ComponentBody() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1B7960D94()
{
  type metadata accessor for _ComponentBody();

  return swift_getWitnessTable();
}

uint64_t sub_1B7960DDC()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for DataObjectBox();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7960EAC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ActionButton();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ComponentMenuContent();
  swift_getOpaqueTypeConformance2();
  sub_1B79B77FC(&qword_1EBA47010, type metadata accessor for ComponentMenuContent);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97B40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1B7961100()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47028);
  sub_1B79B70C0();
  sub_1B79B7124();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B79611D0()
{

  return swift_deallocObject();
}

uint64_t sub_1B7961208()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1B7961260()
{
  sub_1B79C39AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1B7961290()
{
  type metadata accessor for _OneShotIntentDispatchWorker();
  swift_getWitnessTable();
  type metadata accessor for _IntentDispatchViewModifier();

  return swift_getWitnessTable();
}

uint64_t sub_1B7961314()
{
  type metadata accessor for _ContinuousIntentDispatchWorker();
  swift_getWitnessTable();
  type metadata accessor for _IntentDispatchViewModifier();

  return swift_getWitnessTable();
}

uint64_t sub_1B7961398()
{
  type metadata accessor for _OneShotIntentDispatchWorker();
  swift_getWitnessTable();
  type metadata accessor for _IntentDispatchViewModifierFollowing();

  return swift_getWitnessTable();
}

uint64_t sub_1B7961420()
{
  type metadata accessor for _ContinuousIntentDispatchWorker();
  swift_getWitnessTable();
  type metadata accessor for _IntentDispatchViewModifierFollowing();

  return swift_getWitnessTable();
}

uint64_t sub_1B79614B0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v16 = v3;
  v4 = *(v2 + 64);
  v5 = sub_1B7A999B0();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v10 = (sub_1B7A98870() - 8);
  v11 = (v8 + *(*v10 + 80)) & ~*(*v10 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v16, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v12 = v0 + v11;

  v13 = v10[10];
  type metadata accessor for IntentResult._State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v12 + v13, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B796175C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v6 = (sub_1B7A98870() - 8);
  v7 = (v4 + *(*v6 + 80)) & ~*(*v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v7;

  v9 = v6[10];
  type metadata accessor for IntentResult._State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v8 + v9, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B7961968()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A999B0();
  v6 = *(v5 - 8);
  v16 = v3;
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v10 = sub_1B7A98870();
  v11 = (v8 + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80);
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  (*(v2 + 8))(v0 + v16, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v12 = v0 + v11;

  v13 = *(v10 + 32);
  type metadata accessor for IntentResult._State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v12 + v13, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B7961C04()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult();
  v6 = sub_1B7A98870();
  v7 = (v4 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v7;

  v9 = *(v6 + 32);
  type metadata accessor for IntentResult._State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v8 + v9, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B7961E04()
{

  return swift_deallocObject();
}

uint64_t sub_1B7961E44()
{

  return swift_deallocObject();
}

uint64_t sub_1B7961E7C()
{
  type metadata accessor for _IntentDispatchViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _DispatchID();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B79620BC()
{
  type metadata accessor for _IntentDispatchViewModifierFollowing();
  swift_getWitnessTable();
  sub_1B7A97C30();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _DispatchID();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7962360()
{
  sub_1B7A98A40();

  return sub_1B7A97180();
}

uint64_t sub_1B79623A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A977A0();
  *a1 = result;
  return result;
}

uint64_t sub_1B7962444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A98F40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1B7A97530();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B7962550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B7A98F40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1B7A97530();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B7962658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1B7A97970();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B79626D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1B7A97970();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B7962750()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47488);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA47490, &qword_1EBA47488);
  return swift_getWitnessTable();
}

uint64_t sub_1B7962800@<X0>(void *a1@<X8>)
{
  sub_1B79CB218();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7962854()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B79628D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8);
  sub_1B7A97590();
  sub_1B79CAE84();
  return swift_getWitnessTable();
}

uint64_t sub_1B7962950()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for _OnChangeOfBindingViewModifier() - 8);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  v4 = sub_1B7A98870();
  (*(*(v1 - 8) + 8))(v3 + *(v4 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_1B7962A64()
{
  type metadata accessor for _OnChangeOfBindingViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B7962B1C()
{
  swift_getWitnessTable();

  return sub_1B7A9A420();
}

uint64_t sub_1B7962B98()
{
  swift_getWitnessTable();

  return sub_1B7A9A910();
}

uint64_t sub_1B7962C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = KeyPath;

  return swift_unknownObjectRetain();
}

uint64_t sub_1B7962CD4()
{

  sub_1B795AE10(*(v0 + 120), *(v0 + 128));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7962D28()
{

  return swift_deallocObject();
}

uint64_t sub_1B7962D60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7962DA0()
{

  return swift_deallocObject();
}

uint64_t sub_1B7962DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47560);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47568);
  sub_1B7A97590();
  sub_1B7A97B40();
  sub_1B7A97B40();
  sub_1B797EC34(&qword_1EBA47570, &qword_1EBA47568);
  sub_1B7A988E0();
  sub_1B79CFFA8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A98900();
  sub_1B797EC34(&qword_1EBA47580, &qword_1EBA47558);
  sub_1B797EC34(&qword_1EBA47588, &qword_1EBA47560);
  sub_1B7A988E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A97FD0();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548);
  sub_1B797EC34(&qword_1EBA47550, &qword_1EBA47548);
  sub_1B7A988E0();
  swift_getWitnessTable();
  sub_1B7A98AB0();
  sub_1B7A97B40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B79631B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B7963274(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7963334@<X0>(void *a1@<X8>)
{
  sub_1B79DC584();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

__n128 sub_1B79633E0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B7963400()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentView();
  sub_1B7A98E50();
  swift_getWitnessTable();
  sub_1B7A987A0();
  swift_getWitnessTable();
  type metadata accessor for _ResultView();
  type metadata accessor for IntentView.RequestID();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B79636C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B79636FC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  if (*(v0 + 104))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 128) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1B79637EC()
{

  return swift_deallocObject();
}

uint64_t sub_1B796382C()
{
  v4 = *(v0 + 32);
  v1 = (type metadata accessor for IntentView() - 8);
  v2 = (*(*v1 + 80) + 96) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  sub_1B79D7310(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24));
  sub_1B79599CC();
  (*(*(v4 - 8) + 8))(v0 + v2 + v1[24]);

  j__swift_release();
  sub_1B79D7360(*(v0 + v2 + v1[31]), *(v0 + v2 + v1[31] + 8), *(v0 + v2 + v1[31] + 16));
  return swift_deallocObject();
}

uint64_t sub_1B79639E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  sub_1B7A97590();
  sub_1B79DC6AC();
  return swift_getWitnessTable();
}

uint64_t sub_1B7963A60()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B7963AF4()
{

  return swift_deallocObject();
}

uint64_t sub_1B7963B2C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7963B7C()
{

  return swift_deallocObject();
}

uint64_t sub_1B7963BB4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B7963BF8()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B7963C78()
{

  return swift_deallocObject();
}

uint64_t sub_1B7963CB0()
{
  v1 = sub_1B7A99080();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7963D74()
{
  v1 = sub_1B7A99080();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7963E38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8);
  return swift_getWitnessTable();
}

uint64_t sub_1B7963EE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788);
  sub_1B7A97B40();
  sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
  return swift_getWitnessTable();
}

uint64_t sub_1B7964024()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788);
  sub_1B7A97B40();
  sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
  return swift_getWitnessTable();
}

uint64_t sub_1B7964168()
{
  type metadata accessor for IntentView();
  type metadata accessor for PageRenderMetricsViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7964254()
{
  sub_1B7A97590();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PageRenderMetricsViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796437C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46610);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[12];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[14];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[15] + 16);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B79644AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46610);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[15] + 16) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[14];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1B79645DC()
{

  return swift_deallocObject();
}

uint64_t sub_1B7964614()
{
  v1 = type metadata accessor for PageRenderMetricsViewModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80));
  sub_1B79599CC();
  j__swift_release();
  v3 = v2 + v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648);
    if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
    {

      v5 = *(v4 + 32);
      v6 = sub_1B7A97480();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  sub_1B797D5A0(*(v2 + v1[13]), *(v2 + v1[13] + 8), *(v2 + v1[13] + 16), *(v2 + v1[13] + 17));
  v7 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1B7A99900();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B796486C()
{
  v1 = sub_1B7A99360();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7964938()
{
  type metadata accessor for PageRenderMetricsViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47910);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47918);
  sub_1B7A97590();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B79E3274(&qword_1EBA47920, &qword_1EBA47910);
  swift_getWitnessTable();
  sub_1B79E3274(qword_1EBA47928, &qword_1EBA47918);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797D3EC();
  return swift_getWitnessTable();
}

uint64_t sub_1B7964B74()
{

  return swift_deallocObject();
}

uint64_t sub_1B7964BAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7A99080();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1B7964C58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7A99080();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7964CFC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8);
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v2;

  v8 = v1[9];
  v9 = sub_1B7A99050();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v1[12];
  v11 = sub_1B7A97580();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1B7964EE4()
{
  MEMORY[0x1B8CACC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B7964F1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7964FF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47B08);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EDC0FCE0, &qword_1EBA47B08);
  return swift_getWitnessTable();
}

uint64_t sub_1B79650A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B796515C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7965210()
{
  v1 = (type metadata accessor for _OnScenePhaseChange(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1B7A97040();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B7965378()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47B38);
  sub_1B7A97040();
  sub_1B797EC34(&qword_1EDC0FCF0, &qword_1EBA47B38);
  sub_1B79E92F0(&qword_1EDC108C0, MEMORY[0x1E697BE48]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B7965468()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 80) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B79654E8()
{

  return swift_deallocObject();
}

uint64_t sub_1B7965528()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47B60);
  sub_1B7A97590();
  sub_1B79E9EB8();
  return swift_getWitnessTable();
}

uint64_t sub_1B79655A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47B60);
  sub_1B7A97590();
  sub_1B79E9EB8();
  return swift_getWitnessTable();
}

uint64_t sub_1B7965620()
{

  return swift_deallocObject();
}

uint64_t sub_1B796566C()
{
  sub_1B7A97590();
  sub_1B79AAC78();
  return swift_getWitnessTable();
}

uint64_t sub_1B79656D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47BD0);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA47BD8, &qword_1EBA47BD0);
  return swift_getWitnessTable();
}

uint64_t sub_1B7965780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79657F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7965868()
{

  return swift_deallocObject();
}

uint64_t sub_1B79658A0()
{
  v1 = sub_1B7A9A000();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7965964()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1B79659B0(uint64_t a1@<X8>)
{
  *a1 = EnvironmentValues.shelfContentPadding.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_1B79659E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97BD0();
  sub_1B79ED4A4();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A98790();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7965C24@<X0>(void *a1@<X8>)
{
  sub_1B79EF300();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7965C78()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 56) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B7965D14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47D68);
  sub_1B7A97590();
  sub_1B79EEFF8();
  return swift_getWitnessTable();
}

uint64_t sub_1B7965D90@<X0>(void *a1@<X8>)
{
  sub_1B79F01AC();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7965DE4()
{

  return swift_deallocObject();
}

uint64_t sub_1B7965E3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47D90);
  sub_1B7A97590();
  sub_1B79EFAE0();
  return swift_getWitnessTable();
}

uint64_t sub_1B7965EB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47D90);
  sub_1B7A97590();
  sub_1B79EFAE0();
  return swift_getWitnessTable();
}

uint64_t sub_1B7965F34()
{

  return swift_deallocObject();
}

uint64_t sub_1B7965F84()
{

  return swift_deallocObject();
}

uint64_t sub_1B7965FBC@<X0>(void *a1@<X8>)
{
  sub_1B79F2984();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7966010()
{

  return swift_deallocObject();
}

uint64_t sub_1B7966048()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B79660D4()
{

  return swift_deallocObject();
}

uint64_t sub_1B7966114()
{
  sub_1B795A450(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1B7966158()
{
  sub_1B7A97590();
  sub_1B79F2524();
  return swift_getWitnessTable();
}

uint64_t sub_1B79661BC()
{
  sub_1B7A97590();
  sub_1B79F2524();
  return swift_getWitnessTable();
}

uint64_t sub_1B7966224()
{

  return swift_deallocObject();
}

uint64_t sub_1B7966268()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1B79662FC()
{

  return swift_deallocObject();
}

uint64_t sub_1B796639C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90);
  return swift_getWitnessTable();
}

uint64_t sub_1B7966480()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B79664B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7966504@<X0>(_BYTE *a1@<X8>)
{
  sub_1B79F9BFC();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B79665A0()
{
  sub_1B7A97590();
  sub_1B79F8F4C();
  return swift_getWitnessTable();
}

uint64_t sub_1B7966604()
{
  type metadata accessor for UnifiedImpressionableLayoutViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7966698()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47ED8);
  sub_1B7A97590();
  sub_1B797EC34(qword_1EBA47EE0, &qword_1EBA47ED8);
  return swift_getWitnessTable();
}

uint64_t sub_1B796676C()
{
  type metadata accessor for UnifiedImpressionableLayoutViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  sub_1B7A97B40();
  sub_1B7A97B40();
  type metadata accessor for Impressionable_ViewModifier(255);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97B40();
  swift_getWitnessTable();
  sub_1B79F9B44(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier);
  swift_getWitnessTable();
  sub_1B79F9B44(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B79F9B44(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7966A2C()
{
  v3 = *(v0 + 16);
  v1 = *(type metadata accessor for JoinedID() - 8);
  (*(*(v3 - 8) + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B7966B3C()
{
  type metadata accessor for Impressionable_ViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  sub_1B79FC0D0(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier);
  swift_getWitnessTable();
  sub_1B79FC0D0(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B7966C4C()
{
  type metadata accessor for Impressionable_ViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  sub_1B79FC0D0(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier);
  swift_getWitnessTable();
  sub_1B79FC0D0(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B7966D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B7966E94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B7966FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Impressionable_ViewModifier.EnvironmentImpressionState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B7967070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = -a2;
  }

  else
  {
    v7 = type metadata accessor for Impressionable_ViewModifier.EnvironmentImpressionState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7967110()
{

  return swift_deallocObject();
}

uint64_t sub_1B7967164()
{
  type metadata accessor for FlowPopoverOriginViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_1B796721C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B796723C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  sub_1B79599CC();

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 80);
    if ((*(v0 + 168) & 1) == 0)
    {
LABEL_3:

      goto LABEL_7;
    }
  }

  else
  {

    if ((*(v0 + 168) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  }

LABEL_7:
  (*(v2 + 8))(v0 + ((v3 + 169) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1B7967350()
{

  return swift_deallocObject();
}

uint64_t sub_1B79673A0()
{
  type metadata accessor for FlowPopoverOriginViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481A0);
  sub_1B7A02270();
  type metadata accessor for FlowStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B79E3274(&qword_1EBA481B0, &qword_1EBA481B8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481C0);
  sub_1B7A97590();
  type metadata accessor for _RequirementFailureView();
  sub_1B7A97B40();
  swift_getOpaqueTypeConformance2();
  sub_1B79E3274(qword_1EBA481C8, &qword_1EBA481C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796765C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B79676F0()
{

  return swift_deallocObject();
}

uint64_t sub_1B7967728()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7967770(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7A99080();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1B796781C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7A99080();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B79678C0()
{
  sub_1B7A97E00();
  sub_1B7A97590();
  sub_1B7A048FC();
  return swift_getWitnessTable();
}

id sub_1B796793C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

uint64_t sub_1B7967978()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B79679D8()
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = (sub_1B7A98870() - 8);
  v3 = (*(*v2 + 80) + 88) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3 + v2[10], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B7967B2C()
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = (sub_1B7A98870() - 8);
  v3 = (*(*v2 + 80) + 88) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3 + v2[10], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B7967CA0()
{
  type metadata accessor for FlowStackTabsAuthority.Tab();
  sub_1B7A9A6E0();
  sub_1B7A97E00();
  sub_1B7A97590();
  sub_1B7A048FC();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
  sub_1B7A97590();
  type metadata accessor for FlowStackTabView();
  sub_1B7A98E50();
  sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A987A0();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _FlowStackTabViewBody();
  sub_1B7A97590();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B7967FEC()
{

  return swift_deallocObject();
}

uint64_t sub_1B7968028()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A988E0();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A98030();
  sub_1B7A976B0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788);
  sub_1B7A97B40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
  swift_getWitnessTable();
  sub_1B7A979C0();
  sub_1B7A97B40();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A988E0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1B7A98980();
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7968544()
{
  type metadata accessor for AppMetricsViewModifier();
  sub_1B7A97590();
  sub_1B7A14574(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B79685E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E60);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EDC0EB48, &qword_1EBA45E60);
  return swift_getWitnessTable();
}

uint64_t sub_1B796868C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1B79687D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B7968974@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shelfContentPrefersCompactLayouts.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B7968A34@<X0>(_BYTE *a1@<X8>)
{
  sub_1B7A1D08C();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7968AD0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B7968B0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48650);
  type metadata accessor for UnifiedImpressionableLayoutViewModifier();
  sub_1B7A97590();
  sub_1B7A1D0E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A97690();
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  sub_1B7A985B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A1D2A8();
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97E00();
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8);
  swift_getWitnessTable();
  sub_1B79F8F4C();
  swift_getWitnessTable();
  sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  type metadata accessor for _ResolvedVerticalShelfLayout();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97B40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7968FA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  sub_1B7A97590();
  sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8);
  return swift_getWitnessTable();
}

uint64_t sub_1B7969040()
{
  type metadata accessor for ShelfGrid();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48738);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B79E3274(&qword_1EBA48740, &qword_1EBA48738);
  return swift_getWitnessTable();
}

uint64_t sub_1B7969114()
{
  v9 = *(v0 + 16);
  v1 = type metadata accessor for ShelfGrid();
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  (*(*(v9 - 8) + 8))(v0 + v3);
  v5 = v0 + v3 + v1[17];
  sub_1B7A16CD4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48));

  sub_1B795AE10(*(v4 + v1[23]), *(v4 + v1[23] + 8));
  sub_1B7A1F1D0(*(v4 + v1[24]), *(v4 + v1[24] + 8), *(v4 + v1[24] + 9));
  sub_1B795AE10(*(v4 + v1[25]), *(v4 + v1[25] + 8));
  v6 = v0 + v3 + v1[26];
  if (*(v6 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
  }

  v7 = (v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B7A1F1D0(*(v4 + v1[27]), *(v4 + v1[27] + 8), *(v4 + v1[27] + 16));
  sub_1B7A16CD4(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16), *(v0 + v7 + 24), *(v0 + v7 + 32), *(v0 + v7 + 40), *(v0 + v7 + 48));
  return swift_deallocObject();
}

uint64_t sub_1B79692D4()
{
  v9 = *(v0 + 16);
  v1 = type metadata accessor for ShelfGrid();
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  (*(*(v9 - 8) + 8))(v0 + v3);
  v5 = v0 + v3 + v1[17];
  sub_1B7A16CD4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48));

  sub_1B795AE10(*(v4 + v1[23]), *(v4 + v1[23] + 8));
  sub_1B7A1F1D0(*(v4 + v1[24]), *(v4 + v1[24] + 8), *(v4 + v1[24] + 9));
  sub_1B795AE10(*(v4 + v1[25]), *(v4 + v1[25] + 8));
  v6 = v0 + v3 + v1[26];
  if (*(v6 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
  }

  v7 = (((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B7A1F1D0(*(v4 + v1[27]), *(v4 + v1[27] + 8), *(v4 + v1[27] + 16));
  sub_1B7A16CD4(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16), *(v0 + v7 + 24), *(v0 + v7 + 32), *(v0 + v7 + 40), *(v0 + v7 + 48));

  return swift_deallocObject();
}

uint64_t sub_1B79694AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7969514()
{

  return swift_deallocObject();
}

uint64_t sub_1B796954C()
{
  v9 = *(v0 + 16);
  v1 = type metadata accessor for ShelfGrid();
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  (*(*(v9 - 8) + 8))(v0 + v3);
  v5 = v0 + v3 + v1[17];
  sub_1B7A16CD4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48));

  sub_1B795AE10(*(v4 + v1[23]), *(v4 + v1[23] + 8));
  sub_1B7A1F1D0(*(v4 + v1[24]), *(v4 + v1[24] + 8), *(v4 + v1[24] + 9));
  sub_1B795AE10(*(v4 + v1[25]), *(v4 + v1[25] + 8));
  v6 = v0 + v3 + v1[26];
  if (*(v6 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B7A1F1D0(*(v4 + v1[27]), *(v4 + v1[27] + 8), *(v4 + v1[27] + 16));
  sub_1B7A16CD4(*(v0 + v7), *(v0 + v7 + 8), *(v0 + v7 + 16), *(v0 + v7 + 24), *(v0 + v7 + 32), *(v0 + v7 + 40), *(v0 + v7 + 48));

  return swift_deallocObject();
}

uint64_t sub_1B796971C()
{
  v1 = sub_1B7A991B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B79697EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48798);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B79698B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48798);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B7969980()
{
  v1 = type metadata accessor for ComponentMenuContent();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_1B7A9A0D0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[5]);
  v6 = v3 + v1[6];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v6);
    }
  }

  else
  {
  }

  sub_1B79A5B8C(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  return swift_deallocObject();
}

uint64_t sub_1B7969AE8()
{

  return swift_deallocObject();
}

uint64_t sub_1B7969B20()
{
  v1 = sub_1B7A9A090();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1B7969BC8()
{

  return swift_deallocObject();
}

uint64_t sub_1B7969C10()
{
  v1 = sub_1B7A99F80();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7969CD4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7969D24()
{

  return swift_deallocObject();
}

uint64_t sub_1B7969D5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA489E0);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA489E8, &qword_1EBA489E0);
  return swift_getWitnessTable();
}

uint64_t sub_1B7969E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA489E0);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA489E8, &qword_1EBA489E0);
  return swift_getWitnessTable();
}

uint64_t sub_1B7969EBC()
{

  return swift_deallocObject();
}

uint64_t sub_1B7969EFC()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8) - 8) + 80);
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  }

  v2 = (v1 + 168) & ~v1;

  sub_1B79A5B8C(*(v0 + 104), *(v0 + 112));
  sub_1B79A5B8C(*(v0 + 120), *(v0 + 128));
  j__swift_release();
  v3 = *(v0 + 152);
  if (v3 >= 4)
  {
  }

  v4 = sub_1B7A96B90();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1B796A090()
{
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48A88);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A28450(&qword_1EBA48A90, &qword_1EBA48A88, &unk_1B7AA3E48, sub_1B7A283FC);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48AA0);
  swift_getOpaqueTypeConformance2();
  sub_1B7A28450(&qword_1EBA48AA8, &qword_1EBA48AA0, &unk_1B7AA3E50, sub_1B7A284CC);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A96F80();
  return swift_getWitnessTable();
}

__n128 sub_1B796A2F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B796A308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A29804();
  *a1 = result;
  return result;
}

uint64_t sub_1B796A378()
{

  return swift_deallocObject();
}

uint64_t sub_1B796A3B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B7A99C70();
  *a1 = result & 1;
  return result;
}

__n128 sub_1B796A3EC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

__n128 sub_1B796A40C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B796A42C()
{

  return swift_deallocObject();
}

uint64_t sub_1B796A464@<X0>(_BYTE *a1@<X8>)
{
  sub_1B7A3428C();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B796A55C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DE0);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA46DD8, &qword_1EBA46DE0);
  return swift_getWitnessTable();
}

uint64_t sub_1B796A608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A98F40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for MediaArtworkLoaderImage(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1B796A714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B7A98F40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MediaArtworkLoaderImage(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B796A820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A98F40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E58);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B796A950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B7A98F40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E58);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B796AAAC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B796AAE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B796AB1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1B796AC28()
{

  return swift_deallocObject();
}

uint64_t sub_1B796AC60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B796AD00()
{

  return swift_deallocObject();
}

uint64_t sub_1B796AD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A99900();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B796ADA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A99900();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B796AEC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F18);
  sub_1B7A36FD0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B796AF88()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F40);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA48F48, &qword_1EBA48F40);
  return swift_getWitnessTable();
}

uint64_t sub_1B796B038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B796B0A0()
{

  return swift_deallocObject();
}

uint64_t sub_1B796B0E0@<X0>(_BYTE *a1@<X8>)
{
  sub_1B7A43288();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B796B1C4()
{
  v1 = type metadata accessor for ContentUnavailableView();
  v2 = (*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1B7A41F20(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40), *(v0 + v2 + 48));
  if (*(v0 + v2 + 56))
  {
  }

  sub_1B795AE10(*(v3 + 96), *(v3 + 104));
  j__swift_release();
  v4 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1B7A97040();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  j__swift_release();
  sub_1B795AE1C(*(v3 + *(v1 + 96)), *(v3 + *(v1 + 96) + 8));
  return swift_deallocObject();
}

uint64_t sub_1B796B370()
{

  return swift_deallocObject();
}

uint64_t sub_1B796B3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 88);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B796B470(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 56) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 88);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B796B520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ContentUnavailableButton.Action();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B796B63C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ContentUnavailableButton.Action();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B796B754()
{
  type metadata accessor for _CompatibilityContentUnavailableViewContent();
  swift_getWitnessTable();
  type metadata accessor for _ContentUnavailableScrollView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FB8);
  sub_1B7A97B40();
  sub_1B7A97590();
  type metadata accessor for _OnScenePhaseChange(255);
  sub_1B7A97590();
  sub_1B7A97B40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FC0);
  swift_getWitnessTable();
  sub_1B797EC34(qword_1EDC10228, &qword_1EBA48FB8);
  swift_getWitnessTable();
  sub_1B797D440();
  swift_getWitnessTable();
  sub_1B7A42C8C(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A41DD8();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD0);
  sub_1B7A97590();
  swift_getOpaqueTypeConformance2();
  sub_1B797EC34(&qword_1EDC10A50, &qword_1EBA48FD0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97E00();
  sub_1B7A97590();
  swift_getOpaqueTypeConformance2();
  sub_1B7A42C8C(&qword_1EDC10A40, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B796BB08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46F58);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EDC0FCD8, &qword_1EBA46F58);
  return swift_getWitnessTable();
}

uint64_t sub_1B796BBB4()
{
  sub_1B7A98770();
  type metadata accessor for ActionButton();
  sub_1B7A97B40();
  sub_1B7A98000();
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796BD18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FE8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1B796BDD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FE8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B796BE84()
{
  v1 = (type metadata accessor for _ContentUnavailableScrollView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[11];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FE8);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1B796BF7C()
{

  return swift_deallocObject();
}

uint64_t sub_1B796BFB8()
{
  v1 = sub_1B7A99900();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  (*(v2 + 8))(v0 + ((v3 + 96) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1B796C090()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B796C0E0()
{

  return swift_deallocObject();
}

uint64_t sub_1B796C128()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B796C160()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49000);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49008);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97930();
  sub_1B7A42C8C(&qword_1EBA49010, MEMORY[0x1E697C4D0]);
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796C3C0()
{
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A97050();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A973E0();
  return swift_getWitnessTable();
}

uint64_t sub_1B796C5F0@<X0>(_BYTE *a1@<X8>)
{
  sub_1B7A434D4();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B796C68C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
  sub_1B7A97590();
  sub_1B7A43728();
  return swift_getWitnessTable();
}

uint64_t sub_1B796C704()
{

  return swift_deallocObject();
}

void sub_1B796C764(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E6981E60];
  *(a1 + 24) = MEMORY[0x1E6981E70];
  *(a1 + 32) = v1;
}

uint64_t sub_1B796C77C()
{

  return swift_deallocObject();
}

uint64_t sub_1B796C7DC@<X0>(void *a1@<X8>)
{
  sub_1B7A458C0();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B796C878()
{
  type metadata accessor for FlowStack();
  swift_getWitnessTable();
  type metadata accessor for FlowStackTabView();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for DataObjectBox();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796C9F8()
{

  return swift_deallocObject();
}

uint64_t sub_1B796CA30()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B796CAD4()
{
  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1B796CB20()
{
  type metadata accessor for LoadingView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48DA8);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EDC10A38, &qword_1EBA48DA8);
  return swift_getWitnessTable();
}

uint64_t sub_1B796CC88()
{
  swift_unknownObjectRelease();
  sub_1B79599CC();

  sub_1B795AE10(*(v0 + 88), *(v0 + 96));
  j__swift_release();
  sub_1B795AE1C(*(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

uint64_t sub_1B796CCF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49230);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450);
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();

  return swift_getWitnessTable();
}

uint64_t sub_1B796CDE0@<X0>(_BYTE *a1@<X8>)
{
  sub_1B7A4C558();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

__n128 sub_1B796CE90(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1B796CEC0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B796CF9C()
{
  sub_1B7A97480();
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8);
  sub_1B7A97590();
  type metadata accessor for FlowStackAuthority.PathComponent();
  swift_getWitnessTable();
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA45FF0, &qword_1EBA45FE8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A975B0();
  sub_1B7A97590();
  type metadata accessor for FlowStackSheetViewModifier();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49300);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49308);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B7A4CCB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA49318, &qword_1EBA49300);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA49320, &qword_1EBA49308);
  return swift_getWitnessTable();
}

uint64_t sub_1B796D3A4@<X0>(void *a1@<X8>)
{
  sub_1B7A4DD68();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B796D3F8()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B796D498()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49340);
  sub_1B7A97590();
  sub_1B7A4DC90();
  return swift_getWitnessTable();
}

uint64_t sub_1B796D524()
{

  return swift_deallocObject();
}

uint64_t sub_1B796D564()
{
  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1B796D5CC()
{

  return swift_deallocObject();
}

uint64_t sub_1B796D60C()
{
  type metadata accessor for PageResourceMetricsViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47910);
  sub_1B7A97590();
  type metadata accessor for _IntentProgress();
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  sub_1B7A97B40();
  swift_getWitnessTable();
  type metadata accessor for _RequirementFailureView();
  sub_1B7A97B40();
  sub_1B7A504E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_1B796D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + a3 - 24) - 8) + 16;
  (*v5)(a2, a1);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  result = *(v7 + 16);
  *v8 = *v7;
  *(v8 + 16) = result;
  return result;
}

__n128 sub_1B796DA44(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) - 8);
  v5 = *(v4 + 64);
  (*(v4 + 32))(a2, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  v6 = a2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  result = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = result;
  return result;
}

__n128 sub_1B796DBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + a3 - 16) - 8) + 16;
  (*v5)(a2, a1);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = v7[1].n128_u64[0];
  result = *v7;
  *v8 = *v7;
  v8[1].n128_u64[0] = v9;
  return result;
}

__n128 sub_1B796DCB8(__n128 *a1, uint64_t a2)
{
  v4 = *(a1->n128_u64[1] - 8);
  v5 = *(v4 + 64);
  (*(v4 + 32))(a2, a1->n128_u64 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));
  v6 = (a2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = a1[1].n128_u64[0];
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v7;
  return result;
}

uint64_t sub_1B796DD44()
{
  v6 = *(v0 + 16);
  v1 = *(type metadata accessor for IntentResultView() - 8);
  v2 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));

  type metadata accessor for IntentResult();
  v3 = *(sub_1B7A98870() + 32);
  type metadata accessor for IntentResult._State();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(v6 - 8) + 8))(v2 + v3, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1B796DEF8()
{
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796DF98()
{

  return swift_deallocObject();
}

uint64_t sub_1B796DFD0()
{

  return swift_deallocObject();
}

uint64_t sub_1B796E06C()
{
  type metadata accessor for ShelfPage();

  return swift_getWitnessTable();
}

uint64_t sub_1B796E0B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA495F8);
  sub_1B7A97590();
  sub_1B7A54CB8();
  return swift_getWitnessTable();
}

__n128 sub_1B796E140(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B796E154()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B796E214()
{
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796E2AC()
{
  v1 = sub_1B7A994D0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1B796E354()
{
  type metadata accessor for DispatcherPerformActionViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796E3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 40);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B796E4A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 40) = -a2;
  }

  return result;
}

uint64_t sub_1B796E568()
{
  v1 = type metadata accessor for DispatcherPerformAction();
  v2 = *(sub_1B7A9AB60() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  if (!(*(*(v1 - 8) + 48))(v0 + v3, 1, v1))
  {
    v4 = sub_1B7A994D0();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1B796E6A8()
{

  return swift_deallocObject();
}

uint64_t sub_1B796E6E0()
{

  return swift_deallocObject();
}

uint64_t sub_1B796E718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A994D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B796E7D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B7A994D0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B796E894()
{
  type metadata accessor for DispatcherPerformActionViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49688);
  sub_1B7A97590();
  sub_1B7A97B40();
  swift_getWitnessTable();
  sub_1B7A590CC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796E9A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B796E9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7A99B00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B796EA98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7A99B00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B796EB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA496F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B796EBF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA496F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B796ECB8(uint64_t a1, uint64_t a2)
{
  v4 = _s13PopupHUDModelC8RowModelVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B796ED24(uint64_t a1, uint64_t a2)
{
  v4 = _s13PopupHUDModelC8RowModelVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B796ED98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A97800();
  *a1 = result;
  return result;
}

double sub_1B796EDF4@<D0>(uint64_t a1@<X8>)
{
  sub_1B7A5DCCC();
  sub_1B7A97890();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B796EEAC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B796EEC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  }

  else
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 161) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1B796EFBC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B796F004()
{
  type metadata accessor for FlowStackSheetViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498B8);
  swift_getWitnessTable();
  sub_1B7A60274();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B796F164()
{

  return swift_deallocObject();
}

uint64_t sub_1B796F208()
{
  v1 = sub_1B7A9A030();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B796F2A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B796F2EC()
{

  return swift_deallocObject();
}

uint64_t sub_1B796F338()
{
  type metadata accessor for DataObjectBox();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796F3EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B796F42C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88);
  sub_1B7A97590();
  sub_1B7A660E8();
  return swift_getWitnessTable();
}

uint64_t sub_1B796F4A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B796F4F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498C8);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EDC0EB38, &qword_1EBA498C8);
  return swift_getWitnessTable();
}

uint64_t sub_1B796F5A4()
{
  sub_1B7A97590();
  sub_1B797D3EC();
  return swift_getWitnessTable();
}

uint64_t sub_1B796F60C()
{

  sub_1B797D5A0(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 73));

  return swift_deallocObject();
}

uint64_t sub_1B796F674()
{

  return swift_deallocObject();
}

uint64_t sub_1B796F6B4()
{

  return swift_deallocObject();
}

uint64_t sub_1B796F6EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548);
  sub_1B7A68DE0();
  sub_1B7A988E0();
  swift_getWitnessTable();
  sub_1B7A98A90();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B796F7DC()
{
  v1 = *(v0 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = sub_1B7A9A100();
  sub_1B7A9AB60();
  v4 = (sub_1B7A98870() - 8);
  v5 = (*(*v4 + 80) + 80) & ~*(*v4 + 80);

  v6 = (v0 + v5 + v4[10]);
  if (!(*(*(v3 - 8) + 48))(v6, 1, v3))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      (*(*(v1 - 8) + 8))(v6 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1B796F9B0()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1B7A9AB60() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1B796FAE8()
{

  return swift_deallocObject();
}

uint64_t sub_1B796FB20()
{
  type metadata accessor for TaskView();
  sub_1B7A98E50();
  swift_getWitnessTable();
  sub_1B7A987A0();
  sub_1B7A97B40();
  sub_1B7A97B40();
  sub_1B7A985B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49C48);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA49C58, &qword_1EBA49C48);
  return swift_getWitnessTable();
}

uint64_t sub_1B796FD24()
{
  sub_1B7A97B40();
  sub_1B7A6BAF0();
  return swift_getWitnessTable();
}

uint64_t sub_1B796FD8C()
{
  v7 = *(v0 + 16);
  v1 = type metadata accessor for TaskView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 72) & ~*(*(v1 - 8) + 80));

  v3 = (v2 + *(v1 + 76));
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1B7A9A100();
  if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      (*(*(v7 - 8) + 8))(v3 + *(TupleTypeMetadata2 + 48), v7);
    }
  }

  sub_1B7A9AB60();
  sub_1B7A98700();

  return swift_deallocObject();
}

uint64_t sub_1B796FFA8()
{

  return swift_deallocObject();
}

uint64_t sub_1B796FFF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47EA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E78);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA47E80, &qword_1EBA47E78);
  swift_getWitnessTable();
  type metadata accessor for _ResultView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788);
  sub_1B7A97B40();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788);
  return swift_getWitnessTable();
}

uint64_t sub_1B79701D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49D80);
  sub_1B7A97BD0();
  sub_1B797EC34(qword_1EBA49D90, &qword_1EBA49D80);
  sub_1B7A6FFB8(qword_1EBA47CD0, MEMORY[0x1E697C720]);
  return swift_getOpaqueTypeConformance2();
}

double sub_1B7970334@<D0>(_OWORD *a1@<X8>)
{
  sub_1B7A7282C();
  sub_1B7A97890();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1B7970388()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B7970408()
{

  return swift_deallocObject();
}

uint64_t sub_1B7970448()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B7970490()
{

  return swift_deallocObject();
}

uint64_t sub_1B79704CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B7970588(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7970638()
{
  sub_1B7A98770();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DE0);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46DD8, &qword_1EBA46DE0);
  return swift_getWitnessTable();
}

uint64_t sub_1B7970710()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49EF8);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA49F00, &qword_1EBA49EF8);
  return swift_getWitnessTable();
}

uint64_t sub_1B79707BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A96FC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7970828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A96FC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B7970898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B7970960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B7970A24()
{
  v1 = type metadata accessor for ActionButton();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 40);
  }

  if (*(v2 + 120))
  {
    if (*(v2 + 104))
    {
      __swift_destroy_boxed_opaque_existential_1(v2 + 80);
    }
  }

  else
  {
  }

  v3 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1B7A99900();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1B79D7360(*(v2 + *(v1 + 48)), *(v2 + *(v1 + 48) + 8), *(v2 + *(v1 + 48) + 16));

  return swift_deallocObject();
}

uint64_t sub_1B7970BBC()
{
  sub_1B7A97590();
  sub_1B7A72938();
  return swift_getWitnessTable();
}

uint64_t sub_1B7970C20()
{

  return swift_deallocObject();
}

uint64_t sub_1B7970C58()
{

  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1B7970CA8()
{
  v6 = *(v0 + 16);
  v1 = type metadata accessor for _FlowToastView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 72) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 76);
  v4 = *(v6 - 8);
  if (!(*(v4 + 48))(v2 + v3, 1, v6))
  {
    (*(v4 + 8))(v2 + v3, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1B7970E2C()
{
  type metadata accessor for _FlowToastContentView();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0A0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CE0);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA4A0A8, &qword_1EBA4A0A0);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0);
  swift_getWitnessTable();
  sub_1B7A98770();
  sub_1B7A97640();
  swift_getWitnessTable();
  sub_1B7A76AC4(&qword_1EBA4A0B0, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  sub_1B7A9AB60();
  sub_1B7A985B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0B8);
  sub_1B7A97590();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA4A0C0, &qword_1EBA4A0B8);
  return swift_getWitnessTable();
}

uint64_t sub_1B7971170()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A168);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47438);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49000);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7971400()
{
  type metadata accessor for ImpressionableLayoutItemViewModifier();
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7957C04(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B7971500()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48018);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA48030, &qword_1EBA48018);
  swift_getWitnessTable();
  sub_1B7957C04(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1B7971620()
{
  type metadata accessor for ImpressionableLayoutViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B79716B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47F70);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA47F78, &qword_1EBA47F70);
  return swift_getWitnessTable();
}

uint64_t sub_1B7971764(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1B7A99A20();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[14]];

  return v15(v16, a2, v14);
}

char *sub_1B79718E8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1B7A99A20();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[14]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B7971A74()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ImpressionableLayoutItemViewModifier();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  v4 = v2[9];
  v5 = sub_1B7A99670();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v3 + v2[11];
  v8 = sub_1B7A96C20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);

  v11 = v2[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!(*(v9 + 48))(v3 + v11, 1, v8))
    {
      v10(v3 + v11, v8);
    }
  }

  else
  {
  }

  v12 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1B7A99900();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B7971D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A99670();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1B7A996F0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B7971E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B7A99670();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1B7A996F0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B7971F50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1B7A99A20();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[14];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[16]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1B79720BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1B7A99A20();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[16]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[14];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B7972224()
{
  type metadata accessor for ImpressionableLayoutItemViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45DB8);
  sub_1B7A97590();
  type metadata accessor for _ImpressionableLayoutItemViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EDC0EB28, &qword_1EBA45DB8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B797239C()
{
  type metadata accessor for ImpressionableLayoutViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  type metadata accessor for _ImpressionableLayoutViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7972498()
{

  return swift_deallocObject();
}

uint64_t sub_1B79724D4()
{
  v1 = type metadata accessor for _ImpressionableLayoutViewModifier();
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v17 = sub_1B7A96BF0();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);

  v3 = (v2 + 40) & ~v2;
  v6 = v0 + v3;
  v7 = sub_1B7A99670();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = v1[9];
  v10 = sub_1B7A99A20();
  v11 = *(*(v10 - 8) + 8);
  v11(v6 + v9, v10);
  v11(v6 + v1[11], v10);
  swift_unknownObjectRelease();
  v12 = v1[14];
  v13 = sub_1B7A99DB0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  j_j__swift_release(*(v6 + v1[15]), *(v6 + v1[15] + 8));

  swift_unknownObjectRelease();
  (*(v4 + 8))(v0 + ((((v16 + ((v2 + 40) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 16) & ~v5), v17);

  return swift_deallocObject();
}

uint64_t sub_1B79727E4()
{
  v1 = type metadata accessor for _ImpressionableLayoutViewModifier();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_1B7A99670();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[9];
  v7 = sub_1B7A99A20();
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v6, v7);
  v8(v3 + v1[11], v7);
  swift_unknownObjectRelease();
  v9 = v1[14];
  v10 = sub_1B7A99DB0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  j_j__swift_release(*(v3 + v1[15]), *(v3 + v1[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_1B7972A40()
{
  type metadata accessor for _ImpressionableLayoutItemViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  type metadata accessor for ImpressionPreferenceKey();
  swift_getWitnessTable();
  sub_1B7A97DB0();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7972B6C()
{
  type metadata accessor for _ImpressionableLayoutViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier();
  sub_1B7A97590();
  sub_1B7A97590();
  type metadata accessor for _OnScenePhaseChange(255);
  sub_1B7A97590();
  sub_1B7A97B40();
  type metadata accessor for ImpressionPreferenceKey();
  swift_getWitnessTable();
  type metadata accessor for LayoutItemImpressionInformation();
  sub_1B7A9A3C0();
  sub_1B7957C04(&qword_1EBA4A3A0, type metadata accessor for LayoutItemImpressionInformation);
  swift_getWitnessTable();
  sub_1B7A97D70();
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B7957C04(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier);
  swift_getWitnessTable();
  sub_1B7957C04(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier);
  swift_getWitnessTable();
  sub_1B797D440();
  swift_getWitnessTable();
  sub_1B7957C04(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _RequirementFailureView();
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7972FE0()
{

  return swift_deallocObject();
}

uint64_t sub_1B797301C()
{

  return swift_deallocObject();
}

uint64_t sub_1B797305C()
{
  sub_1B7A986B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47438);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97C80();
  swift_getWitnessTable();
  sub_1B7A817E4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A81848();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97D00();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97B40();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1B7973274@<X0>(void *a1@<X8>)
{
  sub_1B7A82210();
  result = sub_1B7A97890();
  *a1 = v3;
  return result;
}

uint64_t sub_1B79732C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A448);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA4A450, &qword_1EBA4A448);
  return swift_getWitnessTable();
}

uint64_t sub_1B797337C@<X0>(void *a1@<X8>)
{
  result = sub_1B7A97760();
  *a1 = v3;
  return result;
}

uint64_t sub_1B7973434()
{

  return swift_deallocObject();
}

uint64_t sub_1B797346C()
{

  return swift_deallocObject();
}

uint64_t sub_1B79734C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A98F40();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7973530(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A98F40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B79735EC()
{
  v10 = *(v0 + 16);
  v1 = *(_s22_CacheProtocolModifierVMa() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = (type metadata accessor for MediaArtwork.ProtocolRequest() - 8);
  v6 = (v3 + *(*v5 + 80)) & ~*(*v5 + 80);

  (*(*(v10 - 8) + 8))(v0 + v2, v10);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v6 + v5[9], AssociatedTypeWitness);
  v7 = v5[12];
  v8 = sub_1B7A97580();
  (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1B797380C()
{
  v10 = *(v0 + 16);
  v1 = *(_s22_CacheProtocolModifierVMa() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = (type metadata accessor for MediaArtwork.ProtocolRequest() - 8);
  v6 = (v3 + *(*v5 + 80)) & ~*(*v5 + 80);
  (*(*(v10 - 8) + 8))(v0 + v2, v10);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v6 + v5[9], AssociatedTypeWitness);
  v7 = v5[12];
  v8 = sub_1B7A97580();
  (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1B7973A24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7A99080();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B7973AD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7A99080();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7973B74()
{
  v1 = (_s22_OneShotActionProtocolVMa() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0) - 8);
  v5 = (v3 + *(*v4 + 80)) & ~*(*v4 + 80);

  v6 = v1[7];
  v7 = sub_1B7A99080();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  v8 = v4[9];
  v9 = sub_1B7A99050();
  (*(*(v9 - 8) + 8))(v0 + v5 + v8, v9);
  v10 = v4[12];
  v11 = sub_1B7A97580();
  (*(*(v11 - 8) + 8))(v0 + v5 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_1B7973D60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7973DA0()
{

  return swift_deallocObject();
}

uint64_t sub_1B7973DEC()
{
  v12 = *(v0 + 16);
  v1 = *(v12 - 8);
  v11 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v2 = (*(v1 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = sub_1B7A97580();
  v4 = *(v3 - 8);
  v5 = (v2 + *(v4 + 80) + 9) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_1B7A9A7E0();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v11, v12);
  (*(v4 + 8))(v0 + v5, v3);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_1B7973FD0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = (type metadata accessor for MediaArtwork.ProtocolRequest() - 8);
  v7 = (v4 + *(*v6 + 80)) & ~*(*v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v7 + v6[9], AssociatedTypeWitness);
  v8 = v6[12];
  v9 = sub_1B7A97580();
  (*(*(v9 - 8) + 8))(v0 + v7 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_1B79741A0()
{
  type metadata accessor for IntentImplementationViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B797423C()
{
  type metadata accessor for IntentImplementationViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88);
  sub_1B7A97590();
  swift_getWitnessTable();
  type metadata accessor for _RequirementFailureView();
  sub_1B7A97B40();
  sub_1B7A660E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7974398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A8FC14();
  *a1 = result;
  return result;
}

__n128 sub_1B79743FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B7974454()
{
  type metadata accessor for OnDeepLinkViewModifier();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B79744E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4AA28);
  sub_1B7A97590();
  sub_1B797EC34(qword_1EBA4AA30, &qword_1EBA4AA28);
  return swift_getWitnessTable();
}

uint64_t sub_1B7974594(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1B7974650(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7974700()
{
  v1 = type metadata accessor for OnDeepLinkViewModifier();
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = v0 + v2;

  j__swift_release();
  j__swift_release();
  if (*(v0 + v2 + 104))
  {
    if (*(v4 + 88))
    {
      __swift_destroy_boxed_opaque_existential_1(v4 + 64);
    }
  }

  else
  {
  }

  v5 = *(v1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B7A99900();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1B797489C()
{
  v1 = sub_1B7A9A1C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7974980()
{
  type metadata accessor for OnDeepLinkViewModifier();
  swift_getWitnessTable();
  sub_1B7A97C30();
  sub_1B7A97360();
  sub_1B7A97590();
  swift_getWitnessTable();
  type metadata accessor for _RequirementFailureView();
  sub_1B7A97B40();
  sub_1B7A97B40();
  sub_1B7A73928();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7974B08()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1B7974B84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B7974BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A96EC0();
  *a1 = result;
  return result;
}

uint64_t sub_1B7974C44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B7974C70()
{
  result = qword_1EBA45BB0;
  if (!qword_1EBA45BB0)
  {
    sub_1B7A97500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45BB0);
  }

  return result;
}

uint64_t sub_1B7974CBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v33 = a4;
  v34 = a5;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v35 = a7;
    v36 = a2;
    v37 = a6;
    v38 = a8;
    v39 = a9;
    v40 = a10;
    v17 = sub_1B7A97500();
    v18 = *(v17 - 8);
    MEMORY[0x1EEE9AC00](v17);
    v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      v32 = v10;
      sub_1B7A9AC50();

      strcpy(v42, "View.task @ ");
      BYTE5(v42[1]) = 0;
      HIWORD(v42[1]) = -5120;
      MEMORY[0x1B8CAB750](a3, v33);
      MEMORY[0x1B8CAB750](58, 0xE100000000000000);
      v41 = v34;
      v28 = sub_1B7A9AE20();
      MEMORY[0x1B8CAB750](v28);
    }

    v29 = sub_1B7A9A7E0();
    MEMORY[0x1EEE9AC00](v29);
    (*(v31 + 16))(&v32 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v36);

    sub_1B7A974F0();
    MEMORY[0x1B8CA96D0](v20, v39, v17, v40);

    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    v21 = sub_1B7A97360();
    v22 = MEMORY[0x1EEE9AC00](v21);
    v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = *(v22 + 20);
    v26 = sub_1B7A9A7E0();
    (*(*(v26 - 8) + 16))(&v24[v25], a2, v26);
    *v24 = a6;
    *(v24 + 1) = a7;
    MEMORY[0x1B8CA96D0](v24, a9, v21, a10);
    return sub_1B7975024(v24);
  }
}

uint64_t sub_1B7975024(uint64_t a1)
{
  v2 = sub_1B7A97360();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7975080@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1B7A98710();
  v2 = *MEMORY[0x1E697C8C0];
  v3 = sub_1B7A97CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B79750FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3 == 4)
  {
    v4 = 0;
  }

  else
  {
    v8 = a1;
    v5 = a2;
    v6 = MEMORY[0x1B8CA9180](a3);
    a2 = v5;
    v4 = v6;
    a1 = v8;
  }

  return MEMORY[0x1EEDDBC40](a1, a2, v4 | ((v3 == 4) << 8));
}

uint64_t sub_1B79751D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7A97D10();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  MEMORY[0x1B8CA96D0](v16, a3, v12, v18);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1B797542C()
{
  sub_1B7A9AF80();
  swift_getWitnessTable();
  sub_1B7A96D10();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B797549C(uint64_t a1, id *a2)
{
  result = sub_1B7A9A490();
  *a2 = 0;
  return result;
}

uint64_t sub_1B7975514(uint64_t a1, id *a2)
{
  v3 = sub_1B7A9A4A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B7975594@<X0>(uint64_t *a1@<X8>)
{
  sub_1B7A9A4B0();
  v2 = sub_1B7A9A480();

  *a1 = v2;
  return result;
}

uint64_t sub_1B79755D8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6C290](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7975644@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B7A9A480();

  *a1 = v2;
  return result;
}

uint64_t sub_1B797568C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A9A4B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B79756B8(uint64_t a1)
{
  v2 = sub_1B7975E58(&qword_1EBA45C80, type metadata accessor for Name);
  v3 = sub_1B7975E58(&qword_1EBA45C88, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B7975774()
{
  v0 = sub_1B7A9A4B0();
  v1 = MEMORY[0x1B8CAB770](v0);

  return v1;
}

uint64_t sub_1B79757B0()
{
  sub_1B7A9A4B0();
  sub_1B7A9A500();
}

uint64_t sub_1B7975804()
{
  sub_1B7A9A4B0();
  sub_1B7A9AF80();
  sub_1B7A9A500();
  v0 = sub_1B7A9AFA0();

  return v0;
}

uint64_t sub_1B7975878()
{
  v0 = sub_1B7A9A4B0();
  v2 = v1;
  if (v0 == sub_1B7A9A4B0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B7A9AE80();
  }

  return v5 & 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B7975920()
{
  result = sub_1B7A98700();
  if (v1 <= 0x3F)
  {
    result = sub_1B7A98870();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79759A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v6 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + v4;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_1B7975AFC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + v6;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1B7975D48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7975D68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B7975D9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7975DBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1B7975E58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.impressionable(_:configuration:position:definesParentContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v67 = a3;
  v64 = a7;
  v65 = a8;
  v61 = a4;
  v62 = a5;
  v55 = a2;
  v10 = sub_1B7A96C20();
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = sub_1B7A99670();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v52 - v20;
  v22 = type metadata accessor for ImpressionableViewModifier(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a6;
  v25 = sub_1B7A97590();
  v58 = *(v25 - 8);
  v59 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v56 = &v52 - v26;
  v66 = a1;
  sub_1B7957820(a1, v21, &qword_1EBA45C90);
  if ((*(v16 + 48))(v21, 1, v15) == 1)
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v52 = *(v16 + 32);
    v53 = v18;
    v52(v18, v21, v15);
    sub_1B7A9A760();
    sub_1B7A9A750();
    sub_1B7A9A710();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA8);
    v27 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B7A9C180;
    v54 = v28;
    v52((v28 + v27), v53, v15);
  }

  v29 = v22[5];
  v30 = sub_1B7A99A20();
  (*(*(v30 - 8) + 16))(&v24[v29], v55, v30);
  v31 = &v24[v22[8]];
  *v31 = swift_getKeyPath();
  *(v31 + 1) = 0;
  *(v31 + 8) = 0;
  v32 = v22[9];
  *&v24[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v33 = &v24[v22[10]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = &v24[v22[11]];
  v70 = 0;
  sub_1B7A986C0();
  v35 = v72;
  *v34 = v71;
  *(v34 + 1) = v35;
  sub_1B7A96C10();
  v36 = v60;
  v37 = *(v60 + 16);
  v38 = v57;
  v37(v57, v14, v10);
  sub_1B7A986C0();
  v39 = *(v36 + 8);
  v39(v14, v10);
  sub_1B7A96C10();
  v37(v38, v14, v10);
  sub_1B7A986C0();
  v39(v14, v10);
  v40 = v22[14];
  *&v24[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0);
  swift_storeEnumTagMultiPayload();
  *v24 = v54;
  v41 = &v24[v22[6]];
  v42 = v67;
  *v41 = v67;
  v43 = v62;
  v44 = v61 & 1;
  v41[8] = v61 & 1;
  v24[v22[7]] = v43 & 1;
  v45 = v56;
  v46 = v22;
  v47 = v64;
  MEMORY[0x1B8CA96D0](v24, v63, v46, v64);
  sub_1B797C6D4(v24, type metadata accessor for ImpressionableViewModifier);
  v48 = sub_1B797C7FC(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier);
  v68 = v47;
  v69 = v48;
  v49 = v59;
  WitnessTable = swift_getWitnessTable();
  View.impressionableClickLocation(impressionMetrics:position:)(v66, v42, v44, v49, WitnessTable);
  return (*(v58 + 8))(v45, v49);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t View.impressionableOpaqueContainer(_:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v29[1] = a5;
  v30 = a3;
  v29[0] = a1;
  v6 = sub_1B7A96C20();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v13 = type metadata accessor for ImpressionableViewModifier(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 20);
  v18 = sub_1B7A99A20();
  (*(*(v18 - 8) + 16))(&v15[v17], a2, v18);
  v19 = &v15[v13[8]];
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  *(v19 + 8) = 0;
  v20 = v13[9];
  *&v15[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98);
  swift_storeEnumTagMultiPayload();
  v21 = &v15[v13[10]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v15[v13[11]];
  v32 = 0;
  sub_1B7A986C0();
  v23 = v34;
  *v22 = v33;
  *(v22 + 1) = v23;
  sub_1B7A96C10();
  v24 = *(v7 + 16);
  v24(v9, v12, v6);
  sub_1B7A986C0();
  v25 = *(v7 + 8);
  v25(v12, v6);
  sub_1B7A96C10();
  v24(v9, v12, v6);
  sub_1B7A986C0();
  v25(v12, v6);
  v26 = v13[14];
  *&v15[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0);
  swift_storeEnumTagMultiPayload();
  *v15 = v29[0];
  v27 = &v15[v13[6]];
  *v27 = 0;
  v27[8] = 1;
  v15[v13[7]] = 0;

  MEMORY[0x1B8CA96D0](v15, v30, v13, v31);
  return sub_1B797C6D4(v15, type metadata accessor for ImpressionableViewModifier);
}

uint64_t View.impressionable(_:configuration:position:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9A370();
  View.impressionable(_:configuration:position:definesParentContext:)(v16, a2, a3, a4 & 1, 0, a5, a6, a7);
  return sub_1B7957888(v16, &qword_1EBA45C90);
}

uint64_t View.impressionable<A>(_:configuration:position:definesParentContext:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v17 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - v14;
  sub_1B7A9A370();
  View.impressionable(_:configuration:position:definesParentContext:)(v15, a1, a2, a3 & 1, a4, a5, v17, a7);
  return sub_1B7957888(v15, &qword_1EBA45C90);
}

uint64_t View.impressionable(_:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9A370();
  View.impressionable(_:configuration:position:definesParentContext:)(v12, a2, 0, 1, 0, a3, a4, a5);
  return sub_1B7957888(v12, &qword_1EBA45C90);
}

uint64_t View.impressionable<A>(_:configuration:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1B7A9A370();
  View.impressionable(_:configuration:position:definesParentContext:)(v10, a1, 0, 1, 0, a2, a3, a4);
  return sub_1B7957888(v10, &qword_1EBA45C90);
}

uint64_t View.impressionable(_:minimumPercentVisible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B7A99A20();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  sub_1B7A999F0();
  sub_1B7A999D0();
  v15 = *(v9 + 8);
  v15(v11, v8);
  View.impressionable(_:configuration:position:definesParentContext:)(a1, v14, 0, 1, 0, a2, a3, a4);
  return (v15)(v14, v8);
}

double sub_1B7976F94@<D0>(uint64_t a1@<X8>)
{
  sub_1B797E898();
  sub_1B7A97890();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1B7976FEC(uint64_t *a1)
{
  sub_1B797DEF0(*a1, a1[1]);
  sub_1B797E898();
  return sub_1B7A978A0();
}

uint64_t sub_1B7977088(uint64_t a1)
{
  v2 = sub_1B7A99900();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_1B797E844();
  sub_1B7A978A0();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1B79771CC()
{
  sub_1B797E7F0();

  return sub_1B7A97890();
}

uint64_t sub_1B7977254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1B7957820(a1, &v9 - v6, &qword_1EBA45D18);
  sub_1B7957820(v7, v4, &qword_1EBA45D18);
  sub_1B797E7F0();
  sub_1B7A978A0();
  return sub_1B7957888(v7, &qword_1EBA45D18);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B797739C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a1;
  v192 = a2;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D20);
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v147 - v3;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D28);
  MEMORY[0x1EEE9AC00](v180);
  v148 = &v147 - v4;
  v163 = sub_1B7A99DB0();
  v183 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v149 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D30);
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v147 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v150 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v165 = &v147 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v182 = &v147 - v12;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D40);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v147 - v13;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D48);
  MEMORY[0x1EEE9AC00](v184);
  v186 = &v147 - v14;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D50);
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v147 - v15;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D58);
  MEMORY[0x1EEE9AC00](v185);
  v179 = &v147 - v16;
  v157 = sub_1B7A97880();
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D60);
  MEMORY[0x1EEE9AC00](v174);
  v196 = &v147 - v18;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D68);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v147 - v19;
  v197 = type metadata accessor for ImpressionableViewModifier(0);
  v171 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v172 = v20;
  v173 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1B7A96C20();
  v169 = *(v170 - 1);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D70);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v147 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v167 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v166 = &v147 - v26;
  v195 = sub_1B7A996F0();
  v188 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v193 = v27;
  v194 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v198 = &v147 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D78);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v147 - v32;
  v34 = sub_1B7A99900();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v151 = &v147 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v147 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D80);
  MEMORY[0x1EEE9AC00](v43);
  v187 = &v147 - v44;
  if (!*(*v2 + 16))
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D90);
    (*(*(v55 - 8) + 16))(v191, v189, v55);
    swift_storeEnumTagMultiPayload();
    sub_1B797D494();
    sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90);
    return sub_1B7A97B30();
  }

  v164 = v43;
  sub_1B797C0F4(&qword_1EBA45C98, MEMORY[0x1E69AB2B8], v42);
  sub_1B7A99890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D88);
  sub_1B7A99910();
  (*(v31 + 8))(v33, v30);
  v45 = *(v35 + 8);
  v45(v42, v34);
  v46 = v34;
  if (v200)
  {
    v183 = v200;
    v182 = v201;
    v47 = v197;
    v48 = *(v197 + 20);
    v181 = v2;
    v162 = v48;
    v165 = sub_1B7A99A10();
    v163 = v49;
    v50 = *(v47 + 28);
    v51 = v2 + *(v47 + 24);
    v161 = *v51;
    LODWORD(v160) = *(v51 + 8);
    if (*(v2 + v50) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
      v52 = v166;
      sub_1B7A986D0();
      v53 = v169;
      v54 = v170;
      (*(v169 + 56))(v52, 0, 1, v170);
    }

    else
    {
      v69 = v151;
      sub_1B797C0F4(&qword_1EBA45C98, MEMORY[0x1E69AB2B8], v151);
      v70 = v152;
      sub_1B7A998B0();
      v52 = v166;
      v54 = v170;
      sub_1B7A99920();
      (*(v153 + 8))(v70, v154);
      v45(v69, v46);
      v53 = v169;
      if ((*(v169 + 48))(v52, 1, v54) == 1)
      {
        sub_1B7957888(v52, &qword_1EBA45D18);
        v166 = 0;
LABEL_12:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8);
        v71 = v168;
        sub_1B7A986D0();
        sub_1B7A96C00();
        v72 = *(v53 + 8);
        v72(v71, v54);
        v73 = v167;
        sub_1B797BEF0(&qword_1EBA45CA0, &qword_1EBA45D18, v167);
        if ((*(v53 + 48))(v73, 1, v54) == 1)
        {
          sub_1B7957888(v73, &qword_1EBA45D18);
        }

        else
        {
          sub_1B7A96C00();
          v72(v73, v54);
        }

        v74 = v198;
        sub_1B7A996E0();
        v75 = v181;
        v76 = v173;
        sub_1B797E54C(v181, v173, type metadata accessor for ImpressionableViewModifier);
        v77 = v188;
        v78 = *(v188 + 16);
        v169 = v188 + 16;
        v170 = v78;
        v80 = v194;
        v79 = v195;
        (v78)(v194, v74, v195);
        v81 = *(v171 + 80);
        v82 = (v81 + 16) & ~v81;
        v160 = v82 + v172;
        v165 = v81 | 7;
        v171 = *(v77 + 80);
        v83 = (v82 + v172 + 7) & 0xFFFFFFFFFFFFFFF8;
        v172 = v83;
        v84 = (v171 + v83 + 16) & ~v171;
        v166 = v84;
        v85 = swift_allocObject();
        sub_1B797E5B4(v76, v85 + v82, type metadata accessor for ImpressionableViewModifier);
        v86 = (v85 + v83);
        v87 = v182;
        *v86 = v183;
        v86[1] = v87;
        v88 = *(v77 + 32);
        v167 = v77 + 32;
        v168 = v88;
        v163 = v85;
        (v88)(v85 + v84, v80, v79);
        KeyPath = swift_getKeyPath();
        sub_1B797E54C(v75, v76, type metadata accessor for ImpressionableViewModifier);
        v90 = swift_allocObject();
        sub_1B797E5B4(v76, v90 + v82, type metadata accessor for ImpressionableViewModifier);
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D90);
        v92 = *(*(v91 - 8) + 16);
        v93 = v196;
        v94 = v189;
        v189 = v91;
        v92(v196, v94);
        v95 = &v93[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DB0) + 36)];
        *v95 = KeyPath;
        v95[1] = sub_1B797D6D8;
        v95[2] = v90;
        v96 = swift_getKeyPath();
        sub_1B797E54C(v75, v76, type metadata accessor for ImpressionableViewModifier);
        v97 = swift_allocObject();
        v98 = v82;
        v161 = v82;
        sub_1B797E5B4(v76, v97 + v82, type metadata accessor for ImpressionableViewModifier);
        v99 = &v93[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DA8) + 36)];
        *v99 = v96;
        v99[1] = sub_1B797D9B4;
        v99[2] = v97;
        v100 = v183;
        swift_unknownObjectRetain();
        sub_1B7A999C0();
        v102 = v101;
        v103 = v75;
        sub_1B797E54C(v75, v76, type metadata accessor for ImpressionableViewModifier);
        v104 = v194;
        (v170)(v194, v198, v79);
        v105 = v166;
        v106 = swift_allocObject();
        sub_1B797E5B4(v76, v106 + v98, type metadata accessor for ImpressionableViewModifier);
        v107 = (v106 + v172);
        v108 = v182;
        *v107 = v100;
        v107[1] = v108;
        (v168)(&v105[v106], v104, v79);
        type metadata accessor for _ImpressionableGeometryChange.VisibleState();
        v109 = swift_allocObject();
        *(v109 + 16) = 2;
        v199 = v109;
        swift_unknownObjectRetain();
        sub_1B7A986C0();
        v110 = v103;
        v112 = v200;
        v111 = v201;
        type metadata accessor for ListContainerGeometry(0);
        sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry);
        v113 = sub_1B7A970F0();
        LOBYTE(v90) = v114;
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DA0);
        v116 = v196;
        v117 = &v196[*(v115 + 36)];
        *v117 = v102;
        *(v117 + 1) = sub_1B797DDC0;
        *(v117 + 2) = v106;
        v118 = v100;
        *(v117 + 3) = v112;
        *(v117 + 4) = v111;
        *(v117 + 5) = v113;
        v117[48] = v90 & 1;
        sub_1B797E54C(v110, v76, type metadata accessor for ImpressionableViewModifier);
        v119 = v194;
        v120 = v195;
        (v170)(v194, v198, v195);
        v121 = v166;
        v122 = swift_allocObject();
        sub_1B797E5B4(v76, v122 + v161, type metadata accessor for ImpressionableViewModifier);
        v123 = (v122 + v172);
        v124 = v182;
        *v123 = v118;
        v123[1] = v124;
        (v168)(&v121[v122], v119, v120);
        v125 = swift_getKeyPath();
        v126 = &v116[*(v174 + 36)];
        *v126 = sub_1B797DDD8;
        *(v126 + 1) = v122;
        *(v126 + 2) = v125;
        *(v126 + 3) = 0;
        *(v126 + 16) = 0;
        v127 = v110 + *(v197 + 40);
        v128 = *v127;
        if (*(v127 + 8) == 1)
        {
          swift_unknownObjectRetain();
          j__swift_retain(v128);
        }

        else
        {
          swift_unknownObjectRetain();
          j__swift_retain(v128);
          sub_1B7A9AA10();
          v129 = sub_1B7A97E70();
          sub_1B7A96D30();

          v130 = v155;
          sub_1B7A97870();
          swift_getAtKeyPath();
          j__swift_release();
          (*(v156 + 8))(v130, v157);
          v128 = v200;
        }

        v68 = v191;
        v67 = v187;
        if (v128)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
        }

        else
        {
          Strong = 0;
        }

        v132 = v175;
        v133 = v196;
        sub_1B797A258(Strong, sub_1B797D5F0, v163, v175);

        sub_1B7957888(v133, &qword_1EBA45D60);
        sub_1B7957820(v132, v178, &qword_1EBA45D68);
        swift_storeEnumTagMultiPayload();
        sub_1B797CFA0();
        sub_1B797EC34(&qword_1EDC0F640, &qword_1EBA45D28);
        v134 = v179;
        sub_1B7A97B30();
        sub_1B7957820(v134, v186, &qword_1EBA45D58);
        swift_storeEnumTagMultiPayload();
        sub_1B797CEE8();
        sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90);
        sub_1B7A97B30();
        swift_unknownObjectRelease();

        sub_1B7957888(v134, &qword_1EBA45D58);
        sub_1B7957888(v132, &qword_1EBA45D68);
        (*(v188 + 8))(v198, v195);
        goto LABEL_28;
      }
    }

    v166 = sub_1B7A96C00();
    (*(v53 + 8))(v52, v54);
    goto LABEL_12;
  }

  sub_1B797C0F4(&qword_1EBA45C98, MEMORY[0x1E69AB2B8], v37);
  v57 = v158;
  sub_1B7A99880();
  v58 = v182;
  v59 = v163;
  sub_1B7A99920();
  (*(v159 + 8))(v57, v160);
  v45(v37, v46);
  v60 = v183;
  v61 = v165;
  (*(v183 + 104))(v165, *MEMORY[0x1E69AB4F8], v59);
  (*(v60 + 56))(v61, 0, 1, v59);
  v62 = *(v161 + 48);
  v63 = v162;
  sub_1B7957820(v58, v162, &qword_1EBA45D38);
  sub_1B7957820(v61, v63 + v62, &qword_1EBA45D38);
  v64 = *(v60 + 48);
  if (v64(v63, 1, v59) != 1)
  {
    v135 = v150;
    sub_1B7957820(v63, v150, &qword_1EBA45D38);
    v136 = v64(v63 + v62, 1, v59);
    v67 = v187;
    if (v136 != 1)
    {
      v137 = v183;
      v138 = v63 + v62;
      v139 = v149;
      (*(v183 + 32))(v149, v138, v59);
      sub_1B797C7FC(&qword_1EBA45DD0, MEMORY[0x1E69AB508]);
      LODWORD(v198) = sub_1B7A9A470();
      v140 = *(v137 + 8);
      v140(v139, v59);
      sub_1B7957888(v165, &qword_1EBA45D38);
      sub_1B7957888(v182, &qword_1EBA45D38);
      v140(v135, v59);
      sub_1B7957888(v63, &qword_1EBA45D38);
      v66 = v189;
      v68 = v191;
      if ((v198 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    sub_1B7957888(v165, &qword_1EBA45D38);
    sub_1B7957888(v182, &qword_1EBA45D38);
    (*(v183 + 8))(v135, v59);
    v66 = v189;
    v68 = v191;
LABEL_24:
    sub_1B7957888(v63, &qword_1EBA45D30);
    goto LABEL_27;
  }

  sub_1B7957888(v61, &qword_1EBA45D38);
  sub_1B7957888(v58, &qword_1EBA45D38);
  v65 = v64(v63 + v62, 1, v59);
  v66 = v189;
  v67 = v187;
  v68 = v191;
  if (v65 != 1)
  {
    goto LABEL_24;
  }

  sub_1B7957888(v63, &qword_1EBA45D38);
LABEL_26:
  sub_1B797D54C();
  if ((sub_1B7A9AB10() & 1) == 0)
  {
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D90);
    v143 = v148;
    (*(*(v142 - 8) + 16))(v148, v66, v142);
    v144 = swift_allocObject();
    *(v144 + 16) = 0xD00000000000002CLL;
    *(v144 + 24) = 0x80000001B7AC4DB0;
    v145 = (v143 + *(v180 + 52));
    *v145 = sub_1B797D598;
    v145[1] = v144;
    sub_1B7957820(v143, v178, &qword_1EBA45D28);
    swift_storeEnumTagMultiPayload();
    sub_1B797CFA0();
    sub_1B797EC34(&qword_1EDC0F640, &qword_1EBA45D28);
    v146 = v179;
    sub_1B7A97B30();
    sub_1B7957820(v146, v186, &qword_1EBA45D58);
    swift_storeEnumTagMultiPayload();
    sub_1B797CEE8();
    sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90);
    v67 = v187;
    sub_1B7A97B30();
    sub_1B7957888(v146, &qword_1EBA45D58);
    sub_1B7957888(v143, &qword_1EBA45D28);
    goto LABEL_28;
  }

LABEL_27:
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D90);
  (*(*(v141 - 8) + 16))(v186, v66, v141);
  swift_storeEnumTagMultiPayload();
  sub_1B797CEE8();
  sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90);
  sub_1B7A97B30();
LABEL_28:
  sub_1B7957820(v67, v68, &qword_1EBA45D80);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D90);
  sub_1B797D494();
  sub_1B797EC34(&qword_1EDC0EB68, &qword_1EBA45D90);
  sub_1B7A97B30();
  return sub_1B7957888(v67, &qword_1EBA45D80);
}