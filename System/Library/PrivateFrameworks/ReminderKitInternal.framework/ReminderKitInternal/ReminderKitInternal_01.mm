uint64_t sub_23005F108(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_23005F150()
{
  result = qword_280C9C420;
  if (!qword_280C9C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C420);
  }

  return result;
}

uint64_t sub_23005F1A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_23005F1FC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_230310BA8();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_23005F4A0()
{
  v0 = sub_23030F508();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + *(*result + 144));
    *v3 = v6;
    (*(v1 + 104))(v3, *MEMORY[0x277D85200], v0);
    v7 = v6;
    LOBYTE(v6) = sub_23030F528();
    (*(v1 + 8))(v3, v0);
    if (v6)
    {
      if (qword_280C97118 == -1)
      {
LABEL_4:
        v8 = sub_23030EF48();
        __swift_project_value_buffer(v8, qword_280C97120);

        v9 = sub_23030EF38();
        v10 = sub_230310268();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v24[0] = v12;
          *v11 = 136315138;
          v13 = *(v5 + 16);
          v14 = *(v5 + 24);

          v15 = sub_23004E30C(v13, v14, v24);

          *(v11 + 4) = v15;
          _os_log_impl(&dword_230044000, v9, v10, "Received notification %s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x231914180](v12, -1, -1);
          MEMORY[0x231914180](v11, -1, -1);
        }

        os_unfair_lock_lock(*(v5 + 32));
        if (*(v5 + 56) == -1)
        {
          goto LABEL_34;
        }

        swift_beginAccess();
        v16 = *(v5 + 48);
        sub_23030F0D8();
        result = sub_23030F0C8();
        if (result)
        {
          goto LABEL_10;
        }

        if (v16 < 0)
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v16)
        {
LABEL_10:
          swift_beginAccess();
          v17 = *(v5 + 48);
          sub_23030F0D8();
          if ((sub_23030F0C8() & 1) == 0)
          {
            sub_23030F0D8();
            result = sub_23030F0C8();
            if (result)
            {
              v18 = sub_23030F0D8();
            }

            else
            {
              if (v17 < 0)
              {
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

              if (!v17)
              {
LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

              v18 = v17 - 1;
            }

            *(v5 + 48) = v18;
          }

          swift_endAccess();
        }

        os_unfair_lock_unlock(*(v5 + 32));
        sub_23030F0D8();
        result = sub_23030F0C8();
        if (result)
        {
          goto LABEL_21;
        }

        if ((v16 & 0x8000000000000000) == 0)
        {
          if (!v16)
          {
          }

LABEL_21:
          os_unfair_recursive_lock_lock_with_options();
          v19 = sub_23030F0B8();
          os_unfair_recursive_lock_unlock();
          sub_23030F0D8();
          result = sub_23030F0C8();
          if (result)
          {
LABEL_24:
            os_unfair_lock_lock(*(v5 + 32));
            swift_beginAccess();
            v20 = *(v5 + 48);
            sub_23030F0D8();
            if (sub_23030F0C8())
            {
LABEL_33:
              swift_endAccess();
LABEL_34:
              os_unfair_lock_unlock(*(v5 + 32));
            }

            sub_23030F0D8();
            v21 = sub_23030F0C8();
            v22 = sub_23030F0D8();
            if (v21)
            {
LABEL_32:
              *(v5 + 48) = v22;
              goto LABEL_33;
            }

            result = sub_23030F0C8();
            if (result)
            {
LABEL_30:
              v22 = sub_23030F0D8();
              goto LABEL_32;
            }

            if (((v20 | v19) & 0x8000000000000000) == 0)
            {
              v22 = v20 + v19;
              if (!__OFADD__(v20, v19))
              {
                if ((v22 & 0x8000000000000000) == 0)
                {
                  goto LABEL_32;
                }

LABEL_45:
                __break(1u);
                return result;
              }

              goto LABEL_30;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          if ((v19 & 0x8000000000000000) == 0)
          {
            if (v19)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_41;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  return result;
}

unint64_t sub_23005F900(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_23005F990()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C97120);
  v1 = __swift_project_value_buffer(v0, qword_280C97120);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_WORD *storeEnumTagSinglePayload for KMeansAutoTuner.TuningMethod(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23005FAD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_23005FB38()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = sub_23030E9F8();
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() fetchResultTokenFromDataRepresentation:v0 error:v5];

  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_23030E808();

    swift_willThrow();
  }

  return v1;
}

unint64_t sub_23005FC08()
{
  result = qword_280C998F0[0];
  if (!qword_280C998F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C998F0);
  }

  return result;
}

id sub_23005FC70(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

unint64_t sub_23005FCE8()
{
  result = qword_280C998E8;
  if (!qword_280C998E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C998E8);
  }

  return result;
}

BOOL sub_23005FE0C(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_23005FE3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

ReminderKitInternal::REMHashtagLabelDataView::HashtagLabelsReferencedByCustomSmartListFiltersInvocation::Result __swiftcall REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.init(labels:isUpToDate:)(Swift::OpaquePointer labels, Swift::Bool isUpToDate)
{
  *v2 = labels;
  *(v2 + 8) = isUpToDate;
  result.labels = labels;
  result.isUpToDate = isUpToDate;
  return result;
}

unint64_t *sub_23006002C(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_23006006C(*a2);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

unint64_t sub_23006006C(unint64_t result)
{
  v2 = result >> 62;
  if ((result >> 62) > 1)
  {
    if (v2 == 2)
    {
      v3 = (result & 0x3FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v2)
    {
      result &= 0x3FFFFFFFFFFFFFFFuLL;
    }

    return result;
  }

  return result;
}

void sub_230060110(unint64_t a1)
{
  v2 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v2 == 2)
    {
    }
  }

  else
  {
    if (v2)
    {
      a1 &= 0x3FFFFFFFFFFFFFFFuLL;
    }
  }
}

uint64_t static REMSmartListType.manualOrderablePredefinedSmartListTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB159B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23031C5C0;
  v1 = *MEMORY[0x277D44BC0];
  v2 = *MEMORY[0x277D44BA8];
  *(v0 + 32) = *MEMORY[0x277D44BC0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277D44B80];
  v4 = *MEMORY[0x277D44BA0];
  *(v0 + 48) = *MEMORY[0x277D44B80];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277D44B90];
  v6 = *MEMORY[0x277D44B88];
  *(v0 + 64) = *MEMORY[0x277D44B90];
  *(v0 + 72) = v6;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return v0;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t REMManualOrdering.Predefined.manualOrderingID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_23030EBB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  if (*v1 > 5u)
  {
    if (*v1 == 6)
    {
      v15 = 4;
    }

    else
    {
      v15 = 5;
    }

    v31 = v15;
    v13 = 0;
    v32 = 0xE000000000000000;
  }

  else
  {
    v13 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v32 = v14;
    v31 = 1;
  }

  sub_23030EB68();

  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v13;
    v30 = a1;
    (*(v7 + 32))(v12, v5, v6);
    v17 = objc_opt_self();
    v18 = sub_23030EB88();
    v19 = [v17 objectIDWithUUID_];

    v20 = type metadata accessor for REMObjectID_Codable();
    v21 = objc_allocWithZone(v20);
    v22 = [v19 uuid];
    sub_23030EBA8();

    v23 = sub_23030EB88();
    v24 = *(v7 + 8);
    v24(v10, v6);
    v25 = [v19 entityName];
    if (!v25)
    {
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v25 = sub_23030F8B8();
    }

    v33.receiver = v21;
    v33.super_class = v20;
    v26 = objc_msgSendSuper2(&v33, sel_initWithUUID_entityName_, v23, v25);

    result = (v24)(v12, v6);
    v27 = v30;
    *v30 = v26;
    *(v27 + 4) = v31;
    v28 = v32;
    v27[2] = v29;
    v27[3] = v28;
  }

  return result;
}

uint64_t sub_2300606BC(_BYTE *a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_23030F458();
  v20 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23030F4C8();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v21 = v4[2];
  v15 = swift_allocObject();
  swift_weakInit();
  if (a1)
  {
    v9 = swift_allocObject();
    v9[2] = *(v8 + 80);
    v9[3] = *(v8 + 88);
    v9[4] = v15;
    v9[5] = a2;
    v9[6] = isEscapingClosureAtFileLocation;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_230060B58;
    *(a2 + 24) = v9;
    v27 = sub_230060B84;
    v28 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_23005FEDC;
    v26 = &block_descriptor_3;
    v12 = _Block_copy(&aBlock);
    v11 = v28;

    dispatch_sync(v21, v12);
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v17 = swift_allocObject();
  *(v17 + 2) = *(v8 + 80);
  *(v17 + 3) = *(v8 + 88);
  *(v17 + 4) = v15;
  *(v17 + 5) = a2;
  *(v17 + 6) = isEscapingClosureAtFileLocation;
  v27 = sub_2300F5F74;
  v28 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2300F5280;
  v26 = &block_descriptor_13;
  v18 = _Block_copy(&aBlock);

  sub_23030F488();
  v22 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  sub_230310648();
  MEMORY[0x2319120F0](0, v14, v11, v18);
  _Block_release(v18);
  (*(v20 + 8))(v11, v9);
  (*(v12 + 1))(v14, v19);
}

uint64_t sub_230060AE0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_230060B8C(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    a2(v4);
  }

  return result;
}

id REMCacheContext.object(forKey:)(uint64_t a1)
{
  v2 = [*(v1 + 16) objectForKey_];

  return v2;
}

uint64_t objectdestroy_24Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm()
{

  return swift_deallocObject();
}

double Date.rem_elapsedInMilliseconds.getter()
{
  v0 = sub_23030EB58();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030EB48();
  sub_23030EA88();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5 * 1000.0;
}

uint64_t REMManualOrdering.ManualOrderingID.listID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t destroy for REMRemindersListDataView.ReminderLite(id *a1)
{
}

__n128 REMAccountsListDataView.Model.init(accounts:defaultList:reminderCounts:hashtagLabels:smartListHashtagLabels:userDefinedVisibilityOfPredefinedSmartLists:orderedPinnedLists:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  v8 = *(a3 + 48);
  *(a8 + 48) = *(a3 + 32);
  *(a8 + 64) = v8;
  v9 = *(a3 + 80);
  *(a8 + 80) = *(a3 + 64);
  *(a8 + 96) = v9;
  result = *a3;
  v11 = *(a3 + 16);
  *(a8 + 16) = *a3;
  *(a8 + 32) = v11;
  *(a8 + 112) = a4;
  *(a8 + 120) = a5;
  *(a8 + 128) = a6;
  *(a8 + 136) = a7;
  return result;
}

uint64_t REMAccountsListDataView.Diff.init(updatedAccountObjectIDs:updatedListObjectIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *sub_230060F68(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

__n128 REMAccountsListDataView.Invocation.Result.init(model:outdatedProperties:diff:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[7];
  *(a4 + 96) = a1[6];
  *(a4 + 112) = v4;
  *(a4 + 128) = a1[8];
  v5 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v5;
  v6 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v6;
  v7 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 144) = a2;
  result = *a3;
  *(a4 + 152) = *a3;
  return result;
}

unint64_t sub_230060FF0()
{
  result = qword_280C9A970;
  if (!qword_280C9A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A970);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesAccuracy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t storeEnumTagSinglePayload for REMSpotlightReminderViewProxy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMSpotlightReminderViewProxy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t REMAccountsListDataView.Model.Account.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19728);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230055708();
  v9 = v8;
  sub_230311448();
  v13 = v9;
  v12 = 0;
  type metadata accessor for REMAccount_Codable();
  sub_23005575C(qword_280C9AEC8, type metadata accessor for REMAccount_Codable);
  sub_230310DF8();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19730);
    sub_2302DA790();
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2300614B4(void *a1, void (*a2)(void *))
{
  v26 = a2;
  v3 = v2;
  v5 = sub_23030EBB8();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB191E0);
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_230311438();
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v12 = sub_230310A58();
  v13 = __swift_project_value_buffer(v12, qword_280C9C460);
  if (*(v11 + 16) && (v14 = sub_23004BFC0(v13), (v15 & 1) != 0))
  {
    sub_23004D5CC(*(v11 + 56) + 32 * v14, v30);
  }

  else
  {

    memset(v30, 0, sizeof(v30));
  }

  sub_230055F74(v30, &v27, &qword_27DB14810);
  if (!v28)
  {
    sub_230061918(&v27, &qword_27DB14810);
    sub_2301FF8F0(v30, 0, 0);
    swift_willThrow();
    return sub_230061918(v30, &qword_27DB14810);
  }

  sub_230061914(&v27, v29);
  sub_23004D5CC(v29, &v27);
  type metadata accessor for REMStoreObjectsContainer();
  if (!swift_dynamicCast())
  {
    sub_23004D5CC(v29, &v27);
    sub_2301FF8F0(&v27, 0, 0);
    sub_230061918(&v27, &qword_27DB14810);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v29);
    return sub_230061918(v30, &qword_27DB14810);
  }

  v16 = v31;
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_230061918(v30, &qword_27DB14810);
  v17 = v3;
  v18 = v25;
  v26(v3);
  if (v18)
  {
  }

  v20 = a1[3];
  v25 = a1[4];
  v26 = v16;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_230055ED8();
  sub_230311448();
  v21 = [v17 remObjectID];
  v22 = [v21 uuid];

  sub_23030EBA8();
  sub_230055F2C(&unk_280C9C408, 255, MEMORY[0x277CC95F0]);
  sub_230310DF8();

  (*(v24 + 8))(v7, v5);
  return (*(v23 + 8))(v10, v8);
}

uint64_t sub_230061918(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2300619A8(void *a1, unint64_t *a2, uint64_t a3, const char *a4)
{
  v8 = [a1 optionalObjectID];
  if (v8)
  {
    v9 = v8;
    swift_beginAccess();
    v10 = *(v4 + 24);
    if (*(v10 + 16))
    {

      v11 = sub_230059108(v9);
      if (v12)
      {
        sub_23004D5CC(*(v10 + 56) + 32 * v11, &v18);

        sub_230061918(&v18, &qword_27DB14810);
        return;
      }
    }

    v18 = 0u;
    v19 = 0u;
    sub_230061918(&v18, &qword_27DB14810);
    v17 = [a1 storage];
    *(&v19 + 1) = sub_23004CBA4(0, a2);
    *&v18 = v17;
    swift_beginAccess();
    sub_23004BD34(&v18, v9);
    swift_endAccess();
  }

  else
  {
    if (qword_27DB13D00 != -1)
    {
      swift_once();
    }

    v13 = sub_23030EF48();
    __swift_project_value_buffer(v13, qword_27DB191B8);
    v14 = sub_23030EF38();
    v15 = sub_230310298();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_230044000, v14, v15, a4, v16, 2u);
      MEMORY[0x231914180](v16, -1, -1);
    }
  }
}

_OWORD *sub_230061BCC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_230059108(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_230089D30();
      v8 = v16;
      goto LABEL_8;
    }

    sub_230061D1C(v13, a3 & 1);
    v8 = sub_230059108(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_23004CBA4(0, &qword_280C9C478);
      result = sub_2303112A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_23004B314(a1, v19);
  }

  else
  {
    sub_230061F94(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_230061D1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14470);
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_23004B314(v21, v32);
      }

      else
      {
        sub_23004D5CC(v21, v32);
        v22 = v20;
      }

      result = sub_230310438();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_23004B314(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_230061F94(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23004B314(a3, (a4[7] + 32 * a1));
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

unint64_t sub_230061FFC()
{
  result = qword_280C97550;
  if (!qword_280C97550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97550);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KMeansAutoTuner.TuningMethod(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_2300620C8()
{
  if (*v0)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t REMAccountsListDataView.Model.AccountChild.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19798);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230057DE8();
  sub_230311448();
  if (v8 >> 62)
  {
    if (v8 >> 62 == 1)
    {
      LOBYTE(v14) = 1;
      v16 = 0;
      sub_2300623F0();
      sub_230310DF8();
      if (!v2)
      {
        v14 = v8 & 0x3FFFFFFFFFFFFFFFLL;
        v16 = 1;
        type metadata accessor for REMSmartList_Codable();
        v9 = &unk_280C9AC10;
        v10 = type metadata accessor for REMSmartList_Codable;
LABEL_7:
        sub_23005575C(v9, v10);
LABEL_10:
        sub_230310DF8();
      }
    }

    else
    {
      LOBYTE(v14) = 2;
      v16 = 0;
      sub_2300623F0();
      sub_230310DF8();
      if (!v2)
      {
        v14 = v8 & 0x3FFFFFFFFFFFFFFFLL;
        v15 = v13;
        v16 = 1;
        sub_2302DABF8();
        goto LABEL_10;
      }
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v16 = 0;
    sub_2300623F0();
    sub_230310DF8();
    if (!v2)
    {
      v14 = v8;
      v16 = 1;
      type metadata accessor for REMList_Codable();
      v9 = &qword_280C9C348;
      v10 = type metadata accessor for REMList_Codable;
      goto LABEL_7;
    }
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2300623F0()
{
  result = qword_280C9A988;
  if (!qword_280C9A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A988);
  }

  return result;
}

uint64_t sub_230062498()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x54746E65746E6F63;
  }
}

void sub_23006252C(void *a1)
{
  v4 = [a1 optionalObjectID];
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    v6 = *(v1 + 24);
    if (*(v6 + 16))
    {

      v7 = sub_230059108(v5);
      if (v8)
      {
        sub_23004D5CC(*(v6 + 56) + 32 * v7, &v17);

        sub_230061918(&v17, &qword_27DB14810);
        return;
      }
    }

    v17 = 0u;
    v18 = 0u;
    sub_230061918(&v17, &qword_27DB14810);
    v13 = [a1 account];
    sub_230061978(v13);
    if (v2)
    {
    }

    else
    {

      v14 = [a1 parentList];
      if (v14)
      {
        v15 = v14;
        sub_23006252C();
      }

      v16 = [a1 storage];
      *(&v18 + 1) = sub_23004CBA4(0, &qword_280C9C2E0);
      *&v17 = v16;
      swift_beginAccess();
      sub_23004BD34(&v17, v5);
      swift_endAccess();
    }
  }

  else
  {
    if (qword_27DB13D00 != -1)
    {
      swift_once();
    }

    v9 = sub_23030EF48();
    __swift_project_value_buffer(v9, qword_27DB191B8);
    v10 = sub_23030EF38();
    v11 = sub_230310298();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      MEMORY[0x231914180](v12, -1, -1);
    }
  }
}

uint64_t sub_2300627B8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x4C746C7561666564;
    if (v1 != 1)
    {
      v5 = 0x7265646E696D6572;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x73746E756F636361;
    }
  }

  else
  {
    v2 = 0xD00000000000002BLL;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000016;
    if (v1 == 3)
    {
      v3 = 0x4C67617468736168;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_2300628C0()
{
  result = qword_280C97E70;
  if (!qword_280C97E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E70);
  }

  return result;
}

uint64_t REMAccountsListDataView.ReminderCounts.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19698);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v29 = v1[3];
  v30 = v9;
  v10 = v1[4];
  v27 = v1[5];
  v28 = v10;
  v11 = v1[6];
  v25 = v1[7];
  v26 = v11;
  v12 = v1[8];
  v23 = v1[9];
  v24 = v12;
  v13 = v1[10];
  v21 = v1[11];
  v22 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230059158();
  sub_230311448();
  v32 = v8;
  v33 = v7;
  v34 = 0;
  sub_230062EF4();
  v14 = v31;
  sub_230310DF8();
  if (!v14)
  {
    v15 = v27;
    v16 = v28;
    v17 = v25;
    v18 = v26;
    v32 = v30;
    v33 = v29;
    v34 = 1;
    sub_230310DF8();
    v32 = v16;
    v33 = v15;
    v34 = 2;
    sub_230310DF8();
    v32 = v18;
    v33 = v17;
    v34 = 3;
    sub_230310DF8();
    LOBYTE(v32) = 4;
    sub_230310DD8();
    LOBYTE(v32) = 5;
    sub_230310DD8();
    v32 = v22;
    v34 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196A0);
    sub_23006311C();
    sub_230310DF8();
    v32 = v21;
    v34 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB196A8);
    sub_2300631E8();
    sub_230310DF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_230062C6C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2();
  v7 = qword_280C9BA30;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_280C9BA38;
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a4;
  swift_retain_n();
  sub_23004796C(v8, 0, 1, sub_230096FA8, v9, sub_230096FBC, v10, sub_230064514, v11);
}

uint64_t firstly<A>(closure:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  return a1();
}

unint64_t sub_230062EF4()
{
  result = qword_280C97E78;
  if (!qword_280C97E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E78);
  }

  return result;
}

uint64_t REMAccountsListDataView.ReminderCounts.ComputedCountContainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19688);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230059610();
  sub_230311448();
  v11 = 0;
  sub_230310DD8();
  if (!v2)
  {
    v10 = 1;
    sub_230310DD8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_23006311C()
{
  result = qword_280C96F98;
  if (!qword_280C96F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB196A0);
    sub_23005575C(&unk_280C9C408, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F98);
  }

  return result;
}

unint64_t sub_2300631E8()
{
  result = qword_280C96F90;
  if (!qword_280C96F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB196A8);
    sub_23005575C(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
    sub_230062EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F90);
  }

  return result;
}

uint64_t REMObjectID_Codable.encode(to:)(void *a1)
{
  v2 = sub_23030EBB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB191D8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230059CB4();
  v10 = v15[0];
  sub_230311448();
  v11 = [v10 uuid];
  sub_23030EBA8();

  v17 = 0;
  sub_230055F2C(&unk_280C9C408, 255, MEMORY[0x277CC95F0]);
  v12 = v15[1];
  sub_230310DF8();
  (*(v3 + 8))(v5, v2);
  if (v12)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v14 = [v10 entityName];
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  v16 = 1;
  sub_230310DA8();
  (*(v7 + 8))(v9, v6);
}

void *Promise.init(value:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_230063638(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

void *sub_230063638(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  type metadata accessor for Seal();
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *(v8 + 24) = 0;
  (*(v5 + 16))(v7, a1, v4);
  v2[2] = sub_230063AA4(v8, v7);
  return v2;
}

unint64_t sub_230063768()
{
  result = qword_280C96F68;
  if (!qword_280C96F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19750);
    sub_23005575C(&qword_280C96EB8, type metadata accessor for REMSmartListType);
    sub_23005575C(&qword_280C96D30, type metadata accessor for REMSmartListUserDefinedVisibility);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F68);
  }

  return result;
}

uint64_t sub_230063858(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

uint64_t sub_230063890(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for Seal.Resolution();
  v6 = sub_2303104C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  swift_getFunctionTypeMetadata1();
  *(v2 + 32) = sub_23030F608();
  v10 = *(*(v5 - 8) + 56);
  v10(v2 + *(*v2 + 112), 1, 1, v5);
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  (*(*(v4 - 8) + 32))(v9, v13, v4);
  swift_storeEnumTagMultiPayload();
  v10(v9, 0, 1, v5);
  v11 = *(*v2 + 112);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v11, v9, v6);
  swift_endAccess();
  return v2;
}

uint64_t sub_230063AA4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_230063890(a1, a2);
  return v4;
}

uint64_t REMAccountsListDataView.Model.PinnedList.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB197D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v12 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23005A890();
  sub_230311448();
  if (v8)
  {
    if (v8 == 1)
    {
      LOBYTE(v13) = 1;
      v14 = 0;
      sub_230063F7C();
      sub_230310DF8();
      if (!v2)
      {
        v13 = v12;
        v14 = 1;
        type metadata accessor for REMList_Codable();
        v9 = &qword_280C9C348;
        v10 = type metadata accessor for REMList_Codable;
LABEL_9:
        sub_23005575C(v9, v10);
        sub_230310DF8();
      }
    }

    else
    {
      LOBYTE(v13) = 2;
      v14 = 0;
      sub_230063F7C();
      sub_230310DF8();
      if (!v2)
      {
        v13 = v12;
        v14 = 1;
        type metadata accessor for REMSmartList_Codable();
        v9 = &unk_280C9AC10;
        v10 = type metadata accessor for REMSmartList_Codable;
        goto LABEL_9;
      }
    }
  }

  else
  {
    LOBYTE(v13) = 0;
    v14 = 0;
    sub_230063F7C();
    sub_230310DF8();
    if (!v2)
    {
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      LOBYTE(v13) = 1;
      sub_230310DA8();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_230063DD0()
{
  v1 = *(type metadata accessor for Seal.Resolution() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 32);
  os_unfair_lock_assert_not_owner(*(*(v0 + 24) + 16));
  return v3(v0 + v2);
}

uint64_t sub_230063E8C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = a2;
  v6[4] = a1;
  if (qword_280C9BA30 != -1)
  {
    swift_once();
  }

  v7 = qword_280C9BA38;
  v8 = sub_230047648(v7, sub_230064020, v6);

  return v8;
}

unint64_t sub_230063F7C()
{
  result = qword_280C97E40;
  if (!qword_280C97E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E40);
  }

  return result;
}

uint64_t sub_230064040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v59 = a2;
  v8 = sub_2303113D8();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v49 - v11;
  v12 = sub_2303104C8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = *(a3 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = *(v17 + 16);
  v56 = a1;
  v23 = a1;
  v24 = v21;
  v21((&v49 - v22), v23, a3);
  v25 = swift_dynamicCast();
  v26 = *(*(a4 - 8) + 56);
  if (v25)
  {
    v27 = *(a4 - 8);
    v26(v16, 0, 1, a4);
    return (*(v27 + 32))(v50, v16, a4);
  }

  else
  {
    v26(v16, 1, 1, a4);
    (*(v13 + 8))(v16, v12);
    v58 = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v57);
    v30 = v56;
    v24(boxed_opaque_existential_0, v56, a3);
    v31 = v24;
    v49 = v24;
    sub_2303113B8();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v58 = MetatypeMetadata;
    v57[0] = v59;
    v32 = v52;
    sub_2303113B8();
    LODWORD(v50) = sub_230310298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14718);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_230316160;
    v31(v20, v30, a3);
    v34 = sub_23030F948();
    v36 = v35;
    v37 = MEMORY[0x277D837D0];
    *(v33 + 56) = MEMORY[0x277D837D0];
    v38 = sub_230096DF4();
    *(v33 + 64) = v38;
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v39 = sub_2303113C8();
    *(v33 + 96) = v37;
    *(v33 + 104) = v38;
    *(v33 + 72) = v39;
    *(v33 + 80) = v40;
    v41 = sub_2303113C8();
    *(v33 + 136) = v37;
    *(v33 + 144) = v38;
    *(v33 + 112) = v41;
    *(v33 + 120) = v42;
    sub_23004CBA4(0, qword_27DB14720);
    v43 = sub_2303104A8();
    sub_23030EF28();

    sub_230095B08();
    swift_allocError();
    v45 = v44;
    v44[3] = a3;
    v46 = __swift_allocate_boxed_opaque_existential_0(v44);
    v49(v46, v56, a3);
    v45[7] = MetatypeMetadata;
    v45[4] = v59;
    swift_willThrow();
    v47 = v54;
    v48 = *(v53 + 8);
    v48(v32, v54);
    return (v48)(v55, v47);
  }
}

uint64_t sub_230064538()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 1717987684;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

uint64_t UnfairLock.__deallocating_deinit()
{
  MEMORY[0x231914180](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_2300645FC()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = *(v1 + 80);
  *v2 = v0;
  v2[1] = sub_230065728;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x2822008A0](v4, 0, 0, 0x2928746567, 0xE500000000000000, sub_230064CF8, v5, v3);
}

unint64_t sub_2300646C8()
{
  result = qword_280C9A990;
  if (!qword_280C9A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A990);
  }

  return result;
}

uint64_t sub_23006471C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v4 = sub_23030FE78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = *(v5 + 16);
  v31 = a1;
  v34 = v9;
  v35 = v5 + 16;
  v9(&v26 - v7, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v33 = *(v5 + 80);
  v11 = swift_allocObject();
  v29 = v3;
  *(v11 + 16) = v3;
  v32 = *(v5 + 32);
  v32(v11 + v10, v8, v4);
  if (qword_280C9BA30 != -1)
  {
    swift_once();
  }

  v12 = qword_280C9BA38;
  v13 = sub_230047648(v12, sub_230064D00, v11);
  v30 = v13;

  v14 = v31;
  v34(v8, v31, v4);
  v15 = swift_allocObject();
  v16 = v4;
  v28 = v4;
  v17 = v29;
  *(v15 + 16) = v29;
  v32(v15 + v10, v8, v16);
  v18 = *(v13 + 16);
  os_unfair_lock_lock_with_options();
  v19 = swift_allocObject();
  v26 = v6;
  v20 = v19;
  v19[2] = v12;
  v19[3] = sub_230096560;
  v19[4] = v15;
  v27 = v12;

  v21 = v14;
  v22 = sub_230064FA4(sub_2300652D4, v20);

  os_unfair_lock_unlock(*(*(v18 + 16) + 16));
  v22();

  v23 = v28;
  v34(v8, v21, v28);
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  v32(v24 + v10, v8, v23);
  sub_230065368(v27, sub_2300965F4, v24);
}

uint64_t sub_230064AB8()
{

  return swift_deallocObject();
}

uint64_t REMAccountsListDataView.Diff.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19768);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23005B5A0();

  sub_230311448();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  sub_23005E68C(&qword_280C9B990, qword_280C9BFD8);
  sub_230310DF8();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_230064D00(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_23030FE78();
  return sub_230064DC0(a1);
}

uint64_t sub_230064DC0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_23030FE78();
  return sub_23030FE68();
}

uint64_t objectdestroy_81Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v1 = sub_23030FE78();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_230064F68()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t (*sub_230064FA4(uint64_t a1, uint64_t a2))()
{
  v5 = *(v2 + 16);
  os_unfair_lock_assert_owner(*(v5 + 16));
  if ((*(v2 + 24) & 1) == 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    swift_beginAccess();
    v12 = *(v2 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 32) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_23007EE90(0, v12[2] + 1, 1, v12);
      *(v2 + 32) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_23007EE90((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_2302D27C8;
    v16[5] = v11;
    *(v2 + 32) = v12;
    swift_endAccess();
    return nullsub_1;
  }

  result = swift_beginAccess();
  v7 = *(v2 + 48);
  if (v7 != 255)
  {
    v8 = *(v2 + 40);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = a1;
    *(v9 + 32) = a2;
    *(v9 + 40) = v8;
    *(v9 + 48) = v7;

    sub_23006516C(v8, v7);

    return sub_230065274;
  }

  __break(1u);
  return result;
}

id sub_23006516C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_2300651A4(result, a2);
  }

  return result;
}

id sub_2300651A4(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

uint64_t destroy for REMAccountsListDataView.Invocation.Result(uint64_t a1)
{
}

uint64_t sub_230065278()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v5 = *(v0 + 40);
  v6 = v3;
  os_unfair_lock_assert_not_owner(*(v1 + 16));
  return v2(&v5);
}

uint64_t sub_2300652D4(uint64_t result)
{
  if (*(result + 8) >= 2u)
  {
    return sub_23004F8A0(*(v1 + 16), 0, 1, *(v1 + 24), *(v1 + 32));
  }

  return result;
}

uint64_t objectdestroy_25Tm(void (*a1)(void, void))
{

  a1(*(v1 + 40), *(v1 + 48));

  return swift_deallocObject();
}

void sub_230065354(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_230065368(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock_with_options();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = 0;
  *(v9 + 32) = 1;
  *(v9 + 40) = nullsub_1;
  *(v9 + 48) = 0;
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 72) = nullsub_1;
  *(v9 + 80) = 0;
  v10 = a1;

  v11 = sub_230064FA4(sub_2300654B4, v9);

  os_unfair_lock_unlock(*(*(v8 + 16) + 16));
  v11();

  return v4;
}

uint64_t sub_230065464()
{

  return swift_deallocObject();
}

uint64_t sub_230065590(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void (*a8)(void, void), uint64_t a9, uint64_t (*a10)(void), uint64_t a11)
{
  if (!a2)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a6;
    *(v18 + 24) = a7;

    sub_23004F8A0(a3, a4, a5 & 1, sub_230065700, v18);
    goto LABEL_5;
  }

  if (a2 == 1)
  {

    sub_2300651A4(a1, 1);
    sub_230126528(a3, 0, 1, a8, a9, a1);
    sub_230065354(a1, 1);
LABEL_5:
  }

  return sub_23004F8A0(a3, 0, 1, a10, a11);
}

uint64_t sub_2300656C4()
{

  return swift_deallocObject();
}

uint64_t sub_230065728()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23009487C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

id sub_2300658C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2300557A4(a1, 0x277D44548, &qword_280C9C2C8, 0x277D44560, type metadata accessor for REMAccount_Codable);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_230065934(void *a1)
{
  v3 = sub_23030EBB8();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB193C0);
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230055ED8();
  sub_230311428();
  if (!v1)
  {
    v36 = a1;
    sub_230055F2C(&unk_280C9C5F0, 255, MEMORY[0x277CC95F0]);
    sub_230310CE8();
    v34 = v3;
    v11 = objc_opt_self();
    v35 = v5;
    v12 = sub_23030EB88();
    v13 = [v11 objectIDWithUUID_];

    a1 = v36;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v14 = sub_230311418();
    if (qword_280C9C458 != -1)
    {
      swift_once();
    }

    v15 = sub_230310A58();
    v16 = __swift_project_value_buffer(v15, qword_280C9C460);
    v17 = v37;
    v18 = v38;
    if (*(v14 + 16) && (v19 = sub_23004BFC0(v16), (v20 & 1) != 0))
    {
      sub_23004D5CC(*(v14 + 56) + 32 * v19, v43);
    }

    else
    {

      memset(v43, 0, 32);
    }

    sub_230055F74(v43, &v40, &qword_27DB14810);
    if (v41)
    {
      sub_230061914(&v40, v42);
      sub_23004D5CC(v42, &v40);
      type metadata accessor for REMStoreObjectsContainer();
      if (swift_dynamicCast())
      {
        v21 = v44;
        __swift_destroy_boxed_opaque_existential_1(v42);
        sub_230061918(v43, &qword_27DB14810);
        v22 = sub_230058EA8(v13);
        v32 = type metadata accessor for REMList_Codable();
        v30 = objc_allocWithZone(v32);
        v29 = [v22 store];
        v23 = [v22 account];
        v24 = [v22 storage];
        v33 = v13;
        v31 = v21;
        v25 = v24;
        v39.receiver = v30;
        v39.super_class = v32;
        v26 = v29;
        v27 = objc_msgSendSuper2(&v39, sel_initWithStore_account_storage_, v29, v23, v24);

        v9 = v27;
        v28 = [v22 parentList];
        [v9 setParentList_];

        (*(v17 + 8))(v35, v34);
        (*(v38 + 8))(v8, v6);
        __swift_destroy_boxed_opaque_existential_1(v36);
        return v9;
      }

      sub_23004D5CC(v42, &v40);
      sub_2301FF8F0(&v40, 0, 0);
      v9 = &qword_27DB14810;
      sub_230061918(&v40, &qword_27DB14810);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v42);
      sub_230061918(v43, &qword_27DB14810);
      (*(v17 + 8))(v35, v34);
      (*(v18 + 8))(v8, v6);
      a1 = v36;
    }

    else
    {
      v9 = &qword_27DB14810;
      sub_230061918(&v40, &qword_27DB14810);
      sub_2301FF8F0(v43, 0, 0);
      swift_willThrow();

      sub_230061918(v43, &qword_27DB14810);
      (*(v17 + 8))(v35, v34);
      (*(v18 + 8))(v8, v6);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t *sub_230065F7C@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  result = sub_230065934(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t REMRemindersInCalendarDataView.FetchResultToken.init(dataRepresentation:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_23030E7A8();
  swift_allocObject();
  sub_23030E798();
  sub_23006605C();
  sub_23030E778();
  sub_23005FE3C(a1, a2);

  if (!v3)
  {
    *a3 = v8;
    a3[1] = v9;
  }

  return result;
}

unint64_t sub_23006605C()
{
  result = qword_280C97500;
  if (!qword_280C97500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97500);
  }

  return result;
}

uint64_t REMRemindersInCalendarDataView.FetchResultToken.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300662BC();
  sub_230311428();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_230310CC8();
    type metadata accessor for REMFetchResultToken_Codable();
    v13 = 1;
    sub_230066350(&qword_280C97730, type metadata accessor for REMFetchResultToken_Codable);
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2300662BC()
{
  result = qword_280C97520;
  if (!qword_280C97520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97520);
  }

  return result;
}

uint64_t sub_230066310()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_230066350(unint64_t *a1, void (*a2)(uint64_t))
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

void *_sSo16REMSmartListTypea19ReminderKitInternalE11stringValueABSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D44BC0];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == a1 && v5 == a2)
  {
    goto LABEL_18;
  }

  v7 = sub_230311048();

  if (v7)
  {
    goto LABEL_19;
  }

  v4 = *MEMORY[0x277D44BA0];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == a1 && v8 == a2)
  {
    goto LABEL_18;
  }

  v10 = sub_230311048();

  if (v10)
  {
LABEL_19:

    goto LABEL_20;
  }

  v4 = *MEMORY[0x277D44BA8];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == a1 && v11 == a2)
  {
LABEL_18:

    goto LABEL_19;
  }

  v13 = sub_230311048();

  if (v13)
  {
    goto LABEL_19;
  }

  v4 = *MEMORY[0x277D44B80];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == a1 && v14 == a2)
  {
    goto LABEL_18;
  }

  v17 = sub_230311048();

  if (v17)
  {
    goto LABEL_19;
  }

  v4 = *MEMORY[0x277D44B88];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == a1 && v18 == a2)
  {
    goto LABEL_18;
  }

  v19 = sub_230311048();

  if (v19)
  {
    goto LABEL_19;
  }

  v4 = *MEMORY[0x277D44BB0];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == a1 && v20 == a2)
  {
    goto LABEL_18;
  }

  v21 = sub_230311048();

  if (v21)
  {
    goto LABEL_19;
  }

  v4 = *MEMORY[0x277D44B98];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == a1 && v22 == a2)
  {
    goto LABEL_18;
  }

  v23 = sub_230311048();

  if (v23)
  {
    goto LABEL_19;
  }

  v4 = *MEMORY[0x277D44BB8];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == a1 && v24 == a2)
  {
    goto LABEL_18;
  }

  v25 = sub_230311048();

  if (v25)
  {
    goto LABEL_19;
  }

  v4 = *MEMORY[0x277D44B90];
  if (_sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() == a1 && v26 == a2)
  {
    goto LABEL_18;
  }

  v27 = sub_230311048();

  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v15 = v4;
  return v4;
}

uint64_t getEnumTagSinglePayload for REMRemindersInCalendarDataView.FetchResultToken(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

void *sub_230066754(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = v3;
  return a1;
}

uint64_t initializeWithCopy for REMAccountsListDataView.Invocation.Result(uint64_t a1, uint64_t a2)
{
  v11 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v11;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  v6 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  v7 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v7;
  v8 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v8;
  *(a1 + 160) = *(a2 + 160);

  v9 = v11;

  return a1;
}

uint64_t storeEnumTagSinglePayload for REMRemindersInCalendarDataView.FetchResultToken(uint64_t result, int a2, int a3)
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

void sub_2300668E4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
}

void static REMRemindersInCalendarDataView.fetchRemindersInCalendar(store:diffingAgainst:)(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = v4 == 0;
  v8 = [objc_allocWithZone(type metadata accessor for REMRemindersInCalendarDataView.Invocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_230066DE0(v8, v5, v7, &v23);
  if (v2)
  {
    goto LABEL_5;
  }

  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v27;
  if (!v27)
  {
    v16 = objc_opt_self();
    v17 = sub_23030F8B8();
    [v16 internalErrorWithDebugDescription_];

    swift_willThrow();
    sub_23006C8F0(v9, *(&v9 + 1), v10, v11);
LABEL_5:

    return;
  }

  v28 = v26;
  v21 = type metadata accessor for REMFetchResultToken_Codable();
  v19 = objc_allocWithZone(v21);
  v20 = v12;
  sub_23006C734(v9, *(&v9 + 1), v10, v11);
  v13 = [v20 persistentHistoryTokens];
  sub_23004CBA4(0, &qword_280C987F8);
  v18 = v11;
  sub_23030F658();

  v14 = sub_23030F638();

  v22.receiver = v19;
  v22.super_class = v21;
  v15 = objc_msgSendSuper2(&v22, sel_initWithPersistentHistoryTokens_, v14);

  sub_23006C8F0(v9, *(&v9 + 1), v10, v18);
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v18;
  *(a2 + 32) = v28;
  *(a2 + 40) = v15;
}

uint64_t REMAccountsListDataView.Result.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[7];
  v20 = v1[6];
  v21 = v3;
  v4 = v1[7];
  v22 = v1[8];
  v5 = v1[1];
  v6 = v1[3];
  v16 = v1[2];
  v7 = v16;
  v17 = v6;
  v8 = v1[3];
  v9 = v1[5];
  v18 = v1[4];
  v10 = v18;
  v19 = v9;
  v11 = v1[1];
  v15[0] = *v1;
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[8];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return sub_230054718(v15, &v14);
}

void destroy for REMAccountsListDataView.Result(uint64_t a1)
{

  v2 = *(a1 + 168);
}

uint64_t assignWithTake for REMAccountsListDataView.Model(uint64_t a1, _OWORD *a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  v6 = a2[4];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = v6;
  *(a1 + 80) = a2[5];

  *(a1 + 96) = a2[6];

  *(a1 + 112) = a2[7];

  *(a1 + 128) = a2[8];

  return a1;
}

double sub_230066DE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v80 = a1;
  v77 = a4;
  v8 = sub_230310A58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90[4] = a2;
  v91 = a3 & 1;
  v92 = v5;
  sub_23030E7E8();
  swift_allocObject();
  v12 = sub_23030E7D8();
  v13 = MEMORY[0x277D84F90];
  v14 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v15 = type metadata accessor for REMStoreObjectsContainer();
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v14;
  *&v79 = v16 + 3;
  v78 = v5;
  v17 = v13;
  v18 = v16;
  v16[4] = sub_23004C2B4(v17);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v8, qword_280C9C460);
  v22 = *(v9 + 16);
  v21 = v9 + 16;
  v20 = v22;
  v22(v11, v19, v8);
  v86 = v15;
  *&v84 = v18;
  v82 = v18;

  v23 = sub_23030E7C8();
  sub_23004BC18(&v84, v11);
  v23(v90, 0);
  sub_2300678E8();
  v83 = v12;
  v24 = v81;
  v25 = sub_23030E7B8();
  if (v24)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v27 = sub_23030EF48();
    __swift_project_value_buffer(v27, qword_27DB17288);
    v28 = v24;
    v29 = sub_23030EF38();
    v30 = sub_230310288();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v84 = v32;
      *v31 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter(v89[5]);
      v35 = sub_23004E30C(v33, v34, &v84);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v90[0] = type metadata accessor for REMRemindersInCalendarDataView.Invocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F80);
      v36 = sub_23030F948();
      v38 = sub_23004E30C(v36, v37, &v84);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_230044000, v29, v30, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v32, -1, -1);
      MEMORY[0x231914180](v31, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v40 = v26;
    v71 = v20;
    v72 = v19;
    v73 = v15;
    v74 = v11;
    v75 = v21;
    v76 = v8;
    v41 = v25;
    v42 = v79;
    swift_beginAccess();
    v43 = *v42;
    v44 = objc_allocWithZone(MEMORY[0x277D44860]);

    v89[0] = [v44 init];
    v45 = type metadata accessor for REMRemindersInCalendarDataView.Invocation();
    *&v84 = v45;
    *&v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F80);
    v46 = sub_23030F948();
    v48 = v47;
    v81 = v70;
    MEMORY[0x28223BE20](v46);
    v70[-6] = v89;
    v70[-5] = &v92;
    v70[-4] = v80;
    v70[-3] = v41;
    v49 = v41;
    v70[-2] = v40;
    v70[-1] = v43;
    v50 = sub_230310268();
    sub_2300535B4(v50, v46, v48, v50, sub_230052C20, &v70[-8]);
    v51 = v40;
    v70[1] = v45;
    v80 = v49;

    sub_23030E7A8();
    swift_allocObject();
    v81 = sub_23030E798();
    v52 = v89[0];
    v53 = [v89[0] resultStorages];
    v54 = sub_23030F658();

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    *&v84 = v54;
    sub_23004D5CC(&v84, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v70[0] = v51;
      v55 = v88;
      __swift_destroy_boxed_opaque_existential_1(&v84);
      v56 = v73;
      v57 = swift_allocObject();
      v58 = v78;
      v57[2] = v78;
      v57[3] = v55;
      v59 = v58;
      v57[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v60 = v74;
      v71(v74, v72, v76);
      v86 = v56;
      *&v84 = v57;

      v61 = sub_23030E788();
      sub_23004BC18(&v84, v60);
      v61(v90, 0);
      v62 = [v52 resultData];
      v63 = sub_23030EA18();
      v65 = v64;

      sub_23006E644();
      sub_23030E778();
      sub_23005FE3C(v63, v65);
      v79 = v84;
      v66 = v85;
      LOBYTE(v65) = v86;
      v67 = v87;
      v68 = [v52 latestFetchResultToken];

      sub_23005FE3C(v80, v70[0]);

      v69 = v77;
      result = *&v79;
      *v77 = v79;
      *(v69 + 2) = v66;
      *(v69 + 24) = v65;
      *(v69 + 4) = v67;
      *(v69 + 5) = v68;
    }

    else
    {
      sub_23004D5CC(&v84, v90);
      sub_2301FEB10(v90, 0, 0);
      sub_2300DA5F0(v90);
      swift_willThrow();
      sub_23005FE3C(v80, v51);

      __swift_destroy_boxed_opaque_existential_1(&v84);
    }
  }

  return result;
}

unint64_t sub_2300678E8()
{
  result = qword_280C97530;
  if (!qword_280C97530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97530);
  }

  return result;
}

uint64_t sub_23006793C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230067AC4();
  sub_230311448();
  sub_230310D88();
  return (*(v3 + 8))(v5, v2);
}

uint64_t getEnumTagSinglePayload for Diff(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

unint64_t sub_230067AC4()
{
  result = qword_280C98AA8;
  if (!qword_280C98AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AA8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Diff(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t REMAccountsListDataView.Model.reminderCounts.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v10 = v1[3];
  v11 = v2;
  v4 = v1[6];
  v12 = v1[5];
  v3 = v12;
  v13 = v4;
  v6 = v1[2];
  v9[0] = v1[1];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_230049A64(v9, &v8);
}

char *sub_230067C98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230067DA4(char *a1, int64_t a2, char a3)
{
  result = sub_230067C98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void REMAccountsListDataView.Model.Account.unpinnedChildren.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v3;
    while (1)
    {
      if (v6 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v7 = *(v4 + 16 * v6);
      v13 = *(v4 + 16 * v6);
      if (v7 >> 62)
      {
        break;
      }

      v8 = v7;
LABEL_9:
      if (([v8 isPinned] & 1) == 0)
      {
        goto LABEL_13;
      }

      ++v6;
      sub_230060110(v7);
      if (v2 == v6)
      {
        return;
      }
    }

    if (v7 >> 62 == 1)
    {
      v8 = (v7 & 0x3FFFFFFFFFFFFFFFLL);
      goto LABEL_9;
    }

    v9 = (v7 & 0x3FFFFFFFFFFFFFFFLL);

LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_230067DA4(0, *(v5 + 16) + 1, 1);
    }

    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    v12 = v13;
    if (v11 >= v10 >> 1)
    {
      sub_230067DA4((v10 > 1), v11 + 1, 1);
      v12 = v13;
    }

    v3 = v6 + 1;
    *(v5 + 16) = v11 + 1;
    *(v5 + 16 * v11 + 32) = v12;
  }

  while (v2 - 1 != v6);
}

uint64_t REMRemindersInCalendarDataView.Invocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230067AC4();
  sub_230311428();
  if (!v2)
  {
    v9 = sub_230310C78();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void _s19ReminderKitInternal23REMAccountsListDataViewC0A6CountsV8counters3forAE22ComputedCountContainerVSo08REMSmartE0C_tF_0(void *a1@<X0>, __int128 *a2@<X8>)
{
  v5 = sub_23030EBB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 88);
  v10 = [a1 objectID];
  v11 = type metadata accessor for REMObjectID_Codable();
  v12 = objc_allocWithZone(v11);
  v13 = [v10 uuid];
  sub_23030EBA8();

  v14 = sub_23030EB88();
  (*(v6 + 8))(v8, v5);
  v15 = [v10 entityName];
  if (!v15)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v15 = sub_23030F8B8();
  }

  v21.receiver = v12;
  v21.super_class = v11;
  v16 = objc_msgSendSuper2(&v21, sel_initWithUUID_entityName_, v14, v15);

  if (*(v9 + 16) && (v17 = sub_230068314(v16), (v18 & 1) != 0))
  {
    v20 = *(*(v9 + 56) + 16 * v17);

    v19 = v20;
  }

  else
  {

    if (qword_280C994A0 != -1)
    {
      swift_once();
    }

    v19 = xmmword_280C994A8;
  }

  *a2 = v19;
}

unint64_t sub_230068314(uint64_t a1)
{
  v2 = sub_230310438();

  return sub_230068364(a1, v2);
}

unint64_t sub_230068364(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for REMObjectID_Codable();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_230310448();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t REMHashtagLabelCollection.init(labels:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_23030E4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = MEMORY[0x277D84FA0];
  v28 = MEMORY[0x277D84FA0];
  v12 = *(a1 + 16);

  if (v12)
  {
    v22 = a1;
    v23 = a2;
    v13 = (a1 + 40);
    v24 = v4;
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_23030EC88();
      v16 = sub_23030ED38();
      (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
      v27[0] = v14;
      v27[1] = v15;
      sub_2300A85F0();
      v25 = sub_2303105C8();
      v26 = v17;
      sub_23030E478();
      v18 = sub_230310558();
      v20 = v19;
      (*(v5 + 8))(v7, v24);
      sub_2300A8644(v10);

      sub_2300A8988(v27, v18, v20);

      v13 += 2;
      --v12;
    }

    while (v12);
    v11 = v28;
    a1 = v22;
    a2 = v23;
  }

  *a2 = a1;
  a2[1] = v11;
  return result;
}

void REMHashtagLabelCollection.union(_:)(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_23030E4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = *a1;
  v12 = *v2;
  if (!*(*v2 + 2))
  {
    v49 = a1[1];
    *a2 = v11;
    a2[1] = v49;
LABEL_38:

    return;
  }

  v13 = v2[1];
  v77 = *(v11 + 16);
  if (!v77)
  {
    *a2 = v12;
    a2[1] = v13;
    goto LABEL_38;
  }

  v83 = v5;
  v78 = &v69 - v10;
  v79 = v8;
  v70 = a2;
  v76 = v11;
  v75 = v11 + 32;
  v14 = (v6 + 8);
  v73 = v13;

  v15 = 0;
  v82 = (v6 + 8);
  v74 = v13 + 56;
  while (v15 < *(v76 + 16))
  {
    v16 = (v75 + 16 * v15);
    v18 = *v16;
    v17 = v16[1];

    v19 = v78;
    sub_23030EC88();
    v20 = sub_23030ED38();
    v21 = *(v20 - 8);
    v81 = *(v21 + 56);
    v72 = v21 + 56;
    v81(v19, 0, 1, v20);
    v84 = v18;
    v85 = v17;
    v88 = v18;
    v89 = v17;
    v22 = sub_2300A85F0();
    v90 = sub_2303105C8();
    v91 = v23;
    v24 = v79;
    sub_23030E478();
    v71 = v22;
    v25 = sub_230310558();
    v27 = v26;
    v80 = *v14;
    v80(v24, v83);

    v28 = v74;
    sub_2300A8644(v19);
    v29 = v73;
    v30 = *(v73 + 2);
    v86 = v20;
    if (v30 && (sub_230311358(), sub_23030F9C8(), v31 = sub_2303113A8(), v32 = -1 << v29[32], v33 = v31 & ~v32, ((*&v28[(v33 >> 3) & 0xFFFFFFFFFFFFFF8] >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(v29 + 6) + 16 * v33);
        v36 = *v35 == v25 && v35[1] == v27;
        if (v36 || (sub_230311048() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*&v28[(v33 >> 3) & 0xFFFFFFFFFFFFFF8] >> v33) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:

      v37 = sub_23030F8B8();
      v38 = *(v12 + 2);
      if (!v38)
      {
LABEL_22:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_23007E928(0, *(v12 + 2) + 1, 1, v12);
        }

        v14 = v82;
        v44 = *(v12 + 2);
        v43 = *(v12 + 3);
        if (v44 >= v43 >> 1)
        {
          v12 = sub_23007E928((v43 > 1), v44 + 1, 1, v12);
        }

        *(v12 + 2) = v44 + 1;
        v45 = &v12[16 * v44];
        v46 = v85;
        *(v45 + 4) = v84;
        *(v45 + 5) = v46;
        goto LABEL_6;
      }

      v39 = 0;
      v40 = v12 + 40;
      while (1)
      {
        if (v39 >= *(v12 + 2))
        {
          __break(1u);
          goto LABEL_42;
        }

        v41 = sub_23030F8B8();
        v42 = [v37 localizedStandardCompare_];

        if (v42 == -1)
        {
          break;
        }

        ++v39;
        v40 += 16;
        v20 = v86;
        if (v38 == v39)
        {
          goto LABEL_22;
        }
      }

      v47 = *(v12 + 2);
      v20 = v86;
      if (v47 < v39)
      {
        goto LABEL_43;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v12;
      if (!isUniquelyReferenced_nonNull_native || v47 >= *(v12 + 3) >> 1)
      {
        v12 = sub_23007E928(isUniquelyReferenced_nonNull_native, v47 + 1, 1, v12);
        v92 = v12;
      }

      sub_2300AE604(v39, v39, 1, v84, v85);
    }

    v14 = v82;
LABEL_6:
    if (++v15 == v77)
    {
      v87 = MEMORY[0x277D84FA0];
      v50 = *(v12 + 2);
      v84 = v12;

      v51 = v79;
      v52 = v78;
      v53 = v81;
      v54 = v72;
      v55 = v71;
      if (v50)
      {
        v56 = (v84 + 40);
        do
        {
          v57 = *(v56 - 1);
          v85 = *v56;
          v58 = v85;

          sub_23030EC88();
          v53(v52, 0, 1, v20);
          v88 = v57;
          v89 = v58;
          v90 = sub_2303105C8();
          v91 = v59;
          sub_23030E478();
          v60 = v55;
          v61 = v54;
          v62 = sub_230310558();
          v64 = v63;
          v80(v51, v83);
          sub_2300A8644(v52);
          v53 = v81;

          v65 = v62;
          v54 = v61;
          v55 = v60;
          sub_2300A8988(&v88, v65, v64);

          v20 = v86;

          v56 += 2;
          --v50;
        }

        while (v50);
      }

      v66 = v84;

      v67 = v87;
      v68 = v70;
      *v70 = v66;
      v68[1] = v67;
      return;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_230068DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  result = v18(v17);
  if (!v6)
  {
    (*(v8 + 16))(v11, v16, a6);
    sub_23030FFA8();
    sub_23030FF78();
    v20 = *(v8 + 8);
    v20(v14, a6);
    return (v20)(v16, a6);
  }

  return result;
}

uint64_t ACAccountStore.rem_migrationSets()()
{
  v129 = [v0 accountTypeWithAccountTypeIdentifier_];
  v1 = [v0 accountsWithAccountType_];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    v4 = sub_23030FCD8();

    v5 = sub_230069BDC(v4);

    if (v5)
    {
      v2 = v5;
    }
  }

  if (qword_280C99E88 != -1)
  {
LABEL_92:
    swift_once();
  }

  v6 = sub_23030EF48();
  __swift_project_value_buffer(v6, qword_280C97098);

  v7 = sub_23030EF38();
  v8 = sub_230310268();

  v9 = v2 >> 62;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v142[0] = v11;
    *v10 = 136315138;
    v137 = v11;
    if (v9)
    {
      v12 = sub_2303106D8();
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x277D84F90];
    v139 = v10;
    if (v12)
    {
      result = sub_23009EC34(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        return result;
      }

      v133 = v2 >> 62;
      v135 = v7;
      v15 = v2;
      v16 = 0;
      v17 = v15;
      v18 = v15 & 0xC000000000000001;
      do
      {
        if (v18)
        {
          v19 = MEMORY[0x231912650](v16, v17);
        }

        else
        {
          v19 = *(v17 + 8 * v16 + 32);
        }

        v20 = v19;
        v21 = [v19 description];
        v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v24 = v23;

        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_23009EC34((v25 > 1), v26 + 1, 1);
        }

        ++v16;
        *(v13 + 16) = v26 + 1;
        v27 = v13 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
      }

      while (v12 != v16);
      v2 = v17;
      v7 = v135;
      v9 = v133;
    }

    v28 = MEMORY[0x231911A60](v13, MEMORY[0x277D837D0]);
    v30 = v29;

    v31 = sub_23004E30C(v28, v30, v142);

    *(v139 + 1) = v31;
    _os_log_impl(&dword_230044000, v7, v8, "rem_migrationSets getting CalDAV accounts {calDavAccounts: %s}", v139, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v137);
    MEMORY[0x231914180](v137, -1, -1);
    MEMORY[0x231914180](v139, -1, -1);
  }

  else
  {
  }

  if (v9)
  {
    v32 = sub_2303106D8();
  }

  else
  {
    v32 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v32)
  {
    v33 = 0;
    v34 = v2 & 0xC000000000000001;
    v140 = v2 & 0xFFFFFFFFFFFFFF8;
    v138 = v2 + 32;
    v35 = &off_2788BD000;
    v128 = *MEMORY[0x277CB8BE8];
    v130 = v2;
    v131 = MEMORY[0x277D84F90];
    v132 = v32;
    v136 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v34)
      {
        v36 = MEMORY[0x231912650](v33, v2);
      }

      else
      {
        if (v33 >= *(v140 + 16))
        {
          goto LABEL_91;
        }

        v36 = *(v138 + 8 * v33);
      }

      v37 = v36;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v39 = [v36 v35[172]];
      if (v39)
      {
        v40 = v39;
        if ([v39 rem_isEligibleForCloudKitReminders])
        {
          v41 = ACAccount.rem_childCalDAVAccountEnabledForReminders.getter();
          v42 = [v41 identifier];

          v43 = [v37 identifier];
          v44 = v43;
          if (v42)
          {
            if (v43)
            {
              sub_23004CBA4(0, &qword_27DB14A70);
              v45 = sub_230310448();

              if (v45)
              {
LABEL_40:
                v46 = [v40 aa_accountClass];
                if (v46)
                {
                  v47 = v46;
                  v48 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                  v50 = v49;
                  if (v48 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v50 == v51)
                  {

                    goto LABEL_48;
                  }

                  v52 = sub_230311048();

                  if (v52)
                  {
LABEL_48:
                    v53 = v40;
                    v54 = sub_23030EF38();
                    v55 = sub_230310268();

                    if (os_log_type_enabled(v54, v55))
                    {
                      v56 = swift_slowAlloc();
                      v57 = swift_slowAlloc();
                      v142[0] = v57;
                      *v56 = 136315138;
                      v58 = [v53 description];
                      v59 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                      v61 = v60;

                      v62 = v59;
                      v2 = v130;
                      v63 = sub_23004E30C(v62, v61, v142);

                      *(v56 + 4) = v63;
                      __swift_destroy_boxed_opaque_existential_1(v57);
                      MEMORY[0x231914180](v57, -1, -1);
                      MEMORY[0x231914180](v56, -1, -1);
                    }

                    else
                    {
                    }

                    v32 = v132;
                    goto LABEL_46;
                  }
                }

                v64 = v40;
                v65 = sub_23030EF38();
                v66 = sub_230310268();

                if (os_log_type_enabled(v65, v66))
                {
                  v67 = v64;
                  v68 = swift_slowAlloc();
                  v69 = swift_slowAlloc();
                  v142[0] = v69;
                  *v68 = 136315138;
                  v70 = [v67 description];
                  v71 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                  v73 = v72;

                  v74 = v71;
                  v2 = v130;
                  v75 = sub_23004E30C(v74, v73, v142);

                  *(v68 + 4) = v75;
                  _os_log_impl(&dword_230044000, v65, v66, "rem_migrationSets exploring AppleAccount {displayAccount: %s}", v68, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v69);
                  MEMORY[0x231914180](v69, -1, -1);
                  v76 = v68;
                  v64 = v67;
                  MEMORY[0x231914180](v76, -1, -1);
                }

                v34 = v136;
                v35 = &off_2788BD000;
                v77 = [v64 childAccountsWithAccountTypeIdentifier_];
                v32 = v132;
                if (!v77)
                {
                  goto LABEL_83;
                }

                v78 = v77;
                sub_23004CBA4(0, &qword_280C99CD0);
                v79 = sub_23030FCD8();

                v80 = sub_23030EF38();
                v81 = sub_230310268();

                v127 = v81;
                v82 = os_log_type_enabled(v80, v81);
                v83 = v79 >> 62;
                if (v82)
                {
                  v126 = v64;
                  v84 = swift_slowAlloc();
                  v122 = swift_slowAlloc();
                  buf = v84;
                  v142[0] = v122;
                  *v84 = 136315138;
                  if (v83)
                  {
                    v85 = sub_2303106D8();
                    v124 = v79 >> 62;
                    log = v80;
                    if (!v85)
                    {
                      goto LABEL_69;
                    }

LABEL_57:
                    v141 = MEMORY[0x277D84F90];
                    result = sub_23009EC34(0, v85 & ~(v85 >> 63), 0);
                    if (v85 < 0)
                    {
                      goto LABEL_97;
                    }

                    v86 = v85;
                    v87 = 0;
                    v88 = v141;
                    v134 = v79 & 0xC000000000000001;
                    v89 = v79;
                    do
                    {
                      if (v134)
                      {
                        v90 = MEMORY[0x231912650](v87, v79);
                      }

                      else
                      {
                        v90 = *(v79 + 8 * v87 + 32);
                      }

                      v91 = v90;
                      v92 = [v90 description];
                      v93 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                      v95 = v94;

                      v97 = *(v141 + 16);
                      v96 = *(v141 + 24);
                      if (v97 >= v96 >> 1)
                      {
                        sub_23009EC34((v96 > 1), v97 + 1, 1);
                      }

                      ++v87;
                      *(v141 + 16) = v97 + 1;
                      v98 = v141 + 16 * v97;
                      *(v98 + 32) = v93;
                      *(v98 + 40) = v95;
                      v79 = v89;
                    }

                    while (v86 != v87);
                    v2 = v130;
                    v32 = v132;
                    v34 = v136;
                    v35 = &off_2788BD000;
                  }

                  else
                  {
                    v85 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    v124 = 0;
                    log = v80;
                    if (v85)
                    {
                      goto LABEL_57;
                    }

LABEL_69:
                    v88 = MEMORY[0x277D84F90];
                    v2 = v130;
                  }

                  v99 = MEMORY[0x231911A60](v88, MEMORY[0x277D837D0]);
                  v101 = v100;

                  v102 = sub_23004E30C(v99, v101, v142);

                  *(buf + 4) = v102;
                  _os_log_impl(&dword_230044000, log, v127, "rem_migrationSets adding the first CloudKit type child account {ckAccounts: %s}", buf, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v122);
                  MEMORY[0x231914180](v122, -1, -1);
                  MEMORY[0x231914180](buf, -1, -1);

                  v64 = v126;
                  v83 = v124;
                }

                else
                {
                }

                if (v83)
                {
                  result = sub_2303106D8();
                  if (!result)
                  {
LABEL_82:

LABEL_83:

                    goto LABEL_26;
                  }
                }

                else
                {
                  result = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!result)
                  {
                    goto LABEL_82;
                  }
                }

                if ((v79 & 0xC000000000000001) != 0)
                {
                  v104 = MEMORY[0x231912650](0, v79);
                  v103 = v131;
                }

                else
                {
                  v103 = v131;
                  if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_96;
                  }

                  v104 = *(v79 + 32);
                }

                v105 = [v64 rem_eligibleForAutoCloudKitMigration];
                v106 = v64;
                v107 = v37;
                v108 = v104;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v103 = sub_23007EFB4(0, *(v103 + 2) + 1, 1, v103);
                }

                v110 = *(v103 + 2);
                v109 = *(v103 + 3);
                v131 = v103;
                if (v110 >= v109 >> 1)
                {
                  v131 = sub_23007EFB4((v109 > 1), v110 + 1, 1, v103);
                }

                v32 = v132;

                *(v131 + 2) = v110 + 1;
                v111 = &v131[32 * v110];
                *(v111 + 4) = v106;
                *(v111 + 5) = v107;
                *(v111 + 6) = v108;
                v111[56] = v105;
                v2 = v130;
                goto LABEL_46;
              }
            }

            else
            {
            }
          }

          else
          {
            if (!v43)
            {
              goto LABEL_40;
            }
          }

LABEL_46:
          v34 = v136;
          v35 = &off_2788BD000;
          goto LABEL_26;
        }
      }

LABEL_26:
      if (v33 == v32)
      {
        goto LABEL_86;
      }
    }
  }

  v131 = MEMORY[0x277D84F90];
LABEL_86:

  v112 = sub_23030EF38();
  v113 = sub_2303102A8();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v142[0] = v115;
    *v114 = 136446210;
    v116 = v131;

    v118 = MEMORY[0x231911A60](v117, &type metadata for ACAccountStore.MigrationSet);
    v120 = v119;

    v121 = sub_23004E30C(v118, v120, v142);

    *(v114 + 4) = v121;
    _os_log_impl(&dword_230044000, v112, v113, "rem_migrationSets result {result: %{public}s}", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x231914180](v115, -1, -1);
    MEMORY[0x231914180](v114, -1, -1);
  }

  else
  {

    return v131;
  }

  return v116;
}

uint64_t sub_230069BDC(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2303109B8();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23004D5CC(i, v5);
    sub_23004CBA4(0, &qword_280C99CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_230310988();
    sub_2303109C8();
    sub_2303109D8();
    sub_230310998();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_230069CE8()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C97098);
  v1 = __swift_project_value_buffer(v0, qword_280C97098);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_230069DCC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x277D83410] + 64;
    swift_getTupleTypeLayout2();
    v6 = &v5;
    v7 = v2;
    swift_getTupleTypeLayout3();
    v8 = &v4;
    swift_getTupleTypeLayout3();
    v9 = &v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t Collection.diff(_:identitiesEqual:contentsEqual:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v53 = a5;
  v62 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = v47 - v18;
  v52 = a1;
  v54 = a6;
  v55 = a7;
  v56 = v8;
  result = Collection.outputDiffPathTraces(to:isEqual:)(a1, a2, a3, a6, a7);
  v20 = *(result + 16);
  if (!v20)
  {

    v22 = MEMORY[0x277D84F90];
    v23 = MEMORY[0x277D84F90];
LABEL_36:
    *a8 = v23;
    a8[1] = v22;
    return result;
  }

  v48 = a8;
  v49 = (v15 + 8);
  v47[1] = result;
  v21 = (result + 56);
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = *(v21 - 3);
    v25 = *(v21 - 3);
    if (__OFADD__(v25, 1))
    {
      break;
    }

    v26 = *(v21 - 1);
    v27 = *v21;
    v28 = *(v21 - 2);
    v63 = *(v21 - 3);
    if (v25 + 1 != v26)
    {
      if (*(&v24 + 1) < v27)
      {
        v38 = 0;
        v39 = 0;
        v25 = *(&v24 + 1);
        goto LABEL_25;
      }

      v39 = 0;
      goto LABEL_24;
    }

    v29 = *(&v24 + 1) + 1;
    if (__OFADD__(*(&v24 + 1), 1))
    {
      goto LABEL_38;
    }

    LODWORD(v60) = v29 == v27;
    if (v29 == v27 && v62 != 0)
    {
      v58 = v22;

      v57 = v23;
      sub_23006AEDC(v61);
      v59 = v20;
      v31 = v50;
      v32 = v62;
      sub_23006AEDC(v50);
      v33 = v32(v61, v31);
      sub_2300528E4(v32);
      v34 = *v49;
      v35 = v31;
      v20 = v59;
      v36 = AssociatedTypeWitness;
      (*v49)(v35, AssociatedTypeWitness);
      v37 = v36;
      v22 = v58;
      result = v34(v61, v37);
      v23 = v57;
      if ((v33 & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = 1;
        v38 = 2;
        v40 = v63;
        if (result)
        {
          v40 = v63;
          goto LABEL_26;
        }

LABEL_33:
        v60 = v40;
        result = sub_23007F0D4(0, *(v23 + 16) + 1, 1, v23, &qword_27DB14408);
        v40 = v60;
        v23 = result;
LABEL_26:
        v42 = *(v23 + 16);
        v41 = *(v23 + 24);
        if (v42 >= v41 >> 1)
        {
          v60 = v40;
          result = sub_23007F0D4((v41 > 1), v42 + 1, 1, v23, &qword_27DB14408);
          v40 = v60;
          v23 = result;
        }

        *(v23 + 16) = v42 + 1;
        v43 = v23 + 24 * v42;
        *(v43 + 32) = v40;
        *(v43 + 48) = v38;
        if ((v39 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_29:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_23006B2C0(0, *(v22 + 16) + 1, 1, v22, &qword_27DB14400);
          v22 = result;
        }

        v45 = *(v22 + 16);
        v44 = *(v22 + 24);
        v46 = v63;
        if (v45 >= v44 >> 1)
        {
          result = sub_23006B2C0((v44 > 1), v45 + 1, 1, v22, &qword_27DB14400);
          v46 = v63;
          v22 = result;
        }

        *(v22 + 16) = v45 + 1;
        *(v22 + 16 * v45 + 32) = v46;
        goto LABEL_4;
      }
    }

    if (v28 + 1 != v27)
    {
      if (v28 < v27)
      {
        v38 = 0;
        v25 = v28;
        v39 = v60;
        goto LABEL_25;
      }

      v39 = v60;
LABEL_24:
      v38 = 1;
LABEL_25:
      result = swift_isUniquelyReferenced_nonNull_native();
      v40 = v25;
      if ((result & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    }

    if (v29 == v27)
    {
      goto LABEL_29;
    }

LABEL_4:
    v21 += 5;
    if (!--v20)
    {

      a8 = v48;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t Collection.extendedDiff(_:isEqual:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  Collection.diff(_:identitiesEqual:contentsEqual:)(a1, a2, a3, 0, 0, a4, a5, v14);
  v13[0] = v14[0];
  v13[1] = v14[1];
  Collection.extendedDiff(from:other:identitiesEqual:contentsEqual:)(v13, a1, a2, a3, 0, 0, a4, a5, a6);
}

uint64_t Collection<>.extendedDiff(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  return Collection.extendedDiff(_:isEqual:)(a1, sub_23006B0BC, v6, a2, a3, a5);
}

char *Collection.outputDiffPathTraces(to:isEqual:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = Collection.diffTraces(to:isEqual:)(a1, a2, a3, a4, a5);
  sub_230310058();
  sub_230310058();
  v6 = sub_23006B128(v5);

  return v6;
}

uint64_t sub_23006A494(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v71 = a3;
  v70 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v67 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v61 - v13;
  v14 = sub_230310058();
  v69 = a1;
  result = sub_230310058();
  v16 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v17 < 0)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v79 = result;
  if (v16 == -1)
  {
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = sub_23030FD48();
    *(v18 + 16) = v17;
    v19 = 8 * v17;
    v20 = v18;
    memset((v18 + 32), 255, v19);
    result = v79;
  }

  v21 = v67;
  v22 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_83;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v22 >= *(v20 + 16))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v77 = v20 + 32;
  *(v20 + 32 + 8 * v22) = 0;
  if ((v16 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v80 = -result;
    v24 = __OFSUB__(0, result);
    v81 = v24;
    v68 = (v10 + 8);
    v76 = MEMORY[0x277D84F90];
    v66 = v6;
    v64 = a4;
    v73 = v14;
    v78 = v20;
    v65 = a5;
    v62 = v16;
LABEL_15:
    v83 = 0;
    v84 = 0;
    v25 = -v23;
    while (1)
    {
      do
      {
        v26 = v25;
        if (v25 >= v23)
        {
          if ((v25 != v23) | v83 & 1 || !(BYTE4(v83) & 1 | (v84 != 0x8000000000000000)))
          {
            if (v23 != v62)
            {
              if (!__OFADD__(v23++, 1))
              {
                goto LABEL_15;
              }

              __break(1u);
LABEL_73:
              __break(1u);
            }

            return MEMORY[0x277D84F90];
          }

          LODWORD(v83) = 1;
          if (v81)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v27 = !__OFADD__(v25, 2);
          HIDWORD(v83) = v27;
          v28 = 0x8000000000000000;
          if (!__OFADD__(v26, 2))
          {
            v28 = 0;
          }

          v84 = v28;
          v25 = 0x7FFFFFFFFFFFFFFFLL;
          if (!__OFADD__(v26, 2))
          {
            v25 = v26 + 2;
          }

          if (v81)
          {
            goto LABEL_73;
          }
        }
      }

      while (v26 < v80 || v14 < v26);
      v29 = v26 + result;
      if (__OFADD__(v26, result))
      {
        break;
      }

      v30 = v29 - 1;
      if (__OFSUB__(v29, 1))
      {
        goto LABEL_76;
      }

      v82 = v25;
      if ((v30 & 0x8000000000000000) != 0 || v30 >= *(v20 + 16))
      {
        v32 = 0;
        v31 = 1;
        v33 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_77;
        }
      }

      else
      {
        v31 = 0;
        v32 = *(v77 + 8 * v30);
        v33 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_77;
        }
      }

      if ((v33 & 0x8000000000000000) != 0 || v33 >= *(v20 + 16))
      {
        v35 = 0;
        v34 = 1;
      }

      else
      {
        v34 = 0;
        v35 = *(v77 + 8 * v33);
      }

      v88[0] = v23;
      v88[1] = v26;
      v88[2] = v32;
      v89 = v31;
      v90 = v35;
      v91 = v34;
      v36 = v23;
      sub_23006ACCC(v88, &v85);
      v23 = v36;
      v37 = v86;
      v20 = v78;
      result = v79;
      v25 = v82;
      if (v86 <= v14)
      {
        v38 = v87;
        if (v87 <= v79)
        {
          v74 = v87;
          v63 = v85;
          v39 = v76;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_23006AD80(0, *(v39 + 2) + 1, 1, v39);
          }

          v41 = *(v39 + 2);
          v40 = *(v39 + 3);
          v76 = v39;
          result = v79;
          v42 = v74;
          if (v41 >= v40 >> 1)
          {
            v59 = sub_23006AD80((v40 > 1), v41 + 1, 1, v76);
            v42 = v74;
            v23 = v36;
            v76 = v59;
            result = v79;
          }

          else
          {
            v23 = v36;
          }

          v43 = v76;
          *(v76 + 2) = v41 + 1;
          v44 = &v43[40 * v41];
          *(v44 + 2) = v63;
          *(v44 + 6) = v37;
          *(v44 + 56) = v42;
          v45 = v37 < v73;
          v46 = v38 < result;
          if ((v37 & 0x8000000000000000) == 0 && (v38 & 0x8000000000000000) == 0 && v37 < v73 && v38 < result)
          {
            while (1)
            {
              v47 = v75;
              sub_23006AEDC(v75);
              sub_23006AEDC(v21);
              if ((v70(v21, v47) & 1) == 0)
              {
                v57 = *v68;
                v58 = AssociatedTypeWitness;
                (*v68)(v21, AssociatedTypeWitness);
                v57(v75, v58);
                v45 = 1;
                v50 = v37;
                v46 = 1;
                result = v79;
                v23 = v36;
LABEL_62:
                if ((v29 & 0x8000000000000000) != 0)
                {
                  goto LABEL_78;
                }

                goto LABEL_63;
              }

              v49 = *(v76 + 2);
              v48 = *(v76 + 3);
              *&v74 = v49 + 1;
              if (v49 >= v48 >> 1)
              {
                v76 = sub_23006AD80((v48 > 1), v49 + 1, 1, v76);
              }

              v50 = v37 + 1;
              v51 = v38 + 1;
              v52 = *v68;
              v53 = v21;
              v54 = AssociatedTypeWitness;
              (*v68)(v53, AssociatedTypeWitness);
              v52(v75, v54);
              v55 = v76;
              *(v76 + 2) = v74;
              v56 = &v55[40 * v49];
              *(v56 + 4) = v37;
              *(v56 + 5) = v38;
              *(v56 + 6) = v37 + 1;
              *(v56 + 7) = v38 + 1;
              v23 = v36;
              *(v56 + 8) = v36;
              result = v79;
              v46 = v38 + 1 < v79;
              v45 = v37 + 1 < v73;
              if (v37 + 1 >= v73)
              {
                break;
              }

              ++v37;
              ++v38;
              v21 = v67;
              if (v51 >= v79)
              {
                goto LABEL_62;
              }
            }

            v21 = v67;
            if ((v29 & 0x8000000000000000) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_78;
          }

          v50 = v37;
          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_78;
          }

LABEL_63:
          v20 = v78;
          if (v29 >= *(v78 + 16))
          {
            goto LABEL_79;
          }

          *(v77 + 8 * v29) = v50;
          v14 = v73;
          v25 = v82;
          if (!v45 && !v46)
          {

            return v76;
          }
        }
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t Collection.diffTraces(to:isEqual:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!sub_230310058() && !sub_230310058())
  {
    return MEMORY[0x277D84F90];
  }

  if (sub_230310058())
  {
    if (sub_230310058())
    {

      return sub_23006A494(a1, a2, a3, a4, a5);
    }

    else
    {

      return sub_23007E4E4();
    }
  }

  else
  {

    return sub_23008064C();
  }
}

void *sub_23006ACCC@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (__OFSUB__(0, *result))
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = result[1];
  v4 = result[4];
  if (v3 == -*result)
  {
LABEL_3:
    if (*(result + 40))
    {
      v4 = -1;
    }

    v5 = v4 - v3;
    if (!__OFSUB__(v4, v3))
    {
      v6 = v5 - 1;
      if (!__OFSUB__(v5, 1))
      {
        v7 = v4;
LABEL_17:
        *a2 = v4;
        a2[1] = v6;
        a2[2] = v7;
        a2[3] = v5;
        a2[4] = v2;
        return result;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = result[2];
  if (v3 == v2)
  {
    if (!*(result + 24))
    {
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (result[3])
  {
    goto LABEL_12;
  }

  if (v8 >= v4)
  {
    v10 = 1;
  }

  else
  {
    v10 = *(result + 40);
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_13:
  v9 = __OFADD__(v8, 1);
  v7 = v8 + 1;
  if (v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = __OFSUB__(v7, v3);
  v6 = v7 - v3;
  if (!v9)
  {
    v5 = v6;
    goto LABEL_17;
  }

LABEL_28:
  __break(1u);
  return result;
}

char *sub_23006AD80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

uint64_t sub_23006AEDC@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  sub_230310048();
  sub_230310068();
  v9 = *(v3 + 8);
  v9(v6, AssociatedTypeWitness);
  v10 = sub_230310138();
  v12 = v11;
  v13 = swift_getAssociatedTypeWitness();
  (*(*(v13 - 8) + 16))(a1, v12, v13);
  v10(v15, 0);
  return (v9)(v8, AssociatedTypeWitness);
}

char *sub_23006B128(unint64_t *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v3 = &a1[5 * v1];
  v16 = *(v3 + 1);
  v17 = *(v3 - 1);
  v4 = v3[3];
  v5 = sub_23006AD80(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    *(v5 + 2) = v8;
    v9 = &v5[40 * v7];
    *(v9 + 2) = v17;
    *(v9 + 3) = v16;
    *(v9 + 8) = v4;
    v8 = *(&v17 + 1);
    v4 = v17;
    if (v17 == 0)
    {
      return v5;
    }

    v7 = v1 - 1;
    v6 = &v2[5 * v1];
    v2 = (v6 + 8);
    while (v7 < v1)
    {
      v6 = *v2;
      if (*v2 != v4 || v2[1] != v8)
      {
        goto LABEL_22;
      }

      v11 = *(v2 - 2);
      v12 = *(v2 - 1);
      v13 = v2[2];
      v14 = *(v5 + 2);
      if (v14 >= *(v5 + 3) >> 1)
      {
        v5 = sub_23006AD80(1, v14 + 1, 1, v5);
        v14 = *(v5 + 2);
      }

      memmove(v5 + 72, v5 + 32, 40 * v14);
      *(v5 + 2) = v14 + 1;
      *(v5 + 4) = v11;
      *(v5 + 5) = v12;
      *(v5 + 6) = v4;
      *(v5 + 7) = v8;
      v8 = v12;
      v4 = v11;
      *(v5 + 8) = v13;
      v6 = v11 | v12;
      if (v11 | v12)
      {
LABEL_22:
        --v7;
        v2 -= 5;
        if (v7 != -1)
        {
          continue;
        }
      }

      return v5;
    }

    __break(1u);
LABEL_19:
    v5 = sub_23006AD80((v6 > 1), v8, 1, v5);
  }
}

char *sub_23006B2C0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

uint64_t Collection.extendedDiff(from:other:identitiesEqual:contentsEqual:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v69 = a8;
  v67 = a6;
  v68 = a7;
  v65 = a4;
  v66 = a5;
  v64 = a3;
  v63 = a2;
  v9 = a9;
  v11 = *a1;
  v10 = a1[1];
  v80 = MEMORY[0x277D84FA0];
  v81 = MEMORY[0x277D84FA0];
  v71 = *(v11 + 16);
  if (!v71)
  {

    v13 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F90];
LABEL_50:

    v54 = sub_23006BA44(v14);
    v55 = v81;
    *v9 = v11;
    v9[1] = v10;
    v9[2] = v14;
    v9[3] = v54;
    v9[4] = v13;
    v9[5] = v55;
  }

  v60 = a9;
  v62 = v11 + 32;

  v70 = v10;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v61 = v11;
  while (1)
  {
    v17 = v80;
    if (*(v80 + 16))
    {
      v18 = sub_230311348();
      v19 = -1 << *(v17 + 32);
      v20 = v18 & ~v19;
      if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (*(*(v17 + 48) + 8 * v20) != v12)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_5;
      }
    }

LABEL_11:
    v22 = v81;
    if (*(v81 + 16))
    {
      v23 = sub_230311348();
      v24 = -1 << *(v22 + 32);
      v25 = v23 & ~v24;
      if ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        while (*(*(v22 + 48) + 8 * v25) != v12)
        {
          v25 = (v25 + 1) & v26;
          if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

LABEL_16:
    if (v12 >= *(v11 + 16))
    {
      break;
    }

    v27 = v13;
    v28 = v62 + 24 * v12;
    v29 = *v28;
    v30 = *(v28 + 8);
    v15 = *(v28 + 16);
    v75[0] = v11;
    v75[1] = v70;

    v32 = sub_23015BCD4(v31, v17);
    v72 = v29;
    *&v73 = v29;
    *(&v73 + 1) = v30;
    v74 = v15;
    MEMORY[0x28223BE20](v32);
    v57[2] = v68;
    v57[3] = v69;
    v57[4] = v64;
    v57[5] = v65;
    v58 = v66;
    v59 = v67;
    Collection.firstMatch(_:dirtyIndices:candidate:candidateIndex:other:isEqual:)(v75, v32, &v73, v12, v63, sub_2302405C4, v57, v76);

    v33 = v79;
    if (v79 == 2)
    {
      v13 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_23007EA48(0, *(v14 + 2) + 1, 1, v14);
      }

      v35 = *(v14 + 2);
      v34 = *(v14 + 3);
      v11 = v61;
      if (v35 >= v34 >> 1)
      {
        v14 = sub_23007EA48((v34 > 1), v35 + 1, 1, v14);
      }

      *(v14 + 2) = v35 + 1;
      *&v14[8 * v35 + 32] = v12;
      if (v15 < 2)
      {
        v30 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_23007F0C0(0, *(v27 + 2) + 1, 1, v27);
      }

      v37 = *(v13 + 2);
      v36 = *(v13 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v13 = sub_23007F0C0((v36 > 1), v37 + 1, 1, v13);
      }
    }

    else
    {
      if (v77 != 3)
      {
        goto LABEL_52;
      }

      v39 = v76[0];
      v30 = v76[1];
      v40 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v27;
      v72 = v39;
      if (v33)
      {
        v11 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_23007EA48(0, *(v14 + 2) + 1, 1, v14);
        }

        v43 = *(v14 + 2);
        v42 = *(v14 + 3);
        v44 = v42 >> 1;
        v45 = v43 + 1;
        if (v42 >> 1 <= v43)
        {
          v14 = sub_23007EA48((v42 > 1), v43 + 1, 1, v14);
          v42 = *(v14 + 3);
          v44 = v42 >> 1;
        }

        *(v14 + 2) = v45;
        *&v14[8 * v43 + 32] = v12;
        v46 = v43 + 2;
        if (v44 < v46)
        {
          v14 = sub_23007EA48((v42 > 1), v46, 1, v14);
        }

        *(v14 + 2) = v46;
        *&v14[8 * v45 + 32] = v40;
        sub_2300A8D60(v76, v12);
        v47 = v40;
      }

      else
      {
        v11 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_23007EA48(0, *(v14 + 2) + 1, 1, v14);
        }

        v49 = *(v14 + 2);
        v48 = *(v14 + 3);
        v50 = v48 >> 1;
        v51 = v49 + 1;
        if (v48 >> 1 <= v49)
        {
          v14 = sub_23007EA48((v48 > 1), v49 + 1, 1, v14);
          v48 = *(v14 + 3);
          v50 = v48 >> 1;
        }

        *(v14 + 2) = v51;
        *&v14[8 * v49 + 32] = v40;
        v52 = v49 + 2;
        if (v50 < v52)
        {
          v14 = sub_23007EA48((v48 > 1), v52, 1, v14);
        }

        *(v14 + 2) = v52;
        *&v14[8 * v51 + 32] = v12;
        sub_2300A8D60(v76, v40);
        v47 = v12;
      }

      sub_2300A8D60(v76, v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_23007F0C0(0, *(v27 + 2) + 1, 1, v27);
      }

      v37 = *(v13 + 2);
      v53 = *(v13 + 3);
      v38 = v37 + 1;
      if (v37 >= v53 >> 1)
      {
        v13 = sub_23007F0C0((v53 > 1), v37 + 1, 1, v13);
      }

      LOBYTE(v15) = 3;
    }

    *(v13 + 2) = v38;
    v16 = &v13[24 * v37];
    *(v16 + 4) = v72;
    *(v16 + 5) = v30;
    v16[48] = v15;
LABEL_5:
    if (++v12 == v71)
    {
      v9 = v60;
      v10 = v70;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_52:
  LODWORD(v59) = 0;
  v58 = 134;
  result = sub_230310AE8();
  __break(1u);
  return result;
}

char *sub_23006BA44(uint64_t a1)
{
  v9 = sub_23006BB64(a1, 0, *(a1 + 16));
  sub_23006C030(&v9);
  v1 = v9;
  v2 = *(v9 + 2);
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_23009EC04(0, v2, 0);
    v3 = v9;
    v4 = *(v9 + 2);
    v5 = 40;
    do
    {
      v6 = *&v1[v5];
      v9 = v3;
      v7 = *(v3 + 3);
      if (v4 >= v7 >> 1)
      {
        sub_23009EC04((v7 > 1), v4 + 1, 1);
        v3 = v9;
      }

      *(v3 + 2) = v4 + 1;
      *&v3[8 * v4 + 32] = v6;
      v5 += 16;
      ++v4;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_23006BB64(uint64_t result, int64_t a2, int64_t a3)
{
  v3 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v4 = a3;
  v5 = a2;
  v6 = result;
  v58 = *(result + 16);
  if (v3 >= v58)
  {
    v7 = *(result + 16);
  }

  else
  {
    v7 = a3 - a2;
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14888);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * (v10 >> 4);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v11 = *(v8 + 3);

  if (v3 < 0)
  {
    goto LABEL_83;
  }

  v12 = v8 + 4;
  v13 = v11 >> 1;
  v14 = v58;
  if (v7)
  {
    if (v4 >= v5)
    {
      v13 -= v7;
      v15 = v7 - 1;
      if (v7 - 1 >= v3)
      {
        v16 = v3;
      }

      else
      {
        v16 = v7 - 1;
      }

      if (v16 >= v58)
      {
        v16 = v58;
      }

      if (v16 <= 0xB)
      {
        goto LABEL_36;
      }

      if (v15 >= v3)
      {
        v15 = v3;
      }

      if (v15 >= v58)
      {
        v15 = v58;
      }

      if (v12 >= &v6[2].f64[v15 + 1] || &v6[2] >= &v8[2 * v15 + 6])
      {
        v18 = v16 + 1;
        v19 = v18 & 3;
        if ((v18 & 3) == 0)
        {
          v19 = 4;
        }

        v20 = v18 - v19;
        v12 += 2 * v20;
        v21 = v20 + v5;
        v22 = vaddq_s64(vdupq_n_s64(v5), xmmword_23031C020);
        v23 = v6 + 3;
        v24 = v8 + 8;
        v25 = vdupq_n_s64(2uLL);
        v26 = v20;
        do
        {
          v59.val[1] = vaddq_s64(v22, v25);
          v27 = v24 - 4;
          v28 = v23[-1];
          v59.val[0] = *v23;
          vst2q_f64(v27, *(&v22 - 1));
          vst2q_f64(v24, v59);
          v22 = vaddq_s64(v22, vdupq_n_s64(4uLL));
          v23 += 2;
          v24 += 8;
          v26 -= 4;
        }

        while (v26);
      }

      else
      {
LABEL_36:
        v20 = 0;
        v21 = v5;
      }

      v29 = 0;
      v30 = v7 - v20;
      v31 = &v6[2].f64[v20];
      v32 = v58 - v20;
      do
      {
        if (v32 == v29)
        {
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        if (!(v21 - v4 + v29))
        {
          goto LABEL_74;
        }

        *v12 = *(v31 + 8 * v29);
        *(v12 + 1) = v21 + v29;
        v12 += 2;
        ++v29;
      }

      while (v30 != v29);
      v33 = v21 + v29;
      if (v58 > v3)
      {
        goto LABEL_44;
      }

      goto LABEL_69;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v33 = v5;
  if (v58 > v3)
  {
LABEL_44:
    v34 = v6 + 2;
    if (v33 <= v4)
    {
      v35 = v4;
    }

    else
    {
      v35 = v33;
    }

    v36 = v33;
    v56 = v5;
    v57 = v4;
    v54 = v6 + 2;
    v55 = v33;
    v53 = v35;
    while (v7 < v14)
    {
      v37 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_76;
      }

      if (v4 == v36)
      {
        goto LABEL_69;
      }

      if (v4 < v5)
      {
        goto LABEL_77;
      }

      if (v33 < v5)
      {
        goto LABEL_78;
      }

      if (v35 == v36)
      {
        goto LABEL_79;
      }

      v38 = v34->f64[v7];
      if (!v13)
      {
        v39 = *(v8 + 3);
        if (((v39 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_81;
        }

        v40 = v39 & 0xFFFFFFFFFFFFFFFELL;
        if (v40 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14888);
        v42 = swift_allocObject();
        v43 = _swift_stdlib_malloc_size(v42);
        v44 = v43 - 32;
        if (v43 < 32)
        {
          v44 = v43 - 17;
        }

        v45 = v44 >> 4;
        *(v42 + 2) = v41;
        *(v42 + 3) = 2 * (v44 >> 4);
        v46 = (v42 + 4);
        v47 = *(v8 + 3) >> 1;
        if (*(v8 + 2))
        {
          v48 = v8 + 4;
          if (v42 != v8 || v46 >= v48 + 16 * v47)
          {
            memmove(v42 + 4, v48, 16 * v47);
          }

          v8[2] = 0.0;
        }

        v12 = (v46 + 16 * v47);
        v13 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - v47;

        v8 = v42;
        v5 = v56;
        v4 = v57;
        v14 = v58;
        v34 = v54;
        v33 = v55;
        v35 = v53;
      }

      v49 = __OFSUB__(v13--, 1);
      if (v49)
      {
        goto LABEL_80;
      }

      *v12 = v38;
      *(v12 + 1) = v36;
      v12 += 2;
      ++v7;
      ++v36;
      if (v37 == v14)
      {
        goto LABEL_69;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

LABEL_69:
  v50 = *(v8 + 3);
  if (v50 < 2)
  {
    return v8;
  }

  v51 = v50 >> 1;
  v49 = __OFSUB__(v51, v13);
  v52 = v51 - v13;
  if (!v49)
  {
    *(v8 + 2) = v52;
    return v8;
  }

LABEL_85:
  __break(1u);
  return result;
}

char *sub_23006BF0C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

uint64_t sub_23006C030(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23006C01C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_230310E48();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18098);
      v7 = sub_23030FD48();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_230166F60(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult.init(matchedReminderIDs:removedReminderIDs:updatedListIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ExtendedDiff.patch<A>(from:to:sort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    sub_2300B4890(a1, a2, a3, a4, a5, a6);
    swift_getAssociatedTypeWitness();
    sub_23006D6D0();
    sub_2300528E4(a3);
  }

  else
  {
    sub_23006C450(a1, a2, a5, a6);
    swift_getAssociatedTypeWitness();
    sub_23006D6D0();
  }

  swift_getAssociatedTypeWitness();
  type metadata accessor for SortedPatchElement();
  sub_23030FDE8();
  swift_getWitnessTable();
  v12 = sub_230310028();
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A80);
  type metadata accessor for ExtendedPatch();
  sub_23006D5B4(&qword_280C96ED0);
  v13 = sub_23030FB78();

  return v13;
}

uint64_t initializeWithCopy for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_23006C734(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t sub_23006C450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[1];
  v20[0] = *v4;
  v20[1] = v9;
  v20[2] = v4[2];
  v21 = v20[0];
  v19 = v20[0];
  sub_23006C610(&v21, &v18);
  v10 = Diff.patch<A>(from:to:)(a1, a2, a3, a4);

  v17[7] = v10;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Patch();
  sub_23030FDE8();
  swift_getWitnessTable();
  sub_230310028();
  v18 = v19;
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v10;
  v17[5] = v20;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A80);
  v12 = type metadata accessor for SortedPatchElement();
  v13 = sub_23006D5B4(&qword_280C99CF0);
  v15 = sub_23006CBDC(sub_2300B7BFC, v17, v11, v12, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);

  return v15;
}

uint64_t Diff.patch<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v10 = *v4;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = &v11;
  v9[5] = a2;
  v9[6] = a1;
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Patch();
  v6 = sub_23006C89C();
  return sub_23006CBDC(sub_2300E3584, v9, &type metadata for Diff, v5, MEMORY[0x277D84A98], v6, MEMORY[0x277D84AC0], v7);
}

uint64_t sub_23006C734(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

__n128 REMRemindersInCalendarDataView.Invocation.Result.init(remindersResult:predicateVersion:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = v3;
  a3[1].n128_u8[8] = v4;
  a3[2].n128_u64[0] = a2;
  return result;
}

uint64_t sub_23006C7B4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x277D83410] + 64;
    swift_getTupleTypeLayout2();
    v5 = &v4;
    v6 = v2;
    swift_getTupleTypeLayout3();
    v7 = &v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t sub_23006C89C()
{
  result = qword_280C99E70;
  if (!qword_280C99E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99E70);
  }

  return result;
}

uint64_t sub_23006C8F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t REMRemindersInCalendarDataView.Invocation.Result.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B00);
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = &v12 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23006C734(v5, v6, v7, v8);
  sub_23006CB88();
  v9 = v13;
  sub_230311448();
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = 0;
  sub_23006D00C();
  v10 = v14;
  sub_230310DF8();
  sub_23006C8F0(v16, v17, v18, v19);
  if (!v10)
  {
    LOBYTE(v16) = 1;
    sub_230310DD8();
  }

  return (*(v15 + 8))(v4, v9);
}

unint64_t sub_23006CB34()
{
  result = qword_280C99E78;
  if (!qword_280C99E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99E78);
  }

  return result;
}

unint64_t sub_23006CB88()
{
  result = qword_280C98A90;
  if (!qword_280C98A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A90);
  }

  return result;
}

uint64_t sub_23006CBDC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_230310058();
  if (!v19)
  {
    return sub_23030FD38();
  }

  v41 = v19;
  v45 = sub_2303109F8();
  v32 = sub_230310A08();
  sub_2303109A8();
  result = sub_230310048();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_230310138();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2303109E8();
      result = sub_230310098();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23006D00C()
{
  result = qword_280C97540;
  if (!qword_280C97540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97540);
  }

  return result;
}

uint64_t REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AB8);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AC0);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AC8);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v18 - v10;
  v12 = v1[1];
  v25 = *v1;
  v19 = v1[2];
  v20 = v12;
  v13 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23006D41C();
  sub_230311448();
  if (v13)
  {
    LOBYTE(v27) = 1;
    sub_23006D470();
    v14 = v26;
    sub_230310D48();
    v27 = v25;
    v28 = v20;
    v29 = v19;
    sub_230061FFC();
    v15 = v24;
    sub_230310DF8();
    (*(v23 + 8))(v5, v15);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_2300D948C();
    v14 = v26;
    sub_230310D48();
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
    sub_23006DB8C(&qword_280C9B990, qword_280C9BFD8);
    v16 = v22;
    sub_230310DF8();
    (*(v21 + 8))(v8, v16);
  }

  return (*(v9 + 8))(v11, v14);
}

unint64_t sub_23006D41C()
{
  result = qword_280C98AF0;
  if (!qword_280C98AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AF0);
  }

  return result;
}

unint64_t sub_23006D470()
{
  result = qword_280C98AC0;
  if (!qword_280C98AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AC0);
  }

  return result;
}

uint64_t sub_23006D4CC()
{
  result = type metadata accessor for Patch();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_23006D56C()
{
  if (*v0)
  {
    return 0x6E656D6572636E69;
  }

  else
  {
    return 0x64616F6C6572;
  }
}

uint64_t sub_23006D5B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14A80);
    sub_23006D62C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23006D62C()
{
  result = qword_280C99D48;
  if (!qword_280C99D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99D48);
  }

  return result;
}

void *sub_23006D680(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t sub_23006D6D0()
{
  type metadata accessor for SortedPatchElement();
  type metadata accessor for DoublyLinkedList();
  type metadata accessor for LinkedList();

  v1 = sub_23006DD64(v0);
  v2 = sub_23006E51C(v1);
  if (!v2)
  {
    return sub_23030FD38();
  }

  if (*(v2 + 16))
  {

    sub_230241CAC(v3);
  }

  MEMORY[0x28223BE20](v2);

  swift_getWitnessTable();
  v4 = sub_23030FBE8();

  return v4;
}

uint64_t REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23006DB20();

  sub_230311448();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  sub_23006DB8C(&qword_280C9B990, qword_280C9BFD8);
  sub_230310DF8();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    sub_230310DF8();
    v16 = v10;
    v15 = 2;
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23006DA78()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23006DB20()
{
  result = qword_280C98B08;
  if (!qword_280C98B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B08);
  }

  return result;
}

uint64_t sub_23006DB8C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14AA8);
    sub_230066350(a2, type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23006DC28(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14AA8);
    sub_2302E57CC(a2, type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23006DCC4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23006DD7C()
{
  v1 = 0x4C64657461647075;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t destroy for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult()
{
}

uint64_t sub_23006DE88(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = sub_2303104C8();
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v27 = *(v4 - 8);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v28 = a1;
  v14 = sub_23030FDE8();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x231911530](&v29, v14, WitnessTable);
  v16 = v29;
  v29 = a1;
  swift_getWitnessTable();
  sub_2303100D8();
  v17 = v27;
  if ((*(v27 + 48))(v8, 1, v4) == 1)
  {

    v25[1](v8, v26);

    type metadata accessor for LinkedList();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = *(v17 + 32);
  v26 = v13;
  v27 = v17 + 32;
  v25 = v18;
  (v18)(v13, v8, v4);

  v29 = v16;
  sub_230310B68();
  swift_getWitnessTable();
  result = sub_2303100C8();
  v20 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v20 & 0x8000000000000000) == 0)
  {
    v24 = v4;
    if (result == 1)
    {
      v21 = 0;
    }

    else
    {
      type metadata accessor for LinkedList();
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = v22 + 1;
        v29 = v16;
        sub_23006AEDC(v11);
        v21 = sub_230243D50(v21, v11);
        v22 = v23;
      }

      while (v20 != v23);
    }

    v2[2] = v21;
    (v25)(v2 + *(*v2 + 96), v26, v24);
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_23006E238()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

unsigned int *sub_23006E284(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ((v5 + 8) & ~v5) + v6;
  v8 = ((v7 + v5) & ~v5) + v6;
  if (v7 > v8)
  {
    v8 = v7;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v9 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 >= 0xFE)
  {
    v10 = a3 - 252;
    if ((((v8 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
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
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = a2 - 253;
    if (a2 > 0xFD)
    {
      goto LABEL_15;
    }

LABEL_24:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      *(result + v9) = 0;
    }

    else if (v12)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

LABEL_33:
      *(result + v8) = -a2;
      return result;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  v12 = 0;
  v13 = a2 - 253;
  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_15:
  if ((((v8 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if ((((v8 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v15 = a2 - 254;
    v16 = result;
    bzero(result, (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v9) = v14;
    }

    else
    {
      *(result + v9) = v14;
    }
  }

  else if (v12)
  {
    *(result + v9) = v14;
  }

  return result;
}

uint64_t sub_23006E400(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = ((v4 + 8) & ~v4) + v5;
  v7 = ((v6 + v4) & ~v4) + v5;
  if (v6 > v7)
  {
    v7 = v6;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v8 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - 252;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v9 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_25;
    }
  }

  else if (v12 == 2)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
LABEL_25:
      v16 = *(a1 + v7);
      if (v16 >= 3)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_25;
    }
  }

  v15 = v13 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v15) + 254;
}

uint64_t sub_23006E51C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  type metadata accessor for LinkedList();

  swift_getWitnessTable();
  v1 = sub_23030FE18();
  swift_allocObject();
  v2 = sub_230244280(v1);

  if (v2)
  {
  }

  return v2;
}

uint64_t destroy for ExtendedDiff()
{
}

unint64_t sub_23006E644()
{
  result = qword_280C97528;
  if (!qword_280C97528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97528);
  }

  return result;
}

uint64_t REMRemindersInCalendarDataView.Invocation.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23006CB88();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_23006E8DC();
  sub_230310CE8();
  v9 = v17;
  v10 = v18;
  v16 = v19;
  v21 = v20;
  LOBYTE(v17) = 1;
  v11 = sub_230310CC8();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  v12 = v16;
  *(a2 + 16) = v16;
  v13 = v21;
  *(a2 + 24) = v21;
  *(a2 + 32) = v11;
  sub_23006C734(v9, v10, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23006C8F0(v9, v10, v12, v13);
}

unint64_t sub_23006E8DC()
{
  result = qword_280C97538;
  if (!qword_280C97538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97538);
  }

  return result;
}

uint64_t REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AD0);
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AD8);
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26[-v7];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE0);
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v26[-v10];
  v12 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_23006D41C();
  v13 = v33;
  sub_230311428();
  if (!v13)
  {
    v28 = v6;
    v15 = v30;
    v14 = v31;
    v33 = v9;
    v16 = sub_230310D08();
    if (*(v16 + 16) == 1)
    {
      v17 = v32;
      v27 = *(v16 + 32);
      if (v27)
      {
        LOBYTE(v34) = 1;
        sub_23006D470();
        sub_230310C28();
        sub_23006EF44();
        sub_230310CE8();
        (*(v15 + 8))(v5, v3);
        (*(v33 + 8))(v11, v17);
        swift_unknownObjectRelease();
        v18 = v34;
        v19 = v35;
        v14 = v31;
      }

      else
      {
        LOBYTE(v34) = 0;
        sub_2300D948C();
        sub_230310C28();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
        sub_23006DB8C(&qword_280C9C480, &qword_280C9C5D0);
        v25 = v28;
        sub_230310CE8();
        (*(v29 + 8))(v8, v25);
        (*(v33 + 8))(v11, v17);
        swift_unknownObjectRelease();
        v18 = v34;
        v19 = 0uLL;
      }

      *v14 = v18;
      *(v14 + 8) = v19;
      *(v14 + 24) = v27;
    }

    else
    {
      v20 = sub_230310918();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v22 = &type metadata for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult;
      v23 = v32;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v33 + 8))(v11, v23);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_23006EE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64616F6C6572 && a2 == 0xE600000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D6572636E69 && a2 == 0xEB000000006C6174)
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

unint64_t sub_23006EF44()
{
  result = qword_280C97548;
  if (!qword_280C97548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97548);
  }

  return result;
}

uint64_t REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23006DB20();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  v16 = 0;
  sub_23006DB8C(&qword_280C9C480, &qword_280C9C5D0);
  sub_230310CE8();
  v14 = a2;
  v15 = v17;
  v16 = 1;
  sub_230310CE8();
  v13 = v17;
  v16 = 2;
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v9 = v17;
  v10 = v14;
  v11 = v13;
  *v14 = v15;
  v10[1] = v11;
  v10[2] = v9;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMRemindersInCalendarDataView.RemindersInCalendarResult.remindersResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_23006C734(v2, v3, v4, v5);
}

void destroy for REMRemindersInCalendarDataView.RemindersInCalendarResult(uint64_t a1)
{
  sub_23006C8F0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  v2 = *(a1 + 40);
}

uint64_t REMRemindersInCalendarDataView.FetchResultToken.dataRepresentation()()
{
  sub_23030E7E8();
  swift_allocObject();
  sub_23030E7D8();
  sub_23006F38C();
  v0 = sub_23030E7B8();

  return v0;
}

unint64_t sub_23006F38C()
{
  result = qword_280C97508;
  if (!qword_280C97508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97508);
  }

  return result;
}

uint64_t REMRemindersInCalendarDataView.FetchResultToken.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300662BC();
  sub_230311448();
  v11 = 0;
  sub_230310DD8();
  if (!v2)
  {
    v9[1] = v9[0];
    v10 = 1;
    type metadata accessor for REMFetchResultToken_Codable();
    sub_230066350(&qword_280C97738, type metadata accessor for REMFetchResultToken_Codable);
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMFetchResultToken_Codable.encode(to:)(void *a1)
{
  v2 = v1;
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19298);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23005EE78();
  sub_230311448();
  v16[0] = 0;
  v8 = [v2 dataRepresentationWithError_];
  v9 = v16[0];
  if (v8)
  {
    v10 = sub_23030EA18();
    v12 = v11;

    v16[0] = v10;
    v16[1] = v12;
    sub_23006F7D4();
    sub_230310DF8();
    (*(v5 + 8))(v7, v4);
    return sub_23005FE3C(v10, v12);
  }

  else
  {
    v14 = v9;
    sub_23030E808();

    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_23006F7D4()
{
  result = qword_280C9C428;
  if (!qword_280C9C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C428);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MultiClassificationMetric(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for REM_os_activity.Scope(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for REM_os_activity.Scope(uint64_t result, int a2, int a3)
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

BOOL sub_23006F8D8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_23006F948@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_23006F974@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23006FC40()
{
  MEMORY[0x231914250](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_23006FC90()
{

  return swift_deallocObject();
}

uint64_t sub_23006FCD4()
{

  return swift_deallocObject();
}

uint64_t sub_23006FD14()
{

  return swift_deallocObject();
}

uint64_t sub_23006FD5C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23006FDB4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23006FE78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v2 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v5 + 8))(v0 + v6, v2);

  return swift_deallocObject();
}

uint64_t sub_23006FFB4()
{
  v1 = *(v0 + 3);
  v2 = *(*(v0 + 2) - 8);
  v3 = *(v0 + 4);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(v2 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v3 - 8);
  v8 = (v6 + *(v5 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  (*(v2 + 8))(&v0[v4]);
  (*(v5 + 8))(&v0[v6], v1);
  (*(v7 + 8))(&v0[v8], v3);

  return swift_deallocObject();
}

uint64_t sub_230070130()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2300701EC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_2300702E4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_230070364()
{

  return swift_deallocObject();
}

uint64_t sub_2300703C0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_230070440()
{

  return swift_deallocObject();
}

uint64_t sub_230070478()
{

  return swift_deallocObject();
}

uint64_t sub_2300704B0()
{

  return swift_deallocObject();
}

uint64_t _s19ReminderKitInternal25REMReminderDetailDataViewC17CheckUpdateResultVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = v3;
  return a1;
}

uint64_t sub_23007061C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void *_s19ReminderKitInternal15REM_os_activityVwCP_0(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

void *_s19ReminderKitInternal21REMSiriSearchDataViewC5ModelVwCP_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for REMComplicationDataView.Model(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for REMComplicationDataView.Model(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *_s11CodingErrorOwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_2300708D8()
{

  return swift_deallocObject();
}

uint64_t sub_230070914()
{

  return swift_deallocObject();
}

uint64_t sub_23007094C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_2300709D8()
{
  v1 = [v0 unsavedMembershipsOfRemindersInSections];

  return v1;
}

void sub_230070A10(void *a1)
{
  [v1 setUnsavedMembershipsOfRemindersInSections_];
}

void **_s19ReminderKitInternal28REMPermanentlyHiddenDataViewC27PermanentlyHiddenInvocationC10ParametersVwCP_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_230070A88()
{

  return swift_deallocObject();
}

uint64_t sub_230070AC0()
{
  MEMORY[0x231914250](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_230070B08()
{

  return swift_deallocObject();
}

uint64_t sub_230070B40()
{

  return swift_deallocObject();
}

uint64_t _s19ReminderKitInternal11REMJSONTypeOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t sub_230070C78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_230119298(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_230070CC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_230119EA4(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

unint64_t sub_230070CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_230115A78(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_230070D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_230115870(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

id sub_230070D54()
{
  v1 = *v0;
  swift_willThrow();
  return v1;
}

uint64_t _s19ReminderKitInternal23InvalidUnkeyedContanierVwxx_0(id *a1)
{
}

char *sub_230070E14@<X0>(char **a1@<X8>)
{
  result = REMSmartListCustomContextChangeItem.filter.getter();
  *a1 = result;
  return result;
}

void sub_230070E40(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  REMSmartListCustomContextChangeItem.filter.setter(v1);
}

uint64_t sub_230070E70()
{

  return swift_deallocObject();
}

uint64_t sub_230070EB8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_230070F44()
{

  return swift_deallocObject();
}

uint64_t _s16PublicLinkStatusOwCP_0(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  else
  {
    *result = v2;
    *(result + 8) = *(a2 + 8);
    v3 = result;
    v4 = v2;
    return v3;
  }

  return result;
}

uint64_t sub_230070FD4()
{

  return swift_deallocObject();
}

uint64_t sub_23007100C()
{
  sub_230145584(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_23007105C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EB58();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2300710C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23030EB58();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_230071148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
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

uint64_t sub_230071278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_230071398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_230071410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23007148C()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2300714DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_230071528()
{

  return swift_deallocObject();
}

uint64_t sub_2300715CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_230071718@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_listName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_2300717CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_flagged;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_230071824(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_flagged;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_230071878@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_priority;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2300718D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_priority;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2300719E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030E9B8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_230071A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030E9B8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_230071AC4()
{

  return swift_deallocObject();
}

void *_s19ReminderKitInternal6KMeansC7ClusterVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t _s19ReminderKitInternal6KMeansC12ClusterStatsVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_230071B78()
{
  v1 = *(v0 + 16);
  v6 = *(v0 + 24);
  v2 = (type metadata accessor for Publishers.MapOnScheduler() - 8);
  v3 = v0 + ((*(*v2 + 80) + 72) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  v4 = *(*(v6 - 8) + 8);
  v4(v3 + v2[17], v6);
  v4(v3 + v2[18], v6);

  return swift_deallocObject();
}

uint64_t sub_230071CD8()
{

  return swift_deallocObject();
}

uint64_t sub_230071D30()
{

  return swift_deallocObject();
}

uint64_t _s19ReminderKitInternal37REMRemindersListBatchDeleteInvocationC8ListTypeOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_2301819DC(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_230071E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 8);
    if (v4 > 4)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_230071F28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_230071FF8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_230072038()
{

  return swift_deallocObject();
}

uint64_t sub_230072070()
{

  return swift_deallocObject();
}

uint64_t sub_2300720B8()
{

  return swift_deallocObject();
}

uint64_t sub_2300720F0()
{

  return swift_deallocObject();
}

uint64_t sub_230072130()
{
  swift_getAssociatedTypeWitness();
  v1 = sub_23030FE78();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_230072250(uint64_t result)
{
  v1 = *(result + 96) & 0x10101;
  v2 = *(result + 120) & 1;
  *(result + 72) &= 1uLL;
  *(result + 96) = v1;
  *(result + 120) = v2;
  return result;
}

uint64_t sub_23007228C()
{

  return swift_deallocObject();
}

uint64_t sub_2300722C4(uint64_t result)
{
  v1 = *(result + 120);
  v2 = *(result + 96) & 0x10101;
  *(result + 72) &= 1uLL;
  *(result + 96) = v2;
  *(result + 120) = v1 & 1 | 0x80;
  return result;
}

uint64_t sub_230072308(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[25];

  return v15(v16, a2, v14);
}

uint64_t sub_230072498(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[25];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_230072628(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2300726E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_230072798(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23030EB58();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2300728C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_23030EB58();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2300729F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23030EB58();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_230072AA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23030EB58();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *_s19ReminderKitInternal21REMTestStorePopulatorC18ContentsParseErrorOwCP_0(void *result, void **a2)
{
  v2 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *result = v2;
  return result;
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO17ListPathSpecifierOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_2301BA188(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO22SmartListPathSpecifierOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_230050BA4(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO22SmartListPathSpecifierOwta_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_230050F40(v4, v5);
  return a1;
}

uint64_t sub_2300731CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_230073288(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_230073384(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_230073398(a1, a2);
  }
}

void sub_230073398(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_2300733CC()
{

  sub_23008E140(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_230077E1C(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_230073420()
{

  return swift_deallocObject();
}

uint64_t sub_230073484()
{

  sub_23008E140(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_2300734C8()
{

  return swift_deallocObject();
}

uint64_t sub_230073590()
{

  return swift_deallocObject();
}

uint64_t sub_230073650()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_23030EB58();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_2300737E0()
{

  return swift_deallocObject();
}

uint64_t sub_230073818()
{

  return swift_deallocObject();
}

uint64_t sub_230073864()
{

  return swift_deallocObject();
}

uint64_t sub_2300738B4()
{

  return swift_deallocObject();
}

uint64_t sub_2300738EC()
{

  return swift_deallocObject();
}

uint64_t sub_23007394C()
{

  return swift_deallocObject();
}

uint64_t sub_23007398C()
{

  return swift_deallocObject();
}

uint64_t sub_2300739C4()
{

  return swift_deallocObject();
}

uint64_t sub_2300739FC()
{

  return swift_deallocObject();
}

uint64_t sub_230073A38()
{

  return swift_deallocObject();
}

uint64_t sub_230073A70()
{

  return swift_deallocObject();
}

uint64_t sub_230073AC0()
{

  return swift_deallocObject();
}

uint64_t sub_230073AF8()
{

  return swift_deallocObject();
}

uint64_t sub_230073B30()
{

  return swift_deallocObject();
}

void *_s19ReminderKitInternal21REMListPickerDataViewC5ModelV21ListOrCustomSmartListOwCP_0(void *a1, void *a2)
{
  v3 = (*a2 & 0x7FFFFFFFFFFFFFFFLL);
  *a1 = *a2;
  v4 = v3;
  return a1;
}

void *_s19ReminderKitInternal21REMListPickerDataViewC6ResultVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  v4 = v3;
  return a1;
}

uint64_t _s19ReminderKitInternal21REMListPickerDataViewC10InvocationC10ParametersVwCP_0(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if (*a2 >= 2uLL)
  {
    v4 = result;
    v5 = v3;
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_230073CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_230073D34()
{
  swift_getWitnessTable();

  return sub_23030FFE8();
}

uint64_t sub_230073DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_230073E44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23030EBB8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_230073EF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23030EBB8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23007405C()
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

id sub_2300740B8@<X0>(void *a1@<X8>)
{
  result = CSSearchableItemAttributeSet.rem_objectID.getter();
  *a1 = result;
  return result;
}

id sub_230074144@<X0>(void *a1@<X8>)
{
  result = CSSearchableItemAttributeSet.rem_accountID.getter();
  *a1 = result;
  return result;
}

id sub_2300741D0@<X0>(void *a1@<X8>)
{
  result = CSSearchableItemAttributeSet.rem_listID.getter();
  *a1 = result;
  return result;
}

uint64_t sub_230074478@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_2300744C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

double sub_230074518@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_230074560(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_2300745AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_2300745F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_230074638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_230074688(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  return result;
}

uint64_t sub_230074700()
{

  return swift_deallocObject();
}

uint64_t sub_230074738()
{

  return swift_deallocObject();
}

uint64_t sub_230074790()
{
  v1 = sub_23030EBB8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_230074854()
{

  return swift_deallocObject();
}

uint64_t sub_23007489C()
{

  return swift_deallocObject();
}

uint64_t sub_2300748E8()
{

  return swift_deallocObject();
}

uint64_t sub_230074970()
{

  return swift_deallocObject();
}

uint64_t sub_230074AE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15290);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t _s19ReminderKitInternal23REMHashtagLabelDataViewC57HashtagLabelsReferencedByCustomSmartListFiltersInvocationC6ResultVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_230074C30()
{

  return swift_deallocObject();
}

uint64_t sub_230074C78()
{

  return swift_deallocObject();
}

uint64_t sub_230074CB0()
{

  return swift_deallocObject();
}

uint64_t sub_230074CE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D60);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_230074DB8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_230074E80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_230074F4C()
{

  return swift_deallocObject();
}

uint64_t sub_230074F84()
{

  return swift_deallocObject();
}

uint64_t sub_230074FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_230075064()
{
  swift_getWitnessTable();

  return sub_23030FFE8();
}

uint64_t sub_2300750E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

__n128 sub_230075170(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2300751AC()
{
  if (*v0)
  {
    return 0x6564756C637865;
  }

  else
  {
    return 0x6564756C636E69;
  }
}

uint64_t sub_2300751D8()
{
  if (*v0)
  {
    return 1937334628;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_230075214()
{
  if (*v0)
  {
    return 0x7265646E696D6572;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_230075254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230283DCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23007527C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2300753B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
  }

  else
  {
    v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_230075520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2300755D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23030EB58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}