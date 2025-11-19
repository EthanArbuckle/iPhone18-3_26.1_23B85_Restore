uint64_t sub_230143090()
{
  result = sub_2300B3B88(&unk_2844EAFB0);
  qword_27DB15A68 = result;
  return result;
}

uint64_t sub_2301430DC()
{
  result = sub_2300B3B88(&unk_2844EAFF0);
  qword_27DB15A70 = result;
  return result;
}

uint64_t sub_230143128(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

id REMCustomSmartListFilterDescriptor.FilterLists.alternateTargetList(for:defaultListID:)(void *a1, void *a2)
{
  v3 = *v2;
  v4 = v2[1];
  if (*v2 >> 62)
  {
    v6 = a1;
    v7 = a2;
    v8 = sub_2303106D8();
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v3 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x231912650](0, v3);
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v3 + 32);
    }

    __break(1u);
LABEL_12:
    v10 = a1;
    v11 = a2;
    v12 = sub_2303106D8();
    a2 = v11;
    v13 = v12;
    a1 = v10;
    if (!v13)
    {
      return 0;
    }

    return sub_2301432B0(a1, v4, a2);
  }

  if (v4 >> 62)
  {
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return sub_2301432B0(a1, v4, a2);
  }

  return 0;
}

void *sub_2301432B0(void *a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v56 = a2;
  v65[1] = *MEMORY[0x277D85DE8];
  v7 = sub_23030EBB8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v9;
  v62 = v11;
  if (!a3)
  {
LABEL_6:
    v22 = [a1 customContext];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 account];

      v65[0] = 0;
      v25 = [v24 fetchListsAndSublistsWithError_];

      v26 = v65[0];
      if (v25)
      {
        sub_23004CBA4(0, &qword_27DB14FE8);
        v27 = sub_23030FCD8();
        v28 = v26;

        v29 = v27;
        if (!(v27 >> 62))
        {
          v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30)
          {
            v58 = v3;
            v65[0] = MEMORY[0x277D84F90];
            sub_2303109B8();
            goto LABEL_11;
          }

LABEL_41:

          goto LABEL_42;
        }

        while (1)
        {
          v27 = v29;
          if (!sub_2303106D8())
          {
            goto LABEL_41;
          }

          v58 = v4;
          v52 = sub_2303106D8();
          if (v52)
          {
            v30 = v52;
            v65[0] = MEMORY[0x277D84F90];
            sub_2303109B8();
            if (v30 < 0)
            {
              __break(1u);
              goto LABEL_41;
            }

LABEL_11:
            v31 = 0;
            v32 = v27;
            v59 = v27 & 0xC000000000000001;
            v60 = v30;
            v33 = (v8 + 8);
            v61 = v27;
            do
            {
              if (v59)
              {
                v34 = MEMORY[0x231912650](v31, v32);
              }

              else
              {
                v34 = *(v32 + 8 * v31 + 32);
              }

              v35 = v34;
              v36 = [v34 objectID];
              v37 = type metadata accessor for REMObjectID_Codable();
              v38 = objc_allocWithZone(v37);
              v39 = [v36 uuid];
              v40 = v62;
              sub_23030EBA8();

              v41 = sub_23030EB88();
              (*v33)(v40, v7);
              v42 = [v36 entityName];
              if (!v42)
              {
                _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                v42 = sub_23030F8B8();
                v7 = v57;
              }

              ++v31;
              v64.receiver = v38;
              v64.super_class = v37;
              objc_msgSendSuper2(&v64, sel_initWithUUID_entityName_, v41, v42);

              sub_230310988();
              sub_2303109C8();
              sub_2303109D8();
              sub_230310998();
              v32 = v61;
            }

            while (v60 != v31);

            v44 = v65[0];
            if (!(v65[0] >> 62))
            {
LABEL_20:
              v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v45)
              {
                goto LABEL_41;
              }

              goto LABEL_21;
            }
          }

          else
          {

            v44 = MEMORY[0x277D84F90];
            if (!(MEMORY[0x277D84F90] >> 62))
            {
              goto LABEL_20;
            }
          }

          v45 = sub_2303106D8();
          if (!v45)
          {
            goto LABEL_41;
          }

LABEL_21:
          v46 = 0;
          v4 = v44 & 0xC000000000000001;
          v8 = v44 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v4)
            {
              v47 = MEMORY[0x231912650](v46, v44);
            }

            else
            {
              if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v47 = *(v44 + 8 * v46 + 32);
            }

            v43 = v47;
            v7 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              break;
            }

            v65[0] = v47;
            MEMORY[0x28223BE20](v47);
            *(&v55 - 2) = v65;
            v48 = v58;
            v49 = sub_2301384DC(sub_23014C608, (&v55 - 4), v56);
            v58 = v48;
            if ((v49 & 1) == 0)
            {

              return v43;
            }

            ++v46;
            if (v7 == v45)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
        }
      }

      v50 = v65[0];
      v51 = sub_23030E808();

      swift_willThrow();
    }

LABEL_42:
    v43 = objc_opt_self();
    v53 = sub_23030F8B8();
    [v43 internalErrorWithDebugDescription_];

    swift_willThrow();
    return v43;
  }

  v12 = v7;
  v13 = type metadata accessor for REMObjectID_Codable();
  v14 = objc_allocWithZone(v13);
  v15 = a3;
  v16 = [v15 uuid];
  sub_23030EBA8();

  v17 = sub_23030EB88();
  (*(v8 + 8))(v11, v12);
  v18 = [v15 entityName];
  if (!v18)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v18 = sub_23030F8B8();
  }

  v63.receiver = v14;
  v63.super_class = v13;
  v19 = objc_msgSendSuper2(&v63, sel_initWithUUID_entityName_, v17, v18);

  v65[0] = v19;
  MEMORY[0x28223BE20](v20);
  *(&v55 - 2) = v65;
  v21 = sub_2301384DC(sub_23014C608, (&v55 - 4), v56);

  if (v21)
  {
    v7 = v57;
    goto LABEL_6;
  }

  return 0;
}

void sub_230143934(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_230310438();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_23004CBA4(0, &qword_280C9C478);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_230310448();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_230143A74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_2303106D8();
    MEMORY[0x2319130E0](v8);
    v3 = sub_2303106D8();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x2319130E0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x231912650](i, a2);
      sub_230310458();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_230310458();

      --v3;
    }

    while (v3);
  }
}

uint64_t _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC0G4DateO13RelativeRangeV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 1) == *(a2 + 1)) & ~(*a1 ^ *a2);
  if (a1[16] != a2[16])
  {
    v2 = 0;
  }

  return v2 & (a2[17] ^ a1[17] ^ 1u);
}

BOOL _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC0G8HashtagsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*a1)
  {
    if (!v6)
    {
      sub_230122CDC(0);
      sub_230122CDC(0);
      return 1;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
    if (v6 == 1)
    {
      sub_230122CDC(1uLL);
      sub_230122CDC(1uLL);
      return v6;
    }

LABEL_12:
    sub_2300542CC(v6);
    sub_2300542CC(v3);
    sub_230122CDC(v3);
    sub_230122CDC(v6);
    return 0;
  }

  if (v6 < 2 || (sub_2300A7A0C(*a1, *a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = sub_2300A7A0C(v2, v5);
  sub_2300542CC(v6);
  sub_2300542CC(v3);
  sub_230122CDC(v3);
  sub_230122CDC(v6);
  return (v8 & 1) != 0 && ((v7 ^ v4) & 1) == 0;
}

uint64_t _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC0G8LocationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v50 = *(a1 + 16);
  if (!*(a1 + 48))
  {
    v46 = *(a1 + 8);
    v49 = *(a1 + 24);
    v45 = *a1;
    if (!*(a2 + 48))
    {
      v27 = *a2;
      sub_230145584(v3, v2, v50, v49, v5, v6, 0);
      sub_230145584(v27, v9, v11, v10, v13, v12, 0);
      return v45 == v27;
    }

LABEL_17:
    v31 = v9;
    v32 = v9;
    v33 = v8;
    v34 = v5;
    v35 = v6;
    sub_230145648(v8, v31, v11, v10, v13, v12, v14);
    sub_230145584(v45, v46, v50, v49, v34, v35, v7);
    sub_230145584(v33, v32, v11, v10, v13, v12, v14);
    return 0;
  }

  if (v7 != 1)
  {
    v45 = *a1;
    v46 = *(a1 + 8);
    v49 = *(a1 + 24);
    if (*(a1 + 16) | v2 | v3 | v4 | v5 | v6)
    {
      if (v14 == 2 && v8 == 1 && !(v11 | v9 | v10 | v13 | v12))
      {
        v26 = 1;
        sub_230145584(1, 0, 0, v49, v5, v6, 2);
        sub_230145584(1, 0, 0, v10, v13, v12, 2);
        return v26;
      }
    }

    else if (v14 == 2 && !(v11 | v9 | v8 | v10 | v13 | v12))
    {
      sub_230145584(0, 0, 0, v4, v5, v6, 2);
      sub_230145584(0, 0, 0, v10, v13, v12, 2);
      return 1;
    }

    goto LABEL_17;
  }

  v44 = *(a1 + 40);
  if (v14 != 1)
  {
    v46 = *(a1 + 8);
    v49 = *(a1 + 24);
    v45 = *a1;
    v28 = *(a1 + 32);
    v29 = *(a2 + 8);
    v30 = *a2;

    v8 = v30;
    v9 = v29;
    v5 = v28;
    v6 = v44;
    goto LABEL_17;
  }

  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v48 = *(a1 + 32);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  if (v3 == v8 && v2 == v9)
  {
    v20 = *(a2 + 16);
    v21 = *(a1 + 24);
    v22 = *(a2 + 40);
    v23 = *a1;
    v24 = *(a1 + 8);
    sub_230145648(v3, v2, v20, v10, v13, v22, 1);
    sub_230145648(v23, v24, v50, v21, v48, v44, 1);
    sub_230145584(v23, v24, v50, v21, v48, v44, 1);
    v25 = v22;
    sub_230145584(v23, v24, v20, v10, v13, v22, 1);
    v26 = 0;
  }

  else
  {
    v37 = *(a2 + 16);
    v38 = *a2;
    v39 = *(a2 + 24);
    v43 = *(a2 + 32);
    v40 = *a1;
    v41 = *(a2 + 8);
    v42 = *(a1 + 8);
    v47 = sub_230311048();
    sub_230145648(v38, v41, v37, v39, v43, v12, 1);
    sub_230145648(v40, v42, v50, v4, v48, v44, 1);
    sub_230145584(v40, v42, v50, v4, v48, v44, 1);
    v25 = v12;
    sub_230145584(v38, v41, v37, v39, v43, v12, 1);
    v26 = 0;
    if ((v47 & 1) == 0)
    {
      return v26;
    }
  }

  if (v15 == v17 && v16 == v18 && *&v48 == v19)
  {
    return v44 == v25;
  }

  return v26;
}

uint64_t _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC18PostFetchPredicateO15MatchingObjectsO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_11;
      }

      v5 = 1;
LABEL_13:

      return v5 & 1;
    }

    if (v3 != 1)
    {
      goto LABEL_11;
    }

LABEL_6:

    v5 = sub_2300A6C64(v4, v2);

    goto LABEL_13;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_6;
  }

LABEL_11:
  v5 = 0;
  return v5 & 1;
}

uint64_t _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC18PostFetchPredicateO2eeoiySbAE_AEtFZ_0(uint64_t a1, char *a2)
{
  v94 = a1;
  v95 = a2;
  v87 = sub_23030EBB8();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  MEMORY[0x28223BE20](v3 - 8);
  v93 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate(0);
  v6 = MEMORY[0x28223BE20](Predicate);
  v91 = (&v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v90 = (&v85 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v85 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v92 = &v85 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v85 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v85 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v85 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v85 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v85 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v85 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v85 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15BD8);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v36 = &v85 - v35;
  v37 = &v85 + *(v34 + 56) - v35;
  sub_2301453F8(v94, &v85 - v35, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  v38 = v95;
  v95 = v37;
  sub_2301453F8(v38, v37, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v63 = v89;
        sub_2301453F8(v36, v89, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        v64 = v95;
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v42 = *v63;
          v43 = *v64;
          goto LABEL_27;
        }

        goto LABEL_40;
      }

      if (EnumCaseMultiPayload == 9)
      {
        v52 = v90;
        sub_2301453F8(v36, v90, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        v53 = *v52;
        v54 = v95;
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v83 = v91;
        sub_2301453F8(v36, v91, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        v53 = *v83;
        v54 = v95;
        if (swift_getEnumCaseMultiPayload() != 10)
        {
          goto LABEL_39;
        }
      }

      PredicateO15MatchingObjectsO2eeoiySbAG_AGtFZ_0 = sub_2300A7658(v53, *v54);
      goto LABEL_36;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v40 = v95;
      if (EnumCaseMultiPayload == 6)
      {
        v41 = v88;
        sub_2301453F8(v36, v88, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v42 = *v41;
          v43 = *v40;
LABEL_27:
          v65 = v42 ^ v43;
          sub_2301454DC(v36, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
          v51 = v65 ^ 1;
          return v51 & 1;
        }

        goto LABEL_40;
      }

      v78 = v92;
      sub_2301453F8(v36, v92, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v79 = v86;
        v80 = v85;
        v81 = v87;
        (*(v86 + 32))(v85, v40, v87);
        v51 = sub_23030EB98();
        v82 = *(v79 + 8);
        v82(v80, v81);
        v82(v78, v81);
        goto LABEL_37;
      }

      (*(v86 + 8))(v78, v87);
      goto LABEL_40;
    }

    sub_2301453F8(v36, v18, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    v61 = *v18;
    v62 = v95;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      PredicateO15MatchingObjectsO2eeoiySbAG_AGtFZ_0 = sub_2300A6EBC(v61, *v62);
      goto LABEL_36;
    }

LABEL_39:

    goto LABEL_40;
  }

  v44 = v93;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2301453F8(v36, v30, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
      v67 = *v30;
      v66 = *(v30 + 1);
      v69 = *(v30 + 2);
      v68 = *(v30 + 3);
      v70 = *(v30 + 4);
      v71 = *(v30 + 5);
      v72 = v30[48];
      v73 = v95;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v94 = v36;
        v74 = *v73;
        v75 = *(v73 + 1);
        v76 = *(v73 + 2);
        v92 = *(v73 + 3);
        v93 = v76;
        v77 = *(v73 + 4);
        v90 = *(v73 + 5);
        v91 = v77;
        LODWORD(v95) = v73[48];
        v103 = v67;
        v104 = v66;
        v105 = v69;
        v106 = v68;
        v107 = v70;
        v108 = v71;
        v109 = v72;
        v96 = v74;
        v97 = v75;
        v98 = v76;
        v99 = v92;
        v100 = v77;
        v101 = v90;
        v102 = v95;
        v51 = _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC0G8LocationO2eeoiySbAE_AEtFZ_0(&v103, &v96);
        sub_230145584(v74, v75, v93, v92, v91, v90, v95);
        sub_230145584(v67, v66, v69, v68, v70, v71, v72);
        sub_2301454DC(v94, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
        return v51 & 1;
      }

      sub_230145584(v67, v66, v69, v68, v70, v71, v72);
      goto LABEL_40;
    }

    sub_2301453F8(v36, v32, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    v55 = v95;
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_40:
      sub_230061918(v36, &qword_27DB15BD8);
LABEL_41:
      v51 = 0;
      return v51 & 1;
    }

    v51 = *v32 == *v55;
LABEL_37:
    sub_2301454DC(v36, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    return v51 & 1;
  }

  v45 = v95;
  if (EnumCaseMultiPayload == 2)
  {
    sub_2301453F8(v36, v27, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    v56 = *v27;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v57 = v27[8];
      v58 = *v45;
      v59 = *(v45 + 8);
      v103 = v56;
      LOBYTE(v104) = v57;
      v96 = v58;
      LOBYTE(v97) = v59;
      PredicateO15MatchingObjectsO2eeoiySbAG_AGtFZ_0 = _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC18PostFetchPredicateO15MatchingObjectsO2eeoiySbAG_AGtFZ_0(&v103, &v96);
LABEL_36:
      v51 = PredicateO15MatchingObjectsO2eeoiySbAG_AGtFZ_0;

      goto LABEL_37;
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_2301453F8(v36, v21, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_2301454DC(v21, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
      goto LABEL_40;
    }

    sub_2301455BC(v45, v44, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    v51 = _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC0G4DateO2eeoiySbAE_AEtFZ_0(v21, v44);
    sub_2301454DC(v44, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    sub_2301454DC(v21, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    goto LABEL_37;
  }

  sub_2301453F8(v36, v24, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  v46 = *v24;
  v47 = v24[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    goto LABEL_39;
  }

  v48 = *v45;
  v49 = *(v45 + 8);
  if ((sub_2300A77CC(v46, v48) & 1) == 0)
  {

    goto LABEL_47;
  }

  v50 = sub_2300A77CC(v47, v49);

  if ((v50 & 1) == 0)
  {
LABEL_47:
    sub_2301454DC(v36, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
    goto LABEL_41;
  }

  sub_2301454DC(v36, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  v51 = 1;
  return v51 & 1;
}

uint64_t _s19ReminderKitInternal34REMCustomSmartListFilterDescriptorC0G4DateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v2 = sub_23030EB58();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v56 = &v53 - v6;
  MEMORY[0x28223BE20](v5);
  v55 = &v53 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
  MEMORY[0x28223BE20](v54);
  v58 = &v53 - v8;
  v9 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v53 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v53 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v53 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15BE0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v53 - v29;
  v31 = &v53 + *(v28 + 56) - v29;
  sub_2301453F8(v61, &v53 - v29, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  sub_2301453F8(v62, v31, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_32;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_2301453F8(v30, v15, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v59 + 8))(v15, v60);
        goto LABEL_32;
      }

      v34 = v59;
      v35 = v56;
      v36 = v31;
      v37 = v60;
      (*(v59 + 32))(v56, v36, v60);
      v38 = sub_23030EB08();
      v39 = *(v34 + 8);
      v39(v35, v37);
      v39(v15, v37);
    }

    else
    {
      sub_2301453F8(v30, v12, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v59 + 8))(v12, v60);
        goto LABEL_32;
      }

      v42 = v59;
      v43 = v57;
      v44 = v31;
      v45 = v60;
      (*(v59 + 32))(v57, v44, v60);
      v38 = sub_23030EB08();
      v46 = *(v42 + 8);
      v46(v43, v45);
      v46(v12, v45);
    }

LABEL_25:
    sub_2301454DC(v30, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    return v38 & 1;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2301453F8(v30, v21, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = *v21 ^ *v31 | (*(v21 + 1) != *(v31 + 1)) | (v21[16] != v31[16]) | v21[17] ^ v31[17];
        goto LABEL_13;
      }

      goto LABEL_32;
    }

    sub_2301453F8(v30, v18, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v59 + 8))(v18, v60);
      goto LABEL_32;
    }

    v47 = v59;
    v48 = v55;
    v49 = v31;
    v50 = v60;
    (*(v59 + 32))(v55, v49, v60);
    v38 = sub_23030EB08();
    v51 = *(v47 + 8);
    v51(v48, v50);
    v51(v18, v50);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    sub_2301453F8(v30, v24, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_230061918(v24, &qword_27DB15A78);
      goto LABEL_32;
    }

    v40 = v58;
    sub_230112AF4(v31, v58, &qword_27DB15A78);
    sub_23014553C(&qword_27DB15BE8, MEMORY[0x277CC9578]);
    if ((sub_23030F818() & 1) == 0)
    {
      sub_230061918(v40, &qword_27DB15A78);
      sub_230061918(v24, &qword_27DB15A78);
LABEL_36:
      sub_2301454DC(v30, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
      goto LABEL_33;
    }

    v41 = sub_23030F818();
    sub_230061918(v40, &qword_27DB15A78);
    sub_230061918(v24, &qword_27DB15A78);
    if ((v41 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_27:
    sub_2301454DC(v30, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
    v38 = 1;
    return v38 & 1;
  }

  sub_2301453F8(v30, v26, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_32:
    sub_230061918(v30, &qword_27DB15BE0);
LABEL_33:
    v38 = 0;
    return v38 & 1;
  }

  v33 = *v26 ^ *v31;
LABEL_13:
  sub_2301454DC(v30, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  v38 = v33 ^ 1;
  return v38 & 1;
}

uint64_t sub_2301453F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2301454DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23014553C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230145584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {
  }

  return result;
}

uint64_t sub_2301455BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_230145624(unint64_t result)
{
  if (result != 2)
  {
    return sub_2300542CC(result);
  }

  return result;
}

uint64_t sub_230145634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_230145648(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_230145648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {
  }

  return result;
}

uint64_t sub_230145660(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_2301456A0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = *a2;
  v5 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8);
  v38 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  v40 = v5;
  v39 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16);
  v7 = &v28 - v6;
  v36 = &v28 - v6;
  sub_230055F74(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, &v28 - v6, &unk_27DB15AE0);
  v8 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
  v9 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities);
  v33 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
  v34 = v8;
  v10 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v11 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 8);
  v12 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 16);
  v30 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 24);
  v31 = v10;
  v13 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 32);
  v14 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 40);
  v15 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists + 8);
  v29 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  v16 = v29;
  v32 = v15;
  v17 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
  v37 = type metadata accessor for REMCustomSmartListFilterDescriptor(0);
  v18 = objc_allocWithZone(v37);
  v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v35;
  v19 = &v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  v20 = v40;
  *v19 = v38;
  *(v19 + 1) = v20;
  v19[16] = v39;
  sub_230055F74(v7, &v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v21 = v33;
  v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = v34;
  *&v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = v9;
  v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = v21;
  v22 = &v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  v23 = v30;
  v24 = v31;
  *v22 = v31;
  *(v22 + 1) = v11;
  *(v22 + 2) = v12;
  *(v22 + 3) = v23;
  *(v22 + 4) = v13;
  *(v22 + 5) = v14;
  v22[48] = v17;
  v25 = &v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  *v25 = v16;
  v25[1] = v32;
  sub_230145624(v38);

  sub_230145634(v24, v11, v12, v23, v13, v14, v17);
  sub_230145660(v29);
  v41.receiver = v18;
  v41.super_class = v37;
  v26 = objc_msgSendSuper2(&v41, sel_init);
  sub_230061918(v36, &unk_27DB15AE0);
  return v26;
}

id sub_230145930(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-v5];
  v7 = *a2;
  v32 = a2[1];
  v33 = v7;
  v31 = *(a2 + 16);
  v25 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation);
  v30 = &v24[-v5];
  sub_230055F74(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, &v24[-v5], &unk_27DB15AE0);
  v29 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
  v28 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities);
  v27 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
  v8 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v9 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 8);
  v11 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 16);
  v10 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 24);
  v13 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 32);
  v12 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 40);
  v14 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  v26 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists + 8);
  LOBYTE(a1) = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
  v34 = type metadata accessor for REMCustomSmartListFilterDescriptor(0);
  v15 = objc_allocWithZone(v34);
  v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v25;
  v16 = &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  v17 = v32;
  *v16 = v33;
  *(v16 + 1) = v17;
  v16[16] = v31;
  sub_230055F74(v6, &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = v29;
  *&v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = v28;
  v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = v27;
  v18 = &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  *v18 = v8;
  *(v18 + 1) = v9;
  *(v18 + 2) = v11;
  *(v18 + 3) = v10;
  *(v18 + 4) = v13;
  *(v18 + 5) = v12;
  v19 = v12;
  v18[48] = a1;
  v20 = &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  v21 = v26;
  *v20 = v14;
  v20[1] = v21;

  sub_230145634(v8, v9, v11, v10, v13, v19, a1);
  sub_230145660(v14);
  v35.receiver = v15;
  v35.super_class = v34;
  v22 = objc_msgSendSuper2(&v35, sel_init);
  sub_230061918(v30, &unk_27DB15AE0);
  return v22;
}

id sub_230145BA0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v36 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation);
  v7 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  v41 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8);
  v42 = v7;
  v34 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16);
  v39 = &v27 - v5;
  sub_230055F74(a2, &v27 - v5, &unk_27DB15AE0);
  v37 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
  v8 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities);
  v35 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
  v10 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v9 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 8);
  v11 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 24);
  v30 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 16);
  v31 = v9;
  v12 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 40);
  v28 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 32);
  v13 = v28;
  v29 = v11;
  v14 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  v32 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists + 8);
  v33 = v14;
  v15 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
  v38 = type metadata accessor for REMCustomSmartListFilterDescriptor(0);
  v16 = objc_allocWithZone(v38);
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v36;
  v17 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  v18 = v41;
  *v17 = v42;
  *(v17 + 1) = v18;
  v17[16] = v34;
  sub_230055F74(v6, &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = v37;
  *&v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = v8;
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = v35;
  v19 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  v20 = v30;
  v21 = v31;
  *v19 = v10;
  *(v19 + 1) = v21;
  *(v19 + 2) = v20;
  *(v19 + 3) = v11;
  *(v19 + 4) = v13;
  *(v19 + 5) = v12;
  v19[48] = v15;
  v22 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  v24 = v32;
  v23 = v33;
  *v22 = v33;
  v22[1] = v24;
  sub_230145624(v42);

  sub_230145634(v10, v21, v20, v29, v28, v12, v15);
  sub_230145660(v23);
  v43.receiver = v16;
  v43.super_class = v38;
  v25 = objc_msgSendSuper2(&v43, sel_init);
  sub_230061918(v40, &unk_27DB15AE0);
  sub_230061918(v39, &unk_27DB15AE0);
  return v25;
}

id sub_230145E3C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v40 = *a2;
  v37 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation);
  v7 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8);
  v41 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  v8 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16);
  v38 = &v27 - v5;
  sub_230055F74(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, &v27 - v5, &unk_27DB15AE0);
  v9 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities);
  v36 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
  v10 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v11 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 8);
  v12 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 16);
  v31 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 24);
  v32 = v10;
  v14 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 40);
  v29 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 32);
  v13 = v29;
  v30 = v11;
  v28 = v14;
  v15 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists + 8);
  v34 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  v35 = v12;
  v33 = v15;
  LOBYTE(a2) = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
  v39 = type metadata accessor for REMCustomSmartListFilterDescriptor(0);
  v16 = objc_allocWithZone(v39);
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v37;
  v17 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  *v17 = v41;
  *(v17 + 1) = v7;
  v17[16] = v8;
  sub_230055F74(v6, &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = v40;
  *&v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = v9;
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = v36;
  v18 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  v19 = v32;
  *v18 = v32;
  *(v18 + 1) = v11;
  v20 = v35;
  v21 = v31;
  *(v18 + 2) = v35;
  *(v18 + 3) = v21;
  *(v18 + 4) = v13;
  *(v18 + 5) = v14;
  v18[48] = a2;
  v22 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  v24 = v33;
  v23 = v34;
  *v22 = v34;
  v22[1] = v24;
  sub_230145624(v41);

  sub_230145634(v19, v30, v20, v21, v29, v28, a2);
  sub_230145660(v23);
  v42.receiver = v16;
  v42.super_class = v39;
  v25 = objc_msgSendSuper2(&v42, sel_init);
  sub_230061918(v38, &unk_27DB15AE0);
  return v25;
}

id sub_2301460C8(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24[-v4];
  v29 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation);
  v6 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  v34 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8);
  v35 = v6;
  v33 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16);
  v30 = &v24[-v4];
  sub_230055F74(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, &v24[-v4], &unk_27DB15AE0);
  v25 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
  v28 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
  v7 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v8 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 8);
  v9 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 16);
  v26 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 24);
  v27 = v7;
  v10 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 32);
  v11 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 40);
  v12 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  v13 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists + 8);
  v14 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
  v31 = type metadata accessor for REMCustomSmartListFilterDescriptor(0);
  v15 = objc_allocWithZone(v31);
  v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v29;
  v16 = &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  v17 = v34;
  *v16 = v35;
  *(v16 + 1) = v17;
  v16[16] = v33;
  sub_230055F74(v5, &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = v25;
  *&v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = v32;
  v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = v28;
  v18 = &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  v20 = v26;
  v19 = v27;
  *v18 = v27;
  *(v18 + 1) = v8;
  *(v18 + 2) = v9;
  *(v18 + 3) = v20;
  *(v18 + 4) = v10;
  *(v18 + 5) = v11;
  v18[48] = v14;
  v21 = &v15[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  *v21 = v12;
  v21[1] = v13;
  sub_230145624(v35);
  sub_230145634(v19, v8, v9, v20, v10, v11, v14);
  sub_230145660(v12);
  v36.receiver = v15;
  v36.super_class = v31;
  v22 = objc_msgSendSuper2(&v36, sel_init);
  sub_230061918(v30, &unk_27DB15AE0);
  return v22;
}

id sub_230146338(uint64_t a1, int a2)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v34 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation);
  v7 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8);
  v28 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  v6 = v28;
  v38 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16);
  v35 = &v26 - v4;
  sub_230055F74(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, &v26 - v4, &unk_27DB15AE0);
  v29 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
  v8 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities);
  v10 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location);
  v9 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 8);
  v11 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 16);
  v30 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 24);
  v31 = v11;
  v12 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 32);
  v26 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 40);
  v13 = v26;
  v27 = v12;
  v14 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  v32 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists + 8);
  v33 = v14;
  v15 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48);
  v36 = type metadata accessor for REMCustomSmartListFilterDescriptor(0);
  v16 = objc_allocWithZone(v36);
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v34;
  v17 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  *v17 = v6;
  *(v17 + 1) = v7;
  v17[16] = v38;
  sub_230055F74(v5, &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = v29;
  *&v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = v8;
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = v37;
  v18 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  *v18 = v10;
  *(v18 + 1) = v9;
  v19 = v30;
  v20 = v31;
  *(v18 + 2) = v31;
  *(v18 + 3) = v19;
  *(v18 + 4) = v12;
  *(v18 + 5) = v13;
  v18[48] = v15;
  v21 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  v23 = v32;
  v22 = v33;
  *v21 = v33;
  v21[1] = v23;
  sub_230145624(v28);

  sub_230145634(v10, v9, v20, v19, v27, v26, v15);
  sub_230145660(v22);
  v39.receiver = v16;
  v39.super_class = v36;
  v24 = objc_msgSendSuper2(&v39, sel_init);
  sub_230061918(v35, &unk_27DB15AE0);
  return v24;
}

id sub_2301465B0(uint64_t a1, __int128 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = *(a2 + 4);
  v31 = *(a2 + 5);
  v32 = v7;
  LODWORD(v7) = *(a2 + 48);
  v29 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation);
  v30 = v7;
  v8 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags);
  v9 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 8);
  v10 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags + 16);
  sub_230055F74(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, &v26 - v5, &unk_27DB15AE0);
  v28 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time);
  v11 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities);
  v12 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged);
  v13 = a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists;
  v14 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists);
  v15 = *(v13 + 8);
  v16 = type metadata accessor for REMCustomSmartListFilterDescriptor(0);
  v17 = *a2;
  v26 = a2[1];
  v27 = v17;
  v18 = objc_allocWithZone(v16);
  v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v29;
  v19 = &v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  *v19 = v8;
  *(v19 + 1) = v9;
  v19[16] = v10;
  sub_230055F74(v6, &v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = v28;
  *&v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = v11;
  v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = v12;
  v20 = &v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  v21 = v26;
  *v20 = v27;
  *(v20 + 1) = v21;
  v22 = v31;
  *(v20 + 4) = v32;
  *(v20 + 5) = v22;
  v20[48] = v30;
  v23 = &v18[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  *v23 = v14;
  v23[1] = v15;
  sub_230145624(v8);

  sub_230145660(v14);
  v33.receiver = v18;
  v33.super_class = v16;
  v24 = objc_msgSendSuper2(&v33, sel_init);
  sub_230061918(v6, &unk_27DB15AE0);
  return v24;
}

unint64_t sub_2301467EC(unint64_t result)
{
  if (result != 2)
  {
    return sub_230122CDC(result);
  }

  return result;
}

uint64_t sub_230146810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_230145584(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_230146824(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2301468A0()
{
  result = qword_27DB15B20;
  if (!qword_27DB15B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B20);
  }

  return result;
}

unint64_t sub_2301468F8()
{
  result = qword_27DB15B28;
  if (!qword_27DB15B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B28);
  }

  return result;
}

unint64_t sub_230146950()
{
  result = qword_27DB15B30;
  if (!qword_27DB15B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B30);
  }

  return result;
}

unint64_t sub_2301469A8()
{
  result = qword_27DB15B38;
  if (!qword_27DB15B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B38);
  }

  return result;
}

unint64_t sub_230146A00()
{
  result = qword_27DB15B40;
  if (!qword_27DB15B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B40);
  }

  return result;
}

unint64_t sub_230146AA0()
{
  result = qword_27DB15B50;
  if (!qword_27DB15B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B50);
  }

  return result;
}

unint64_t sub_230146AF8()
{
  result = qword_27DB15B58;
  if (!qword_27DB15B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B58);
  }

  return result;
}

unint64_t sub_230146B50()
{
  result = qword_27DB15B60;
  if (!qword_27DB15B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B60);
  }

  return result;
}

unint64_t sub_230146BA8()
{
  result = qword_27DB15B68;
  if (!qword_27DB15B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B68);
  }

  return result;
}

unint64_t sub_230146C00()
{
  result = qword_27DB15B70;
  if (!qword_27DB15B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B70);
  }

  return result;
}

unint64_t sub_230146C54()
{
  result = qword_280C97278;
  if (!qword_280C97278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97278);
  }

  return result;
}

unint64_t sub_230146CAC()
{
  result = qword_27DB15B80;
  if (!qword_27DB15B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B80);
  }

  return result;
}

unint64_t sub_230146D04()
{
  result = qword_27DB15B88;
  if (!qword_27DB15B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15B88);
  }

  return result;
}

void sub_230146DC8()
{
  sub_23014B858(319, &qword_280C99F40, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for REMCustomSmartListFilterDescriptor.FilterDate(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = sub_23030EB58();
      v12 = *(*(v11 - 8) + 16);
      v12(a1, a2, v11);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v12((a1 + *(v13 + 36)), (a2 + *(v13 + 36)), v11);
LABEL_14:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_13:
      v14 = sub_23030EB58();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      goto LABEL_14;
    }
  }

  v9 = *(v5 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for REMCustomSmartListFilterDescriptor.FilterDate(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (result != 4 && result != 5)
    {
      return result;
    }
  }

  else
  {
    if (result == 1)
    {
      v7 = sub_23030EB58();
      v8 = *(*(v7 - 8) + 8);
      (v8)((v7 - 8), a1, v7);
      v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);
      v5 = v7;
      v4 = v8;
      goto LABEL_10;
    }

    if (result != 3)
    {
      return result;
    }
  }

  v3 = sub_23030EB58();
  v4 = *(*(v3 - 8) + 8);
  v5 = v3;
  v6 = a1;
LABEL_10:

  return v4(v6, v5);
}

char *initializeWithCopy for REMCustomSmartListFilterDescriptor.FilterDate(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = sub_23030EB58();
      v10 = *(*(v9 - 8) + 16);
      v10(a1, a2, v9);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v10(&a1[*(v11 + 36)], &a2[*(v11 + 36)], v9);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_11:
      v12 = sub_23030EB58();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_12;
    }
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

char *assignWithCopy for REMCustomSmartListFilterDescriptor.FilterDate(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_2301454DC(a1, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = sub_23030EB58();
      v10 = *(*(v9 - 8) + 16);
      v10(a1, a2, v9);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v10(&a1[*(v11 + 36)], &a2[*(v11 + 36)], v9);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_12:
      v12 = sub_23030EB58();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_13;
    }
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

char *initializeWithTake for REMCustomSmartListFilterDescriptor.FilterDate(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = sub_23030EB58();
      v10 = *(*(v9 - 8) + 32);
      v10(a1, a2, v9);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v10(&a1[*(v11 + 36)], &a2[*(v11 + 36)], v9);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_11:
      v12 = sub_23030EB58();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      goto LABEL_12;
    }
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

char *assignWithTake for REMCustomSmartListFilterDescriptor.FilterDate(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_2301454DC(a1, type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = sub_23030EB58();
      v10 = *(*(v9 - 8) + 32);
      v10(a1, a2, v9);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v10(&a1[*(v11 + 36)], &a2[*(v11 + 36)], v9);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_12:
      v12 = sub_23030EB58();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      goto LABEL_13;
    }
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

void sub_230147B04()
{
  sub_230147BE0();
  if (v0 <= 0x3F)
  {
    sub_23030EB58();
    if (v1 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
    }
  }
}

void sub_230147BE0()
{
  if (!qword_280C9C2F8)
  {
    sub_23030EB58();
    sub_23014553C(&qword_280C9C418, MEMORY[0x277CC9578]);
    v0 = sub_23030F808();
    if (!v1)
    {
      atomic_store(v0, &qword_280C9C2F8);
    }
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMCustomSmartListFilterDescriptor.FilterTime.DateType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_23030EB58();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for REMCustomSmartListFilterDescriptor.FilterTime.DateType(uint64_t a1)
{
  v2 = sub_23030EB58();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *initializeWithCopy for REMCustomSmartListFilterDescriptor.FilterTime.DateType(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *assignWithCopy for REMCustomSmartListFilterDescriptor.FilterTime.DateType(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_23030EB58();
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
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *initializeWithTake for REMCustomSmartListFilterDescriptor.FilterTime.DateType(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *assignWithTake for REMCustomSmartListFilterDescriptor.FilterTime.DateType(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_23030EB58();
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
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_230148530(uint64_t a1)
{
  v2 = sub_23030EB58();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_230148598(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EB58();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_230148608()
{
  result = sub_23030EB58();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for REMCustomSmartListFilterDescriptor.FilterLocation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_230145648(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for REMCustomSmartListFilterDescriptor.FilterLocation(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_230145648(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_230145584(v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for REMCustomSmartListFilterDescriptor.FilterLocation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  v11 = *(a1 + 48);
  *(a1 + 48) = v3;
  sub_230145584(v4, v6, v5, v7, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMCustomSmartListFilterDescriptor.FilterLocation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REMCustomSmartListFilterDescriptor.FilterLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2301488B4(uint64_t a1)
{
  if (*(a1 + 48) <= 1u)
  {
    return *(a1 + 48);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2301488CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMCustomSmartListFilterDescriptor.PostFetchPredicate(uint64_t *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v13 = *a2;
        v14 = *(a2 + 1);
        v15 = *(a2 + 2);
        v16 = *(a2 + 3);
        v17 = *(a2 + 4);
        v18 = *(a2 + 5);
        v19 = a2[48];
        sub_230145648(v13, v14, v15, v16, v17, v18, v19);
        *a1 = v13;
        a1[1] = v14;
        a1[2] = v15;
        a1[3] = v16;
        a1[4] = v17;
        a1[5] = v18;
        *(a1 + 48) = v19;
        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v8 = a2[8];
        *a1 = *a2;
        *(a1 + 8) = v8;

LABEL_33:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v20 = *a2;
      v21 = *(a2 + 1);
      *a1 = v20;
      a1[1] = v21;

      goto LABEL_33;
    }

    v11 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 3)
    {
      if (v12 == 4 || v12 == 5)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v12 == 1)
      {
        v24 = sub_23030EB58();
        v25 = *(*(v24 - 8) + 16);
        v25(a1, a2, v24);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
        v25((a1 + *(v26 + 36)), &a2[*(v26 + 36)], v24);
LABEL_32:
        swift_storeEnumTagMultiPayload();
        goto LABEL_33;
      }

      if (v12 == 3)
      {
LABEL_31:
        v27 = sub_23030EB58();
        (*(*(v27 - 8) + 16))(a1, a2, v27);
        goto LABEL_32;
      }
    }

    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 10)
    {
      goto LABEL_24;
    }

LABEL_19:
    *a1 = *a2;

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v10 = sub_23030EBB8();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    goto LABEL_33;
  }

LABEL_24:
  v22 = *(v6 + 64);

  return memcpy(a1, a2, v22);
}

uint64_t destroy for REMCustomSmartListFilterDescriptor.PostFetchPredicate(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 4)
  {
    if (result > 8)
    {
      if (result != 9 && result != 10)
      {
        return result;
      }

      goto LABEL_17;
    }

    if (result != 5)
    {
      if (result != 7)
      {
        return result;
      }

      v3 = sub_23030EBB8();
      goto LABEL_27;
    }

LABEL_17:
  }

  if (result > 2)
  {
    if (result != 3)
    {
      type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
      result = swift_getEnumCaseMultiPayload();
      if (result > 3)
      {
        if (result != 4 && result != 5)
        {
          return result;
        }
      }

      else
      {
        if (result == 1)
        {
          v14 = sub_23030EB58();
          v15 = *(*(v14 - 8) + 8);
          (v15)((v14 - 8), a1, v14);
          v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);
          v12 = v14;
          v11 = v15;
          goto LABEL_28;
        }

        if (result != 3)
        {
          return result;
        }
      }

      v3 = sub_23030EB58();
LABEL_27:
      v11 = *(*(v3 - 8) + 8);
      v12 = v3;
      v13 = a1;
LABEL_28:

      return v11(v13, v12);
    }

    goto LABEL_17;
  }

  if (result != 1)
  {
    if (result != 2)
    {
      return result;
    }

    goto LABEL_17;
  }

  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);

  return sub_230145584(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t *initializeWithCopy for REMCustomSmartListFilterDescriptor.PostFetchPredicate(uint64_t *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *a2;
        v12 = *(a2 + 1);
        v13 = *(a2 + 2);
        v14 = *(a2 + 3);
        v15 = *(a2 + 4);
        v16 = *(a2 + 5);
        v17 = a2[48];
        sub_230145648(v11, v12, v13, v14, v15, v16, v17);
        *a1 = v11;
        a1[1] = v12;
        a1[2] = v13;
        a1[3] = v14;
        a1[4] = v15;
        a1[5] = v16;
        *(a1 + 48) = v17;
        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v7 = a2[8];
        *a1 = *a2;
        *(a1 + 8) = v7;

LABEL_31:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v18 = *a2;
      v19 = *(a2 + 1);
      *a1 = v18;
      a1[1] = v19;

      goto LABEL_31;
    }

    v9 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 3)
    {
      if (v10 == 4 || v10 == 5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v10 == 1)
      {
        v22 = sub_23030EB58();
        v23 = *(*(v22 - 8) + 16);
        v23(a1, a2, v22);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
        v23((a1 + *(v24 + 36)), &a2[*(v24 + 36)], v22);
LABEL_30:
        swift_storeEnumTagMultiPayload();
        goto LABEL_31;
      }

      if (v10 == 3)
      {
LABEL_29:
        v25 = sub_23030EB58();
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        goto LABEL_30;
      }
    }

    memcpy(a1, a2, *(*(v9 - 8) + 64));
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 10)
    {
      goto LABEL_22;
    }

LABEL_17:
    *a1 = *a2;

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v8 = sub_23030EBB8();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    goto LABEL_31;
  }

LABEL_22:
  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

uint64_t *assignWithCopy for REMCustomSmartListFilterDescriptor.PostFetchPredicate(uint64_t *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_2301454DC(a1, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *a2;
        v12 = *(a2 + 1);
        v13 = *(a2 + 2);
        v14 = *(a2 + 3);
        v15 = *(a2 + 4);
        v16 = *(a2 + 5);
        v17 = a2[48];
        sub_230145648(v11, v12, v13, v14, v15, v16, v17);
        *a1 = v11;
        a1[1] = v12;
        a1[2] = v13;
        a1[3] = v14;
        a1[4] = v15;
        a1[5] = v16;
        *(a1 + 48) = v17;
        goto LABEL_32;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v7 = a2[8];
        *a1 = *a2;
        *(a1 + 8) = v7;

LABEL_32:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;
      a1[1] = *(a2 + 1);

      goto LABEL_32;
    }

    v9 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 3)
    {
      if (v10 == 4 || v10 == 5)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v10 == 1)
      {
        v20 = sub_23030EB58();
        v21 = *(*(v20 - 8) + 16);
        v21(a1, a2, v20);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
        v21((a1 + *(v22 + 36)), &a2[*(v22 + 36)], v20);
LABEL_31:
        swift_storeEnumTagMultiPayload();
        goto LABEL_32;
      }

      if (v10 == 3)
      {
LABEL_30:
        v23 = sub_23030EB58();
        (*(*(v23 - 8) + 16))(a1, a2, v23);
        goto LABEL_31;
      }
    }

    memcpy(a1, a2, *(*(v9 - 8) + 64));
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 10)
    {
      goto LABEL_23;
    }

LABEL_18:
    *a1 = *a2;

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v8 = sub_23030EBB8();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    goto LABEL_32;
  }

LABEL_23:
  v18 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v18);
}

char *initializeWithTake for REMCustomSmartListFilterDescriptor.PostFetchPredicate(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v9 = sub_23030EBB8();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 3)
    {
      if (v8 == 4 || v8 == 5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 == 1)
      {
        v12 = sub_23030EB58();
        v13 = *(*(v12 - 8) + 32);
        v13(a1, a2, v12);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
        v13(&a1[*(v14 + 36)], &a2[*(v14 + 36)], v12);
LABEL_16:
        swift_storeEnumTagMultiPayload();
        goto LABEL_17;
      }

      if (v8 == 3)
      {
LABEL_15:
        v15 = sub_23030EB58();
        (*(*(v15 - 8) + 32))(a1, a2, v15);
        goto LABEL_16;
      }
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

char *assignWithTake for REMCustomSmartListFilterDescriptor.PostFetchPredicate(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_2301454DC(a1, type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v9 = sub_23030EBB8();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 3)
    {
      if (v8 == 4 || v8 == 5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v8 == 1)
      {
        v12 = sub_23030EB58();
        v13 = *(*(v12 - 8) + 32);
        v13(a1, a2, v12);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
        v13(&a1[*(v14 + 36)], &a2[*(v14 + 36)], v12);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      if (v8 == 3)
      {
LABEL_16:
        v15 = sub_23030EB58();
        (*(*(v15 - 8) + 32))(a1, a2, v15);
        goto LABEL_17;
      }
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_230149DA4()
{
  result = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(319);
  if (v1 <= 0x3F)
  {
    result = sub_23030EBB8();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMPCASolver.ComponentOption(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REMPCASolver.ComponentOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_23030EBB8();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(a2, 1, v7))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v12 = a3[5];
    if (v9((a2 + v12), 1, v7))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
      memcpy(a1 + v12, a2 + v12, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1 + v12, a2 + v12, v7);
      (*(v8 + 56))(a1 + v12, 0, 1, v7);
    }

    v14 = a3[6];
    if (v9((a2 + v14), 1, v7))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
      memcpy(a1 + v14, a2 + v14, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1 + v14, a2 + v14, v7);
      (*(v8 + 56))(a1 + v14, 0, 1, v7);
    }

    v16 = a3[7];
    v17 = sub_23030EB58();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(a2 + v16, 1, v17))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(a1 + v16, a2 + v16, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 16))(a1 + v16, a2 + v16, v17);
      (*(v18 + 56))(a1 + v16, 0, 1, v17);
    }

    v20 = a3[9];
    *(a1 + a3[8]) = *(a2 + a3[8]);
    v21 = a1 + v20;
    v22 = a2 + v20;
    *v21 = *v22;
    v21[8] = v22[8];
    v23 = a3[11];
    *(a1 + a3[10]) = *(a2 + a3[10]);
    v24 = a1 + v23;
    v25 = a2 + v23;
    *v24 = *v25;
    v24[8] = v25[8];
    v26 = a3[13];
    *(a1 + a3[12]) = *(a2 + a3[12]);
    *(a1 + v26) = *(a2 + v26);
  }

  return a1;
}

uint64_t destroy for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(uint64_t a1, int *a2)
{
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v7 = a2[5];
  if (!v6(a1 + v7, 1, v4))
  {
    (*(v5 + 8))(a1 + v7, v4);
  }

  v8 = a2[6];
  if (!v6(a1 + v8, 1, v4))
  {
    (*(v5 + 8))(a1 + v8, v4);
  }

  v9 = a2[7];
  v10 = sub_23030EB58();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a1 + v9, 1, v10))
  {
    (*(v11 + 8))(a1 + v9, v10);
  }
}

char *initializeWithCopy for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(char *a1, char *a2, int *a3)
{
  v6 = sub_23030EBB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = a3[5];
  if (v8(&a2[v10], 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  v12 = a3[6];
  if (v8(&a2[v12], 1, v6))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v12], &a2[v12], *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v12], &a2[v12], v6);
    (*(v7 + 56))(&a1[v12], 0, 1, v6);
  }

  v14 = a3[7];
  v15 = sub_23030EB58();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(&a2[v14], 1, v15))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v14], &a2[v14], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(&a1[v14], &a2[v14], v15);
    (*(v16 + 56))(&a1[v14], 0, 1, v15);
  }

  v18 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  v19 = &a1[v18];
  v20 = &a2[v18];
  *v19 = *v20;
  v19[8] = v20[8];
  v21 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  v22 = &a1[v21];
  v23 = &a2[v21];
  *v22 = *v23;
  v22[8] = v23[8];
  v24 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  a1[v24] = a2[v24];

  return a1;
}

char *assignWithCopy for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(char *a1, char *a2, int *a3)
{
  v6 = sub_23030EBB8();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = a3[5];
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (v13)
  {
    if (!v14)
    {
      (*(v7 + 16))(&a1[v12], &a2[v12], v6);
      (*(v7 + 56))(&a1[v12], 0, 1, v6);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v14)
  {
    (*(v7 + 8))(&a1[v12], v6);
LABEL_12:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    goto LABEL_13;
  }

  (*(v7 + 24))(&a1[v12], &a2[v12], v6);
LABEL_13:
  v16 = a3[6];
  v17 = v8(&a1[v16], 1, v6);
  v18 = v8(&a2[v16], 1, v6);
  if (v17)
  {
    if (!v18)
    {
      (*(v7 + 16))(&a1[v16], &a2[v16], v6);
      (*(v7 + 56))(&a1[v16], 0, 1, v6);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v18)
  {
    (*(v7 + 8))(&a1[v16], v6);
LABEL_18:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v16], &a2[v16], *(*(v19 - 8) + 64));
    goto LABEL_19;
  }

  (*(v7 + 24))(&a1[v16], &a2[v16], v6);
LABEL_19:
  v20 = a3[7];
  v21 = sub_23030EB58();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(&a1[v20], 1, v21);
  v25 = v23(&a2[v20], 1, v21);
  if (!v24)
  {
    if (!v25)
    {
      (*(v22 + 24))(&a1[v20], &a2[v20], v21);
      goto LABEL_25;
    }

    (*(v22 + 8))(&a1[v20], v21);
    goto LABEL_24;
  }

  if (v25)
  {
LABEL_24:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v20], &a2[v20], *(*(v26 - 8) + 64));
    goto LABEL_25;
  }

  (*(v22 + 16))(&a1[v20], &a2[v20], v21);
  (*(v22 + 56))(&a1[v20], 0, 1, v21);
LABEL_25:
  a1[a3[8]] = a2[a3[8]];
  v27 = a3[9];
  v28 = &a1[v27];
  v29 = &a2[v27];
  v30 = *v29;
  v28[8] = v29[8];
  *v28 = v30;
  *&a1[a3[10]] = *&a2[a3[10]];

  v31 = a3[11];
  v32 = &a1[v31];
  v33 = &a2[v31];
  v34 = *v33;
  v32[8] = v33[8];
  *v32 = v34;
  a1[a3[12]] = a2[a3[12]];
  a1[a3[13]] = a2[a3[13]];
  return a1;
}

char *initializeWithTake for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(char *a1, char *a2, int *a3)
{
  v6 = sub_23030EBB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = a3[5];
  if (v8(&a2[v10], 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  v12 = a3[6];
  if (v8(&a2[v12], 1, v6))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v12], &a2[v12], *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v12], &a2[v12], v6);
    (*(v7 + 56))(&a1[v12], 0, 1, v6);
  }

  v14 = a3[7];
  v15 = sub_23030EB58();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(&a2[v14], 1, v15))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v14], &a2[v14], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v16 + 32))(&a1[v14], &a2[v14], v15);
    (*(v16 + 56))(&a1[v14], 0, 1, v15);
  }

  v18 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  v19 = &a1[v18];
  v20 = &a2[v18];
  *v19 = *v20;
  v19[8] = v20[8];
  v21 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  v22 = &a1[v21];
  v23 = &a2[v21];
  *v22 = *v23;
  v22[8] = v23[8];
  v24 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  a1[v24] = a2[v24];
  return a1;
}

char *assignWithTake for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder(char *a1, char *a2, int *a3)
{
  v6 = sub_23030EBB8();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = a3[5];
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (v13)
  {
    if (!v14)
    {
      (*(v7 + 32))(&a1[v12], &a2[v12], v6);
      (*(v7 + 56))(&a1[v12], 0, 1, v6);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v14)
  {
    (*(v7 + 8))(&a1[v12], v6);
LABEL_12:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    goto LABEL_13;
  }

  (*(v7 + 40))(&a1[v12], &a2[v12], v6);
LABEL_13:
  v16 = a3[6];
  v17 = v8(&a1[v16], 1, v6);
  v18 = v8(&a2[v16], 1, v6);
  if (v17)
  {
    if (!v18)
    {
      (*(v7 + 32))(&a1[v16], &a2[v16], v6);
      (*(v7 + 56))(&a1[v16], 0, 1, v6);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v18)
  {
    (*(v7 + 8))(&a1[v16], v6);
LABEL_18:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v16], &a2[v16], *(*(v19 - 8) + 64));
    goto LABEL_19;
  }

  (*(v7 + 40))(&a1[v16], &a2[v16], v6);
LABEL_19:
  v20 = a3[7];
  v21 = sub_23030EB58();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(&a1[v20], 1, v21);
  v25 = v23(&a2[v20], 1, v21);
  if (!v24)
  {
    if (!v25)
    {
      (*(v22 + 40))(&a1[v20], &a2[v20], v21);
      goto LABEL_25;
    }

    (*(v22 + 8))(&a1[v20], v21);
    goto LABEL_24;
  }

  if (v25)
  {
LABEL_24:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v20], &a2[v20], *(*(v26 - 8) + 64));
    goto LABEL_25;
  }

  (*(v22 + 32))(&a1[v20], &a2[v20], v21);
  (*(v22 + 56))(&a1[v20], 0, 1, v21);
LABEL_25:
  v27 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  v28 = &a1[v27];
  v29 = &a2[v27];
  *v28 = *v29;
  v28[8] = v29[8];
  *&a1[a3[10]] = *&a2[a3[10]];

  v30 = a3[11];
  v31 = a3[12];
  v32 = &a1[v30];
  v33 = &a2[v30];
  *v32 = *v33;
  v32[8] = v33[8];
  a1[v31] = a2[v31];
  a1[a3[13]] = a2[a3[13]];
  return a1;
}

void sub_23014B730()
{
  sub_23014B858(319, &qword_280C9B3E8, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_23014B858(319, &qword_280C9B730, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_23014B858(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2303104C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v12 = *(a3 + 20);
    if (v9((a2 + v12), 1, v7))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(a1 + v12, a2 + v12, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1 + v12, a2 + v12, v7);
      (*(v8 + 56))(a1 + v12, 0, 1, v7);
    }
  }

  return a1;
}

uint64_t destroy for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EB58();
  v9 = *(v4 - 8);
  v5 = *(v9 + 48);
  if (!v5(a1, 1, v4))
  {
    (*(v9 + 8))(a1, v4);
  }

  v6 = *(a2 + 20);
  result = (v5)(a1 + v6, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v6, v4);
  }

  return result;
}

char *initializeWithCopy for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(char *a1, char *a2, uint64_t a3)
{
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

  v10 = *(a3 + 20);
  if (v8(&a2[v10], 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  return a1;
}

char *assignWithCopy for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_23030EB58();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
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
      return a1;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
  return a1;
}

char *initializeWithTake for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(char *a1, char *a2, uint64_t a3)
{
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
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  if (v8(&a2[v10], 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for REMCustomSmartListFilterDescriptor.FilterDate.OptionalDateRange(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_23030EB58();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
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
      return a1;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
  return a1;
}

void sub_23014C4A8()
{
  sub_23014B858(319, &qword_280C9B730, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_23014C634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14700);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_230055F74(a3, v25 - v10, &qword_27DB14700);
  v12 = sub_23030FEA8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_230061918(v11, &qword_27DB14700);
  }

  else
  {
    sub_23030FE98();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23030FE48();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23030F968() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_230061918(a3, &qword_27DB14700);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_230061918(a3, &qword_27DB14700);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23014C934(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_2300A9440(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_23014CA14(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2300A8988(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_23014CB18()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C97198);
  v1 = __swift_project_value_buffer(v0, qword_280C97198);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMTrialNamespace.hashValue.getter()
{
  sub_230311358();
  MEMORY[0x2319130E0](0);
  return sub_2303113A8();
}

uint64_t sub_23014CC8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  __swift_allocate_value_buffer(v0, qword_280C983F0);
  v1 = __swift_project_value_buffer(v0, qword_280C983F0);
  v2 = sub_23030E9B8();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static REMTrialClient.debug_assetFixtureURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C99B88 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  v3 = __swift_project_value_buffer(v2, qword_280C983F0);
  swift_beginAccess();
  return sub_230055F74(v3, a1, &unk_27DB17070);
}

uint64_t static REMTrialClient.debug_assetFixtureURL.setter(uint64_t a1)
{
  if (qword_280C99B88 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  v3 = __swift_project_value_buffer(v2, qword_280C983F0);
  swift_beginAccess();
  sub_23014CE9C(a1, v3);
  swift_endAccess();
  return sub_230061918(a1, &unk_27DB17070);
}

uint64_t sub_23014CE9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static REMTrialClient.debug_assetFixtureURL.modify())()
{
  if (qword_280C99B88 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  __swift_project_value_buffer(v0, qword_280C983F0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23014CFB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C99B88 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  v3 = __swift_project_value_buffer(v2, qword_280C983F0);
  swift_beginAccess();
  return sub_230055F74(v3, a1, &unk_27DB17070);
}

uint64_t sub_23014D060(uint64_t a1)
{
  if (qword_280C99B88 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  v3 = __swift_project_value_buffer(v2, qword_280C983F0);
  swift_beginAccess();
  sub_23014CE9C(a1, v3);
  return swift_endAccess();
}

uint64_t REMTrialClient.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 304;
  *(v0 + 16) = [objc_opt_self() clientWithIdentifier_];
  return v0;
}

uint64_t REMTrialClient.init()()
{
  *(v0 + 24) = 304;
  *(v0 + 16) = [objc_opt_self() clientWithIdentifier_];
  return v0;
}

uint64_t sub_23014D1C4()
{
  v1 = *(v0 + 16);
  v2 = sub_23030F8B8();
  LODWORD(v1) = [v1 compatibilityVersionWithNamespaceName_];

  return v1;
}

uint64_t sub_23014D238()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v26 - v3;
  if (qword_280C99B88 != -1)
  {
    v25 = v2;
    swift_once();
    v2 = v25;
  }

  v5 = 0x6C6F725F6C6C756ELL;
  v6 = __swift_project_value_buffer(v2, qword_280C983F0);
  swift_beginAccess();
  sub_230055F74(v6, v4, &unk_27DB17070);
  v7 = sub_23030E9B8();
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_230061918(v4, &unk_27DB17070);
  if (v6 == 1)
  {
    v8 = *(v0 + 16);
    v9 = sub_23030F8B8();
    v10 = [v8 rolloutIdentifiersWithNamespaceName_];

    if (v10)
    {
      v11 = [v10 rampId];
      if (v11)
      {
        v12 = v11;
        v13 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v15 = v14;

        v16 = [v10 rolloutId];
        v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v19 = v18;

        v27 = v17;
        v28 = v19;
        MEMORY[0x231911790](46, 0xE100000000000000);
        MEMORY[0x231911790](v13, v15);
      }

      else
      {
        v20 = [v10 rolloutId];
        v21 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v23 = v22;

        v27 = v21;
        v28 = v23;
        MEMORY[0x231911790](0x6C6C756E2ELL, 0xE500000000000000);
      }

      return v27;
    }
  }

  return v5;
}

void sub_23014D4EC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14700);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  if (*(a1 + 16))
  {
    sub_23014DFE8(v36);
    if (v4)
    {
      return;
    }

    v33 = a2;
    v34 = a3;
    v32 = v10;
    v35 = v3;
    v37 = MEMORY[0x277D84FA0];
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
LABEL_10:
        v17 = (*(a1 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v13)))));
        v18 = v17[1];
        v36[0] = *v17;
        v36[1] = v18;

        sub_23014D87C(&v37, v36);
        v13 &= v13 - 1;

        v15 = v16;
        if (!v13)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);

        __break(1u);
        return;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_10;
      }
    }

    v19 = v37;
    v20 = *(v37 + 16);
    if (v20)
    {
      v21 = sub_23009D850(*(v37 + 16), 0);
      v22 = sub_23009DE30(v36, v21 + 4, v20, v19);

      sub_2300F525C();
      if (v22 == v20)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    v21 = MEMORY[0x277D84F90];
LABEL_18:
    v24 = v34;
    v23 = v35;
    v25 = v33;
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    *(v26 + 24) = v25;
    *(v26 + 32) = v24;
    *(v26 + 40) = v19;

    sub_230048758(v25);
    sub_23014F244(v21, sub_23014FC0C, v26);

    sub_23014EE14(v19);
    LOBYTE(v26) = v27;

    if ((v26 & 1) == 0)
    {
      v28 = sub_23030FEA8();
      v29 = v32;
      (*(*(v28 - 8) + 56))(v32, 1, 1, v28);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v23;

      sub_23014C634(0, 0, v29, &unk_23031D788, v30);
    }

    return;
  }

  if (a2)
  {
    a2(MEMORY[0x277D84FA0]);
  }
}

void sub_23014D87C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4._countAndFlagsBits = *a2;
  v4._object = v2;
  REMGroceryLocaleMapping.localeSetting(for:)(&v21, v4);
  if (v5)
  {
    if (qword_280C97190 != -1)
    {
      swift_once();
    }

    v6 = sub_23030EF48();
    __swift_project_value_buffer(v6, qword_280C97198);

    v7 = v5;
    v8 = sub_23030EF38();
    v9 = sub_230310288();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21.base._countAndFlagsBits = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_23004E30C(v3, v2, &v21.base._countAndFlagsBits);
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v12 = Error.rem_errorDescription.getter(v20);
      v14 = sub_23004E30C(v12, v13, &v21.base._countAndFlagsBits);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_230044000, v8, v9, "Required LocaleId not found for %s with error: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v11, -1, -1);
      MEMORY[0x231914180](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    base = v21.base;
    countAndFlagsBits = v21.meta._countAndFlagsBits;
    object = v21.meta._object;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2303167B0;
    *(inited + 32) = base;
    *(inited + 48) = countAndFlagsBits;
    *(inited + 56) = object;

    v18 = sub_2300B38E4(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_23014CA14(v18);
  }
}

void sub_23014DAFC(char a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (qword_280C97190 != -1)
    {
      swift_once();
    }

    v10 = sub_23030EF48();
    __swift_project_value_buffer(v10, qword_280C97198);

    v11 = a2;
    v12 = sub_23030EF38();
    v13 = sub_230310288();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136446466;
      v16 = MEMORY[0x231911A60](a3, MEMORY[0x277D837D0]);
      v18 = sub_23004E30C(v16, v17, &v31);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v19 = Error.rem_errorDescription.getter(v30);
      v21 = sub_23004E30C(v19, v20, &v31);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_230044000, v12, v13, "Failed to download for grocery with factors: '%{public}s', error: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v15, -1, -1);
      MEMORY[0x231914180](v14, -1, -1);
    }
  }

  else if ((a1 & 1) == 0)
  {
    if (qword_280C97190 != -1)
    {
      swift_once();
    }

    v22 = sub_23030EF48();
    __swift_project_value_buffer(v22, qword_280C97198);

    v23 = sub_23030EF38();
    v24 = sub_230310288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136446210;
      v27 = MEMORY[0x231911A60](a3, MEMORY[0x277D837D0]);
      v29 = sub_23004E30C(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_230044000, v23, v24, "Failed to download for grocery with factors: '%{public}s'", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231914180](v26, -1, -1);
      MEMORY[0x231914180](v25, -1, -1);
    }
  }

  if (a4)
  {
    a4(a6);
  }
}

uint64_t sub_23014DE3C()
{
  sub_23014F148();
  v1 = *(v0 + 8);

  return v1();
}

void sub_23014DFE8(void *a1@<X8>)
{
  v3 = sub_23030E9B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v10 - v8;
  sub_23014F3C0(&v10 - v8);
  if (!v1)
  {
    (*(v4 + 16))(v7, v9, v3);
    REMGroceryLocaleMapping.init(url:)(v7, a1);
    (*(v4 + 8))(v9, v3);
  }
}

void sub_23014E218(char a1, void *a2)
{
  if (a2)
  {
    if (qword_280C97190 != -1)
    {
      swift_once();
    }

    v3 = sub_23030EF48();
    __swift_project_value_buffer(v3, qword_280C97198);
    v4 = a2;
    oslog = sub_23030EF38();
    v5 = sub_230310288();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.rem_errorDescription.getter(v15);
      v10 = sub_23004E30C(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_230044000, oslog, v5, "Failed to download locale_mapping for grocery with error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x231914180](v7, -1, -1);
      MEMORY[0x231914180](v6, -1, -1);

      return;
    }
  }

  else
  {
    if (a1)
    {
      return;
    }

    if (qword_280C97190 != -1)
    {
      swift_once();
    }

    v11 = sub_23030EF48();
    __swift_project_value_buffer(v11, qword_280C97198);
    oslog = sub_23030EF38();
    v12 = sub_230310288();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_230044000, oslog, v12, "Failed to download locale_mapping for grocery", v13, 2u);
      MEMORY[0x231914180](v13, -1, -1);
    }
  }
}

void sub_23014E46C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v78 = a2;
  v73 = a3;
  v71 = sub_23030E878();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v72 = &v64 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v66 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  v14 = MEMORY[0x28223BE20](v13);
  v68 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v64 - v19;
  if (qword_280C99B88 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_280C983F0);
  swift_beginAccess();
  sub_230055F74(v21, v20, &unk_27DB17070);
  v74 = v5;
  v22 = *(v5 + 48);
  v23 = v22(v20, 1, v4);
  sub_230061918(v20, &unk_27DB17070);
  if (v23 == 1)
  {
    v24 = v4;
    sub_23014FCCC();
    v25 = [swift_getObjCClassFromMetadata() daemonUserDefaults];
    v26 = [v25 trialAssetsDirectoryDebugOverride];

    if (v26)
    {
      v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v29 = v28;

      if (qword_280C97190 != -1)
      {
        swift_once();
      }

      v30 = sub_23030EF48();
      __swift_project_value_buffer(v30, qword_280C97198);

      v31 = sub_23030EF38();
      v32 = sub_230310278();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v76 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_23004E30C(v27, v29, &v76);
        _os_log_impl(&dword_230044000, v31, v32, "REMTrialClient.groceryDirectoryURL, overrided assets dir: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x231914180](v34, -1, -1);
        MEMORY[0x231914180](v33, -1, -1);
      }

      v35 = v74;
      (*(v74 + 56))(v68, 1, 1, v24);
      (*(v69 + 104))(v70, *MEMORY[0x277CC91D8], v71);
      v36 = v67;
      sub_23030E998();
      v37 = v72;
      sub_23030E908();
      v38 = *(v35 + 8);
      v38(v36, v24);
      sub_23030E908();
      v38(v37, v24);
    }

    else
    {
      v47 = *(v64 + 16);
      v48 = v75;
      v49 = v78;
      v50 = sub_23030F8B8();
      v51 = sub_23030F8B8();
      v52 = [v47 levelForFactor:v50 withNamespaceName:v51];

      if (v52)
      {
        v53 = [v52 directoryValue];
        if (v53)
        {
          v54 = v53;
          v55 = [v53 path];

          if (v55)
          {
            _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

            v56 = v74;
            (*(v74 + 56))(v68, 1, 1, v24);
            (*(v69 + 104))(v70, *MEMORY[0x277CC91D8], v71);
            v57 = v72;
            sub_23030E998();
            sub_23030E908();

            (*(v56 + 8))(v57, v24);
          }

          else
          {
            v76 = 0;
            v77 = 0xE000000000000000;
            sub_230310848();

            v76 = 0x203A726F74636146;
            v77 = 0xE800000000000000;
            MEMORY[0x231911790](v48, v49);
            MEMORY[0x231911790](0x656D614E206E6920, 0xEE00206563617073);
            MEMORY[0x231911790](0xD000000000000011, 0x800000023033EC30);
            v61 = v76;
            v62 = v77;
            sub_23014FD18();
            swift_allocError();
            *v63 = v61;
            *(v63 + 8) = v62;
            *(v63 + 16) = 2;
            swift_willThrow();
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v76 = 0;
        v77 = 0xE000000000000000;
        sub_230310848();

        v76 = 0x203A726F74636146;
        v77 = 0xE800000000000000;
        MEMORY[0x231911790](v48, v49);
        MEMORY[0x231911790](0x656D614E206E6920, 0xEE00206563617073);
        MEMORY[0x231911790](0xD000000000000011, 0x800000023033EC30);
        v58 = v76;
        v59 = v77;
        sub_23014FD18();
        swift_allocError();
        *v60 = v58;
        *(v60 + 8) = v59;
        *(v60 + 16) = 1;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_230055F74(v21, v18, &unk_27DB17070);
    if (v22(v18, 1, v4) == 1)
    {
      sub_230061918(v18, &unk_27DB17070);
      v39 = objc_opt_self();
      v40 = sub_23030F8B8();
      [v39 internalErrorWithDebugDescription_];

      swift_willThrow();
    }

    else
    {
      v41 = v4;
      v42 = v74;
      v43 = v65;
      (*(v74 + 32))(v65, v18, v41);
      v44 = v66;
      sub_23030E8F8();
      v45 = *(v42 + 8);
      v45(v43, v41);
      v46 = v72;
      sub_23030E8F8();
      sub_23030E8F8();
      v45(v46, v41);
      v45(v44, v41);
    }
  }
}

void sub_23014EE14(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = 0;

  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(v1 + 48) + ((v7 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    v13 = *(v29 + 16);

    v14 = sub_23030F8B8();
    v15 = sub_23030F8B8();
    v16 = [v13 levelForFactor:v14 withNamespaceName:v15];

    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = [v16 directoryValue];

    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = [v17 path];

    if (v18)
    {

      v19 = [objc_opt_self() defaultManager];
      v20 = [v19 fileExistsAtPath_];

      if ((v20 & 1) == 0)
      {
LABEL_20:

        return;
      }
    }

    else
    {
LABEL_15:
      if (qword_280C97190 != -1)
      {
        swift_once();
      }

      v21 = sub_23030EF48();
      __swift_project_value_buffer(v21, qword_280C97198);

      v22 = sub_23030EF38();
      v23 = sub_230310288();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30 = v25;
        *v24 = 136315138;
        v26 = sub_23004E30C(v12, v11, &v30);

        *(v24 + 4) = v26;
        _os_log_impl(&dword_230044000, v22, v23, "REMTrialClient: Failed to find path for the factor, ignore the factor: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v27 = v25;
        v1 = v28;
        MEMORY[0x231914180](v27, -1, -1);
        MEMORY[0x231914180](v24, -1, -1);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_20;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

id sub_23014F148()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  sub_2302A38D0(&unk_2844EB0A0);
  sub_2301500DC(&unk_2844EB0C0);
  v2 = sub_23030FF18();

  v6[0] = 0;
  v3 = [v1 immediateDownloadForNamespaceNames:v2 allowExpensiveNetworking:0 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_23030E808();

  return swift_willThrow();
}

void sub_23014F244(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = sub_23030FCC8();
  v8 = sub_23030F8B8();
  if (qword_280C9AFF8 != -1)
  {
    swift_once();
  }

  v9 = qword_280C9B000;
  v10 = [objc_allocWithZone(MEMORY[0x277D736A0]) initWithAllowsCellular:0 discretionaryBehavior:0];
  if (a2)
  {
    v11[4] = a2;
    v11[5] = a3;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_2302956D0;
    v11[3] = &block_descriptor_6;
    a2 = _Block_copy(v11);
  }

  [v6 downloadLevelsForFactors:v7 withNamespace:v8 queue:v9 options:v10 progress:0 completion:a2];

  _Block_release(a2);
}

void sub_23014F3C0(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_23030E878();
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x28223BE20](v1);
  v55 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23030E9B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v50 - v8;
  MEMORY[0x28223BE20](v7);
  v52 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  v11 = MEMORY[0x28223BE20](v10);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  if (qword_280C99B88 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_280C983F0);
  swift_beginAccess();
  sub_230055F74(v18, v17, &unk_27DB17070);
  v58 = v4;
  v19 = *(v4 + 48);
  v20 = v19(v17, 1, v3);
  sub_230061918(v17, &unk_27DB17070);
  if (v20 == 1)
  {
    v21 = v3;
    sub_23014FCCC();
    v22 = [swift_getObjCClassFromMetadata() daemonUserDefaults];
    v23 = [v22 trialAssetsDirectoryDebugOverride];

    if (v23)
    {
      v24 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v26 = v25;

      if (qword_280C97190 != -1)
      {
        swift_once();
      }

      v27 = sub_23030EF48();
      __swift_project_value_buffer(v27, qword_280C97198);

      v28 = sub_23030EF38();
      v29 = sub_230310278();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v60 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_23004E30C(v24, v26, &v60);
        _os_log_impl(&dword_230044000, v28, v29, "REMTrialClient.groceryLocaleMappingFileURL, overrided assets dir: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x231914180](v31, -1, -1);
        MEMORY[0x231914180](v30, -1, -1);
      }

      v32 = v58;
      (*(v58 + 56))(v53, 1, 1, v21);
      (*(v56 + 104))(v55, *MEMORY[0x277CC91D8], v57);
      v33 = v54;
      sub_23030E998();
      sub_23030E908();
      (*(v32 + 8))(v33, v21);
    }

    else
    {
      v41 = *(v50 + 16);
      v42 = sub_23030F8B8();
      v43 = sub_23030F8B8();
      v44 = [v41 levelForFactor:v42 withNamespaceName:v43];

      if (v44)
      {
        v45 = [v44 fileValue];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 path];

          if (v47)
          {
            _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

            sub_23030E8B8();
          }

          else
          {
            sub_23014FD18();
            swift_allocError();
            *v49 = 0xD000000000000035;
            *(v49 + 8) = 0x8000000230341E50;
            *(v49 + 16) = 2;
            swift_willThrow();
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        sub_23014FD18();
        swift_allocError();
        *v48 = 0xD000000000000035;
        *(v48 + 8) = 0x8000000230341E50;
        *(v48 + 16) = 1;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_230055F74(v18, v15, &unk_27DB17070);
    v34 = v3;
    if (v19(v15, 1, v3) == 1)
    {
      sub_230061918(v15, &unk_27DB17070);
      v35 = objc_opt_self();
      v36 = sub_23030F8B8();
      [v35 internalErrorWithDebugDescription_];

      swift_willThrow();
    }

    else
    {
      v37 = v58;
      v38 = v51;
      (*(v58 + 32))(v51, v15, v34);
      v39 = v52;
      sub_23030E8F8();
      v40 = *(v37 + 8);
      v40(v38, v34);
      sub_23030E8F8();
      v40(v39, v34);
    }
  }
}

uint64_t REMTrialClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23014FC18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23009646C;

  return sub_23014DE1C(a1, v4, v5, v6);
}

unint64_t sub_23014FCCC()
{
  result = qword_280C98800;
  if (!qword_280C98800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C98800);
  }

  return result;
}

unint64_t sub_23014FD18()
{
  result = qword_27DB15BF0;
  if (!qword_27DB15BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15BF0);
  }

  return result;
}

unint64_t sub_23014FD70()
{
  result = qword_27DB15BF8;
  if (!qword_27DB15BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15BF8);
  }

  return result;
}

unint64_t sub_23014FDC8()
{
  result = qword_27DB15C00;
  if (!qword_27DB15C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15C00);
  }

  return result;
}

uint64_t sub_23014FFB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_23014FFE0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_23014FFB8(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for REMTrialClientError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_23014FFB8(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_230052D78(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for REMTrialClientError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_230052D78(v4, v5, v6);
  return a1;
}

uint64_t sub_230150130(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2300E7CA0;

  return sub_2300E7714(a1, v4);
}

uint64_t sub_2301501E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23009646C;

  return sub_2300E7714(a1, v4);
}

uint64_t *sub_2301502A8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_230150344(uint64_t a1)
{
  v2 = v1;
  v72 = sub_23030E4A8();
  v66 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = v65 - v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_2303106D8();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v88 = MEMORY[0x277D84F90];
  sub_23009EC34(0, v7 & ~(v7 >> 63), 0);
  v8 = v88;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_230310698();
    sub_23004CBA4(0, &qword_27DB15C40);
    sub_2301616A8();
    sub_23030FF88();
    a1 = v83;
    v9 = v84;
    v10 = v85;
    v11 = v86;
    v12 = v87;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v38 = -1 << *(a1 + 32);
  v9 = a1 + 56;
  v39 = ~v38;
  v40 = -v38;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v12 = v41 & *(a1 + 56);

  v10 = v39;
  v11 = 0;
  if (v7 < 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v65[2] = v2;
  v65[1] = v10;
  if (v7)
  {
    v13 = 0;
    v67 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    v14 = (v10 + 64) >> 6;
    v68 = (v66 + 8);
    v69 = v7;
    v74 = v9;
    v75 = a1;
    v73 = v14;
    while (1)
    {
      if (a1 < 0)
      {
        v18 = sub_230310718();
        if (!v18)
        {
          goto LABEL_44;
        }

        v79 = v18;
        sub_23004CBA4(0, &qword_27DB15C40);
        swift_dynamicCast();
        v17 = v81;
        if (!v81)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (!v12)
        {
          while (1)
          {
            v15 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v15 >= v14)
            {
              goto LABEL_44;
            }

            v12 = *(v9 + 8 * v15);
            ++v11;
            if (v12)
            {
              v11 = v15;
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_14:
        v16 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v17 = *(*(a1 + 48) + ((v11 << 9) | (8 * v16)));
        if (!v17)
        {
          goto LABEL_44;
        }
      }

      v77 = v17;
      v19 = [v17 name];
      v78 = v13;
      v20 = v19;
      v21 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v23 = v22;

      v24 = v70;
      sub_23030EC88();
      v25 = sub_23030ED38();
      (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
      v81 = v21;
      v82 = v23;
      sub_2300A85F0();
      v26 = sub_2303105C8();
      v28 = v27;

      v79 = v26;
      v80 = v28;
      v29 = v8;
      v30 = v71;
      sub_23030E478();
      v31 = sub_230310558();
      v76 = v32;
      v33 = v30;
      v8 = v29;
      (*v68)(v33, v72);

      sub_230061918(v24, &qword_27DB14980);

      v88 = v29;
      v35 = *(v29 + 16);
      v34 = *(v29 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_23009EC34((v34 > 1), v35 + 1, 1);
        v8 = v88;
      }

      v13 = v78 + 1;
      *(v8 + 16) = v35 + 1;
      v36 = v8 + 16 * v35;
      a1 = v75;
      v37 = v76;
      *(v36 + 32) = v31;
      *(v36 + 40) = v37;
      v14 = v73;
      v9 = v74;
      if (v13 == v69)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_27:
  v67 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  v14 = (v10 + 64) >> 6;
LABEL_28:
  v75 = a1;
  v76 = (v66 + 8);
  v73 = v14;
  v74 = v9;
  v78 = v8;
  if (a1 < 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v42 = v11;
    v43 = v12;
    v44 = v11;
    if (!v12)
    {
      break;
    }

LABEL_33:
    v45 = ((v43 - 1) & v43);
    v46 = *(*(a1 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
    if (!v46)
    {
LABEL_41:
      sub_230060014();
      return;
    }

    while (1)
    {
      v77 = v45;
      v48 = [v46 name];
      v49 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v51 = v50;

      v52 = v70;
      sub_23030EC88();
      v53 = sub_23030ED38();
      (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
      v81 = v49;
      v82 = v51;
      sub_2300A85F0();
      v54 = sub_2303105C8();
      v56 = v55;

      v79 = v54;
      v80 = v56;
      v57 = v71;
      sub_23030E478();
      v58 = sub_230310558();
      v60 = v59;
      (*v76)(v57, v72);

      sub_230061918(v52, &qword_27DB14980);

      v61 = v78;
      v88 = v78;
      v63 = *(v78 + 16);
      v62 = *(v78 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_23009EC34((v62 > 1), v63 + 1, 1);
        v61 = v88;
      }

      *(v61 + 16) = v63 + 1;
      v64 = v61 + 16 * v63;
      *(v64 + 32) = v58;
      *(v64 + 40) = v60;
      v11 = v44;
      v12 = v77;
      v9 = v74;
      a1 = v75;
      v14 = v73;
      v78 = v61;
      if ((v75 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_35:
      v47 = sub_230310718();
      if (v47)
      {
        v79 = v47;
        sub_23004CBA4(0, &qword_27DB15C40);
        swift_dynamicCast();
        v46 = v81;
        v44 = v11;
        v45 = v12;
        if (v81)
        {
          continue;
        }
      }

      goto LABEL_41;
    }
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v14)
    {
      goto LABEL_41;
    }

    v43 = *(v9 + 8 * v44);
    ++v42;
    if (v43)
    {
      goto LABEL_33;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

ReminderKitInternal::REMSuggestedAttributeOutput::Source __swiftcall REMSuggestedAttributeOutput.Source.init(pipeline:)(ReminderKitInternal::REMSuggestedAttributeOutput::Pipeline pipeline)
{
  v2 = v1;
  v3 = *pipeline;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230315CE0;
  *(inited + 32) = v3;
  v5 = inited + 32;
  *(inited + 40) = MEMORY[0x277D84FA0];
  v6 = sub_23008CD08(inited);
  swift_setDeallocating();
  result.predictors._rawValue = sub_230061918(v5, &qword_27DB15458);
  *v2 = v6;
  return result;
}

uint64_t REMSuggestedList.__allocating_init(stringLiteral:)()
{
  v0 = sub_23030EBB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_23030EB68();

  sub_230055F74(v9, v7, &qword_27DB14800);
  if ((*(v1 + 48))(v7, 1, v0) == 1)
  {
    sub_230061918(v9, &qword_27DB14800);
    sub_230061918(v7, &qword_27DB14800);
    v10 = 0xE500000000000000;
    v11 = 0x296C696E28;
  }

  else
  {
    (*(v1 + 32))(v3, v7, v0);
    v11 = sub_23030EB78();
    v10 = v12;
    sub_230061918(v9, &qword_27DB14800);
    (*(v1 + 8))(v3, v0);
  }

  result = swift_allocObject();
  *(result + 16) = v11;
  *(result + 24) = v10;
  return result;
}

uint64_t sub_230150D48()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15C10);
  v1 = __swift_project_value_buffer(v0, qword_27DB15C10);
  if (qword_280C99DE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMSuggestedWeekDay.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t REMSuggestedWeekDay.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_230150F28@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_230150F80(uint64_t a1)
{
  v2 = sub_2301608EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230150FBC(uint64_t a1)
{
  v2 = sub_2301608EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedWeekDay.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_230310E58();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t REMSuggestedWeekDay.init(_:)()
{
  *(v0 + 16) = sub_230310E58();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t REMSuggestedWeekDay.__allocating_init(stringLiteral:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  REMSuggestedWeekDay.init(stringLiteral:)(a1, a2);
  return v4;
}

uint64_t REMSuggestedWeekDay.init(stringLiteral:)(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_230243758(result, a2, 10);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v5 = v30;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v32 = v5;
      v26 = v5;

      if ((v26 & 1) == 0)
      {
LABEL_64:
        v31[0] = v8;
        *(v3 + 16) = sub_230310E58();
        *(v3 + 24) = v27;
        return v3;
      }

LABEL_63:
      v8 = 0;
      goto LABEL_64;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v31[0] = result;
  v31[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v31;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v12 = v31 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v18 = v31 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t REMSuggestedWeekDay.__allocating_init(from:)(uint64_t a1)
{
  v2 = sub_23030EE08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_23030E758();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230055F74(a1, v8, &qword_27DB15C28);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_230061918(v8, &qword_27DB15C28);
    v13 = swift_allocObject();
    v24 = 0;
    v14 = sub_230310E58();
    v16 = v15;
    sub_230061918(a1, &qword_27DB15C28);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_23030EDC8();
    v17 = DateComponents.dayOfWeek(with:)();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    if (v19)
    {
      v17 = 0;
    }

    v13 = swift_allocObject();
    if ((v17 - 8) >= 0xFFFFFFFFFFFFFFF9)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    v24 = v20;
    v14 = sub_230310E58();
    v16 = v21;
    sub_230061918(a1, &qword_27DB15C28);
    (*(v10 + 8))(v12, v9);
  }

  *(v13 + 16) = v14;
  *(v13 + 24) = v16;
  return v13;
}

uint64_t REMSuggestedWeekDay.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  REMSuggestedWeekDay.init(from:)(a1);
  return v2;
}

void REMSuggestedWeekDay.value.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (HIBYTE(v1) & 0xF);
  v4 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if ((v1 & 0x1000000000000000) != 0)
    {

      sub_230243758(v2, v1, 10);

      return;
    }

    if ((v1 & 0x2000000000000000) != 0)
    {
      v32[0] = *(v0 + 16);
      v32[1] = v1 & 0xFFFFFFFFFFFFFFLL;
      if (v2 == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v21 = 0;
            v22 = v32 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                break;
              }

              v21 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        __break(1u);
        return;
      }

      if (v2 != 45)
      {
        if (v3)
        {
          v28 = 0;
          v29 = v32;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v12 = 0;
          v13 = v32 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            ++v13;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v3 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v3 = sub_230310958();
      }

      v6 = *v3;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v16 = v4 - 1;
          if (v4 != 1)
          {
            v17 = 0;
            if (v3)
            {
              v18 = v3 + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_61;
                }

                v20 = 10 * v17;
                if ((v17 * 10) >> 64 != (10 * v17) >> 63)
                {
                  goto LABEL_61;
                }

                v17 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_61;
                }

                ++v18;
                if (!--v16)
                {
LABEL_53:
                  LOBYTE(v3) = 0;
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_61;
        }

        goto LABEL_68;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v25 = 0;
          if (v3)
          {
            while (1)
            {
              v26 = *v3 - 48;
              if (v26 > 9)
              {
                goto LABEL_61;
              }

              v27 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                goto LABEL_61;
              }

              v25 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_61;
              }

              ++v3;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_61:
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v7 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (v3)
          {
            v9 = v3 + 1;
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_61;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_61;
              }

              ++v9;
              if (!--v7)
              {
                goto LABEL_53;
              }
            }
          }

LABEL_62:
          v33 = v3;
          return;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }
}

void REMSuggestedWeekDay.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = HIBYTE(v2) & 0xF;
  v4 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {

      sub_230243758(v1, v2, 10);

      return;
    }

    if ((v2 & 0x2000000000000000) != 0)
    {
      v31[0] = v1;
      v31[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (v1 == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v20 = 0;
            v21 = v31 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        __break(1u);
        return;
      }

      if (v1 != 45)
      {
        if (v3)
        {
          v27 = 0;
          v28 = v31;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v12 = 0;
          v13 = v31 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            ++v13;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v6 = sub_230310958();
      }

      v7 = *v6;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v16 = 0;
            if (v6)
            {
              v17 = v6 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_61;
                }

                v19 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_61;
                }

                v16 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  goto LABEL_61;
                }

                ++v17;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_68;
      }

      if (v7 != 45)
      {
        if (v4)
        {
          v24 = 0;
          if (v6)
          {
            while (1)
            {
              v25 = *v6 - 48;
              if (v25 > 9)
              {
                goto LABEL_61;
              }

              v26 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_61;
              }

              v24 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_61;
              }

              ++v6;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (v6)
          {
            v9 = v6 + 1;
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_61;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_61;
              }

              ++v9;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v32 = v3;
          return;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }
}

uint64_t REMSuggestedList.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t REMSuggestedList.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_230152018@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_230152070(uint64_t a1)
{
  v2 = sub_230164B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301520AC(uint64_t a1)
{
  v2 = sub_230164B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedList.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t REMSuggestedList.__allocating_init(from:)(void *a1)
{
  v2 = sub_23030EBB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = [a1 objectID];
  v13 = [v12 uuid];

  sub_23030EBA8();
  (*(v3 + 56))(v11, 0, 1, v2);
  sub_230055F74(v11, v9, &qword_27DB14800);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_230061918(v11, &qword_27DB14800);
    sub_230061918(v9, &qword_27DB14800);
    v14 = 0xE500000000000000;
    v15 = 0x296C696E28;
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    v15 = sub_23030EB78();
    v14 = v16;
    sub_230061918(v11, &qword_27DB14800);
    (*(v3 + 8))(v5, v2);
  }

  result = swift_allocObject();
  *(result + 16) = v15;
  *(result + 24) = v14;
  return result;
}

uint64_t sub_2301523B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15DA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230164B84();
  sub_230311428();
  if (!v2)
  {
    v10 = sub_230310C98();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    v3 = swift_allocObject();
    *(v3 + 16) = v10;
    *(v3 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t REMSuggestedList.isValid.getter()
{
  if (*(v0 + 16) == *aNil_0 && *(v0 + 24) == unk_27DB13DB0)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_230311048() ^ 1;
  }

  return v2 & 1;
}

uint64_t REMSuggestedList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *REMSuggestedContact.__allocating_init(stringLiteral:)(uint64_t a1, unint64_t a2)
{
  result = swift_allocObject();
  if (a1 == 0x296C696E28 && a2 == 0xE500000000000000)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v7 = result;
    if ((sub_230311048() & 1) != 0 || (v8 = _sSo24REMContactRepresentationC19ReminderKitInternalE5parse4fromABSgSS_tFZ_0(a1, a2)) == 0)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      v9 = v8;
      REMContactRepresentation.quickName.getter();
      v5 = v10;
      v6 = v11;
    }

    result = v7;
  }

  result[4] = v5;
  result[5] = v6;
  result[2] = a1;
  result[3] = a2;
  return result;
}

uint64_t sub_230152718@<X0>(char *a1@<X8>)
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

uint64_t REMSuggestedContact.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x64497373616C63;
  }
}

uint64_t sub_2301527C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x64497373616C63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x64497373616C63;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_230152864()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301528E0()
{
  sub_23030F9C8();
}

uint64_t sub_230152948()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301529C0@<X0>(char *a1@<X8>)
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

void sub_230152A20(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (!*v1)
  {
    v2 = 0x64497373616C63;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230152A58()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x64497373616C63;
  }
}

uint64_t sub_230152A8C@<X0>(char *a1@<X8>)
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

uint64_t sub_230152AF0(uint64_t a1)
{
  v2 = sub_230164B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230152B2C(uint64_t a1)
{
  v2 = sub_230164B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedContact.shortDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

Swift::String *REMSuggestedContact.__allocating_init(_:)(void *a1)
{
  swift_allocObject();
  v2 = sub_230160E80(a1);

  return v2;
}

Swift::String *REMSuggestedContact.init(_:)(void *a1)
{
  v2 = sub_230160E80(a1);

  return v2;
}

void REMContactRepresentation.quickName.getter()
{
  v1 = [v0 phones];
  v2 = sub_23030FCD8();

  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = [v0 phones];
    v5 = sub_23030FCD8();

    if (v5[2])
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v6 = [v0 emails];
  v7 = sub_23030FCD8();

  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = [v0 emails];
    v5 = sub_23030FCD8();

    if (v5[2])
    {
LABEL_6:
      v10 = v5[4];
      v11 = v5[5];

      MEMORY[0x231911790](v10, v11);

      return;
    }

    goto LABEL_9;
  }
}

Swift::String __swiftcall REMContactRepresentation.parsableString()()
{
  v1 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23030F938();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = [v0 phones];
  v4 = sub_23030FCD8();

  v5 = *(v4 + 16);

  v6 = MEMORY[0x277D84F98];
  if (v5)
  {
    v7 = [v1 phones];
    v8 = sub_23030FCD8();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = v6;
    sub_2300A19F0(v8, 0x73656E6F6870, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  v10 = [v1 emails];
  v11 = sub_23030FCD8();

  v12 = *(v11 + 16);

  if (v12)
  {
    v13 = [v1 emails];
    v14 = sub_23030FCD8();

    v15 = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = v6;
    sub_2300A19F0(v14, 0x6C69616D65, 0xE500000000000000, v15);
  }

  if (!v6[2])
  {
    v25 = 7104878;
LABEL_16:

LABEL_17:
    v28 = 0xE300000000000000;
    goto LABEL_18;
  }

  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  v17 = sub_23030F638();
  v42[0] = 0;
  v18 = [v16 dataWithJSONObject:v17 options:0 error:v42];

  v19 = v42[0];
  if (!v18)
  {
    v29 = v19;
    v30 = sub_23030E808();

    swift_willThrow();
    if (qword_27DB13B50 != -1)
    {
      swift_once();
    }

    v25 = 7104878;
    v31 = sub_23030EF48();
    __swift_project_value_buffer(v31, qword_27DB15C10);

    v32 = sub_23030EF38();
    v33 = sub_230310288();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42[0] = v35;
      *v34 = 136315138;
      v36 = sub_23030F668();
      v38 = v37;

      v39 = sub_23004E30C(v36, v38, v42);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_230044000, v32, v33, "Failed to convert contact {%s} to string", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x231914180](v35, -1, -1);
      MEMORY[0x231914180](v34, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v20 = sub_23030EA18();
  v22 = v21;

  sub_23030F928();
  v23 = sub_23030F908();
  if (!v24)
  {
    v25 = 7104878;
    sub_23005FE3C(v20, v22);
    goto LABEL_16;
  }

  v25 = v23;
  v26 = v20;
  v27 = v24;
  sub_23005FE3C(v26, v22);

  v28 = v27;
LABEL_18:
  v40 = v25;
  result._object = v28;
  result._countAndFlagsBits = v40;
  return result;
}

uint64_t sub_230153258(void *a1)
{
  v2 = swift_allocObject();
  sub_2301532A8(a1);
  return v2;
}

void *sub_2301532A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15DA0);
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230164B30();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v18;
    v20 = 0;
    v9 = sub_230310C98();
    v12 = v11;
    v17 = v9;
    v19 = 1;
    v13 = v5;
    v14 = sub_230310C98();
    v16 = v15;
    (*(v8 + 8))(v7, v13);
    v3[4] = v14;
    v3[5] = v16;
    v3[2] = v17;
    v3[3] = v12;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void *REMSuggestedContact.init(stringLiteral:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (a1 == 0x296C696E28 && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0 || (v6 = _sSo24REMContactRepresentationC19ReminderKitInternalE5parse4fromABSgSS_tFZ_0(a1, a2)) == 0)
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v7 = v6;
    REMContactRepresentation.quickName.getter();
    v9 = v8;
    v11 = v10;
  }

  v3[4] = v9;
  v3[5] = v11;
  v3[2] = a1;
  v3[3] = a2;
  return v3;
}

uint64_t REMSuggestedContact.isValid.getter()
{
  if (*(v0 + 16) == 0x296C696E28 && *(v0 + 24) == 0xE500000000000000)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_230311048() ^ 1;
  }

  return v2 & 1;
}

uint64_t REMSuggestedContact.deinit()
{

  return v0;
}

uint64_t REMSuggestedContact.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t REMSuggestedLocation.LocationValue.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v2 = 0x682E657669727261;
    v3 = 1701670760;
    v4 = 1701670760;
    if (v1 == 2)
    {
      v4 = 0x6F682E657661656CLL;
    }

    goto LABEL_7;
  }

  if (*(v0 + 8) == 1)
  {
    v2 = 0x772E657669727261;
    v3 = 1802661751;
    v4 = 1802661751;
    if (v1 == 2)
    {
      v4 = 0x6F772E657661656CLL;
    }

LABEL_7:
    if (v1 != 1)
    {
      v2 = v4;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  v6 = 7496035;
  if (v1 != 1)
  {
    v6 = 0x726568746FLL;
  }

  if (v1)
  {
    return v6;
  }

  else
  {
    return 0x296C696E28;
  }
}

uint64_t REMSuggestedLocation.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t REMSuggestedLocation.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23015389C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301538F4(uint64_t a1)
{
  v2 = sub_230164ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230153930(uint64_t a1)
{
  v2 = sub_230164ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedLocation.__allocating_init(_:)(uint64_t *a1)
{
  v1 = *a1;
  if (!*(a1 + 8))
  {
    v2 = 0xEB00000000656D6FLL;
    v3 = 0x682E657669727261;
    v4 = 1701670760;
    v7 = 0x6F682E657661656CLL;
    v8 = 0xEA0000000000656DLL;
    if (v1 != 2)
    {
      v7 = 1701670760;
      v8 = 0xE400000000000000;
    }

    if (v1 != 1)
    {
      v3 = v7;
      v2 = v8;
    }

    goto LABEL_11;
  }

  if (*(a1 + 8) == 1)
  {
    v2 = 0xEB000000006B726FLL;
    v3 = 0x772E657669727261;
    v4 = 1802661751;
    v5 = 0xEA00000000006B72;
    v6 = 0x6F772E657661656CLL;
    if (v1 != 2)
    {
      v6 = 1802661751;
      v5 = 0xE400000000000000;
    }

    if (v1 != 1)
    {
      v3 = v6;
      v2 = v5;
    }

LABEL_11:
    if (v1)
    {
      v9 = v3;
    }

    else
    {
      v9 = v4;
    }

    if (v1)
    {
      v10 = v2;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    goto LABEL_25;
  }

  v11 = 0xE300000000000000;
  v12 = 7496035;
  if (v1 != 1)
  {
    v12 = 0x726568746FLL;
    v11 = 0xE500000000000000;
  }

  if (v1)
  {
    v9 = v12;
  }

  else
  {
    v9 = 0x296C696E28;
  }

  if (v1)
  {
    v10 = v11;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

LABEL_25:
  result = swift_allocObject();
  *(result + 16) = v9;
  *(result + 24) = v10;
  return result;
}

uint64_t REMSuggestedLocation.__allocating_init(stringLiteral:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t REMSuggestedLocation.init(stringLiteral:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t static REMSuggestedLocation.expectedLocation(of:)(void *a1)
{
  v1 = [a1 alarms];
  if (v1)
  {
    v2 = v1;
    sub_23004CBA4(0, &qword_27DB15C38);
    v3 = sub_23030FCD8();

    v4 = _s19ReminderKitInternal20REMSuggestedLocationC08expectedE02ofACSaySo8REMAlarmCG_tFZ_0(v3);

    return v4;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = 0x296C696E28;
    *(result + 24) = 0xE500000000000000;
  }

  return result;
}

uint64_t REMSuggestedLocation.isSpecificLocation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2300A85F0();
  if ((sub_2303105D8() & 1) != 0 || (sub_2303105D8() & 1) != 0 || v1 == 7496035 && v2 == 0xE300000000000000)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_230311048();
  }

  return v3 & 1;
}

uint64_t sub_230153DA4(void *a1)
{
  v2 = swift_allocObject();
  sub_230153E20(a1, &qword_27DB15D98, &unk_23031EB48, sub_230164ADC);
  return v2;
}

void *sub_230153E20(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v17[1] = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v17[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v11 = v17[3];
  sub_230311428();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v17[0];
    v14 = sub_230310C98();
    v16 = v15;
    (*(v12 + 8))(v10, v8);
    v6[2] = v14;
    v6[3] = v16;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_230154014()
{
  v1 = [*v0 name];
  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v2;
}

uint64_t Sequence<>.canonicalTagSet.getter(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v8 = sub_230058010(sub_230161604, v11, a1, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], a8);
  v9 = sub_2300B38E4(v8);

  return v9;
}

uint64_t sub_2301540FC@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v23 = sub_23030E4A8();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = *(a1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = v9(AssociatedTypeWitness, a1);
  v13 = v12;
  sub_23030EC88();
  v14 = sub_23030ED38();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v27 = v11;
  v28 = v13;
  sub_2300A85F0();
  v15 = sub_2303105C8();
  v17 = v16;

  v25 = v15;
  v26 = v17;
  sub_23030E478();
  v18 = sub_230310558();
  v20 = v19;
  (*(v3 + 8))(v5, v23);
  sub_230061918(v8, &qword_27DB14980);

  v22 = v24;
  *v24 = v18;
  v22[1] = v20;
  return result;
}

ReminderKitInternal::REMSuggestedAttributeInput::CodingKeys_optional __swiftcall REMSuggestedAttributeInput.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReminderKitInternal::REMSuggestedAttributeInput::CodingKeys_optional __swiftcall REMSuggestedAttributeInput.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = REMSuggestedAttributeInput.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_230154408()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 1936154996;
    v8 = 0x746361746E6F63;
    if (v1 != 10)
    {
      v8 = 0x6E65727275636572;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x6E6F697461636F6CLL;
    v10 = 0x64656767616C66;
    if (v1 != 7)
    {
      v10 = 0x797469726F697270;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x656C746974;
    v3 = 1953720684;
    v4 = 0x664F796144657564;
    if (v1 != 4)
    {
      v4 = 0x5465746144657564;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x7265646E696D6572;
    if (v1 != 1)
    {
      v5 = 0x6E6F697461657263;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_230154590()
{
  v0 = REMSuggestedAttributeInput.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == REMSuggestedAttributeInput.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_230311048();
  }

  return v5 & 1;
}

uint64_t sub_23015462C()
{
  v0 = sub_230311358();
  REMSuggestedAttributeInput.CodingKeys.stringValue.getter(v0);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230154694(uint64_t a1)
{
  REMSuggestedAttributeInput.CodingKeys.stringValue.getter(a1);
  sub_23030F9C8();
}

uint64_t sub_2301546F8()
{
  v0 = sub_230311358();
  REMSuggestedAttributeInput.CodingKeys.stringValue.getter(v0);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230154768@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributeInput.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ReminderKitInternal::REMSuggestedAttributeInput::CodingKeys_optional sub_230154794@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMSuggestedAttributeInput.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2301547E8(uint64_t a1)
{
  v2 = sub_230161734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230154824(uint64_t a1)
{
  v2 = sub_230161734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributeInput.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_creationDate;
  v4 = sub_23030EB58();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t REMSuggestedAttributeInput.dueDateTime.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDateTime);

  return v1;
}

uint64_t REMSuggestedAttributeInput.__allocating_init(reminder:)(void *a1)
{
  v2 = swift_allocObject();
  REMSuggestedAttributeInput.init(reminder:)(a1);
  return v2;
}

_BYTE *REMSuggestedAttributeInput.init(reminder:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v129 = &v113 - v7;
  v8 = sub_23030EE08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23030E758();
  v124 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v115 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v116 = &v113 - v18;
  v19 = sub_23030EB58();
  v122 = *(v19 - 8);
  v123 = v19;
  MEMORY[0x28223BE20](v19);
  v121 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23030EBB8();
  v22 = *(v21 - 8);
  v127 = v21;
  v128 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v113 - v26;
  v28 = [a1 titleAsString];
  v125 = v12;
  v126 = v6;
  v119 = v8;
  v120 = v14;
  v117 = v11;
  v118 = v9;
  v114 = v25;
  if (v28)
  {
    v29 = v28;
    v30 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v1[2] = v30;
  v1[3] = v32;
  v33 = [a1 objectID];
  v34 = type metadata accessor for REMObjectID_Codable();
  v35 = objc_allocWithZone(v34);
  v36 = v1;
  v37 = [v33 uuid];
  sub_23030EBA8();

  v38 = sub_23030EB88();
  v39 = v127;
  v113 = v128[1];
  v113(v27, v127);
  v40 = [v33 entityName];
  if (!v40)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v40 = sub_23030F8B8();
    v39 = v127;
  }

  v132.receiver = v35;
  v132.super_class = v34;
  v41 = objc_msgSendSuper2(&v132, sel_initWithUUID_entityName_, v38, v40);

  v36[4] = v41;
  v42 = [a1 creationDate];
  v43 = v121;
  sub_23030EB18();

  (*(v122 + 32))(v36 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_creationDate, v43, v123);
  v44 = [a1 list];
  v45 = [v44 isPlaceholder];

  v46 = v36;
  v47 = a1;
  if (v45)
  {
    type metadata accessor for REMSuggestedList();
    inited = swift_initStaticObject();
    v50 = v125;
    v49 = v126;
  }

  else
  {
    v51 = [a1 list];
    v52 = [v51 objectID];
    v53 = [v52 uuid];

    v54 = v116;
    sub_23030EBA8();

    v55 = v128;
    (v128[7])(v54, 0, 1, v39);
    v56 = v115;
    sub_230055F74(v54, v115, &qword_27DB14800);
    v57 = (v55[6])(v56, 1, v39);
    v50 = v125;
    if (v57 == 1)
    {
      v58 = v56;
      v59 = 0x296C696E28;
      sub_230061918(v54, &qword_27DB14800);
      sub_230061918(v58, &qword_27DB14800);
      v60 = 0xE500000000000000;
    }

    else
    {
      v61 = v114;
      (v55[4])(v114, v56, v39);
      v59 = sub_23030EB78();
      v60 = v62;
      sub_230061918(v54, &qword_27DB14800);
      v113(v61, v39);
    }

    v49 = v126;
    type metadata accessor for REMSuggestedList();
    inited = swift_allocObject();
    *(inited + 16) = v59;
    *(inited + 24) = v60;
  }

  *&v46[OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_list] = inited;
  v63 = [v47 dueDateComponents];
  if (v63)
  {
    v64 = v120;
    v65 = v63;
    sub_23030E678();

    v66 = v117;
    sub_23030EDC8();
    v67 = DateComponents.dayOfWeek(with:)();
    v69 = v68;
    (*(v118 + 8))(v66, v119);
    if (v69)
    {
      v70 = 0;
    }

    else
    {
      v70 = v67;
    }

    type metadata accessor for REMSuggestedWeekDay();
    v71 = swift_allocObject();
    if ((v70 - 8) >= 0xFFFFFFFFFFFFFFF9)
    {
      v72 = v70;
    }

    else
    {
      v72 = 0;
    }

    v130 = v72;
    v73 = sub_230310E58();
    v75 = v74;
    v76 = v124;
    (*(v124 + 8))(v64, v50);
  }

  else
  {
    type metadata accessor for REMSuggestedWeekDay();
    v71 = swift_allocObject();
    v130 = 0;
    v73 = sub_230310E58();
    v75 = v77;
    v76 = v124;
  }

  *(v71 + 16) = v73;
  *(v71 + 24) = v75;
  *&v46[OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDayOfWeek] = v71;
  v78 = [v47 dueDateComponents];
  if (v78)
  {
    v79 = v78;
    sub_23030E678();

    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  (*(v76 + 56))(v49, v80, 1, v50);
  v81 = v129;
  sub_230112AF4(v49, v129, &qword_27DB15C28);
  if ((*(v76 + 48))(v81, 1, v50) == 1)
  {
    sub_230061918(v129, &qword_27DB15C28);
    v82 = 0;
    v83 = 0xE000000000000000;
  }

  else
  {
    v84 = v129;
    v82 = MEMORY[0x231910380]();
    v83 = v85;
    (*(v76 + 8))(v84, v50);
  }

  v86 = &v46[OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDateTime];
  *v86 = v82;
  v86[1] = v83;
  v87 = [v47 alarms];
  if (v87)
  {
    v88 = v87;
    sub_23004CBA4(0, &qword_27DB15C38);
    v89 = sub_23030FCD8();

    v90 = _s19ReminderKitInternal20REMSuggestedLocationC08expectedE02ofACSaySo8REMAlarmCG_tFZ_0(v89);
  }

  else
  {
    type metadata accessor for REMSuggestedLocation();
    v90 = swift_allocObject();
    *(v90 + 16) = 0x296C696E28;
    *(v90 + 24) = 0xE500000000000000;
  }

  *&v46[OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_location] = v90;
  v91 = [v47 flaggedContext];
  if (v91)
  {
    v92 = v91;
    v93 = [v91 flagged];

    v94 = v93 != 0;
  }

  else
  {
    v94 = 0;
  }

  v46[OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_flagged] = v94;
  v95 = [v47 priority];
  *&v46[OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_priority] = v95;
  v96 = [v47 hashtags];
  sub_23004CBA4(0, &qword_27DB15C40);
  sub_2301616A8();
  v97 = sub_23030FF38();

  sub_230150344(v97);
  v99 = v98;

  v100 = sub_2300B38E4(v99);

  *&v46[OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_tags] = v100;
  *&v46[OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_contact] = _s19ReminderKitInternal19REMSuggestedContactC08expectedE02ofACSo11REMReminderC_tFZ_0(v47);
  v101 = [v47 recurrenceRules];
  if (v101)
  {
    v102 = v101;
    sub_23004CBA4(0, &qword_27DB15C50);
    v103 = sub_23030FCD8();

    v131 = MEMORY[0x277D84FA0];
    if (v103 >> 62)
    {
      goto LABEL_47;
    }

    for (i = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2303106D8())
    {
      v128 = v47;
      v129 = v46;
      v105 = 0;
      while (1)
      {
        if ((v103 & 0xC000000000000001) != 0)
        {
          v106 = MEMORY[0x231912650](v105, v103);
        }

        else
        {
          if (v105 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v106 = *(v103 + 8 * v105 + 32);
        }

        v46 = v106;
        v107 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          break;
        }

        v108 = [v106 iCalendarDescription];
        v47 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v110 = v109;

        sub_2300A8988(&v130, v47, v110);

        ++v105;
        if (v107 == i)
        {
          v111 = v131;
          v47 = v128;
          v46 = v129;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }

    v111 = MEMORY[0x277D84FA0];
LABEL_49:
  }

  else
  {

    v111 = MEMORY[0x277D84FA0];
  }

  *&v46[OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_recurrence] = v111;
  return v46;
}

void *REMSuggestedAttributeInput.__allocating_init(reminderTitle:reminderID:list:creationDate:dueDayOfWeek:dueDateTime:location:flagged:priority:tags:contact:recurrence:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v56 = a7;
  v57 = a8;
  v58 = a6;
  v55 = a5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v52 - v20;
  v53 = sub_23030EB58();
  v22 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23030EBB8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = a2;
  *(v28 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_list) = a4;
  v29 = type metadata accessor for REMObjectID_Codable();
  v30 = objc_allocWithZone(v29);
  v59 = a4;

  v31 = a3;
  v32 = [v31 uuid];
  sub_23030EBA8();

  v33 = sub_23030EB88();
  (*(v25 + 8))(v27, v24);
  v34 = [v31 entityName];
  v60 = v31;
  if (!v34)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v34 = sub_23030F8B8();
    v31 = v60;
  }

  v62.receiver = v30;
  v62.super_class = v29;
  v35 = objc_msgSendSuper2(&v62, sel_initWithUUID_entityName_, v33, v34);

  v28[4] = v35;
  v36 = v55;
  sub_230055F74(v55, v21, &unk_27DB15AA0);
  v37 = *(v22 + 48);
  v38 = v53;
  if (v37(v21, 1, v53) == 1)
  {
    v39 = v54;
    sub_23030EB48();
    if (v37(v21, 1, v38) != 1)
    {
      sub_230061918(v21, &unk_27DB15AA0);
    }
  }

  else
  {
    v39 = v54;
    (*(v22 + 32))(v54, v21, v38);
  }

  (*(v22 + 32))(v28 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_creationDate, v39, v38);
  v40 = v56;
  if (!v57)
  {
    v40 = 0;
  }

  v41 = 0xE000000000000000;
  if (v57)
  {
    v41 = v57;
  }

  v42 = (v28 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDateTime);
  *v42 = v40;
  v42[1] = v41;
  if (v58)
  {
    v43 = v58;
  }

  else
  {
    type metadata accessor for REMSuggestedWeekDay();
    v43 = swift_allocObject();
    v61 = 0;
    *(v43 + 16) = sub_230310E58();
    *(v43 + 24) = v44;
  }

  *(v28 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDayOfWeek) = v43;
  if (a9)
  {
    v45 = a9;
  }

  else
  {
    type metadata accessor for REMSuggestedLocation();
    v45 = swift_allocObject();
    *(v45 + 16) = 0x296C696E28;
    *(v45 + 24) = 0xE500000000000000;
  }

  v46 = a15;
  *(v28 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_location) = v45;
  *(v28 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_flagged) = a10 & 1;
  if (a12)
  {
    v47 = 0;
  }

  else
  {
    v47 = a11;
  }

  *(v28 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_priority) = v47;
  v48 = MEMORY[0x277D84FA0];
  if (a13)
  {
    v48 = a13;
  }

  *(v28 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_tags) = v48;
  if (a14)
  {
    inited = a14;
  }

  else
  {
    type metadata accessor for REMSuggestedContact();
    inited = swift_initStaticObject();
  }

  v50 = v60;
  *(v28 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_contact) = inited;
  if (a15)
  {

    sub_230061918(v36, &unk_27DB15AA0);
  }

  else
  {

    sub_230061918(v36, &unk_27DB15AA0);

    v46 = MEMORY[0x277D84FA0];
  }

  *(v28 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_recurrence) = v46;
  return v28;
}

void *REMSuggestedAttributeInput.init(reminderTitle:reminderID:list:creationDate:dueDayOfWeek:dueDateTime:location:flagged:priority:tags:contact:recurrence:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v56 = a7;
  v57 = a8;
  v59 = a6;
  v55 = a5;
  v52 = a3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v51 - v21;
  v53 = sub_23030EB58();
  v23 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23030EBB8();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = a1;
  v16[3] = a2;
  *(v16 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_list) = a4;
  v29 = type metadata accessor for REMObjectID_Codable();
  v30 = objc_allocWithZone(v29);
  v58 = a4;

  v31 = v52;
  v32 = [v31 uuid];
  sub_23030EBA8();

  v33 = sub_23030EB88();
  (*(v26 + 8))(v28, v25);
  v34 = [v31 entityName];
  if (!v34)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v34 = sub_23030F8B8();
  }

  v61.receiver = v30;
  v61.super_class = v29;
  v35 = objc_msgSendSuper2(&v61, sel_initWithUUID_entityName_, v33, v34);

  v16[4] = v35;
  v36 = v55;
  sub_230055F74(v55, v22, &unk_27DB15AA0);
  v37 = *(v23 + 48);
  v38 = v53;
  if (v37(v22, 1, v53) == 1)
  {
    v39 = v54;
    sub_23030EB48();
    if (v37(v22, 1, v38) != 1)
    {
      sub_230061918(v22, &unk_27DB15AA0);
    }
  }

  else
  {
    v39 = v54;
    (*(v23 + 32))(v54, v22, v38);
  }

  (*(v23 + 32))(v16 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_creationDate, v39, v38);
  v40 = v56;
  if (!v57)
  {
    v40 = 0;
  }

  v41 = 0xE000000000000000;
  if (v57)
  {
    v41 = v57;
  }

  v42 = (v16 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDateTime);
  *v42 = v40;
  v42[1] = v41;
  v43 = v59;
  if (!v59)
  {
    type metadata accessor for REMSuggestedWeekDay();
    v43 = swift_allocObject();
    v60 = 0;
    *(v43 + 16) = sub_230310E58();
    *(v43 + 24) = v44;
  }

  *(v16 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDayOfWeek) = v43;
  if (a9)
  {
    v45 = a9;
  }

  else
  {
    type metadata accessor for REMSuggestedLocation();
    v45 = swift_allocObject();
    *(v45 + 16) = 0x296C696E28;
    *(v45 + 24) = 0xE500000000000000;
  }

  v46 = a15;
  *(v16 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_location) = v45;
  *(v16 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_flagged) = a10 & 1;
  if (a12)
  {
    v47 = 0;
  }

  else
  {
    v47 = a11;
  }

  *(v16 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_priority) = v47;
  v48 = MEMORY[0x277D84FA0];
  if (a13)
  {
    v48 = a13;
  }

  *(v16 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_tags) = v48;
  if (a14)
  {
    inited = a14;
  }

  else
  {
    type metadata accessor for REMSuggestedContact();
    inited = swift_initStaticObject();
  }

  *(v16 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_contact) = inited;
  if (a15)
  {

    sub_230061918(v36, &unk_27DB15AA0);
  }

  else
  {

    sub_230061918(v36, &unk_27DB15AA0);

    v46 = MEMORY[0x277D84FA0];
  }

  *(v16 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_recurrence) = v46;
  return v16;
}

uint64_t REMSuggestedAttributeInput.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  REMSuggestedAttributeInput.init(from:)(a1);
  return v2;
}

void *REMSuggestedAttributeInput.init(from:)(void *a1)
{
  v3 = sub_23030EB58();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C58);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230161734();
  v27 = v8;
  v9 = v28;
  sub_230311428();
  if (v9)
  {
    swift_deallocPartialClassInstance();
    v21 = a1;
  }

  else
  {
    v28 = a1;
    v23 = v3;
    LOBYTE(v30) = 0;
    v10 = v25;
    v1[2] = sub_230310C98();
    v1[3] = v11;
    type metadata accessor for REMObjectID_Codable();
    v29 = 1;
    sub_230161788(&qword_280C9C5D0, 255, type metadata accessor for REMObjectID_Codable);
    sub_230310CE8();
    v1[4] = v30;
    LOBYTE(v30) = 2;
    sub_230161788(&qword_280C9B738, 255, MEMORY[0x277CC9578]);
    v12 = v23;
    sub_230310CE8();
    (*(v24 + 32))(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_creationDate, v5, v12);
    type metadata accessor for REMSuggestedList();
    v29 = 3;
    sub_230161788(&qword_280C9AFB8, v13, type metadata accessor for REMSuggestedList);
    v22 = 0;
    sub_230310CE8();
    *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_list) = v30;
    LOBYTE(v30) = 5;
    v14 = sub_230310C98();
    v15 = (v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDateTime);
    *v15 = v14;
    v15[1] = v16;
    type metadata accessor for REMSuggestedWeekDay();
    v29 = 4;
    sub_230161788(&qword_280C9ACC0, v17, type metadata accessor for REMSuggestedWeekDay);
    sub_230310CE8();
    *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDayOfWeek) = v30;
    type metadata accessor for REMSuggestedLocation();
    v29 = 6;
    sub_230161788(&qword_280C9ABE8, v18, type metadata accessor for REMSuggestedLocation);
    sub_230310CE8();
    *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_location) = v30;
    LOBYTE(v30) = 7;
    *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_flagged) = sub_230310CA8() & 1;
    LOBYTE(v30) = 8;
    *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_priority) = sub_230310CD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
    v29 = 9;
    sub_2301224F0(&qword_280C9B740);
    sub_230310CE8();
    *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_tags) = v30;
    type metadata accessor for REMSuggestedContact();
    v29 = 10;
    sub_230161788(&qword_280C981C8, v20, type metadata accessor for REMSuggestedContact);
    sub_230310CE8();
    *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_contact) = v30;
    v29 = 11;
    sub_230310CE8();
    (*(v10 + 8))(v27, v26);
    *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_recurrence) = v30;
    v21 = v28;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v1;
}

uint64_t REMSuggestedAttributeInput.description.getter()
{
  v1 = v0;
  v2 = sub_23030EBB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_230310848();
  MEMORY[0x231911790](0x203A64697BLL, 0xE500000000000000);
  v6 = [*(v0 + 32) uuid];
  sub_23030EBA8();

  v7 = sub_23030EB78();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x231911790](v7, v9);

  MEMORY[0x231911790](0x3A656C746974202CLL, 0xE900000000000020);
  MEMORY[0x231911790](*(v1 + 16), *(v1 + 24));
  MEMORY[0x231911790](0xD000000000000010, 0x8000000230341F90);
  v10 = sub_23030EA58();
  MEMORY[0x231911790](v10);

  MEMORY[0x231911790](0x203A7473696C202CLL, 0xE800000000000000);
  v11 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_list);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  MEMORY[0x231911790](v12, v13);

  MEMORY[0x231911790](0x746144657564202CLL, 0xEF203A656D695465);
  MEMORY[0x231911790](*(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDateTime), *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDateTime + 8));
  MEMORY[0x231911790](0x656557657564202CLL, 0xEE00203A7961446BLL);
  REMSuggestedWeekDay.description.getter();
  MEMORY[0x231911790]();

  MEMORY[0x231911790](0xD000000000000013, 0x8000000230341FB0);
  v14 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_location);
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);

  MEMORY[0x231911790](v15, v16);

  MEMORY[0x231911790](0x656767616C66202CLL, 0xEB00000000203A64);
  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_flagged))
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_flagged))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x231911790](v17, v18);

  MEMORY[0x231911790](0x69726F697270202CLL, 0xEC000000203A7974);
  v26[1] = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_priority);
  v19 = sub_230310E58();
  MEMORY[0x231911790](v19);

  MEMORY[0x231911790](0x203A73676174202CLL, 0xE800000000000000);
  v20 = sub_23030FF48();
  MEMORY[0x231911790](v20);

  MEMORY[0x231911790](0x6361746E6F63202CLL, 0xEB00000000203A74);
  v21 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_contact);
  v22 = *(v21 + 32);
  v23 = *(v21 + 40);

  MEMORY[0x231911790](v22, v23);

  MEMORY[0x231911790](0x727275636572202CLL, 0xEE00203A65636E65);
  v24 = sub_23030FF48();
  MEMORY[0x231911790](v24);

  MEMORY[0x231911790](125, 0xE100000000000000);
  return v27;
}

uint64_t REMSuggestedAttributeInput.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230161734();
  sub_230311448();
  LOBYTE(v15) = 0;
  sub_230310DA8();
  if (!v2)
  {
    v15 = *(v3 + 32);
    HIBYTE(v14) = 1;
    type metadata accessor for REMObjectID_Codable();
    sub_230161788(qword_280C9BFD8, 255, type metadata accessor for REMObjectID_Codable);
    sub_230310DF8();
    LOBYTE(v15) = 2;
    sub_23030EB58();
    sub_230161788(&qword_280C9B760, 255, MEMORY[0x277CC9578]);
    sub_230310DF8();
    v15 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_list);
    HIBYTE(v14) = 3;
    type metadata accessor for REMSuggestedList();
    sub_230161788(&qword_280C9AFC8, v9, type metadata accessor for REMSuggestedList);
    sub_230310DF8();
    LOBYTE(v15) = 5;
    sub_230310DA8();
    v15 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDayOfWeek);
    HIBYTE(v14) = 4;
    type metadata accessor for REMSuggestedWeekDay();
    sub_230161788(&qword_280C9ACC8, v10, type metadata accessor for REMSuggestedWeekDay);
    sub_230310DF8();
    v15 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_location);
    HIBYTE(v14) = 6;
    type metadata accessor for REMSuggestedLocation();
    sub_230161788(&qword_280C9ABF0, v11, type metadata accessor for REMSuggestedLocation);
    sub_230310DF8();
    LOBYTE(v15) = 7;
    sub_230310DB8();
    LOBYTE(v15) = 8;
    sub_230310DE8();
    v15 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_tags);
    HIBYTE(v14) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
    sub_2301224F0(&qword_280C9B408);
    sub_230310DF8();
    v15 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_contact);
    HIBYTE(v14) = 10;
    type metadata accessor for REMSuggestedContact();
    sub_230161788(&unk_280C981D0, v12, type metadata accessor for REMSuggestedContact);
    sub_230310DF8();
    v15 = *(v3 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_recurrence);
    HIBYTE(v14) = 11;
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t REMSuggestedAttributeInput.deinit()
{

  v1 = OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_creationDate;
  v2 = sub_23030EB58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

void *sub_230157574@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = REMSuggestedAttributeInput.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_230157624(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_230157684()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2301576D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_230157814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  v8 = a3(0);
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_2301578A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = *a2;
  v14 = *a6;
  swift_beginAccess();
  (*(v10 + 40))(v13 + v14, v12, v9);
  return swift_endAccess();
}

uint64_t sub_2301579DC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_230157A88(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_230157C08(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_listName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_230157C74()
{
  v1 = (v0 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_listName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_230157CCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_listName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_230157EA4()
{
  v1 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_flagged;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_230157EE8(char a1)
{
  v3 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_flagged;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_230157F98()
{
  v1 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_priority;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_230157FDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_priority;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_230158118(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_23015824C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_230158320(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t REMSuggestedAttributeReminderDataSource.__allocating_init(title:reminderIdentifier:creationDate:list:listName:dueDayOfWeek:location:flagged:priority:tags:contact:recurrences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_reminderIdentifier;
  v23 = sub_23030EBB8();
  (*(*(v23 - 8) + 32))(v21 + v22, a3, v23);
  v24 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_creationDate;
  v25 = sub_23030EB58();
  (*(*(v25 - 8) + 32))(v21 + v24, a4, v25);
  *(v21 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_list) = a5;
  v26 = (v21 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_listName);
  *v26 = a6;
  v26[1] = a7;
  *(v21 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_dueDayOfWeek) = a8;
  *(v21 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_location) = a9;
  *(v21 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_flagged) = a10;
  *(v21 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_priority) = a11;
  *(v21 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_tags) = a12;
  *(v21 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_contact) = a13;
  *(v21 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_recurrences) = a14;
  return v21;
}

uint64_t REMSuggestedAttributeReminderDataSource.init(title:reminderIdentifier:creationDate:list:listName:dueDayOfWeek:location:flagged:priority:tags:contact:recurrences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v20 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_reminderIdentifier;
  v21 = sub_23030EBB8();
  (*(*(v21 - 8) + 32))(v14 + v20, a3, v21);
  v22 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_creationDate;
  v23 = sub_23030EB58();
  (*(*(v23 - 8) + 32))(v14 + v22, a4, v23);
  *(v14 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_list) = a5;
  v24 = (v14 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_listName);
  *v24 = a6;
  v24[1] = a7;
  *(v14 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_dueDayOfWeek) = a8;
  *(v14 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_location) = a9;
  *(v14 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_flagged) = a10;
  *(v14 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_priority) = a11;
  *(v14 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_tags) = a12;
  *(v14 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_contact) = a13;
  *(v14 + OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_recurrences) = a14;
  return v14;
}

uint64_t sub_230158714()
{
  v1 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_list;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);

  return v2;
}

uint64_t REMSuggestedAttributeReminderDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_reminderIdentifier;
  v2 = sub_23030EBB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_creationDate;
  v4 = sub_23030EB58();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_2301588A0(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t REMSuggestedAttributeInputDataFrame.index.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

double REMSuggestedAttributeInputDataFrame.init(reminderDataSourceArray:)@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v165 = sub_23030EB58();
  v175 = *(v165 - 8);
  v4 = MEMORY[0x28223BE20](v165);
  v6 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v161 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v161 - v10;
  v177 = sub_23030EBB8();
  v12 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 >> 62;
  v180 = a1;
  if (a1 >> 62)
  {
    v17 = sub_2303106D8();
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_110;
    }

    __break(1u);
    goto LABEL_108;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v17)
  {
    v16 = MEMORY[0x277D84F90];
    if (i)
    {
      v16 = sub_23009D8EC(i, 0);
      v17 = sub_2301502A8(v195, (v16 + 4), i, 0, i);
      if (v17 != i)
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }
    }

    sub_23015A028(v16, v195);
    v167 = v195[0];
    if (v14)
    {
      v18 = sub_2303106D8();
    }

    else
    {
      v18 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0x277D44000;
    v168 = a2;
    v169 = v12;
    v166 = v9;
    if (!v18)
    {

      v27 = MEMORY[0x277D84F90];
      v171 = MEMORY[0x277D84F90];
      v172 = MEMORY[0x277D84F90];
      v28 = MEMORY[0x277D84F90];
      v29 = MEMORY[0x277D84F90];
      v30 = MEMORY[0x277D84F90];
      v174 = MEMORY[0x277D84F90];
      v175 = MEMORY[0x277D84F90];
      v179 = MEMORY[0x277D84F90];
      v173 = MEMORY[0x277D84F90];
      v31 = MEMORY[0x277D84F90];
      goto LABEL_103;
    }

    v194 = MEMORY[0x277D84F90];
    v170 = v18 & ~(v18 >> 63);
    v17 = sub_23009EC34(0, v170, 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    ;
  }

  v162 = v6;
  v163 = v11;
  v19 = v194;
  v178 = v180 & 0xC000000000000001;
  v181 = v18;
  if ((v180 & 0xC000000000000001) != 0)
  {
    v20 = 0;
    do
    {
      v21 = MEMORY[0x231912650](v20, v180);
      swift_beginAccess();
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);

      swift_unknownObjectRelease();
      v194 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_23009EC34((v24 > 1), v25 + 1, 1);
        v19 = v194;
      }

      ++v20;
      *(v19 + 16) = v25 + 1;
      v26 = v19 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
    }

    while (v18 != v20);
  }

  else
  {
    v32 = (v180 + 32);
    v33 = v18;
    do
    {
      v34 = *v32;
      swift_beginAccess();
      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      v194 = v19;
      v38 = *(v19 + 16);
      v37 = *(v19 + 24);

      if (v38 >= v37 >> 1)
      {
        sub_23009EC34((v37 > 1), v38 + 1, 1);
        v19 = v194;
      }

      *(v19 + 16) = v38 + 1;
      v39 = v19 + 16 * v38;
      *(v39 + 32) = v36;
      *(v39 + 40) = v35;
      ++v32;
      --v33;
    }

    while (v33);
  }

  v164 = v19;
  v192 = MEMORY[0x277D84F90];
  sub_2303109B8();
  v40 = objc_opt_self();
  v41 = 0;
  v42 = v180;
  v173 = (v169 + 16);
  v174 = v40;
  v171 = (v180 + 32);
  v172 = (v169 + 8);
  do
  {
    if (v178)
    {
      v44 = MEMORY[0x231912650](v41, v42);
    }

    else
    {
      v44 = *(v42 + 8 * v41 + 32);
    }

    v45 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_reminderIdentifier;
    swift_beginAccess();
    v47 = v176;
    v46 = v177;
    (*v173)(v176, v44 + v45, v177);
    v48 = sub_23030EB88();
    v49 = *v172;
    (*v172)(v47, v46);
    v50 = [v174 objectIDWithUUID_];

    v51 = type metadata accessor for REMObjectID_Codable();
    v179 = objc_allocWithZone(v51);
    v52 = [v50 uuid];
    sub_23030EBA8();

    v53 = sub_23030EB88();
    v49(v47, v46);
    v54 = [v50 entityName];
    if (!v54)
    {
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v54 = sub_23030F8B8();
    }

    ++v41;
    v193.receiver = v179;
    v193.super_class = v51;
    objc_msgSendSuper2(&v193, sel_initWithUUID_entityName_, v53, v54);

    sub_230310988();
    sub_2303109C8();
    sub_2303109D8();
    sub_230310998();
    v42 = v180;
    v43 = v181;
  }

  while (v181 != v41);
  v173 = v192;
  v191 = MEMORY[0x277D84F90];
  sub_23009ED44(0, v170, 0);
  v55 = v191;
  v179 = (v175 + 16);
  v174 = (v175 + 32);
  if (v178)
  {
    v56 = 0;
    v57 = v165;
    v58 = v163;
    do
    {
      v59 = MEMORY[0x231912650](v56, v42);
      v60 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_creationDate;
      swift_beginAccess();
      (*v179)(v58, v59 + v60, v57);
      swift_unknownObjectRelease();
      v191 = v55;
      v62 = v55[2];
      v61 = v55[3];
      if (v62 >= v61 >> 1)
      {
        sub_23009ED44(v61 > 1, v62 + 1, 1);
        v55 = v191;
      }

      ++v56;
      v55[2] = v62 + 1;
      (*(v175 + 32))(v55 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v62, v58, v57);
    }

    while (v43 != v56);
  }

  else
  {
    v63 = v171;
    v64 = v43;
    v65 = v165;
    v66 = v162;
    do
    {
      v67 = *v63;
      v68 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_creationDate;
      swift_beginAccess();
      (*v179)(v66, v67 + v68, v65);
      v191 = v55;
      v70 = v55[2];
      v69 = v55[3];
      if (v70 >= v69 >> 1)
      {
        sub_23009ED44(v69 > 1, v70 + 1, 1);
        v65 = v165;
        v55 = v191;
      }

      v55[2] = v70 + 1;
      (*(v175 + 32))(v55 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v70, v66, v65);
      ++v63;
      --v64;
      v42 = v180;
    }

    while (v64);
  }

  v179 = v55;
  v190 = MEMORY[0x277D84F90];
  sub_2303109B8();
  if (v178)
  {
    v71 = 0;
    v72 = v171;
    do
    {
      v73 = v71 + 1;
      MEMORY[0x231912650]();
      swift_beginAccess();

      swift_unknownObjectRelease();
      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      v71 = v73;
    }

    while (v43 != v73);
  }

  else
  {
    v72 = v171;
    v74 = v171;
    v75 = v43;
    do
    {
      v74 += 8;
      swift_beginAccess();

      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      --v75;
    }

    while (v75);
  }

  v175 = v190;
  v189 = MEMORY[0x277D84F90];
  sub_2303109B8();
  if (v178)
  {
    v76 = 0;
    do
    {
      v77 = v76 + 1;
      MEMORY[0x231912650]();
      swift_beginAccess();

      swift_unknownObjectRelease();
      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      v76 = v77;
    }

    while (v43 != v77);
  }

  else
  {
    v78 = v72;
    v79 = v43;
    do
    {
      v78 += 8;
      swift_beginAccess();

      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      --v79;
    }

    while (v79);
  }

  v174 = v189;
  v188 = MEMORY[0x277D84F90];
  sub_2303109B8();
  if (v178)
  {
    v80 = 0;
    do
    {
      v81 = v80 + 1;
      MEMORY[0x231912650]();
      swift_beginAccess();

      swift_unknownObjectRelease();
      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      v80 = v81;
    }

    while (v43 != v81);
  }

  else
  {
    v82 = v72;
    do
    {
      v82 += 8;
      swift_beginAccess();

      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      --v43;
    }

    while (v43);
  }

  v172 = v188;
  v187 = MEMORY[0x277D84F90];
  sub_23009ED24(0, v170, 0);
  v30 = v187;
  if (v178)
  {
    v83 = 0;
    do
    {
      v84 = MEMORY[0x231912650](v83, v42);
      v85 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_flagged;
      swift_beginAccess();
      v86 = *(v84 + v85);
      swift_unknownObjectRelease();
      v187 = v30;
      v88 = *(v30 + 16);
      v87 = *(v30 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_23009ED24((v87 > 1), v88 + 1, 1);
        v30 = v187;
      }

      ++v83;
      *(v30 + 16) = v88 + 1;
      *(v30 + v88 + 32) = v86;
    }

    while (v181 != v83);
  }

  else
  {
    v89 = v72;
    v90 = v181;
    do
    {
      v91 = *v89;
      v92 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_flagged;
      swift_beginAccess();
      v93 = *(v91 + v92);
      v187 = v30;
      v95 = *(v30 + 16);
      v94 = *(v30 + 24);
      if (v95 >= v94 >> 1)
      {
        sub_23009ED24((v94 > 1), v95 + 1, 1);
        v30 = v187;
      }

      *(v30 + 16) = v95 + 1;
      *(v30 + v95 + 32) = v93;
      ++v89;
      --v90;
      v72 = v171;
    }

    while (v90);
  }

  v186 = MEMORY[0x277D84F90];
  sub_23009ECF4(0, v170, 0);
  v29 = v186;
  if (v178)
  {
    v96 = 0;
    do
    {
      v97 = MEMORY[0x231912650](v96, v42);
      v98 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_priority;
      swift_beginAccess();
      v99 = *(v97 + v98);
      swift_unknownObjectRelease();
      v186 = v29;
      v101 = *(v29 + 16);
      v100 = *(v29 + 24);
      if (v101 >= v100 >> 1)
      {
        sub_23009ECF4((v100 > 1), v101 + 1, 1);
        v29 = v186;
      }

      ++v96;
      *(v29 + 16) = v101 + 1;
      *(v29 + 8 * v101 + 32) = v99;
    }

    while (v181 != v96);
  }

  else
  {
    v102 = v72;
    v103 = v181;
    do
    {
      v104 = *v102;
      v105 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_priority;
      swift_beginAccess();
      v106 = *(v104 + v105);
      v186 = v29;
      v108 = *(v29 + 16);
      v107 = *(v29 + 24);
      if (v108 >= v107 >> 1)
      {
        sub_23009ECF4((v107 > 1), v108 + 1, 1);
        v29 = v186;
      }

      *(v29 + 16) = v108 + 1;
      *(v29 + 8 * v108 + 32) = v106;
      ++v102;
      --v103;
    }

    while (v103);
  }

  v185 = MEMORY[0x277D84F90];
  sub_23009ECD4(0, v170, 0);
  v28 = v185;
  if (v178)
  {
    v109 = 0;
    do
    {
      v110 = MEMORY[0x231912650](v109, v180);
      v111 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_tags;
      swift_beginAccess();
      v112 = *(v110 + v111);

      swift_unknownObjectRelease();
      v185 = v28;
      v114 = *(v28 + 16);
      v113 = *(v28 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_23009ECD4((v113 > 1), v114 + 1, 1);
        v28 = v185;
      }

      ++v109;
      *(v28 + 16) = v114 + 1;
      *(v28 + 8 * v114 + 32) = v112;
    }

    while (v181 != v109);
  }

  else
  {
    v115 = v171;
    v116 = v181;
    do
    {
      v117 = *v115;
      v118 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_tags;
      swift_beginAccess();
      v119 = *(v117 + v118);
      v185 = v28;
      v121 = *(v28 + 16);
      v120 = *(v28 + 24);

      if (v121 >= v120 >> 1)
      {
        sub_23009ECD4((v120 > 1), v121 + 1, 1);
        v28 = v185;
      }

      *(v28 + 16) = v121 + 1;
      *(v28 + 8 * v121 + 32) = v119;
      ++v115;
      --v116;
    }

    while (v116);
  }

  v183 = MEMORY[0x277D84F90];
  v122 = v181;
  sub_2303109B8();
  if (v178)
  {
    v123 = 0;
    v124 = v180;
    do
    {
      v125 = v123 + 1;
      MEMORY[0x231912650]();
      swift_beginAccess();

      swift_unknownObjectRelease();
      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      v123 = v125;
    }

    while (v181 != v125);
  }

  else
  {
    v124 = v180;
    v126 = v171;
    do
    {
      v126 += 8;
      swift_beginAccess();

      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      --v122;
    }

    while (v122);
  }

  v171 = v183;
  v184 = MEMORY[0x277D84F90];
  sub_23009ECD4(0, v170, 0);
  v27 = v184;
  if (v178)
  {
    v127 = 0;
    do
    {
      v128 = MEMORY[0x231912650](v127, v124);
      v129 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_recurrences;
      swift_beginAccess();
      v130 = *(v128 + v129);

      swift_unknownObjectRelease();
      v184 = v27;
      v132 = *(v27 + 16);
      v131 = *(v27 + 24);
      if (v132 >= v131 >> 1)
      {
        sub_23009ECD4((v131 > 1), v132 + 1, 1);
        v27 = v184;
      }

      ++v127;
      *(v27 + 16) = v132 + 1;
      *(v27 + 8 * v132 + 32) = v130;
      v124 = v180;
    }

    while (v181 != v127);
  }

  else
  {
    v133 = 32;
    do
    {
      v134 = *(v124 + v133);
      v135 = OBJC_IVAR____TtC19ReminderKitInternal39REMSuggestedAttributeReminderDataSource_recurrences;
      swift_beginAccess();
      v136 = *(v134 + v135);
      v184 = v27;
      v138 = *(v27 + 16);
      v137 = *(v27 + 24);

      if (v138 >= v137 >> 1)
      {
        sub_23009ECD4((v137 > 1), v138 + 1, 1);
        v27 = v184;
      }

      *(v27 + 16) = v138 + 1;
      *(v27 + 8 * v138 + 32) = v136;
      v133 += 8;
      v124 = v180;
      --v181;
    }

    while (v181);
  }

  v9 = v166;
  v31 = v164;
LABEL_103:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C68);
  swift_allocObject();
  v181 = sub_23015F610(v31, 0, 0xE000000000000000);
  v139 = [objc_opt_self() newObjectID];
  v140 = type metadata accessor for REMObjectID_Codable();
  v180 = objc_allocWithZone(v140);
  v141 = [v139 uuid];
  v142 = v176;
  sub_23030EBA8();

  v143 = sub_23030EB88();
  (*(v169 + 8))(v142, v177);
  v144 = [v139 entityName];
  if (!v144)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v144 = sub_23030F8B8();
    v9 = v166;
  }

  v182.receiver = v180;
  v182.super_class = v140;
  v145 = objc_msgSendSuper2(&v182, sel_initWithUUID_entityName_, v143, v144);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C70);
  swift_allocObject();
  v180 = sub_23015F504(v173, v145);
  sub_23030EB48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C78);
  swift_allocObject();
  v179 = sub_23015F368(v179, v9);
  type metadata accessor for REMSuggestedList();
  inited = swift_initStaticObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C80);
  swift_allocObject();
  v178 = sub_23015F24C(v175, inited, &qword_27DB15E00, &unk_23031EBA8, sub_230085738, sub_23008A6C8);
  type metadata accessor for REMSuggestedWeekDay();
  v147 = swift_allocObject();
  v184 = 0;
  *(v147 + 16) = sub_230310E58();
  *(v147 + 24) = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C88);
  swift_allocObject();
  v177 = sub_23015F24C(v174, v147, &qword_27DB15DF8, &unk_23031EBA0, sub_230085724, sub_23008A6B4);
  type metadata accessor for REMSuggestedLocation();
  v149 = swift_allocObject();
  *(v149 + 16) = 0x296C696E28;
  *(v149 + 24) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C90);
  swift_allocObject();
  v176 = sub_23015F24C(v172, v149, &qword_27DB15DF0, &unk_23031EB98, sub_230085710, sub_23008A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C98);
  swift_allocObject();
  v175 = sub_23015F170(v30, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15CA0);
  swift_allocObject();
  v174 = sub_23015F094(v29, 0, &qword_27DB15DE0, &unk_23031EB88, sub_23016233C);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15CA8);
  swift_allocObject();
  v150 = MEMORY[0x277D84FA0];
  v151 = sub_23015F094(v28, MEMORY[0x277D84FA0], &qword_27DB15DD8, &unk_23031EB80, sub_23016251C);
  type metadata accessor for REMSuggestedContact();
  v152 = swift_initStaticObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15CB0);
  swift_allocObject();
  v153 = sub_23015F24C(v171, v152, &qword_27DB15DD0, &unk_23031EB78, sub_230084FB8, sub_23008A294);
  swift_allocObject();
  v154 = sub_23015F094(v27, v150, &qword_27DB15DD8, &unk_23031EB80, sub_23016251C);
  v155 = v168;
  result = *&v167;
  *v168 = v167;
  v157 = v180;
  v155[2] = v181;
  v155[3] = v157;
  v158 = v178;
  v155[4] = v179;
  v155[5] = v158;
  v159 = v176;
  v155[6] = v177;
  v155[7] = v159;
  v160 = v174;
  v155[8] = v175;
  v155[9] = v160;
  v155[10] = v151;
  v155[11] = v154;
  v155[12] = v153;
  return result;
}