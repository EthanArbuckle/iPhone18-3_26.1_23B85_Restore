uint64_t TTRUndoContext.registerUndo(forEditing:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  TTRUndoContext.registerUndo(forEditing:action:)(&v11, sub_21D3DD6C4, v9, a4, a5);
}

uint64_t sub_21D3DCA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D0D32E4(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_21D0D0FD0(v7, v5 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  swift_allocObject();

  return sub_21DBF911C();
}

uint64_t sub_21D3DCB48(uint64_t (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  a3(a5);
  v7 = 0;
  v8 = 0;
  return a1(&v7);
}

uint64_t sub_21D3DCBE4(uint64_t *a1, id a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if ((a3 & 1) == 0)
  {
    result = [a2 canRedo];
    if ((result & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = [a2 canUndo];
  if (result)
  {
LABEL_5:
    v16 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = a3 & 1;
    *(v13 + 24) = a2;
    *(v13 + 32) = a4;
    *(v13 + 40) = v11;
    v14 = a4;
    sub_21DBF8E0C();
    v15 = a2;
    TTRUndoContext.registerUndo(forEditing:action:)(&v16, sub_21D3DDF6C, v13, a5, a6);
  }

  return result;
}

uint64_t sub_21D3DCCD4(void *a1, char a2, void *a3, void *a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (a2)
  {
    v13 = sub_21DBBF8F8(a4, v12);
  }

  else
  {
    v13 = sub_21DBBF928(a4, v12);
  }

  v14 = v13;

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = a5;
  sub_21D3DCBE4(&v16, a3);
  return v14;
}

uint64_t TTRBasicUndoContext.undoRegistration(forEditing:action:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v8 = MEMORY[0x277D84F90];
  *(a4 + 32) = 0;
  *(a4 + 40) = v8;
  sub_21DBF8E0C();
  sub_21D3DD654(v10, a4);

  *(a4 + 40) = v7;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
}

uint64_t TTRBasicUndoContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D3DCE9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v8 = MEMORY[0x277D84F90];
  *(a4 + 32) = 0;
  *(a4 + 40) = v8;
  sub_21DBF8E0C();
  sub_21D3DD654(v10, a4);

  *(a4 + 40) = v7;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
}

uint64_t sub_21D3DCF60()
{
  sub_21D0CF7E0(v0 + 24, &qword_27CE5BDD0);

  return swift_deallocClassInstance();
}

uint64_t sub_21D3DCFB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *a1;
  sub_21D3DD5E4(v8 + 24, v12);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v10 = MEMORY[0x277D84F90];
  *(a4 + 32) = 0;
  *(a4 + 40) = v10;
  sub_21DBF8E0C();
  sub_21D3DD654(v12, a4);

  *(a4 + 40) = v9;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
}

uint64_t TTRUndoNavigationEditingTarget.init<A>(remObjects:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9[5] = a1;
  v9[2] = a2;
  v4 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_21D0E5014(sub_21D3DD6CC, v9, v4, &type metadata for TTRUndoNavigationEditingTarget.ItemID, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  *a3 = v7;
  return result;
}

uint64_t sub_21D3DD0F4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 remObjectID];
  a3[3] = sub_21D0D8CF0(0, &qword_280D17880);
  *a3 = v5;
  result = swift_getMetatypeMetadata();
  a3[7] = result;
  a3[4] = a2;
  return result;
}

uint64_t TTRUndoNavigationEditingTarget.init<A>(remObject:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_21D23CE60(a2, a2);
  swift_allocObject();
  v6 = sub_21DBFA60C();
  *v7 = a1;
  sub_21D23C8B4();
  result = TTRUndoNavigationEditingTarget.init<A>(remObjects:)(v6, a2, &v9);
  *a3 = v9;
  return result;
}

uint64_t TTRUndoNavigationEditingTarget.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  result = sub_21DBFA6DC();
  if (result)
  {
    v19 = v2;
    v6 = *v2;
    for (i = 4; ; ++i)
    {
      v8 = i - 4;
      v9 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v9)
      {
        v10 = *(a1 + 8 * i);
        result = swift_unknownObjectRetain();
        v11 = i - 3;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = sub_21DBFBF7C();
        v10 = result;
        v11 = i - 3;
        if (__OFADD__(v8, 1))
        {
LABEL_15:
          __break(1u);
          return result;
        }
      }

      v12 = [v10 remObjectID];
      v21[3] = sub_21D0D8CF0(0, &qword_280D17880);
      v21[0] = v12;
      v21[7] = swift_getMetatypeMetadata();
      v21[4] = a2;
      sub_21D22BFF0(v21, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21D2116C4(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_21D2116C4((v13 > 1), v14 + 1, 1, v6);
      }

      swift_unknownObjectRelease();
      sub_21D22C04C(v21);
      *(v6 + 2) = v14 + 1;
      v15 = &v6[64 * v14];
      v16 = v20[3];
      v17 = v20[0];
      v18 = v20[1];
      *(v15 + 4) = v20[2];
      *(v15 + 5) = v16;
      *(v15 + 2) = v17;
      *(v15 + 3) = v18;
      result = sub_21DBFA6DC();
      if (v11 == result)
      {
        *v19 = v6;
        return result;
      }
    }
  }

  return result;
}

{
  sub_21D23CE60(a2, a2);
  swift_initStackObject();
  v4 = sub_21DBFA60C();
  *v5 = a1;
  sub_21D23C8B4();
  v6 = v4;
  swift_unknownObjectRetain();
  TTRUndoNavigationEditingTarget.append<A>(_:)(v6, a2);
}

double TTRUndoNavigationEditingTarget.append(_:)(void *a1)
{
  v2 = [a1 objectID];
  v16[3] = sub_21D0D8CF0(0, &qword_280D17880);
  v16[0] = v2;
  v3 = sub_21D0D8CF0(0, &qword_280D17860);
  v16[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
  v16[4] = v3;
  sub_21D22BFF0(v16, v13);
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_21D2116C4(0, *(v4 + 2) + 1, 1, v4);
    *v1 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_21D2116C4((v6 > 1), v7 + 1, 1, v4);
    *v1 = v4;
  }

  sub_21D22C04C(v16);
  *(v4 + 2) = v7 + 1;
  v8 = &v4[64 * v7];
  result = *&v14;
  v10 = v15;
  v11 = v13[0];
  v12 = v13[1];
  *(v8 + 4) = v14;
  *(v8 + 5) = v10;
  *(v8 + 2) = v11;
  *(v8 + 3) = v12;
  *v1 = v4;
  return result;
}

uint64_t sub_21D3DD5E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D3DD654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for TTRUndoNavigationEditingTarget.ItemID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  (**(v5 - 8))(a1 + 32, a2 + 32);
  return a1;
}

uint64_t *assignWithCopy for TTRUndoNavigationEditingTarget.ItemID(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2);
  __swift_assign_boxed_opaque_existential_0(a1 + 4, a2 + 4);
  return a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

_OWORD *assignWithTake for TTRUndoNavigationEditingTarget.ItemID(_OWORD *a1, _OWORD *a2)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  __swift_destroy_boxed_opaque_existential_0((a1 + 2));
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRUndoNavigationEditingTarget.ItemID(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRUndoNavigationEditingTarget.ItemID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRUndoActionNotification(uint64_t a1)
{
  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(a1 + 8);
  }
}

void *initializeWithCopy for TTRUndoActionNotification(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = a1 + 1;
  v6 = *(a2 + 32);
  v7 = v4;
  if (v6)
  {
    v8 = *(a2 + 40);
    a1[4] = v6;
    a1[5] = v8;
    (**(v6 - 8))(v5, a2 + 8, v6);
  }

  else
  {
    v9 = *(a2 + 24);
    *v5 = *(a2 + 8);
    *(v5 + 1) = v9;
    v5[4] = *(a2 + 40);
  }

  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  a1[6] = v10;
  a1[7] = v11;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRUndoActionNotification(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v7)
    {
      *(a1 + 32) = v7;
      *(a1 + 40) = *(a2 + 40);
      (**(v7 - 8))(a1 + 8, a2 + 8);
      goto LABEL_8;
    }

LABEL_7:
    v9 = *(a2 + 8);
    v10 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v10;
    *(a1 + 8) = v9;
    goto LABEL_8;
  }

  v8 = (a1 + 8);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v8, (a2 + 8));
LABEL_8:
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for TTRUndoActionNotification(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(a1 + 8);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRUndoActionNotification(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRUndoActionNotification(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRUndoRegistration(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t initializeWithCopy for TTRUndoRegistration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v7;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRUndoRegistration(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v5;
    *(a1 + 16) = v6;
    goto LABEL_8;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
LABEL_8:
  *(a1 + 40) = *(a2 + 5);
  sub_21DBF8E0C();

  v7 = *(a2 + 7);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = v7;

  return a1;
}

uint64_t assignWithTake for TTRUndoRegistration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRUndoRegistration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRUndoRegistration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::String __swiftcall REMRemindersListDataView.SortingStyle.labelTextForSortingStyle()()
{
  v1 = v0;
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D45400])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D45428])
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_6:
      v8 = sub_21DBF516C();
      v10 = v9;
      (*(v3 + 8))(v6, v2);
      goto LABEL_7;
    }

LABEL_20:
    swift_once();
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x277D45408])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D45410])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D45420])
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    if (v7 != *MEMORY[0x277D45418])
    {
      v11 = sub_21DBFC63C();
      __break(1u);
      goto LABEL_23;
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF516C();
    v10 = v13;
  }

LABEL_7:
  v11 = v8;
  v12 = v10;
LABEL_23:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall REMRemindersListDataView.SortingStyle.labelTextForSortingDirection()()
{
  v1 = v0;
  v2 = sub_21DBF733C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = sub_21DBF70DC();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277D45400])
  {
    (*(v18 + 96))(v21, v17);
    (*(v3 + 32))(v16, v21, v2);
    (*(v3 + 104))(v13, *MEMORY[0x277D454E8], v2);
    sub_21D3DEE8C();
    sub_21DBFA5BC();
    sub_21DBFA5BC();
    v23 = *(v3 + 8);
    v23(v13, v2);
    if (v41 == v40)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_10;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_10:
      v25 = sub_21DBF516C();
      v27 = v26;
      v23(v16, v2);
LABEL_30:
      v35 = v25;
      v36 = v27;
      goto LABEL_41;
    }

    swift_once();
    goto LABEL_10;
  }

  if (v22 == *MEMORY[0x277D45428])
  {
    (*(v18 + 96))(v21, v17);
    (*(v3 + 32))(v7, v21, v2);
    (*(v3 + 104))(v13, *MEMORY[0x277D454E8], v2);
    sub_21D3DEE8C();
    sub_21DBFA5BC();
    sub_21DBFA5BC();
    v24 = *(v3 + 8);
    v24(v13, v2);
    if (v41 == v40)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_16;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_16:
      v25 = sub_21DBF516C();
      v27 = v29;
      v30 = v7;
LABEL_17:
      v24(v30, v2);
      goto LABEL_30;
    }

    swift_once();
    goto LABEL_16;
  }

  if (v22 == *MEMORY[0x277D45408])
  {
    (*(v18 + 96))(v21, v17);
    (*(v3 + 32))(v10, v21, v2);
    (*(v3 + 104))(v13, *MEMORY[0x277D454E8], v2);
    sub_21D3DEE8C();
    sub_21DBFA5BC();
    sub_21DBFA5BC();
    v28 = *(v3 + 8);
    v28(v13, v2);
    if (v41 == v40)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_23;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_23:
      v25 = sub_21DBF516C();
      v27 = v32;
      v28(v10, v2);
      goto LABEL_30;
    }

    swift_once();
    goto LABEL_23;
  }

  if (v22 == *MEMORY[0x277D45410])
  {
    (*(v18 + 96))(v21, v17);
    v31 = v39;
    (*(v3 + 32))(v39, v21, v2);
    (*(v3 + 104))(v13, *MEMORY[0x277D454E8], v2);
    sub_21D3DEE8C();
    sub_21DBFA5BC();
    sub_21DBFA5BC();
    v24 = *(v3 + 8);
    v24(v13, v2);
    if (v41 == v40)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_32;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_32:
      v25 = sub_21DBF516C();
      v27 = v34;
      v30 = v31;
      goto LABEL_17;
    }

    swift_once();
    goto LABEL_32;
  }

  if (v22 == *MEMORY[0x277D45420] || v22 == *MEMORY[0x277D45418])
  {
    v25 = 0;
    v27 = 0xE000000000000000;
    goto LABEL_30;
  }

  v35 = sub_21DBFC63C();
  __break(1u);
LABEL_41:
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

unint64_t sub_21D3DEE8C()
{
  result = qword_27CE5BDE8;
  if (!qword_27CE5BDE8)
  {
    sub_21DBF733C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BDE8);
  }

  return result;
}

Swift::Int __swiftcall TTRCounterBasedIdentifierGenerator.allocID()()
{
  result = *(v0 + 16);
  *(v0 + 16) = result + 1;
  return result;
}

uint64_t TTRCounterBasedIdentifierGenerator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_21D3DEF70(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v4 = v1 + 64;
    result = sub_21DBFBCCC();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      v1 = v19;
      sub_21DBFC04C();
      result = sub_21DBFBFFC();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_21D15746C(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_21D15746C(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21D3DF184(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21D830500(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21D3E5458(v6);
  return sub_21DBFBFFC();
}

uint64_t sub_21D3DF200()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0C878);
  v1 = __swift_project_value_buffer(v0, qword_280D0C878);
  if (qword_280D0C8B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRAutoCompleteReminderProvider.__allocating_init(store:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 120) = xmmword_21DC14FC0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t TTRAutoCompleteReminderProvider.init(store:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = xmmword_21DC14FC0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_21D3DF368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDF0);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDF8);
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v9 = sub_21DBF7E3C();
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v10 = sub_21DBF624C();
  v6[29] = v10;
  v6[30] = *(v10 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = type metadata accessor for TTRAutoCompleteReminderListScope();
  v6[35] = swift_task_alloc();
  v11 = sub_21DBF563C();
  v6[36] = v11;
  v6[37] = *(v11 - 8);
  v6[38] = swift_task_alloc();
  v12 = sub_21DBF5A0C();
  v6[39] = v12;
  v6[40] = *(v12 - 8);
  v6[41] = swift_task_alloc();
  v13 = sub_21DBF5A2C();
  v6[42] = v13;
  v6[43] = *(v13 - 8);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  v6[45] = swift_task_alloc();
  v14 = sub_21DBFC0AC();
  v6[46] = v14;
  v6[47] = *(v14 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v15 = sub_21DBFC0CC();
  v6[50] = v15;
  v6[51] = *(v15 - 8);
  v6[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D3DF838, v5, 0);
}

uint64_t sub_21D3DF838()
{
  v1 = v0[16];
  sub_21DBFC0BC();
  sub_21DBFC08C();
  v2 = *(v1 + 136);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query;
    v4 = *&v2[OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query];
    v5 = v2;
    if (v4)
    {
      [v4 cancel];
      v6 = *&v2[v3];
    }

    else
    {
      v6 = 0;
    }

    *&v2[v3] = 0;

    v7 = *(v1 + 136);
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[15];
  v9 = v0[14];
  *(v1 + 136) = 0;

  v10 = sub_21DBFA28C();
  if (v10 < sub_21D3E24FC(v9, v8))
  {
    v12 = v0[51];
    v11 = v0[52];
    v13 = v0[50];
    (*(v0[47] + 8))(v0[49], v0[46]);
    (*(v12 + 8))(v11, v13);

    v14 = v0[1];
    v15 = MEMORY[0x277D84F90];

    return v14(v15);
  }

  v147 = v1;
  v17 = v0[44];
  v18 = v0[43];
  v19 = v0[40];
  v20 = v0[41];
  v22 = v0[38];
  v21 = v0[39];
  v23 = v0[36];
  v148 = v0[37];
  v149 = v0[42];
  v153 = v0[45];
  v159 = v0[35];
  v24 = v0[30];
  v155 = v0[29];
  v156 = v0[13];
  v150 = v0[11];
  v151 = v0[12];
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  (*(v19 + 104))(v20, *MEMORY[0x277CC9998], v21);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF599C();
  (*(v148 + 8))(v22, v23);
  (*(v19 + 8))(v20, v21);
  (*(v18 + 8))(v17, v149);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C98);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v146 = 2 * v25;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21DC08D20;
  v28 = (v27 + v26);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE08) + 48);
  *v28 = v150;
  v28[1] = v151;
  v30 = *MEMORY[0x277D45270];
  v31 = sub_21DBF672C();
  (*(*(v31 - 8) + 104))(v27 + v26 + v29, v30, v31);
  v32 = *(v24 + 104);
  v32((v27 + v26), *MEMORY[0x277D44EE0], v155);
  v152 = v25;
  v33 = v27 + v26 + v25;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10) + 48);
  sub_21D0D3954(v153, v33, &qword_27CE58D68);
  (*(v148 + 56))(v33 + v34, 1, 1, v23);
  v154 = v32;
  v32(v33, *MEMORY[0x277D44F18], v155);
  sub_21D3E32EC(v156, v159);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21DBF8E0C();
      v44 = v27;
    }

    else
    {
      v59 = *(v0[16] + 112);
      v0[10] = 0;
      sub_21DBF8E0C();
      v60 = [v59 fetchActiveCloudKitAccountObjectIDsWithFetchOption:2 error:v0 + 10];
      v61 = v0[10];
      if (v60)
      {
        v62 = v60;
        v63 = v0[33];
        v64 = v0[29];
        v65 = v0[30];
        sub_21D0D8CF0(0, &qword_280D17880);
        v66 = v26;
        v67 = sub_21DBFA5EC();
        v68 = v61;

        *v63 = v67;
        v154(v63, *MEMORY[0x277D44F78], v64);
        v44 = sub_21D21303C(1uLL, 3, 1, v27);
        *(v44 + 16) = 3;
        (*(v65 + 32))(v44 + v66 + v146, v63, v64);
      }

      else
      {
        v96 = v61;
        v97 = sub_21DBF52DC();

        swift_willThrow();
        if (qword_280D0C870 != -1)
        {
          swift_once();
        }

        v98 = sub_21DBF84BC();
        __swift_project_value_buffer(v98, qword_280D0C878);
        v99 = v97;
        v100 = sub_21DBF84AC();
        v101 = sub_21DBFAEBC();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *v102 = 138412290;
          v104 = v97;
          v105 = _swift_stdlib_bridgeErrorToNSError();
          *(v102 + 4) = v105;
          *v103 = v105;
          _os_log_impl(&dword_21D0C9000, v100, v101, "TTRAutoCompleteReminderProvider fetchActiveCKAccounts error: %@", v102, 0xCu);
          sub_21D0CF7E0(v103, &unk_27CE60070);
          MEMORY[0x223D46520](v103, -1, -1);
          MEMORY[0x223D46520](v102, -1, -1);
        }

        else
        {
        }

        v44 = v27;
      }
    }

    goto LABEL_48;
  }

  v160 = v26;
  v161 = v27;
  if (!EnumCaseMultiPayload)
  {
    v36 = v0[33];
    v37 = v0[29];
    v38 = v0[30];
    v39 = *v0[35];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE28) + 48);
    *v36 = v39;
    v41 = *MEMORY[0x277D44F68];
    v42 = sub_21DBF623C();
    (*(*(v42 - 8) + 104))(&v36[v40], v41, v42);
    v154(v36, *MEMORY[0x277D44F30], v37);
    sub_21DBF8E0C();
    v43 = v39;
    v44 = sub_21D21303C(1uLL, 3, 1, v161);

    *(v44 + 16) = 3;
    (*(v38 + 32))(v44 + v160 + v146, v36, v37);
LABEL_48:
    v122 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_21DC08D20;
    *(v123 + 32) = sub_21DBFA16C();
    *(v123 + 40) = v124;
    *(v123 + 48) = sub_21DBFA16C();
    *(v123 + 56) = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE20);
    v126 = sub_21DBF659C();
    v127 = *(v126 - 8);
    v128 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_21DC08D00;
    (*(v127 + 104))(v129 + v128, *MEMORY[0x277D45058], v126);
    v130 = objc_allocWithZone(type metadata accessor for TTRAsyncSearchQueryPerformer());
    v131 = TTRAsyncSearchQueryPerformer.init(attributesToFetch:itemTypes:criteria:)(v123, v129, v44);
    v0[53] = v131;
    v132 = *(v147 + 136);
    *(v147 + 136) = v131;
    v133 = v131;

    TTRAsyncSearchQueryPerformer.search()();
    type metadata accessor for TTRAutoCompleteReminderProvider.ResultCollector();
    inited = swift_initStackObject();
    v0[54] = inited;
    type metadata accessor for TTRAutoCompleteReminderProvider.ResultCollector.InsensitiveDictionary();
    v135 = swift_allocObject();
    v0[55] = v135;
    *(v135 + 16) = MEMORY[0x277D84F98];
    inited[4] = v122;
    inited[5] = v135;
    inited[2] = 10;
    inited[3] = sub_21D3E3350;

    sub_21DBFA9EC();
    v136 = sub_21D3E33A0();
    v0[56] = v136;
    v137 = v0[16];
    v138 = swift_task_alloc();
    v0[57] = v138;
    *v138 = v0;
    v138[1] = sub_21D3E0920;
    v139 = v0[17];

    return MEMORY[0x2822005A8](v0 + 8, v137, v136, v139, v0 + 9);
  }

  v45 = v0[35];
  v46 = v0[33];
  v47 = v0[29];
  v48 = v0[30];
  v49 = v0[27];
  v50 = v0[28];
  v51 = v0[24];
  v157 = v0[23];
  v52 = *v45;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18);
  sub_21D0D523C(v45 + *(v53 + 48), v50, &qword_27CE5BE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_21DC09CF0;
  *(v54 + 32) = v52;
  *v46 = v54;
  v154(v46, *MEMORY[0x277D44F78], v47);
  sub_21DBF8E0C();
  v55 = v52;
  v56 = sub_21D21303C(1uLL, 3, 1, v161);
  *(v56 + 16) = 3;
  v57 = *(v48 + 32);
  v162 = v56;
  v57(v56 + v160 + v146, v46, v47);
  sub_21D0D3954(v50, v49, &qword_27CE5BE00);
  if ((*(v51 + 48))(v49, 1, v157) == 1)
  {
    v58 = v0[27];
    sub_21D0CF7E0(v0[28], &qword_27CE5BE00);

    sub_21D0CF7E0(v58, &qword_27CE5BE00);
    v44 = v162;
    goto LABEL_48;
  }

  v158 = v55;
  v69 = v0[26];
  v70 = v0[24];
  v71 = v0[25];
  v72 = v0[23];
  (*(v70 + 32))(v69, v0[27], v72);
  (*(v70 + 16))(v71, v69, v72);
  if ((*(v70 + 88))(v71, v72) == *MEMORY[0x277D45890])
  {
    v73 = v0[25];
    (*(v0[24] + 96))(v73, v0[23]);
    v75 = *v73;
    v74 = v73[1];
    if (v75 >> 62)
    {
      v76 = sub_21DBFBD7C();
    }

    else
    {
      v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v76)
    {

      if ((v75 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x223D44740](0, v75);
        goto LABEL_27;
      }

      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v77 = *(v75 + 32);
LABEL_27:
        v78 = v77;
        v79 = v0[32];
        v80 = v0[29];

        v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE28) + 48);
        *v79 = v78;
        v82 = *MEMORY[0x277D44F68];
        v83 = sub_21DBF623C();
        (*(*(v83 - 8) + 104))(&v79[v81], v82, v83);
        v154(v79, *MEMORY[0x277D44F30], v80);
        v84 = v162[2];
        v85 = v162[3];
        v86 = v78;
        if (v84 >= v85 >> 1)
        {
          v140 = v86;
          v162 = sub_21D21303C(v85 > 1, v84 + 1, 1, v162);
          v86 = v140;
        }

        v87 = v0[32];
        v89 = v0[28];
        v88 = v0[29];
        v90 = v0[26];
        v91 = v0[23];
        v92 = v0[24];

        (*(v92 + 8))(v90, v91);
        sub_21D0CF7E0(v89, &qword_27CE5BE00);
        v44 = v162;
        v162[2] = v84 + 1;
        v93 = v162 + v160 + v84 * v152;
        v94 = v87;
        v95 = v88;
LABEL_47:
        v57(v93, v94, v95);
        goto LABEL_48;
      }

      __break(1u);
    }

    else
    {

      if (!(v74 >> 62))
      {
        if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_55:
          v141 = v0[28];
          v142 = v0[26];
          v144 = v0[23];
          v143 = v0[24];

          (*(v143 + 8))(v142, v144);
          sub_21D0CF7E0(v141, &qword_27CE5BE00);
          v44 = v162;
          goto LABEL_48;
        }

LABEL_41:
        if ((v74 & 0xC000000000000001) != 0)
        {
          v106 = MEMORY[0x223D44740](0, v74);
        }

        else
        {
          if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v106 = *(v74 + 32);
        }

        v107 = v106;
        v108 = v0[31];
        v109 = v0[29];

        v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE28) + 48);
        *v108 = v107;
        v111 = *MEMORY[0x277D44F60];
        v112 = sub_21DBF623C();
        (*(*(v112 - 8) + 104))(&v108[v110], v111, v112);
        v154(v108, *MEMORY[0x277D44F30], v109);
        v113 = v162[2];
        v114 = v162[3];
        v115 = v107;
        if (v113 >= v114 >> 1)
        {
          v145 = v115;
          v162 = sub_21D21303C(v114 > 1, v113 + 1, 1, v162);
          v115 = v145;
        }

        v116 = v0[31];
        v118 = v0[28];
        v117 = v0[29];
        v119 = v0[26];
        v120 = v0[23];
        v121 = v0[24];

        (*(v121 + 8))(v119, v120);
        sub_21D0CF7E0(v118, &qword_27CE5BE00);
        v44 = v162;
        v162[2] = v113 + 1;
        v93 = v162 + v160 + v113 * v152;
        v94 = v116;
        v95 = v117;
        goto LABEL_47;
      }
    }

    if (!sub_21DBFBD7C())
    {
      goto LABEL_55;
    }

    goto LABEL_41;
  }

  return sub_21DBFC63C();
}

uint64_t sub_21D3E0920()
{
  v2 = *v1;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_21D3E0FCC;
  }

  else
  {
    v4 = sub_21D3E0A68;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21D3E0A68()
{
  v46 = v0;
  v45[1] = *MEMORY[0x277D85DE8];
  if (v0[8])
  {
    sub_21D3E141C(v0[8]);

    v1 = v0[56];
    v2 = v0[16];
    v3 = swift_task_alloc();
    v0[57] = v3;
    *v3 = v0;
    v3[1] = sub_21D3E0920;
    v4 = v0[17];

    return MEMORY[0x2822005A8](v0 + 8, v2, v1, v4, v0 + 9);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    v5 = sub_21D3E2208(3);
    sub_21DBFC08C();
    sub_21DBFC09C();
    if (qword_280D0C870 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0C878);
    swift_bridgeObjectRetain_n();
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAE9C();
    v32 = v5;
    if (os_log_type_enabled(v7, v8))
    {
      log = v7;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v45[0] = v10;
      *v9 = 136315394;
      v11 = sub_21DBFC89C();
      v13 = sub_21D0CDFB4(v11, v12, v45);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2048;
      if (v5 >> 62)
      {
        v14 = sub_21DBFBD7C();
      }

      else
      {
        v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v0[53];
      v15 = v0[51];
      v39 = v0[50];
      v41 = v0[52];
      v37 = v0[49];
      v16 = v0[47];
      v30 = v0[48];
      v17 = v0[46];
      v18 = v0[21];
      v34 = v0[22];
      v35 = v0[45];
      v33 = v0[20];

      *(v9 + 14) = v14;

      _os_log_impl(&dword_21D0C9000, log, v8, "TTRAutoCompleteReminderProvider.search finished {duration: %s, returnCount(capped): %ld}", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);

      v19 = *(v16 + 8);
      v19(v30, v17);
      (*(v18 + 8))(v34, v33);
      sub_21D0CF7E0(v35, &qword_27CE58D68);
      v19(v37, v17);
      (*(v15 + 8))(v41, v39);
    }

    else
    {
      v20 = v0[53];
      v21 = v0[51];
      v42 = v0[50];
      loga = v0[52];
      v22 = v0[48];
      v23 = v0[46];
      v24 = v0[47];
      v38 = v0[45];
      v40 = v0[49];
      v25 = v0[21];
      v36 = v0[22];
      v26 = v0[20];
      swift_bridgeObjectRelease_n();

      v27 = *(v24 + 8);
      v27(v22, v23);
      (*(v25 + 8))(v36, v26);
      sub_21D0CF7E0(v38, &qword_27CE58D68);
      v27(v40, v23);
      (*(v21 + 8))(loga, v42);
    }

    v28 = v0[1];

    return v28(v32);
  }
}

uint64_t sub_21D3E0FCC()
{
  v1 = v0[51];
  v15 = v0[50];
  v16 = v0[52];
  v2 = v0[47];
  v13 = v0[46];
  v14 = v0[49];
  v11 = v0[53];
  v12 = v0[45];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[18];

  (*(v8 + 8))(v5, v7);
  (*(v4 + 8))(v3, v6);
  sub_21D0CF7E0(v12, &qword_27CE58D68);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v16, v15);

  v9 = v0[1];

  return v9();
}

id sub_21D3E1200(void *a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 112);
  v19[0] = 0;
  v4 = [v3 fetchReminderWithObjectID:a1 error:v19];
  v5 = v19[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D0C870 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_280D0C878);
    v9 = a1;
    v10 = v7;
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAEBC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v9;
      *v14 = v9;
      *(v13 + 12) = 2112;
      v15 = v9;
      v16 = v7;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      v14[1] = v17;
      _os_log_impl(&dword_21D0C9000, v11, v12, "TTRAutoCompleteReminderProvider fetchReminder(with: %@) failed: %@", v13, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

void sub_21D3E141C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v2 - 8);
  v123 = &v108 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v111 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v116 = &v108 - v7;
  v117 = sub_21DBF563C();
  v8 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v110 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v108 - v11;
  v12 = sub_21DBF659C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v130 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v16 = sub_21DBFBD7C();
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return;
    }
  }

  if (v16 >= 1)
  {
    v17 = 0;
    v132 = a1 & 0xC000000000000001;
    v129 = (v13 + 104);
    v128 = *MEMORY[0x277D45058];
    v127 = (v13 + 8);
    v114 = (v8 + 56);
    v109 = (v8 + 48);
    v108 = (v8 + 32);
    v113 = (v8 + 8);
    v18 = &selRef_setQueryFragment_;
    v14.n128_u64[0] = 136315394;
    v118 = v14;
    v14.n128_u64[0] = 138412290;
    v112 = v14;
    v126 = a1;
    v131 = v16;
    v115 = v12;
    while (1)
    {
      if (v132)
      {
        v19 = MEMORY[0x223D44740](v17, a1);
      }

      else
      {
        v19 = *(a1 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v19 v18[7]];
      v22 = sub_21DBFB51C();

      if (!v22)
      {
        goto LABEL_17;
      }

      v23 = [v22 entityName];
      v24 = sub_21DBFA16C();
      v26 = v25;

      v27 = v130;
      (*v129)(v130, v128, v12);
      v28 = sub_21DBF657C();
      v30 = v29;
      (*v127)(v27, v12);
      if (v24 == v28 && v26 == v30)
      {

        v18 = &selRef_setQueryFragment_;
      }

      else
      {
        v32 = sub_21DBFC64C();

        v18 = &selRef_setQueryFragment_;
        if ((v32 & 1) == 0)
        {

          v16 = v131;
LABEL_17:
          if (qword_280D0C870 != -1)
          {
            swift_once();
          }

          v33 = sub_21DBF84BC();
          __swift_project_value_buffer(v33, qword_280D0C878);
          v34 = v20;
          v35 = sub_21DBF84AC();
          v36 = sub_21DBFAEBC();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v134 = v38;
            *v37 = v118.n128_u32[0];
            v39 = [v34 uniqueIdentifier];
            v40 = sub_21DBFA16C();
            v42 = v41;

            v43 = sub_21D0CDFB4(v40, v42, &v134);

            *(v37 + 4) = v43;
            *(v37 + 12) = 2080;
            v44 = [v34 attributeSet];
            v45 = sub_21DBFB52C();
            v47 = v46;

            if (v47)
            {
              v48 = v45;
            }

            else
            {
              v48 = 7104878;
            }

            if (v47)
            {
              v49 = v47;
            }

            else
            {
              v49 = 0xE300000000000000;
            }

            a1 = v126;
            v50 = sub_21D0CDFB4(v48, v49, &v134);

            *(v37 + 14) = v50;
            v18 = &selRef_setQueryFragment_;
            _os_log_impl(&dword_21D0C9000, v35, v36, "TTRAutoCompleteReminderProvider.ResultCollector: Dropping item because of invalid objectID {uniqueIdentifier: %s, objectID: %s}", v37, 0x16u);
            swift_arrayDestroy();
            v51 = v38;
            v16 = v131;
            MEMORY[0x223D46520](v51, -1, -1);
            MEMORY[0x223D46520](v37, -1, -1);
          }

          else
          {
          }

          goto LABEL_6;
        }
      }

      v52 = [v20 attributeSet];
      v53 = [v52 displayName];

      if (!v53)
      {
        break;
      }

      v54 = sub_21DBFA16C();
      v56 = v55;

      v57 = [v20 attributeSet];
      v58 = [v57 completionDate];

      if (!v58)
      {

        if (qword_280D0C870 != -1)
        {
          swift_once();
        }

        v87 = sub_21DBF84BC();
        __swift_project_value_buffer(v87, qword_280D0C878);
        v78 = v22;
        v79 = sub_21DBF84AC();
        v88 = sub_21DBFAEBC();

        v89 = os_log_type_enabled(v79, v88);
        a1 = v126;
        if (v89)
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *v81 = v112.n128_u32[0];
          *(v81 + 4) = v78;
          *v82 = v22;
          v83 = v78;
          v84 = v88;
          v85 = v79;
          v86 = "TTRAutoCompleteReminderProvider.ResultCollector: missing completion date in %@";
LABEL_42:
          _os_log_impl(&dword_21D0C9000, v85, v84, v86, v81, 0xCu);
          sub_21D0CF7E0(v82, &unk_27CE60070);
          v90 = v82;
          v18 = &selRef_setQueryFragment_;
          MEMORY[0x223D46520](v90, -1, -1);
          MEMORY[0x223D46520](v81, -1, -1);

LABEL_44:
          v16 = v131;
          goto LABEL_6;
        }

LABEL_43:

        goto LABEL_44;
      }

      sub_21DBF55FC();

      v59 = *(v124 + 40);
      v122 = v54;
      v134 = v54;
      v135 = v56;

      v60 = v123;
      sub_21DBF57AC();
      v61 = sub_21DBF582C();
      v62 = *(v61 - 8);
      v63 = *(v62 + 56);
      v119 = v62 + 56;
      v120 = v63;
      v63(v60, 0, 1, v61);
      v121 = sub_21D176F0C();
      v64 = sub_21DBFBBFC();
      v66 = v65;
      sub_21D0CF7E0(v60, &unk_27CE65010);
      swift_beginAccess();
      v67 = *(v59 + 16);
      if (*(v67 + 16) && (sub_21DBF8E0C(), v68 = sub_21D0CEF70(v64, v66), v70 = v69, , (v70 & 1) != 0))
      {
        v71 = *(*(v67 + 56) + 8 * v68);

        v72 = [v71 attributeSet];

        v73 = [v72 completionDate];
        if (v73)
        {
          v74 = v111;
          sub_21DBF55FC();

          v75 = 0;
          v76 = v124;
        }

        else
        {
          v75 = 1;
          v76 = v124;
          v74 = v111;
        }

        v92 = v117;
        (*v114)(v74, v75, 1, v117);
        v91 = v116;
        sub_21D0D523C(v74, v116, &qword_27CE58D68);
        if ((*v109)(v91, 1, v92) != 1)
        {
          (*v108)(v110, v91, v92);
          if (sub_21DBF55CC())
          {
            v100 = *(v76 + 40);
            v134 = v122;
            v135 = v56;

            v101 = v20;
            v102 = v123;
            sub_21DBF57AC();
            v120(v102, 0, 1, v61);
            v103 = sub_21DBFBBEC();
            v105 = v104;
            sub_21D0CF7E0(v102, &unk_27CE65010);

            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v133 = *(v100 + 16);
            *(v100 + 16) = 0x8000000000000000;
            sub_21D477E70(v101, v103, v105, isUniquelyReferenced_nonNull_native);

            *(v100 + 16) = v133;
            swift_endAccess();

            v92 = v117;
          }

          else
          {
          }

          v16 = v131;
          v18 = &selRef_setQueryFragment_;
          v107 = *v113;
          (*v113)(v110, v92);
          v107(v125, v92);
          a1 = v126;
          v12 = v115;
          goto LABEL_6;
        }
      }

      else
      {

        v91 = v116;
        v92 = v117;
        (*v114)(v116, 1, 1, v117);
        v76 = v124;
      }

      sub_21D0CF7E0(v91, &qword_27CE58D68);
      v93 = *(v76 + 40);
      v134 = v122;
      v135 = v56;
      v94 = v20;

      v95 = v123;
      sub_21DBF57AC();
      v120(v95, 0, 1, v61);
      v96 = sub_21DBFBBEC();
      v98 = v97;
      sub_21D0CF7E0(v95, &unk_27CE65010);

      swift_beginAccess();
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v133 = *(v93 + 16);
      *(v93 + 16) = 0x8000000000000000;
      sub_21D477E70(v94, v96, v98, v99);

      *(v93 + 16) = v133;
      swift_endAccess();

      (*v113)(v125, v92);
      a1 = v126;
      v12 = v115;
      v16 = v131;
      v18 = &selRef_setQueryFragment_;
LABEL_6:
      if (v16 == ++v17)
      {
        return;
      }
    }

    if (qword_280D0C870 != -1)
    {
      swift_once();
    }

    v77 = sub_21DBF84BC();
    __swift_project_value_buffer(v77, qword_280D0C878);
    v78 = v22;
    v79 = sub_21DBF84AC();
    v80 = sub_21DBFAEBC();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = v112.n128_u32[0];
      *(v81 + 4) = v78;
      *v82 = v22;
      v83 = v78;
      v84 = v80;
      v85 = v79;
      v86 = "TTRAutoCompleteReminderProvider.ResultCollector: missing title in %@";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  __break(1u);
}

uint64_t sub_21D3E2208(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  swift_beginAccess();
  v5 = *(*(v4 + 16) + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5 > 0xA)
  {
    return v6;
  }

  v7 = sub_21DBF8E0C();
  sub_21D3DEF70(v7);

  v8 = sub_21DBF8E0C();
  v17 = sub_21D2FB230(v8);
  sub_21D3DF184(&v17);

  v9 = v17;
  v17 = v6;
  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v10 = sub_21DBFBD7C();
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_21:

    return v6;
  }

LABEL_5:
  if (v10 >= 1)
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v11, v9);
      }

      else
      {
        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      if (v6 >> 62)
      {
        if (sub_21DBFBD7C() >= a1)
        {
          goto LABEL_7;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
      {
        goto LABEL_7;
      }

      v14 = sub_21D3E556C(v13, *(v2 + 24));
      if (v14)
      {
        v15 = v14;
        MEMORY[0x223D42D80]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v6 = v17;
        goto LABEL_8;
      }

LABEL_7:

LABEL_8:
      if (v10 == ++v11)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_21D3E2450()
{
  v1 = *(*(v0 + 16) + 136);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query;
    v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query];
    v4 = v1;
    if (v3)
    {
      [v3 cancel];
      v5 = *&v1[v2];
    }

    else
    {
      v5 = 0;
    }

    *&v1[v2] = 0;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21D3E24FC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_6:
    v8 = sub_21DBFA16C();
    v10 = v9;
    v11 = sub_21D3E25D4();
    if (*(v11 + 16))
    {
      v12 = sub_21D0CEF70(v8, v10);
      v14 = v13;

      if (v14)
      {
        v7 = *(*(v11 + 56) + 8 * v12);
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = 3;
    goto LABEL_11;
  }

  v4 = sub_21D3E25D4();
  if (!*(v4 + 16) || (v5 = sub_21D0CEF70(a1, a2), (v6 & 1) == 0))
  {

    goto LABEL_6;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
LABEL_11:

  return v7;
}

unint64_t sub_21D3E25D4()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v1 = sub_21D3E2634(v0);
    *(v0 + 144) = v1;
    sub_21DBF8E0C();
  }

  sub_21DBF8E0C();
  return v1;
}

unint64_t sub_21D3E2634(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 112);
  v40[0] = 0;
  v2 = [v1 fetchMinimumSearchTermLengthByBaseLanguageWithError_];
  v3 = v40[0];
  if (v2)
  {
    v4 = v2;
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v5 = sub_21DBF9E6C();
    v6 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58138);
    v7 = sub_21DBFC3DC();
    v8 = v7;
    v9 = 0;
    v10 = v5 + 64;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v38 = v7 + 64;
    v39 = v5;
    if (v13)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_11:
        v18 = v15 | (v9 << 6);
        v19 = (*(v39 + 48) + 16 * v18);
        v5 = *v19;
        v20 = v19[1];
        v21 = *(*(v39 + 56) + 8 * v18);
        sub_21DBF8E0C();
        v22 = [v21 integerValue];
        *(v38 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v23 = (v8[6] + 16 * v18);
        *v23 = v5;
        v23[1] = v20;
        *(v8[7] + 8 * v18) = v22;
        v24 = v8[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          break;
        }

        v8[2] = v26;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          return v8;
        }

        v17 = *(v10 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  v27 = v40[0];
  v5 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D0C870 != -1)
  {
LABEL_23:
    swift_once();
  }

  v28 = sub_21DBF84BC();
  __swift_project_value_buffer(v28, qword_280D0C878);
  v29 = v5;
  v30 = sub_21DBF84AC();
  v31 = sub_21DBFAEBC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40[0] = v33;
    *v32 = 136315138;
    swift_getErrorValue();
    v34 = sub_21DBFC75C();
    v36 = sub_21D0CDFB4(v34, v35, v40);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_21D0C9000, v30, v31, "TTRAutoCompleteReminderProvider lazy init minimumSearchTermLengthByBaseLanguage error: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x223D46520](v33, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);
  }

  else
  {
  }

  return sub_21D17865C(MEMORY[0x277D84F90]);
}

uint64_t sub_21D3E29C8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D3E2A00()
{

  return swift_deallocClassInstance();
}

uint64_t TTRAutoCompleteReminderProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TTRAutoCompleteReminderProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21D3E2AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21D203124;

  return sub_21D3DF368(a1, a2, a3, a4, a5);
}

uint64_t sub_21D3E2BA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B795C;

  return sub_21D3E2430();
}

uint64_t _s15RemindersUICore32TTRAutoCompleteReminderListScopeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF7E3C();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v55 = &v48 - v18;
  v19 = type metadata accessor for TTRAutoCompleteReminderListScope();
  MEMORY[0x28223BE20](v19);
  v21 = (&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = (&v48 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE30);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v48 - v26;
  v29 = (&v48 + *(v28 + 56) - v26);
  sub_21D3E32EC(a1, &v48 - v26);
  sub_21D3E32EC(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_21D3E32EC(v27, v24);
      v31 = *v24;
      if (!swift_getEnumCaseMultiPayload())
      {
        v32 = *v29;
        sub_21D0D8CF0(0, &qword_280D17680);
        v33 = sub_21DBFB63C();

LABEL_27:
        sub_21D3E3AA0(v27);
        return v33 & 1;
      }

      goto LABEL_15;
    }

    sub_21D3E32EC(v27, v21);
    v31 = *v21;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D0CF7E0(v21 + v34, &qword_27CE5BE00);
LABEL_15:

      goto LABEL_16;
    }

    v35 = *v29;
    v36 = v21 + v34;
    v37 = v55;
    sub_21D0D523C(v36, v55, &qword_27CE5BE00);
    v38 = v29 + v34;
    v39 = v16;
    sub_21D0D523C(v38, v16, &qword_27CE5BE00);
    sub_21D0D8CF0(0, &qword_280D17680);
    if ((sub_21DBFB63C() & 1) == 0)
    {

      sub_21D0CF7E0(v37, &qword_27CE5BE00);
      sub_21D0CF7E0(v16, &qword_27CE5BE00);
      sub_21D3E3AA0(v27);
      goto LABEL_17;
    }

    v50 = v35;
    sub_21D0D3954(v37, v13, &qword_27CE5BE00);
    v40 = v53;
    v41 = v54;
    v42 = *(v53 + 48);
    if (v42(v13, 1, v54) == 1)
    {
      v10 = v13;
    }

    else
    {
      v48 = *(v40 + 32);
      v48(v52, v13, v41);
      v49 = v39;
      sub_21D0D3954(v39, v10, &qword_27CE5BE00);
      if (v42(v10, 1, v41) != 1)
      {
        v44 = v51;
        v48(v51, v10, v41);
        v45 = v52;
        v33 = sub_21DBF7E2C();

        v46 = *(v40 + 8);
        v46(v44, v41);
        v46(v45, v41);
        sub_21D0CF7E0(v55, &qword_27CE5BE00);
        v43 = v49;
LABEL_26:
        sub_21D0CF7E0(v43, &qword_27CE5BE00);
        goto LABEL_27;
      }

      (*(v40 + 8))(v52, v41);
      v39 = v49;
      v37 = v55;
    }

    sub_21D0CF7E0(v10, &qword_27CE5BE00);
    v33 = v42(v37, 1, v41) == 1 && v42(v39, 1, v41) == 1;
    sub_21D0CF7E0(v55, &qword_27CE5BE00);
    v43 = v39;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_16;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_16:
    sub_21D0CF7E0(v27, &qword_27CE5BE30);
LABEL_17:
    v33 = 0;
    return v33 & 1;
  }

  sub_21D3E3AA0(v27);
  v33 = 1;
  return v33 & 1;
}

uint64_t type metadata accessor for TTRAutoCompleteReminderListScope()
{
  result = qword_280D11C30;
  if (!qword_280D11C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D3E32EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAutoCompleteReminderListScope();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D3E33A0()
{
  result = qword_280D12278[0];
  if (!qword_280D12278[0])
  {
    type metadata accessor for TTRAutoCompleteReminderProvider();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D12278);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRAutoCompleteReminderListScope(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *a2;
    *a1 = *a2;
    v12 = v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18) + 48);
    v14 = sub_21DBF7E3C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(&a2[v13], 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00);
      memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(&a1[v13], &a2[v13], v14);
      (*(v15 + 56))(&a1[v13], 0, 1, v14);
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v17 = *(v6 + 64);

  return memcpy(a1, a2, v17);
}

void destroy for TTRAutoCompleteReminderListScope(id *a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18) + 48);
    v5 = sub_21DBF7E3C();
    v7 = *(v5 - 8);
    if (!(*(v7 + 48))(a1 + v4, 1, v5))
    {
      v6 = *(v7 + 8);

      v6(a1 + v4, v5);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    v3 = *a1;
  }
}

void **initializeWithCopy for TTRAutoCompleteReminderListScope(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *a2;
    *a1 = *a2;
    v10 = v9;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18) + 48);
    v12 = sub_21DBF7E3C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
    }

    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void **assignWithCopy for TTRAutoCompleteReminderListScope(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D3E3AA0(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *a2;
    *a1 = *a2;
    v10 = v9;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18) + 48);
    v12 = sub_21DBF7E3C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

uint64_t sub_21D3E3AA0(uint64_t a1)
{
  v2 = type metadata accessor for TTRAutoCompleteReminderListScope();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeWithTake for TTRAutoCompleteReminderListScope(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18) + 48);
    v7 = sub_21DBF7E3C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00);
      memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v10 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v10);
  }
}

char *assignWithTake for TTRAutoCompleteReminderListScope(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D3E3AA0(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18) + 48);
    v7 = sub_21DBF7E3C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00);
      memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void sub_21D3E3E2C()
{
  v1[4] = MEMORY[0x277D833E8] + 64;
  sub_21D3E3EDC();
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v1[5] = v1;
    swift_initEnumMetadataMultiPayload();
  }
}

void sub_21D3E3EDC()
{
  if (!qword_280D0C798)
  {
    sub_21DBF7E3C();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D0C798);
    }
  }
}

uint64_t dispatch thunk of TTRAutoCompleteReminderProviderType.search(title:listScope:baseLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_21D22D4FC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of TTRAutoCompleteReminderProviderType.cancel()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRAutoCompleteReminderProvider.search(title:listScope:baseLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 136) + **(*v5 + 136));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_21D22C140;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of TTRAutoCompleteReminderProvider.cancel()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21D1B795C;

  return v4();
}

BOOL sub_21D3E4430(void *a1, void *a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v50 - v19;
  v53 = a1;
  v21 = [a1 attributeSet];
  v22 = &selRef__setContentViewMarginType_;
  v23 = [v21 completionDate];

  v52 = v20;
  if (v23)
  {
    sub_21DBF55FC();

    v24 = *(v12 + 32);
    v24(v10, v16, v11);
    v25 = *(v12 + 56);
    v25(v10, 0, 1, v11);
    v24(v20, v10, v11);
    v22 = &selRef__setContentViewMarginType_;
  }

  else
  {
    v25 = *(v12 + 56);
    v25(v10, 1, 1, v11);
    sub_21DBF557C();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE58D68);
    }
  }

  v26 = [v55 attributeSet];
  v27 = [v26 v22[499]];

  if (v27)
  {
    sub_21DBF55FC();

    v28 = *(v12 + 32);
    v28(v7, v16, v11);
    v25(v7, 0, 1, v11);
    v29 = v54;
    v28(v54, v7, v11);
    v30 = v52;
  }

  else
  {
    v25(v7, 1, 1, v11);
    v29 = v54;
    sub_21DBF557C();
    v31 = (*(v12 + 48))(v7, 1, v11);
    v30 = v52;
    if (v31 != 1)
    {
      sub_21D0CF7E0(v7, &qword_27CE58D68);
    }
  }

  v32 = [v53 attributeSet];
  v33 = [v32 displayName];

  if (v33)
  {
    v34 = sub_21DBFA16C();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  v37 = [v55 &selRef_setInsetsLayoutMarginsFromSafeArea_ + 4];
  v38 = [v37 displayName];

  if (v38)
  {
    v39 = sub_21DBFA16C();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xE000000000000000;
  }

  v42 = sub_21DBF561C();
  if (v42)
  {
    if (v42 == 1)
    {

      v43 = *(v12 + 8);
      v43(v29, v11);
      v43(v30, v11);
      return 1;
    }

    else
    {

      v49 = *(v12 + 8);
      v49(v29, v11);
      v49(v30, v11);
      return 0;
    }
  }

  else
  {
    v58 = v34;
    v59 = v36;
    v56 = v39;
    v57 = v41;
    v45 = sub_21DBF582C();
    v46 = v51;
    (*(*(v45 - 8) + 56))(v51, 1, 1, v45);
    sub_21D176F0C();
    v47 = sub_21DBFBBCC();
    sub_21D0CF7E0(v46, &unk_27CE65010);
    v48 = *(v12 + 8);
    v48(v29, v11);
    v48(v30, v11);

    return v47 == -1;
  }
}

uint64_t sub_21D3E4A6C(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = sub_21D3E4430(v18, v19);

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = sub_21D3E4430(v28, v29);

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_21D3E4CF4(uint64_t *a1, void **a2, void *a3)
{
  v5 = a1;
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_21D82E300(v6);
    v6 = result;
  }

  v15 = v5;
  *v5 = v6;
  v8 = (v6 + 16);
  v9 = *(v6 + 16);
  if (v9 < 2)
  {
LABEL_9:
    *v15 = v6;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v10 = v6 + 16 * v9;
      v5 = *v10;
      v11 = &v8[2 * v9];
      v12 = v11[1];
      sub_21D3E4A6C((*a3 + 8 * *v10), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
      if (v3)
      {
        goto LABEL_9;
      }

      if (v12 < v5)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v13 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_11;
      }

      *v10 = v5;
      *(v10 + 8) = v12;
      v14 = v13 - v9;
      if (v13 < v9)
      {
        goto LABEL_12;
      }

      v9 = v13 - 1;
      result = memmove(v11, v11 + 2, 16 * v14);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v15 = v6;
    __break(1u);
  }

  return result;
}

void sub_21D3E4E24(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v101 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v10 = *(*a3 + 8 * v9);
        v11 = 8 * v6;
        v12 = (*a3 + 8 * v6);
        v14 = *v12;
        v13 = v12 + 2;
        v15 = v10;
        v16 = v14;
        v17 = v8;
        v18 = sub_21D3E4430(v15, v16);

        v95 = v17;
        v19 = v17 + 2;
        while (v5 != v19)
        {
          v20 = *(v13 - 1);
          v21 = *v13;
          v22 = v20;
          LODWORD(v20) = sub_21D3E4430(v21, v22);

          ++v19;
          ++v13;
          if (v18 != v20)
          {
            v5 = v19 - 1;
            break;
          }
        }

        if (v18)
        {
          v8 = v95;
          if (v5 < v95)
          {
            goto LABEL_110;
          }

          if (v95 < v5)
          {
            v23 = 8 * v5 - 8;
            v24 = v5;
            v25 = v95;
            do
            {
              if (v25 != --v24)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                v26 = *(v27 + v11);
                *(v27 + v11) = *(v27 + v23);
                *(v27 + v23) = v26;
              }

              ++v25;
              v23 -= 8;
              v11 += 8;
            }

            while (v25 < v24);
          }

          v9 = v5;
        }

        else
        {
          v9 = v5;
          v8 = v95;
        }
      }

      v28 = a3[1];
      if (v9 < v28)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_109;
        }

        if (v9 - v8 < a4)
        {
          v29 = (v8 + a4);
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v29 >= v28)
          {
            v29 = a3[1];
          }

          if (v29 < v8)
          {
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
            return;
          }

          if (v9 != v29)
          {
            v92 = v7;
            v30 = *a3;
            v31 = *a3 + 8 * v9 - 8;
            v96 = v8;
            v98 = v29;
            v32 = v8 - v9;
            do
            {
              v33 = v9;
              v34 = *(v30 + 8 * v9);
              v35 = v32;
              v36 = v31;
              do
              {
                v37 = *v36;
                v38 = v34;
                v39 = v37;
                v40 = sub_21D3E4430(v38, v39);

                if (!v40)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_113;
                }

                v41 = *v36;
                v34 = *(v36 + 8);
                *v36 = v34;
                *(v36 + 8) = v41;
                v36 -= 8;
              }

              while (!__CFADD__(v35++, 1));
              v9 = v33 + 1;
              v31 += 8;
              --v32;
            }

            while ((v33 + 1) != v98);
            v9 = v98;
            v7 = v92;
            v8 = v96;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_108;
      }

      v97 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21D210B90(0, *(v7 + 2) + 1, 1, v7);
      }

      v44 = *(v7 + 2);
      v43 = *(v7 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v7 = sub_21D210B90((v43 > 1), v44 + 1, 1, v7);
      }

      *(v7 + 2) = v45;
      v46 = v7 + 32;
      v47 = &v7[16 * v44 + 32];
      *v47 = v8;
      *(v47 + 1) = v9;
      v99 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v49 = *(v7 + 4);
            v50 = *(v7 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_57:
            if (v52)
            {
              goto LABEL_98;
            }

            v65 = &v7[16 * v45];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_100;
            }

            v71 = &v46[16 * v48];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_103;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_105;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v48 = v45 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v45 < 2)
          {
            goto LABEL_106;
          }

          v75 = &v7[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_72:
          if (v70)
          {
            goto LABEL_102;
          }

          v78 = &v46[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_104;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_79:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v86 = v7;
          v87 = &v46[16 * v48 - 16];
          v88 = *v87;
          v89 = &v46[16 * v48];
          v90 = *(v89 + 1);
          sub_21D3E4A6C((*a3 + 8 * *v87), (*a3 + 8 * *v89), (*a3 + 8 * v90), v99);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v90 < v88)
          {
            goto LABEL_93;
          }

          v91 = *(v86 + 2);
          if (v48 > v91)
          {
            goto LABEL_94;
          }

          *v87 = v88;
          *(v87 + 1) = v90;
          if (v48 >= v91)
          {
            goto LABEL_95;
          }

          v45 = v91 - 1;
          memmove(&v46[16 * v48], v89 + 16, 16 * (v91 - 1 - v48));
          v7 = v86;
          *(v86 + 2) = v91 - 1;
          if (v91 <= 2)
          {
            goto LABEL_3;
          }
        }

        v53 = &v46[16 * v45];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_96;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_97;
        }

        v60 = &v7[16 * v45];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_99;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_101;
        }

        if (v64 >= v56)
        {
          v82 = &v46[16 * v48];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_107;
          }

          if (v51 < v85)
          {
            v48 = v45 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      v6 = v97;
      if (v97 >= v5)
      {
        v101 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_21D3E4CF4(&v101, *a1, a3);
LABEL_91:
}

void sub_21D3E5380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      v14 = sub_21D3E4430(v12, v13);

      if (!v14)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21D3E5458(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21DBFC59C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21D0D8CF0(0, &qword_280D0C2E8);
        v6 = sub_21DBFA69C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21D3E4E24(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21D3E5380(0, v2, 1, a1);
  }
}

uint64_t sub_21D3E556C(void *a1, uint64_t (*a2)(void *))
{
  v4 = sub_21DBF659C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 attributeSet];
  v10 = sub_21DBFB51C();

  if (!v10)
  {
    goto LABEL_8;
  }

  v40 = a2;
  v11 = [v10 entityName];
  v12 = sub_21DBFA16C();
  v14 = v13;

  (*(v5 + 104))(v8, *MEMORY[0x277D45058], v4);
  v15 = sub_21DBF657C();
  v17 = v16;
  (*(v5 + 8))(v8, v4);
  if (v12 == v15 && v14 == v17)
  {

    goto LABEL_20;
  }

  v19 = sub_21DBFC64C();

  if (v19)
  {
LABEL_20:
    v39 = v40(v10);

    return v39;
  }

LABEL_8:
  if (qword_280D0C870 != -1)
  {
    swift_once();
  }

  v20 = sub_21DBF84BC();
  __swift_project_value_buffer(v20, qword_280D0C878);
  v21 = a1;
  v22 = sub_21DBF84AC();
  v23 = sub_21DBFAEBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136315394;
    v26 = [v21 uniqueIdentifier];
    v27 = sub_21DBFA16C();
    v29 = v28;

    v30 = sub_21D0CDFB4(v27, v29, &v41);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    v31 = [v21 attributeSet];
    v32 = sub_21DBFB52C();
    v34 = v33;

    if (v34)
    {
      v35 = v32;
    }

    else
    {
      v35 = 7104878;
    }

    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0xE300000000000000;
    }

    v37 = sub_21D0CDFB4(v35, v36, &v41);

    *(v24 + 14) = v37;
    _os_log_impl(&dword_21D0C9000, v22, v23, "TTRAutoCompleteReminderProvider.ResultCollector: Impossible as invalid objectID {uniqueIdentifier: %s, objectID: %s} should have been filtered", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v25, -1, -1);
    MEMORY[0x223D46520](v24, -1, -1);
  }

  return 0;
}

void sub_21D3E59A8()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  qword_27CE5BE40 = v4;
}

uint64_t sub_21D3E5ACC()
{
  v0 = sub_21DBFAA1C();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  v1 = sub_21DBFAA1C();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](32032, 0xE200000000000000);
  return 8315;
}

void sub_21D3E5B60()
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE48);
  MEMORY[0x28223BE20](v64);
  v63 = &v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v62 = &v61 - v3;
  v4 = sub_21DBF5B9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v61 - v8;
  MEMORY[0x28223BE20](v9);
  v68 = &v61 - v10;
  MEMORY[0x28223BE20](v11);
  v67 = &v61 - v12;
  MEMORY[0x28223BE20](v13);
  v72 = &v61 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v21 = *(v0 + 16);
  if (v21 < 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v71 = v0;
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v65 = v17;
      v74 = MEMORY[0x277D84F90];
      sub_21D18EF04(0, v21, 0);
      v23 = 0;
      v22 = v74;
      v66 = *(v71 + 40);
      do
      {
        v24 = v21;
        v66(v23);
        v74 = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          v30 = v25;
          v31 = v26;
          sub_21D18EF04((v27 > 1), v28 + 1, 1);
          v26 = v31;
          v25 = v30;
          v22 = v74;
        }

        ++v23;
        *(v22 + 16) = v28 + 1;
        v29 = v22 + 48 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        *(v29 + 48) = 0u;
        *(v29 + 64) = 0u;
        v21 = v24;
      }

      while (v24 != v23);
      v17 = v65;
    }

    *(v71 + 72) = v22;

    v32 = sub_21D3E6930(&qword_280D1B818, MEMORY[0x277CC9A28]);
    sub_21DBFBCAC();
    if (v21)
    {
      v33 = 0;
      do
      {
        v34 = v33 + 1;
        v73 = v33;
        sub_21DBFBC6C();
        v33 = v34;
      }

      while (v21 != v34);
    }

    v66 = v32;
    v36 = *(v5 + 32);
    v35 = v5 + 32;
    v36(v20, v17, v4);
    sub_21DBF5B8C();
    v37 = (v35 - 24);
    v65 = (v35 - 16);
    v38 = MEMORY[0x277D84F90];
    do
    {
      if ((sub_21DBF5B1C() & 1) == 0)
      {
        v39 = v64;
        v40 = *(v64 + 48);
        v41 = v62;
        *(v41 + v40) = sub_21D3E61BC();
        sub_21DBF5B7C();
        sub_21DBF5B5C();
        v42 = v63;
        sub_21D3E68C0(v41, v63);

        v38 = *(v42 + *(v39 + 48));
        (*v37)(v42, v4);
      }

      if (*(v38 + 2))
      {
        v43 = v67;
        v44 = v72;
        sub_21D3E64C4(v38);
        v45 = *v37;
        (*v37)(v20, v4);

        v46 = *v65;
        (*v65)(v20, v43, v4);
        v46(v69, v44, v4);
        v46(v70, v43, v4);
        v47 = v68;
        sub_21DBFBC5C();
        sub_21DBFBC4C();
        v45(v47, v4);
        v45(v43, v4);
        v38 = MEMORY[0x277D84F90];
      }

      if ((sub_21DBF5B1C() & 1) != 0 && !*(v38 + 2))
      {
        v48 = sub_21DBF5ABC();
        if ((v49 & 1) == 0)
        {
          v50 = sub_21D3E6634(v48, 0);
          if (v53)
          {
            goto LABEL_30;
          }

          v54 = v50;
          v55 = v51;
          v56 = v52;
          sub_21DBF5B0C();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_21D213180(0, *(v38 + 2) + 1, 1, v38);
          }

          v58 = *(v38 + 2);
          v57 = *(v38 + 3);
          if (v58 >= v57 >> 1)
          {
            v38 = sub_21D213180((v57 > 1), v58 + 1, 1, v38);
          }

          *(v38 + 2) = v58 + 1;
          v59 = &v38[24 * v58];
          *(v59 + 4) = v54;
          *(v59 + 5) = v55;
          *(v59 + 6) = v56;
        }
      }
    }

    while ((sub_21DBF5B1C() & 1) == 0 || *(v38 + 2) || (sub_21DBF5B1C() & 1) == 0);
    v60 = *v37;
    (*v37)(v72, v4);
    v60(v20, v4);
    sub_21DBF8E0C();
  }
}

char *sub_21D3E61BC()
{
  v0 = sub_21DBF5A5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA80);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  sub_21DBF5B8C();
  sub_21DBF5A6C();
  sub_21DBF5B9C();
  sub_21D3E6930(&qword_280D1B820, MEMORY[0x277CC9A28]);
  v7 = (v1 + 8);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21DBFACAC();
    sub_21D3E6930(&qword_280D1B840, MEMORY[0x277CC9A08]);
    v8 = sub_21DBFA10C();
    (*v7)(v3, v0);
    if (v8)
    {
      break;
    }

    v9 = sub_21DBFAD3C();
    v11 = *v10;
    v9(v30, 0);
    sub_21DBFACBC();
    v12 = sub_21D3E6634(v11, 1u);
    if (v15)
    {
      sub_21DBF5AFC();
    }

    else
    {
      v26 = v13;
      v27 = v14;
      v28 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_21D213180(0, *(v29 + 2) + 1, 1, v29);
      }

      v16 = v28;
      v18 = *(v29 + 2);
      v17 = *(v29 + 3);
      v20 = v26;
      v19 = v27;
      if (v18 >= v17 >> 1)
      {
        v23 = sub_21D213180((v17 > 1), v18 + 1, 1, v29);
        v20 = v26;
        v19 = v27;
        v29 = v23;
        v16 = v28;
      }

      v21 = v29;
      *(v29 + 2) = v18 + 1;
      v22 = &v21[24 * v18];
      *(v22 + 4) = v16;
      *(v22 + 5) = v20;
      *(v22 + 6) = v19;
    }
  }

  sub_21D304524(v6);
  return v29;
}

uint64_t sub_21D3E64C4(uint64_t a1)
{
  v2 = v1;
  result = sub_21DBF5B8C();
  v5 = *(a1 + 16);
  if (!v5)
  {
    return result;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v7 = *(i - 2);
    v8 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      break;
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_23;
    }

    v10 = *(i - 1);
    v11 = *i;
    if (sub_21DBF5B2C())
    {
      v12 = *(v2 + 72);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 72) = v12;
      if (result)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_21D256CB8(v12);
        v12 = result;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }
      }

      if (v8 >= *(v12 + 16))
      {
        goto LABEL_25;
      }

      v13 = (v12 + 48 * v8 + 56);
    }

    else
    {
      result = sub_21DBF5B2C();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }

      v12 = *(v2 + 72);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 72) = v12;
      if (result)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = sub_21D256CB8(v12);
        v12 = result;
        if ((v9 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          return result;
        }
      }

      if (v9 >= *(v12 + 16))
      {
        goto LABEL_26;
      }

      v13 = (v12 + 48 * v9 + 48);
      v10 = v11;
    }

    *v13 = v10 + *v13;
    *(v2 + 72) = v12;
    result = sub_21DBF5AFC();
LABEL_4:
    if (!--v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21D3E6634(unint64_t a1, unsigned __int8 a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v3;
  v7 = *(v3 + 72);
  if (*(v7 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_21D256CB8(v3);
    v3 = result;
    goto LABEL_14;
  }

  v8 = (v7 + 48 * a1);
  v9 = v8[6];
  v10 = v8[7];
  if (v9 > v10)
  {
    v11 = v8[6];
  }

  else
  {
    v11 = v8[7];
  }

  if (v10 >= v9)
  {
    v12 = v8[6];
  }

  else
  {
    v12 = v8[7];
  }

  v13 = *(v3 + 32) * (v11 - v12);
  v14 = v8[4] + v12;
  v15 = v8[5] + v12;
  v16 = v15 + v13;
  v17 = v14 + v13;
  if (v10 >= v9)
  {
    v15 = v16;
    v17 = v14;
  }

  v4 = a1;
  if (a2 & (*(v3 + 56))(v17 + v15 + 60.0, 10000.0))
  {
    return 0;
  }

  v5 = v18;
  v6 = v19;
  v3 = *(v3 + 72);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 72) = v3;
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (*(v3 + 16) <= v4)
  {
    __break(1u);
  }

  else
  {
    result = v4;
    v21 = v3 + 48 * v4;
    *(v21 + 64) = v5;
    *(v21 + 72) = v6;
    *(v2 + 72) = v3;
  }

  return result;
}

uint64_t sub_21D3E67DC()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRILabeledIconsTitleLayout.LayoutInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRILabeledIconsTitleLayout.LayoutInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_21D3E68C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D3E6930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TTRIReminderCellQuickBarHashtagsViewModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t TTRILocationQuickPickersCellContentState.items.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t TTRILocationQuickPickersCellContentState.ttriAccessiblityProximity.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t TTRILocationQuickPickersCellContentState.ttriAccessibilityCurrentLocation.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRILocationQuickPickersCellContentState.ttriAccessibilityCurrentLocation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TTRILocationQuickPickersCellContentState.init(items:selected:ttriAccessiblityProximity:ttriAccessibilityCurrentLocation:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  *a7 = result;
  *(a7 + 8) = v7;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_21D3E6BA0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE5BE50);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D3E6C40(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE5BE50);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRILocationQuickPickersCellContent.action.getter()
{
  v1 = (v0 + qword_27CE5BE50);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1);
  return v2;
}

uint64_t TTRILocationQuickPickersCellContent.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE5BE50);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6);
}

id TTRILocationQuickPickersCellContent.init(state:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = a1[5];
  v8 = (v1 + qword_27CE5BE50);
  *v8 = 0;
  v8[1] = 0;
  v9 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v9 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v9 & *v1) + 0x90)) = 0;
  v10 = v1 + *((*v9 & *v1) + 0x78);
  *v10 = v2;
  v10[8] = v3;
  *(v10 + 2) = v4;
  v10[24] = v5;
  *(v10 + 4) = v6;
  *(v10 + 5) = v7;
  *(v1 + *((*v9 & *v1) + 0x80)) = 0;
  v11 = (v1 + *((*v9 & *v1) + 0x88));
  *v11 = 0xD000000000000018;
  v11[1] = 0x800000021DC5B0C0;
  v13.receiver = v1;
  v13.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE58);
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t TTRILocationQuickPickersCellContent.updateCell(_:)()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  v2 = *(*v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    sub_21D18EE2C(0, v2, 0);
    v4 = 32;
    v3 = v33;
    do
    {
      sub_21D3E75A8(&v27);
      v33 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21D18EE2C((v5 > 1), v6 + 1, 1);
        v3 = v33;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 88 * v6;
      v8 = v28;
      *(v7 + 32) = v27;
      *(v7 + 48) = v8;
      v9 = v29;
      v10 = v30;
      v11 = v31;
      *(v7 + 112) = v32;
      *(v7 + 80) = v10;
      *(v7 + 96) = v11;
      *(v7 + 64) = v9;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v12 = sub_21D3E8918();
  v13 = sub_21D1D7E94(v3, v12);

  if ((v13 & 1) == 0)
  {
    sub_21D3E8ABC(v3);
  }

  if (v1[8] == 6)
  {
    *&v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    LOBYTE(v33) = v1[8];
    sub_21D3E82A8();
    sub_21DBFBE2C();
  }

  sub_21D3E8DA8(&v27, 0);
  sub_21D3E8240(&v27);
  if ((v1[24] & 1) != 0 || *(v1 + 2) != 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_37:
    swift_once();
  }

LABEL_17:
  v14 = sub_21DBF516C();
  v16 = v15;
  v17 = *(v1 + 5);
  if (v17)
  {
    v18 = *(v1 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21DC08D00;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_21D17A884();
    *(v19 + 32) = v18;
    *(v19 + 40) = v17;
    sub_21DBF8E0C();
    v20 = sub_21DBFA17C();
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = v1[8];
  if (v22 > 3)
  {
    if (v22 == 4)
    {
      goto LABEL_35;
    }

    v23 = v21;
    if (v22 != 5)
    {
      goto LABEL_35;
    }

    v24 = v20;

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF516C();
    v16 = v25;
    v21 = v23;
    v20 = v24;
  }

  else
  {
    if (v22 - 1 < 2)
    {

      if ((v1[24] & 1) != 0 || *(v1 + 2) != 1)
      {
        if (qword_280D1BAA8 == -1)
        {
LABEL_34:
          v20 = sub_21DBF516C();
          goto LABEL_36;
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
        goto LABEL_34;
      }

      swift_once();
      goto LABEL_34;
    }

    if (v1[8])
    {
LABEL_35:

      v20 = 0;
      v21 = 0;
      v14 = 0;
      v16 = 0;
    }
  }

LABEL_36:
  sub_21D3E85E8(v20, v21);
  return sub_21D3E85F4(v14, v16);
}

uint64_t sub_21D3E75A8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 2)
  {
    if (*v1)
    {
      if (v3 == 1)
      {
        sub_21D3E82A8();
        sub_21DBFBE2C();
        v4 = [objc_opt_self() configurationWithScale_];
        v5 = sub_21DBFA12C();
        v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

        v7 = [objc_opt_self() systemCyanColor];
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_21D3E82A8();
        sub_21DBFBE2C();
        v14 = [objc_opt_self() configurationWithScale_];
        v15 = sub_21DBFA12C();
        v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

        v7 = [objc_opt_self() systemBrownColor];
        if (qword_280D1BAA8 == -1)
        {
LABEL_15:
          v16 = sub_21DBF516C();
          v18 = v17;
          result = sub_21DBF516C();
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_21D3E82A8();
      sub_21DBFBE2C();
      v10 = [objc_opt_self() configurationWithScale_];
      v11 = sub_21DBFA12C();
      v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

      v7 = [objc_opt_self() systemGray2Color];
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    sub_21D3E82A8();
    sub_21DBFBE2C();
    v12 = [objc_opt_self() configurationWithScale_];
    v13 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    v7 = [objc_opt_self() systemBlueColor];
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v3 == 4)
  {
    sub_21D3E82A8();
    sub_21DBFBE2C();
    v8 = [objc_opt_self() configurationWithScale_];
    v9 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    v7 = [objc_opt_self() systemBlueColor];
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  sub_21D3E82A8();
  sub_21DBFBE2C();
  v21 = [objc_opt_self() configurationWithScale_];
  v22 = sub_21DBFA12C();
  v25 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  v24 = [objc_opt_self() systemGray2Color];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v16 = sub_21DBF516C();
  v18 = v23;
  result = sub_21DBF516C();
  v7 = v24;
  v6 = v25;
LABEL_19:
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v16;
  a1[8] = v18;
  a1[9] = result;
  a1[10] = v20;
  return result;
}

id TTRILocationQuickPickersCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s15RemindersUICore40TTRILocationQuickPickersCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((sub_21D1D5448(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v7 == 6 || (sub_21D25BD94(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v6)
  {
    return v10 && (v5 == v11 && v6 == v10 || (sub_21DBFC64C() & 1) != 0);
  }

  return !v10;
}

uint64_t sub_21D3E8240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D3E82A8()
{
  result = qword_27CE5BE68;
  if (!qword_27CE5BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BE68);
  }

  return result;
}

uint64_t destroy for TTRILocationQuickPickersCellContentState()
{
}

uint64_t initializeWithCopy for TTRILocationQuickPickersCellContentState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRILocationQuickPickersCellContentState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRILocationQuickPickersCellContentState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderAndComputedProperties(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderAndComputedProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRILocationQuickPickersCellContent()
{
  result = qword_27CE5BE70;
  if (!qword_27CE5BE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D3E8600(uint64_t result, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  v5 = *v4;
  v6 = v4[1];
  *v4 = result;
  v4[1] = a2;
  if (a2)
  {
    if (v6)
    {
      v7 = v5 == result && v6 == a2;
      if (v7 || (sub_21DBFC64C() & 1) != 0)
      {
      }
    }
  }

  else if (!v6)
  {
    return result;
  }

  v8 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (v9 >> 62)
  {
    goto LABEL_30;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  sub_21DBF8E0C();
  if (v10)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          v10 = sub_21DBFBD7C();
          goto LABEL_14;
        }

        v12 = *(v9 + 8 * v11 + 32);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_24;
        }
      }

      if (*(v12 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected))
      {
        v14 = v12;

        sub_21D1D9CF0(v14 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item, v15);

        sub_21D181CE0(v15, v16);
        sub_21D1D9D4C(v15);
        goto LABEL_27;
      }

      ++v11;
    }

    while (v13 != v10);
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
LABEL_27:
  sub_21D3E8DA8(v16, 1);

  return sub_21D0CF7E0(v16, &qword_27CE5BE60);
}

uint64_t sub_21D3E87FC()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos) = 0;

  v1 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    sub_21DBF8E0C();
    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223D44740](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 invalidateIntrinsicContentSize];

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

char *sub_21D3E8918()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_21DBFBD7C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v17 = MEMORY[0x277D84F90];
  sub_21DBF8E0C();
  result = sub_21D18EE2C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v4 = v17;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D44740](v6, v2);
        sub_21D1D9CF0(v7 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_21D1D9CF0(*(v2 + 8 * v6 + 32) + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item, v15);
      }

      v17 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_21D18EE2C((v8 > 1), v9 + 1, 1);
        v4 = v17;
      }

      ++v6;
      *(v4 + 16) = v9 + 1;
      v10 = v4 + 88 * v9;
      v11 = v15[1];
      *(v10 + 32) = v15[0];
      *(v10 + 48) = v11;
      v12 = v15[2];
      v13 = v15[3];
      v14 = v15[4];
      *(v10 + 112) = v16;
      *(v10 + 80) = v13;
      *(v10 + 96) = v14;
      *(v10 + 64) = v12;
    }

    while (v3 != v6);

    return v4;
  }

  __break(1u);
  return result;
}

void sub_21D3E8ABC(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D84F90];
  v14 = *(a1 + 16);
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v5 = 0;
    v13 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleFont;
    v6 = a1 + 32;
    do
    {
      v7 = v5 + 1;
      sub_21D1D9CF0(v6, v31);
      v24 = v5;
      v27 = v31[2];
      v28 = v31[3];
      v29 = v31[4];
      v30 = v32;
      v25 = v31[0];
      v26 = v31[1];
      sub_21D0D3954(&v24, &v15, &qword_27CE5BF08);
      v8 = v15;
      v22[2] = v18;
      v22[3] = v19;
      v22[4] = v20;
      v23 = v21;
      v22[0] = v16;
      v22[1] = v17;
      sub_21D1D9CF0(v22, &v15);
      v9 = *&v2[v13];
      v10 = objc_allocWithZone(type metadata accessor for TTRILabeledIconCell());
      sub_21D3EA8F8(v2, &v15, v8, v9, v10, 60.0);
      sub_21D1D9D4C(v22);
      sub_21D0CF7E0(&v24, &qword_27CE5BF08);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v6 += 88;
      v5 = v7;
    }

    while (v14 != v7);
    v3 = v33;
  }

  v11 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  *&v2[v11] = v3;
  sub_21DBF8E0C();

  if (v3 >> 62)
  {
    sub_21D0D8CF0(0, &qword_280D176A0);
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D176A0);
  }

  sub_21D0D8CF0(0, &qword_280D176A0);
  v12 = sub_21DBFA5DC();

  [v2 setArrangedSubviews_];

  sub_21D3E9684();
}

uint64_t sub_21D3E8DA8(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v31 = v2;
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
LABEL_60:
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21DBF8E0C();
  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_60;
        }

        v8 = *(v5 + 8 * v7 + 32);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_13;
        }
      }

      if (*(v8 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected))
      {
        v10 = v8;

        sub_21D1D9CF0(v10 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item, v40);

        sub_21D181CE0(v40, v45);
        sub_21D1D9D4C(v40);
        goto LABEL_16;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  v46 = 0;
  memset(v45, 0, sizeof(v45));
LABEL_16:
  sub_21D0D3954(a1, v40, &qword_27CE5BE60);
  sub_21D0D3954(v45, &v42, &qword_27CE5BE60);
  if (v41)
  {
    sub_21D0D3954(v40, v39, &qword_27CE5BE60);
    if (*(&v43 + 1))
    {
      v36 = v42;
      v37 = v43;
      v38 = v44;
      v11 = MEMORY[0x223D445C0](v39, &v36);
      sub_21D181D3C(&v36);
      sub_21D0CF7E0(v45, &qword_27CE5BE60);
      sub_21D181D3C(v39);
      result = sub_21D0CF7E0(v40, &qword_27CE5BE60);
      if ((v11 & 1) != 0 && (a2 & 1) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }

    sub_21D0CF7E0(v45, &qword_27CE5BE60);
    sub_21D181D3C(v39);
  }

  else
  {
    sub_21D0CF7E0(v45, &qword_27CE5BE60);
    if (!*(&v43 + 1))
    {
      result = sub_21D0CF7E0(v40, &qword_27CE5BE60);
      if ((a2 & 1) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }
  }

  result = sub_21D0CF7E0(v40, &qword_27CE5BF00);
LABEL_26:
  v13 = *(v2 + v4);
  if (v13 >> 62)
  {
    result = sub_21DBFBD7C();
    v14 = result;
    if (!result)
    {
      return sub_21D3E87FC();
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return sub_21D3E87FC();
    }
  }

  if (v14 >= 1)
  {
    v32 = v2 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityHintForSelectedItem;
    v33 = v2 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityValueForSelectedItem;
    sub_21DBF8E0C();
    v15 = 0;
    v34 = v14;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x223D44740](v15, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      sub_21D181CE0(&v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item], v45);
      sub_21D0D3954(v45, v40, &qword_27CE5BE60);
      sub_21D0D3954(a1, &v42, &qword_27CE5BE60);
      if (v41)
      {
        sub_21D0D3954(v40, v39, &qword_27CE5BE60);
        if (!*(&v43 + 1))
        {
          sub_21D0CF7E0(v45, &qword_27CE5BE60);
          sub_21D181D3C(v39);
LABEL_48:
          sub_21D0CF7E0(v40, &qword_27CE5BF00);
          v28 = v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected];
          v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected] = 0;
          if (v28 == 1)
          {
            sub_21D3EB46C();
          }

          v24 = 0;
          v22 = &v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
          v23 = *&v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
          goto LABEL_52;
        }

        v36 = v42;
        v37 = v43;
        v38 = v44;
        v20 = MEMORY[0x223D445C0](v39, &v36);
        sub_21D181D3C(&v36);
        sub_21D0CF7E0(v45, &qword_27CE5BE60);
        sub_21D181D3C(v39);
        sub_21D0CF7E0(v40, &qword_27CE5BE60);
        v21 = v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected];
        v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected] = v20 & 1;
        if ((v20 & 1) != v21)
        {
          sub_21D3EB46C();
        }

        v22 = &v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
        v23 = *&v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
        if ((v20 & 1) == 0)
        {
          v24 = 0;
          goto LABEL_52;
        }
      }

      else
      {
        sub_21D0CF7E0(v45, &qword_27CE5BE60);
        if (*(&v43 + 1))
        {
          goto LABEL_48;
        }

        sub_21D0CF7E0(v40, &qword_27CE5BE60);
        v25 = v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected];
        v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected] = 1;
        if ((v25 & 1) == 0)
        {
          sub_21D3EB46C();
        }

        v22 = &v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
        v23 = *&v19[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
      }

      if (*(v32 + 8))
      {
        v26 = v23;
        sub_21DBF8E0C();
        v27 = sub_21DBFA12C();

        v24 = 1;
        goto LABEL_53;
      }

      v24 = 1;
LABEL_52:
      v26 = v23;
      v27 = 0;
LABEL_53:
      [v26 setAccessibilityHint_];

      v29 = *v22;
      if (v24 && *(v33 + 8))
      {
        v30 = v29;
        sub_21DBF8E0C();
        v17 = sub_21DBFA12C();
      }

      else
      {
        v16 = v29;
        v17 = 0;
      }

      ++v15;
      [v29 setAccessibilityValue_];

      if (v34 == v15)
      {

        return sub_21D3E87FC();
      }
    }
  }

  __break(1u);
  return result;
}

id sub_21D3E93DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_viewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_itemWidth] = 0x404E000000000000;
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_centerAdjustmentAllowed] = 0x3FF0000000000000;
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityHintForSelectedItem];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityValueForSelectedItem];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_isDebugTitleFramesEnabled] = 0;
  v12 = &v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_unitTest_itemSpacing];
  *v12 = 0;
  v12[8] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelOutset] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelMinSpacing] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos] = 0;
  v13 = &v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_scale];
  *v13 = nullsub_1;
  v13[1] = 0;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleFont] = sub_21D900614(1);
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 setAxis_];
  [v14 setDistribution_];
  [v14 setAlignment_];
  [v14 setLayoutMarginsRelativeArrangement_];
  [v14 setPreservesSuperviewLayoutMargins_];
  [v14 setInsetsLayoutMarginsFromSafeArea_];
  sub_21D3E9684();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21DC08D00;
  v16 = sub_21DBF8D4C();
  v17 = MEMORY[0x277D74DB8];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  sub_21DBFB5CC();

  swift_unknownObjectRelease();

  return v14;
}

void sub_21D3E9684()
{
  v1 = v0;
  v2 = sub_21D3E9C00();
  v4 = v3;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_scale];
  *v5 = v2;
  v5[1] = v6;

  v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleFont];
  v37 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleFont;
  *&v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleFont] = v4;

  v8 = *v5;

  v10 = (v8)(v9, 8.0);

  *&v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelOutset] = v10;
  *&v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelMinSpacing] = 0x402C000000000000;
  v38 = v1;
  if (v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_unitTest_itemSpacing + 8])
  {
    v11 = *v5;

    v13 = (v11)(v12, 20.0);

    v14 = fmax(v13, 20.0);
  }

  else
  {
    v14 = *&v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_unitTest_itemSpacing];
  }

  [v1 setSpacing_];
  v15 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v16 = *&v1[v15];
  if (v16 >> 62)
  {
LABEL_21:
    v17 = sub_21DBFBD7C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21DBF8E0C();
  if (!v17)
  {
LABEL_18:

    sub_21D3E87FC();
    return;
  }

  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x223D44740](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v22 = *(v16 + 8 * v18 + 32);
    }

    v23 = v22;
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v25 = *&v38[v37];
    v26 = OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont;
    v27 = *&v22[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont];
    *&v22[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont] = v25;
    v28 = v25;

    v29 = v23[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected];
    v30 = OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel;
    v31 = *&v23[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel];
    v32 = objc_opt_self();
    if (v29 == 1)
    {
      break;
    }

    v19 = [v32 labelColor];
    [v31 setTextColor_];

    v20 = *&v23[v30];
    v21 = *&v23[v26];
    [v20 setFont_];
LABEL_9:

    ++v18;
    if (v24 == v17)
    {
      goto LABEL_18;
    }
  }

  v33 = [v32 whiteColor];
  [v31 setTextColor_];

  v34 = [*&v23[v26] fontDescriptor];
  v35 = [v34 fontDescriptorWithSymbolicTraits_];

  if (v35)
  {
    v36 = *&v23[v30];
    v21 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
    [v36 setFont_];

    goto LABEL_9;
  }

  __break(1u);
}

void sub_21D3E9AC4()
{
  v0 = *MEMORY[0x277D76818];
  v1 = *MEMORY[0x277D76838];
  v2 = v0;
  v3 = v1;
  v4 = v2;
  if (sub_21DBFB46C())
  {
    qword_27CE5BE88 = v3;
    unk_27CE5BE90 = v4;
  }

  else
  {
    __break(1u);
  }
}

double sub_21D3E9B5C()
{
  [v0 layoutMargins];
  v2 = v1;
  [v0 layoutMargins];
  v4 = v2 + v3;
  v5 = *(sub_21D3E8918() + 2);

  if (v5)
  {
    v6 = *(sub_21D3E8918() + 2);

    [v0 spacing];
    return v4 + v6 * 60.0 + (v6 + -1.0) * v7;
  }

  return v4;
}

double (*sub_21D3E9C00())(double a1)
{
  v1 = [v0 traitCollection];
  if (qword_27CE56718 != -1)
  {
    swift_once();
  }

  v2 = UITraitCollection.clampingContentSizeCategory(to:)(qword_27CE5BE88, unk_27CE5BE90);

  v3 = [v2 preferredContentSizeCategory];
  v4 = sub_21DBFA16C();
  v6 = v5;
  if (v4 == sub_21DBFA16C() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_21DBFC64C();

    if ((v9 & 1) == 0)
    {
      v19 = sub_21DBFA16C();
      v21 = v20;
      if (v19 == sub_21DBFA16C() && v21 == v22)
      {

        v10 = 2.0;
      }

      else
      {
        v24 = sub_21DBFC64C();

        if (v24)
        {

          v10 = 2.0;
        }

        else
        {
          v25 = sub_21DBFA16C();
          v27 = v26;
          if (v25 == sub_21DBFA16C() && v27 == v28)
          {

            v10 = 1.0;
          }

          else
          {
            v29 = sub_21DBFC64C();

            if (v29)
            {
              v10 = 1.0;
            }

            else
            {
              v10 = 0.0;
            }
          }
        }
      }

      goto LABEL_11;
    }
  }

  v10 = 3.0;
LABEL_11:
  if (qword_27CE56710 != -1)
  {
    swift_once();
  }

  v11 = qword_27CE5BE80;
  v12 = objc_opt_self();
  v13 = v2;
  v14 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:v13];
  if (!v14)
  {
    v16 = 0;
LABEL_18:
    [objc_opt_self() preferredFontForTextStyle_];
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v14 fontDescriptorWithDesign_];

  if (!v16 || ![objc_opt_self() fontWithDescriptor:v16 size:0.0])
  {
    goto LABEL_18;
  }

LABEL_19:

  v17 = pow(1.3, v10);
  *(swift_allocObject() + 16) = v17;
  return sub_21D3EB18C;
}

uint64_t sub_21D3E9FA4(char *a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v3 = *&a1[v2];
  if (v3 >> 62)
  {
    v4 = sub_21DBFBD7C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *&a1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_centerAdjustmentAllowed];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  type metadata accessor for TTRILabeledIconsTitleLayout();
  inited = swift_initStackObject();
  v9 = MEMORY[0x277D84F90];
  inited[8] = v7;
  inited[9] = v9;
  inited[2] = v4;
  inited[3] = 0x404E000000000000;
  inited[4] = v5;
  inited[5] = sub_21D3EB030;
  inited[6] = v6;
  inited[7] = sub_21D3EB054;
  v10 = a1;
  sub_21D3E5B60();
  v12 = v11;
  swift_setDeallocating();

  *&v10[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos] = v12;
  sub_21DBF8E0C();

  return v12;
}

double sub_21D3EA120(uint64_t a1)
{
  v2 = v1;
  v4 = *(sub_21D3E8918() + 2);

  v5 = 0.0;
  if ((a1 & 0x8000000000000000) == 0 && v4 > a1)
  {
    v6 = *(sub_21D3E8918() + 2);

    v7 = *&v2[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_scale];

    v5 = v7(v8, 8.0);

    v9 = sub_21D3E9B5C();
    [v2 layoutMargins];
    v11 = v10;
    [v2 layoutMargins];
    v13 = 0.0;
    if (v6 >= 2)
    {
      v13 = (v5 + v5 + v9 - v11 - v12 + v6 * -60.0 - (v5 + v5) * v6 - (v6 + -1.0) * *&v2[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelMinSpacing]) / (v6 + -1.0) * 0.5;
    }

    sub_21D3E8918();

    if (a1)
    {
      sub_21D3E8918();

      return v5 + v13 * *&v2[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_centerAdjustmentAllowed];
    }
  }

  return v5;
}

id sub_21D3EA2B0(unint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  result = swift_beginAccess();
  v9 = *(v3 + v7);
  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v10 = *(v9 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_10;
  }

  v10 = MEMORY[0x223D44740](a1);
LABEL_5:
  v11 = v10;
  swift_endAccess();
  v12 = *&v11[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel];

  [v12 systemLayoutSizeFittingSize_];
  v14 = v13;
  result = [v12 font];
  if (result)
  {
    v15 = result;
    [result lineHeight];
    v17 = v16;

    return (v17 + 1.0 < v14);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t destroy for TTRILabeledIconsViewItem(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t initializeWithCopy for TTRILabeledIconsViewItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  v10 = v5;
  v11 = v6;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t *assignWithCopy for TTRILabeledIconsViewItem(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a1[5];
  v5 = a2[5];
  a1[5] = v5;
  v6 = v5;

  v7 = a1[6];
  v8 = a2[6];
  a1[6] = v8;
  v9 = v8;

  a1[7] = a2[7];
  a1[8] = a2[8];
  sub_21DBF8E0C();

  a1[9] = a2[9];
  a1[10] = a2[10];
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for TTRILabeledIconsViewItem(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  v9 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v9;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRILabeledIconsViewItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRILabeledIconsViewItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D3EA7B0(unint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = sub_21D3E8918();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(result + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_21D1D9CF0(result + 88 * a1 + 32, v8);

  sub_21D181CE0(v8, v7);
  sub_21D1D9D4C(v8);
  sub_21DBFBE1C();
  if (swift_dynamicCast())
  {
    v4 = (v3 + qword_27CE5BE50);
    swift_beginAccess();
    v5 = *v4;
    if (!*v4)
    {
      sub_21D181D3C(v7);
      return swift_unknownObjectRelease();
    }

    v5(&v6);
    sub_21D0D0E88(v5);
  }

  swift_unknownObjectRelease();
  return sub_21D181D3C(v7);
}

id sub_21D3EA8F8(void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5, double a6)
{
  swift_getObjectType();
  v12 = &a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_cellDelegate];
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_cellDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected] = 0;
  a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isDebugTitleFramesEnabled] = 0;
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView] = 0;
  v13 = &a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews];
  type metadata accessor for TTRILabeledIconCellButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v13 = 0;
  v13[1] = 0;
  v15 = [ObjCClassFromMetadata buttonWithType_];
  v16 = *(a2 + 40);
  v17 = v15;
  [v17 setImage:v16 forState:0];
  v18 = v17;
  [v18 setClipsToBounds_];
  v19 = [v18 layer];
  [v19 setCornerRadius_];

  v20 = [objc_opt_self() whiteColor];
  [v18 setTintColor_];

  [v18 setCustomAlignmentRectInsets_];
  v21 = v18;
  v22 = sub_21DBFA12C();
  [v21 setAccessibilityLabel_];

  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v23 setAdjustsFontForContentSizeCategory_];
  [v23 setTextAlignment_];
  [v23 setNumberOfLines_];
  [v23 setLineBreakMode_];
  v24 = sub_21DBFA12C();
  [v23 setText_];

  [v23 setIsAccessibilityElement_];
  sub_21D1D9CF0(a2, &a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item]);
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button] = v21;
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel] = v23;
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_index] = a3;
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_itemWidth] = a6;
  *(v12 + 1) = &off_282EB7220;
  swift_unknownObjectWeakAssign();
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21DC0AA00;
  *(v25 + 32) = v21;
  *(v25 + 40) = v23;
  sub_21D0D8CF0(0, &qword_280D176A0);
  v26 = v23;
  v27 = a4;
  v28 = sub_21DBFA5DC();

  v34.receiver = a5;
  v34.super_class = type metadata accessor for TTRILabeledIconCell();
  v29 = objc_msgSendSuper2(&v34, sel_initWithArrangedSubviews_, v28);

  v30 = v29;
  [v21 addTarget:v30 action:sel_buttonAction_ forControlEvents:0x2000];
  v31 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v30 action:sel_buttonAction_];

  [v26 addGestureRecognizer_];
  [v26 setUserInteractionEnabled_];
  v32 = v30;
  [v32 setDelegate_];
  [v32 setAlignment_];
  [v32 setDistribution_];
  [v32 setAxis_];
  [v32 setSpacing_];
  if (qword_27CE56720 != -1)
  {
    swift_once();
  }

  [v32 setLayoutMargins_];
  [v32 setLayoutMarginsRelativeArrangement_];
  [v32 setPreservesSuperviewLayoutMargins_];

  sub_21D3EB774();
  sub_21D3EB90C();
  sub_21D0D8CF0(0, &unk_27CE5BF10);
  sub_21DBFB25C();
  sub_21DBFB5CC();

  swift_unknownObjectRelease();

  sub_21D1D9D4C(a2);
  return v32;
}

uint64_t sub_21D3EAECC(void *a1, void *a2)
{
  if ((MEMORY[0x223D445C0]() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = a2[5];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688);
    v6 = v5;
    v7 = v4;
    v8 = sub_21DBFB63C();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = a1[6];
  v10 = a2[6];
  if (v9)
  {
    if (v10)
    {
      sub_21D0D8CF0(0, &qword_280D1B8F0);
      v11 = v10;
      v12 = v9;
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_12:
  if ((a1[7] != a2[7] || a1[8] != a2[8]) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (a1[9] == a2[9] && a1[10] == a2[10])
  {
    return 1;
  }

  return sub_21DBFC64C();
}

void sub_21D3EB07C()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_viewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_itemWidth) = 0x404E000000000000;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_centerAdjustmentAllowed) = 0x3FF0000000000000;
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityHintForSelectedItem);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityValueForSelectedItem);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_isDebugTitleFramesEnabled) = 0;
  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_unitTest_itemSpacing;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelOutset) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelMinSpacing) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D3EB248()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TTRILabeledIconCell();
  objc_msgSendSuper2(&v8, sel_tintColorDidChange);
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 tintColor];
    v5 = [v0 traitCollection];
    if ([v5 accessibilityContrast] == 1)
    {
      v6 = sub_21DBFB24C();

      v5 = v6;
    }

    v7 = [v4 resolvedColorWithTraitCollection_];

    [v3 setBackgroundColor_];
  }
}

double sub_21D3EB3B4()
{
  result = -4.0;
  xmmword_27CE5BF20 = xmmword_21DC15480;
  *&qword_27CE5BF30 = xmmword_21DC15480;
  return result;
}

void sub_21D3EB46C()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView];
  if (v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected] == 1)
  {
    if (v1)
    {
      v11 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView];
    }

    else
    {
      v11 = sub_21D3EB5BC(v0);
      v1 = 0;
    }

    v6 = v1;
    [v11 setHidden_];
    sub_21D3EB774();
    v7 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
    v8 = *MEMORY[0x277D76598];
    v9 = [v7 accessibilityTraits];
    if ((v8 & ~v9) != 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    [v7 setAccessibilityTraits_];
  }

  else
  {
    if (v1)
    {
      [v1 setHidden_];
    }

    sub_21D3EB774();
    v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
    v3 = *MEMORY[0x277D76598];
    v4 = [v2 accessibilityTraits];
    v5 = -1;
    if ((v4 & v3) != 0)
    {
      v5 = ~v3;
    }

    [v2 setAccessibilityTraits_];
  }
}

id sub_21D3EB5BC(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = [objc_opt_self() tintColor];
  v4 = [a1 traitCollection];
  if ([v4 accessibilityContrast] == 1)
  {
    v5 = sub_21DBFB24C();

    v4 = v5;
  }

  v6 = [v3 resolvedColorWithTraitCollection_];

  [v2 setBackgroundColor_];
  v7 = [v2 layer];
  [v7 setCornerRadius_];

  v8 = [v2 layer];
  [v8 setCornerCurve_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 insertSubview:v2 atIndex:0];
  v9 = *&a1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView];
  *&a1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView] = v2;
  v10 = v2;

  return v10;
}

void sub_21D3EB774()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected);
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel);
  v3 = objc_opt_self();
  if (v1 == 1)
  {
    v4 = [v3 whiteColor];
    [v2 setTextColor_];

    v5 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont) fontDescriptor];
    v6 = [v5 fontDescriptorWithSymbolicTraits_];

    if (v6)
    {
      v9 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];
      [v2 setFont_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = [v3 labelColor];
    [v2 setTextColor_];

    v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont);

    [v2 setFont_];
  }
}

void sub_21D3EB90C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item + 48];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item + 48];
  }

  else
  {
    v3 = [objc_opt_self() redColor];
    v2 = 0;
  }

  v4 = v2;
  v5 = [v0 traitCollection];
  if ([v5 accessibilityContrast] == 1)
  {
    v6 = sub_21DBFB24C();

    v5 = v6;
  }

  v7 = [v3 resolvedColorWithTraitCollection_];

  v8 = *&v1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
  if (qword_27CE56960 != -1)
  {
    swift_once();
  }

  v9 = [qword_27CE5CEB0 imageWithTintColor:v7 renderingMode:1];
  [v8 setBackgroundImage:v9 forState:0];
}

id sub_21D3EBA9C(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = [v2 layer];
  v4 = objc_opt_self();
  v5 = [v4 orangeColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [v6 CGColor];
  [v3 setBorderColor_];

  v8 = [v2 layer];
  [v8 setBorderWidth_];

  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = [v9 layer];
  v11 = [v4 greenColor];
  v12 = [v11 colorWithAlphaComponent_];

  v13 = [v12 CGColor];
  [v10 setBorderColor_];

  v14 = [v9 layer];
  [v14 setBorderWidth_];

  [a1 insertSubview:v2 atIndex:0];
  [a1 insertSubview:v9 atIndex:1];
  v15 = &a1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews];
  v16 = *&a1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews];
  v17 = *(v15 + 1);
  *v15 = v9;
  *(v15 + 1) = v2;
  v18 = v9;
  v19 = v2;
  sub_21D0D9834(v16, v17);
  return v9;
}

id sub_21D3EC0BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_21D3EC11C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 tintColor];
    v6 = [a1 traitCollection];
    if ([v6 accessibilityContrast] == 1)
    {
      v7 = sub_21DBFB24C();

      v6 = v7;
    }

    v8 = [v5 resolvedColorWithTraitCollection_];

    [v4 setBackgroundColor_];
  }

  sub_21D3EB90C();
}

char *sub_21D3EC234(char *result)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel) == result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_index);
    if (*&result[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos])
    {
      result = *&result[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos];
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = sub_21D3E9FA4(result);
      if ((v2 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v2 < *(result + 2))
        {
          sub_21DBF8E0C();
          swift_unknownObjectRelease();
        }

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button) != result)
  {
    return [result systemLayoutSizeFittingSize_];
  }

  return result;
}

void sub_21D3EC35C(uint64_t a1, double a2, double a3, CGFloat a4, double a5)
{
  if (*&v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel] != a1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = *&v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_index];
  if (*&Strong[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos])
  {
    v11 = *&Strong[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos];
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = sub_21D3E9FA4(Strong);
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (v10 >= *(v11 + 16))
  {
LABEL_24:
    __break(1u);
    return;
  }

  v12 = (v11 + 48 * v10);
  v13 = v12[4];
  v14 = v12[5];
  v15 = v12[6];
  v16 = v12[7];
  v17 = v12[8];
  sub_21DBF8E0C();

  v18 = [v5 effectiveUserInterfaceLayoutDirection];
  v19 = v18;
  v43 = v14;
  if (v18 == 1)
  {
    v20 = v14 + v16;
  }

  else
  {
    v20 = v13 + v15;
  }

  v21 = a4;
  v44 = -v20;
  v22 = UIEdgeInsetsInsetRect(a2, a3, a4, a5, 0.0, -v20);
  v24 = v23;
  rect = v23;
  v47 = v25;
  v48 = v26;
  v50.origin.x = a2;
  v50.origin.y = a3;
  v50.size.width = v21;
  v50.size.height = a5;
  v27 = CGRectGetMidX(v50) + v17 * -0.5;
  v51.origin.x = a2;
  v51.origin.y = a3;
  v45 = v21;
  v51.size.width = v21;
  v51.size.height = a5;
  MinY = CGRectGetMinY(v51);
  v52.origin.x = v27;
  v52.origin.y = MinY;
  v52.size.width = v17;
  v52.size.height = a5;
  MinX = CGRectGetMinX(v52);
  v53.origin.x = v22;
  v53.origin.y = v24;
  v53.size.width = v48;
  v53.size.height = v47;
  v30 = CGRectGetMinX(v53);
  if (MinX <= v30)
  {
    MinX = v30;
  }

  v54.origin.x = MinX;
  v54.origin.y = MinY;
  v54.size.width = v17;
  v54.size.height = a5;
  CGRectGetMinX(v54);
  v55.origin.x = v22;
  v55.origin.y = rect;
  v55.size.width = v48;
  v55.size.height = v47;
  CGRectGetMaxX(v55);
  v56.origin.x = MinX;
  v56.origin.y = MinY;
  v56.size.width = v17;
  v56.size.height = a5;
  CGRectGetWidth(v56);
  if (v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isDebugTitleFramesEnabled] != 1)
  {
    goto LABEL_20;
  }

  v31 = *&v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews];
  v32 = *&v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews + 8];
  v33 = v31;
  v34 = v32;
  if (!v31)
  {
    v35 = *&v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews + 8];
    v36 = sub_21D3EBA9C(v5);
    if (v36)
    {
      v33 = v36;
      v34 = v37;
      v31 = 0;
      v32 = v35;
      goto LABEL_15;
    }

LABEL_20:
    swift_unknownObjectRelease();
    return;
  }

LABEL_15:
  sub_21D10EC0C(v31, v32);
  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = v45;
  v57.size.height = a5;
  v58 = CGRectInset(v57, 0.0, 2.0);
  v59 = CGRectOffset(v58, 0.0, (2 * (v10 & 1)));
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  if (v19 == 1)
  {
    v42 = v43;
  }

  else
  {
    v42 = v13;
  }

  [v33 setFrame_];
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v61 = CGRectInset(v60, 0.0, 2.0);
  [v34 setFrame_];
  swift_unknownObjectRelease();
}

void sub_21D3EC6F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView);
  if (v1)
  {
    v10 = v1;
    if (([v10 isHidden] & 1) == 0)
    {
      [*(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel) frame];
      if (qword_27CE56720 != -1)
      {
        v9 = v2;
        v7 = v3;
        v8 = v4;
        v6 = v5;
        swift_once();
        v5 = v6;
        v3 = v7;
        v4 = v8;
        v2 = v9;
      }

      [v10 setFrame_];
    }
  }
}

uint64_t sub_21D3EC7F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_21D3EDF68(*a1, *(a1 + 8), *(a1 + 16), v2 | *(a1 + 24), *a2, *(a2 + 8), *(a2 + 16), v3 | *(a2 + 24));
}

id sub_21D3EC840(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v9 = (v4 + qword_27CE5BF98);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v4 + qword_27CE5BFA0);
  *v10 = 0;
  v10[1] = 0;
  v11 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x68)) = 0;
  *(v4 + *((*v11 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v11 & *v4) + 0x90)) = 0;
  v12 = v4 + *((*v11 & *v4) + 0x78);
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  v12[24] = a4;
  v12[25] = HIBYTE(a4) & 1;
  *(v4 + *((*v11 & *v4) + 0x80)) = 0;
  v13 = (v4 + *((*v11 & *v4) + 0x88));
  *v13 = 0x436B6E694C707041;
  v13[1] = 0xEB000000006C6C65;
  v15.receiver = v4;
  v15.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BFF0);
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_21D3EC9D4(uint64_t a1)
{
  v5[2] = a1;
  v1 = *(a1 + qword_27CE5AF20);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21D3EE09C;
  *(v2 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_24;
  v3 = _Block_copy(aBlock);

  [v1 performBatchUpdates_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_21D3ECB0C(char *a1, void *a2)
{
  v3 = a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78);
  swift_beginAccess();
  v4 = *&a1[qword_27CE65590];
  if (*(v3 + 2))
  {
    v5 = v4;
    sub_21DBF8E0C();
    v6 = sub_21DBFA12C();
  }

  else
  {
    v7 = v4;
    v6 = 0;
  }

  [v4 setText_];

  [*&a1[qword_27CE5BFB8] setImage_];
  if (*(v3 + 2))
  {
    sub_21DBF8E0C();
    v8 = sub_21DBFA12C();
  }

  else
  {
    v8 = 0;
  }

  [a1 setAccessibilityLabel_];

  [*&a1[qword_27CE5BFC0] setHidden_];
  v9 = v3[24];
  v10 = a1[qword_27CE5BFD0];
  a1[qword_27CE5BFD0] = v9;
  if (v9 != v10)
  {
    sub_21D3ECF80();
  }
}

id sub_21D3ECC90(uint64_t a1)
{
  [*(a1 + qword_27CE5BFC8) removeTarget:v1 action:0 forControlEvents:0x2000];
  v3 = *(a1 + qword_27CE5BFC0);

  return [v3 removeTarget:v1 action:0 forControlEvents:0x2000];
}

id sub_21D3ECD08(uint64_t a1)
{
  [*(a1 + qword_27CE5BFC8) addTarget:v1 action:sel_openAction_ forControlEvents:0x2000];
  v3 = *(a1 + qword_27CE5BFC0);

  return [v3 addTarget:v1 action:sel_contactAction_ forControlEvents:0x2000];
}

void sub_21D3ECDA0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  v7 = *&v6[*a4];
  if (v7)
  {

    v7(v8);
    sub_21D0D0E88(v7);

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
  }
}

uint64_t sub_21D3ECE48()
{
  sub_21D0D0E88(*(v0 + qword_27CE5BF98));
  v1 = *(v0 + qword_27CE5BFA0);

  return sub_21D0D0E88(v1);
}

uint64_t sub_21D3ECE90(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE5BF98));
  v2 = *(a1 + qword_27CE5BFA0);

  return sub_21D0D0E88(v2);
}

void sub_21D3ECF80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = sub_21DBFA12C();
  v7 = [objc_opt_self() _systemImageNamed_];

  sub_21DBFB97C();
  v8 = sub_21DBFB95C();
  if ((*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    sub_21D0D3954(v5, v2, &unk_27CE5F2F0);
    sub_21DBFB98C();

    sub_21D0CF7E0(v5, &unk_27CE5F2F0);
  }

  else
  {
    v9 = v7;
    sub_21DBFB8FC();
    sub_21DBFB98C();
  }
}

char *sub_21D3ED170(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v86 = a3;
  v83[1] = a2;
  v89 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_21DBFB8DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBFB7EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBFB95C();
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x28223BE20](v13);
  v92 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v83 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v83 - v19;
  v88 = v4;
  v4[qword_27CE5BFD0] = 0;
  v91 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v91 setContentMode_];
  sub_21DBFB8EC();
  (*(v10 + 104))(v12, *MEMORY[0x277D74FD8], v9);
  sub_21DBFB7FC();
  (*(v6 + 104))(v8, *MEMORY[0x277D75030], v5);
  sub_21DBFB7DC();
  v21 = *MEMORY[0x277D76A08];
  v22 = objc_opt_self();
  v23 = [v22 configurationWithTextStyle:v21 scale:2];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v24 = swift_allocObject();
  v84 = xmmword_21DC0AA00;
  *(v24 + 16) = xmmword_21DC0AA00;
  v25 = objc_opt_self();
  *(v24 + 32) = [v25 labelColor];
  *(v24 + 40) = [v25 clearColor];
  sub_21D0D8CF0(0, &qword_280D1B8F0);
  v26 = sub_21DBFA5DC();

  v27 = [v22 configurationWithPaletteColors_];

  v28 = [v23 configurationByApplyingConfiguration_];
  v29 = v94;
  sub_21DBFB78C();
  sub_21DBFB82C();
  sub_21D0D8CF0(0, &qword_280D0C1C0);
  v30 = *(v93 + 16);
  v30(v17, v20, v29);
  v31 = v17;
  v32 = sub_21DBFB96C();
  v33 = qword_27CE57520;
  v34 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_21DBFA12C();
  [v34 setAccessibilityLabel_];

  v36 = v92;
  v90 = v20;
  v30(v92, v20, v29);
  v37 = sub_21DBFA12C();
  v38 = [objc_opt_self() _systemImageNamed_];

  sub_21DBFB8FC();
  v30(v31, v36, v94);
  v39 = sub_21DBFB96C();
  v40 = qword_27CE57528;
  v41 = v39;
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_21DBFA12C();
  [v41 setAccessibilityLabel_];

  v43 = v91;
  v44 = v88;
  *&v88[qword_27CE5BFB8] = v91;
  *&v44[qword_27CE5BFC8] = v34;
  *&v44[qword_27CE5BFC0] = v41;
  if (v86)
  {
    v45 = v43;
    v46 = v34;
    v47 = v41;
    v48 = sub_21DBFA12C();
  }

  else
  {
    v49 = v43;
    v50 = v34;
    v51 = v41;
    v48 = 0;
  }

  v97.receiver = v44;
  v97.super_class = ObjectType;
  v52 = objc_msgSendSuper2(&v97, sel_initWithStyle_reuseIdentifier_, v89, v48);

  v53 = swift_allocObject();
  *(v53 + 16) = v84;
  *(v53 + 32) = v41;
  *(v53 + 40) = v34;
  sub_21D0D8CF0(0, &qword_280D176A0);
  v54 = v52;
  v89 = v34;
  v88 = v41;
  v55 = v54;
  v56 = sub_21DBFA5DC();

  v57 = [objc_opt_self() containerStackViewWithAxis:0 arrangedSubviews:v56];

  [v57 setAlignment_];
  [v57 setSpacing_];
  v58 = &v55[qword_27CE65610];
  swift_beginAccess();
  v60 = *v58;
  v59 = *(v58 + 1);
  v62 = *(v58 + 2);
  v61 = *(v58 + 3);
  v63 = *(v58 + 4);
  *v58 = v57;
  *(v58 + 8) = 0u;
  *(v58 + 24) = 0u;
  v64 = v58[40];
  v58[40] = 1;
  v65 = v57;
  sub_21D361B20(v60, v59, v62, v61, v63, v64);
  sub_21D361BB4(v60, v59, v62, v61, v63, v64);
  *&v103 = v60;
  *(&v103 + 1) = v59;
  *&v104 = v62;
  *(&v104 + 1) = v61;
  *&v105 = v63;
  BYTE8(v105) = v64;
  sub_21DA7F6B4(&v103);
  sub_21D361BB4(v60, v59, v62, v61, v63, v64);
  LOBYTE(v103) = 0;
  LOBYTE(v98) = 1;
  v66 = &v55[qword_27CE655A0];
  swift_beginAccess();
  v98 = *v66;
  v67 = *(v66 + 1);
  v68 = *(v66 + 2);
  v69 = *(v66 + 3);
  v102 = v66[64];
  v100 = v68;
  v101 = v69;
  v99 = v67;
  v103 = *v66;
  v70 = *(v66 + 1);
  v71 = *(v66 + 2);
  v72 = *(v66 + 3);
  v107 = v66[64];
  v105 = v71;
  v106 = v72;
  v104 = v70;
  v73 = v91;
  *v66 = v91;
  __asm { FMOV            V0.2D, #31.0 }

  *(v66 + 8) = _Q0;
  *(v66 + 3) = 0;
  *(v66 + 2) = 0u;
  *(v66 + 3) = 0u;
  v66[64] = 65;
  v79 = v55;
  sub_21D0D3954(&v98, v95, &unk_27CE5EA00);
  sub_21D0CF7E0(&v103, &unk_27CE5EA00);
  v95[2] = v100;
  v95[3] = v101;
  v96 = v102;
  v95[0] = v98;
  v95[1] = v99;
  sub_21DA7EF48(v95);

  sub_21D0CF7E0(&v98, &unk_27CE5EA00);
  [v79 setIsAccessibilityElement_];

  sub_21D3ECF80();
  v80 = *(v93 + 8);
  v81 = v94;
  v80(v92, v94);
  v80(v90, v81);
  return v79;
}

char *sub_21D3EDADC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D3ED170(a3, a4, v6);
}

void sub_21D3EDB28(uint64_t a1)
{
  *(a1 + qword_27CE5BFD0) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D3EDBEC()
{
  v1 = *(v0 + qword_27CE5BFC8);
}

void sub_21D3EDC3C(uint64_t a1)
{
  v2 = *(a1 + qword_27CE5BFC8);
}

uint64_t initializeWithCopy for TTRIAppLinkCellState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIAppLinkCellState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIAppLinkCellState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIAppLinkCellState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TTRIAppLinkCellState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_21D3EDF14()
{
  result = qword_27CE5BFE8;
  if (!qword_27CE5BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5BFE8);
  }

  return result;
}

uint64_t sub_21D3EDF68(void *a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688);
    v16 = a5;
    v17 = a1;
    v18 = sub_21DBFB63C();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (!a3)
  {
    result = 0;
    if (a7)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!a7)
  {
    return 0;
  }

  if (a2 == a6 && a3 == a7)
  {
    if (a8 != a4)
    {
      return 0;
    }

    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  v20 = sub_21DBFC64C();
  result = 0;
  if (v20)
  {
LABEL_16:
    if (a8 == a4)
    {
      return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
    }
  }

  return result;
}

id TTRILocationQuickPickersTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id TTRILocationQuickPickersTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(type metadata accessor for TTRILabeledIconsView()) initWithFrame_];
  [v8 setLayoutMargins_];
  [v8 setEdgesPreservingSuperviewLayoutMargins_];
  *&v3[OBJC_IVAR____TtC15RemindersUICore33TTRILocationQuickPickersTableCell_labeledIconsView] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277CEC648]) initWithDocumentView_];
  [v9 setHorizontalAlignment_];
  [v9 setVerticalAlignment_];
  [v9 setCanScrollDocumentViewVertically_];
  [v9 setCanScrollDocumentViewHorizontally_];
  v10 = v9;
  [v10 setContentInsetAdjustmentBehavior_];
  v11 = v10;
  [v11 setPreservesSuperviewLayoutMargins_];
  v12 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 16);
  v15 = *(MEMORY[0x277D768C8] + 24);
  [v11 setContentInset_];

  *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRILocationQuickPickersTableCell_scrollView] = v11;
  v16 = v11;
  if (a3)
  {
    v17 = sub_21DBFA12C();
  }

  else
  {
    v17 = 0;
  }

  v24.receiver = v4;
  v24.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, a1, v17);

  v19 = v18;
  v20 = [v19 containerView];
  [v20 setLayoutMarginsRelativeArrangement_];
  [v20 setPreservesSuperviewLayoutMargins_];
  [v20 setHorizontalAlignment_];
  [v20 setVerticalAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC09CF0;
  *(v21 + 32) = v11;
  sub_21D0D8CF0(0, &qword_280D176A0);
  v22 = sub_21DBFA5DC();

  [v20 setArrangedSubviews_];

  [v19 setSeparatorInset_];
  return v19;
}

id TTRILocationQuickPickersTableCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRILocationQuickPickersTableCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRTreeStorageWithFlattenedChildren.__allocating_init(upstreamTree:itemIDsWithFlattenedChildren:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRTreeStorageWithFlattenedChildren.init(upstreamTree:itemIDsWithFlattenedChildren:)(a1, a2);
  return v4;
}

uint64_t TTRTreeStorageWithFlattenedChildren.init(upstreamTree:itemIDsWithFlattenedChildren:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(*(*v2 + 88) + 8) + 8);
  v7 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v10 - 8);
  v87 = v72 - v11;
  v111 = *(v9 - 8);
  MEMORY[0x28223BE20](v12);
  v105 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v104 = v72 - v15;
  MEMORY[0x28223BE20](v16);
  v90 = v72 - v17;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v19);
  v103 = v72 - v20;
  v91 = v6;
  v107 = v7;
  v21 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  v93 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v86 = v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v88 = v72 - v26;
  v27 = sub_21DBFBA8C();
  v106 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v84 = v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v83 = v72 - v30;
  MEMORY[0x28223BE20](v31);
  v110 = v72 - v32;
  v73 = AssociatedConformanceWitness;
  v33 = swift_getAssociatedConformanceWitness();
  v3[4] = sub_21DBF9E2C();
  v81 = v3 + 4;
  v116 = v33;
  WitnessTable = swift_getWitnessTable();
  v35 = sub_21DBF9E4C();
  v92 = v3;
  v3[5] = v35;
  v3 += 5;
  v112 = AssociatedTypeWitness;
  sub_21DBFA74C();
  v85 = v27;
  v80 = WitnessTable;
  v3[1] = sub_21DBF9E2C();
  *(v3 - 3) = a1;
  *(v3 - 2) = a2;
  v79 = v3;
  v114 = a2;
  v89 = v23;
  v72[2] = a1;
  v82 = v33;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBF8E0C();
    sub_21DBFBD1C();
    result = sub_21DBFAB5C();
    v37 = v118;
    v114 = v117;
    v38 = v119;
    v108 = v120;
    v39 = v121;
  }

  else
  {
    v40 = -1 << *(v114 + 32);
    v37 = v114 + 56;
    v38 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v39 = v42 & *(v114 + 56);
    swift_unknownObjectRetain();
    result = sub_21DBF8E0C();
    v108 = 0;
  }

  v113 = (v93 + 56);
  v72[1] = v38;
  v43 = (v38 + 64) >> 6;
  v109 = (v93 + 16);
  v100 = (v93 + 32);
  v44 = v91;
  v99 = v91 + 40;
  v98 = (v18 + 48);
  v78 = (v18 + 32);
  v77 = (v111 + 16);
  v76 = (v111 + 56);
  v72[3] = v73 + 24;
  v75 = (v18 + 8);
  v97 = (v111 + 8);
  v74 = (v106 + 8);
  v96 = (v93 + 8);
  v106 = v21;
  v45 = v90;
  v46 = v89;
  v47 = v88;
  v48 = v110;
  v49 = v92;
  v102 = v37;
  v101 = v43;
  while (v114 < 0)
  {
    if (!sub_21DBFBDBC())
    {
LABEL_26:
      swift_unknownObjectRelease();
      (*v113)(v48, 1, 1, v46);
      sub_21D0CFAF8();
      return v49;
    }

    sub_21DBFC60C();
    swift_unknownObjectRelease();
LABEL_21:
    v111 = *v113;
    v111(v48, 0, 1, v46);
    (*v100)(v47, v48, v46);
    v115 = v49[2];
    (*(v44 + 40))(v47, v107, v44);
    v53 = *v98;
    v54 = v112;
    if ((*v98)(v45, 1, v112) == 1)
    {
      (*v96)(v47, v46);
      result = (*v97)(v45, v106);
      v48 = v110;
    }

    else
    {
      v55 = *v78;
      v95 = v53;
      v56 = v103;
      v55(v103, v45, v54);
      v57 = v104;
      sub_21D3EF36C(v56, v104);
      (*v109)(v86, v47, v46);
      v94 = *v77;
      v58 = v87;
      v59 = v106;
      v94(v87, v57, v106);
      (*v76)(v58, 0, 1, v59);
      swift_beginAccess();
      sub_21DBF9F4C();
      sub_21DBF9F6C();
      swift_endAccess();
      v60 = v105;
      v94(v105, v57, v59);
      if (v95(v60, 1, v54) == 1)
      {
        v61 = v97;
        v62 = v97;
        v63 = v59;
        v64 = v59;
        v48 = v110;
        v65 = v111;
        v66 = v84;
        v67 = v75;
        v68 = 1;
      }

      else
      {
        v66 = v84;
        (*(v73 + 24))(v54);
        v60 = v105;
        v68 = 0;
        v67 = v75;
        v62 = v75;
        v63 = v54;
        v64 = v59;
        v48 = v110;
        v65 = v111;
        v61 = v97;
      }

      (*v62)(v60, v63);
      v69 = v68;
      v46 = v89;
      v65(v66, v69, 1, v89);
      swift_beginAccess();
      v70 = v85;
      sub_21DBFABAC();
      v71 = v83;
      sub_21DBFAB2C();
      swift_endAccess();
      (*v74)(v71, v70);
      (*v61)(v104, v64);
      (*v67)(v103, v112);
      v47 = v88;
      result = (*v96)(v88, v46);
      v49 = v92;
      v44 = v91;
      v45 = v90;
    }

    v37 = v102;
    v43 = v101;
  }

  if (v39)
  {
    v50 = v108;
LABEL_20:
    v52 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    (*(v93 + 16))(v48, *(v114 + 48) + *(v93 + 72) * (v52 | (v50 << 6)), v46);
    goto LABEL_21;
  }

  v51 = v108;
  while (1)
  {
    v50 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v50 >= v43)
    {
      goto LABEL_26;
    }

    v39 = *(v37 + 8 * v50);
    ++v51;
    if (v39)
    {
      v108 = v50;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D3EF36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v4 = *(*(*(*v2 + 88) + 8) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedTypeWitness();
  v37 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v36 - v7;
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v36 - v17;
  v52 = v2;
  v45 = v2[2];
  v55 = v45;
  v19 = *(v4 + 48);
  v47 = v5;
  v48 = v4;
  v43 = v19;
  v44 = v4 + 48;
  (v19)(v53, v5, v4, v16);
  v20 = *(v9 + 16);
  v49 = a2;
  v53 = v8;
  v41 = v20;
  v42 = v9 + 16;
  v20(v13, a2, v8);
  v39 = *(v14 + 48);
  v40 = v14 + 48;
  if (v39(v13, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v9 + 8))(v13, v53);
  }

  v23 = *(v14 + 32);
  v22 = v14 + 32;
  v36[0] = v37 + 1;
  v36[1] = AssociatedConformanceWitness + 24;
  v37 = (v22 - 24);
  v38 = v23;
  v24 = (v9 + 8);
  v25 = (v9 + 32);
  while (1)
  {
    v26 = v22;
    v38(v18, v13, AssociatedTypeWitness);
    v27 = v13;
    v28 = v50;
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v29 = v51;
    swift_getAssociatedConformanceWitness();
    v30 = sub_21DBFAB6C();
    (*v36[0])(v28, v29);
    if ((v30 & 1) == 0)
    {
      break;
    }

    v31 = v46;
    v55 = v45;
    v43(v18, v47, v48);
    (*v37)(v18, AssociatedTypeWitness);
    v32 = *v24;
    v33 = v49;
    v34 = v53;
    (*v24)(v49, v53);
    (*v25)(v33, v31, v34);
    v41(v27, v33, v34);
    v35 = v39(v27, 1, AssociatedTypeWitness);
    v13 = v27;
    v22 = v26;
    if (v35 == 1)
    {
      return v32(v13, v53);
    }
  }

  return (*v37)(v18, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageWithFlattenedChildren.numberOfChildren(of:)(uint64_t a1)
{
  v3 = *v1;
  if (!sub_21D3EF920(a1))
  {
    return (*(*(*(*(v3 + 88) + 8) + 8) + 24))(a1, *(v3 + 80));
  }

  swift_getAssociatedTypeWitness();
  v4 = sub_21DBFA6DC();

  return v4;
}

uint64_t sub_21D3EF920(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_21DBFBA8C();
  v4 = sub_21DBFBA8C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = v38 - v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = v38 - v8;
  v9 = *(v3 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v13 = sub_21DBFBA8C();
  v14 = *(v13 - 8);
  v49 = v13;
  v50 = v14;
  MEMORY[0x28223BE20](v13);
  v40 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v38 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v38 - v21;
  v23 = *(v9 + 16);
  v41 = a1;
  v23(v12, a1, v3, v20);
  v24 = *(AssociatedTypeWitness - 8);
  v25 = 1;
  v26 = (*(v24 + 48))(v12, 1, AssociatedTypeWitness);
  v48 = AssociatedConformanceWitness;
  if (v26 == 1)
  {
    v24 = v9;
    v27 = v3;
  }

  else
  {
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v25 = 0;
    v27 = AssociatedTypeWitness;
  }

  (*(v24 + 8))(v12, v27);
  v28 = v45;
  (*(v45 + 56))(v22, v25, 1, v7);
  v30 = v49;
  v29 = v50;
  v32 = v50 + 16;
  v31 = *(v50 + 16);
  v47 = v22;
  v39 = v31;
  v31(v18, v22, v49);
  if ((*(v28 + 48))(v18, 1, v7) == 1)
  {
    (*(v29 + 8))(v18, v30);
  }

  else
  {
    v38[1] = v32;
    (*(v28 + 32))(v46, v18, v7);
    swift_beginAccess();
    swift_getAssociatedConformanceWitness();
    v33 = v42;
    sub_21DBF9F5C();
    swift_endAccess();
    if ((*(v9 + 48))(v33, 1, v3) != 1)
    {
      (*(v43 + 8))(v33, v44);
      v36 = sub_21DBFA68C();
      (*(v28 + 8))(v46, v7);
      (*(v50 + 8))(v47, v49);
      return v36;
    }

    (*(v28 + 8))(v46, v7);
    (*(v43 + 8))(v33, v44);
    v30 = v49;
  }

  swift_beginAccess();
  v52 = swift_getAssociatedConformanceWitness();
  sub_21DBF8E0C();
  swift_getWitnessTable();
  v34 = v47;
  v35 = sub_21DBFAB6C();

  if (v35)
  {
    swift_beginAccess();
    sub_21DBFA74C();
    sub_21DBF9F5C();
    v36 = v51;
    if (!v51)
    {
      swift_endAccess();
      v36 = sub_21D3F18D0(v41);
      v39(v40, v34, v30);
      v51 = v36;
      swift_beginAccess();
      sub_21DBF9F4C();
      sub_21DBF8E0C();
      sub_21DBF9F6C();
    }

    swift_endAccess();
    (*(v50 + 8))(v34, v30);
  }

  else
  {
    (*(v50 + 8))(v34, v30);
    return 0;
  }

  return v36;
}

uint64_t TTRTreeStorageWithFlattenedChildren.child(_:of:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (!sub_21D3EF920(a2))
  {
    return (*(*(*(*(v5 + 88) + 8) + 8) + 32))(a1, a2, *(v5 + 80));
  }

  swift_getAssociatedTypeWitness();
  sub_21DBFA78C();
}

uint64_t TTRTreeStorageWithFlattenedChildren.parent(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 16))(&v12 - v8, a1, AssociatedTypeWitness, v7);
  (*(v10 + 56))(v9, 0, 1, AssociatedTypeWitness);
  sub_21D3F0394(v9, a2);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21D3F0394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = *(*(*(*v3 + 88) + 8) + 8);
  v6 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v9 = sub_21DBFBA8C();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = v43 - v10;
  v53 = v5;
  v54 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedTypeWitness();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = v43 - v11;
  v12 = *(v8 - 8);
  MEMORY[0x28223BE20](v13);
  v44 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v43 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v43 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v22);
  v52 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v43 - v26;
  v28 = *(v12 + 16);
  v55 = v8;
  v28(v20, a1, v8, v25);
  v29 = *(v21 + 48);
  if (v29(v20, 1, AssociatedTypeWitness) == 1)
  {
    v17 = v20;
LABEL_5:
    (*(v12 + 8))(v17, v55);
    return (*(v21 + 56))(v56, 1, 1, AssociatedTypeWitness);
  }

  v43[0] = *(v21 + 32);
  v43[1] = v21 + 32;
  (v43[0])(v27, v20, AssociatedTypeWitness);
  v57 = v3[2];
  (*(v53 + 48))(v27, v54);
  if (v29(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v21 + 8))(v27, AssociatedTypeWitness);
    goto LABEL_5;
  }

  v54 = v27;
  v31 = v52;
  (v43[0])(v52, v17, AssociatedTypeWitness);
  v32 = v49;
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_beginAccess();
  v33 = v51;
  swift_getAssociatedConformanceWitness();
  v34 = v50;
  v35 = v55;
  sub_21DBF9F5C();
  v36 = (*(v12 + 48))(v34, 1, v35);
  v37 = (v48 + 8);
  v38 = (v21 + 8);
  if (v36 == 1)
  {
    (*(v45 + 8))(v34, v46);
    swift_endAccess();
    (*v37)(v32, v33);
    (*(v21 + 8))(v54, AssociatedTypeWitness);
    v39 = v56;
    (v43[0])(v56, v31, AssociatedTypeWitness);
    return (*(v21 + 56))(v39, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    v40 = *(v12 + 32);
    v41 = v44;
    v40(v44, v34, v35);
    swift_endAccess();
    (*v37)(v32, v33);
    v42 = *v38;
    (*v38)(v52, AssociatedTypeWitness);
    v42(v54, AssociatedTypeWitness);
    return (v40)(v56, v41, v35);
  }
}

uint64_t TTRTreeStorageWithFlattenedChildren.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v4 = *v2;
  v100 = *(*v2 + 88);
  v5 = *(*(v100 + 8) + 8);
  v6 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = v5;
  v123 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v106 = sub_21DBFBA8C();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v95 - v10;
  v11 = sub_21DBFBA8C();
  v98 = sub_21DBFBA8C();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v114 = &v95 - v12;
  v118 = v9;
  v117 = *(v9 - 8);
  MEMORY[0x28223BE20](v13);
  v115 = &v95 - v14;
  v119 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v15);
  v120 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v116 = &v95 - v18;
  v19 = *(v11 - 8);
  MEMORY[0x28223BE20](v20);
  v103 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v122 = &v95 - v23;
  MEMORY[0x28223BE20](v24);
  v99 = &v95 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v95 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v95 - v30;
  v32 = type metadata accessor for TTRDerivedTreeLocation();
  MEMORY[0x28223BE20](v32);
  v101 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v95 - v36;
  v108 = v38;
  (*(v38 + 16))(&v95 - v36, a1, v32, v35);
  v39 = *(v19 + 16);
  v39(v31, v37, v11);
  v40 = *(v32 + 36);
  v107 = v37;
  v102 = *&v37[v40];
  v125 = v31;
  v112 = v39;
  v113 = v19 + 16;
  v39(v28, v31, v11);
  v41 = v119;
  v42 = *(v119 + 48);
  v43 = v42(v28, 1, AssociatedTypeWitness);
  v111 = v19;
  v110 = AssociatedConformanceWitness;
  if (v43 == 1)
  {
    (*(v19 + 8))(v28, v11);
  }

  else
  {
    v96 = v42;
    (*(v41 + 32))(v116, v28, AssociatedTypeWitness);
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_beginAccess();
    v44 = v118;
    swift_getAssociatedConformanceWitness();
    v45 = v114;
    sub_21DBF9F5C();
    v46 = (*(v19 + 48))(v45, 1, v11);
    v47 = v19;
    v48 = (v117 + 8);
    v49 = v44;
    if (v46 != 1)
    {
      v83 = v99;
      (*(v47 + 32))(v99, v114, v11);
      swift_endAccess();
      (*v48)(v115, v49);
      v126 = sub_21D3F1850(v83);
      MEMORY[0x28223BE20](v126);
      v84 = v100;
      *(&v95 - 4) = v123;
      *(&v95 - 3) = v84;
      *(&v95 - 2) = v116;
      sub_21DBFA74C();
      swift_getWitnessTable();
      sub_21DBFACCC();

      if (v129)
      {
        v85 = *(v47 + 8);
        v85(v83, v11);
        v85(v125, v11);
        v86 = v108;
        (*(v108 + 8))(v107, v32);
        (*(v86 + 56))(v109, 1, 1, v32);
        return (*(v119 + 8))(v116, AssociatedTypeWitness);
      }

      v87 = v116;
      v88 = v128;
      result = v112(v122, v83, v11);
      v89 = v88 + v102;
      if (__OFADD__(v88, v102))
      {
        goto LABEL_31;
      }

      v90 = v11;
      v91 = v111;
      v92 = v119;
      if (__OFADD__(v89, 1))
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v93 = v101;
      TTRDerivedTreeLocation.init(parent:index:)(v122, v89 + 1, AssociatedTypeWitness, v110, v101);
      v94 = *(v91 + 8);
      v94(v83, v90);
      v94(v125, v90);
      v79 = v108;
      v80 = v107;
      (*(v108 + 8))(v107, v32);
      v81 = *(v79 + 32);
      v81(v80, v93, v32);
      (*(v92 + 8))(v87, AssociatedTypeWitness);
LABEL_25:
      v82 = v109;
      v81(v109, v80, v32);
      return (*(v79 + 56))(v82, 0, 1, v32);
    }

    (*(v97 + 8))(v114, v98);
    swift_endAccess();
    (*v48)(v115, v44);
    v41 = v119;
    (*(v119 + 8))(v116, AssociatedTypeWitness);
    v19 = v47;
    v42 = v96;
  }

  swift_beginAccess();
  v50 = v103;
  v112(v103, v125, v11);
  v51 = v42(v50, 1, AssociatedTypeWitness);
  v52 = v110;
  if (v51 == 1)
  {
    v53 = v50;
    v54 = *(v19 + 8);
    sub_21DBF8E0C();
    v54(v53, v11);
    v55 = 1;
    v56 = v106;
    v57 = v105;
    v58 = v104;
  }

  else
  {
    v59 = *(v110 + 24);
    sub_21DBF8E0C();
    v58 = v104;
    v59(AssociatedTypeWitness, v52);
    (*(v41 + 8))(v50, AssociatedTypeWitness);
    v55 = 0;
    v56 = v106;
    v57 = v105;
  }

  (*(v117 + 56))(v58, v55, 1, v118);
  v127 = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v60 = sub_21DBFAB6C();

  (*(v57 + 8))(v58, v56);
  if (v60)
  {
    v117 = *(v124 + 16);
    v126 = v117;
    result = (*(v121 + 24))(v125, v123);
    if (result >= v102)
    {
      v62 = v102;
    }

    else
    {
      v62 = result;
    }

    if (v62 < 0)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v106 = v32;
    v118 = v11;
    v119 = AssociatedTypeWitness;
    v63 = 0;
    if (v62)
    {
      v64 = 0;
      v115 = *(v121 + 32);
      v116 = (v121 + 32);
      v114 = (v41 + 16);
      v65 = (v41 + 56);
      v66 = (v111 + 8);
      v67 = (v41 + 8);
      while (1)
      {
        v68 = v62;
        v126 = v117;
        v69 = v120;
        (v115)(v64, v125, v123, v121);
        v70 = v122;
        v71 = v119;
        (*v114)(v122, v69, v119);
        (*v65)(v70, 0, 1, v71);
        sub_21D3F18D0(v70);
        (*v66)(v70, v118);
        v72 = sub_21DBFA6DC();

        result = (*v67)(v69, v71);
        v73 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          break;
        }

        v74 = __OFADD__(v63, v73);
        v63 += v73;
        if (v74)
        {
          goto LABEL_29;
        }

        ++v64;
        v62 = v68;
        if (v68 == v64)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_18:
    v75 = v122;
    v76 = v125;
    v77 = v118;
    v112(v122, v125, v118);
    v78 = v101;
    TTRDerivedTreeLocation.init(parent:index:)(v75, v63, v119, v110, v101);
    (*(v111 + 8))(v76, v77);
    v79 = v108;
    v80 = v107;
    v32 = v106;
    (*(v108 + 8))(v107, v106);
    v81 = *(v79 + 32);
    v81(v80, v78, v32);
    goto LABEL_25;
  }

  (*(v111 + 8))(v125, v11);
  v79 = v108;
  v82 = v109;
  (*(v108 + 32))(v109, v107, v32);
  return (*(v79 + 56))(v82, 0, 1, v32);
}

uint64_t sub_21D3F1850(uint64_t a1)
{
  v3 = *v1;
  result = sub_21D3EF920(a1);
  if (!result)
  {
    return TTRTreeContentsQueryable.children(of:)(a1, *(v3 + 80), *(*(*(v3 + 88) + 8) + 8));
  }

  return result;
}

uint64_t sub_21D3F18D0(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_getAssociatedTypeWitness();
  *(v3 + 16) = sub_21DBF9E3C();
  sub_21D3F4840(a1, v1, v3);
  swift_beginAccess();
  v4 = *(v3 + 16);
  sub_21DBF8E0C();

  return v4;
}

uint64_t TTRTreeStorageWithFlattenedChildren.convertToImmediateUpstream(_:for:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = *(*v3 + 88);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21DBFBA8C();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v46 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = v43 - v13;
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v43 - v15;
  v17 = *a2;
  v18 = sub_21D3F1850(a1);
  if (v17)
  {

    *&v52 = sub_21D3F21E8(a1);
    type metadata accessor for TTRTreeStorageWithFlattenedChildren.InferredInsertLocation();
    sub_21DBFA74C();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for TTRDerivedTreeLocation();
    swift_getWitnessTable();
    v19 = sub_21DBFA4EC();
  }

  else
  {
    v45 = v16;
    v57 = v18;
    sub_21DBFA74C();
    swift_getWitnessTable();
    sub_21DBFAC2C();
    v56 = v52;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = type metadata accessor for TTRDerivedTreeLocation();
    v55 = *(a1 + *(v20 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050);
    if (sub_21DBFAD8C())
    {
      v43[0] = v6;
      v43[1] = v20;
      v21 = v45;
      sub_21DBFA78C();

      *&v52 = v3[2];
      v22 = v52;
      v23 = *(v7 + 48);
      swift_unknownObjectRetain();
      v24 = v50;
      v23(v21, v8, v7);
      *&v52 = v22;
      v25 = TTRTreeContentsQueryable.childrenCollection(of:)(v24, v8, v7);
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = swift_unknownObjectRelease();
      *&v52 = v25;
      *(&v52 + 1) = v27;
      v53 = v29;
      v54 = v31;
      MEMORY[0x28223BE20](v32);
      v33 = v43[0];
      v43[-4] = v8;
      v43[-3] = v33;
      v43[-2] = v21;
      sub_21D0E8418(qword_27CE5C010);
      sub_21DBFC0EC();
      v51 = sub_21D0E8418(&qword_280D17898);
      swift_getWitnessTable();
      sub_21DBFACCC();

      if (BYTE8(v56))
      {
        v19 = sub_21DBFA68C();
        (*(v48 + 8))(v50, v49);
      }

      else
      {
        v34 = v56;
        sub_21DBFC5CC();
        swift_allocObject();
        v35 = sub_21DBFA60C();
        v37 = v36;
        v39 = v48;
        v38 = v49;
        v40 = v46;
        v41 = v50;
        (*(v48 + 16))(v46, v50, v49);
        TTRDerivedTreeLocation.init(parent:index:)(v40, v34, AssociatedTypeWitness, AssociatedConformanceWitness, v37);
        sub_21D23C8B4();
        v19 = v35;
        (*(v39 + 8))(v41, v38);
      }

      (*(v47 + 8))(v21, AssociatedTypeWitness);
    }

    else
    {

      return sub_21DBFA68C();
    }
  }

  return v19;
}

uint64_t sub_21D3F1FE0(uint64_t a1, uint64_t a2)
{
  v15[1] = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = *(AssociatedConformanceWitness + 24);
  v11 = swift_checkMetadataState();
  v10(v11, AssociatedConformanceWitness);
  v10(v11, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  v12 = sub_21DBFA10C();
  v13 = *(v4 + 8);
  v13(v6, AssociatedTypeWitness);
  v13(v9, AssociatedTypeWitness);
  return v12 & 1;
}

uint64_t sub_21D3F21E8(uint64_t a1)
{
  v275 = *v1;
  v252 = *(*(v275 + 88) + 8);
  v3 = *(v275 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v235 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v229 = &v210 - v7;
  v253 = v8;
  v9 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v221 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v249 = &v210 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v227 = &v210 - v12;
  v241 = v9;
  v228 = *(v9 - 8);
  MEMORY[0x28223BE20](v13);
  v233 = &v210 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v237 = &v210 - v16;
  MEMORY[0x28223BE20](v17);
  v261 = &v210 - v18;
  MEMORY[0x28223BE20](v19);
  v220 = &v210 - v20;
  MEMORY[0x28223BE20](v21);
  v232 = &v210 - v22;
  MEMORY[0x28223BE20](v23);
  v234 = &v210 - v24;
  v266 = AssociatedConformanceWitness;
  v25 = type metadata accessor for TTRDerivedTreeLocation();
  v226 = sub_21DBFBA8C();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v245 = &v210 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v231 = (&v210 - v28);
  v259 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v29);
  v248 = &v210 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v236 = &v210 - v32;
  MEMORY[0x28223BE20](v33);
  v238 = &v210 - v34;
  MEMORY[0x28223BE20](v35);
  v224 = &v210 - v36;
  MEMORY[0x28223BE20](v37);
  v240 = (&v210 - v38);
  MEMORY[0x28223BE20](v39);
  v239 = &v210 - v40;
  v251 = v3;
  inserted = type metadata accessor for TTRTreeStorageWithFlattenedChildren.InferredInsertLocation();
  MEMORY[0x28223BE20](inserted);
  v258 = &v210 - v41;
  v263 = AssociatedTypeWitness;
  v42 = sub_21DBFBA8C();
  v274 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v274);
  v272 = &v210 - v43;
  v267 = *(v25 - 8);
  MEMORY[0x28223BE20](v44);
  v257 = &v210 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v250 = &v210 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v210 - v49;
  v51 = *(v42 - 8);
  MEMORY[0x28223BE20](v52);
  v242 = &v210 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v244 = &v210 - v55;
  MEMORY[0x28223BE20](v56);
  v265 = &v210 - v57;
  MEMORY[0x28223BE20](v58);
  v223 = &v210 - v59;
  MEMORY[0x28223BE20](v60);
  v243 = (&v210 - v61);
  MEMORY[0x28223BE20](v62);
  v230 = &v210 - v63;
  MEMORY[0x28223BE20](v64);
  v66 = &v210 - v65;
  MEMORY[0x28223BE20](v67);
  v69 = &v210 - v68;
  v71 = MEMORY[0x28223BE20](v70);
  v73 = &v210 - v72;
  v260 = v51;
  v76 = *(v51 + 16);
  v74 = v51 + 16;
  v75 = v76;
  v262 = v42;
  result = (v76)(v69, a1, v42, v71);
  v268 = v25;
  v78 = *(a1 + *(v25 + 36));
  if (__OFSUB__(v78, 1))
  {
    __break(1u);
    return result;
  }

  v222 = v69;
  v79 = v263;
  TTRDerivedTreeLocation.init(parent:index:)(v69, v78 - 1, v263, v266, v50);
  v80 = v275;
  WitnessTable = swift_getWitnessTable();
  TTRTreeStorageTreeDeriving.item(at:)(v50, v80, WitnessTable, v73);
  v82 = *(v267 + 8);
  v247 = v267 + 8;
  v246 = v82;
  v82(v50, v268);
  v273 = a1;
  v271 = v1;
  sub_21D3F501C(a1, v1, v66);
  v276 = sub_21DBF9E3C();
  v83 = v73;
  v84 = *(v274 + 48);
  v85 = v272;
  v254 = v83;
  v86 = v262;
  v75(v272);
  v255 = v66;
  v275 = v74;
  (v75)(&v85[v84], v66, v86);
  v87 = v259;
  v89 = v259 + 48;
  v88 = *(v259 + 48);
  v90 = v88(v85, 1, v79);
  v91 = v79;
  v274 = v89;
  v92 = v88(&v85[v84], 1, v79);
  v93 = v85;
  if (v90 == 1)
  {
    v94 = v258;
    if (v92 == 1)
    {
      (v75)(v258, v273, v86);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
    }

    else
    {
      v104 = &v85[v84];
      v105 = v239;
      (*(v87 + 32))(v239, v104, v79);
      (*(v87 + 16))(v94, v105, v79);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      (*(v87 + 8))(v105, v79);
    }

    v106 = *(v260 + 8);
    v106(v255, v86);
    goto LABEL_10;
  }

  v95 = v88;
  v273 = v75;
  v97 = v87 + 32;
  v96 = *(v87 + 32);
  v98 = v87;
  if (v92 != 1)
  {
    v107 = v238;
    v108 = v93;
    v109 = v91;
    v96(v238);
    v110 = v236;
    v270 = v96;
    (v96)(v236, &v108[v84], v109);
    v111 = v231;
    v230 = v271[2];
    TTRTreeStorageTreeDeriving.derivedTreeLocation(for:)(v110, v251, v252, v231);
    v113 = v267;
    v112 = v268;
    v114 = *(v267 + 48);
    v224 = (v267 + 48);
    v222 = v114;
    if (v114(v111, 1, v268) == 1)
    {
      v115 = *(v98 + 8);
      v115(v110, v109);
      v115(v107, v109);
      v116 = *(v260 + 8);
      v116(v255, v86);
      v116(v254, v86);
      (*(v225 + 8))(v111, v226);
      return v276;
    }

    v124 = *(v113 + 32);
    v125 = v111;
    v126 = v250;
    v267 = v113 + 32;
    v219 = v124;
    v124(v250, v125, v112);
    v127 = v266;
    v128 = (v266 + 3);
    v129 = v234;
    v215 = v266[3];
    v215(v109, v266);
    v130 = *(v235 + 56);
    v131 = 1;
    v271 = (v235 + 56);
    v243 = v130;
    v130(v129, 0, 1, v253);
    v132 = v223;
    v273(v223, v126, v86);
    v133 = v95(v132, 1, v109);
    v272 = v95;
    v269 = v97;
    v214 = v128;
    if (v133 == 1)
    {
      v98 = v260;
      v134 = v86;
      v135 = v232;
    }

    else
    {
      v135 = v232;
      v215(v109, v127);
      v131 = 0;
      v134 = v109;
    }

    (*(v98 + 8))(v132, v134);
    v136 = v253;
    v243(v135, v131, 1, v253);
    v137 = *(TupleTypeMetadata2 + 48);
    v138 = v228;
    v139 = (v228 + 16);
    v140 = *(v228 + 16);
    v141 = v227;
    v142 = v234;
    v143 = v241;
    v140(v227, v234, v241);
    v240 = v137;
    v140(v137 + v141, v135, v143);
    v145 = v235 + 48;
    v144 = *(v235 + 48);
    v146 = v144(v141, 1, v136);
    v147 = v248;
    v223 = v139;
    v218 = v140;
    v217 = v145;
    v216 = v144;
    if (v146 == 1)
    {
      v148 = *(v138 + 8);
      v149 = v241;
      (v148)(v232, v241);
      (v148)(v142, v149);
      if (v144(v240 + v141, 1, v253) == 1)
      {
        (v148)(v141, v241);
        v150 = v238;
        v151 = v255;
LABEL_46:
        v202 = v150;
        v203 = v259;
        v204 = v151;
        v205 = v236;
        v206 = v263;
        (*(v259 + 16))(v258, v236, v263);
        swift_storeEnumTagMultiPayload();
        sub_21DBFA74C();
        sub_21DBFA6FC();
        v246(v250, v268);
        v207 = *(v203 + 8);
        v207(v205, v206);
        v207(v202, v206);
        v106 = *(v260 + 8);
        v106(v204, v86);
LABEL_10:
        v106(v254, v86);
        return v276;
      }

      v155 = v241;
    }

    else
    {
      v152 = v220;
      v140(v220, v141, v241);
      v153 = v240;
      v154 = v253;
      if (v144(v240 + v141, 1, v253) != 1)
      {
        v197 = v235;
        v198 = v153 + v141;
        v199 = v229;
        (*(v235 + 32))(v229, v198, v154);
        swift_getAssociatedConformanceWitness();
        LODWORD(v240) = sub_21DBFA10C();
        v200 = *(v197 + 8);
        v200(v199, v154);
        v148 = *(v138 + 8);
        v201 = v241;
        (v148)(v232, v241);
        (v148)(v234, v201);
        v200(v152, v154);
        v150 = v238;
        v151 = v255;
        (v148)(v227, v201);
        v156 = v245;
        v155 = v201;
        if (v240)
        {
          goto LABEL_46;
        }

        goto LABEL_27;
      }

      v148 = *(v138 + 8);
      v155 = v241;
      (v148)(v232, v241);
      (v148)(v234, v155);
      (*(v235 + 8))(v152, v154);
    }

    v150 = v238;
    (*(v221 + 8))(v141, TupleTypeMetadata2);
    v156 = v245;
LABEL_27:
    v231 = v148;
    v157 = v259;
    v158 = *(v259 + 16);
    v159 = v265;
    v160 = v263;
    v234 = (v259 + 16);
    v232 = v158;
    (v158)(v265, v150, v263);
    v161 = *(v157 + 56);
    v212 = v157 + 56;
    v211 = v161;
    v161(v159, 0, 1, v160);
    v162 = v244;
    v273(v244, v159, v86);
    v163 = (v272)(v162, 1, v160);
    v164 = v237;
    v165 = v268;
    if (v163 == 1)
    {
LABEL_28:
      v246(v250, v165);
      v166 = *(v259 + 8);
      v166(v236, v160);
      v166(v238, v160);
      v167 = *(v260 + 8);
      v167(v255, v86);
      v167(v254, v86);
      v167(v162, v86);
      v167(v265, v86);
      return v276;
    }

    v227 = (v260 + 24);
    v240 = (v259 + 8);
    v220 = (v260 + 8);
    v210 = (v235 + 32);
    v213 = (v235 + 8);
    v235 = v228 + 8;
    v228 = v221 + 8;
    while (1)
    {
      v270(v147, v162, v160);
      TTRTreeStorageTreeDeriving.derivedTreeLocation(for:)(v147, v251, v252, v156);
      if (v222(v156, 1, v165) == 1)
      {
        v208 = *v240;
        (*v240)(v147, v160);
        v246(v250, v165);
        v208(v236, v160);
        v208(v238, v160);
        v209 = *v220;
        (*v220)(v255, v86);
        v209(v254, v86);
        (*(v225 + 8))(v156, v226);
        v209(v265, v86);
        return v276;
      }

      v170 = v257;
      v219(v257, v156, v165);
      (v232)(v258, v147, v160);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      v171 = v265;
      (*v227)(v265, v170, v86);
      v172 = 1;
      v173 = v272;
      v174 = (v272)(v171, 1, v160);
      v175 = v261;
      if (!v174)
      {
        v176 = v239;
        (v232)(v239, v265, v160);
        v215(v160, v266);
        (*v240)(v176, v160);
        v172 = 0;
      }

      v177 = 1;
      v178 = v172;
      v179 = v253;
      v243(v175, v178, 1, v253);
      v180 = v242;
      v273(v242, v250, v86);
      if (v173(v180, 1, v160) == 1)
      {
        v181 = v220;
        v182 = v86;
      }

      else
      {
        v215(v160, v266);
        v177 = 0;
        v181 = v240;
        v182 = v160;
      }

      (*v181)(v180, v182);
      v243(v164, v177, 1, v179);
      v183 = *(TupleTypeMetadata2 + 48);
      v184 = v249;
      v185 = v261;
      v186 = v155;
      v187 = v218;
      v218(v249, v261, v155);
      v187(&v184[v183], v164, v155);
      v188 = v216;
      if (v216(v184, 1, v179) == 1)
      {
        break;
      }

      v191 = v233;
      v187(v233, v184, v155);
      if (v188(&v184[v183], 1, v179) == 1)
      {
        v168 = v231;
        (v231)(v164, v155);
        v168(v261, v155);
        v165 = v268;
        v246(v257, v268);
        v169 = v191;
        v147 = v248;
        (*v240)(v248, v263);
        (*v213)(v169, v179);
        v86 = v262;
LABEL_31:
        (*v228)(v184, TupleTypeMetadata2);
        v160 = v263;
        v156 = v245;
        goto LABEL_32;
      }

      v192 = v229;
      (*v210)(v229, &v184[v183], v179);
      v193 = v191;
      v160 = v263;
      swift_getAssociatedConformanceWitness();
      LODWORD(v221) = sub_21DBFA10C();
      v194 = *v213;
      v155 = v241;
      (*v213)(v192, v179);
      v195 = v231;
      (v231)(v237, v155);
      v195(v261, v155);
      v246(v257, v268);
      v147 = v248;
      (*v240)(v248, v160);
      v164 = v237;
      v194(v193, v179);
      v165 = v268;
      v195(v249, v155);
      v156 = v245;
      v86 = v262;
      if (v221)
      {
        goto LABEL_44;
      }

LABEL_32:
      v162 = v244;
      v273(v244, v265, v86);
      if ((v272)(v162, 1, v160) == 1)
      {
        goto LABEL_28;
      }
    }

    v189 = v231;
    (v231)(v164, v186);
    v189(v185, v186);
    v165 = v268;
    v246(v257, v268);
    v147 = v248;
    (*v240)(v248, v263);
    v190 = v188(&v184[v183], 1, v179);
    v86 = v262;
    v155 = v186;
    if (v190 == 1)
    {
      (v231)(v184, v186);
      v160 = v263;
      v156 = v245;
LABEL_44:
      v196 = v265;
      (*v220)(v265, v86);
      v211(v196, 1, 1, v160);
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v99 = v240;
  (v96)(v240, v93, v79);
  v100 = *(v87 + 16);
  v101 = v230;
  v268 = v100;
  v100(v230, v99, v79);
  (*(v98 + 56))(v101, 0, 1, v79);
  v102 = v243;
  v273(v243, v101, v86);
  if (v95(v102, 1, v79) == 1)
  {
    v103 = *(v260 + 8);
    v103(v101, v86);
  }

  else
  {
    v266 = (v98 + 8);
    v267 = v98 + 16;
    v117 = v79;
    v118 = (v260 + 8);
    v265 = (v260 + 32);
    v260 = (v260 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v272 = v95;
    v269 = v97;
    v270 = v96;
    v119 = v258;
    v120 = v224;
    v121 = v101;
    v122 = v243;
    v123 = v222;
    do
    {
      v270(v120, v122, v117);
      v268(v119, v120, v117);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      sub_21D3F4CE8(v120, v271, v123);
      (*v266)(v120, v117);
      v103 = *v118;
      (*v118)(v121, v86);
      (*v265)(v121, v123, v86);
      v273(v122, v121, v86);
    }

    while ((v272)(v122, 1, v117) != 1);
    v91 = v117;
    v98 = v259;
    v103(v121, v86);
  }

  (*(v98 + 8))(v240, v91);
  v103(v255, v86);
  v103(v254, v86);
  v103(v243, v86);
  return v276;
}

uint64_t sub_21D3F4180@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v69 = a1;
  v3 = *v2;
  v67 = *(*(*v2 + 88) + 8);
  v4 = *(v67 + 8);
  v5 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v56 - v10;
  v65 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for TTRDerivedTreeLocation();
  v12 = sub_21DBFBA8C();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v56 - v15;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - v21;
  inserted = type metadata accessor for TTRTreeStorageWithFlattenedChildren.InferredInsertLocation();
  MEMORY[0x28223BE20](inserted);
  v25 = &v56 - v24;
  v70 = v11;
  v26 = *(v11 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v66 = &v56 - v32;
  (*(v33 + 16))(v25, v69, inserted, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v16 + 32))(v22, v25, AssociatedTypeWitness);
      v35 = v58;
      TTRTreeStorageTreeDeriving.derivedTreeLocation(for:)(v22, v5, v67, v58);
      (*(v16 + 8))(v22, AssociatedTypeWitness);
      v36 = v70;
      v37 = (*(v26 + 48))(v35, 1, v70);
      v38 = v68;
      if (v37 == 1)
      {
        (*(v56 + 8))(v35, v57);
        v39 = 1;
        return (*(v26 + 56))(v38, v39, 1, v36);
      }

      v47 = *(v26 + 32);
      v48 = v66;
      v47(v66, v35, v36);
      v47(v38, v48, v36);
    }

    else
    {
      v42 = v62;
      v41 = v63;
      v43 = v64;
      (*(v63 + 32))(v62, v25, v64);
      v71 = v2[2];
      v44 = (*(v65 + 24))(v42, v5);
      v45 = v61;
      (*(v41 + 16))(v61, v42, v43);
      v46 = v66;
      TTRDerivedTreeLocation.init(parent:index:)(v45, v44, AssociatedTypeWitness, AssociatedConformanceWitness, v66);
      (*(v41 + 8))(v42, v43);
      v38 = v68;
      v36 = v70;
      (*(v26 + 32))(v68, v46, v70);
    }

LABEL_12:
    v39 = 0;
    return (*(v26 + 56))(v38, v39, 1, v36);
  }

  (*(v16 + 32))(v19, v25, AssociatedTypeWitness);
  v40 = v59;
  TTRTreeStorageTreeDeriving.derivedTreeLocation(for:)(v19, v5, v67, v59);
  (*(v16 + 8))(v19, AssociatedTypeWitness);
  v36 = v70;
  if ((*(v26 + 48))(v40, 1, v70) == 1)
  {
    (*(v56 + 8))(v40, v57);
    v39 = 1;
    v38 = v68;
    return (*(v26 + 56))(v38, v39, 1, v36);
  }

  v49 = *(v26 + 32);
  result = v49(v29, v40, v36);
  v51 = *(v36 + 36);
  v52 = *&v29[v51];
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (!v53)
  {
    *&v29[v51] = v54;
    v55 = v66;
    v49(v66, v29, v36);
    v38 = v68;
    v49(v68, v55, v36);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}