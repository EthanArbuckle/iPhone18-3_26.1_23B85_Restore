void *sub_23017C424(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_23017C4A8()
{
  v1 = v0 + qword_27DB16110;
  swift_beginAccess();
  return *v1;
}

unint64_t sub_23017C4F8()
{
  result = qword_27DB16120;
  if (!qword_27DB16120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16120);
  }

  return result;
}

uint64_t sub_23017C564()
{
  v14 = MEMORY[0x277D84F90];
  result = sub_23009ED88(0, 16, 0);
  v1 = v14;
  if (qword_27DB13BD0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v2 = off_27DB16108;
    v3 = *(off_27DB16108 + 2);
    if (!v3)
    {
      break;
    }

    v4 = 1;
    while (1)
    {
      v13 = 0;
      MEMORY[0x2319141A0](&v13, 8);
      v5 = (v13 * v3) >> 64;
      if (v3 > v13 * v3)
      {
        v6 = -v3 % v3;
        if (v6 > v13 * v3)
        {
          do
          {
            v13 = 0;
            MEMORY[0x2319141A0](&v13, 8);
          }

          while (v6 > v13 * v3);
          v5 = (v13 * v3) >> 64;
        }
      }

      if (v5 >= v2[2])
      {
        break;
      }

      v7 = &v2[2 * v5 + 4];
      v9 = *v7;
      v8 = v7[1];
      v14 = v1;
      v10 = *(v1 + 16);
      v11 = *(v1 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_23009ED88((v11 > 1), v10 + 1, 1);
        v1 = v14;
      }

      *(v1 + 16) = v10 + 1;
      v12 = v1 + 16 * v10;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      if (v4 == 16)
      {
        v14 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16238);
        sub_23017C924();
        return sub_23030FB08();
      }

      v3 = v2[2];
      ++v4;
      if (!v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = swift_once();
  }

  __break(1u);
  return result;
}

unint64_t sub_23017C724()
{
  result = qword_27DB16130[0];
  if (!qword_27DB16130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DB16130);
  }

  return result;
}

unint64_t sub_23017C924()
{
  result = qword_27DB16240;
  if (!qword_27DB16240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB16238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16240);
  }

  return result;
}

uint64_t FloatingPoint.isAlmostZero(absoluteTolerance:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230311278();
  v6 = sub_23030F7D8();
  (*(v3 + 8))(v5, a2);
  return v6 & 1;
}

uint64_t CLRegion.stringRepresentation.getter()
{
  v1 = [v0 identifier];
  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v0;
    [v4 center];
    sub_23030FEE8();
    MEMORY[0x231911790](44, 0xE100000000000000);
    [v4 center];
    sub_23030FEE8();
    [v4 radius];
    sub_23030FEE8();
    [v4 geoReferenceFrame];
    v6 = sub_230310E58();
    v8 = v7;
    MEMORY[0x231911790](95, 0xE100000000000000);
    MEMORY[0x231911790](0, 0xE000000000000000);

    MEMORY[0x231911790](95, 0xE100000000000000);
    MEMORY[0x231911790](0, 0xE000000000000000);

    MEMORY[0x231911790](95, 0xE100000000000000);
    MEMORY[0x231911790](v6, v8);
  }

  return v2;
}

uint64_t static EquatableCLCircularRegion.== infix(_:_:)()
{
  v0 = CLRegion.stringRepresentation.getter();
  v2 = v1;
  if (v0 == CLRegion.stringRepresentation.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_230311048();
  }

  return v5 & 1;
}

uint64_t sub_23017CD00()
{
  v0 = CLRegion.stringRepresentation.getter();
  v2 = v1;
  if (v0 == CLRegion.stringRepresentation.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_230311048();
  }

  return v5 & 1;
}

id CLPlacemark.normalizedMapRegionForLocationTrigger.getter()
{
  result = [v0 region];
  if (result)
  {
    v2 = result;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      [v3 radius];
      v6 = v5;
      v7 = objc_opt_self();
      [v7 minimumRegionMonitoringDistance];
      if (v6 >= v8)
      {
        return v4;
      }

      else
      {
        [v7 minimumRegionMonitoringDistance];
        v10 = v9;
        [v4 center];
        v12 = v11;
        v14 = v13;
        v15 = v2;
        v16 = [v4 identifier];
        if (!v16)
        {
          _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v16 = sub_23030F8B8();
        }

        v17 = [objc_allocWithZone(MEMORY[0x277CBFBC8]) initWithCenter:v16 radius:v12 identifier:{v14, v10}];

        v18 = v17;
        [v18 setNotifyOnExit_];
        [v18 setNotifyOnEntry_];
        v19 = [v4 conservativeEntry];

        [v18 setConservativeEntry_];
        [v18 setGeoReferenceFrame_];

        return v18;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id static CLPlacemark.testing_appleInc.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  v1 = sub_23030F8B8();
  [v0 setStreet_];

  v2 = sub_23030F8B8();
  [v0 setCity_];

  v3 = sub_23030F8B8();
  [v0 setState_];

  v4 = sub_23030F8B8();
  [v0 setPostalCode_];

  v5 = sub_23030F8B8();
  [v0 setCountry_];

  v6 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:37.332093 longitude:-122.030255];
  v7 = v0;
  v8 = sub_23030F8B8();
  v9 = [objc_opt_self() placemarkWithLocation:v6 name:v8 postalAddress:v7];

  return v9;
}

id static CLPlacemark.testing_applePark.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  v1 = sub_23030F8B8();
  [v0 setStreet_];

  v2 = sub_23030F8B8();
  [v0 setCity_];

  v3 = sub_23030F8B8();
  [v0 setState_];

  v4 = sub_23030F8B8();
  [v0 setPostalCode_];

  v5 = sub_23030F8B8();
  [v0 setCountry_];

  v6 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:37.3349 longitude:-122.00902];
  v7 = v0;
  v8 = sub_23030F8B8();
  v9 = [objc_opt_self() placemarkWithLocation:v6 name:v8 postalAddress:v7];

  return v9;
}

uint64_t REMApplicationShortcutUserInfoKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_23017D3E0()
{
  result = qword_27DB16248;
  if (!qword_27DB16248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16248);
  }

  return result;
}

uint64_t sub_23017D434()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_23017D4A8()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_23017D4FC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23017D580(uint64_t a1)
{
  v41 = sub_23030EBB8();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_2303106D8();
    result = MEMORY[0x277D84F90];
    if (!v5)
    {
      return result;
    }

    v49 = MEMORY[0x277D84F90];
    sub_2303109B8();
    result = sub_230310688();
    v46 = result;
    v47 = v7;
    v48 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v49 = MEMORY[0x277D84F90];
  sub_2303109B8();
  result = sub_230310658();
  v8 = *(a1 + 36);
  v46 = result;
  v47 = v8;
  v48 = 0;
LABEL_7:
  v9 = 0;
  v37 = v5;
  v38 = (v3 + 8);
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v10 = a1;
  }

  v35 = a1 + 56;
  v36 = v10;
  v33[1] = v1;
  v34 = a1 + 64;
  while (v9 < v5)
  {
    if (__OFADD__(v9++, 1))
    {
      goto LABEL_35;
    }

    v13 = v46;
    v43 = v47;
    v42 = v48;
    sub_230270864(v46, v47, v48, a1);
    v15 = v14;
    v16 = type metadata accessor for REMObjectID_Codable();
    v17 = objc_allocWithZone(v16);
    v18 = v15;
    v19 = [v18 uuid];
    v20 = v40;
    sub_23030EBA8();

    v21 = sub_23030EB88();
    (*v38)(v20, v41);
    v22 = [v18 entityName];
    if (!v22)
    {
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v22 = sub_23030F8B8();
    }

    v45.receiver = v17;
    v45.super_class = v16;
    objc_msgSendSuper2(&v45, sel_initWithUUID_entityName_, v21, v22);

    sub_230310988();
    sub_2303109C8();
    sub_2303109D8();
    result = sub_230310998();
    if (v39)
    {
      if (!v42)
      {
        goto LABEL_39;
      }

      if (sub_2303106A8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v5 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15560);
      v11 = sub_23030FF68();
      sub_230310738();
      result = v11(v44, 0);
      if (v9 == v5)
      {
LABEL_32:
        sub_2300EB170(v46, v47, v48);
        return v49;
      }
    }

    else
    {
      v23 = v43;
      if (v42)
      {
        goto LABEL_40;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v24 = 1 << *(a1 + 32);
      if (v13 >= v24)
      {
        goto LABEL_36;
      }

      v25 = v13 >> 6;
      v26 = *(v35 + 8 * (v13 >> 6));
      if (((v26 >> v13) & 1) == 0)
      {
        goto LABEL_37;
      }

      if (*(a1 + 36) != v43)
      {
        goto LABEL_38;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v24 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v25 << 6;
        v29 = v25 + 1;
        v30 = (v34 + 8 * v25);
        while (v29 < (v24 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_2300EB170(v13, v43, 0);
            v24 = __clz(__rbit64(v31)) + v28;
            goto LABEL_31;
          }
        }

        result = sub_2300EB170(v13, v43, 0);
      }

LABEL_31:
      v46 = v24;
      v47 = v23;
      v48 = 0;
      v5 = v37;
      if (v9 == v37)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23017D9EC()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB16250);
  v1 = __swift_project_value_buffer(v0, qword_27DB16250);
  if (qword_280C9B438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMRemindersListBatchDeleteInvocation.ListType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23017DEF8();
  sub_230311428();
  if (!v2)
  {
    v15 = 0;
    sub_23017DF4C();
    sub_230310CE8();
    if (v14 <= 1u)
    {
      if (v14)
      {
        type metadata accessor for REMObjectID_Codable();
        v15 = 1;
        sub_230181650(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
        sub_230310CE8();
        (*(v6 + 8))(v8, v5);
        v11 = 0;
        v10 = v14;
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v10 = 0;
        v11 = 4;
      }
    }

    else if (v14 == 2)
    {
      type metadata accessor for REMObjectID_Codable();
      v15 = 1;
      sub_230181650(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
      sub_230310CE8();
      (*(v6 + 8))(v8, v5);
      v10 = v14;
      v11 = 1;
    }

    else if (v14 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
      v15 = 2;
      sub_23005E5F0(&qword_280C9C480, &qword_280C9C5D0);
      sub_230310CE8();
      sub_230140B68(v14);
      v10 = v9;

      (*(v6 + 8))(v8, v5);
      v11 = 2;
    }

    else
    {
      type metadata accessor for REMObjectID_Codable();
      v15 = 3;
      sub_230181650(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
      sub_230310CE8();
      (*(v6 + 8))(v8, v5);
      v10 = v14;
      v11 = 3;
    }

    *a2 = v10;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23017DEF8()
{
  result = qword_27DB16270;
  if (!qword_27DB16270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16270);
  }

  return result;
}

unint64_t sub_23017DF4C()
{
  result = qword_27DB16278;
  if (!qword_27DB16278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16278);
  }

  return result;
}

uint64_t REMRemindersListBatchDeleteInvocation.ListType.encode(to:)(void *a1)
{
  v4 = sub_23030EBB8();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16280);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23017DEF8();
  sub_230311448();
  if (v11 <= 1)
  {
    if (v11)
    {
      LOBYTE(v44) = 2;
      v45 = 0;
      sub_2301815FC();
      v12 = v40;
      sub_230310DF8();
      if (v2)
      {
        return (*(v39 + 8))(v9, v12);
      }

      v29 = type metadata accessor for REMObjectID_Codable();
      v30 = objc_allocWithZone(v29);
      v31 = v10;
      v32 = v10;
      v33 = [v32 uuid];
      sub_23030EBA8();

      v34 = sub_23030EB88();
      (*(v37 + 8))(v6, v38);
      v35 = [v32 entityName];
      if (!v35)
      {
        _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v35 = sub_23030F8B8();
      }

      v42.receiver = v30;
      v42.super_class = v29;
      v27 = objc_msgSendSuper2(&v42, sel_initWithUUID_entityName_, v34, v35);
      sub_230181698(v31, 1u);

      v44 = v27;
      v45 = 1;
      sub_230181650(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
      v12 = v40;
    }

    else
    {
      LOBYTE(v44) = 1;
      v45 = 0;
      sub_2301815FC();
      v12 = v40;
      sub_230310DF8();
      if (v2)
      {
        return (*(v39 + 8))(v9, v12);
      }

      v21 = type metadata accessor for REMObjectID_Codable();
      v36 = objc_allocWithZone(v21);
      v22 = v10;
      v23 = v10;
      v24 = [v23 uuid];
      sub_23030EBA8();

      v25 = sub_23030EB88();
      (*(v37 + 8))(v6, v38);
      v26 = [v23 entityName];
      if (!v26)
      {
        _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v26 = sub_23030F8B8();
      }

      v41.receiver = v36;
      v41.super_class = v21;
      v27 = objc_msgSendSuper2(&v41, sel_initWithUUID_entityName_, v25, v26);
      sub_230181698(v22, 0);

      v44 = v27;
      v45 = 1;
      sub_230181650(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
    }

    sub_230310DF8();

    return (*(v39 + 8))(v9, v12);
  }

  if (v11 == 2)
  {
    LOBYTE(v44) = 3;
    v45 = 0;
    sub_2301815FC();
    v12 = v40;
    sub_230310DF8();
    if (!v2)
    {
      v44 = sub_23017D580(v10);
      v45 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB150A8);
      sub_2300E0D78();
      sub_230310DF8();
      (*(v39 + 8))(v9, v12);
    }
  }

  else if (v11 == 3)
  {
    LOBYTE(v44) = 4;
    v45 = 0;
    sub_2301815FC();
    v12 = v40;
    sub_230310DF8();
    if (!v2)
    {
      v13 = type metadata accessor for REMObjectID_Codable();
      v14 = objc_allocWithZone(v13);
      v15 = v10;
      v16 = v10;
      v17 = [v16 uuid];
      sub_23030EBA8();

      v18 = sub_23030EB88();
      (*(v37 + 8))(v6, v38);
      v19 = [v16 entityName];
      if (!v19)
      {
        _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v19 = sub_23030F8B8();
      }

      v43.receiver = v14;
      v43.super_class = v13;
      v20 = objc_msgSendSuper2(&v43, sel_initWithUUID_entityName_, v18, v19);
      sub_230181698(v15, 3u);

      v44 = v20;
      v45 = 3;
      sub_230181650(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
      v12 = v40;
      sub_230310DF8();
    }
  }

  else
  {
    LOBYTE(v44) = 0;
    v45 = 0;
    sub_2301815FC();
    v12 = v40;
    sub_230310DF8();
  }

  return (*(v39 + 8))(v9, v12);
}

uint64_t REMRemindersListBatchDeleteInvocation.ListType.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      sub_230310848();

      v10 = 0xD000000000000012;
    }

    else
    {
      v10 = 0x287473696CLL;
    }

    v3 = [v1 description];
LABEL_11:
    v6 = v3;
    v7 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v9 = v8;

    MEMORY[0x231911790](v7, v9);
    goto LABEL_12;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      return 7105633;
    }

    v10 = 0x2870756F7267;
    v3 = [v1 description];
    goto LABEL_11;
  }

  v10 = 0x7265646E696D6572;
  sub_23004CBA4(0, &qword_280C9C478);
  sub_23004CD24();
  v4 = sub_23030FF48();
  MEMORY[0x231911790](v4);
LABEL_12:

  MEMORY[0x231911790](41, 0xE100000000000000);
  return v10;
}

uint64_t sub_23017E87C()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23017E93C()
{
  sub_23030F9C8();
}

uint64_t sub_23017E9E8()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23017EAA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2301838A4();
  *a1 = result;
  return result;
}

void sub_23017EAD4(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1702060386;
  v4 = 0xEB00000000734449;
  v5 = 0x7265646E696D6572;
  if (*v1 != 2)
  {
    v5 = 0x444970756F7267;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x44497473696CLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23017EB50()
{
  v1 = 1702060386;
  v2 = 0x7265646E696D6572;
  if (*v0 != 2)
  {
    v2 = 0x444970756F7267;
  }

  if (*v0)
  {
    v1 = 0x44497473696CLL;
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

uint64_t sub_23017EBC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2301838A4();
  *a1 = result;
  return result;
}

uint64_t sub_23017EBF0(uint64_t a1)
{
  v2 = sub_23017DEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23017EC2C(uint64_t a1)
{
  v2 = sub_23017DEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23017EC74()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23017ED54()
{
  sub_23030F9C8();
}

uint64_t sub_23017EE20()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23017EEFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230183944();
  *a1 = result;
  return result;
}

void sub_23017EF2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0xEF7473694C747261;
  v6 = 0x6D536D6F74737563;
  v7 = 0xE900000000000073;
  v8 = 0x7265646E696D6572;
  if (v2 != 3)
  {
    v8 = 0x70756F7267;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1953720684;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t REMRemindersListBatchDeleteInvocation.CompletionDatePredicate.hasReminders(completedBefore:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_23030EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2301818F8(v1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_230061918(v4, &unk_27DB15AA0);
    v9 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_230181650(&qword_280C9C418, MEMORY[0x277CC9578]);
    v10 = sub_23030F7D8();
    (*(v6 + 8))(v8, v5);
    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_23017F290(uint64_t a1)
{
  v2 = sub_230181968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23017F2CC(uint64_t a1)
{
  v2 = sub_230181968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListBatchDeleteInvocation.CompletionDatePredicate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB162A0);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for REMRemindersListBatchDeleteInvocation.CompletionDatePredicate(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230181968();
  sub_230311428();
  if (!v2)
  {
    v13 = v16;
    sub_23030EB58();
    sub_230181650(&qword_280C9B738, MEMORY[0x277CC9578]);
    sub_230310C88();
    (*(v17 + 8))(v9, v7);
    sub_2300E0878(v6, v12);
    sub_230181D68(v12, v13, type metadata accessor for REMRemindersListBatchDeleteInvocation.CompletionDatePredicate);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.list.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_2301819DC(v2, v3);
}

uint64_t REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.completedBeforeDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(0) + 20);

  return sub_2301818F8(v3, a1);
}

uint64_t REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.init(list:completedBeforeDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v4;
  v5 = a3 + *(type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(0) + 20);

  return sub_2300E0878(a2, v5);
}

uint64_t sub_23017F6BC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_23017F6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953720684 && a2 == 0xE400000000000000;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230342A40 == a2)
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

uint64_t sub_23017F7D8(uint64_t a1)
{
  v2 = sub_230181A34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23017F814(uint64_t a1)
{
  v2 = sub_230181A34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB162A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230181A34();
  sub_230311448();
  v9 = *(v3 + 8);
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_2301819DC(v12, v9);
  sub_2300DB214();
  sub_230310DF8();
  sub_230181698(v12, v13);
  if (!v2)
  {
    type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(0);
    v11[14] = 1;
    sub_23030EB58();
    sub_230181650(&qword_280C9B760, MEMORY[0x277CC9578]);
    sub_230310D98();
  }

  return (*(v6 + 8))(v8, v5);
}

void REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB162B8);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230181A34();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = v10;
    v13 = v18;
    v23 = 0;
    sub_230181A88();
    v14 = v19;
    sub_230310CE8();
    v15 = v21;
    *v12 = v20;
    v12[8] = v15;
    sub_23030EB58();
    v22 = 1;
    sub_230181650(&qword_280C9B738, MEMORY[0x277CC9578]);
    sub_230310C88();
    (*(v13 + 8))(v9, v14);
    sub_2300E0878(v6, &v12[*(v16 + 20)]);
    sub_230181E3C(v12, v17, type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_230181ADC(v12);
  }
}

uint64_t REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.init(deletedReminderIDs:accounts:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_23017FD94()
{
  if (*v0)
  {
    return 0x73746E756F636361;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_23017FDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000230342A60 == a2 || (sub_230311048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_230311048();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_23017FEBC(uint64_t a1)
{
  v2 = sub_230181B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23017FEF8(uint64_t a1)
{
  v2 = sub_230181B38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB162C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230181B38();

  sub_230311448();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  sub_23005E5F0(&qword_280C9B990, qword_280C9BFD8);
  sub_230310DF8();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB162D8);
    sub_230181B8C();
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListBatchDeleteInvocation.DeleteInvocation.Result.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB162E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230181B38();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  v13 = 0;
  sub_23005E5F0(&qword_280C9C480, &qword_280C9C5D0);
  sub_230310CE8();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB162D8);
  v13 = 1;
  sub_230181C40();
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230180410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000230342A20 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230311048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2301804A4(uint64_t a1)
{
  v2 = sub_230181CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301804E0(uint64_t a1)
{
  v2 = sub_230181CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230180560(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_230311448();
  sub_23030EB58();
  sub_230181650(&qword_280C9B760, MEMORY[0x277CC9578]);
  sub_230310D98();
  return (*(v7 + 8))(v9, v6);
}

uint64_t REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16308);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230181CF4();
  sub_230311428();
  if (!v2)
  {
    v13 = v16;
    sub_23030EB58();
    sub_230181650(&qword_280C9B738, MEMORY[0x277CC9578]);
    sub_230310C88();
    (*(v17 + 8))(v9, v7);
    sub_2300E0878(v6, v12);
    sub_230181D68(v12, v13, type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2301809A0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_230311448();
  sub_23030EB58();
  sub_230181650(&qword_280C9B760, MEMORY[0x277CC9578]);
  sub_230310D98();
  return (*(v9 + 8))(v11, v8);
}

id REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

id REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_230180C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(uint64_t *__return_ptr, id, uint64_t), const char *a6)
{
  v60 = a6;
  v61 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v53 - v14);
  v16 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = sub_2301818F8(a2, v19 + *(v17 + 28));
  *v19 = v20;
  *(v19 + 8) = v21;
  v23 = objc_allocWithZone(a4(v22));
  sub_2301819DC(v20, v21);
  v24 = [v23 initWithFetchResultTokenToDiffAgainst_];
  v61(&v62, v24, v19);
  if (v6)
  {
    sub_230181ADC(v19);
  }

  else
  {
    v56 = v13;
    v57 = v19;
    v61 = v15;
    v58 = v24;
    v59 = 0;
    v19 = v62;
    v25 = v63;

    if (qword_27DB13BD8 != -1)
    {
      swift_once();
    }

    v26 = sub_23030EF48();
    __swift_project_value_buffer(v26, qword_27DB16250);
    v27 = v61;
    sub_2301818F8(a2, v61);

    sub_2301819DC(v20, v21);

    v28 = sub_23030EF38();
    v29 = sub_2303102A8();
    sub_230181698(v20, v21);
    if (os_log_type_enabled(v28, v29))
    {
      v54 = v29;
      v55 = v25;
      v30 = v27;
      v31 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v65 = v53;
      *v31 = 136315650;
      v62 = v20;
      LOBYTE(v63) = v21;
      v32 = REMRemindersListBatchDeleteInvocation.ListType.description.getter();
      v34 = sub_23004E30C(v32, v33, &v65);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v35 = v56;
      sub_2301818F8(v30, v56);
      v36 = sub_23030EB58();
      v37 = *(v36 - 8);
      v38 = (*(v37 + 48))(v35, 1, v36);
      v39 = v57;
      if (v38 == 1)
      {
        sub_230061918(v35, &unk_27DB15AA0);
        v40 = 0xE300000000000000;
        v41 = 7104878;
      }

      else
      {
        v43 = v28;
        v44 = v35;
        v41 = sub_23030EA58();
        v40 = v45;
        v46 = v44;
        v28 = v43;
        (*(v37 + 8))(v46, v36);
      }

      sub_230061918(v61, &unk_27DB15AA0);
      v47 = sub_23004E30C(v41, v40, &v65);

      *(v31 + 14) = v47;
      *(v31 + 22) = 2048;
      if ((v19 & 0xC000000000000001) != 0)
      {
        v48 = sub_2303106D8();
      }

      else
      {
        v48 = *(v19 + 16);
      }

      v49 = v60;
      v50 = v58;

      *(v31 + 24) = v48;

      _os_log_impl(&dword_230044000, v28, v54, v49, v31, 0x20u);
      v51 = v53;
      swift_arrayDestroy();
      MEMORY[0x231914180](v51, -1, -1);
      MEMORY[0x231914180](v31, -1, -1);

      v42 = v39;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      sub_230061918(v27, &unk_27DB15AA0);
      v42 = v57;
    }

    sub_230181ADC(v42);
  }

  return v19;
}

void static REMRemindersListBatchDeleteInvocation.completionDatePredicate(for:store:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14ED0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = [objc_allocWithZone(type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation()) initWithFetchResultTokenToDiffAgainst_];
  v21 = v47;
  sub_2300C04DC(v20, v18, v19, v8);
  if (v21)
  {
  }

  else
  {
    v44 = v12;
    v45 = 0;
    v47 = v15;
    v22 = v46;
    sub_230181E3C(v8, v5, type metadata accessor for REMRemindersListBatchDeleteInvocation.OldestCompletionDateInvocation.Result);
    sub_230061918(v8, &qword_27DB14ED0);
    sub_2300E0878(v5, v17);
    if (qword_27DB13BD8 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB16250);
    v24 = v47;
    sub_2301818F8(v17, v47);
    sub_2301819DC(v18, v19);
    v25 = sub_23030EF38();
    v26 = sub_2303102A8();
    sub_230181698(v18, v19);
    if (os_log_type_enabled(v25, v26))
    {
      v42 = v26;
      v43 = v17;
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v27 = 136315394;
      v48 = v18;
      v49 = v19;
      v28 = REMRemindersListBatchDeleteInvocation.ListType.description.getter();
      v30 = sub_23004E30C(v28, v29, &v50);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v31 = v44;
      sub_2301818F8(v24, v44);
      v32 = sub_23030EB58();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v31, 1, v32) == 1)
      {
        sub_230061918(v31, &unk_27DB15AA0);
        v34 = 0xE300000000000000;
        v35 = 7104878;
      }

      else
      {
        v35 = sub_23030EA58();
        v34 = v37;
        (*(v33 + 8))(v31, v32);
      }

      v36 = v22;
      sub_230061918(v47, &unk_27DB15AA0);
      v38 = sub_23004E30C(v35, v34, &v50);

      *(v27 + 14) = v38;
      _os_log_impl(&dword_230044000, v25, v42, "REMRemindersListBatchDeleteInvocation_OldestCompletionDateInvocation RESULT {list: %s, oldestCompletionDate: %s}", v27, 0x16u);
      v39 = v41;
      swift_arrayDestroy();
      MEMORY[0x231914180](v39, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);

      v17 = v43;
    }

    else
    {

      sub_230061918(v24, &unk_27DB15AA0);
      v36 = v22;
    }

    sub_2300E0878(v17, v36);
  }
}

unint64_t sub_2301815FC()
{
  result = qword_27DB16288;
  if (!qword_27DB16288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16288);
  }

  return result;
}

uint64_t sub_230181650(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_230181698(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    goto LABEL_2;
  }

  if (a2 == 2)
  {
  }

  else if (a2 == 3)
  {
LABEL_2:
  }
}

uint64_t _s19ReminderKitInternal37REMRemindersListBatchDeleteInvocationC0E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (*(a1 + 8))
    {
      if (v5 == 1)
      {
        sub_23004CBA4(0, &qword_280C9B980);
        sub_2301819DC(v4, 1u);
        sub_2301819DC(v2, 1u);
        LOBYTE(v6) = sub_230310448();
        sub_230181698(v2, 1u);
        v7 = v4;
        v8 = 1;
        goto LABEL_19;
      }
    }

    else if (!*(a2 + 8))
    {
      sub_23004CBA4(0, &qword_280C9B980);
      sub_2301819DC(v4, 0);
      sub_2301819DC(v2, 0);
      v6 = sub_230310448();
      sub_230181698(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_19;
    }
  }

  else if (v3 == 2)
  {
    if (v5 == 2)
    {
      sub_2301819DC(*a2, 2u);
      sub_2301819DC(v2, 2u);
      LOBYTE(v6) = sub_2300A6C64(v2, v4);
      sub_230181698(v2, 2u);
      v7 = v4;
      v8 = 2;
      goto LABEL_19;
    }
  }

  else if (v3 == 3)
  {
    if (v5 == 3)
    {
      sub_23004CBA4(0, &qword_280C9B980);
      sub_2301819DC(v4, 3u);
      sub_2301819DC(v2, 3u);
      LOBYTE(v6) = sub_230310448();
      sub_230181698(v2, 3u);
      v7 = v4;
      v8 = 3;
LABEL_19:
      sub_230181698(v7, v8);
      return v6 & 1;
    }
  }

  else if (v5 == 4 && v4 == 0)
  {
    sub_230181698(*a1, 4u);
    sub_230181698(0, 4u);
    return 1;
  }

  sub_2301819DC(*a2, *(a2 + 8));
  sub_2301819DC(v2, v3);
  sub_230181698(v2, v3);
  sub_230181698(v4, v5);
  return 0;
}

uint64_t sub_2301818F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_230181968()
{
  result = qword_27DB16298;
  if (!qword_27DB16298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16298);
  }

  return result;
}

id sub_2301819DC(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  if (a2 == 2)
  {
  }

  if (a2 == 3)
  {
    return result;
  }

  return result;
}

unint64_t sub_230181A34()
{
  result = qword_27DB162B0;
  if (!qword_27DB162B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB162B0);
  }

  return result;
}

unint64_t sub_230181A88()
{
  result = qword_27DB162C0;
  if (!qword_27DB162C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB162C0);
  }

  return result;
}

uint64_t sub_230181ADC(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230181B38()
{
  result = qword_27DB162D0;
  if (!qword_27DB162D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB162D0);
  }

  return result;
}

unint64_t sub_230181B8C()
{
  result = qword_27DB162E0;
  if (!qword_27DB162E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB162D8);
    sub_230181650(qword_280C9AEC8, type metadata accessor for REMAccount_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB162E0);
  }

  return result;
}

unint64_t sub_230181C40()
{
  result = qword_27DB162F0;
  if (!qword_27DB162F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB162D8);
    sub_230181650(&qword_280C9B710, type metadata accessor for REMAccount_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB162F0);
  }

  return result;
}

unint64_t sub_230181CF4()
{
  result = qword_27DB16300;
  if (!qword_27DB16300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16300);
  }

  return result;
}

uint64_t sub_230181D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_230181E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_230181EA4()
{
  result = qword_27DB16318;
  if (!qword_27DB16318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16318);
  }

  return result;
}

uint64_t assignWithCopy for REMRemindersListBatchDeleteInvocation.ListType(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_2301819DC(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_230181698(v5, v6);
  return a1;
}

uint64_t assignWithTake for REMRemindersListBatchDeleteInvocation.ListType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_230181698(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMRemindersListBatchDeleteInvocation.ListType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REMRemindersListBatchDeleteInvocation.ListType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_2301820FC(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_230182114(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

char *initializeBufferWithCopyOfBuffer for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = &v13[(v5 + 16) & ~v5];
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    sub_2301819DC(*a2, v8);
    *a1 = v7;
    a1[8] = v8;
    v9 = *(a3 + 20);
    v10 = sub_23030EB58();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2 + v9, 1, v10))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(&a1[v9], a2 + v9, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&a1[v9], a2 + v9, v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
    }
  }

  return a1;
}

uint64_t destroy for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(uint64_t a1, uint64_t a2)
{
  sub_230181698(*a1, *(a1 + 8));
  v4 = *(a2 + 20);
  v5 = sub_23030EB58();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t initializeWithCopy for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_2301819DC(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(a3 + 20);
  v9 = sub_23030EB58();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  return a1;
}

uint64_t assignWithCopy for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_2301819DC(*a2, v7);
  v8 = *a1;
  *a1 = v6;
  v9 = *(a1 + 8);
  *(a1 + 8) = v7;
  sub_230181698(v8, v9);
  v10 = *(a3 + 20);
  v11 = sub_23030EB58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  LODWORD(v6) = v13(a1 + v10, 1, v11);
  v14 = v13(a2 + v10, 1, v11);
  if (!v6)
  {
    if (!v14)
    {
      (*(v12 + 24))(a1 + v10, a2 + v10, v11);
      return a1;
    }

    (*(v12 + 8))(a1 + v10, v11);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy((a1 + v10), (a2 + v10), *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v12 + 16))(a1 + v10, a2 + v10, v11);
  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t initializeWithTake for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 20);
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for REMRemindersListBatchDeleteInvocation.DeleteInvocation.Parameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *a1;
  *a1 = *a2;
  v8 = *(a1 + 8);
  *(a1 + 8) = v6;
  sub_230181698(v7, v8);
  v9 = *(a3 + 20);
  v10 = sub_23030EB58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy((a1 + v9), (a2 + v9), *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v11 + 32))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

void sub_230182950()
{
  sub_23005AFA0();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t *sub_2301829F8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
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

void *sub_230182B74(void *a1, const void *a2)
{
  v4 = sub_23030EB58();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_230182CA4(void *a1, void *a2)
{
  v4 = sub_23030EB58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0) - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *sub_230182E48(void *a1, const void *a2)
{
  v4 = sub_23030EB58();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_230182F78(void *a1, void *a2)
{
  v4 = sub_23030EB58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0) - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_230183238()
{
  sub_23005AFA0();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_230183328()
{
  result = qword_27DB16358;
  if (!qword_27DB16358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16358);
  }

  return result;
}

unint64_t sub_230183380()
{
  result = qword_27DB16360;
  if (!qword_27DB16360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16360);
  }

  return result;
}

unint64_t sub_2301833D8()
{
  result = qword_27DB16368;
  if (!qword_27DB16368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16368);
  }

  return result;
}

unint64_t sub_230183430()
{
  result = qword_27DB16370;
  if (!qword_27DB16370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16370);
  }

  return result;
}

unint64_t sub_230183488()
{
  result = qword_27DB16378;
  if (!qword_27DB16378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16378);
  }

  return result;
}

unint64_t sub_2301834E0()
{
  result = qword_27DB16380;
  if (!qword_27DB16380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16380);
  }

  return result;
}

unint64_t sub_230183538()
{
  result = qword_27DB16388;
  if (!qword_27DB16388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16388);
  }

  return result;
}

unint64_t sub_230183590()
{
  result = qword_27DB16390;
  if (!qword_27DB16390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16390);
  }

  return result;
}

unint64_t sub_2301835E8()
{
  result = qword_27DB16398;
  if (!qword_27DB16398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16398);
  }

  return result;
}

unint64_t sub_230183640()
{
  result = qword_27DB163A0;
  if (!qword_27DB163A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB163A0);
  }

  return result;
}

unint64_t sub_230183698()
{
  result = qword_27DB163A8;
  if (!qword_27DB163A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB163A8);
  }

  return result;
}

unint64_t sub_2301836F0()
{
  result = qword_27DB163B0;
  if (!qword_27DB163B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB163B0);
  }

  return result;
}

unint64_t sub_230183748()
{
  result = qword_27DB163B8;
  if (!qword_27DB163B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB163B8);
  }

  return result;
}

unint64_t sub_2301837A0()
{
  result = qword_27DB163C0;
  if (!qword_27DB163C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB163C0);
  }

  return result;
}

unint64_t sub_2301837F8()
{
  result = qword_27DB163C8;
  if (!qword_27DB163C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB163C8);
  }

  return result;
}

unint64_t sub_230183850()
{
  result = qword_27DB163D0;
  if (!qword_27DB163D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB163D0);
  }

  return result;
}

uint64_t sub_2301838A4()
{
  v0 = sub_230310C08();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2301838F0()
{
  result = qword_27DB163D8;
  if (!qword_27DB163D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB163D8);
  }

  return result;
}

uint64_t sub_230183944()
{
  v0 = sub_230310C08();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_230183A10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a3)
    {
      a3();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Publisher.infiniteRetry()(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23030F038();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(v5, v1, a1);
  sub_23030F028();
  swift_getWitnessTable();
  sub_23030F1C8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t Publisher<>.sinkNextOutput(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *(v8 + 24) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v8;
  v12[5] = v10;
  v12[6] = v11;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = sub_230183FB0;
  v13[5] = v12;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_230183FB0;
  v14[5] = v12;
  swift_retain_n();

  v15 = sub_23030F208();

  swift_beginAccess();
  *(v11 + 16) = v15;
}

uint64_t sub_230183E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[7] = a2;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a3 + 16;
  v11[5] = a4 + 16;
  v7 = type metadata accessor for UnfairLock();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_230311408();
  swift_getFunctionTypeMetadata1();
  v8 = sub_2303104C8();
  result = Lock.sync<A>(_:)(sub_2301861D0, v11, v7, v8, &protocol witness table for UnfairLock);
  v10 = v12;
  if (v12)
  {

    v10(a1);
    sub_2300528E4(v10);
    return sub_2300528E4(v10);
  }

  return result;
}

uint64_t (*sub_230183FC0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>))()
{
  result = swift_beginAccess();
  v11 = *a1;
  if (*a1)
  {
    v12 = a1[1];
    swift_beginAccess();
    if (*a2)
    {
      sub_230048758(v11);

      sub_23030F0E8();
    }

    else
    {
    }

    swift_beginAccess();
    *a2 = 0;

    swift_beginAccess();
    v13 = *a1;
    *a1 = 0;
    a1[1] = 0;
    sub_2300528E4(v13);
    result = swift_allocObject();
    *(result + 2) = a3;
    *(result + 3) = a4;
    *(result + 4) = v11;
    *(result + 5) = v12;
    *a5 = sub_2301861DC;
    a5[1] = result;
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
  }

  return result;
}

uint64_t sub_2301840EC(void **a1, void (*a2)(uint64_t *))
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v4 = sub_230311408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - v6);
  v8 = *a1;
  if (v8)
  {
    *v7 = v8;
    swift_storeEnumTagMultiPayload();
    v9 = v8;
  }

  else
  {
    sub_23018617C();
    *v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  a2(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_230184274(uint64_t a1, void (*a2)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v5 = sub_230311408();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v10 - v7, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

void Publisher<>.waitForNextOutput()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v30 = a3;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v4 = sub_230311408();
  v5 = sub_2303104C8();
  v31 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = *(v4 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = dispatch_group_create();
  v15 = swift_allocBox();
  v17 = v16;
  v28 = v9;
  v29 = v4;
  (*(v9 + 56))(v16, 1, 1, v4);
  dispatch_group_enter(v14);
  v18 = swift_allocObject();
  v19 = v32;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = v15;
  v18[5] = v14;

  v20 = v14;
  Publisher<>.sinkNextOutput(_:)(sub_230184968, v18, a1, v19);
  v21 = v13;
  v22 = v31;

  sub_2303102D8();
  swift_beginAccess();
  (*(v22 + 16))(v8, v17, v5);
  v23 = v33;
  Optional.tryUnwrap(_:file:line:)(0xD000000000000021, 0x8000000230342B30, 0xD000000000000071, 0x8000000230342AB0, 116, v5, v21);
  (*(v22 + 8))(v8, v5);
  if (!v23)
  {
    v24 = v28;
    v25 = v29;
    (*(v28 + 16))(v27, v21, v29);
    sub_23004B988(v25, &v34, v30);
    (*(v24 + 8))(v21, v25);
  }
}

void sub_2301847A0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v5 = sub_230311408();
  v6 = sub_2303104C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = swift_projectBox();
  v11 = *(v5 - 8);
  (*(v11 + 16))(v9, a1, v5);
  (*(v11 + 56))(v9, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(v10, v9, v6);
  dispatch_group_leave(a3);
}

uint64_t Publisher<>.legacyPromise()()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Promise();
  return Promise.__allocating_init(resolver:)(sub_230184ABC);
}

uint64_t sub_2301849FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a1;
  v13[7] = a2;

  Publisher<>.sinkNextOutput(_:)(sub_23018616C, v13, a6, a7);
}

void sub_230184AC8(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v11 = sub_230311408();
  MEMORY[0x28223BE20](v11);
  v13 = (&v16 - v12);
  (*(v14 + 16))(&v16 - v12, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v13;
    a2(*v13);
  }

  else
  {
    (*(v8 + 32))(v10, v13, AssociatedTypeWitness);
    a4(v10);
    (*(v8 + 8))(v10, AssociatedTypeWitness);
  }
}

uint64_t Publisher<>.rem_bufferedValues.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return sub_230185524(a1, qword_27DB16080, MEMORY[0x277CBCEE0], a2);
}

{
  return sub_230185524(a1, &qword_27DB163E0, MEMORY[0x277CBCEF8], a2);
}

uint64_t Publisher<>.firstValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_230184D20, 0, 0);
}

{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_2301857F4, 0, 0);
}

uint64_t sub_230184D20()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v0[2] = 0;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v0 + 2;
  v4[5] = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_230184E50;
  v7 = v0[3];

  return MEMORY[0x2822008A0](v7, 0, 0, 0x6C61567473726966, 0xEC00000029286575, sub_230185338, v4, AssociatedTypeWitness);
}

uint64_t sub_230184E50()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_230184FD0;
  }

  else
  {

    v2 = sub_230184F6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230184F6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230184FD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23018503C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v30 = a1;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v7 = sub_23030FE78();
  v8 = *(v7 - 8);
  v24[1] = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = sub_23030F018();
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  MEMORY[0x28223BE20](v11);
  v25 = a5;
  v26 = v24 - v13;
  sub_23030F218();
  v14 = *(v8 + 16);
  v14(v10, v30, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = *(v8 + 32);
  v17(v16 + v15, v10, v7);
  v14(v10, v30, v7);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 16) = a4;
  *(v18 + 24) = v19;
  v17(v18 + v15, v10, v7);
  v20 = v27;
  swift_getWitnessTable();
  v21 = v26;
  v22 = sub_23030F208();

  (*(v28 + 8))(v21, v20);
  *v29 = v22;
}

void *sub_230185344(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = result;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
    sub_23030FE78();
    return sub_23030FE58();
  }

  return result;
}

uint64_t sub_2301853EC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v4 + 16))(&v6 - v3, a1, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_23030FE78();
  return sub_23030FE68();
}

uint64_t sub_230185524@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, void (*a3)(uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v18[2] = a4;
  v19 = a3;
  v18[0] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = sub_23030EFD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23030F048();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - v14;
  (*(v9 + 104))(v11, *MEMORY[0x277CBCBD0], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CBCBE8], v4);
  sub_23030F238();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  WitnessTable = swift_getWitnessTable();
  v19(v12, WitnessTable);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2301857F4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v0[2] = 0;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v0 + 2;
  v4[5] = v2;
  v5 = swift_task_alloc();
  v0[8] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_230185924;
  v7 = v0[3];

  return MEMORY[0x2822007B8](v7, 0, 0, 0x6C61567473726966, 0xEC00000029286575, sub_230185D24, v4, AssociatedTypeWitness);
}

uint64_t sub_230185924()
{

  return MEMORY[0x2822009F8](sub_230185A3C, 0, 0);
}

uint64_t sub_230185A3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230185A9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a2;
  swift_getAssociatedTypeWitness();
  v8 = sub_23030FE78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = sub_23030F018();
  v19 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_23030F218();
  (*(v9 + 16))(v11, a1, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  (*(v9 + 32))(v16 + v15, v11, v8);
  swift_getWitnessTable();
  v17 = sub_23030F208();

  (*(v19 + 8))(v14, v12);
  *v20 = v17;
}

uint64_t sub_230185D40(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v4 + 16))(&v6 - v3, a1, AssociatedTypeWitness);
  sub_23030FE78();
  return sub_23030FE68();
}

uint64_t sub_230185E40(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_23030FE78();

  return sub_230185D40(a1);
}

void *sub_230185EF8(void **a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_23030FE78();

  return sub_230185344(a1);
}

uint64_t objectdestroy_37Tm()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v1 = sub_23030FE78();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_230186098(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  sub_23030FE78();

  return sub_2301853EC(a1);
}

unint64_t sub_23018617C()
{
  result = qword_280C99EA0;
  if (!qword_280C99EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99EA0);
  }

  return result;
}

uint64_t sub_230186288(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_2301862FC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_23018635C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id sub_230186424()
{
  swift_beginAccess();

  v0 = sub_23030F8B8();

  return v0;
}

id sub_230186514(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC19ReminderKitInternal13MockACAccount_rem_mockChildren);
  v20 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_31:
    v5 = sub_2303106D8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231912650](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      result = [v7 accountType];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v11 = result;
      v12 = [result identifier];

      if (v12)
      {
        v13 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v15 = v14;

        if (a2)
        {
          if (v13 == a1 && v15 == a2)
          {

LABEL_24:
            sub_230310988();
            sub_2303109C8();
            sub_2303109D8();
            sub_230310998();
            goto LABEL_7;
          }

          v17 = sub_230311048();

          if (v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
        }
      }

      else if (!a2)
      {
        goto LABEL_24;
      }

LABEL_7:
      ++v6;
      if (v9 == v5)
      {
        v18 = v20;
        goto LABEL_28;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_28:

  return v18;
}

void sub_230186858(char a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      swift_beginAccess();
      sub_2300A9538(&v4, a2);
      v3 = v4;
LABEL_6:
      swift_endAccess();

      return;
    }

    __break(1u);
  }

  else if (a2)
  {
    swift_beginAccess();
    v3 = sub_230187468();
    goto LABEL_6;
  }

  __break(1u);
}

id sub_230186B34(void *a1, SEL *a2)
{
  v4 = [objc_allocWithZone(v2) *a2];

  return v4;
}

id sub_230186B8C(void *a1, SEL *a2)
{
  v5 = &v2[OBJC_IVAR____TtC19ReminderKitInternal13MockACAccount_rem_aa_primaryEmailMock];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC19ReminderKitInternal13MockACAccount_rem_aa_altDSIDMock];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC19ReminderKitInternal13MockACAccount_rem_mockChildren] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC19ReminderKitInternal13MockACAccount_rem_enabledDataClasses] = MEMORY[0x277D84FA0];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for MockACAccount();
  v7 = objc_msgSendSuper2(&v9, *a2, a1);

  if (v7)
  {
  }

  return v7;
}

id MockACAccount.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockACAccount();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MockACAccount.MockACAccountSetUpError.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

id static MockACAccount.rem_setupRemindersEnabledMockAAAccount(with:aa_accountClass:childCalDAVAccountIdentifier:remAppleAccountUtilities:accountConfigBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v4 = objc_allocWithZone(MEMORY[0x277CB8F58]);
  v5 = sub_23030F8B8();

  v6 = sub_23030F8B8();
  v7 = [v4 initWithIdentifier:v5 description:v6];

  v8 = [objc_allocWithZone(type metadata accessor for MockACAccount()) initWithAccountType_];
  if (v8)
  {
    v9 = v8;
    [v9 aa:a3 setAccountClass:?];
    v10 = sub_23030F8B8();
    [v9 setIdentifier_];

    [v9 setEnabled:1 forDataclass:*MEMORY[0x277CB8A18]];
    v11 = sub_23030F8B8();
    [v9 setAccountProperty:v11 forKey:*MEMORY[0x277CB8B18]];

    v12 = [v9 provisionedDataclasses];
    if (v12)
    {
      v13 = v12;
      v17[0] = 0;
      type metadata accessor for Dataclass(0);
      sub_230187670(&qword_27DB140A0, type metadata accessor for Dataclass);
      sub_23030FF28();
    }

    sub_23018761C();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
  }

  else
  {
    sub_23018761C();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }

  return v8;
}

uint64_t static MockACAccount.make_aa_altDSIDMock(from:)()
{
  strcpy(v1, "altDSIDMock:");
  MEMORY[0x231911790]();
  return v1[0];
}

uint64_t sub_230187468()
{
  v1 = v0;
  v2 = *v0;
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  sub_230311358();
  sub_23030F9C8();
  v3 = sub_2303113A8();

  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v9 = v8;
    if (v7 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v9 == v10)
    {
      break;
    }

    v12 = sub_230311048();

    if (v12)
    {
      goto LABEL_11;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  v17 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2300AC850();
    v15 = v17;
  }

  v13 = *(*(v15 + 48) + 8 * v5);
  sub_230187910(v5);
  *v1 = v17;
  return v13;
}

unint64_t sub_23018761C()
{
  result = qword_27DB16408;
  if (!qword_27DB16408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16408);
  }

  return result;
}

uint64_t sub_230187670(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2301876BC()
{
  result = qword_27DB16410;
  if (!qword_27DB16410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16410);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

unint64_t sub_2301878C4()
{
  result = qword_280C99CD0;
  if (!qword_280C99CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C99CD0);
  }

  return result;
}

unint64_t sub_230187910(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_230310668();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        sub_230311358();
        v11 = v10;
        sub_23030F9C8();
        v12 = sub_2303113A8();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_230187AF0(uint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v44 = MEMORY[0x277D84F90];
  a1 = sub_23009EDEC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v6;
    v39 = v6;
    v40 = v6 & 0xC000000000000001;
    v5 = v44;
    v36 = v2;
    v37 = v6 & 0xFFFFFFFFFFFFFF8;
    v38 = v4;
    while (1)
    {
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        v35 = a1;
        v4 = sub_2303106D8();
        a1 = v35;
        goto LABEL_3;
      }

      v41 = v7 + 1;
      v42 = v5;
      if (v40)
      {
        v9 = MEMORY[0x231912650](v7, v8);
      }

      else
      {
        if (v7 >= *(v37 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v8 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 displayName];
      v12 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v14 = v13;

      v15 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *a2;
      v43 = *a2;
      v18 = a2;
      *a2 = 0x8000000000000000;
      a2 = sub_23005EE00(v12, v14);
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      a1 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_27;
      }

      v22 = v19;
      if (v17[3] >= a1)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v24 = v43;
          if (v19)
          {
            goto LABEL_18;
          }
        }

        else
        {
          a1 = sub_23008B1C4();
          v24 = v43;
          if (v22)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_230086A78(a1, isUniquelyReferenced_nonNull_native);
        a1 = sub_23005EE00(v12, v14);
        if ((v22 & 1) != (v23 & 1))
        {
          goto LABEL_32;
        }

        a2 = a1;
        v24 = v43;
        if (v22)
        {
LABEL_18:
          v25 = v24[7];
          v26 = *(v25 + 8 * a2);
          *(v25 + 8 * a2) = v15;

          goto LABEL_22;
        }
      }

      v24[(a2 >> 6) + 8] |= 1 << a2;
      v27 = (v24[6] + 16 * a2);
      *v27 = v12;
      v27[1] = v14;
      *(v24[7] + 8 * a2) = v15;
      v28 = v24[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_28;
      }

      v24[2] = v30;
LABEL_22:
      a2 = v18;
      *v18 = v24;

      v5 = v42;
      v32 = *(v42 + 16);
      v31 = *(v42 + 24);
      v33 = v32 + 1;
      v8 = v39;
      if (v32 >= v31 >> 1)
      {
        a1 = sub_23009EDEC((v31 > 1), v32 + 1, 1);
        v8 = v39;
        v5 = v42;
      }

      *(v5 + 16) = v33;
      ++v7;
      if (v41 == v38)
      {
        return v5;
      }
    }
  }

  __break(1u);
LABEL_32:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t sub_230187DCC(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v33 = *(a1 + 16);
  if (!v33)
  {
    return v1;
  }

  v2 = 0;
  v32 = a1 + 32;
  v3 = &qword_27DB16590;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = (v32 + 48 * v2);
    v7 = v6[5];
    v8 = *(v7 + 16);
    if (v8)
    {
      v37 = v4;
      v9 = *v6;
      v35 = *v6;
      v36[0] = v1;
      sub_23019E990(v9);

      sub_2303109B8();
      v10 = 32;
      do
      {
        v11 = *(v7 + v10);
        sub_230310988();
        sub_2303109C8();
        sub_2303109D8();
        sub_230310998();
        v10 += 32;
        --v8;
      }

      while (v8);
      sub_23019E9DC(v35);

      v1 = v36[0];
      v3 = &qword_27DB16590;
      v4 = v37;
    }

    v12 = v1 >> 62;
    if (v1 >> 62)
    {
      v13 = sub_2303106D8();
    }

    else
    {
      v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v4 >> 62;
    if (v4 >> 62)
    {
      v31 = sub_2303106D8();
      v16 = v31 + v13;
      if (__OFADD__(v31, v13))
      {
LABEL_36:
        __break(1u);
        return v1;
      }
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v14)
      {
        v17 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_2303106D8();
      goto LABEL_19;
    }

    if (v14)
    {
      goto LABEL_18;
    }

LABEL_19:
    result = sub_2303108E8();
    v4 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_24:
    if (((v19 >> 1) - v18) < v13)
    {
      goto LABEL_40;
    }

    v37 = v4;
    v22 = v17 + 8 * v18 + 32;
    v34 = v17;
    if (v12)
    {
      if (v20 < 1)
      {
        goto LABEL_42;
      }

      sub_23005F108(&qword_27DB16598, v3);
      v23 = v3;
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v23);
        v25 = sub_2300A2F2C(v36, i, v1);
        v27 = *v26;
        (v25)(v36, 0);
        v23 = &qword_27DB16590;
        *(v22 + 8 * i) = v27;
      }
    }

    else
    {
      sub_23004CBA4(0, &qword_280C9C478);
      swift_arrayInitWithCopy();
      v23 = v3;
    }

    v3 = v23;

    v1 = MEMORY[0x277D84F90];
    v4 = v37;
    if (v13 >= 1)
    {
      v28 = *(v34 + 16);
      v29 = __OFADD__(v28, v13);
      v30 = v28 + v13;
      if (v29)
      {
        goto LABEL_41;
      }

      *(v34 + 16) = v30;
    }

LABEL_4:
    if (++v2 == v33)
    {
      return v4;
    }
  }

  v21 = v17;
  result = sub_2303106D8();
  v17 = v21;
  v20 = result;
  if (result)
  {
    goto LABEL_24;
  }

LABEL_3:

  v1 = MEMORY[0x277D84F90];
  if (v13 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_230188188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[2] = a2;
  v10[3] = a3;
  sub_2300EA760(sub_2300EAFC8, v10, a1);
  v4 = objc_allocWithZone(MEMORY[0x277D446F8]);
  sub_23004CBA4(0, &qword_27DB152A0);
  v5 = sub_23030FCC8();

  v6 = [v4 initWithMemberships_];

  v7 = [v3 unsavedMembershipsOfRemindersInSections];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 mergingWith:v6 mergePolicy:0];
    [v3 setUnsavedMembershipsOfRemindersInSections_];

    v6 = v9;
  }

  else
  {
    [v3 setUnsavedMembershipsOfRemindersInSections_];
  }
}

uint64_t sub_23018830C()
{
  result = _auto_REMAccountTypeForPrimaryCloudKit();
  qword_27DB16418 = result;
  return result;
}

uint64_t static REMTestStorePopulator.defaultAccountType.getter()
{
  if (qword_27DB13BE0 != -1)
  {
    swift_once();
  }

  return qword_27DB16418;
}

uint64_t sub_23018837C()
{
  v0 = type metadata accessor for DefaultDumpFormatter();
  result = swift_allocObject();
  qword_27DB16438 = v0;
  unk_27DB16440 = &off_2844F7C90;
  qword_27DB16420 = result;
  return result;
}

uint64_t static REMTestStorePopulator.defaultDumpFormatter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27DB13BE8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_2300819F0(&qword_27DB16420, v2);
}

uint64_t REMTestStorePopulator.__allocating_init(store:accounts:isSingleListMode:)(void *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  REMTestStorePopulator.init(store:accounts:isSingleListMode:)(a1, a2, a3);
  return v6;
}

uint64_t REMTestStorePopulator.init(store:accounts:isSingleListMode:)(void *a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 96) = a3;
  v6 = a1;
  sub_2301886B4(a2, v6, v19);

  if (v4)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v19[1];
    v8 = v20;
    v9 = v21;
    v35 = v20;
    v36 = v19[0];
    *(v3 + 24) = v19[0];
    *(v3 + 32) = v8;
    v10 = v22;
    v11 = v23;
    v33 = v22;
    v34 = v9;
    *(v3 + 40) = v9;
    *(v3 + 48) = v10;
    v12 = v24;
    v13 = v25;
    v31 = v24;
    v32 = v11;
    *(v3 + 56) = v11;
    *(v3 + 64) = v12;
    v14 = v26;
    v15 = v27;
    v29 = v26;
    v30 = v13;
    *(v3 + 72) = v13;
    *(v3 + 80) = v14;
    *(v3 + 104) = v7;
    v28 = v15;
    *(v3 + 88) = v15;
    sub_230055F74(&v36, &v18, &qword_27DB16460);
    sub_230055F74(&v35, &v18, &qword_27DB16468);
    sub_230055F74(&v34, &v18, &qword_27DB16470);
    v16 = v7;
    sub_230055F74(&v33, &v18, &qword_27DB16478);
    sub_230055F74(&v32, &v18, &qword_27DB16480);
    sub_230055F74(&v31, &v18, &qword_27DB16488);
    sub_230055F74(&v30, &v18, &qword_27DB16490);
    sub_230055F74(&v29, &v18, &qword_27DB16498);
    sub_230055F74(&v28, &v18, &qword_27DB164A0);
    sub_23018BD88(v19);
  }

  return v3;
}

uint64_t sub_2301886B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  __dst[16] = *MEMORY[0x277D85DE8];
  v8 = sub_23030EB58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v431 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23019D1A4(a1, a2);
  if (v4)
  {
    return result;
  }

  v449 = v11;
  v468 = result;
  v469 = v8;
  v459 = v3;
  v457 = v13;
  v473 = 0;
  [a2 test_setupForManualHashtagLabelRefreshing];
  v14 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v447 = a2;
  v15 = [v14 initWithStore_];
  v486 = MEMORY[0x277D84F98];
  v487 = MEMORY[0x277D84F98];
  v484 = MEMORY[0x277D84F98];
  v485 = MEMORY[0x277D84F98];
  v483 = MEMORY[0x277D84F90];
  v16 = *(a1 + 16);
  v434 = a3;
  if (v16)
  {
    v479 = 0;
    v475 = 0;
    v17 = 0;
    v18 = a1 + 32;
    v433 = *MEMORY[0x277D44C30];
    v439 = (v9 + 8);
    v441 = *MEMORY[0x277D44CC8];
    v440 = *MEMORY[0x277D44CB8];
    v482 = MEMORY[0x277D84F98];
    v458 = MEMORY[0x277D84F98];
    v19 = MEMORY[0x277D84F98];
    v472 = MEMORY[0x277D84F90];
    v476 = v15;
    v437 = v16;
    v438 = a1;
    v436 = a1 + 32;
    while (1)
    {
      if (v17 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_277;
      }

      v471 = v19;
      v20 = v468;
      if (!*(v468 + 16))
      {
        goto LABEL_219;
      }

      v448 = v17;
      v21 = (v18 + 48 * v17);
      a1 = v21[3];
      v23 = *v21;
      v22 = v21[1];

      swift_bridgeObjectRetain_n();

      v24 = sub_23005EE00(v23, v22);
      LOBYTE(v23) = v25;

      if ((v23 & 1) == 0)
      {

LABEL_219:

        sub_2301A7D5C();
        swift_allocError();
        *v322 = 13;
        swift_willThrow();

        goto LABEL_258;
      }

      v26 = *(*(v20 + 56) + 8 * v24);
      sub_23004CBA4(0, &qword_27DB165C0);
      v27 = v26;
      v28 = REMManualOrdering.init(templates:)(MEMORY[0x277D84F90]);
      type metadata accessor for REMMutableManualOrdering();
      swift_allocObject();
      v467 = sub_2301C2288(v28);

      v460 = v27;
      v474 = [v476 updateAccount_];

      v463 = *(a1 + 16);
      if (v463)
      {
        break;
      }

LABEL_185:

      v288 = sub_2301C0870();

      if (v288 >> 62)
      {
        v289 = sub_2303106D8();
      }

      else
      {
        v289 = *((v288 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v448 + 1;

      if (v289)
      {
        v291 = v17;
        v292 = REMMutableManualOrdering.immutableCopy()();
        v293 = v458;
        if ((v458 & 0xC000000000000001) != 0)
        {
          if (v458 >= 0)
          {
            v293 = (v458 & 0xFFFFFFFFFFFFFF8);
          }

          v294 = sub_2303106D8();
          if (__OFADD__(v294, 1))
          {
            __break(1u);
          }

          v293 = sub_2301C1DF0(v293, v294 + 1);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v293;
        v296 = v292;
        v297 = v460;
        sub_2300A20B8(v296, v460, isUniquelyReferenced_nonNull_native);

        v458 = __dst[0];
        v17 = v291;
        v290 = v291 == v437;
      }

      else
      {

        v290 = v17 == v437;
      }

      v19 = v471;
      v15 = v476;
      a1 = v438;
      v18 = v436;
      if (v290)
      {
        goto LABEL_200;
      }
    }

    v29 = 0;
    v442 = OBJC_IVAR____TtC19ReminderKitInternal24REMMutableManualOrdering_orderedSetOfTopLevelElementIDs;
    v465 = a1;
    v466 = (a1 + 32);
    while (1)
    {
      v470 = v29;
      v30 = &v466[128 * v29];
      v31 = *v30;
      v32 = *(v30 + 1);
      v33 = *(v30 + 3);
      v515 = *(v30 + 2);
      v516 = v33;
      v513 = v31;
      v514 = v32;
      v34 = *(v30 + 4);
      v35 = *(v30 + 5);
      v36 = *(v30 + 6);
      *(v519 + 9) = *(v30 + 105);
      v518 = v35;
      v519[0] = v36;
      v517 = v34;
      memmove(__dst, v30, 0x79uLL);
      v37 = sub_23019F36C(__dst);
      if (v37 <= 1)
      {
        if (!v37)
        {
          v38 = sub_230077CD0(__dst);
          v27 = &v497;
          v510 = v517;
          v511 = v518;
          v512[0] = v519[0];
          *(v512 + 9) = *(v519 + 9);
          v506 = v513;
          v507 = v514;
          v508 = v515;
          v509 = v516;
          v39 = sub_230077CD0(&v506);
          sub_2301A7E48(&v513, v504);
          sub_2301964F4(v39, v504);
          v40 = sub_23030F8B8();
          v41 = [v476 addListWithName:v40 toAccountChangeItem:v474];

          v504[4] = v38[4];
          v504[5] = v38[5];
          v505[0] = v38[6];
          *(v505 + 9) = *(v38 + 105);
          v504[0] = *v38;
          v504[1] = v38[1];
          v504[2] = v38[2];
          v504[3] = v38[3];
          v475 = (v479 + 1);
          if (!__OFADD__(v479, 1))
          {
            v42 = v473;
            sub_230191BE8(v41, v504, v479, &v487, &v486, &v484, &v483);
            v473 = v42;
            if (!v42)
            {

              sub_2301A7DB0(&v513);
              v43 = sub_2301A7DB0(&v513);
              v44 = v475;
              goto LABEL_181;
            }

            sub_2301A7DB0(&v513);

            sub_2301A7DB0(&v513);
            goto LABEL_247;
          }

          goto LABEL_280;
        }

        v67 = sub_230077CD0(__dst);
        v68 = *v67;
        v41 = v67[1];
        v462 = v67[2];
        v510 = v517;
        v511 = v518;
        v512[0] = v519[0];
        *(v512 + 9) = *(v519 + 9);
        v506 = v513;
        v507 = v514;
        v508 = v515;
        v509 = v516;
        sub_230077CD0(&v506);

        v69 = [v474 groupContext];
        if (!v69)
        {

          sub_2301A7D5C();
          swift_allocError();
          *v344 = 0;
          goto LABEL_244;
        }

        v70 = v69;

        v71 = sub_23030F8B8();
        v435 = v70;
        v72 = [v476 addGroupWithName:v71 toAccountGroupContextChangeItem:v70];

        v453 = v72;
        v73 = [v72 objectID];
        v74 = v487;
        if (v73)
        {
          v75 = v73;
          a1 = swift_isUniquelyReferenced_nonNull_native();
          *&v504[0] = v74;
          v76 = sub_23005EE00(v68, v41);
          v78 = v74[2];
          v79 = (v77 & 1) == 0;
          v80 = __OFADD__(v78, v79);
          v81 = v78 + v79;
          if (v80)
          {
            __break(1u);
            goto LABEL_285;
          }

          v27 = v77;
          if (v74[3] >= v81)
          {
            if (a1)
            {
              goto LABEL_86;
            }

            a1 = v76;
            sub_23008AEC0();
            v76 = a1;
            v74 = *&v504[0];
            if ((v27 & 1) == 0)
            {
              goto LABEL_93;
            }

LABEL_87:
            v168 = v74[7];
            v169 = *(v168 + 8 * v76);
            *(v168 + 8 * v76) = v75;
          }

          else
          {
            sub_230086558(v81, a1);
            v76 = sub_23005EE00(v68, v41);
            if ((v27 & 1) != (v82 & 1))
            {
              goto LABEL_329;
            }

LABEL_86:
            v74 = *&v504[0];
            if (v27)
            {
              goto LABEL_87;
            }

LABEL_93:
            v74[(v76 >> 6) + 8] |= 1 << v76;
            v170 = (v74[6] + 16 * v76);
            *v170 = v68;
            v170[1] = v41;
            *(v74[7] + 8 * v76) = v75;
            v171 = v74[2];
            v80 = __OFADD__(v171, 1);
            v172 = v171 + 1;
            if (v80)
            {
              goto LABEL_290;
            }

            v74[2] = v172;
          }

LABEL_95:
          v487 = v74;
        }

        else
        {
          v164 = sub_23005EE00(v68, v41);
          v166 = v165;

          if (v166)
          {
            v167 = swift_isUniquelyReferenced_nonNull_native();
            *&v504[0] = v74;
            if (!v167)
            {
              sub_23008AEC0();
              v74 = *&v504[0];
            }

            sub_230210088(v164, v74);
            goto LABEL_95;
          }
        }

        v461 = [v453 sublistContext];
        if (!v461)
        {

          sub_2301A7D5C();
          swift_allocError();
          *v347 = 1;
          swift_willThrow();

          v345 = v453;
          goto LABEL_250;
        }

        v454 = *(v462 + 2);
        if (!v454)
        {

          v43 = sub_2301A7DB0(&v513);
          goto LABEL_180;
        }

        v456 = v462 + 32;

        v173 = 0;
        while (2)
        {
          v464 = v173;
          v174 = &v456[128 * v173];
          v175 = *v174;
          v176 = *(v174 + 1);
          v177 = *(v174 + 3);
          v27 = v488;
          v499 = *(v174 + 2);
          v500 = v177;
          v497 = v175;
          v498 = v176;
          v178 = *(v174 + 4);
          v179 = *(v174 + 5);
          v180 = *(v174 + 6);
          *(v503 + 9) = *(v174 + 105);
          v502 = v179;
          v503[0] = v180;
          v501 = v178;
          memmove(v504, v174, 0x79uLL);
          if (sub_2301A285C(v504) != 1)
          {
            v215 = sub_230077CE0(v504);
            v494 = v501;
            v495 = v502;
            v496[0] = v503[0];
            *(v496 + 9) = *(v503 + 9);
            v490 = v497;
            v491 = v498;
            v492 = v499;
            v493 = v500;
            v216 = sub_230077CE0(&v490);
            sub_2301A7E10(&v497, v488);
            sub_2301964F4(v216, v488);
            v217 = sub_23030F8B8();
            v41 = [v476 addListWithName:v217 toListSublistContextChangeItem:v461];

            v488[4] = v215[4];
            v488[5] = v215[5];
            v489[0] = v215[6];
            *(v489 + 9) = *(v215 + 105);
            v488[0] = *v215;
            v488[1] = v215[1];
            v488[2] = v215[2];
            v488[3] = v215[3];
            v218 = (v479 + 1);
            if (!__OFADD__(v479, 1))
            {
              v219 = v473;
              sub_230191BE8(v41, v488, v479, &v487, &v486, &v484, &v483);
              v473 = v219;
              if (!v219)
              {

                sub_2301A7DE0(&v497);
                sub_2301A7DE0(&v497);
LABEL_173:
                v285 = v464;
                goto LABEL_174;
              }

              sub_2301A7DE0(&v497);
              sub_2301A7DB0(&v513);

              sub_2301A7DE0(&v497);
LABEL_247:

LABEL_248:
            }

LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            v377 = a1;

            sub_23030E808();

            swift_willThrow();

            goto LABEL_269;
          }

          v181 = sub_230077CE0(v504);
          v182 = *v181;
          v451 = *(v181 + 8);
          v452 = v182;
          v183 = *(v181 + 24);
          v431[1] = *(v181 + 16);
          v455 = v183;
          v184 = *(v181 + 40);
          v445 = *(v181 + 32);
          v477 = v184;
          v185 = *(v181 + 56);
          v479 = *(v181 + 48);
          v481 = v185;
          v11 = *(v181 + 64);
          v446 = *(v181 + 72);
          v186 = *(v181 + 80);
          v490 = v497;
          v491 = v498;
          v492 = v499;
          v493 = v500;
          *(v496 + 9) = *(v503 + 9);
          v495 = v502;
          v496[0] = v503[0];
          v494 = v501;
          v187 = sub_230077CE0(&v490);
          v188 = v187[6];
          v190 = v187[7];
          v189 = v187[8];
          v478 = v187[10];
          v450 = v11;
          v443 = v11;
          v480 = v186;

          v191 = v188;
          v192 = v190;
          a1 = v451;
          v193 = v189;

          v194 = v479;
          v195 = v481;
          v196 = v452;
          v197 = sub_23030F8B8();
          v27 = [v476 addCustomSmartListWithName:v197 toAccountChangeItem:v474 smartListObjectID:0];

          [v461 insertSmartListChangeItem:v27 afterSmartListChangeItem:0];
          if (__OFADD__(v475, 1))
          {
            goto LABEL_278;
          }

          v444 = v195;
          v479 = (v475 + 1);
          v198 = [v27 objectID];
          v199 = v485;
          if (v198)
          {
            v200 = v198;
            v432 = v194;
            v201 = v27;
            v202 = swift_isUniquelyReferenced_nonNull_native();
            v203 = a1;
            a1 = v202;
            *&v488[0] = v199;
            v11 = v203;
            v205 = sub_23005EE00(v196, v203);
            v206 = v199[2];
            v207 = (v204 & 1) == 0;
            v208 = v206 + v207;
            if (__OFADD__(v206, v207))
            {
              goto LABEL_282;
            }

            v41 = v204;
            if (v199[3] >= v208)
            {
              if (a1)
              {
                v211 = *&v488[0];
                if ((v204 & 1) == 0)
                {
                  goto LABEL_106;
                }
              }

              else
              {
                sub_23008AEC0();
                v211 = *&v488[0];
                if ((v41 & 1) == 0)
                {
                  goto LABEL_106;
                }
              }
            }

            else
            {
              sub_230086558(v208, a1);
              v209 = sub_23005EE00(v196, v11);
              if ((v41 & 1) != (v210 & 1))
              {
                goto LABEL_329;
              }

              v205 = v209;
              v211 = *&v488[0];
              if ((v41 & 1) == 0)
              {
LABEL_106:
                v211[(v205 >> 6) + 8] |= 1 << v205;
                v212 = (v211[6] + 16 * v205);
                *v212 = v196;
                v212[1] = v11;
                *(v211[7] + 8 * v205) = v200;
                v213 = v211[2];
                v80 = __OFADD__(v213, 1);
                v214 = v213 + 1;
                if (v80)
                {
                  __break(1u);
                  goto LABEL_289;
                }

                v211[2] = v214;

LABEL_120:
                v27 = v201;

                v485 = v211;
                a1 = v469;
                v194 = v432;
                if (!v477)
                {
LABEL_121:
                  if (v455)
                  {
                    v229 = objc_allocWithZone(MEMORY[0x277D445D0]);
                    v230 = v433;
                    v225 = sub_23030F8B8();
                    v226 = [v229 initWithCKSymbolicColorName:v230 hexString:v225];

                    a1 = v469;
LABEL_123:

                    [v27 setColor_];
                  }

                  if (v481)
                  {
                    [v27 setSortingStyle_];
                  }

                  v231 = [v27 customContext];
                  [v231 setBadge_];

                  v232 = [v27 customContext];
                  if (!v232)
                  {

                    sub_2301A7D5C();
                    swift_allocError();
                    *v323 = 16;
                    swift_willThrow();

                    sub_2301A7DE0(&v497);
                    sub_2301A7DB0(&v513);

LABEL_205:

                    sub_2301A7DE0(&v497);
LABEL_209:
                  }

                  v233 = v232;
                  v455 = v232;
                  if (v450)
                  {
                    v234 = v443;
                    v235 = [v233 smartListChangeItem];
                    v236 = REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter();
                    v238 = v236 != v441 && v236 == v440;
                    LOBYTE(v488[0]) = v238;
                    v239 = v473;
                    sub_2301730E0(v488);
                    if (v239)
                    {

                      v240 = 0;
                      v473 = 0;
                    }

                    else
                    {
                      v241 = v27;
                      v473 = 0;
                      v242 = objc_opt_self();
                      v243 = sub_23030F638();

                      *&v488[0] = 0;
                      v244 = [v242 dataWithJSONObject:v243 options:0 error:v488];

                      v245 = *&v488[0];
                      if (v244)
                      {
                        v246 = sub_23030EA18();
                        v248 = v247;

                        v240 = sub_23030E9F8();
                        sub_23005FE3C(v246, v248);
                      }

                      else
                      {
                        v249 = v245;
                        v250 = sub_23030E808();

                        swift_willThrow();
                        v240 = 0;
                        v473 = 0;
                      }

                      v27 = v241;
                      v233 = v455;
                    }

                    [v235 setFilterData_];

                    v41 = [v233 smartListChangeItem];
                    [v41 setMinimumSupportedVersion_];

                    a1 = v469;
                  }

                  else
                  {
                    v41 = [v232 smartListChangeItem];
                    [v41 setFilterData_];
                  }

                  v251 = v480;
                  v252 = v480[2];
                  if (!v252)
                  {
                    goto LABEL_168;
                  }

                  v253 = 0;
                  v254 = (v480 + 5);
                  v477 = v480[2];
                  v478 = v27;
                  v451 = v252 - 1;
                  v452 = (v480 + 5);
                  do
                  {
                    v255 = &v254[16 * v253];
                    v256 = v253;
                    while (1)
                    {
                      if (v256 >= v251[2])
                      {
                        __break(1u);
LABEL_267:
                        __break(1u);
LABEL_268:
                        v369 = a1;

                        sub_23030E808();

                        swift_willThrow();

LABEL_269:
                      }

                      v11 = *(v255 - 1);
                      a1 = *v255;

                      v257 = [v27 sectionsContextChangeItem];
                      if (!v257)
                      {

                        sub_2301A7D5C();
                        swift_allocError();
                        *v309 = 19;
                        swift_willThrow();

                        sub_2301A7DE0(&v497);
                        sub_2301A7DB0(&v513);

                        goto LABEL_205;
                      }

                      v258 = v257;
                      v259 = [v27 saveRequest];

                      v260 = sub_23030F8B8();

                      v481 = v258;
                      v261 = [v259 addSmartListSectionWithDisplayName:v260 toSmartListSectionContextChangeItem:v258];

                      v262 = [v261 objectID];
                      if (v262)
                      {
                        v265 = v262;
                        v266 = v482;
                        v267 = swift_isUniquelyReferenced_nonNull_native();
                        *&v488[0] = v266;
                        v41 = sub_23005EE00(v11, a1);
                        v269 = *(v266 + 16);
                        v270 = (v268 & 1) == 0;
                        v271 = v269 + v270;
                        if (!__OFADD__(v269, v270))
                        {
                          if (*(v266 + 24) < v271)
                          {
                            v272 = v267;
                            v273 = v268;
                            sub_230086558(v271, v272);
                            v274 = sub_23005EE00(v11, a1);
                            if ((v273 & 1) == (v275 & 1))
                            {
                              v41 = v274;
                              goto LABEL_155;
                            }

LABEL_329:
                            result = sub_2303112A8();
                            __break(1u);
                            return result;
                          }

                          if ((v267 & 1) == 0)
                          {
                            v273 = v268;
                            sub_23008AEC0();
LABEL_155:
                            v268 = v273;
                          }

                          v482 = *&v488[0];
                          if (v268)
                          {
                            v279 = *(*&v488[0] + 56);
                            v280 = *(v279 + 8 * v41);
                            *(v279 + 8 * v41) = v265;

                            v41 = v280;
                            v251 = v480;
                            v261 = v481;
LABEL_164:
                            a1 = v469;

                            goto LABEL_165;
                          }

                          *(*&v488[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
                          v281 = v482;
                          v282 = (v482[6] + 16 * v41);
                          *v282 = v11;
                          v282[1] = a1;
                          *(*(v281 + 56) + 8 * v41) = v265;
                          v283 = *(v281 + 16);
                          v80 = __OFADD__(v283, 1);
                          v284 = v283 + 1;
                          if (!v80)
                          {
                            *(v281 + 16) = v284;
                            v251 = v480;
                            v41 = v481;
                            goto LABEL_164;
                          }

LABEL_292:
                          __break(1u);
LABEL_293:

                          __dst[0] = MEMORY[0x277D84F98];
                          v378 = v471 + 8;
                          v379 = 1 << *(v471 + 32);
                          v380 = -1;
                          if (v379 < 64)
                          {
                            v380 = ~(-1 << v379);
                          }

                          v381 = v380 & v471[8];
                          v382 = (v379 + 63) >> 6;
                          swift_bridgeObjectRetain_n();
                          v383 = 0;
                          if (v381)
                          {
                            while (1)
                            {
                              v384 = v383;
LABEL_300:
                              *&v513 = *(v471[7] + ((v384 << 9) | (8 * __clz(__rbit64(v381)))));
                              v385 = v513;
                              v386 = v473;
                              sub_230193D18(__dst, &v513, v41);
                              v473 = v386;
                              if (v386)
                              {
                                break;
                              }

                              v381 &= v381 - 1;

                              v383 = v384;
                              if (!v381)
                              {
                                goto LABEL_297;
                              }
                            }

                            goto LABEL_270;
                          }

LABEL_297:
                          while (1)
                          {
                            v384 = v383 + 1;
                            if (__OFADD__(v383, 1))
                            {
                              break;
                            }

                            if (v384 >= v382)
                            {
                              goto LABEL_304;
                            }

                            v381 = v378[v384];
                            ++v383;
                            if (v381)
                            {
                              goto LABEL_300;
                            }
                          }

                          __break(1u);
LABEL_327:
                          __break(1u);
                          goto LABEL_328;
                        }

LABEL_289:
                        __break(1u);
LABEL_290:
                        __break(1u);
LABEL_291:
                        __break(1u);
                        goto LABEL_292;
                      }

                      v41 = sub_23005EE00(v11, a1);
                      v264 = v263;

                      if (v264)
                      {
                        break;
                      }

                      ++v256;

                      v255 += 2;
                      v27 = v478;
                      v251 = v480;
                      if (v477 == v256)
                      {
                        a1 = v469;
                        goto LABEL_168;
                      }
                    }

                    v276 = v482;
                    v277 = swift_isUniquelyReferenced_nonNull_native();
                    *&v488[0] = v276;
                    v278 = v481;
                    if (!v277)
                    {
                      sub_23008AEC0();
                      v276 = *&v488[0];
                    }

                    v482 = v276;
                    sub_230210088(v41, v276);

                    a1 = v469;
                    v251 = v480;
LABEL_165:
                    v254 = v452;
                    v253 = v256 + 1;
                    v27 = v478;
                  }

                  while (v451 != v256);
LABEL_168:
                  if ((v446 & 1) == 0)
                  {

                    sub_2301A7DE0(&v497);
                    sub_2301A7DE0(&v497);
                    v218 = v479;
                    goto LABEL_173;
                  }

                  v285 = v464;
                  if (qword_27DB13BF0 != -1)
                  {
                    swift_once();
                  }

                  __swift_project_value_buffer(a1, qword_27DB16448);
                  v41 = v449;
                  sub_23030EA98();
                  v286 = sub_23030EAA8();
                  (*v439)(v41, a1);
                  [v27 setPinnedDate_];

                  sub_2301A7DE0(&v497);
                  sub_2301A7DE0(&v497);
                  v218 = v479;
LABEL_174:
                  v173 = (v285 + 1);
                  v43 = v462;
                  if (v173 == v454)
                  {

                    v43 = sub_2301A7DB0(&v513);
                    v44 = v218;
                    v475 = v218;
                    goto LABEL_181;
                  }

                  v287 = *(v462 + 2);
                  v479 = v218;
                  v475 = v218;
                  if (v173 >= v287)
                  {
                    goto LABEL_272;
                  }

                  continue;
                }

LABEL_116:
                v224 = objc_allocWithZone(MEMORY[0x277D445D0]);
                v225 = sub_23030F8B8();
                v226 = [v224 initWithCKSymbolicColorName:v225 hexString:0];
                goto LABEL_123;
              }
            }

            v227 = v211[7];
            v228 = *(v227 + 8 * v205);
            *(v227 + 8 * v205) = v200;

            goto LABEL_120;
          }

          break;
        }

        v220 = sub_23005EE00(v196, a1);
        a1 = v469;
        if (v221)
        {
          v222 = v220;
          v223 = swift_isUniquelyReferenced_nonNull_native();
          *&v488[0] = v199;
          if (!v223)
          {
            sub_23008AEC0();
            v199 = *&v488[0];
          }

          sub_230210088(v222, v199);

          v485 = v199;
        }

        if (!v477)
        {
          goto LABEL_121;
        }

        goto LABEL_116;
      }

      if (v37 != 2)
      {
        v83 = sub_230077CD0(__dst);
        v84 = *v83;
        v68 = *(v83 + 8);
        v85 = *(v83 + 16);
        v86 = *(v83 + 24);
        v87 = *(v83 + 32);
        v510 = v517;
        v511 = v518;
        v512[0] = v519[0];
        *(v512 + 9) = *(v519 + 9);
        v508 = v515;
        v509 = v516;
        v506 = v513;
        v507 = v514;
        sub_230077CD0(&v506);

        v88 = [v474 templatesContextChangeItem];
        if (v88)
        {
          v89 = v88;
          v90 = v487;
          if (v487[2] && (v91 = sub_23005EE00(v85, v86), (v92 & 1) != 0) || (v90 = v485, v485[2]) && (v91 = sub_23005EE00(v85, v86), (v93 & 1) != 0))
          {
            v94 = *(v90[7] + 8 * v91);
            v95 = objc_allocWithZone(MEMORY[0x277D448A8]);
            v96 = v94;
            v97 = [v95 initWithSourceListID:v96 shouldSaveCompleted:v87];

            v98 = sub_23030F8B8();
            v481 = v89;
            v478 = v97;
            v99 = [v89 addTemplateWithName:v98 configuration:v97];

            v480 = v99;
            v11 = [v99 objectID];
            v100 = v471;
            a1 = swift_isUniquelyReferenced_nonNull_native();
            *&v504[0] = v100;
            v102 = sub_23005EE00(v84, v68);
            v103 = *(v100 + 16);
            v104 = (v101 & 1) == 0;
            v105 = v103 + v104;
            if (__OFADD__(v103, v104))
            {
              goto LABEL_281;
            }

            v27 = v101;
            if (*(v100 + 24) >= v105)
            {
              if (a1)
              {
                if ((v101 & 1) == 0)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                sub_23008AEC0();
                if ((v27 & 1) == 0)
                {
                  goto LABEL_33;
                }
              }
            }

            else
            {
              sub_230086558(v105, a1);
              v106 = sub_23005EE00(v84, v68);
              if ((v27 & 1) != (v107 & 1))
              {
                goto LABEL_329;
              }

              v102 = v106;
              if ((v27 & 1) == 0)
              {
LABEL_33:
                v108 = *&v504[0];
                *(*&v504[0] + 8 * (v102 >> 6) + 64) |= 1 << v102;
                v109 = (v108[6] + 16 * v102);
                *v109 = v84;
                v109[1] = v68;
                *(v108[7] + 8 * v102) = v11;
                v110 = v108[2];
                v80 = __OFADD__(v110, 1);
                v111 = v110 + 1;
                if (!v80)
                {
                  v471 = v108;
                  v108[2] = v111;
                  goto LABEL_38;
                }

LABEL_285:
                __break(1u);
LABEL_286:
                swift_bridgeObjectRelease_n();
                v41 = v27;
                v468 = sub_23019E360(v471, v41);
                v473 = v68;
                if (!v68)
                {
                  goto LABEL_293;
                }

LABEL_270:

                goto LABEL_248;
              }
            }

            v471 = *&v504[0];
            v112 = *(*&v504[0] + 56);
            v113 = *(v112 + 8 * v102);
            *(v112 + 8 * v102) = v11;

LABEL_38:

            [*(*(v467 + v442) + 16) addObject_];
            v114 = [v460 remObjectID];
            v115 = v96;
            v116 = v11;
            v117 = v114;
            v118 = v478;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v119 = v472;
            }

            else
            {
              v119 = sub_23007F6C0(0, v472[2] + 1, 1, v472);
            }

            v120 = v481;
            v27 = v119[2];
            v121 = v119[3];
            v41 = v27 + 1;
            if (v27 >= v121 >> 1)
            {
              v472 = sub_23007F6C0((v121 > 1), v27 + 1, 1, v119);
            }

            else
            {
              v472 = v119;
            }

            sub_2301A7DB0(&v513);
            v122 = v472;
            v472[2] = v41;
            v123 = &v122[4 * v27];
            v123[4] = v116;
            v123[5] = v115;
            v123[6] = v117;
            v123[7] = v118;
LABEL_180:
            v44 = v479;
            goto LABEL_181;
          }
        }

        else
        {
        }

        sub_2301A7D5C();
        swift_allocError();
        *v343 = 17;
LABEL_244:
        swift_willThrow();

        v345 = v476;
LABEL_250:

        sub_2301A7DB0(&v513);

        v348 = v474;
        goto LABEL_256;
      }

      v45 = sub_230077CD0(__dst);
      a1 = *(v45 + 8);
      v477 = *v45;
      v46 = *(v45 + 16);
      v462 = *(v45 + 24);
      v48 = *(v45 + 32);
      v47 = *(v45 + 40);
      v453 = v46;
      v454 = v48;
      v464 = v47;
      v49 = *(v45 + 56);
      v479 = *(v45 + 48);
      v481 = v49;
      v50 = *(v45 + 64);
      LODWORD(v455) = *(v45 + 72);
      v51 = *(v45 + 80);
      v506 = v513;
      v507 = v514;
      v508 = v515;
      v509 = v516;
      *(v512 + 9) = *(v519 + 9);
      v511 = v518;
      v512[0] = v519[0];
      v510 = v517;
      v52 = sub_230077CD0(&v506);
      v53 = v52[6];
      v54 = v52[7];
      v461 = v52[8];
      v478 = v52[10];
      v456 = v50;
      v55 = v50;
      v480 = v51;

      v56 = v53;
      v57 = v54;
      v58 = v461;

      v59 = v462;

      v11 = v464;

      v60 = v479;
      v461 = v481;
      v61 = v477;
      v62 = sub_23030F8B8();
      v27 = [v476 addCustomSmartListWithName:v62 toAccountChangeItem:v474 smartListObjectID:0];

      v479 = (v475 + 1);
      if (__OFADD__(v475, 1))
      {
        goto LABEL_279;
      }

      sub_2301FE8A8([v27 objectID], v61, a1);
      if (v11)
      {
        break;
      }

      if (v59)
      {
        a1 = v60;
        v63 = v55;
        v124 = objc_allocWithZone(MEMORY[0x277D445D0]);
        v125 = v433;
        v65 = sub_23030F8B8();
        v66 = [v124 initWithCKSymbolicColorName:v125 hexString:v65];

        goto LABEL_45;
      }

LABEL_46:
      if (v481)
      {
        [v27 setSortingStyle_];
      }

      v41 = &off_2788BD000;
      v126 = [v27 customContext];
      [v126 setBadge_];

      v127 = [v27 customContext];
      if (!v127)
      {

        sub_2301A7D5C();
        swift_allocError();
        *v346 = 16;
        swift_willThrow();

        sub_2301A7DB0(&v513);

        goto LABEL_208;
      }

      v128 = v127;
      v129 = v55;
      v464 = v128;
      REMSmartListCustomContextChangeItem.filter.setter(v456);
      v130 = v480;
      v131 = v480[2];
      if (!v131)
      {
        goto LABEL_75;
      }

      v132 = 0;
      v133 = (v480 + 5);
      v477 = v480[2];
      v478 = v27;
      v461 = (v131 - 1);
      v462 = (v480 + 5);
      do
      {
        v134 = &v133[16 * v132];
        v41 = v132;
        while (1)
        {
          if (v41 >= v130[2])
          {
            goto LABEL_267;
          }

          v11 = *(v134 - 1);
          v135 = *v134;

          v136 = [v27 sectionsContextChangeItem];
          if (!v136)
          {

            sub_2301A7D5C();
            swift_allocError();
            *v311 = 19;
            swift_willThrow();

            sub_2301A7DB0(&v513);

LABEL_208:

            sub_2301A7DB0(&v513);
            goto LABEL_209;
          }

          a1 = v136;
          v137 = [v27 saveRequest];

          v138 = sub_23030F8B8();

          v481 = a1;
          v139 = [v137 addSmartListSectionWithDisplayName:v138 toSmartListSectionContextChangeItem:a1];

          v140 = [v139 objectID];
          if (v140)
          {
            a1 = v140;
            v144 = v482;
            LODWORD(v456) = swift_isUniquelyReferenced_nonNull_native();
            *&v504[0] = v144;
            v146 = sub_23005EE00(v11, v135);
            v147 = *(v144 + 16);
            v148 = (v145 & 1) == 0;
            v149 = v147 + v148;
            if (__OFADD__(v147, v148))
            {
              goto LABEL_291;
            }

            v150 = v145;
            if (*(v144 + 24) >= v149)
            {
              if (v456)
              {
                if ((v145 & 1) == 0)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                sub_23008AEC0();
                if ((v150 & 1) == 0)
                {
                  goto LABEL_62;
                }
              }
            }

            else
            {
              sub_230086558(v149, v456);
              v151 = sub_23005EE00(v11, v135);
              if ((v150 & 1) != (v152 & 1))
              {
                goto LABEL_329;
              }

              v146 = v151;
              if ((v150 & 1) == 0)
              {
LABEL_62:
                v153 = *&v504[0];
                *(*&v504[0] + 8 * (v146 >> 6) + 64) |= 1 << v146;
                v154 = (v153[6] + 16 * v146);
                *v154 = v11;
                v154[1] = v135;
                *(v153[7] + 8 * v146) = a1;

                v155 = v153[2];
                v80 = __OFADD__(v155, 1);
                v156 = v155 + 1;
                if (v80)
                {
                  __break(1u);
LABEL_304:

                  v466 = __dst[0];

                  sub_2300EDAF8(v387);
                  v388 = sub_23030FCC8();

                  v389 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
                  __dst[0] = 0;
                  v390 = [v41 fetchRemindersWithObjectIDs:v388 fetchOptions:v389 error:__dst];

                  v391 = __dst[0];
                  if (!v390)
                  {
                    v397 = v391;

                    sub_23030E808();

                    swift_willThrow();

                    swift_bridgeObjectRelease_n();
                  }

                  sub_23004CBA4(0, &qword_27DB14808);
                  v392 = sub_23030F658();

                  v393 = v484;

                  v462 = v393;
                  v394 = v393;
                  v395 = v473;
                  sub_23019E52C(v394, v392);
                  v467 = v396;
                  v473 = v395;
                  if (v395)
                  {

                    swift_bridgeObjectRelease_n();
                    goto LABEL_270;
                  }

                  swift_bridgeObjectRelease_n();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB165D0);
                  v398 = v467;
                  v399 = sub_230310B98();
                  v401 = v398 + 64;
                  v400 = *(v398 + 64);
                  v402 = 1 << *(v398 + 32);
                  v403 = -1;
                  if (v402 < 64)
                  {
                    v403 = ~(-1 << v402);
                  }

                  v478 = v399;
                  v479 = v403 & v400;
                  v404 = (v402 + 63) >> 6;
                  v463 = v399 + 64;

                  v405 = 0;
                  if (!v479)
                  {
LABEL_312:
                    v407 = v405;
                    while (1)
                    {
                      v405 = v407 + 1;
                      if (__OFADD__(v407, 1))
                      {
                        goto LABEL_327;
                      }

                      if (v405 >= v404)
                      {

                        v424 = v467;

                        v425 = v434;
                        v426 = v457;
                        *v434 = v481;
                        v425[1] = v426;
                        v427 = v477;
                        v425[2] = v480;
                        v425[3] = v427;
                        v428 = v470;
                        v425[4] = v475;
                        v425[5] = v428;
                        v429 = v466;
                        v425[6] = v468;
                        v425[7] = v429;
                        v430 = v478;
                        v425[8] = v424;
                        v425[9] = v430;
                        return result;
                      }

                      v408 = *(v401 + 8 * v405);
                      ++v407;
                      if (v408)
                      {
                        v406 = __clz(__rbit64(v408));
                        v479 = (v408 - 1) & v408;
                        goto LABEL_317;
                      }
                    }
                  }

                  while (1)
                  {
                    v406 = __clz(__rbit64(v479));
                    v479 &= v479 - 1;
LABEL_317:
                    v409 = v406 | (v405 << 6);
                    v410 = *(v467 + 56);
                    v411 = *(v467 + 48) + 16 * v409;
                    v412 = *(v411 + 8);
                    v464 = *v411;
                    v465 = v412;
                    v413 = *(v410 + 8 * v409);

                    v414 = v413;
                    v415 = [v414 attachmentContext];
                    if (v415)
                    {
                      v416 = v415;
                      v417 = [v415 attachments];

                      sub_23004CBA4(0, &qword_27DB165D8);
                      v418 = sub_23030FCD8();

                      v414 = v417;
                    }

                    else
                    {
                      v418 = MEMORY[0x277D84F90];
                    }

                    *&v463[(v409 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v409;
                    v419 = v478;
                    v420 = (*(v478 + 6) + 16 * v409);
                    v421 = v465;
                    *v420 = v464;
                    v420[1] = v421;
                    *(v419[7] + 8 * v409) = v418;
                    v422 = v419[2];
                    v80 = __OFADD__(v422, 1);
                    v423 = v422 + 1;
                    if (v80)
                    {
                      break;
                    }

                    *(v478 + 2) = v423;
                    if (!v479)
                    {
                      goto LABEL_312;
                    }
                  }

LABEL_328:
                  __break(1u);
                  goto LABEL_329;
                }

                v482 = v153;
                v153[2] = v156;
                goto LABEL_70;
              }
            }

            v482 = *&v504[0];
            v160 = *(*&v504[0] + 56);
            v161 = *(v160 + 8 * v146);
            *(v160 + 8 * v146) = a1;

LABEL_70:
            v27 = v478;
            v130 = v480;

            goto LABEL_71;
          }

          v141 = sub_23005EE00(v11, v135);
          v143 = v142;

          if (v143)
          {
            break;
          }

          ++v41;

          v134 += 2;
          v27 = v478;
          v130 = v480;
          if (v477 == v41)
          {
            goto LABEL_75;
          }
        }

        v157 = v482;
        v158 = swift_isUniquelyReferenced_nonNull_native();
        *&v504[0] = v157;
        v159 = v481;
        if (!v158)
        {
          sub_23008AEC0();
          v157 = *&v504[0];
        }

        v482 = v157;
        sub_230210088(v141, v157);

        v27 = v478;
        v130 = v480;
LABEL_71:
        v132 = v41 + 1;
        v133 = v462;
      }

      while (v461 != v41);
LABEL_75:
      if (v455)
      {
        v41 = v469;
        v162 = v449;
        if (qword_27DB13BF0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v41, qword_27DB16448);
        sub_23030EA98();
        v163 = sub_23030EAA8();
        (*v439)(v162, v41);
        [v27 setPinnedDate_];

        sub_2301A7DB0(&v513);
      }

      else
      {

        sub_2301A7DB0(&v513);
      }

      v43 = sub_2301A7DB0(&v513);
      v44 = v479;
      v475 = v479;
LABEL_181:
      v479 = v44;
      v29 = v470 + 1;
      a1 = v465;
      if ((v470 + 1) == v463)
      {
        goto LABEL_185;
      }

      if (v29 >= *(v465 + 16))
      {
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
        goto LABEL_273;
      }
    }

    a1 = v60;
    v63 = v55;
    v64 = objc_allocWithZone(MEMORY[0x277D445D0]);
    v65 = sub_23030F8B8();
    v66 = [v64 initWithCKSymbolicColorName:v65 hexString:0];
LABEL_45:

    [v27 setColor_];
    v55 = v63;
    v60 = a1;
    goto LABEL_46;
  }

  v472 = MEMORY[0x277D84F90];
  v458 = MEMORY[0x277D84F98];
  v19 = MEMORY[0x277D84F98];
  v482 = MEMORY[0x277D84F98];
LABEL_200:
  v471 = v19;
  __dst[0] = 0;
  v298 = v15;
  v299 = [v15 saveSynchronouslyWithError_];
  v300 = __dst[0];
  if (!v299)
  {
    v310 = __dst[0];

    sub_23030E808();

    swift_willThrow();
    goto LABEL_257;
  }

  v476 = v298;
  v301 = v483;
  v302 = sub_23004CBA4(0, &qword_280C9C478);
  v303 = v300;
  v304 = sub_23030FCC8();
  __dst[0] = 0;
  v305 = [v447 test:v304 revertImageAttachmentsToUnDeduped:__dst error:?];

  if (!v305)
  {
    v312 = __dst[0];

    v313 = sub_23030E808();

    swift_willThrow();
    v314 = sub_23030E7F8();
    sub_2301A7D5C();
    swift_allocError();
    *v315 = v314;
    swift_willThrow();

    goto LABEL_247;
  }

  v306 = v458 & 0xC000000000000001;
  if ((v458 & 0xC000000000000001) != 0)
  {
    v307 = __dst[0];
    v308 = sub_2303106D8();
  }

  else
  {
    v308 = *(v458 + 16);
    v316 = __dst[0];
  }

  v478 = v302;
  if (!v308)
  {
    v321 = v447;
LABEL_253:
    [v321 test_refreshHashtagLabelsImmediately];
    [v321 test_handleIncompleteTemplateOperationQueueItemsImmediately];
    [v321 test:1.0 handleIncompleteGroceryOperationQueueItemsImmediatelyWithTimeout:?];
    [v321 test:1.0 handleIncompleteAutoCategorizationOperationQueueItemsImmediatelyWithTimeout:?];
    v352 = v473;
    v353 = sub_23019D6A0(v468);
    if (v352)
    {

      goto LABEL_247;
    }

    v481 = v353;

    sub_2300EDAF8(v355);
    v356 = sub_23030FCC8();

    __dst[0] = 0;
    v357 = [v321 fetchListsWithObjectIDs:v356 error:__dst];

    v358 = __dst[0];
    if (!v357)
    {
      v363 = __dst[0];

      sub_23030E808();

      swift_willThrow();
    }

    sub_23004CBA4(0, &qword_27DB14FE8);
    sub_23004CD24();
    v359 = sub_23030F658();
    v360 = v358;

    v361 = v487;

    sub_23019D90C(v361, v359);
    v479 = v301;
    v480 = v362;
    swift_bridgeObjectRelease_n();

    sub_2300EDAF8(v364);
    v365 = sub_23030FCC8();

    __dst[0] = 0;
    v366 = [v447 fetchListSectionsWithObjectIDs:v365 error:__dst];

    a1 = __dst[0];
    if (!v366)
    {
      goto LABEL_268;
    }

    sub_23004CBA4(0, &qword_27DB165C8);
    v367 = sub_23030F658();
    v368 = a1;

    v11 = v486;

    sub_23019DBB0(v11, v367);
    v477 = v370;
    swift_bridgeObjectRelease_n();
    v41 = v485;
    v27 = v447;
    v43 = sub_23019DE54(v41, v27);
    v473 = 0;
LABEL_273:
    v474 = v41;
    v475 = v43;

    sub_2300EDAF8(v482);
    v371 = sub_23030FCC8();

    __dst[0] = 0;
    v372 = [v27 fetchSmartListSectionsWithObjectIDs:v371 error:__dst];

    a1 = __dst[0];
    if (!v372)
    {
      goto LABEL_283;
    }

    v469 = v11;
    sub_23004CBA4(0, &qword_280C96EB0);
    v373 = sub_23030F658();
    v374 = a1;

    v375 = v473;
    sub_23019E0BC(v482, v373);
    v470 = v376;
    v68 = v375;
    if (v375)
    {

      swift_bridgeObjectRelease_n();

      goto LABEL_248;
    }

    goto LABEL_286;
  }

  v479 = v301;
  v317 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v481 = [v317 initWithStore_];
  if (v306)
  {
    v318 = 0;
    v319 = 0;
    v11 = 0;
    v320 = sub_230310AA8() | 0x8000000000000000;
  }

  else
  {
    v324 = -1 << *(v458 + 32);
    v319 = ~v324;
    v318 = v458 + 64;
    v325 = -v324;
    if (v325 < 64)
    {
      v326 = ~(-1 << v325);
    }

    else
    {
      v326 = -1;
    }

    v11 = (v326 & *(v458 + 64));
    v320 = v458;
  }

  v41 = 0;
  v477 = v319;
  v480 = v320;
  while ((v320 & 0x8000000000000000) != 0)
  {
    v335 = sub_230310AD8();
    if (!v335)
    {
      goto LABEL_251;
    }

    v337 = v336;
    *&v513 = v335;
    sub_23004CBA4(0, &qword_27DB145D8);
    swift_dynamicCast();
    v333 = __dst[0];
    *&v513 = v337;
    sub_23004CBA4(0, &qword_27DB165C0);
    swift_dynamicCast();
    v334 = __dst[0];
    v27 = v41;
    v329 = v11;
    if (!v333)
    {
      goto LABEL_251;
    }

LABEL_237:
    v338 = v333;
    v339 = v334;
    v340 = [v481 updateAccount_];
    v341 = [v340 templatesContextChangeItem];
    if (v341)
    {
      v342 = v341;
      [v341 updateManualOrdering_];
    }

    v41 = v27;
    v11 = v329;
    v320 = v480;
  }

  v327 = v41;
  v328 = v11;
  v27 = v41;
  if (!v11)
  {
    do
    {
      v27 = v327 + 1;
      if (__OFADD__(v327, 1))
      {
        goto LABEL_271;
      }

      if (v27 >= ((v319 + 64) >> 6))
      {
        goto LABEL_251;
      }

      v328 = *(v318 + 8 * v27);
      ++v327;
    }

    while (!v328);
  }

  v329 = (v328 - 1) & v328;
  v330 = (v27 << 9) | (8 * __clz(__rbit64(v328)));
  v331 = *(*(v320 + 48) + v330);
  v332 = *(*(v320 + 56) + v330);
  v333 = v331;
  v334 = v332;
  if (v333)
  {
    goto LABEL_237;
  }

LABEL_251:
  sub_230060014();
  __dst[0] = 0;
  v349 = v481;
  v350 = [v481 saveSynchronouslyWithError_];
  v321 = v447;
  if (v350)
  {
    v351 = __dst[0];

    v301 = v479;
    goto LABEL_253;
  }

  v354 = __dst[0];

  sub_23030E808();

  swift_willThrow();
  v348 = v476;
LABEL_256:

LABEL_257:

LABEL_258:
}

uint64_t sub_23018BDBC(uint64_t a1)
{
  v2 = type metadata accessor for REMTestStorePopulator.TestList.ListChild(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 1;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    *&v31 = MEMORY[0x277D84F90];
    sub_23009EDA8(0, v6, 0);
    v8 = v31;
    v9 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) - 8);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      sub_23019EB08(v10, v5, type metadata accessor for REMTestStorePopulator.TestReminder);
      swift_storeEnumTagMultiPayload();
      *&v31 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23009EDA8(v12 > 1, v13 + 1, 1);
        v8 = v31;
      }

      *(v8 + 16) = v13 + 1;
      sub_23019ED2C(v5, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, type metadata accessor for REMTestStorePopulator.TestList.ListChild);
      v10 += v11;
      --v6;
    }

    while (v6);
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  *&v26[0] = 0x694C656C676E6953;
  *(&v26[0] + 1) = 0xEA00000000007473;
  memset(&v26[1], 0, 48);
  *&v27 = 0;
  BYTE8(v27) = v41;
  HIDWORD(v27) = *&v40[3];
  *(&v27 + 9) = *v40;
  *&v28 = v8;
  *(&v28 + 1) = v7;
  LOWORD(v29) = 0;
  BYTE2(v29) = 0;
  HIBYTE(v29) = v39;
  *(&v29 + 3) = v38;
  memset(v30, 0, sizeof(v30));
  v33 = 0u;
  v34 = 0u;
  v31 = v26[0];
  v32 = 0u;
  *&v37[9] = *&v30[1];
  v36 = v28;
  *v37 = v29;
  v35 = v27;
  sub_230072250(&v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB165B0);
  v14 = swift_allocObject();
  v15 = v35;
  v16 = *v37;
  v14[7] = v36;
  v14[8] = v16;
  *(v14 + 137) = *&v37[9];
  v17 = v31;
  v18 = v32;
  v24 = xmmword_230315CE0;
  v14[1] = xmmword_230315CE0;
  v14[2] = v17;
  v19 = v33;
  v20 = v34;
  v14[3] = v18;
  v14[4] = v19;
  v14[5] = v20;
  v14[6] = v15;
  sub_2301964F4(v26, &v25);
  if (qword_27DB13BE0 != -1)
  {
    swift_once();
  }

  v21 = qword_27DB16418;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB164A8);
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  *(v22 + 32) = 0x64656C7469746E55;
  *(v22 + 40) = 0xE800000000000000;
  *(v22 + 48) = v21;
  *(v22 + 56) = v14;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  sub_2301A7D2C(v26);
  return v22;
}

uint64_t static REMTestStorePopulator.TestStoreBuilder.buildBlock(_:)(uint64_t a1)
{
  if (qword_27DB13BE0 != -1)
  {
    swift_once();
  }

  v2 = qword_27DB16418;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB164A8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_230315CE0;
  *(v3 + 32) = 0x64656C7469746E55;
  *(v3 + 40) = 0xE800000000000000;
  *(v3 + 48) = v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;

  return v3;
}

uint64_t REMTestStorePopulator.dump(formatter:)(void *a1)
{
  v134[3] = *MEMORY[0x277D85DE8];
  v134[0] = sub_2302DA274(*(v1 + 16), 0);

  sub_23019D100(v134, v1);

  v3 = v134[0];
  v114 = *(v134[0] + 2);
  if (!v114)
  {

    return 0x6F636361206F6E3CLL;
  }

  v4 = 0;
  v128 = swift_allocObject();
  v129 = a1;
  *(v128 + 16) = MEMORY[0x277D84F90];
  v127 = (v128 + 16);
  v5 = v3 + 32;
  v112 = v3;
  v118 = v1;
  v110 = v3 + 32;
  while (1)
  {
    if (v4 >= *(v3 + 2))
    {
      goto LABEL_87;
    }

    v111 = v4;
    v6 = &v5[16 * v4];
    v7 = *(v6 + 1);
    v123 = v7;
    v113 = *v6;
    if (v114 == 1)
    {
      v8 = *v6;
    }

    else
    {
      v9 = a1[4];
      v10 = *v6;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v11 = *(v9 + 8);
      v12 = v10;

      v13 = v12;
      v14 = v11();
      v16 = v15;

      v17 = swift_allocObject();
      *(v17 + 16) = MEMORY[0x277D84F90];
      v132 = v14;
      v133 = v16;
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = 0;
      v18[4] = 0xE000000000000000;
      sub_2300A85F0();

      sub_230310548();

      swift_beginAccess();
      v132 = *(v17 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
      sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
      v19 = sub_23030F7C8();
      v21 = v20;

      swift_beginAccess();
      v22 = *v127;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_23007E928(0, *(v22 + 2) + 1, 1, v22);
      }

      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_23007E928((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[16 * v24];
      *(v25 + 4) = v19;
      *(v25 + 5) = v21;
      *v127 = v22;
      swift_endAccess();
      MEMORY[0x231911790](538976288, 0xE400000000000000);
      a1 = v129;
    }

    v115 = *(v7 + 16);
    if (v115)
    {
      break;
    }

LABEL_14:
    v4 = v111 + 1;

    v3 = v112;
    v5 = v110;
    if (v111 + 1 == v114)
    {

      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
      sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
      v107 = sub_23030F7C8();

      return v107;
    }
  }

  v117 = v7 + 32;

  v26 = 0;
  while (1)
  {
    if (v26 >= *(v7 + 16))
    {
      goto LABEL_86;
    }

    v121 = v26;
    v27 = (v117 + 16 * v26);
    v125 = *v27;
    v126 = v27[1];
    if (*v27 >> 62)
    {
      if (v125 >> 62 == 1)
      {
        sub_23006006C(v125);
        sub_23018E678((v125 & 0x3FFFFFFFFFFFFFFFLL), 0, 0xE000000000000000, a1, v128, 0x20202020, 0xE400000000000000, v118);
        sub_230060110(v125);
        sub_230060110(v125);
      }

      else
      {
        v29 = a1[3];
        v30 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v29);
        v31 = *(v30 + 24);
        v32 = (v125 & 0x3FFFFFFFFFFFFFFFLL);

        v33 = v31(v32, v29, v30);
        v35 = v34;
        v36 = swift_allocObject();
        *(v36 + 16) = MEMORY[0x277D84F90];
        v132 = v33;
        v133 = v35;
        v37 = swift_allocObject();
        v37[2] = v36;
        v37[3] = 0;
        v37[4] = 0xE000000000000000;
        sub_2300A85F0();

        sub_230310548();

        swift_beginAccess();
        v132 = *(v36 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
        sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
        v38 = sub_23030F7C8();
        v40 = v39;

        swift_beginAccess();
        v41 = *v127;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_23007E928(0, *(v41 + 2) + 1, 1, v41);
        }

        v43 = *(v41 + 2);
        v42 = *(v41 + 3);
        if (v43 >= v42 >> 1)
        {
          v41 = sub_23007E928((v42 > 1), v43 + 1, 1, v41);
        }

        *(v41 + 2) = v43 + 1;
        v44 = &v41[16 * v43];
        *(v44 + 4) = v38;
        *(v44 + 5) = v40;
        *v127 = v41;
        swift_endAccess();
        v132 = 0;
        v133 = 0xE000000000000000;

        MEMORY[0x231911790](538976288, 0xE400000000000000);
        v45 = v133;
        v46 = v126;
        v119 = *(v126 + 16);
        if (v119)
        {
          v120 = v132;

          v47 = 0;
          a1 = v129;
          v116 = v45;
          while (1)
          {
            if (v47 >= *(v46 + 16))
            {
              goto LABEL_83;
            }

            v48 = *(v126 + 32 + 8 * v47);
            if ((v48 & 0x8000000000000000) != 0)
            {
              v78 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
              sub_23018E678(v78, v120, v45, a1, v128, 0x20202020, 0xE400000000000000, v118);
            }

            else
            {
              v122 = v47;
              v49 = a1[3];
              v50 = a1[4];
              __swift_project_boxed_opaque_existential_1(a1, v49);
              v51 = *(v50 + 24);
              v52 = v48;

              v124 = v52;
              v53 = v51(v52, v49, v50);
              v55 = v54;
              v56 = swift_allocObject();
              *(v56 + 16) = MEMORY[0x277D84F90];
              v132 = v53;
              v133 = v55;
              v57 = swift_allocObject();
              v57[2] = v56;
              v57[3] = v120;
              v57[4] = v45;

              sub_230310548();

              swift_beginAccess();
              v132 = *(v56 + 16);

              v58 = sub_23030F7C8();
              v60 = v59;

              swift_beginAccess();
              v61 = *v127;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v61 = sub_23007E928(0, *(v61 + 2) + 1, 1, v61);
              }

              v63 = *(v61 + 2);
              v62 = *(v61 + 3);
              a1 = v129;
              v46 = v126;
              v64 = v124;
              if (v63 >= v62 >> 1)
              {
                v61 = sub_23007E928((v62 > 1), v63 + 1, 1, v61);
              }

              *(v61 + 2) = v63 + 1;
              v65 = &v61[16 * v63];
              *(v65 + 4) = v58;
              *(v65 + 5) = v60;
              *v127 = v61;
              swift_endAccess();
              MEMORY[0x231911790](538976288, 0xE400000000000000);
              v66 = [v124 sectionContext];
              if (v66)
              {

                sub_23018DA44(v124, v120, v45, v128, 0x20202020, 0xE400000000000000, v129);
                v7 = v123;
              }

              else
              {
                v132 = 0;
                v67 = [v124 fetchRemindersWithError_];
                v68 = v132;
                if (!v67)
                {
                  v106 = v132;

                  v130 = sub_23030E808();

                  swift_willThrow();
                  sub_230060110(v125);

                  goto LABEL_78;
                }

                v69 = v67;
                sub_23004CBA4(0, &qword_27DB14808);
                v70 = sub_23030FCD8();
                v71 = v68;

                if (v70 >> 62)
                {
                  v72 = sub_2303106D8();
                  v73 = v45;
                  if (v72)
                  {
LABEL_43:
                    v74 = 0;
                    while (1)
                    {
                      if ((v70 & 0xC000000000000001) != 0)
                      {
                        v75 = MEMORY[0x231912650](v74, v70);
                      }

                      else
                      {
                        if (v74 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_82;
                        }

                        v75 = *(v70 + 8 * v74 + 32);
                      }

                      v76 = v75;
                      v77 = v74 + 1;
                      if (__OFADD__(v74, 1))
                      {
                        break;
                      }

                      sub_23018D5FC(v75, v120, v73, v128, v129, 0x20202020, 0xE400000000000000);

                      ++v74;
                      if (v77 == v72)
                      {
                        goto LABEL_53;
                      }
                    }

                    __break(1u);
LABEL_82:
                    __break(1u);
LABEL_83:
                    __break(1u);
LABEL_84:
                    __break(1u);
LABEL_85:
                    __break(1u);
LABEL_86:
                    __break(1u);
LABEL_87:
                    __break(1u);
                  }
                }

                else
                {
                  v72 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v73 = v45;
                  if (v72)
                  {
                    goto LABEL_43;
                  }
                }

LABEL_53:

                v7 = v123;
                v64 = v124;
                a1 = v129;
                v46 = v126;
              }

              v45 = v116;

              v47 = v122;
            }

            if (++v47 == v119)
            {

              sub_230060110(v125);
              goto LABEL_17;
            }
          }
        }

        sub_230060110(v125);
        a1 = v129;
      }

      goto LABEL_17;
    }

    if (*(v118 + 96))
    {
      v28 = *v27;
      sub_23006006C(v125);
      sub_23006006C(v125);
    }

    else
    {
      v79 = a1[3];
      v80 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v79);
      v81 = *(v80 + 24);
      sub_23006006C(v125);
      sub_23006006C(v125);

      v82 = v81(v125, v79, v80);
      v84 = v83;
      v85 = swift_allocObject();
      *(v85 + 16) = MEMORY[0x277D84F90];
      v132 = v82;
      v133 = v84;
      v86 = swift_allocObject();
      v86[2] = v85;
      v86[3] = 0;
      v86[4] = 0xE000000000000000;
      sub_2300A85F0();

      sub_230310548();

      swift_beginAccess();
      v132 = *(v85 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
      sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
      v87 = sub_23030F7C8();
      v89 = v88;

      swift_beginAccess();
      v90 = *v127;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_23007E928(0, *(v90 + 2) + 1, 1, v90);
      }

      v92 = *(v90 + 2);
      v91 = *(v90 + 3);
      v7 = v123;
      if (v92 >= v91 >> 1)
      {
        v90 = sub_23007E928((v91 > 1), v92 + 1, 1, v90);
      }

      *(v90 + 2) = v92 + 1;
      v93 = &v90[16 * v92];
      *(v93 + 4) = v87;
      *(v93 + 5) = v89;
      *v127 = v90;
      swift_endAccess();
      MEMORY[0x231911790](538976288, 0xE400000000000000);
      a1 = v129;
      v28 = v125;
    }

    v94 = [v28 sectionContext];
    if (!v94)
    {
      break;
    }

    sub_23018DA44(v28, 0, 0xE000000000000000, v128, 0x20202020, 0xE400000000000000, a1);
    sub_230060110(v28);
    sub_230060110(v28);
LABEL_75:

LABEL_17:
    v26 = v121 + 1;
    if (v121 + 1 == v115)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_14;
    }
  }

  v132 = 0;
  v95 = [v28 fetchRemindersWithError_];
  v96 = v132;
  if (v95)
  {
    v97 = v95;
    sub_23004CBA4(0, &qword_27DB14808);
    v98 = sub_23030FCD8();
    v99 = v96;

    if (v98 >> 62)
    {
      v100 = sub_2303106D8();
      if (v100)
      {
LABEL_64:
        v101 = 0;
        do
        {
          if ((v98 & 0xC000000000000001) != 0)
          {
            v102 = MEMORY[0x231912650](v101, v98);
          }

          else
          {
            if (v101 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_85;
            }

            v102 = *(v98 + 8 * v101 + 32);
          }

          v103 = v102;
          v104 = v101 + 1;
          if (__OFADD__(v101, 1))
          {
            goto LABEL_84;
          }

          sub_23018D5FC(v102, 0, 0xE000000000000000, v128, v129, 0x20202020, 0xE400000000000000);

          ++v101;
        }

        while (v104 != v100);
      }
    }

    else
    {
      v100 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v100)
      {
        goto LABEL_64;
      }
    }

    sub_230060110(v125);
    sub_230060110(v125);

    v7 = v123;
    a1 = v129;
    goto LABEL_75;
  }

  v109 = v132;

  v130 = sub_23030E808();

  swift_willThrow();
  sub_230060110(v28);
  sub_230060110(v28);

LABEL_78:

  v132 = 0x203A726F727245;
  v133 = 0xE700000000000000;
  swift_getErrorValue();
  v105 = Error.rem_errorDescription.getter(v131);
  MEMORY[0x231911790](v105);

  return v132;
}

id sub_23018D5FC(void *a1, void *a2, void *a3, uint64_t a4, void *a5, char *a6, uint64_t a7)
{
  v48 = *MEMORY[0x277D85DE8];
  v12 = a5[3];
  v13 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v12);
  v37 = a1;
  v14 = (*(v13 + 40))(a1, v12, v13);
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x277D84F90];
  v46 = v14;
  v47 = v16;
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a2;
  v38 = a2;
  v18[4] = a3;
  sub_2300A85F0();

  v39 = a3;

  sub_230310548();

  swift_beginAccess();
  v44 = *(v17 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
  v19 = sub_23030F7C8();
  v21 = v20;

  swift_beginAccess();
  v22 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = a4;
  *(a4 + 16) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_23007E928((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    v26 = &v22[16 * v25];
    *(v26 + 4) = v19;
    *(v26 + 5) = v21;
    *(v43 + 16) = v22;
    swift_endAccess();
    result = [v37 subtaskContext];
    if (!result)
    {
      return result;
    }

    v44 = 0;
    v28 = result;
    v19 = [result fetchRemindersWithError_];

    v29 = v44;
    if (!v19)
    {
      v36 = v44;
      sub_23030E808();

      return swift_willThrow();
    }

    sub_23004CBA4(0, &qword_27DB14808);
    v30 = sub_23030FCD8();
    v31 = v29;

    if (v30 >> 62)
    {
      v32 = sub_2303106D8();
      if (!v32)
      {
      }
    }

    else
    {
      v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
      }
    }

    v21 = 0;
    v37 = (v30 & 0xC000000000000001);
    while (1)
    {
      if (v37)
      {
        v33 = MEMORY[0x231912650](v21, v30);
      }

      else
      {
        if (v21 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v33 = *(v30 + 8 * v21 + 32);
      }

      v34 = v33;
      v35 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v44 = v38;
      v45 = v39;

      v22 = a6;
      MEMORY[0x231911790](a6, a7);
      v19 = v45;
      sub_23018D5FC(v34, v44, v45, v43, a5, a6, a7);

      if (!v7)
      {
        ++v21;
        if (v35 != v32)
        {
          continue;
        }
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v22 = sub_23007E928(0, *(v22 + 2) + 1, 1, v22);
    *(v43 + 16) = v22;
  }
}

uint64_t sub_23018DA44(void *a1, void *a2, void **a3, uint64_t a4, char *a5, uint64_t a6, void *a7)
{
  v115 = a7;
  v117 = a5;
  v118 = a6;
  v119 = a4;
  v111 = a2;
  v112 = a3;
  v148 = *MEMORY[0x277D85DE8];
  v113 = type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v113);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v143[0] = 0;
  v109 = a1;
  v12 = [a1 fetchRemindersWithError_];
  v13 = *&v143[0];
  if (!v12)
  {
    v39 = *&v143[0];
    sub_23030E808();

    return swift_willThrow();
  }

  v14 = v12;
  v116 = sub_23004CBA4(0, &qword_27DB14808);
  isUniquelyReferenced_nonNull_native = sub_23030FCD8();
  v16 = v13;

  v17 = sub_23008D748(MEMORY[0x277D84F90]);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_33;
  }

  v18 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v11; v18; i = v11)
  {
    v11 = 0;
    v123 = (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8);
    v124 = (isUniquelyReferenced_nonNull_native & 0xC000000000000001);
    v121 = v9;
    v122 = isUniquelyReferenced_nonNull_native;
    v120 = v18;
    while (1)
    {
      if (v124)
      {
        v22 = MEMORY[0x231912650](v11, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v11 >= v123[2])
        {
          goto LABEL_29;
        }

        v22 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
      }

      v23 = v22;
      v24 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v25 = [v22 objectID];
      if ((v17 & 0xC000000000000001) != 0)
      {
        if (v17 >= 0)
        {
          v17 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v26 = v23;
        v27 = sub_2303106D8();
        if (__OFADD__(v27, 1))
        {
          goto LABEL_31;
        }

        v17 = sub_2301C203C(v17, v27 + 1);
      }

      else
      {
        v28 = v23;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v143[0] = v17;
      v9 = sub_230059108(v25);
      v30 = *(v17 + 16);
      v31 = (v29 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_30;
      }

      v33 = v29;
      if (*(v17 + 24) >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23008B04C();
        }
      }

      else
      {
        sub_2300867F0(v32, isUniquelyReferenced_nonNull_native);
        v34 = sub_230059108(v25);
        if ((v33 & 1) != (v35 & 1))
        {
          sub_23004CBA4(0, &qword_280C9C478);
          result = sub_2303112A8();
          __break(1u);
          return result;
        }

        v9 = v34;
      }

      isUniquelyReferenced_nonNull_native = v122;
      v17 = *&v143[0];
      if (v33)
      {
        v19 = *(*&v143[0] + 56);
        v20 = *&v143[0];
        v21 = *(v19 + 8 * v9);
        *(v19 + 8 * v9) = v23;

        v17 = v20;
      }

      else
      {
        *(*&v143[0] + 8 * (v9 >> 6) + 64) |= 1 << v9;
        *(*(v17 + 48) + 8 * v9) = v25;
        *(*(v17 + 56) + 8 * v9) = v23;

        v36 = *(v17 + 16);
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_32;
        }

        *(v17 + 16) = v38;
      }

      ++v11;
      v9 = v121;
      if (v24 == v120)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v18 = sub_2303106D8();
  }

LABEL_34:
  v121 = v17;

  v41 = Configuration;
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v42 = i;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  swift_storeEnumTagMultiPayload();
  *v42 = -127;
  v42[*(v41 + 24)] = 0;
  v42[*(v41 + 32)] = 1;
  v43 = v109;
  v124 = [v109 store];
  v44 = type metadata accessor for REMList_Codable();
  v45 = objc_allocWithZone(v44);
  v46 = [v43 store];
  v47 = [v43 account];
  v48 = [v43 storage];
  v126.receiver = v45;
  v126.super_class = v44;
  v49 = objc_msgSendSuper2(&v126, sel_initWithStore_account_storage_, v46, v47, v48);

  v50 = v49;
  v51 = [v43 parentList];
  [v50 setParentList_];

  sub_23019EB08(v42, v9 + *(v113 + 20), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  *v9 = v50;
  v52 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.ListSectionsInvocation()) initWithFetchResultTokenToDiffAgainst_];
  v53 = v124;
  v54 = v114;
  sub_2300C1B0C(v52, v9, v143);
  if (v54)
  {

    sub_23019ECCC(v9, type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters);
    v55 = v42;
    return sub_23019ECCC(v55, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  }

  sub_23019ECCC(v9, type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters);
  v134 = v145;
  v135 = v146;
  v56 = v147;
  v136 = v147;
  v130 = v143[0];
  v131 = v143[1];
  v132 = v143[2];
  v133 = v144;
  v57 = *(&v144 + 1);
  v58 = v145;
  v59 = v146;
  sub_2301A7C3C(&v130, v129);
  v60 = v56;

  sub_230061918(&v130, &qword_27DB165A0);
  v137[0] = v130;
  v137[1] = v131;
  v137[2] = v132;
  v138 = v133;
  v139 = v57;
  v140 = v58;
  v141 = v59;
  v142 = v56;
  sub_2301A7C3C(v137, v129);
  sub_230061918(v137, &qword_27DB165A8);
  v61 = *&v137[0];

  sub_2301A7C98(v137);

  v102 = *(v61 + 16);
  if (!v102)
  {

    v66 = i;
    goto LABEL_69;
  }

  v62 = 0;
  v103 = v61;
  v104 = v61 + 32;
  v63 = v121 & 0xC000000000000001;
  if (v121 < 0)
  {
    v64 = v121;
  }

  else
  {
    v64 = v121 & 0xFFFFFFFFFFFFFF8;
  }

  v65 = 0;
  v113 = v64;
  do
  {
    if (v62 >= *(v61 + 16))
    {
      goto LABEL_73;
    }

    v105 = v62;
    v67 = v104 + 48 * v62;
    v68 = *(v67 + 8);
    v70 = *(v67 + 16);
    v71 = *(v67 + 24);
    v72 = *(v67 + 32);
    v73 = *(v67 + 40);
    v123 = *v67;
    v69 = v123;
    v124 = v73;
    Configuration = v71;
    v109 = v72;
    v106 = v68;
    v107 = v70;
    if (v123)
    {
      v122 = v65;
      v74 = v68;
      v75 = swift_allocObject();
      *(v75 + 16) = MEMORY[0x277D84F90];
      v120 = (v75 + 16);
      v127 = v74;
      v128 = v70;
      v76 = swift_allocObject();
      v77 = v111;
      v76[2] = v75;
      v76[3] = v77;
      v76[4] = v112;
      sub_23019E990(v69);
      sub_2300A85F0();

      sub_230310548();

      v78 = v120;
      swift_beginAccess();
      v127 = *v78;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
      sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
      v79 = sub_23030F7C8();
      v81 = v80;

      v82 = v119;
      swift_beginAccess();
      v83 = *(v82 + 16);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      *(v82 + 16) = v83;
      if ((v84 & 1) == 0)
      {
        v83 = sub_23007E928(0, *(v83 + 2) + 1, 1, v83);
        *(v119 + 16) = v83;
      }

      v86 = *(v83 + 2);
      v85 = *(v83 + 3);
      v65 = v122;
      if (v86 >= v85 >> 1)
      {
        v83 = sub_23007E928((v85 > 1), v86 + 1, 1, v83);
      }

      *(v83 + 2) = v86 + 1;
      v87 = &v83[16 * v86];
      *(v87 + 4) = v79;
      *(v87 + 5) = v81;
      *(v119 + 16) = v83;
      swift_endAccess();
      v127 = v111;
      v128 = v112;

      MEMORY[0x231911790](v117, v118);
      v114 = v127;
      v120 = v128;
      v69 = v123;
      v73 = v124;
    }

    else
    {
      sub_23019E990(0);

      v114 = v111;
      v120 = v88;
    }

    v122 = v73[2];
    if (v122)
    {

      v89 = 0;
      v90 = v73 + 7;
      while (1)
      {
        if (v89 >= v73[2])
        {
          __break(1u);
LABEL_73:
          __break(1u);
        }

        v91 = *(v90 - 3);
        if (v63)
        {

          v92 = v91;
          v93 = sub_230310AC8();
          if (!v93)
          {

LABEL_54:

            goto LABEL_55;
          }

          v125 = v93;
          swift_dynamicCast();
          v94 = v127;

          if (!v94)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v95 = *(v121 + 16);

          v96 = v91;
          if (!v95)
          {
            goto LABEL_54;
          }

          v97 = v65;
          v98 = v96;
          v99 = v121;
          v100 = sub_230059108(v98);
          if ((v101 & 1) == 0)
          {

            v65 = v97;
            v63 = 0;
            goto LABEL_54;
          }

          v94 = *(*(v99 + 56) + 8 * v100);
          v65 = v97;
          v63 = 0;

          if (!v94)
          {
            goto LABEL_54;
          }
        }

        sub_23018D5FC(v94, v114, v120, v119, v115, v117, v118);
        if (v65)
        {
          sub_23019ECCC(i, type metadata accessor for REMRemindersListDataView.FetchConfiguration);

          sub_23019E9DC(v123);

          return swift_bridgeObjectRelease_n();
        }

LABEL_55:
        ++v89;
        v90 += 4;
        v69 = v123;
        v73 = v124;
        if (v122 == v89)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_42:
    v62 = v105 + 1;

    sub_23019E9DC(v69);
    swift_bridgeObjectRelease_n();
    v61 = v103;
    v66 = i;
  }

  while (v62 != v102);

LABEL_69:

  v55 = v66;
  return sub_23019ECCC(v55, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
}

void sub_23018E678(id a1, void *a2, void *a3, void *a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v100 = a8;
  v107 = a6;
  v108 = a7;
  v109 = a5;
  v101 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters(0);
  MEMORY[0x28223BE20](v101);
  v104 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v99);
  v103 = (&v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v98);
  v102 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = a2;
  v145 = a3;
  v14 = a4[3];
  v15 = a4[4];
  v106 = a4;
  __swift_project_boxed_opaque_existential_1(a4, v14);
  v16 = *(v15 + 32);

  v105 = a1;
  v17 = v16(a1, v14, v15);
  v19 = v18;
  LOBYTE(a1) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x277D84F90];
  *&v135 = v17;
  *(&v135 + 1) = v19;
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a2;
  v23[4] = a3;
  sub_2300A85F0();

  sub_230310548();

  swift_beginAccess();
  *&v135 = *(v22 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
  v24 = sub_23030F7C8();
  v26 = v25;
  v27 = v109;

  swift_beginAccess();
  v28 = v27[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[2] = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_44:
    v28 = sub_23007E928(0, *(v28 + 2) + 1, 1, v28);
    v27[2] = v28;
  }

  v31 = *(v28 + 2);
  v30 = *(v28 + 3);
  if (v31 >= v30 >> 1)
  {
    v28 = sub_23007E928((v30 > 1), v31 + 1, 1, v28);
  }

  *(v28 + 2) = v31 + 1;
  v32 = &v28[16 * v31];
  *(v32 + 4) = v24;
  *(v32 + 5) = v26;
  v27[2] = v28;
  swift_endAccess();
  if ((a1 & 1) == 0)
  {
    goto LABEL_7;
  }

  v34 = v107;
  v33 = v108;
  MEMORY[0x231911790](v107, v108);
  v35 = v105;
  v36 = [v105 sectionContext];
  v37 = v146;
  if (v36)
  {

    sub_23018F334(v35, v144, v145, v27, v34, v33, v106);

    return;
  }

  v38 = v102;
  swift_storeEnumTagMultiPayload();
  v39 = v103;
  *v103 = 0x7FFFFFFFFFFFFFFFLL;
  swift_storeEnumTagMultiPayload();
  v40 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
  v41 = v35;
  v42 = REMSmartList_Codable.init(_:)(v41);
  v43 = v101;
  v44 = v104;
  sub_23019EB08(v38, v104 + *(v101 + 24), type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_23019EB08(v39, v44 + v43[8], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v44 = v42;
  *(v44 + 8) = 96;
  *(v44 + v43[7]) = 0;
  *(v44 + v43[9]) = 2;
  *(v44 + v43[10]) = 0;
  v45 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300BD6E0(v45, v44, &v135);
  if (v37)
  {

    sub_23019ECCC(v44, type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters);
    sub_23019ECCC(v39, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    sub_23019ECCC(v38, type metadata accessor for REMRemindersListDataView.ShowCompleted);

    return;
  }

  v46 = v41;
  v146 = 0;
  v26 = v121;

  v125 = v141;
  v126 = v142;
  v127 = v143;
  v121[0] = v135;
  v121[1] = v136;
  v121[2] = v137;
  v122 = v138;
  v123 = v139;
  v124 = v140;
  v47 = *(&v140 + 1);
  v48 = v141;
  LOBYTE(v112[0]) = BYTE8(v136);
  v128 = v135;
  v129 = *(v121 + 8);
  v130 = WORD4(v136);
  v131 = v137;
  v132 = *(&v140 + 1);
  v133 = v141;
  v134 = v142;

  v49 = v47;
  sub_2300E0488(v48);
  if (qword_280C9B460 != -1)
  {
    goto LABEL_47;
  }

LABEL_11:
  v50 = sub_23030EF48();
  __swift_project_value_buffer(v50, qword_280C989C8);
  v51 = v46;
  sub_2301A7A88(&v128, v112);
  v52 = sub_23030EF38();
  v53 = sub_2303102A8();

  v27 = &off_2788BD000;
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412546;
    v56 = [v51 objectID];
    *(v54 + 4) = v56;
    *v55 = v56;
    *(v54 + 12) = 2048;
    *(v54 + 14) = *(v128 + 16);
    sub_2301A7AE4(&v128);
    _os_log_impl(&dword_230044000, v52, v53, "DATAVIEW RESULT {name: REMRemindersListDataView_CustomSmartListInvocation, smartList.objectID: %@, reminder.count: %ld}", v54, 0x16u);
    sub_230061918(v55, &qword_27DB15000);
    MEMORY[0x231914180](v55, -1, -1);
    MEMORY[0x231914180](v54, -1, -1);
  }

  else
  {

    sub_2301A7AE4(&v128);
  }

  v57 = v102;
  sub_23019ECCC(v104, type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters);
  sub_23019ECCC(v103, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  sub_23019ECCC(v57, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v59 = *(&v122 + 1);
  v58 = v122;
  v28 = *(&v123 + 1);
  v60 = v123;
  v61 = v124;
  a1 = v127;
  v62 = v127;

  sub_230061918(v121, &qword_27DB14FF8);
  v63 = *(v26 + 184);
  v113 = *(v26 + 168);
  v114 = v63;
  v115 = *(v26 + 200);
  v64 = *(v26 + 152);
  v112[0] = *(v26 + 136);
  v112[1] = v64;
  v116 = *(&v134 + 1);
  v117 = __PAIR128__(v59, v58);
  v118 = __PAIR128__(v28, v60);
  v119 = v61;
  v120 = a1;
  sub_2301A7A88(v112, &v111);
  sub_230061918(v112, &qword_27DB16570);
  v65 = *&v112[0];
  v66 = *(&v113 + 1);
  v67 = v113;

  v100 = v66;

  sub_2301A7AE4(v112);
  if (!(v67 >> 62))
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v101 = v65;
    if (!v68)
    {
      goto LABEL_49;
    }

    goto LABEL_16;
  }

  v68 = sub_2303106D8();
  v101 = v65;
  if (v68)
  {
LABEL_16:
    v26 = 0;
    v104 = v67 & 0xFFFFFFFFFFFFFF8;
    v105 = (v67 & 0xC000000000000001);
    v24 = MEMORY[0x277D84F98];
    v102 = v68;
    v103 = v67;
    while (1)
    {
      if (v105)
      {
        v71 = MEMORY[0x231912650](v26, v67);
        v46 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v26 >= *(v104 + 16))
        {
          goto LABEL_42;
        }

        v71 = *(v67 + 8 * v26 + 32);
        v46 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      a1 = v71;
      v27 = [a1 objectID];
      if ((v24 & 0xC000000000000001) != 0)
      {
        if (v24 >= 0)
        {
          v24 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v72 = sub_2303106D8();
        if (__OFADD__(v72, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          swift_once();
          goto LABEL_11;
        }

        v24 = sub_2301C203C(v24, v72 + 1);
      }

      v73 = swift_isUniquelyReferenced_nonNull_native();
      v111 = v24;
      v75 = sub_230059108(v27);
      v76 = *(v24 + 16);
      v77 = (v74 & 1) == 0;
      v78 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
        goto LABEL_43;
      }

      v28 = v74;
      if (*(v24 + 24) >= v78)
      {
        if (v73)
        {
          v24 = v111;
          if (v74)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_23008B04C();
          v24 = v111;
          if (v28)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_2300867F0(v78, v73);
        v79 = sub_230059108(v27);
        if ((v28 & 1) != (v80 & 1))
        {
          goto LABEL_69;
        }

        v75 = v79;
        v24 = v111;
        if (v28)
        {
LABEL_17:
          v69 = *(v24 + 56);
          v28 = *(v69 + 8 * v75);
          *(v69 + 8 * v75) = a1;

          goto LABEL_18;
        }
      }

      *(v24 + 8 * (v75 >> 6) + 64) |= 1 << v75;
      *(*(v24 + 48) + 8 * v75) = v27;
      *(*(v24 + 56) + 8 * v75) = a1;

      v81 = *(v24 + 16);
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        goto LABEL_46;
      }

      *(v24 + 16) = v83;
LABEL_18:
      ++v26;
      v70 = v46 == v102;
      v27 = &off_2788BD000;
      v67 = v103;
      if (v70)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_49:
  v24 = MEMORY[0x277D84F98];
LABEL_50:

  v84 = v101;
  v85 = *(v101 + 16);
  if (!v85)
  {
LABEL_64:

LABEL_7:

    return;
  }

  v86 = 0;
  v87 = v24 & 0xFFFFFFFFFFFFFF8;
  if (v24 < 0)
  {
    v87 = v24;
  }

  v104 = v87;
  v105 = (v24 & 0xC000000000000001);
  v88 = v101 + 56;
  while (v86 < *(v84 + 16))
  {
    v89 = *(v88 - 24);
    if (v105)
    {

      v90 = v89;
      v91 = sub_230310AC8();
      if (!v91)
      {
        goto LABEL_65;
      }

      v110 = v91;
      sub_23004CBA4(0, &qword_27DB14808);
      swift_dynamicCast();
      v92 = v111;

      if (!v92)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v93 = *(v24 + 16);

      v94 = v89;
      if (!v93)
      {
        goto LABEL_66;
      }

      v90 = v94;
      v95 = sub_230059108(v90);
      if ((v96 & 1) == 0)
      {
LABEL_65:

LABEL_66:

        sub_2301A7B38();
        swift_allocError();
        swift_willThrow();

        return;
      }

      v92 = *(*(v24 + 56) + 8 * v95);

      if (!v92)
      {
        goto LABEL_66;
      }
    }

    v97 = v146;
    sub_23018D5FC(v92, v144, v145, v109, v106, v107, v108);
    v146 = v97;
    if (v97)
    {

      goto LABEL_7;
    }

    ++v86;

    v88 += 32;
    v84 = v101;
    if (v85 == v86)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_69:
  sub_23004CBA4(0, &qword_280C9C478);
  sub_2303112A8();
  __break(1u);
}

uint64_t sub_23018F334(void *a1, void *a2, void *a3, uint64_t a4, char *a5, uint64_t a6, void *a7)
{
  v94 = a2;
  v95 = a7;
  v98 = a5;
  v99 = a6;
  v100 = a4;
  v93 = a3;
  v132 = *MEMORY[0x277D85DE8];
  v9 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v14 = Configuration - 8;
  MEMORY[0x28223BE20](Configuration);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  swift_storeEnumTagMultiPayload();
  *v16 = 96;
  v16[*(v14 + 32)] = 0;
  v16[*(v14 + 40)] = 1;
  v17 = [a1 store];
  objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
  v18 = a1;
  v19 = REMSmartList_Codable.init(_:)(v18);
  sub_23019EB08(v16, &v12[*(v10 + 32)], type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  *v12 = v19;
  v12[8] = 0;
  v20 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300C10B0(v20, v12, v127);
  if (v7)
  {

    sub_23019ECCC(v12, type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters);
    v21 = v16;
    return sub_23019ECCC(v21, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  }

  v88 = v16;

  sub_23019ECCC(v12, type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters);
  v116 = v128;
  v117 = v129;
  v118 = v130;
  v112 = v127[1];
  v113 = v127[2];
  v114 = v127[3];
  v115 = v127[4];
  v119 = v131;
  v111 = v127[0];
  v23 = *(&v128 + 1);
  v24 = v129;
  v104 = 0;
  v25 = *(&v129 + 1);
  v27 = *(&v130 + 1);
  v26 = v130;
  v28 = v131;
  sub_2301A7B8C(&v111, v110);
  v29 = v28;

  sub_230061918(&v111, &qword_27DB16580);
  v120[2] = v113;
  v120[3] = v114;
  v120[4] = v115;
  v120[0] = v111;
  v120[1] = v112;
  v121 = v116;
  v122 = v23;
  v123 = v24;
  v124 = v25;
  v125 = __PAIR128__(v27, v26);
  v126 = v28;
  sub_2301A7B8C(v120, v110);
  sub_230061918(v120, &qword_27DB16588);
  v30 = *&v120[0];

  sub_2301A7BE8(v120);

  v31 = v104;
  sub_230187DCC(v30);
  v104 = v31;
  v32 = [v18 store];
  sub_23004CBA4(0, &qword_280C9C478);
  v33 = sub_23030FCC8();

  v34 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v110[0] = 0;
  v35 = [v32 fetchRemindersWithObjectIDs:v33 fetchOptions:v34 error:v110];

  v36 = v110[0];
  if (!v35)
  {
    v83 = v110[0];

    sub_23030E808();

    swift_willThrow();
    v21 = v88;
    return sub_23019ECCC(v21, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  }

  v37 = sub_23004CBA4(0, &qword_27DB14808);
  sub_23004CD24();
  v97 = v37;
  v38 = sub_23030F658();
  v39 = v36;

  v40 = v88;
  v84 = *(v30 + 16);
  if (v84)
  {
    v41 = 0;
    v85 = v30;
    v86 = v30 + 32;
    v105 = v38 & 0xC000000000000001;
    v42 = v38 & 0xFFFFFFFFFFFFFF8;
    if (v38 < 0)
    {
      v42 = v38;
    }

    v102 = v42;
    v103 = v38;
    v43 = v95;
    while (1)
    {
      if (v41 >= *(v30 + 16))
      {
        goto LABEL_40;
      }

      v87 = v41;
      v44 = v86 + 48 * v41;
      v46 = *v44;
      v45 = *(v44 + 8);
      v48 = *(v44 + 16);
      v47 = *(v44 + 24);
      v49 = *(v44 + 40);
      v91 = *(v44 + 32);
      v92 = v47;
      v89 = v45;
      v90 = v48;
      if (v46)
      {
        v50 = swift_allocObject();
        *(v50 + 16) = MEMORY[0x277D84F90];
        v106 = (v50 + 16);
        v108 = v45;
        v109 = v48;
        v51 = swift_allocObject();
        v52 = v94;
        v51[2] = v50;
        v51[3] = v52;
        v53 = v93;
        v51[4] = v93;
        sub_23019E990(v46);
        sub_2300A85F0();

        sub_230310548();

        v54 = v106;
        swift_beginAccess();
        v108 = *v54;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
        sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
        v55 = sub_23030F7C8();
        v57 = v56;

        v58 = v100;
        swift_beginAccess();
        v59 = *(v58 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v58 + 16) = v59;
        if (isUniquelyReferenced_nonNull_native)
        {
          v61 = v58;
        }

        else
        {
          v81 = sub_23007E928(0, *(v59 + 2) + 1, 1, v59);
          v61 = v100;
          v59 = v81;
          *(v100 + 16) = v81;
        }

        v63 = *(v59 + 2);
        v62 = *(v59 + 3);
        if (v63 >= v62 >> 1)
        {
          v82 = sub_23007E928((v62 > 1), v63 + 1, 1, v59);
          v61 = v100;
          v59 = v82;
        }

        *(v59 + 2) = v63 + 1;
        v64 = &v59[16 * v63];
        *(v64 + 4) = v55;
        *(v64 + 5) = v57;
        *(v61 + 16) = v59;
        swift_endAccess();
        v108 = v94;
        v109 = v53;

        MEMORY[0x231911790](v98, v99);
        v96 = v108;
        v101 = v109;
        v43 = v95;
      }

      else
      {
        sub_23019E990(0);

        v96 = v94;
        v101 = v65;
      }

      v106 = *(v49 + 16);
      if (v106)
      {
        break;
      }

LABEL_10:
      v41 = v87 + 1;

      sub_23019E9DC(v46);
      swift_bridgeObjectRelease_n();
      v30 = v85;
      v40 = v88;
      if (v41 == v84)
      {
        goto LABEL_38;
      }
    }

    v66 = 0;
    v67 = v49 + 56;
    while (1)
    {
      if (v66 >= *(v49 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
      }

      v68 = v49;
      v69 = v46;
      v70 = *(v67 - 24);
      if (v105)
      {

        v71 = v70;
        v72 = sub_230310AC8();
        if (!v72)
        {

LABEL_22:

          goto LABEL_23;
        }

        v107 = v72;
        swift_dynamicCast();
        v73 = v108;

        if (!v73)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v74 = *(v103 + 16);

        v75 = v70;
        if (!v74)
        {
          goto LABEL_22;
        }

        v76 = v75;
        v77 = v103;
        v78 = sub_230059108(v76);
        if ((v79 & 1) == 0)
        {

          v43 = v95;
          goto LABEL_22;
        }

        v73 = *(*(v77 + 56) + 8 * v78);
        v43 = v95;

        if (!v73)
        {
          goto LABEL_22;
        }
      }

      v80 = v104;
      sub_23018D5FC(v73, v96, v101, v100, v43, v98, v99);
      v104 = v80;
      if (v80)
      {
        sub_23019ECCC(v88, type metadata accessor for REMRemindersListDataView.FetchConfiguration);

        sub_23019E9DC(v69);

        return swift_bridgeObjectRelease_n();
      }

LABEL_23:
      v66 = (v66 + 1);
      v67 += 32;
      v46 = v69;
      v49 = v68;
      if (v106 == v66)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_38:

  return sub_23019ECCC(v40, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
}

Swift::String __swiftcall REMTestStorePopulator.dumpPinnedLists(skipsPredefinedSmartList:)(Swift::Bool skipsPredefinedSmartList)
{
  v57 = skipsPredefinedSmartList;
  if (qword_27DB13D58 != -1)
  {
    swift_once();
  }

  v1 = dword_27DB19676;
  v2 = BYTE1(dword_27DB19676);
  v3 = BYTE2(dword_27DB19676);
  v4 = HIBYTE(dword_27DB19676);
  v5 = word_27DB1967A;
  v6 = HIBYTE(word_27DB1967A);
  v7 = [objc_allocWithZone(type metadata accessor for REMAccountsListDataView.Invocation()) initWithFetchResultTokenToDiffAgainst_];
  v8 = v7;
  v9 = 0x10000000000;
  if (!v6)
  {
    v9 = 0;
  }

  v10 = 0x100000000;
  if (!v5)
  {
    v10 = 0;
  }

  v11 = v10 | v9 | (v4 << 24);
  v12 = 0x10000;
  if (!v3)
  {
    v12 = 0;
  }

  sub_23004A528(v7, v11 | v12 | (v2 << 8) | v1, v72);

  v68 = v72[8];
  v69 = v73;
  v70 = v74;
  v64 = v72[4];
  v65 = v72[5];
  v66 = v72[6];
  v67 = v72[7];
  v60 = v72[0];
  v61 = v72[1];
  v62 = v72[2];
  v63 = v72[3];
  v13 = v73;
  v14 = *(&v74 + 1);
  v15 = v74;
  sub_230054718(&v60, v71);
  v16 = v14;

  sub_230061918(&v60, &qword_27DB164B0);
  v71[6] = v66;
  v71[7] = v67;
  v71[8] = v68;
  v71[2] = v62;
  v71[3] = v63;
  v71[4] = v64;
  v71[5] = v65;
  v71[0] = v60;
  v71[1] = v61;
  v71[9] = v13;
  v71[10] = __PAIR128__(v14, v15);
  v17 = *(*(&v68 + 1) + 16);
  if (!v17)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  v56 = 0;

  v18 = (v53 + 40);
  v19 = MEMORY[0x277D84F90];
  do
  {
    v21 = *(v18 - 1);
    if (*v18)
    {
      v22 = *(v18 - 1);
      if (*v18 == 1)
      {
        v23 = [v21 displayName];
      }

      else
      {
        v23 = [v21 name];
      }

      v38 = v23;
      v39 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v41 = v40;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_23007E928(0, *(v19 + 2) + 1, 1, v19);
      }

      v43 = *(v19 + 2);
      v42 = *(v19 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v19 = sub_23007E928((v42 > 1), v43 + 1, 1, v19);
      }

LABEL_12:

      *(v19 + 2) = v44;
      v20 = &v19[16 * v43];
      *(v20 + 4) = v39;
      *(v20 + 5) = v41;
      goto LABEL_13;
    }

    if (!v57)
    {
      v24 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v26 = v25;
      v58 = 46;
      v59 = 0xE100000000000000;
      MEMORY[0x28223BE20](v24);
      v52[2] = &v58;
      v55 = v21;
      v54 = v21;

      v27 = v56;
      v29 = sub_2300F2908(0x7FFFFFFFFFFFFFFFLL, 1, sub_23011A358, v52, v24, v26, v28);
      v56 = v27;
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = (v29 + 32 * v30);
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[2];
        v35 = v31[3];
        swift_bridgeObjectRetain_n();

        v24 = MEMORY[0x2319116F0](v32, v33, v34, v35);
        v37 = v36;

        swift_bridgeObjectRelease_n();
        v26 = v37;
      }

      else
      {
      }

      v58 = 60;
      v59 = 0xE100000000000000;
      MEMORY[0x231911790](v24, v26);

      MEMORY[0x231911790](62, 0xE100000000000000);
      v39 = v58;
      v41 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_23007E928(0, *(v19 + 2) + 1, 1, v19);
      }

      v22 = v55;
      v43 = *(v19 + 2);
      v45 = *(v19 + 3);
      v44 = v43 + 1;
      if (v43 >= v45 >> 1)
      {
        v19 = sub_23007E928((v45 > 1), v43 + 1, 1, v19);
      }

      goto LABEL_12;
    }

LABEL_13:
    v18 += 16;
    --v17;
  }

  while (v17);

LABEL_32:
  v58 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
  v46 = sub_23030F7C8();
  v48 = v47;
  sub_23019E7DC(v71);

  v49 = v48;
  v50 = v46;
  result._object = v49;
  result._countAndFlagsBits = v50;
  return result;
}

uint64_t REMTestStorePopulator.dumpTemplates(formatter:)(void *a1)
{
  v170 = a1;
  v208 = *MEMORY[0x277D85DE8];
  v2 = sub_23030EBB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = *(v1 + 16);
  v8 = sub_2302DA274(v7, 0);
  v167 = (v6 + 16);
  v168 = v3;
  v155 = v7;
  v156 = v5;
  v157 = v2;
  *&v199 = v8;

  sub_23019D100(&v199, v1);

  v169 = v1;

  v10 = v199;
  v11 = *(v199 + 16);
  v171 = v6;
  if (v11)
  {
    *&v199 = MEMORY[0x277D84F90];
    sub_2303109B8();
    v12 = 32;
    do
    {
      v13 = *(v10 + v12);
      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      v12 += 16;
      --v11;
    }

    while (v11);

    v15 = v199;
    v16 = v171;
  }

  else
  {
    v16 = v6;

    v15 = MEMORY[0x277D84F90];
  }

  v18 = v167;
  v17 = v168;
  v163 = v15;
  if (v15 >> 62)
  {
    goto LABEL_75;
  }

  v151 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v151)
  {
    do
    {
      v19 = 0;
      v20 = v15 & 0xC000000000000001;
      v139 = v15 + 32;
      v140 = v15 & 0xFFFFFFFFFFFFFF8;
      v147 = (v17 + 8);
      *&v14 = 138412546;
      v134 = v14;
      v143 = v15 & 0xC000000000000001;
      while (1)
      {
        if (v20)
        {
          v21 = MEMORY[0x231912650](v19, v15);
        }

        else
        {
          if (v19 >= *(v140 + 16))
          {
            __break(1u);
LABEL_78:
            __break(1u);
          }

          v21 = *(v139 + 8 * v19);
        }

        v22 = v21;
        v23 = __OFADD__(v19++, 1);
        if (v23)
        {
          break;
        }

        v24 = [v21 templatesContext];
        if (v24)
        {
          *&v199 = 0;
          v25 = v24;
          v26 = [v24 fetchTemplatesWithError_];

          v17 = v199;
          if (!v26)
          {
            v129 = v199;

            v130 = sub_23030E808();

            swift_willThrow();

            *&v199 = 0x203A726F727245;
            *(&v199 + 1) = 0xE700000000000000;
            swift_getErrorValue();
            v9 = Error.rem_errorDescription.getter(v176);
            MEMORY[0x231911790](v9);

            return v199;
          }

          sub_23004CBA4(0, &qword_27DB164B8);
          v27 = sub_23030FCD8();
          v28 = v17;

          v153 = v27;
          if (v27 >> 62)
          {
            v29 = sub_2303106D8();
            v27 = v153;
            if (v29)
            {
LABEL_18:
              v30 = 0;
              v31 = v27 & 0xC000000000000001;
              v135 = v27 + 32;
              v136 = v27 & 0xFFFFFFFFFFFFFF8;
              v152 = v19;
              v137 = v27 & 0xC000000000000001;
              v138 = v29;
              v162 = v22;
              while (1)
              {
                if (v31)
                {
                  v32 = v30;
                  v33 = MEMORY[0x231912650](v30, v27);
                }

                else
                {
                  if (v30 >= *(v136 + 16))
                  {
                    goto LABEL_78;
                  }

                  v32 = v30;
                  v33 = *(v135 + 8 * v30);
                }

                v166 = v33;
                v23 = __OFADD__(v32, 1);
                v17 = v32 + 1;
                if (v23)
                {
                  goto LABEL_74;
                }

                v146 = v17;
                v174 = 0;
                v175 = 0xE000000000000000;
                v34 = [v166 name];
                v35 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                v37 = v36;

                v38 = swift_allocObject();
                *(v38 + 16) = MEMORY[0x277D84F90];
                *&v199 = v35;
                *(&v199 + 1) = v37;
                v39 = swift_allocObject();
                v39[2] = v38;
                v39[3] = 0;
                v39[4] = 0xE000000000000000;
                v40 = sub_2300A85F0();

                v150 = v40;
                sub_230310548();

                swift_beginAccess();
                *&v199 = *(v38 + 16);

                v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
                v148 = sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
                v149 = v41;
                v42 = sub_23030F7C8();
                v44 = v43;

                swift_beginAccess();
                v45 = *v18;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v45 = sub_23007E928(0, *(v45 + 2) + 1, 1, v45);
                }

                v47 = *(v45 + 2);
                v46 = *(v45 + 3);
                if (v47 >= v46 >> 1)
                {
                  v45 = sub_23007E928((v46 > 1), v47 + 1, 1, v45);
                }

                *(v45 + 2) = v47 + 1;
                v48 = &v45[16 * v47];
                *(v48 + 4) = v42;
                *(v48 + 5) = v44;
                v18 = v167;
                *v167 = v45;
                swift_endAccess();
                MEMORY[0x231911790](538976288, 0xE400000000000000);
                v49 = v166;
                v50 = [v166 sectionContext];
                if (!v50)
                {
                  break;
                }

                v164 = v174;
                v165 = v175;
                v51 = [v49 objectID];
                v52 = type metadata accessor for REMObjectID_Codable();
                v53 = objc_allocWithZone(v52);
                v54 = v51;
                v55 = [v54 uuid];
                v56 = v156;
                sub_23030EBA8();

                v57 = sub_23030EB88();
                (*v147)(v56, v157);
                v58 = [v54 entityName];
                if (!v58)
                {
                  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                  v58 = sub_23030F8B8();
                }

                v172.receiver = v53;
                v172.super_class = v52;
                v59 = objc_msgSendSuper2(&v172, sel_initWithUUID_entityName_, v57, v58);

                v60 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation()) initWithFetchResultTokenToDiffAgainst_];
                v61 = v141 & 0xFF000000 | 0x181;
                sub_2300C2558(v60, v59, v61, &v199);
                v141 = v61;

                v16 = &v181;
                v187 = v205;
                v188 = v206;
                v62 = v207;
                v189 = v207;
                v183 = v201;
                v184 = v202;
                v185 = v203;
                v186 = v204;
                v181 = v199;
                v182 = v200;
                v63 = *(&v204 + 1);
                v64 = v205;
                v66 = *(&v206 + 1);
                v65 = v206;
                sub_23019E8E0(&v181, &v177);
                v67 = v62;

                sub_230061918(&v181, &qword_27DB164D0);
                v192 = v183;
                v193 = v184;
                v194 = v185;
                v190 = v181;
                v191 = v182;
                *&v195 = v186;
                *(&v195 + 1) = v63;
                v196 = v64;
                v197 = __PAIR128__(v66, v65);
                v198 = v62;
                sub_23019E8E0(&v190, &v177);
                sub_230061918(&v190, &qword_27DB164D8);
                v68 = v190;
                v17 = v192;

                sub_23019E93C(&v190);

                v142 = *(v68 + 16);
                if (!v142)
                {

                  v16 = v171;
LABEL_60:
                  v19 = v152;
                  v70 = v162;
                  goto LABEL_61;
                }

                v17 = 0;
                v144 = v68;
                v145 = v68 + 32;
                do
                {
                  if (v17 >= *(v68 + 16))
                  {
                    goto LABEL_73;
                  }

                  v154 = v17;
                  v71 = (v145 + 48 * v17);
                  v72 = v71[1];
                  v73 = v71[2];
                  v74 = v71[3];
                  v75 = v71[4];
                  v76 = v71[5];
                  v168 = *v71;
                  v16 = v168;
                  v160 = v75;
                  v161 = v74;
                  v158 = v72;
                  v159 = v73;
                  if (v168)
                  {
                    v77 = swift_allocObject();
                    *(v77 + 16) = MEMORY[0x277D84F90];
                    v177 = v72;
                    v178 = v73;
                    v78 = swift_allocObject();
                    v79 = v164;
                    v78[2] = v77;
                    v78[3] = v79;
                    v78[4] = v165;
                    sub_23019E990(v16);

                    sub_230310548();

                    swift_beginAccess();
                    v177 = *(v77 + 16);

                    v80 = sub_23030F7C8();
                    v82 = v81;

                    v83 = v167;
                    swift_beginAccess();
                    v84 = *v83;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v84 = sub_23007E928(0, *(v84 + 2) + 1, 1, v84);
                    }

                    v86 = *(v84 + 2);
                    v85 = *(v84 + 3);
                    if (v86 >= v85 >> 1)
                    {
                      v84 = sub_23007E928((v85 > 1), v86 + 1, 1, v84);
                    }

                    *(v84 + 2) = v86 + 1;
                    v87 = &v84[16 * v86];
                    *(v87 + 4) = v80;
                    *(v87 + 5) = v82;
                    *v167 = v84;
                    swift_endAccess();
                    v177 = v164;
                    v178 = v165;

                    MEMORY[0x231911790](538976288, 0xE400000000000000);
                    v88 = v177;
                    v17 = v178;
                    v16 = v168;
                  }

                  else
                  {
                    sub_23019E990(0);

                    v17 = v165;

                    v88 = v164;
                  }

                  v89 = *(v76 + 2);

                  if (v89)
                  {
                    v18 = 0;
                    v90 = v76 + 7;
                    while (v18 < *(v76 + 2))
                    {
                      v92 = *(v90 - 1);
                      v93 = *v90;
                      v94 = *(v90 - 16);
                      v177 = *(v90 - 3);
                      v91 = v177;
                      LOBYTE(v178) = v94;
                      v179 = v92;
                      v180 = v93;

                      v95 = v91;
                      sub_2301916BC(&v177, v88, v17, v169, v171, v170, 538976288, 0xE400000000000000);

                      v18 = (v18 + 1);
                      v90 += 4;
                      v16 = v168;
                      if (v89 == v18)
                      {
                        goto LABEL_33;
                      }
                    }

                    __break(1u);
                    goto LABEL_71;
                  }

LABEL_33:
                  v69 = v154 + 1;

                  sub_23019E9DC(v16);
                  v17 = v69;

                  v16 = v171;
                  v18 = v167;
                  v19 = v152;
                  v70 = v162;
                  v68 = v144;
                }

                while (v69 != v142);

LABEL_61:
                v31 = v137;
                v30 = v146;
                v27 = v153;
                if (v146 == v138)
                {

                  goto LABEL_67;
                }
              }

              v96 = [v49 objectID];
              v97 = type metadata accessor for REMObjectID_Codable();
              v98 = objc_allocWithZone(v97);
              v99 = v96;
              v100 = [v99 uuid];
              v101 = v156;
              sub_23030EBA8();

              v102 = sub_23030EB88();
              (*v147)(v101, v157);
              v103 = [v99 entityName];
              if (!v103)
              {
                _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                v103 = sub_23030F8B8();
              }

              v173.receiver = v98;
              v173.super_class = v97;
              v104 = objc_msgSendSuper2(&v173, sel_initWithUUID_entityName_, v102, v103);

              v105 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.TemplateInvocation()) initWithFetchResultTokenToDiffAgainst_];
              v106 = v133 & 0xFF000000 | 0x181;
              sub_2300C2F8C(v105, v104, v106, &v199);

              v196 = v205;
              v197 = v206;
              v198 = v207;
              v192 = v201;
              v193 = v202;
              v194 = v203;
              v195 = v204;
              v190 = v199;
              v191 = v200;
              sub_23019E830(&v190, &v181);
              if (qword_280C9B460 != -1)
              {
                swift_once();
              }

              v107 = sub_23030EF48();
              __swift_project_value_buffer(v107, qword_280C989C8);
              v108 = v99;
              sub_23019E830(&v190, &v181);
              v109 = sub_23030EF38();
              v110 = sub_2303102A8();

              v111 = os_log_type_enabled(v109, v110);
              v133 = v106;
              if (v111)
              {
                v112 = swift_slowAlloc();
                v113 = swift_slowAlloc();
                *v112 = v134;
                *(v112 + 4) = v108;
                *v113 = v108;
                *(v112 + 12) = 2048;
                *(v112 + 14) = *(*(&v190 + 1) + 16);
                v114 = v108;
                sub_23019E88C(&v190);
                _os_log_impl(&dword_230044000, v109, v110, "DATAVIEW RESULT {name: REMRemindersListDataView_TemplateInvocation, templateObjectID: %@, reminder.count: %ld}", v112, 0x16u);
                sub_230061918(v113, &qword_27DB15000);
                MEMORY[0x231914180](v113, -1, -1);
                MEMORY[0x231914180](v112, -1, -1);

                v109 = v104;
                v104 = v114;
              }

              else
              {

                sub_23019E88C(&v190);
              }

              v115 = *(&v195 + 1);
              v116 = v196;
              v117 = v197;
              v118 = v198;
              v119 = v198;

              sub_230061918(&v190, &qword_27DB164C0);
              v184 = v193;
              v185 = v194;
              v182 = v191;
              v183 = v192;
              v181 = v190;
              *&v186 = v195;
              *(&v186 + 1) = v115;
              v187 = v116;
              v188 = v117;
              v189 = v118;
              v17 = *(&v190 + 1);
              v120 = *(*(&v190 + 1) + 16);
              v121 = v175;

              if (!v120)
              {
LABEL_59:

                sub_230061918(&v181, &qword_27DB164C8);

                v16 = v171;
                v18 = v167;
                goto LABEL_60;
              }

              v16 = 0;
              v18 = (v17 + 56);
              while (v16 < *(v17 + 16))
              {
                v123 = *(v18 - 1);
                v124 = *v18;
                v125 = *(v18 - 16);
                v177 = *(v18 - 3);
                v122 = v177;
                LOBYTE(v178) = v125;
                v179 = v123;
                v180 = v124;

                v126 = v122;
                sub_2301916BC(&v177, v116, v121, v169, v171, v170, 538976288, 0xE400000000000000);

                v16 = (v16 + 1);
                v18 += 4;
                if (v120 == v16)
                {
                  goto LABEL_59;
                }
              }

LABEL_71:
              __break(1u);
              break;
            }
          }

          else
          {
            v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v29)
            {
              goto LABEL_18;
            }
          }
        }

LABEL_67:
        v15 = v163;
        v20 = v143;
        if (v19 == v151)
        {

          swift_beginAccess();
          *&v190 = *(v16 + 2);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
          sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
          v127 = sub_23030F7C8();

          return v127;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      v131 = sub_2303106D8();
      v15 = v163;
      v151 = v131;
    }

    while (v131);
  }

  return 0x6F636361206F6E3CLL;
}

void sub_2301916BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v56 = *MEMORY[0x277D85DE8];
  v14 = *a1;
  v51 = a1[3];
  v15 = *(a4 + 16);
  v16 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v52 = 0;
  v17 = [v15 fetchReminderWithObjectID:v14 fetchOptions:v16 error:&v52];

  v18 = v52;
  if (v17)
  {
    v19 = a6[3];
    v20 = a6[4];
    v45 = a6;
    __swift_project_boxed_opaque_existential_1(a6, v19);
    v49 = a2;
    v50 = a5;
    v21 = *(v20 + 40);
    v22 = v18;
    v43 = v17;
    v23 = v21(v17, v19, v20);
    v25 = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = MEMORY[0x277D84F90];
    v52 = v23;
    v53 = v25;
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v49;
    v27[4] = a3;
    sub_2300A85F0();

    sub_230310548();

    swift_beginAccess();
    v52 = *(v26 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
    v28 = sub_23030F7C8();
    v30 = v29;

    swift_beginAccess();
    v31 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v33 = v51;
      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      if (v35 >= v34 >> 1)
      {
        v31 = sub_23007E928((v34 > 1), v35 + 1, 1, v31);
      }

      *(v31 + 2) = v35 + 1;
      v36 = &v31[16 * v35];
      *(v36 + 4) = v28;
      *(v36 + 5) = v30;
      *(a5 + 16) = v31;
      swift_endAccess();
      if (!v51)
      {
        break;
      }

      v44 = *(v51 + 16);
      if (!v44)
      {
        break;
      }

      v30 = 0;
      v37 = (v51 + 56);
      while (v30 < *(v33 + 16))
      {
        v39 = *(v37 - 1);
        v31 = *v37;
        v40 = *(v37 - 16);
        v52 = *(v37 - 3);
        v38 = v52;
        LOBYTE(v53) = v40;
        v54 = v39;
        v55 = v31;

        v41 = v38;
        a5 = a8;
        MEMORY[0x231911790](a7, a8);
        v28 = a3;
        sub_2301916BC(&v52, v49, a3, a4, v50, v45, a7, a8);

        if (v9)
        {

          return;
        }

        ++v30;
        v37 += 4;
        v33 = v51;
        if (v44 == v30)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_15:
      v31 = sub_23007E928(0, *(v31 + 2) + 1, 1, v31);
      *(a5 + 16) = v31;
    }

LABEL_11:
  }

  else
  {
    v42 = v52;
    sub_23030E808();

    swift_willThrow();
  }
}

uint64_t sub_230191AF8()
{
  v0 = sub_23030EB58();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27DB16448);
  __swift_project_value_buffer(v0, qword_27DB16448);
  sub_23030EB48();
  sub_23030EA98();
  return (*(v1 + 8))(v4, v0);
}

void sub_230191BE8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v165 = a6;
  v166 = a7;
  v146 = a5;
  v172 = a4;
  v136 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v9 - 8);
  v141 = &v134 - v10;
  v159 = sub_23030EBB8();
  v139 = *(v159 - 8);
  v11 = MEMORY[0x28223BE20](v159);
  v158 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v157 = &v134 - v14;
  MEMORY[0x28223BE20](v13);
  v156 = &v134 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v16 - 8);
  v145 = &v134 - v17;
  v148 = type metadata accessor for REMTestStorePopulator.TestListSection(0);
  MEMORY[0x28223BE20](v148);
  v155 = (&v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
  v161 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v162 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v152 = &v134 - v22;
  v151 = type metadata accessor for REMTestStorePopulator.TestList.ListChild(0);
  v154 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_23030EB58();
  v144 = *(v149 - 8);
  v24 = MEMORY[0x28223BE20](v149);
  v147 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v140 = &v134 - v27;
  MEMORY[0x28223BE20](v26);
  v135 = (&v134 - v28);
  v30 = *a2;
  v29 = *(a2 + 8);
  v31 = *(a2 + 24);
  v32 = *(a2 + 40);
  v33 = *(a2 + 48);
  v34 = *(a2 + 56);
  v169 = *(a2 + 64);
  v170 = v33;
  LODWORD(v171) = *(a2 + 72);
  v35 = *(a2 + 88);
  v153 = *(a2 + 80);
  v163 = v35;
  LODWORD(v143) = *(a2 + 96);
  LODWORD(v137) = *(a2 + 97);
  v36 = *(a2 + 112);
  v134 = *(a2 + 104);
  v138 = v36;
  LODWORD(v142) = *(a2 + 120);

  v167 = a1;
  sub_2301FE8A8([a1 objectID], v30, v29);
  if (v32)
  {
    v37 = objc_allocWithZone(MEMORY[0x277D445D0]);
    v38 = sub_23030F8B8();
    v39 = [v37 initWithCKSymbolicColorName:v38 hexString:0];
    v40 = v164;
  }

  else
  {
    v40 = v164;
    v41 = v167;
    v42 = v162;
    if (!v31)
    {
      goto LABEL_6;
    }

    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v43 = objc_allocWithZone(MEMORY[0x277D445D0]);
    v44 = sub_23030F8B8();

    v38 = sub_23030F8B8();
    v39 = [v43 initWithCKSymbolicColorName:v44 hexString:v38];
  }

  v41 = v167;
  [v167 setColor_];

  v42 = v162;
LABEL_6:
  if (v34)
  {
    [v41 setSortingStyle_];
  }

  v45 = [v41 appearanceContext];
  [v45 setBadge_];

  if ((v171 & 1) == 0)
  {
    [v41 setSharingStatus_];
  }

  v160 = *(v163 + 16);
  if (v160)
  {
    v46 = 0;
    v47 = v163 + 48;
    do
    {
      if (v46 >= *(v163 + 16))
      {
        goto LABEL_77;
      }

      v169 = v46;
      v52 = *(v47 + 16);
      v53 = *(v47 + 24);
      v54 = *(v47 + 32);
      v170 = *(v47 + 40);

      v171 = v53;
      v172 = v52;
      sub_230124A00();
      v55 = v167;
      v56 = [v167 accountCapabilities];
      v57 = [v56 supportsListSharees];

      if (!v57 || (v58 = [objc_allocWithZone(MEMORY[0x277D446C0]) initWithListChangeItem_]) == 0)
      {

        sub_230124A18();
        sub_2301A7D5C();
        swift_allocError();
        *v64 = 4;
        swift_willThrow();
        return;
      }

      v59 = v58;
      v168 = sub_23030F8B8();

      v60 = sub_23030F8B8();

      if (v54)
      {
        v175 = 0x3A6F746C69616DLL;
        v48 = 0xE700000000000000;
      }

      else
      {
        v175 = 980182388;
        v48 = 0xE400000000000000;
      }

      v176 = v48;
      MEMORY[0x231911790](v172, v171);
      v46 = v169 + 1;
      v49 = sub_23030F8B8();
      sub_230124A18();

      v50 = v168;
      v51 = [v59 addShareeWithDisplayName:0 firstName:v168 lastName:v60 address:v49 status:v170 accessLevel:2];

      v47 += 64;
      v40 = v164;
      v42 = v162;
    }

    while (v160 != v46);
  }

  v46 = v167;
  v61 = [v167 groceryContextChangeItem];
  if (v61)
  {
    v62 = v61;
    [v61 setShouldCategorizeGroceryItems_];
    if (v138)
    {
      v63 = sub_23030F8B8();
    }

    else
    {
      v63 = 0;
    }

    [v62 setGroceryLocaleID_];
  }

  v65 = [v46 autoCategorizeContextChangeItem];
  [v65 setShouldAutoCategorizeItems_];

  if (!v143)
  {
    goto LABEL_28;
  }

  v66 = v149;
  if (qword_27DB13BF0 != -1)
  {
    goto LABEL_79;
  }

LABEL_27:
  __swift_project_value_buffer(v66, qword_27DB16448);
  v67 = v135;
  sub_23030EA98();
  v68 = sub_23030EAA8();
  (*(v144 + 8))(v67, v66);
  [v46 setPinnedDate_];

LABEL_28:
  v69 = v153;
  v70 = *(v153 + 16);
  if (!v70)
  {
    return;
  }

  v71 = 0;
  v163 = v153 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
  v142 = (v144 + 48);
  v134 = (v144 + 32);
  v143 = (v144 + 8);
  v169 = v139 + 8;
  v170 = v139 + 16;
  v135 = (v139 + 56);
  v72 = v152;
  v136 = v70;
  while (1)
  {
    if (v71 >= *(v69 + 16))
    {
      goto LABEL_78;
    }

    v78 = v150;
    sub_23019EB08(v163 + *(v154 + 72) * v71, v150, type metadata accessor for REMTestStorePopulator.TestList.ListChild);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_23019ED2C(v78, v72, type metadata accessor for REMTestStorePopulator.TestReminder);
    v88 = [v46 saveRequest];
    v89 = sub_23030F8B8();
    v90 = [v88 addReminderWithTitle:v89 toListChangeItem:v46];

    sub_230193F34(v90, v72, v165, v166);
    if (v40)
    {

      v131 = type metadata accessor for REMTestStorePopulator.TestReminder;
      v132 = v72;
      goto LABEL_71;
    }

    sub_23019ECCC(v72, type metadata accessor for REMTestStorePopulator.TestReminder);

LABEL_32:
    ++v71;
    v72 = v152;
    v69 = v153;
    if (v71 == v70)
    {
      return;
    }
  }

  v79 = v155;
  sub_23019ED2C(v78, v155, type metadata accessor for REMTestStorePopulator.TestListSection);
  v80 = [v46 sectionsContextChangeItem];
  if (v80)
  {
    v81 = v80;
    v144 = v71;
    v82 = [v46 saveRequest];
    v83 = *v79;
    v84 = v79[1];

    v172 = v83;
    v85 = sub_23030F8B8();
    v160 = v81;
    v86 = [v82 addListSectionWithDisplayName:v85 toListSectionContextChangeItem:v81];

    if (v79[3])
    {
      v87 = sub_23030F8B8();
    }

    else
    {
      v87 = 0;
    }

    [v86 setCanonicalName_];

    v91 = v145;
    sub_230055F74(v79 + *(v148 + 24), v145, &unk_27DB15AA0);
    v92 = v149;
    if ((*v142)(v91, 1, v149) == 1)
    {
      sub_230061918(v91, &unk_27DB15AA0);
    }

    else
    {
      v93 = v140;
      (*v134)(v140, v91, v92);
      v94 = v86;
      v95 = sub_23030EAA8();
      [v94 setCreationDate_];

      (*v143)(v93, v92);
    }

    v168 = v86;
    v96 = [v168 objectID];
    sub_2301FE8A8(v96, v172, v84);
    v97 = MEMORY[0x277D84FA0];
    v175 = MEMORY[0x277D84FA0];
    v98 = *(v155 + *(v148 + 28));
    v99 = *(v98 + 16);
    if (v99)
    {
      v100 = 0;
      while (v100 < *(v98 + 16))
      {
        sub_23019EB08(v98 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v100, v42, type metadata accessor for REMTestStorePopulator.TestReminder);
        v101 = [v46 saveRequest];
        v102 = sub_23030F8B8();
        v103 = [v101 addReminderWithTitle:v102 toListChangeItem:v46];

        sub_230193F34(v103, v42, v165, v166);
        if (v40)
        {

          v130 = v168;
          sub_23019ECCC(v42, type metadata accessor for REMTestStorePopulator.TestReminder);

          v131 = type metadata accessor for REMTestStorePopulator.TestListSection;
          v132 = v155;
          goto LABEL_71;
        }

        ++v100;
        sub_23019ECCC(v42, type metadata accessor for REMTestStorePopulator.TestReminder);
        sub_2300A96E4(&v182, [v103 objectID]);

        if (v99 == v100)
        {
          v104 = v175;
          v97 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }
      }

      goto LABEL_76;
    }

    v104 = MEMORY[0x277D84FA0];
LABEL_51:
    v164 = v40;
    v105 = v168;
    v139 = [v168 objectID];

    sub_23030EB28();
    v182 = v97;
    v138 = v104;
    if ((v104 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_230310698();
      sub_23004CBA4(0, &qword_280C9C478);
      sub_23004CD24();
      sub_23030FF88();
      v104 = v177;
      v106 = v178;
      v107 = v179;
      v46 = v180;
      v42 = v181;
    }

    else
    {
      v108 = -1 << *(v104 + 32);
      v106 = v104 + 56;
      v109 = ~v108;
      v110 = -v108;
      if (v110 < 64)
      {
        v111 = ~(-1 << v110);
      }

      else
      {
        v111 = -1;
      }

      v42 = v111 & *(v104 + 56);

      v107 = v109;
      v46 = 0;
    }

    v137 = v107;
    v112 = (v107 + 64) >> 6;
    v171 = v112;
    if (v104 < 0)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v113 = v46;
      v114 = v42;
      v115 = v46;
      if (!v42)
      {
        while (1)
        {
          v115 = (v113 + 1);
          if (__OFADD__(v113, 1))
          {
            break;
          }

          if (v115 >= v112)
          {
            goto LABEL_68;
          }

          v114 = *(v106 + 8 * v115);
          ++v113;
          if (v114)
          {
            goto LABEL_62;
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
        swift_once();
        v66 = v149;
        goto LABEL_27;
      }

LABEL_62:
      v116 = (v114 - 1) & v114;
      v117 = *(*(v104 + 48) + ((v115 << 9) | (8 * __clz(__rbit64(v114)))));
      if (!v117)
      {
        break;
      }

      while (1)
      {
        v119 = [v117 uuid];
        v172 = v116;
        v120 = v119;
        v121 = v106;
        v122 = v104;
        v123 = v156;
        sub_23030EBA8();

        v124 = v158;
        v125 = v159;
        (*v170)(v158, v123, v159);
        v40 = v157;
        sub_2300A8E40(v157, v124);
        v126 = *v169;
        (*v169)(v40, v125);
        v127 = v123;
        v104 = v122;
        v106 = v121;
        v112 = v171;
        v126(v127, v125);

        v46 = v115;
        v42 = v172;
        if ((v104 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_64:
        v118 = sub_230310718();
        if (v118)
        {
          v173 = v118;
          sub_23004CBA4(0, &qword_280C9C478);
          swift_dynamicCast();
          v117 = v174;
          v115 = v46;
          v116 = v42;
          if (v174)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

LABEL_68:
    sub_230060014();

    v128 = v182;
    v129 = v139;
    if (v139)
    {
      v73 = [v139 uuid];
      v74 = v141;
      sub_23030EBA8();

      v75 = 0;
      v40 = v164;
      v46 = v167;
    }

    else
    {
      v75 = 1;
      v40 = v164;
      v46 = v167;
      v74 = v141;
    }

    v42 = v162;
    v71 = v144;
    (*v135)(v74, v75, 1, v159);
    v76 = v147;
    v77 = v160;
    sub_230188188(v128, v74, v147);

    sub_230061918(v74, &qword_27DB14800);
    (*v143)(v76, v149);
    sub_23019ECCC(v155, type metadata accessor for REMTestStorePopulator.TestListSection);
    v70 = v136;
    goto LABEL_32;
  }

  sub_2301A7D5C();
  swift_allocError();
  *v133 = 19;
  swift_willThrow();
  v131 = type metadata accessor for REMTestStorePopulator.TestListSection;
  v132 = v79;
LABEL_71:
  sub_23019ECCC(v132, v131);
}