uint64_t sub_20BBB641C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void sub_20BBB65CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20BBBD860();
  }
}

void sub_20BBB6620()
{
  v0 = sub_20C13C554();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_20B51C88C(0, &qword_281100530);
      *v3 = sub_20C13D374();
      (*(v1 + 104))(v3, *MEMORY[0x277D85200], v0);
      v7 = sub_20C13C584();
      (*(v1 + 8))(v3, v0);
      if (v7)
      {
        [v6 dismissViewControllerAnimated:0 completion:0];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_20BBB67E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20BBB6908()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_remoteParticipantClient), *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_remoteParticipantClient + 24));
  sub_20C139C84();
  v5 = sub_20C137CB4();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v5(sub_20B5DF6DC, v6);

  (*(v2 + 8))(v4, v1);
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_systemRoutingController + 8);
  ObjectType = swift_getObjectType();
  (*(v7 + 40))(3, ObjectType, v7);
  v9 = sub_20C13C954();
  (*(v7 + 16))(v9);
  v10 = *(v7 + 64);
  v11 = swift_unknownObjectRetain();
  v10(v11, ObjectType, v7);
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_systemOutputControlDeviceDiscovery + 8);
  v13 = swift_getObjectType();
  (*(v12 + 16))(v13, v12);
  return sub_20BBBAAE0();
}

uint64_t sub_20BBB6B30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_remoteParticipantClient), *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_remoteParticipantClient + 24));
  sub_20C139C74();
  v6 = sub_20C137CB4();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v6(sub_20B5DF6DC, v7);

  (*(v3 + 8))(v5, v2);
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_systemRoutingController + 8);
  ObjectType = swift_getObjectType();
  (*(v8 + 40))(0, ObjectType, v8);
  (*(v8 + 64))(0, ObjectType, v8);
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_systemOutputControlDeviceDiscovery + 8);
  v11 = swift_getObjectType();
  (*(v10 + 24))(v11, v10);
  v12 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_discoveredParticipants;
  swift_beginAccess();
  *(v1 + v12) = MEMORY[0x277D84F90];
}

uint64_t sub_20BBB6D50(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v93 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v90 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v83 - v7;
  v89 = v8;
  MEMORY[0x28223BE20](v9);
  v92 = &v83 - v10;
  v88 = sub_20C135174();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v94 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v98);
  v96 = (&v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - v14;
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v95 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = &v83 - v20;
  MEMORY[0x28223BE20](v21);
  v85 = &v83 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v83 - v24;
  sub_20C13B4A4();
  sub_20B79AACC(a1, v99);
  v26 = sub_20C13BB74();
  v27 = sub_20C13D1F4();
  sub_20B79AB28(a1);
  v28 = os_log_type_enabled(v26, v27);
  v97 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v84 = v2;
    v31 = v4;
    v32 = v30;
    v99[0] = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_20B51E694(*(a1 + 32), *(a1 + 40), v99);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_20B51E694(*(a1 + 8), *(a1 + 16), v99);
    _os_log_impl(&dword_20B517000, v26, v27, "Route selected: %{public}s ((%{public}s)", v29, 0x16u);
    swift_arrayDestroy();
    v33 = v32;
    v4 = v31;
    v2 = v84;
    MEMORY[0x20F2F6A40](v33, -1, -1);
    MEMORY[0x20F2F6A40](v29, -1, -1);
  }

  v34 = *(v17 + 8);
  v34(v25, v16);
  v35 = v16;
  v36 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
  swift_beginAccess();
  sub_20BBC0B44(v2 + v36, v15);
  LODWORD(v36) = swift_getEnumCaseMultiPayload();
  sub_20BBC1098(v15, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
  if (v36 != 2)
  {
    v47 = v95;
    sub_20C13B4A4();
    v48 = sub_20C13BB74();
    v49 = sub_20C13D1D4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_20B517000, v48, v49, "Selection already in progress", v50, 2u);
      MEMORY[0x20F2F6A40](v50, -1, -1);
    }

    v51 = v47;
    return (v34)(v51, v35);
  }

  v37 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_currentSelection;
  swift_beginAccess();
  v38 = v2 + v37;
  v39 = v96;
  sub_20BBC0B44(v38, v96);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v41 = v97;
    if (EnumCaseMultiPayload == 1)
    {
      v42 = *v39;
      v43 = [*v39 routeUID];
      v44 = sub_20C13C954();
      v46 = v45;

      if (v44 == *(v41 + 8) && v46 == *(v41 + 16))
      {

LABEL_17:
        v58 = v86;
        sub_20C13B4A4();
        v59 = sub_20C13BB74();
        v60 = sub_20C13D1D4();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_20B517000, v59, v60, "Selection matches current system route", v61, 2u);
          MEMORY[0x20F2F6A40](v61, -1, -1);
        }

        v51 = v58;
        return (v34)(v51, v35);
      }

      v57 = sub_20C13DFF4();

      if (v57)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_26;
  }

  v53 = v87;
  v54 = v88;
  (*(v87 + 32))(v94, v39, v88);
  v55 = sub_20C135104();
  v41 = v97;
  if (v55 == *(v97 + 8) && v56 == *(v97 + 16))
  {
  }

  else
  {
    v62 = sub_20C13DFF4();

    if ((v62 & 1) == 0)
    {
      (*(v53 + 8))(v94, v54);
LABEL_26:
      v67 = v91;
      sub_20BBBDAC4(v91);
      v68 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v69 = swift_allocObject();
      v70 = *(v41 + 16);
      *(v69 + 16) = *v41;
      *(v69 + 32) = v70;
      *(v69 + 48) = *(v41 + 32);
      *(v69 + 64) = *(v41 + 48);
      *(v69 + 72) = v68;
      v71 = swift_allocObject();
      *(v71 + 16) = sub_20BBC1154;
      *(v71 + 24) = v69;
      v72 = swift_allocObject();
      *(v72 + 16) = sub_20B66A8BC;
      *(v72 + 24) = v71;
      v73 = v93;
      v74 = v90;
      (*(v93 + 16))(v90, v67, v4);
      v75 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v76 = (v89 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
      v77 = swift_allocObject();
      (*(v73 + 32))(v77 + v75, v74, v4);
      v78 = (v77 + v76);
      *v78 = sub_20B66A8B4;
      v78[1] = v72;
      sub_20B79AACC(v41, v99);
      v79 = v92;
      sub_20C137C94();
      v80 = *(v73 + 8);
      v80(v67, v4);
      v81 = sub_20C137CB4();
      v82 = swift_allocObject();
      *(v82 + 16) = 0;
      *(v82 + 24) = 0;
      v81(sub_20B5DF6DC, v82);

      return (v80)(v79, v4);
    }
  }

  v63 = v85;
  sub_20C13B4A4();
  v64 = sub_20C13BB74();
  v65 = sub_20C13D1D4();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_20B517000, v64, v65, "Selection matches current participant", v66, 2u);
    MEMORY[0x20F2F6A40](v66, -1, -1);
  }

  v34(v63, v35);
  return (*(v53 + 8))(v94, v54);
}

void sub_20BBB7748(uint64_t a1)
{
  if (*a1 == 3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v3 = Strong;
    sub_20BBB8460(*(a1 + 8), *(a1 + 16));
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = v4;
    sub_20BBB7814(*(a1 + 8), *(a1 + 16));
  }

LABEL_7:
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_20BBBAAE0();
  }
}

uint64_t sub_20BBB7814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v56 = a2;
  v45 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v45);
  v49 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  sub_20C13B4A4();
  sub_20C13BB64();
  v12 = *(v6 + 8);
  v12(v11, v5);
  v13 = *(v3 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_systemRoutingController);
  v14 = *(v3 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_systemRoutingController + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 80);
  v46 = ObjectType;
  v47 = v13;
  v48 = v14;
  v17 = v16(ObjectType, v14);
  v18 = v17;
  v50 = v3;
  v51 = v12;
  v53 = v6 + 8;
  v54 = v5;
  v52 = v8;
  if (v17 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v20 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x20F2F5430](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 routeUID];
      v25 = sub_20C13C954();
      v27 = v26;

      if (v25 == v55 && v27 == v56)
      {

LABEL_17:

        v30 = v49;
        *v49 = v22;
        swift_storeEnumTagMultiPayload();
        v31 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
        v32 = v50;
        swift_beginAccess();
        v33 = v22;
        sub_20BBC0BA8(v30, v32 + v31);
        swift_endAccess();
        sub_20BBBAAE0();
        v34 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        *(v35 + 24) = v34;
        v36 = v48;
        v37 = *(v48 + 88);
        v38 = v33;

        v37(v38, 0, sub_20BBC10F8, v35, v46, v36);
      }

      v29 = sub_20C13DFF4();

      if (v29)
      {
        goto LABEL_17;
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v40 = v52;
  sub_20C13B4A4();
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1D4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_20B517000, v41, v42, "Unable to find matching system route", v43, 2u);
    MEMORY[0x20F2F6A40](v43, -1, -1);
  }

  return v51(v40, v54);
}

uint64_t sub_20BBB7C90(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_20C13C4B4();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C13C4F4();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51C88C(0, &qword_281100530);
  v12 = sub_20C13D374();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_20BBC1100;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_78_4;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = a2;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BBC110C(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void sub_20BBB7F74(void *a1, void *a2)
{
  v4 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v52[-v12];
  if (a1)
  {
    v14 = a1;
    sub_20C13B4A4();
    v15 = a1;
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v54 = v4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v55 = v6;
      v21 = v20;
      v57[0] = v20;
      *v19 = 136446210;
      swift_getErrorValue();
      v22 = sub_20C13E094();
      v24 = sub_20B51E694(v22, v23, v57);
      v56 = v7;
      v25 = v24;

      *(v19 + 4) = v25;
      _os_log_impl(&dword_20B517000, v16, v17, "Error selecting route: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v26 = v21;
      v6 = v55;
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v19, -1, -1);

      (*(v8 + 8))(v13, v56);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
    sub_20C13B4A4();
    v27 = a2;
    v28 = sub_20C13BB74();
    v29 = sub_20C13D1F4();

    v30 = os_log_type_enabled(v28, v29);
    v55 = v27;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v57[0] = v54;
      *v31 = 136446210;
      v32 = [v27 routeName];
      v56 = v7;
      v33 = v32;
      v34 = sub_20C13C954();
      v53 = v29;
      v35 = v6;
      v36 = v34;
      v38 = v37;

      v39 = v36;
      v6 = v35;
      v40 = sub_20B51E694(v39, v38, v57);

      *(v31 + 4) = v40;
      _os_log_impl(&dword_20B517000, v28, v53, "Successfully selected system route: %{public}s", v31, 0xCu);
      v41 = v54;
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x20F2F6A40](v41, -1, -1);
      MEMORY[0x20F2F6A40](v31, -1, -1);

      (*(v8 + 8))(v10, v56);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v43 = Strong;
      v44 = v55;
      *v6 = v55;
      swift_storeEnumTagMultiPayload();
      v45 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_currentSelection;
      swift_beginAccess();
      v46 = v44;
      sub_20BBC0BA8(v6, v43 + v45);
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47)
  {
    v48 = v47;
    swift_storeEnumTagMultiPayload();
    v49 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
    swift_beginAccess();
    sub_20BBC0BA8(v6, v48 + v49);
    swift_endAccess();
  }

  swift_beginAccess();
  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    sub_20BBBAAE0();
  }
}

uint64_t sub_20BBB8460(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v3 = v2;
  v115 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v106 = *(v5 - 8);
  v107 = v5;
  MEMORY[0x28223BE20](v5);
  v103 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v111 = &v91 - v8;
  MEMORY[0x28223BE20](v9);
  v104 = &v91 - v10;
  v101 = v11;
  MEMORY[0x28223BE20](v12);
  v105 = &v91 - v13;
  v99 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v99);
  v100 = (&v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_20C135174();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v102 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v112 = &v91 - v19;
  v109 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v91 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v24 - 8);
  v108 = (&v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v113 = &v91 - v27;
  v28 = sub_20C13BB84();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v96 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v91 - v32;
  sub_20C13B4A4();
  sub_20C13BB64();
  v34 = *(v29 + 8);
  v98 = v28;
  v97 = v29 + 8;
  v95 = v34;
  (v34)(v33, v28);
  v35 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_discoveredParticipants;
  swift_beginAccess();
  v110 = v3;
  v36 = *(v3 + v35);
  v37 = *(v36 + 16);

  if (v37)
  {
    v39 = 0;
    v114 = v16 + 16;
    while (v39 < *(v36 + 16))
    {
      (*(v16 + 16))(v23, v36 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v39, v15);
      if (sub_20C135104() == a1 && v40 == v115)
      {

LABEL_10:

        v44 = v113;
        (*(v16 + 32))(v113, v23, v15);
        v43 = 0;
        goto LABEL_11;
      }

      v41 = a1;
      v42 = sub_20C13DFF4();

      if (v42)
      {
        goto LABEL_10;
      }

      ++v39;
      result = (*(v16 + 8))(v23, v15);
      a1 = v41;
      if (v37 == v39)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v43 = 1;
    v44 = v113;
LABEL_11:
    v45 = v108;
    (*(v16 + 56))(v44, v43, 1, v15);
    sub_20BBC0E68(v44, v45);
    if ((*(v16 + 48))(v45, 1, v15) == 1)
    {
      sub_20BB6C780(v45);
      v46 = v96;
      sub_20C13B4A4();
      v47 = sub_20C13BB74();
      v48 = sub_20C13D1D4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_20B517000, v47, v48, "Unable to find matching discovered participant", v49, 2u);
        MEMORY[0x20F2F6A40](v49, -1, -1);
      }

      v95(v46, v98);
    }

    else
    {
      v115 = *(v16 + 32);
      v50 = v112;
      v115(v112, v45, v15);
      v98 = v16 + 32;
      v51 = *(v16 + 16);
      v52 = v100;
      v51(v100, v50, v15);
      v108 = v51;
      v114 = v16 + 16;
      swift_storeEnumTagMultiPayload();
      v53 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
      v54 = v110;
      swift_beginAccess();
      sub_20BBC0BA8(v52, v54 + v53);
      swift_endAccess();
      sub_20BBBAAE0();
      __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_sessionClient), *(v54 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_sessionClient + 24));
      sub_20C13A114();
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = v102;
      v51(v102, v50, v15);
      v93 = v15;
      v57 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v96 = *(v16 + 80);
      v58 = (v109 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      v60 = v59 + v57;
      v61 = v56;
      v115(v60, v56, v15);
      *(v59 + v58) = v55;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_20BBC0F7C;
      *(v62 + 24) = v59;
      v63 = v106;
      v64 = *(v106 + 16);
      v99 = v106 + 16;
      v100 = v64;
      v65 = v103;
      v66 = v111;
      v67 = v107;
      (v64)(v103, v111);
      v68 = (*(v63 + 80) + 16) & ~*(v63 + 80);
      v97 = *(v63 + 80);
      v95 = v68;
      v69 = (v101 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = v69;
      v70 = swift_allocObject();
      v71 = *(v63 + 32);
      v94 = v63 + 32;
      v101 = v71;
      v72 = v70 + v68;
      v73 = v67;
      v71(v72, v65, v67);
      v74 = (v70 + v69);
      *v74 = sub_20B64B960;
      v74[1] = v62;
      v75 = v104;
      sub_20C137C94();
      v106 = *(v63 + 8);
      v76 = v66;
      (v106)(v66, v73);
      v77 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = v93;
      v108(v61, v112, v93);
      v79 = (v96 + 24) & ~v96;
      v80 = swift_allocObject();
      *(v80 + 16) = v77;
      v115((v80 + v79), v61, v78);
      v81 = swift_allocObject();
      *(v81 + 16) = sub_20BBC1018;
      *(v81 + 24) = v80;
      v100(v76, v75, v73);
      v82 = v92;
      v83 = swift_allocObject();
      v101(v95 + v83, v76, v73);
      v84 = (v83 + v82);
      *v84 = sub_20B5DF204;
      v84[1] = v81;
      v85 = v105;
      sub_20C137C94();
      v86 = v73;
      v87 = v73;
      v88 = v106;
      (v106)(v75, v87);
      v89 = sub_20C137CB4();
      v90 = swift_allocObject();
      *(v90 + 16) = 0;
      *(v90 + 24) = 0;
      v89(sub_20B5DF6DC, v90);
      v44 = v113;

      v88(v85, v86);
      (*(v16 + 8))(v112, v78);
    }

    return sub_20BB6C780(v44);
  }

  return result;
}

uint64_t sub_20BBB8FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = type metadata accessor for RemoteDisplayConnected();
  MEMORY[0x28223BE20](v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v49);
  v44 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C135174();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BB84();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v16 = *(v10 + 16);
  v46 = v10 + 16;
  v47 = a1;
  v45 = v16;
  v16(v12, a1, v9);
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41[2] = a2;
    v20 = v19;
    v41[0] = swift_slowAlloc();
    v50[0] = v41[0];
    *v20 = 136446210;
    sub_20BBC110C(&unk_27C76B9B0, MEMORY[0x277D515D0]);
    v21 = sub_20C13DFA4();
    v41[1] = v5;
    v22 = v7;
    v24 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = sub_20B51E694(v21, v24, v50);
    v7 = v22;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_20B517000, v17, v18, "Successfully selected participant: %{public}s", v20, 0xCu);
    v26 = v41[0];
    __swift_destroy_boxed_opaque_existential_1(v41[0]);
    MEMORY[0x20F2F6A40](v26, -1, -1);
    MEMORY[0x20F2F6A40](v20, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  (*(v42 + 8))(v15, v43);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v28 = v47;
  v30 = v44;
  v29 = v45;
  if (Strong)
  {
    v31 = Strong;
    v45(v44, v47, v9);
    swift_storeEnumTagMultiPayload();
    v32 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_currentSelection;
    swift_beginAccess();
    sub_20BBC0BA8(v30, v31 + v32);
    swift_endAccess();
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    swift_storeEnumTagMultiPayload();
    v35 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
    swift_beginAccess();
    sub_20BBC0BA8(v30, v34 + v35);
    swift_endAccess();
  }

  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    sub_20BBBAAE0();
  }

  swift_beginAccess();
  v38 = swift_unknownObjectWeakLoadStrong();
  if (v38)
  {
    v39 = v38;
    swift_unknownObjectRetain();

    swift_getObjectType();
    v29(v7, v28, v9);
    sub_20BBC110C(&qword_27C76B9C0, type metadata accessor for RemoteDisplayConnected);
    sub_20C13A764();
    swift_unknownObjectRelease();
    sub_20BBC1098(v7, type metadata accessor for RemoteDisplayConnected);
  }

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

void sub_20BBB9550(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_20BBBD0F8(a1, a3);
  }
}

int64_t sub_20BBB95C8(uint64_t a1)
{
  v2 = v1;
  v8[6] = sub_20C135164();
  v9 = v4 & 1;
  v10 = 3;
  sub_20BB08314();
  sub_20BB08368();
  result = sub_20C133C04();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v8[2] = a1;
    v6 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_discoveredParticipants;
    swift_beginAccess();
    result = sub_20BBC02A4(sub_20BBC0E48, v8);
    v7 = *(*(v2 + v6) + 16);
    if (v7 < result)
    {
      __break(1u);
    }

    else
    {
      sub_20B7A3524(result, v7);
      swift_endAccess();
      return sub_20BBBAAE0();
    }
  }

  return result;
}

uint64_t sub_20BBB96E0()
{
  v0 = sub_20C135104();
  v2 = v1;
  if (v0 == sub_20C135104() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_20C13DFF4();
  }

  return v4 & 1;
}

uint64_t sub_20BBB977C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C135174();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_20C13B534();
  sub_20C13BB64();
  v15 = *(v9 + 8);
  v15(v14, v8);
  v38[3] = sub_20C135164();
  v39 = v16 & 1;
  LOBYTE(v38[0]) = 3;
  sub_20BB08314();
  sub_20BB08368();
  result = sub_20C133C04();
  if (result)
  {
    v36 = v15;
    v37 = v4;
    v18 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_discoveredParticipants;
    swift_beginAccess();
    v19 = *(v2 + v18);

    v20 = sub_20B8899E4(a1, v19);

    if (v20)
    {
      sub_20C13B4A4();
      v21 = v37;
      (*(v5 + 16))(v7, a1, v37);
      v22 = sub_20C13BB74();
      v23 = sub_20C13D1F4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v34 = v24;
        v35 = swift_slowAlloc();
        v38[0] = v35;
        *v24 = 136446210;
        sub_20BBC110C(&unk_27C76B9B0, MEMORY[0x277D515D0]);
        v25 = sub_20C13DFA4();
        v27 = v26;
        (*(v5 + 8))(v7, v21);
        v28 = sub_20B51E694(v25, v27, v38);

        v29 = v34;
        *(v34 + 1) = v28;
        v30 = v29;
        _os_log_impl(&dword_20B517000, v22, v23, "Discovered duplicate participant: %{public}s", v29, 0xCu);
        v31 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x20F2F6A40](v31, -1, -1);
        MEMORY[0x20F2F6A40](v30, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v7, v21);
      }

      return v36(v11, v8);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE60);
      v32 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_20C14F980;
      (*(v5 + 16))(v33 + v32, a1, v37);
      swift_beginAccess();
      sub_20B8DB804(v33);
      swift_endAccess();
      return sub_20BBBAAE0();
    }
  }

  return result;
}

void sub_20BBB9BE8(uint64_t a1)
{
  v2 = v1;
  v59 = a1;
  v56 = sub_20C13C554();
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v57 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20C137974();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C135174();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  sub_20C13B4A4();
  sub_20C13BB64();
  v19 = *(v13 + 8);
  v19(v18, v12);
  v20 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
  swift_beginAccess();
  sub_20BBC0B44(v2 + v20, v8);
  if (!swift_getEnumCaseMultiPayload())
  {
    v55 = v5;
    v24 = v58;
    v25 = v59;
    v26 = v2;
    (*(v63 + 32))(v11, v8, v64);
    sub_20C135154();
    v54 = v11;
    if (!v27)
    {
      sub_20C135104();
    }

    v28 = v24;
    v29 = v25;
    v30 = sub_20C137964();
    v31 = objc_allocWithZone(SMUPasswordController);
    v32 = sub_20C13C914();

    v33 = [v31 initWithTitle:v32 passwordLength:v30 supportedOrientations:24];

    v34 = swift_allocObject();
    v35 = v26;
    swift_unknownObjectWeakInit();
    v36 = v60;
    v37 = v61;
    v38 = v62;
    (*(v61 + 16))(v60, v29, v62);
    v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v40 = (v55 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    (*(v37 + 32))(v41 + v39, v36, v38);
    *(v41 + v40) = v34;
    v69 = sub_20BBC0D94;
    v70 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_20BBBA810;
    v68 = &block_descriptor_96;
    v42 = _Block_copy(&aBlock);

    [v33 setPasswordEnteredHandler_];
    _Block_release(v42);
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = sub_20BBC0E40;
    v70 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_20B7B548C;
    v68 = &block_descriptor_40_0;
    v44 = _Block_copy(&aBlock);

    [v33 setPasswordEntryCancelledHandler_];
    _Block_release(v44);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v46 = Strong;
      sub_20B51C88C(0, &qword_281100530);
      v47 = sub_20C13D374();
      v49 = v56;
      v48 = v57;
      *v57 = v47;
      (*(v28 + 104))(v48, *MEMORY[0x277D85200], v49);
      v50 = sub_20C13C584();
      (*(v28 + 8))(v48, v49);
      if ((v50 & 1) == 0)
      {
        __break(1u);
        return;
      }

      v51 = [v33 viewController];
      [v46 presentViewController:v51 animated:1 completion:0];
      swift_unknownObjectRelease();
    }

    (*(v63 + 8))(v54, v64);
    v52 = *(v35 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_passwordController);
    *(v35 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_passwordController) = v33;

    return;
  }

  sub_20BBC1098(v8, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
  sub_20C13B4A4();
  v21 = sub_20C13BB74();
  v22 = sub_20C13D1D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20B517000, v21, v22, "Password challenge while not selecting participant", v23, 2u);
    MEMORY[0x20F2F6A40](v23, -1, -1);
  }

  v19(v15, v12);
}

void sub_20BBBA340()
{
  v33 = sub_20C13BB84();
  v0 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13C554();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_20C13CA74();
  if (v9 >= sub_20C137964())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_remoteParticipantClient, v34);

      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      sub_20C139C64();
      v15 = sub_20C137CB4();
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v15(sub_20B52347C, v16);

      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = swift_unknownObjectWeakLoadStrong();

      if (v19)
      {
        sub_20B51C88C(0, &qword_281100530);
        v20 = sub_20C13D374();
        v22 = v30;
        v21 = v31;
        *v30 = v20;
        v23 = v32;
        (*(v21 + 104))(v22, *MEMORY[0x277D85200], v32);
        v24 = sub_20C13C584();
        (*(v21 + 8))(v22, v23);
        if ((v24 & 1) == 0)
        {
          __break(1u);
          return;
        }

        v25 = [v19 presentedViewController];
        if (v25)
        {
          v26 = v25;
          [v25 dismissViewControllerAnimated:1 completion:0];
        }

        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = *&v27[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_passwordController];
      *&v27[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_passwordController] = 0;
    }
  }

  else
  {
    sub_20C13B4A4();

    v10 = sub_20C13BB74();
    v11 = sub_20C13D1D4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      *(v12 + 4) = sub_20C13CA74();

      _os_log_impl(&dword_20B517000, v10, v11, "Password too short: (%{public}ld characters", v12, 0xCu);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    else
    {
    }

    (*(v0 + 8))(v2, v33);
  }
}

uint64_t sub_20BBBA810(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_20C13C954();
  v4 = v3;

  v1(v2, v4);
}

void sub_20BBBA87C()
{
  v0 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20B517000, v7, v8, "Password entry cancelled", v9, 2u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_storeEnumTagMultiPayload();
    v12 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
    swift_beginAccess();
    sub_20BBC0BA8(v2, v11 + v12);
    swift_endAccess();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_20BBBAAE0();
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = *&v15[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_passwordController];
    *&v15[OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_passwordController] = 0;
  }
}

uint64_t sub_20BBBAAE0()
{
  v1 = sub_20C13C554();
  v228 = *(v1 - 8);
  v229 = v1;
  MEMORY[0x28223BE20](v1);
  v227 = (&v226 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7680B0);
  v230 = *(v3 - 8);
  v231 = v3;
  MEMORY[0x28223BE20](v3);
  v233 = &v226 - v4;
  v254 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v254);
  v247 = &v226 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v249 = &v226 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v226 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v226 - v12;
  v14 = sub_20C135174();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v234 = &v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v238 = &v226 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v226 - v20;
  MEMORY[0x28223BE20](v22);
  v253 = &v226 - v23;
  v24 = sub_20BBBC3A0();
  v25 = *(v24 + 16);
  v251 = v0;
  v232 = v24;
  if (v25)
  {
    v26 = v24 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v27 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_currentSelection;
    v242 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
    swift_beginAccess();
    v239 = v27;
    swift_beginAccess();
    v29 = *(v15 + 16);
    v28 = v15 + 16;
    v241 = v29;
    v235 = (v28 + 16);
    v248 = (v28 - 8);
    v250 = MEMORY[0x277D84F90];
    v240 = *(v28 + 56);
    v236 = v13;
    v237 = v10;
    v246 = v14;
    v243 = v28;
    *&v252 = v21;
    while (1)
    {
      v31 = v253;
      v32 = v241;
      v241(v253, v26, v14);
      v32(v21, v31, v14);
      v33 = v251;
      sub_20BBC0B44(v251 + v242, v13);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_20BBC1098(v13, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
        }
      }

      else
      {
        (*v235)(v238, v13, v14);
        v37 = sub_20C135104();
        v39 = v38;
        if (v37 == sub_20C135104() && v39 == v40)
        {

          (*v248)(v238, v14);
LABEL_19:
          v36 = 1;
          goto LABEL_20;
        }

        v45 = sub_20C13DFF4();

        (*v248)(v238, v14);
        if (v45)
        {
          goto LABEL_19;
        }
      }

      sub_20BBC0B44(v33 + v239, v10);
      v35 = swift_getEnumCaseMultiPayload();
      if (v35)
      {
        if (v35 == 1)
        {
          sub_20BBC1098(v10, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
        }
      }

      else
      {
        (*v235)(v234, v10, v14);
        v41 = sub_20C135104();
        v43 = v42;
        if (v41 == sub_20C135104() && v43 == v44)
        {

          (*v248)(v234, v14);
          v36 = 0;
          goto LABEL_20;
        }

        v67 = sub_20C13DFF4();

        (*v248)(v234, v14);
        v36 = 0;
        if (v67)
        {
          goto LABEL_20;
        }
      }

      v36 = 2;
LABEL_20:
      v21 = v252;
      v46 = sub_20C135154();
      if (v47)
      {
        v48 = v47;
        i = v46;
        LODWORD(v245) = v36;
        type metadata accessor for SessionRoutePickerPresenter(0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v50 = [objc_opt_self() bundleForClass_];
        v51 = sub_20C13C914();
        v52 = [objc_opt_self() imageNamed:v51 inBundle:v50 withConfiguration:0];

        if (v52)
        {
          v53 = [v52 imageWithRenderingMode_];
        }

        else
        {
          v53 = 0;
        }

        v54 = v252;
        v55 = sub_20C135104();
        v56 = v54;
        v58 = v57;
        v59 = *v248;
        v60 = v246;
        (*v248)(v56, v246);
        v59(v253, v60);
        LODWORD(v258[0]) = v260;
        *(v258 + 3) = *(&v260 + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v250 = sub_20BC07C34(0, *(v250 + 2) + 1, 1, v250);
        }

        v61 = i;
        v63 = *(v250 + 2);
        v62 = *(v250 + 3);
        if (v63 >= v62 >> 1)
        {
          v250 = sub_20BC07C34((v62 > 1), v63 + 1, 1, v250);
        }

        v64 = v250;
        *(v250 + 2) = v63 + 1;
        v65 = &v64[56 * v63];
        v65[32] = 3;
        v66 = *(v258 + 3);
        *(v65 + 33) = v258[0];
        *(v65 + 9) = v66;
        *(v65 + 5) = v55;
        *(v65 + 6) = v58;
        *(v65 + 7) = v53;
        *(v65 + 8) = v61;
        *(v65 + 9) = v48;
        v65[80] = v245;
        v65[81] = 1;
        v13 = v236;
        v10 = v237;
        v21 = v252;
        v14 = v246;
      }

      else
      {
        v30 = *v248;
        (*v248)(v21, v14);
        v30(v253, v14);
      }

      v26 += v240;
      if (!--v25)
      {
        goto LABEL_32;
      }
    }
  }

  v250 = MEMORY[0x277D84F90];
LABEL_32:
  v68 = v251;
  v69 = sub_20BBBC8B0(v232);

  if (v69 >> 62)
  {
    v70 = sub_20C13DB34();
    if (v70)
    {
LABEL_34:
      *&v260 = MEMORY[0x277D84F90];
      result = sub_20BB5E440(0, v70 & ~(v70 >> 63), 0);
      if ((v70 & 0x8000000000000000) == 0)
      {
        v72 = v260;
        v248 = (v69 & 0xC000000000000001);
        v73 = objc_opt_self();
        v74 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_currentSelection;
        v245 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
        v246 = v73;
        swift_beginAccess();
        v242 = v74;
        swift_beginAccess();
        v75 = 0;
        v243 = v70 - 1;
        for (i = v69; ; v69 = i)
        {
          v76 = v72;
          v253 = v75;
          if (v248)
          {
            v77 = MEMORY[0x20F2F5430]();
          }

          else
          {
            v77 = *(v69 + 8 * v75 + 32);
          }

          v78 = v77;
          sub_20BBC0B44(v68 + v245, v249);
          v79 = swift_getEnumCaseMultiPayload();
          if (v79)
          {
            if (v79 == 1)
            {
              v80 = *v249;
              v81 = [*v249 routeUID];
              v82 = sub_20C13C954();
              v84 = v83;

              v85 = [v78 routeUID];
              v86 = sub_20C13C954();
              v88 = v87;

              if (v82 == v86 && v84 == v88)
              {

LABEL_53:
                v90 = 1;
                goto LABEL_54;
              }

              v91 = sub_20C13DFF4();

              if (v91)
              {
                goto LABEL_53;
              }
            }
          }

          else
          {
            sub_20BBC1098(v249, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
          }

          sub_20BBC0B44(v68 + v242, v247);
          v89 = swift_getEnumCaseMultiPayload();
          if (v89)
          {
            if (v89 == 1)
            {
              sub_20BBC1098(v247, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
            }

            if ([v78 isPicked])
            {
              v90 = 0;
            }

            else
            {
              v90 = 2;
            }
          }

          else
          {
            sub_20BBC1098(v247, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
            v90 = 2;
          }

LABEL_54:
          LODWORD(v252) = v90;
          v92 = v78;
          v93 = sub_20BD6D868(v92);
          v94 = [v92 routeUID];
          v95 = sub_20C13C954();
          v97 = v96;

          v98 = [v246 _iconImageForRoute_];
          if ([v92 pickableRouteType])
          {
            v99 = [v92 routeName];
          }

          else
          {
            result = MSVCopyLocalizedModelName();
            v99 = result;
            if (!result)
            {
              goto LABEL_166;
            }
          }

          v100 = sub_20C13C954();
          v102 = v101;

          v72 = v76;
          *&v260 = v76;
          v103 = *(v76 + 16);
          v104 = *(v72 + 24);
          if (v103 >= v104 >> 1)
          {
            sub_20BB5E440((v104 > 1), v103 + 1, 1);
            v72 = v260;
          }

          *(v72 + 16) = v103 + 1;
          v105 = v72 + 56 * v103;
          *(v105 + 32) = v93;
          v106 = *(v258 + 3);
          *(v105 + 33) = v258[0];
          *(v105 + 36) = v106;
          *(v105 + 40) = v95;
          *(v105 + 48) = v97;
          *(v105 + 56) = v98;
          *(v105 + 64) = v100;
          *(v105 + 72) = v102;
          *(v105 + 80) = v252;
          *(v105 + 81) = 1;
          if (v243 == v253)
          {

            v68 = v251;
            goto LABEL_64;
          }

          v75 = v253 + 1;
          v68 = v251;
        }
      }

      goto LABEL_164;
    }
  }

  else
  {
    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70)
    {
      goto LABEL_34;
    }
  }

  v72 = MEMORY[0x277D84F90];
LABEL_64:
  v107 = *(v72 + 16);
  v253 = v72;
  v246 = v107;
  if (v107)
  {
    v108 = 0;
    v109 = v72 + 32;
    v254 = (v107 - 1);
    v110 = MEMORY[0x277D84F90];
    do
    {
      v111 = v109 + 56 * v108;
      v112 = v108;
      while (1)
      {
        if (v112 >= *(v72 + 16))
        {
          __break(1u);
          goto LABEL_160;
        }

        v114 = *(v111 + 16);
        v113 = *(v111 + 32);
        v115 = *v111;
        v263 = *(v111 + 48);
        v261 = v114;
        v262 = v113;
        v260 = v115;
        v108 = v112 + 1;
        if (v115 == 2)
        {
          break;
        }

        v111 += 56;
        ++v112;
        if (v107 == v108)
        {
          goto LABEL_76;
        }
      }

      sub_20B79AACC(&v260, v258);
      result = swift_isUniquelyReferenced_nonNull_native();
      v256[0] = v110;
      if ((result & 1) == 0)
      {
        result = sub_20BB5E440(0, *(v110 + 16) + 1, 1);
        v72 = v253;
        v110 = v256[0];
      }

      v117 = *(v110 + 16);
      v116 = *(v110 + 24);
      v118 = v110;
      v107 = v246;
      if (v117 >= v116 >> 1)
      {
        result = sub_20BB5E440((v116 > 1), v117 + 1, 1);
        v107 = v246;
        v72 = v253;
        v118 = v256[0];
      }

      *(v118 + 16) = v117 + 1;
      v110 = v118;
      v119 = v118 + 56 * v117;
      v120 = v260;
      v121 = v261;
      v122 = v262;
      *(v119 + 80) = v263;
      *(v119 + 48) = v121;
      *(v119 + 64) = v122;
      *(v119 + 32) = v120;
    }

    while (v254 != v112);
LABEL_76:
    v123 = 0;
    v124 = v72 + 32;
    v125 = MEMORY[0x277D84F90];
LABEL_77:
    v126 = v124 + 56 * v123;
    v127 = v123;
    while (v127 < *(v72 + 16))
    {
      v129 = *(v126 + 16);
      v128 = *(v126 + 32);
      v130 = *v126;
      v263 = *(v126 + 48);
      v261 = v129;
      v262 = v128;
      v260 = v130;
      v123 = v127 + 1;
      if (!v130)
      {
        sub_20B79AACC(&v260, v258);
        result = swift_isUniquelyReferenced_nonNull_native();
        v256[0] = v125;
        if ((result & 1) == 0)
        {
          result = sub_20BB5E440(0, *(v125 + 16) + 1, 1);
          v72 = v253;
          v125 = v256[0];
        }

        v131 = v125;
        v132 = *(v125 + 16);
        v133 = *(v131 + 24);
        v107 = v246;
        if (v132 >= v133 >> 1)
        {
          result = sub_20BB5E440((v133 > 1), v132 + 1, 1);
          v107 = v246;
          v72 = v253;
          v131 = v256[0];
        }

        *(v131 + 16) = v132 + 1;
        v134 = v131 + 56 * v132;
        v135 = v260;
        v136 = v261;
        v137 = v262;
        *(v134 + 80) = v263;
        *(v134 + 48) = v136;
        *(v134 + 64) = v137;
        *(v134 + 32) = v135;
        v125 = v131;
        if (v254 != v127)
        {
          goto LABEL_77;
        }

        goto LABEL_89;
      }

      v126 += 56;
      ++v127;
      if (v107 == v123)
      {
        goto LABEL_89;
      }
    }

LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v110 = MEMORY[0x277D84F90];
  v125 = MEMORY[0x277D84F90];
LABEL_89:
  v138 = *(v125 + 16);
  v245 = v110;
  v139 = 0;
  if (v138)
  {
    v248 = v138;
    v249 = v68 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_systemOutputControlDeviceDiscovery;
    v140 = v125 + 32;
    v243 = (v138 - 1);
    v247 = MEMORY[0x277D84F90];
    *&v252 = v125;
    i = v125 + 32;
LABEL_91:
    v141 = (v140 + 56 * v139);
    while (v139 < *(v125 + 16))
    {
      v143 = v141[1];
      v142 = v141[2];
      v144 = *(v141 + 24);
      v260 = *v141;
      v261 = v143;
      v263 = v144;
      v262 = v142;
      v145 = (v139 + 1);
      v146 = *(&v260 + 1);
      v254 = v143;
      v147 = *(v249 + 8);
      ObjectType = swift_getObjectType();
      v149 = *(v147 + 8);
      sub_20B79AACC(&v260, v258);
      if (v149(v146, v254, ObjectType, v147))
      {
        v150 = v139;
        v151 = v247;
        result = swift_isUniquelyReferenced_nonNull_native();
        v152 = v151;
        v256[0] = v151;
        if ((result & 1) == 0)
        {
          result = sub_20BB5E440(0, *(v151 + 16) + 1, 1);
          v152 = v256[0];
        }

        v72 = v253;
        v125 = v252;
        v154 = *(v152 + 16);
        v153 = *(v152 + 24);
        if (v154 >= v153 >> 1)
        {
          result = sub_20BB5E440((v153 > 1), v154 + 1, 1);
          v72 = v253;
          v152 = v256[0];
        }

        *(v152 + 16) = v154 + 1;
        v247 = v152;
        v155 = v152 + 56 * v154;
        v156 = v260;
        v157 = v261;
        v158 = v262;
        *(v155 + 80) = v263;
        *(v155 + 48) = v157;
        *(v155 + 64) = v158;
        *(v155 + 32) = v156;
        v140 = i;
        ++v139;
        if (v243 != v150)
        {
          goto LABEL_91;
        }

LABEL_101:
        v159 = *(v125 + 16);
        if (!v159)
        {
          v174 = MEMORY[0x277D84F90];
          goto LABEL_116;
        }

        v160 = 0;
        v161 = v125 + 32;
        v248 = v159 - 1;
        v254 = MEMORY[0x277D84F90];
        v249 = v125 + 32;
LABEL_103:
        v162 = v161 + 56 * v160;
        v163 = v160;
        while (v163 < *(v125 + 16))
        {
          v164 = *v162;
          v165 = *(v162 + 16);
          v166 = *(v162 + 32);
          v263 = *(v162 + 48);
          v261 = v165;
          v262 = v166;
          v260 = v164;
          v160 = v163 + 1;
          v258[0] = v164;
          v258[1] = v165;
          v258[2] = v166;
          v259 = v263;
          MEMORY[0x28223BE20](result);
          v225 = v258;
          sub_20B79AACC(&v260, v256);
          if ((sub_20B796B00(sub_20BBC0C7C, (&v226 - 4), v247) & 1) == 0)
          {
            v167 = v254;
            result = swift_isUniquelyReferenced_nonNull_native();
            v257 = v167;
            if ((result & 1) == 0)
            {
              result = sub_20BB5E440(0, *(v167 + 16) + 1, 1);
              v167 = v257;
            }

            v72 = v253;
            v169 = *(v167 + 16);
            v168 = *(v167 + 24);
            if (v169 >= v168 >> 1)
            {
              result = sub_20BB5E440((v168 > 1), v169 + 1, 1);
              v72 = v253;
              v167 = v257;
            }

            *(v167 + 16) = v169 + 1;
            v254 = v167;
            v170 = v167 + 56 * v169;
            v171 = v260;
            v172 = v261;
            v173 = v262;
            *(v170 + 80) = v263;
            *(v170 + 48) = v172;
            *(v170 + 64) = v173;
            *(v170 + 32) = v171;
            v161 = v249;
            v125 = v252;
            if (v248 == v163)
            {
LABEL_113:
              v174 = v254;
              goto LABEL_116;
            }

            goto LABEL_103;
          }

          result = sub_20B79AB28(&v260);
          v162 += 56;
          ++v163;
          v72 = v253;
          if (v159 == v160)
          {
            goto LABEL_113;
          }
        }

        goto LABEL_163;
      }

      result = sub_20B79AB28(&v260);
      v141 = (v141 + 56);
      ++v139;
      v72 = v253;
      v125 = v252;
      if (v248 == v145)
      {
        goto LABEL_101;
      }
    }

LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v174 = MEMORY[0x277D84F90];
  v247 = MEMORY[0x277D84F90];
LABEL_116:
  v254 = v174;

  v175 = v246;
  if (!v246)
  {
    v178 = MEMORY[0x277D84F90];
LABEL_133:

    v255 = v245;
    sub_20B8DAB24(v250);
    sub_20B8DAB24(v247);
    v253 = v255;
    sub_20BBC0CEC();
    sub_20BBC0D40();
    sub_20C13BE84();
    type metadata accessor for SeymourLocalizationBundle();
    v191 = swift_getObjCClassFromMetadata();
    v192 = objc_opt_self();
    v193 = [v192 bundleForClass_];
    v225 = 0xE000000000000000;
    v194 = sub_20C132964();
    v196 = v195;

    v197 = [v192 &selRef:v191 :?speedBumpEdges + 3];
    v225 = 0xE000000000000000;
    v250 = sub_20C132964();
    v199 = v198;

    v200 = [v192 bundleForClass_];
    v225 = 0xE000000000000000;
    v201 = sub_20C132964();
    v203 = v202;

    v247 = v178;
    v204 = v203;
    v205 = v201;
    v249 = *(v178 + 16);
    if (!v249)
    {
      v206 = *(v254 + 16);
      if (v206)
      {
        v204 = v199;
      }

      else
      {
        v204 = v196;
      }

      if (v206)
      {
        v205 = v250;
      }

      else
      {
        v205 = v194;
      }
    }

    v248 = v203;
    v246 = v201;
    if (v194 == v205 && v204 == v196)
    {
    }

    else
    {
      v207 = sub_20C13DFF4();

      if ((v207 & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    sub_20C08C560(v253);

LABEL_145:
    v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B998);
    v208 = swift_allocObject();
    v252 = xmmword_20C14F980;
    *(v208 + 16) = xmmword_20C14F980;
    *(v208 + 32) = v194;
    *(v208 + 40) = v196;

    v209 = v231;
    sub_20C13BE24();

    *&v260 = v194;
    *(&v260 + 1) = v196;
    sub_20C13BE04();

    v210 = v254;
    if (!*(v254 + 16))
    {

      swift_bridgeObjectRelease_n();
      v212 = v247;
      if (v249)
      {
LABEL_154:
        sub_20C08C560(v212);

        v216 = swift_allocObject();
        *(v216 + 16) = v252;
        v217 = v246;
        v218 = v248;
        *(v216 + 32) = v246;
        *(v216 + 40) = v218;

        sub_20C13BE24();

        *&v260 = v217;
        *(&v260 + 1) = v218;
        sub_20C13BE04();

LABEL_155:
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_20B51C88C(0, &qword_281100530);
          v219 = sub_20C13D374();
          v221 = v227;
          v220 = v228;
          *v227 = v219;
          v222 = v229;
          (*(v220 + 104))(v221, *MEMORY[0x277D85200], v229);
          v223 = sub_20C13C584();
          result = (*(v220 + 8))(v221, v222);
          if ((v223 & 1) == 0)
          {
            goto LABEL_165;
          }

          v224 = sub_20B961834();
          sub_20C13BF74();
          swift_unknownObjectRelease();
        }

        return (*(v230 + 8))(v233, v209);
      }

LABEL_150:

      goto LABEL_155;
    }

    v211 = v250;
    v212 = v247;
    if (v250 == v205 && v204 == v199)
    {
    }

    else
    {
      v213 = sub_20C13DFF4();

      if ((v213 & 1) == 0)
      {
        goto LABEL_153;
      }
    }

    sub_20C08C560(v210);

LABEL_153:
    v214 = v249;
    v215 = swift_allocObject();
    *(v215 + 16) = v252;
    *(v215 + 32) = v211;
    *(v215 + 40) = v199;

    sub_20C13BE24();

    *&v260 = v211;
    *(&v260 + 1) = v199;
    sub_20C13BE04();

    if (v214)
    {
      goto LABEL_154;
    }

    goto LABEL_150;
  }

  v176 = 0;
  v177 = v72 + 32;
  *&v252 = v246 - 1;
  v178 = MEMORY[0x277D84F90];
LABEL_118:
  v179 = v177 + 56 * v176;
  v180 = v176;
  while (v180 < *(v72 + 16))
  {
    v182 = *(v179 + 16);
    v181 = *(v179 + 32);
    v183 = *v179;
    v263 = *(v179 + 48);
    v261 = v182;
    v262 = v181;
    v260 = v183;
    v176 = v180 + 1;
    if (v183 == 1 || v183 == 4)
    {
      sub_20B79AACC(&v260, v258);
      result = swift_isUniquelyReferenced_nonNull_native();
      v256[0] = v178;
      if ((result & 1) == 0)
      {
        result = sub_20BB5E440(0, *(v178 + 16) + 1, 1);
        v72 = v253;
        v178 = v256[0];
      }

      v186 = *(v178 + 16);
      v185 = *(v178 + 24);
      v175 = v246;
      if (v186 >= v185 >> 1)
      {
        result = sub_20BB5E440((v185 > 1), v186 + 1, 1);
        v175 = v246;
        v72 = v253;
        v178 = v256[0];
      }

      *(v178 + 16) = v186 + 1;
      v187 = v178 + 56 * v186;
      v188 = v260;
      v189 = v261;
      v190 = v262;
      *(v187 + 80) = v263;
      *(v187 + 48) = v189;
      *(v187 + 64) = v190;
      *(v187 + 32) = v188;
      if (v252 != v180)
      {
        goto LABEL_118;
      }

      goto LABEL_133;
    }

    v179 += 56;
    ++v180;
    if (v175 == v176)
    {
      goto LABEL_133;
    }
  }

LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
  return result;
}

uint64_t sub_20BBBC3A0()
{
  v1 = 0;
  v2 = sub_20C135174();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v49 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_discoveredParticipants;
  swift_beginAccess();
  v49 = v10;
  v50 = v0;
  v11 = *(v0 + v10);

  v61 = sub_20B6B4764(MEMORY[0x277D84F90]);
  v12 = *(v11 + 2);
  v58 = v2;
  v59 = v3;
  v57 = v12;
  if (!v12)
  {
LABEL_7:

    v30 = *(v50 + v49);
    v31 = *(v30 + 2);

    if (!v31)
    {
      v33 = MEMORY[0x277D84F90];
LABEL_25:

      return v33;
    }

    v32 = 0;
    v54 = (v3 + 32);
    v56 = (v3 + 8);
    v57 = v3 + 16;
    v33 = MEMORY[0x277D84F90];
    v1 = v61;
    v55 = v30;
    while (1)
    {
      if (v32 >= *(v30 + 2))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v35 = *(v3 + 72);
      (*(v3 + 16))(v60, &v30[v34 + v35 * v32], v2);
      v36 = sub_20C135154();
      if (!v1[2])
      {
        break;
      }

      v38 = sub_20B65B564(v36, v37);
      v40 = v39;
      v2 = v58;

      if ((v40 & 1) == 0)
      {
        goto LABEL_20;
      }

      v41 = *(v1[7] + v38);
      v42 = v60;
      sub_20C135134();
      if (v41 != 5)
      {
        v43 = sub_20C1379E4();
        v30 = v55;
        if (v43 == sub_20C1379E4())
        {
          v53 = *v54;
          v53(v51, v42, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_20BB5E3FC(0, *(v33 + 16) + 1, 1);
            v33 = v62;
          }

          v46 = *(v33 + 16);
          v45 = *(v33 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_20BB5E3FC(v45 > 1, v46 + 1, 1);
            v33 = v62;
          }

          *(v33 + 16) = v46 + 1;
          v47 = v33 + v34 + v46 * v35;
          v2 = v58;
          v53(v47, v51, v58);
          goto LABEL_22;
        }
      }

LABEL_21:
      (*v56)(v42, v2);
LABEL_22:
      ++v32;
      v3 = v59;
      if (v31 == v32)
      {
        goto LABEL_25;
      }
    }

LABEL_20:
    v42 = v60;
    sub_20C135134();
    goto LABEL_21;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B980);
  v14 = 0;
  v55 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v56 = v13;
  v53 = v11;
  v54 = (v3 + 16);
  v52 = (v3 + 8);
  while (1)
  {
    if (v14 >= *(v11 + 2))
    {
      goto LABEL_27;
    }

    (*(v3 + 16))(v9, &v55[*(v3 + 72) * v14], v2);
    v15 = sub_20C135154();
    v17 = v16;
    v18 = v9;
    v19 = sub_20C135134();
    v20 = sub_20C13DE84();

    v21 = sub_20B65B564(v15, v17);
    v23 = v22;

    if (v23)
    {
      break;
    }

    v20[(v21 >> 6) + 8] |= 1 << v21;
    v24 = (v20[6] + 16 * v21);
    *v24 = v15;
    v24[1] = v17;
    *(v20[7] + v21) = v19;
    v25 = v20[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_29;
    }

    v20[2] = v27;
    v28 = v61;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v28;
    sub_20BBC0674(v20, sub_20BBC065C, 0, v29, &v62);

    ++v14;
    v9 = v18;
    v2 = v58;
    (*v52)(v18, v58);
    v61 = v62;
    v3 = v59;
    v11 = v53;
    if (v57 == v14)
    {
      goto LABEL_7;
    }
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20BBBC8B0(uint64_t a1)
{
  v82 = sub_20C135174();
  v66 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v76 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v66 - v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_systemRoutingController + 8);
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 80))(ObjectType, v6);
  v9 = v8;
  v85 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_93;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v71 = v10;
  v72 = v9;
  v68 = a1;
  if (v10)
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    a1 = 0x335654656C707041;
    do
    {
      if (v12)
      {
        v14 = MEMORY[0x20F2F5430](v11, v72);
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_88;
        }

        v14 = v72[v11 + 4];
      }

      v15 = v14;
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_87;
      }

      if (![v14 isAppleTVRoute] || (v16 = objc_msgSend(v15, sel_productIdentifier), sub_20C13C954(), v16, LOBYTE(v16) = sub_20C13CB44(), , (v16 & 1) != 0))
      {
      }

      else
      {
        sub_20C13DD34();
        sub_20C13DD74();
        sub_20C13DD84();
        sub_20C13DD44();
      }

      ++v11;
    }

    while (v9 != v71);
    a1 = v85;
    v9 = v72;
    v85 = MEMORY[0x277D84F90];
    if (a1 < 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    a1 = MEMORY[0x277D84F90];
    v85 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
LABEL_94:
      v17 = sub_20C13DB34();
      goto LABEL_20;
    }
  }

  if ((a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_94;
  }

  v17 = *(a1 + 16);
LABEL_20:
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    v58 = MEMORY[0x277D84F90];
    goto LABEL_73;
  }

  v19 = 0;
  v79 = v17;
  v80 = a1 & 0xC000000000000001;
  v67 = a1 + 32;
  v77 = v66 + 16;
  v74 = (v66 + 8);
  v75 = (v66 + 32);
  do
  {
    if (v80)
    {
      v20 = MEMORY[0x20F2F5430](v19, a1);
    }

    else
    {
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_92;
      }

      v20 = *(v67 + 8 * v19);
    }

    v83 = v20;
    v21 = __OFADD__(v19, 1);
    v22 = v19 + 1;
    if (v21)
    {
      goto LABEL_91;
    }

    v70 = v22;
    v23 = 0;
    v84 = MEMORY[0x277D84F90];
    do
    {
      if (v80)
      {
        v24 = MEMORY[0x20F2F5430](v23, a1);
      }

      else
      {
        if (v23 >= *(a1 + 16))
        {
          goto LABEL_86;
        }

        v24 = *(a1 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        v10 = sub_20C13DB34();
        goto LABEL_3;
      }

      v27 = a1;
      v28 = [v24 routeName];
      v29 = sub_20C13C954();
      v31 = v30;

      v9 = [v83 routeName];
      v32 = sub_20C13C954();
      v34 = v33;

      if (v29 == v32 && v31 == v34)
      {

        v37 = v79;
      }

      else
      {
        v36 = sub_20C13DFF4();

        v37 = v79;
        if ((v36 & 1) == 0)
        {

          goto LABEL_30;
        }
      }

      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
LABEL_30:
      a1 = v27;
      ++v23;
    }

    while (v26 != v37);
    v69 = v84;
    v38 = *(v68 + 16);
    if (v38)
    {
      v73 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v39 = v68 + v73;
      v40 = *(v66 + 72);
      v78 = *(v66 + 16);
      v41 = MEMORY[0x277D84F90];
      v78(v81, v68 + v73, v82);
      while (1)
      {
        v42 = sub_20C135154();
        v44 = v43;
        v45 = [v83 routeName];
        v46 = sub_20C13C954();
        v48 = v47;

        if (!v44)
        {
          break;
        }

        if (v42 == v46 && v44 == v48)
        {
        }

        else
        {
          v50 = sub_20C13DFF4();

          if ((v50 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v51 = *v75;
        (*v75)(v76, v81, v82);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5E3FC(0, v41[2] + 1, 1);
          v41 = v84;
        }

        v54 = v41[2];
        v53 = v41[3];
        if (v54 >= v53 >> 1)
        {
          sub_20BB5E3FC(v53 > 1, v54 + 1, 1);
          v41 = v84;
        }

        v41[2] = v54 + 1;
        v51(v41 + v73 + v54 * v40, v76, v82);
LABEL_48:
        v39 += v40;
        if (!--v38)
        {
          goto LABEL_64;
        }

        v78(v81, v39, v82);
      }

LABEL_47:
      (*v74)(v81, v82);
      goto LABEL_48;
    }

    v41 = MEMORY[0x277D84F90];
LABEL_64:
    if ((v69 & 0x8000000000000000) != 0 || (v69 & 0x4000000000000000) != 0)
    {
      v55 = sub_20C13DB34();
    }

    else
    {
      v55 = *(v69 + 16);
    }

    v9 = v72;
    a1 = v27;
    v56 = v79;

    v57 = v41[2];

    if (v55 == v57)
    {
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
    }

    else
    {
    }

    v19 = v70;
  }

  while (v70 != v56);
  v58 = v85;
  v18 = MEMORY[0x277D84F90];
LABEL_73:

  v85 = v18;
  if (v71)
  {
    v59 = 0;
    a1 = 0;
    v60 = v9 & 0xC000000000000001;
    v61 = v9 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v60)
      {
        v62 = MEMORY[0x20F2F5430](v59, v9);
      }

      else
      {
        if (v59 >= *(v61 + 16))
        {
          goto LABEL_90;
        }

        v62 = *(v9 + 8 * v59 + 32);
      }

      v9 = v62;
      v63 = (v59 + 1);
      if (__OFADD__(v59, 1))
      {
        goto LABEL_89;
      }

      v84 = v62;
      MEMORY[0x28223BE20](v62);
      *(&v66 - 2) = &v84;
      if (sub_20B79AEEC(sub_20BBC0C14, (&v66 - 4), v58))
      {
      }

      else
      {
        sub_20C13DD34();
        sub_20C13DD74();
        sub_20C13DD84();
        sub_20C13DD44();
      }

      ++v59;
      v9 = v72;
    }

    while (v63 != v71);
  }

  v85 = sub_20B52C814(v64, sub_20BEE31C4, sub_20B8DCBB0);
  sub_20BBBE818(&v85);

  return v85;
}

uint64_t sub_20BBBD0F8(void *a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v3 = sub_20C13BB84();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v17 = sub_20C135174();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
  swift_beginAccess();
  sub_20BBC0B44(v2 + v21, v16);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20BBC1098(v16, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
    v22 = v62;
    sub_20C13B4A4();
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20B517000, v23, v24, "Not handling participant error, target selection is no longer participant", v25, 2u);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    return (*(v63 + 8))(v22, v64);
  }

  v56 = v21;
  v57 = v11;
  v58 = v13;
  v59 = v2;
  v27 = v60;
  v62 = v18;
  (v18[4])(v20, v16, v17);
  v28 = sub_20C135104();
  v30 = v29;
  if (v28 == sub_20C135104() && v30 == v31)
  {

    v34 = v27;
  }

  else
  {
    v33 = sub_20C13DFF4();

    v34 = v27;
    if ((v33 & 1) == 0)
    {
      sub_20C13B4A4();
      v35 = sub_20C13BB74();
      v36 = sub_20C13D1F4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_20B517000, v35, v36, "Participant target changed, not presenting error", v37, 2u);
        MEMORY[0x20F2F6A40](v37, -1, -1);
      }

      (*(v63 + 8))(v7, v64);
      return v62[1](v20, v17);
    }
  }

  v38 = v10;
  sub_20C13B4A4();
  v39 = v34;
  v40 = sub_20C13BB74();
  v41 = sub_20C13D1D4();

  v42 = os_log_type_enabled(v40, v41);
  v55 = v17;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v65[0] = v44;
    *v43 = 136446210;
    swift_getErrorValue();
    v45 = sub_20C13E094();
    v47 = sub_20B51E694(v45, v46, v65);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_20B517000, v40, v41, "Unable to connect to participant: %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    MEMORY[0x20F2F6A40](v43, -1, -1);
  }

  (*(v63 + 8))(v38, v64);
  v48 = v58;
  v49 = v56;
  swift_storeEnumTagMultiPayload();
  v50 = v59;
  swift_beginAccess();
  sub_20BBC0BA8(v48, v50 + v49);
  swift_endAccess();
  sub_20BBBAAE0();
  v51 = v34;
  v52 = sub_20B9424BC(v34);
  if (v52 <= 1)
  {
    v53 = v62;
    if (v52)
    {
      if (qword_27C7609F8 == -1)
      {
        goto LABEL_26;
      }
    }

    else if (qword_27C7609F0 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  v53 = v62;
  if (v52 == 2)
  {
    if (qword_27C760A00 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (qword_27C760A08 != -1)
  {
LABEL_33:
    swift_once();
  }

LABEL_26:

  if (qword_27C7609E8 != -1)
  {
    swift_once();
  }

  if (qword_27C760A10 != -1)
  {
    swift_once();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20B963424();
    swift_unknownObjectRelease();
  }

  return v53[1](v20, v55);
}

uint64_t sub_20BBBD860()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  v11 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_currentSelection;
  swift_beginAccess();
  sub_20BBC0B44(v0 + v11, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20BBC1098(v10, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
    }

    sub_20C13B4A4();
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20B517000, v13, v14, "RemoteDisplayDisconnected event, but current selection is not participant", v15, 2u);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_20BBC0BA8(v7, v0 + v11);
    swift_endAccess();
    return sub_20BBC1098(v10, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
  }
}

uint64_t sub_20BBBDAC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - v6;
  v7 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C135174();
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20C13B4A4();
  sub_20C13BB64();
  v19 = *(v13 + 8);
  v19(v18, v12);
  v20 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_currentSelection;
  swift_beginAccess();
  sub_20BBC0B44(v2 + v20, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20BBC1098(v9, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
    sub_20C13B4A4();
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20B517000, v21, v22, "No active participant to disconnect from", v23, 2u);
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    v19(v15, v12);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v25 = v36;
    (*(v36 + 32))(v11, v9, v40);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_sessionClient), *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_sessionClient + 24));
    v26 = v41;
    sub_20C13A0F4();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BBC0C0C;
    *(v28 + 24) = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_20B5DF3B8;
    *(v29 + 24) = v28;
    v31 = v37;
    v30 = v38;
    v32 = v39;
    (*(v38 + 16))(v37, v26, v39);
    v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v34 = swift_allocObject();
    (*(v30 + 32))(v34 + v33, v31, v32);
    v35 = (v34 + ((v4 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = sub_20B5DF3D4;
    v35[1] = v29;
    sub_20C137C94();
    (*(v30 + 8))(v41, v32);
    return (*(v25 + 8))(v11, v40);
  }
}

uint64_t sub_20BBBE020()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B9C7294();
    sub_20C13A764();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BBBE0C0()
{
  v1 = v0;
  v2 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9 = sub_20C1363C4();
  if ((v11 & 1) == 0)
  {
    return sub_20B583F4C(v9, v10, 0);
  }

  v12 = sub_20C137414();
  v14 = v13;
  if (v12 == sub_20C137414() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_20C13DFF4();

    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v18 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_currentSelection;
  swift_beginAccess();
  sub_20BBC0B44(v1 + v18, v4);
  LODWORD(v18) = swift_getEnumCaseMultiPayload();
  result = sub_20BBC1098(v4, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
  if (!v18)
  {
    swift_getObjectType();
    sub_20B9C7294();
    return sub_20C13A764();
  }

  return result;
}

id sub_20BBBE368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionRoutePickerPresenter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BBBE4E4()
{
  result = sub_20C13A484();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SessionRoutePickerPresenter.SelectionState(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20BBBE794()
{
  result = sub_20C135174();
  if (v1 <= 0x3F)
  {
    result = sub_20B51C88C(319, &qword_27C762500);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BBBE818(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20B52C3B0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20BBBE894(v6);
  return sub_20C13DD44();
}

void sub_20BBBE894(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
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
        sub_20B51C88C(0, &qword_27C762500);
        v6 = sub_20C13CCD4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_20BBBED80(v8, v9, a1, v4);
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
    sub_20BBBE9A8(0, v2, 1, a1);
  }
}

void sub_20BBBE9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &selRef_setHidesWhenStopped_;
    v36 = *a4;
LABEL_6:
    v34 = v5;
    v35 = a3;
    v8 = *(v4 + 8 * a3);
    v33 = v6;
    while (1)
    {
      v9 = *v5;
      v10 = v8;
      v11 = v9;
      v12 = [v10 v7[70]];
      if ([v10 isAppleTVRoute])
      {
        v13 = 1;
      }

      else
      {
        v13 = [v10 containsDeviceWithSubtype_];
      }

      if ([v10 isMacRoute])
      {
        v14 = 0;
      }

      else if (((v12 | v13) | [v10 containsDeviceWithSubtype_]))
      {
        v14 = 0;
      }

      else
      {
        v14 = 4;
      }

      if ([v10 pickableRouteType])
      {
        if ([v10 isShareableRoute])
        {
          v14 = 1;
        }

        else if ([v10 isHeadphonesRoute])
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 2;
      }

      v15 = v11;
      v16 = [v15 v7[70]];
      if ([v15 isAppleTVRoute])
      {
        v17 = 1;
      }

      else
      {
        v17 = [v15 containsDeviceWithSubtype_];
      }

      if ([v15 isMacRoute])
      {
        v18 = 1;
      }

      else
      {
        v18 = v16 | v17 | [v15 containsDeviceWithSubtype_];
      }

      if (![v15 pickableRouteType])
      {

        if (v14 != 2)
        {
          goto LABEL_4;
        }

        goto LABEL_37;
      }

      if ([v15 isShareableRoute])
      {
      }

      else
      {
        v19 = [v15 isHeadphonesRoute];

        if (!v19)
        {
          if (v18)
          {
            if ((v14 - 1) < 3)
            {
              goto LABEL_49;
            }

            if (v14)
            {
LABEL_4:

              goto LABEL_5;
            }
          }

          else if (v14 != 4)
          {
            goto LABEL_49;
          }

          goto LABEL_37;
        }
      }

      if (v14 > 1)
      {
        if (v14 != 2)
        {
          goto LABEL_4;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (v14 != 1)
      {
        goto LABEL_4;
      }

LABEL_37:
      v20 = [v10 pickableRouteType];
      if ((v20 == 0) != ([v15 pickableRouteType] != 0))
      {
        v21 = [v10 routeName];
        v22 = sub_20C13C954();
        v24 = v23;

        v25 = [v15 routeName];
        v26 = sub_20C13C954();
        v28 = v27;

        if (v22 == v26 && v24 == v28)
        {

          v4 = v36;
          v7 = &selRef_setHidesWhenStopped_;
LABEL_5:
          a3 = v35 + 1;
          v5 = v34 + 8;
          v6 = v33 - 1;
          if (v35 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v29 = sub_20C13DFF4();

        v4 = v36;
        v7 = &selRef_setHidesWhenStopped_;
        if ((v29 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_5;
        }
      }

LABEL_50:
      if (!v4)
      {
        __break(1u);
        return;
      }

      v30 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v30;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_20BBBED80(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      v129 = v9;
      if (v8 + 1 < v7)
      {
        v12 = *a3;
        v13 = *(*a3 + 8 * v8);
        v5 = *(*a3 + 8 * v11);
        v14 = v13;
        v130 = _sSo9MPAVRouteC9SeymourUIE1loiySbAB_ABtFZ_0(v5, v14);

        v11 = v10 + 2;
        if (v10 + 2 < v7)
        {
          v127 = v10 + 2;
          v118 = v10;
          v15 = (v12 + 8 * v10 + 16);
          v124 = v7;
          while (1)
          {
            v17 = *(v15 - 1);
            v18 = *v15;
            v19 = v17;
            v20 = [v18 isTVRoute];
            if ([v18 isAppleTVRoute])
            {
              v21 = 1;
            }

            else
            {
              v21 = [v18 containsDeviceWithSubtype_];
            }

            if ([v18 isMacRoute])
            {
              v22 = 0;
            }

            else if (((v20 | v21) | [v18 containsDeviceWithSubtype_]))
            {
              v22 = 0;
            }

            else
            {
              v22 = 4;
            }

            if ([v18 pickableRouteType])
            {
              if ([v18 isShareableRoute])
              {
                v22 = 1;
              }

              else if ([v18 isHeadphonesRoute])
              {
                v22 = 1;
              }
            }

            else
            {
              v22 = 2;
            }

            v23 = v19;
            v24 = [v23 isTVRoute];
            if ([v23 isAppleTVRoute])
            {
              v5 = 1;
            }

            else
            {
              v5 = [v23 containsDeviceWithSubtype_];
            }

            if ([v23 isMacRoute])
            {
              v25 = 1;
            }

            else
            {
              v25 = v24 | v5 | [v23 containsDeviceWithSubtype_];
            }

            if ([v23 pickableRouteType])
            {
              if ([v23 isShareableRoute])
              {
              }

              else
              {
                v5 = [v23 isHeadphonesRoute];

                if (!v5)
                {
                  if (v25)
                  {
                    if ((v22 - 1) < 3)
                    {
                      goto LABEL_8;
                    }

                    if (v22)
                    {
                      v16 = 0;
                      goto LABEL_9;
                    }
                  }

                  else if (v22 != 4)
                  {

                    if (!v130)
                    {
                      v11 = v127;
                      v9 = v129;
                      v10 = v118;
                      goto LABEL_67;
                    }

                    goto LABEL_10;
                  }

                  goto LABEL_47;
                }
              }

              v16 = 0;
              if (v22 > 2 || !v22)
              {
                goto LABEL_9;
              }

              if (v22 != 1)
              {
LABEL_8:
                v16 = 1;
                goto LABEL_9;
              }
            }

            else
            {

              if (v22 != 2)
              {

                if (v130)
                {
                  v11 = v127;
                  v9 = v129;
                  v10 = v118;
                  if (v127 < v118)
                  {
                    goto LABEL_215;
                  }

                  goto LABEL_59;
                }

                goto LABEL_10;
              }
            }

LABEL_47:
            v16 = [v18 pickableRouteType] == 0;
            if ((v16 ^ ([v23 pickableRouteType] != 0)))
            {
              v26 = v6;
              v27 = [v18 routeName];
              v28 = sub_20C13C954();
              v30 = v29;

              v31 = [v23 routeName];
              v32 = sub_20C13C954();
              v5 = v33;

              if (v28 == v32 && v30 == v5)
              {
                v16 = 0;
              }

              else
              {
                v16 = sub_20C13DFF4();
              }

              v6 = v26;
            }

LABEL_9:

            if ((v130 ^ v16))
            {
              v11 = v127;
              v9 = v129;
              goto LABEL_56;
            }

LABEL_10:
            v9 = v129;
            ++v15;
            if (v124 == ++v127)
            {
              v11 = v124;
LABEL_56:
              v10 = v118;
              break;
            }
          }
        }

        if (v130)
        {
          if (v11 < v10)
          {
            goto LABEL_215;
          }

LABEL_59:
          if (v10 < v11)
          {
            v34 = 8 * v11 - 8;
            v35 = 8 * v10;
            v36 = v11;
            v37 = v10;
            do
            {
              if (v37 != --v11)
              {
                v39 = *a3;
                if (!*a3)
                {
                  goto LABEL_221;
                }

                v38 = *(v39 + v35);
                *(v39 + v35) = *(v39 + v34);
                *(v39 + v34) = v38;
              }

              ++v37;
              v34 -= 8;
              v35 += 8;
            }

            while (v37 < v11);
            v11 = v36;
          }
        }
      }

LABEL_67:
      v40 = a3[1];
      if (v11 >= v40)
      {
        v8 = v11;
        if (v11 < v10)
        {
          goto LABEL_213;
        }

        goto LABEL_78;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_214;
      }

      v41 = v11;
      if (v11 - v10 >= a4)
      {
LABEL_75:
        v8 = v11;
        if (v11 < v10)
        {
          goto LABEL_213;
        }

        goto LABEL_78;
      }

      v42 = v10 + a4;
      if (__OFADD__(v10, a4))
      {
        goto LABEL_216;
      }

      if (v42 >= v40)
      {
        v42 = a3[1];
      }

      if (v42 < v10)
      {
LABEL_217:
        __break(1u);
        goto LABEL_218;
      }

      if (v11 == v42)
      {
        goto LABEL_75;
      }

      v117 = v6;
      v119 = v10;
      v131 = *a3;
      v89 = *a3 + 8 * v11 - 8;
      v90 = v10 - v11;
      v122 = v42;
      while (2)
      {
        v128 = v41;
        v91 = *(v131 + 8 * v41);
        v123 = v90;
        v125 = v89;
        while (1)
        {
          v92 = *v89;
          v93 = v91;
          v94 = v92;
          v95 = [v93 isTVRoute];
          if ([v93 isAppleTVRoute])
          {
            v96 = 1;
          }

          else
          {
            v96 = [v93 containsDeviceWithSubtype_];
          }

          if ([v93 isMacRoute])
          {
            v97 = 0;
          }

          else if (((v95 | v96) | [v93 containsDeviceWithSubtype_]))
          {
            v97 = 0;
          }

          else
          {
            v97 = 4;
          }

          if ([v93 pickableRouteType])
          {
            if ([v93 isShareableRoute])
            {
              v98 = 1;
            }

            else if ([v93 isHeadphonesRoute])
            {
              v98 = 1;
            }

            else
            {
              v98 = v97;
            }
          }

          else
          {
            v98 = 2;
          }

          v99 = v94;
          v100 = [v99 isTVRoute];
          if ([v99 isAppleTVRoute])
          {
            v101 = 1;
          }

          else
          {
            v101 = [v99 containsDeviceWithSubtype_];
          }

          if ([v99 isMacRoute])
          {
            v5 = 1;
          }

          else
          {
            v5 = v100 | v101 | [v99 containsDeviceWithSubtype_];
          }

          if (![v99 pickableRouteType])
          {

            if (v98 != 2)
            {
              goto LABEL_128;
            }

            goto LABEL_162;
          }

          if ([v99 isShareableRoute])
          {
          }

          else
          {
            v102 = [v99 isHeadphonesRoute];

            if (!v102)
            {
              if (v5)
              {
                if ((v98 - 1) < 3)
                {
                  goto LABEL_174;
                }

                if (v98)
                {
LABEL_128:

                  goto LABEL_129;
                }
              }

              else if (v98 != 4)
              {
                goto LABEL_174;
              }

              goto LABEL_162;
            }
          }

          if (v98 > 1)
          {
            if (v98 != 2)
            {
              goto LABEL_128;
            }

LABEL_174:

            goto LABEL_175;
          }

          if (v98 != 1)
          {
            goto LABEL_128;
          }

LABEL_162:
          v5 = [v93 pickableRouteType];
          if ((v5 == 0) != ([v99 pickableRouteType] != 0))
          {
            break;
          }

          if (v5)
          {
            goto LABEL_129;
          }

LABEL_175:
          if (!v131)
          {
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
            goto LABEL_222;
          }

          v111 = *v89;
          v91 = *(v89 + 8);
          *v89 = v91;
          *(v89 + 8) = v111;
          v89 -= 8;
          if (__CFADD__(v90++, 1))
          {
            goto LABEL_129;
          }
        }

        v103 = [v93 routeName];
        v104 = sub_20C13C954();
        v106 = v105;

        v107 = [v99 routeName];
        v5 = sub_20C13C954();
        v109 = v108;

        if (v104 != v5 || v106 != v109)
        {
          v110 = sub_20C13DFF4();

          v9 = v129;
          if ((v110 & 1) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_175;
        }

        v9 = v129;
LABEL_129:
        v41 = v128 + 1;
        v89 = v125 + 8;
        v90 = v123 - 1;
        if (v128 + 1 != v122)
        {
          continue;
        }

        break;
      }

      v8 = v122;
      v6 = v117;
      v10 = v119;
      if (v122 < v119)
      {
        goto LABEL_213;
      }

LABEL_78:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_20BC05740(0, *(v9 + 2) + 1, 1, v9);
      }

      v44 = *(v9 + 2);
      v43 = *(v9 + 3);
      v45 = v44 + 1;
      v5 = v6;
      if (v44 >= v43 >> 1)
      {
        v9 = sub_20BC05740((v43 > 1), v44 + 1, 1, v9);
      }

      *(v9 + 2) = v45;
      v46 = &v9[16 * v44];
      *(v46 + 4) = v10;
      *(v46 + 5) = v8;
      v6 = *a1;
      if (!*a1)
      {
        goto LABEL_223;
      }

      if (v44)
      {
        while (2)
        {
          v47 = v45 - 1;
          if (v45 >= 4)
          {
            v52 = &v9[16 * v45 + 32];
            v53 = *(v52 - 64);
            v54 = *(v52 - 56);
            v58 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            if (v58)
            {
              goto LABEL_200;
            }

            v57 = *(v52 - 48);
            v56 = *(v52 - 40);
            v58 = __OFSUB__(v56, v57);
            v50 = v56 - v57;
            v51 = v58;
            if (v58)
            {
              goto LABEL_201;
            }

            v59 = &v9[16 * v45];
            v61 = *v59;
            v60 = *(v59 + 1);
            v58 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v58)
            {
              goto LABEL_203;
            }

            v58 = __OFADD__(v50, v62);
            v63 = v50 + v62;
            if (v58)
            {
              goto LABEL_206;
            }

            if (v63 >= v55)
            {
              v81 = &v9[16 * v47 + 32];
              v83 = *v81;
              v82 = *(v81 + 1);
              v58 = __OFSUB__(v82, v83);
              v84 = v82 - v83;
              if (v58)
              {
                goto LABEL_210;
              }

              if (v50 < v84)
              {
                v47 = v45 - 2;
              }
            }

            else
            {
LABEL_97:
              if (v51)
              {
                goto LABEL_202;
              }

              v64 = &v9[16 * v45];
              v66 = *v64;
              v65 = *(v64 + 1);
              v67 = __OFSUB__(v65, v66);
              v68 = v65 - v66;
              v69 = v67;
              if (v67)
              {
                goto LABEL_205;
              }

              v70 = &v9[16 * v47 + 32];
              v72 = *v70;
              v71 = *(v70 + 1);
              v58 = __OFSUB__(v71, v72);
              v73 = v71 - v72;
              if (v58)
              {
                goto LABEL_208;
              }

              if (__OFADD__(v68, v73))
              {
                goto LABEL_209;
              }

              if (v68 + v73 < v50)
              {
                goto LABEL_111;
              }

              if (v50 < v73)
              {
                v47 = v45 - 2;
              }
            }
          }

          else
          {
            if (v45 == 3)
            {
              v48 = *(v9 + 4);
              v49 = *(v9 + 5);
              v58 = __OFSUB__(v49, v48);
              v50 = v49 - v48;
              v51 = v58;
              goto LABEL_97;
            }

            v74 = &v9[16 * v45];
            v76 = *v74;
            v75 = *(v74 + 1);
            v58 = __OFSUB__(v75, v76);
            v68 = v75 - v76;
            v69 = v58;
LABEL_111:
            if (v69)
            {
              goto LABEL_204;
            }

            v77 = &v9[16 * v47];
            v79 = *(v77 + 4);
            v78 = *(v77 + 5);
            v58 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v58)
            {
              goto LABEL_207;
            }

            if (v80 < v68)
            {
              break;
            }
          }

          v85 = v47 - 1;
          if (v47 - 1 >= v45)
          {
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
            goto LABEL_217;
          }

          if (!*a3)
          {
            goto LABEL_220;
          }

          v86 = *&v9[16 * v85 + 32];
          v87 = *&v9[16 * v47 + 40];
          sub_20BBBF9E8((*a3 + 8 * v86), (*a3 + 8 * *&v9[16 * v47 + 32]), (*a3 + 8 * v87), v6);
          if (v5)
          {
            goto LABEL_196;
          }

          if (v87 < v86)
          {
            goto LABEL_198;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_20B6A07A0(v9);
          }

          if (v85 >= *(v9 + 2))
          {
            goto LABEL_199;
          }

          v88 = &v9[16 * v85];
          *(v88 + 4) = v86;
          *(v88 + 5) = v87;
          sub_20B6A0714(v47);
          v45 = *(v9 + 2);
          if (v45 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      v6 = v5;
      if (v8 >= v7)
      {
        goto LABEL_186;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_186:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_224;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_218:
    v9 = sub_20B6A07A0(v9);
  }

  v113 = *(v9 + 2);
  if (v113 < 2)
  {
LABEL_196:

    return;
  }

  while (*a3)
  {
    v114 = *&v9[16 * v113];
    v115 = *&v9[16 * v113 + 24];
    sub_20BBBF9E8((*a3 + 8 * v114), (*a3 + 8 * *&v9[16 * v113 + 16]), (*a3 + 8 * v115), v5);
    if (v6)
    {
      goto LABEL_196;
    }

    if (v115 < v114)
    {
      goto LABEL_211;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_20B6A07A0(v9);
    }

    if (v113 - 2 >= *(v9 + 2))
    {
      goto LABEL_212;
    }

    v116 = &v9[16 * v113];
    *v116 = v114;
    *(v116 + 1) = v115;
    sub_20B6A0714(v113 - 1);
    v113 = *(v9 + 2);
    if (v113 <= 1)
    {
      goto LABEL_196;
    }
  }

LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
}

uint64_t sub_20BBBF9E8(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v78 = __src;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v42 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v42;
    }

    __src = a2;
    v14 = &v4[v11];
    if (v9 < 8 || a2 <= v78)
    {
      goto LABEL_126;
    }

    v43 = &selRef_setHidesWhenStopped_;
    v74 = v4;
LABEL_71:
    v44 = __src - 1;
    v45 = v5;
    v46 = v14;
    __dsta = __src;
    v73 = __src - 1;
    while (1)
    {
      v47 = *--v46;
      v48 = *v44;
      v49 = v47;
      v50 = v48;
      v51 = [v49 isTVRoute];
      if ([v49 isAppleTVRoute])
      {
        v52 = 1;
      }

      else
      {
        v52 = [v49 v43[72]];
      }

      if ([v49 isMacRoute])
      {
        v53 = 0;
      }

      else if (((v51 | v52) | [v49 v43[72]]))
      {
        v53 = 0;
      }

      else
      {
        v53 = 4;
      }

      if ([v49 pickableRouteType])
      {
        if ([v49 isShareableRoute])
        {
          v54 = 1;
        }

        else if ([v49 isHeadphonesRoute])
        {
          v54 = 1;
        }

        else
        {
          v54 = v53;
        }
      }

      else
      {
        v54 = 2;
      }

      v55 = v50;
      v56 = [v55 isTVRoute];
      if ([v55 isAppleTVRoute])
      {
        v57 = 1;
      }

      else
      {
        v57 = [v55 v43[72]];
      }

      if ([v55 isMacRoute])
      {
        v58 = 1;
      }

      else
      {
        v58 = v56 | v57 | [v55 v43[72]];
      }

      if (![v55 pickableRouteType])
      {

        if (v54 != 2)
        {
          goto LABEL_107;
        }

        goto LABEL_110;
      }

      if ([v55 isShareableRoute])
      {
        break;
      }

      v59 = [v55 isHeadphonesRoute];

      if (v59)
      {
        goto LABEL_100;
      }

      if (v58)
      {
        if (v54)
        {
          if (v54 != 4)
          {
            goto LABEL_119;
          }

LABEL_107:

          v5 = v45 - 1;
          goto LABEL_108;
        }
      }

      else if (v54 != 4)
      {
LABEL_119:

        v5 = v45 - 1;
        v43 = &selRef_setHidesWhenStopped_;
        v44 = v73;
LABEL_120:
        if (v45 != __dsta)
        {
          *v5 = *v44;
        }

        v4 = v74;
        if (v14 <= v74 || (__src = v44, v44 <= v78))
        {
          __src = v44;
          goto LABEL_126;
        }

        goto LABEL_71;
      }

LABEL_110:
      v60 = [v49 pickableRouteType];
      if ((v60 == 0) == ([v55 pickableRouteType] != 0))
      {

        v5 = v45 - 1;
        v43 = &selRef_setHidesWhenStopped_;
        v44 = v73;
        if (!v60)
        {
          goto LABEL_120;
        }

        goto LABEL_117;
      }

      v76 = v14;
      v61 = [v49 routeName];
      v62 = sub_20C13C954();
      v64 = v63;

      v65 = [v55 routeName];
      v66 = sub_20C13C954();
      v68 = v67;

      if (v62 != v66 || v64 != v68)
      {
        v69 = sub_20C13DFF4();

        v5 = v45 - 1;
        v14 = v76;
        v43 = &selRef_setHidesWhenStopped_;
        v44 = v73;
        if (v69)
        {
          goto LABEL_120;
        }

        goto LABEL_117;
      }

      v5 = v45 - 1;
      v14 = v76;
LABEL_108:
      v43 = &selRef_setHidesWhenStopped_;
      v44 = v73;
LABEL_117:
      if (v14 != v45)
      {
        *v5 = *v46;
      }

      v14 = v46;
      v45 = v5;
      if (v46 <= v74)
      {
        v14 = v46;
        v4 = v74;
        __src = __dsta;
        goto LABEL_126;
      }
    }

LABEL_100:
    if (v54 > 2 || !v54)
    {
      goto LABEL_107;
    }

    if (v54 != 1)
    {
      goto LABEL_119;
    }

    goto LABEL_110;
  }

  v12 = a2;
  if (a4 != __src || &__src[v8] <= a4)
  {
    v13 = __src;
    memmove(a4, __src, 8 * v8);
    __src = v13;
  }

  v14 = &v4[v8];
  if (v6 >= 8 && v12 < v5)
  {
    v15 = &selRef_setHidesWhenStopped_;
    v75 = v14;
    while (1)
    {
      v77 = __src;
      v16 = *v4;
      v17 = *v12;
      v18 = v16;
      v19 = [v17 isTVRoute];
      if ([v17 isAppleTVRoute])
      {
        v20 = 1;
      }

      else
      {
        v20 = [v17 v15[72]];
      }

      if ([v17 isMacRoute])
      {
        v21 = 0;
      }

      else if (((v19 | v20) | [v17 v15[72]]))
      {
        v21 = 0;
      }

      else
      {
        v21 = 4;
      }

      if ([v17 pickableRouteType])
      {
        if ([v17 isShareableRoute])
        {
          v22 = 1;
        }

        else if ([v17 isHeadphonesRoute])
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }
      }

      else
      {
        v22 = 2;
      }

      v23 = v18;
      v24 = [v23 isTVRoute];
      if ([v23 isAppleTVRoute])
      {
        v25 = 1;
      }

      else
      {
        v25 = [v23 v15[72]];
      }

      if ([v23 isMacRoute])
      {
        v26 = 1;
      }

      else
      {
        v26 = v24 | v25 | [v23 v15[72]];
      }

      v14 = v75;
      if (![v23 pickableRouteType])
      {

        if (v22 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_54;
      }

      if ([v23 isShareableRoute])
      {
        break;
      }

      v27 = [v23 isHeadphonesRoute];

      if (v27)
      {
        goto LABEL_39;
      }

      if (v26)
      {
        if ((v22 - 1) < 3)
        {
          goto LABEL_58;
        }

        if (v22)
        {
          goto LABEL_46;
        }
      }

      else if (v22 != 4)
      {
        goto LABEL_58;
      }

LABEL_54:
      v31 = [v17 pickableRouteType];
      if ((v31 == 0) != ([v23 pickableRouteType] != 0))
      {
        __dst = v12;
        v32 = v4;
        v33 = [v17 routeName];
        v34 = sub_20C13C954();
        v36 = v35;

        v37 = [v23 routeName];
        v38 = sub_20C13C954();
        v40 = v39;

        if (v34 == v38 && v36 == v40)
        {

          v4 = v32;
          v12 = __dst;
          v14 = v75;
LABEL_47:
          v15 = &selRef_setHidesWhenStopped_;
LABEL_48:
          v28 = v4;
          v29 = v77;
          v30 = v77 == v4++;
          if (v30)
          {
            goto LABEL_50;
          }

LABEL_49:
          *v29 = *v28;
          goto LABEL_50;
        }

        v41 = sub_20C13DFF4();

        v4 = v32;
        v12 = __dst;
        v14 = v75;
        v15 = &selRef_setHidesWhenStopped_;
        if ((v41 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {

        v15 = &selRef_setHidesWhenStopped_;
        if (v31)
        {
          goto LABEL_48;
        }
      }

LABEL_62:
      v28 = v12;
      v29 = v77;
      v30 = v77 == v12++;
      if (!v30)
      {
        goto LABEL_49;
      }

LABEL_50:
      __src = v29 + 1;
      if (v4 >= v14 || v12 >= v5)
      {
        goto LABEL_126;
      }
    }

LABEL_39:
    if (v22 > 2 || !v22)
    {
LABEL_46:

      goto LABEL_47;
    }

    if (v22 != 1)
    {
LABEL_58:

      v15 = &selRef_setHidesWhenStopped_;
      goto LABEL_62;
    }

    goto LABEL_54;
  }

LABEL_126:
  if (__src != v4 || __src >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(__src, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_20BBC02A4(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_20C135174();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_20BBB641C(a1, a2, *v2, MEMORY[0x277D515D0]);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v8;
    v42 = v11;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_20BF90990(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BBC065C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_20BBC0674(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v10;
  v40 = v6;
  while (v9)
  {
    v16 = v11;
LABEL_16:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = *(*(a1 + 56) + v18);
    v46 = *(*(a1 + 48) + 16 * v18);
    v47 = v19;

    a2(&v43, &v46);

    v20 = v43;
    v21 = v44;
    v22 = v45;
    v23 = *v48;
    v25 = sub_20B65B564(v43, v44);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_27;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_20BA11070();
      }
    }

    else
    {
      sub_20BA0BBB8(v28, a4 & 1);
      v30 = sub_20B65B564(v20, v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_29;
      }

      v25 = v30;
    }

    v9 &= v9 - 1;
    v32 = v22;
    v33 = *v48;
    if (v29)
    {
      v12 = *(v33[7] + v25);
      v13 = qword_20C171B38[v12];
      v14 = qword_20C171B38[v22];

      if (v13 >= v14)
      {
        v15 = v12;
      }

      else
      {
        v15 = v32;
      }

      *(v33[7] + v25) = v15;
    }

    else
    {
      v33[(v25 >> 6) + 8] |= 1 << v25;
      v34 = (v33[6] + 16 * v25);
      *v34 = v20;
      v34[1] = v21;
      *(v33[7] + v25) = v22;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_28;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v16;
    v10 = v39;
    v6 = v40;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      sub_20B583EDC();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t sub_20BBC0908()
{
  v1 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-v5];
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  v11 = OBJC_IVAR____TtC9SeymourUI27SessionRoutePickerPresenter_targetSelection;
  swift_beginAccess();
  sub_20BBC0B44(v0 + v11, v6);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    return sub_20BBC1098(v6, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
  }

  if (result == 1)
  {
    sub_20BBC1098(v6, type metadata accessor for SessionRoutePickerPresenter.SelectionState);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_20BBC0BA8(v3, v0 + v11);
    swift_endAccess();
    return sub_20BBBAAE0();
  }

  return result;
}

uint64_t sub_20BBC0B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BBC0BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionRoutePickerPresenter.SelectionState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BBC0C7C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = *(v2 + 32);
  v9 = *(v2 + 48);
  return sub_20BFE942C(v6, v8) & 1;
}

unint64_t sub_20BBC0CEC()
{
  result = qword_27C76B988;
  if (!qword_27C76B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B988);
  }

  return result;
}

unint64_t sub_20BBC0D40()
{
  result = qword_27C76B990;
  if (!qword_27C76B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B990);
  }

  return result;
}

void sub_20BBC0D94()
{
  sub_20C137974();

  sub_20BBBA340();
}

uint64_t sub_20BBC0E68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_35Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_20BBC0F7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_20C135174() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BBB8FC4(v1 + v4, v5, a1);
}

uint64_t sub_20BBC1098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BBC110C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BBC1160(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t MetricPerformanceStream.applyingRemoteBrowsingEnvironment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9C8);
  MEMORY[0x28223BE20](v3 - 8);
  v107 = &v86 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D0);
  MEMORY[0x28223BE20](v9 - 8);
  v104 = &v86 - v10;
  v88 = sub_20C137B04();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_20C1369B4();
  MEMORY[0x28223BE20](v89);
  v90 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_20C135334();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  MEMORY[0x28223BE20](v14 - 8);
  v95 = &v86 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v16 - 8);
  v109 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v103 = &v86 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v20 - 8);
  v99 = &v86 - v21;
  v22 = sub_20C136014();
  MEMORY[0x28223BE20](v22 - 8);
  v98 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20C136354();
  MEMORY[0x28223BE20](v24 - 8);
  v97 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C135F14();
  v101 = *(v26 - 8);
  v102 = v26;
  MEMORY[0x28223BE20](v26);
  v110 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D8);
  MEMORY[0x28223BE20](v28 - 8);
  v96 = &v86 - v29;
  v30 = sub_20C135F84();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v112 = &v86 - v35;
  MEMORY[0x28223BE20](v36);
  v91 = &v86 - v37;
  v38 = sub_20C1336F4();
  v116 = v39;
  v117 = v38;
  v100 = a1;
  v40 = sub_20C136A64();
  v41 = v40;
  v42 = v40 + 56;
  v43 = 1 << *(v40 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v40 + 56);
  v46 = (v43 + 63) >> 6;
  v111 = v31 + 16;
  v114 = (v31 + 8);
  v115 = (v31 + 32);

  v48 = 0;
  v113 = result;
  if (v45)
  {
    while (1)
    {
      v49 = v48;
LABEL_8:
      v50 = v112;
      (*(v31 + 16))(v112, *(v41 + 48) + *(v31 + 72) * (__clz(__rbit64(v45)) | (v49 << 6)), v30);
      v51 = *(v31 + 32);
      v51(v33, v50, v30);
      v52 = v33;
      if (sub_20C135F74() == v117 && v53 == v116)
      {

        goto LABEL_16;
      }

      v54 = sub_20C13DFF4();

      if (v54)
      {
        break;
      }

      v45 &= v45 - 1;
      v33 = v52;
      result = (*v114)(v52, v30);
      v48 = v49;
      v41 = v113;
      if (!v45)
      {
        goto LABEL_5;
      }
    }

LABEL_16:

    v56 = v96;
    v51(v96, v52, v30);
    v55 = 0;
LABEL_17:
    (*(v31 + 56))(v56, v55, 1, v30);

    if ((*(v31 + 48))(v56, 1, v30) == 1)
    {
      sub_20B520158(v56, &qword_27C76B9D8);
      v112 = 0;
      v113 = 0;
      v115 = 0;
      v116 = 0;
      v117 = 0;
    }

    else
    {
      v57 = v91;
      (*v115)(v91, v56, v30);
      v58 = sub_20C135F34();
      v116 = v59;
      v117 = v58;
      v115 = sub_20C135F24();
      v113 = v60;
      v112 = sub_20C135F64();
      sub_20C135F54();
      sub_20C135F44();
      (*v114)(v57, v30);
    }

    sub_20C136BD4();
    sub_20C136A34();
    sub_20C136A04();
    sub_20C136AF4();
    sub_20C135F04();
    v61 = v109;
    sub_20C1362D4();
    v62 = sub_20C134FB4();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v61, 1, v62) == 1)
    {
      sub_20B520158(v61, &unk_27C7678F0);
      v64 = 1;
      v65 = v103;
    }

    else
    {
      v66 = v92;
      sub_20C136C24();
      v67 = v95;
      sub_20C135314();
      (*(v93 + 8))(v66, v94);
      v68 = sub_20C135D54();
      v69 = *(v68 - 8);
      if ((*(v69 + 48))(v67, 1, v68) == 1)
      {
        sub_20B520158(v67, &unk_27C762370);
      }

      else
      {
        v70 = v90;
        sub_20C135D44();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_20BBC2094(v70);
        }

        else
        {
          v71 = v87;
          v72 = v86;
          v73 = v88;
          (*(v87 + 32))(v86, v70, v88);
          sub_20C137AF4();
          v74 = v73;
          v61 = v109;
          (*(v71 + 8))(v72, v74);
          v67 = v95;
        }

        (*(v69 + 8))(v67, v68);
      }

      v65 = v103;
      sub_20C134FA4();

      (*(v63 + 8))(v61, v62);
      v64 = 0;
    }

    (*(v63 + 56))(v65, v64, 1, v62);
    v76 = v101;
    v75 = v102;
    v77 = v104;
    v78 = v110;
    (*(v101 + 16))(v104, v110, v102);
    (*(v76 + 56))(v77, 0, 1, v75);
    v79 = sub_20C134C44();
    (*(*(v79 - 8) + 56))(v77, 0, 1, v79);
    v80 = sub_20C1333A4();
    v81 = v105;
    (*(*(v80 - 8) + 56))(v105, 1, 1, v80);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
    v83 = v106;
    (*(*(v82 - 8) + 56))(v106, 1, 1, v82);
    v84 = sub_20C137764();
    v85 = v107;
    (*(*(v84 - 8) + 56))(v107, 1, 1, v84);
    sub_20C1362E4();
    sub_20B520158(v85, &qword_27C76B9C8);
    sub_20B520158(v83, &unk_27C766C70);
    sub_20B520158(v81, &unk_27C766C90);
    sub_20B520158(v77, &qword_27C76B9D0);
    sub_20B520158(v65, &unk_27C7678F0);
    return (*(v76 + 8))(v78, v75);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v49 >= v46)
      {

        v55 = 1;
        v56 = v96;
        goto LABEL_17;
      }

      v45 = *(v42 + 8 * v49);
      ++v48;
      if (v45)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BBC2094(uint64_t a1)
{
  v2 = sub_20C1369B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricPerformanceStream.applyingRemoteParticipant(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v26 - v16;
  if (sub_20C1350F4() == 4)
  {
    v18 = sub_20C1362F4();
    v19 = *(*(v18 - 8) + 16);

    return v19(a1, v1, v18);
  }

  else
  {
    v21 = sub_20C134FB4();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    v22 = sub_20C134C44();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    v23 = sub_20C1333A4();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    v26[1] = sub_20C137194();
    sub_20C134C24();
    sub_20BBC2540();
    sub_20C133BC4();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
    v25 = sub_20C137764();
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    sub_20C1362E4();
    sub_20B520158(v5, &qword_27C76B9C8);
    sub_20B520158(v8, &unk_27C766C70);
    sub_20B520158(v11, &unk_27C766C90);
    sub_20B520158(v14, &qword_27C76B9D0);
    return sub_20B520158(v17, &unk_27C7678F0);
  }
}

unint64_t sub_20BBC2540()
{
  result = qword_27C76B9E0;
  if (!qword_27C76B9E0)
  {
    sub_20C134C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B9E0);
  }

  return result;
}

uint64_t sub_20BBC25A0(_WORD *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    return *a2 == 2;
  }

  if (*a2 == 2)
  {
    return 0;
  }

  if ((v3 ^ v2))
  {
    return 0;
  }

  return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
}

id sub_20BBC25FC(uint64_t a1)
{
  v82 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v68 - v3;
  v76 = sub_20C13D664();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_20C13D874();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_20C13D7D4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v68 - v8;
  MEMORY[0x28223BE20](v9);
  v84 = &v68 - v10;
  v11 = OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_buttonLayoutGuide;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v12 = OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_contentLayoutGuide;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v13 = OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_summaryCardView;
  v14 = [objc_allocWithZone(type metadata accessor for CatalogTipSummaryCardView()) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v13] = v14;
  v15 = [objc_opt_self() buttonWithType_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v15 setTintColor_];

  v17 = [objc_opt_self() preferredFontForTextStyle_];
  v18 = [v15 titleLabel];
  if (v18)
  {
    v19 = v18;
    [v18 setFont_];
  }

  v20 = OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_learnMoreButton;
  LODWORD(v21) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v15 setContentHuggingPriority:1 forAxis:v22];
  v23 = *MEMORY[0x277D76820];
  [v15 setMaximumContentSizeCategory_];
  v24 = sub_20C13C914();
  [v15 setAccessibilityIdentifier_];

  v81 = v1;
  *&v1[v20] = v15;
  v71 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v70 = [objc_opt_self() blackColor];
  v25 = *MEMORY[0x277D76938];
  v69 = *MEMORY[0x277D74420];
  v98 = MEMORY[0x277D84FA0];
  v83 = v23;
  sub_20B6FF83C(v93, 1);
  v100 = 1;
  v99 = 0;
  v26 = v98;
  sub_20C13E164();
  v68 = v25;
  sub_20C13CA64();
  v27 = sub_20C13E1B4();
  v28 = -1 << *(v26 + 32);
  v29 = v27 & ~v28;
  if ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
  {
    v30 = ~v28;
    while (1)
    {
      v31 = *(*(v26 + 48) + v29);
      if (v31 >= 4)
      {
        break;
      }

      v32 = sub_20C13DFF4();

      if (v32)
      {
        goto LABEL_9;
      }

      v29 = (v29 + 1) & v30;
      if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93[0] = v26;
    sub_20B706478(4, v29, isUniquelyReferenced_nonNull_native);
    v26 = v93[0];
  }

LABEL_9:
  v72 = OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_seeMoreButton;
  v93[0] = 0;
  v93[1] = v83;
  v34 = v83;
  v35 = v68;
  v93[2] = v68;
  LODWORD(v94) = 0;
  BYTE4(v94) = v100;
  BYTE5(v94) = 9;
  v36 = v69;
  v95 = v69;
  LOBYTE(v96) = v99;
  v97 = v26;
  v37 = v94;
  v38 = v99 & 1;
  v39 = v86;
  v40 = v84;
  v41 = v87;
  (*(v86 + 104))(v84, *MEMORY[0x277D75028], v87);
  v42 = *(v39 + 16);
  v42(v85, v40, v41);
  v43 = type metadata accessor for CapsuleButton();
  v44 = objc_allocWithZone(v43);
  v45 = &v44[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_fontDescriptor];
  *v45 = 0;
  *(v45 + 1) = v34;
  *(v45 + 2) = v35;
  *(v45 + 3) = v37;
  *(v45 + 4) = v36;
  *(v45 + 5) = v38;
  *(v45 + 6) = v26;
  v46 = v71;
  *&v44[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_normalBackgroundColor] = v71;
  v47 = v70;
  *&v44[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_normalForegroundColor] = v70;
  sub_20B7B2490(v93, v92);
  v91.receiver = v44;
  v91.super_class = v43;
  v71 = v46;
  v70 = v47;
  v48 = objc_msgSendSuper2(&v91, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v49 = v77;
  sub_20C13D834();
  v50 = v85;
  v42(v73, v85, v87);
  sub_20C13D654();
  (*(v75 + 104))(v74, *MEMORY[0x277D74FD8], v76);
  sub_20C13D674();
  v51 = *&v48[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_normalBackgroundColor];
  v52 = sub_20C13D634();
  sub_20C13BCD4();
  v52(v92, 0);
  v53 = v78;
  v54 = v80;
  v55 = v79;
  (*(v78 + 16))(v80, v49, v79);
  (*(v53 + 56))(v54, 0, 1, v55);
  sub_20C13D894();

  sub_20B7B24EC(v93);
  (*(v53 + 8))(v49, v55);
  v56 = *(v86 + 8);
  v57 = v87;
  v56(v50, v87);
  v56(v84, v57);
  v58 = v48;
  [v58 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  v90 = 1144750080;
  v89 = 1065353216;
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v59) = v92[0];
  [v58 setContentCompressionResistancePriority:0 forAxis:v59];
  LODWORD(v60) = 1148846080;
  [v58 setContentCompressionResistancePriority:1 forAxis:v60];
  [v58 setMaximumContentSizeCategory_];
  v61 = sub_20C13C914();
  [v58 setAccessibilityIdentifier_];

  v62 = v81;
  *&v81[v72] = v58;
  *&v62[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_state] = 2;
  v63 = v82;
  *&v62[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_presenter] = v82;
  v64 = type metadata accessor for CatalogTipSummaryView();
  v88.receiver = v62;
  v88.super_class = v64;

  v65 = objc_msgSendSuper2(&v88, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(v63 + 24) = &off_2822D25B8;
  swift_unknownObjectWeakAssign();
  v66 = v65;
  sub_20BBC32C8(0, 1);

  return v66;
}

void sub_20BBC3194()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CatalogTipSummaryView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 windowScene];

    if (v3)
    {
      v4 = [v3 effectiveGeometry];

      v5 = [v4 interfaceOrientation];
      IsLandscape = UIInterfaceOrientationIsLandscape(v5);
      v7 = *&v0[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_state];
      if (*&v0[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_state] != 2 && ((IsLandscape ^ v7) & 1) != 0)
      {
        sub_20BBC32C8(IsLandscape, (v7 >> 8) & 1);
      }
    }
  }
}

void sub_20BBC32C8(int a1, int a2)
{
  v3 = a2;
  v4 = a1;
  v5 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_state];
  if (a2)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_state] = v6 & 0xFFFE | a1 & 1;
  v7 = &selRef_setDescriptionTextHighlightColor_;
  if (v5 == 2)
  {
    v142 = a2;
    v143 = a1;
    v8 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v9 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_learnMoreButton];
    v10 = [v9 titleLabel];
    if (v10)
    {
      v11 = v10;
      [v10 setAdjustsFontForContentSizeCategory_];
    }

    v12 = [v9 titleLabel];
    if (v12)
    {
      v13 = v12;
      [v12 setLineBreakMode_];
    }

    v14 = [v9 titleLabel];
    if (v14)
    {
      v15 = v14;
      [v14 setNumberOfLines_];
    }

    v16 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_seeMoreButton];
    v17 = [v16 titleLabel];
    if (v17)
    {
      v18 = v17;
      [v17 setAdjustsFontForContentSizeCategory_];
    }

    v19 = [v16 titleLabel];
    if (v19)
    {
      v20 = v19;
      [v19 setLineBreakMode_];
    }

    v145 = v9;
    [v9 addTarget:v2 action:sel_learnMoreButtonTapped forControlEvents:64];
    v146 = v16;
    [v16 addTarget:v2 action:sel_seeMoreButtonTapped forControlEvents:64];
    v21 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_contentLayoutGuide];
    [v2 addLayoutGuide_];
    v140 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_buttonLayoutGuide];
    [v2 addLayoutGuide_];
    v22 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_summaryCardView];
    [v2 addSubview_];
    v141 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C152A00;
    v24 = [v21 leadingAnchor];
    v25 = [v2 safeAreaLayoutGuide];
    v26 = [v25 leadingAnchor];

    v27 = [v24 constraintEqualToAnchor:v26 constant:20.0];
    *(v23 + 32) = v27;
    v28 = [v21 trailingAnchor];
    v29 = [v2 safeAreaLayoutGuide];
    v30 = [v29 trailingAnchor];

    v31 = [v28 constraintEqualToAnchor:v30 constant:-20.0];
    *(v23 + 40) = v31;
    v32 = [v21 topAnchor];
    v33 = [v2 safeAreaLayoutGuide];
    v34 = [v33 topAnchor];

    v35 = [v32 constraintGreaterThanOrEqualToAnchor:v34 constant:20.0];
    *(v23 + 48) = v35;
    v36 = [v21 bottomAnchor];
    v37 = [v2 safeAreaLayoutGuide];
    v38 = [v37 bottomAnchor];

    v39 = [v36 constraintLessThanOrEqualToAnchor:v38 constant:-20.0];
    *(v23 + 56) = v39;
    v40 = [v21 centerYAnchor];
    v41 = [v2 safeAreaLayoutGuide];
    v42 = [v41 centerYAnchor];

    v43 = [v40 constraintEqualToAnchor_];
    *(v23 + 64) = v43;
    v44 = [v22 widthAnchor];
    v45 = [v21 widthAnchor];
    v46 = [v44 constraintEqualToAnchor_];

    *(v23 + 72) = v46;
    v47 = [v22 topAnchor];
    v48 = [v21 topAnchor];
    v49 = [v47 constraintEqualToAnchor_];

    *(v23 + 80) = v49;
    v50 = [v22 centerXAnchor];
    v51 = [v21 centerXAnchor];
    v52 = [v50 constraintEqualToAnchor_];

    *(v23 + 88) = v52;
    v53 = [v140 topAnchor];
    v54 = [v22 bottomAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:20.0];

    *(v23 + 96) = v55;
    v56 = [v140 leadingAnchor];
    v57 = [v21 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor_];

    *(v23 + 104) = v58;
    v59 = [v140 trailingAnchor];
    v60 = [v21 trailingAnchor];
    v61 = [v59 constraintEqualToAnchor_];

    *(v23 + 112) = v61;
    v62 = [v140 bottomAnchor];
    v63 = [v21 bottomAnchor];
    v64 = [v62 constraintEqualToAnchor_];

    *(v23 + 120) = v64;
    sub_20B5E29D0();
    v65 = sub_20C13CC54();
    v7 = &selRef_setDescriptionTextHighlightColor_;

    [v141 activateConstraints_];

    v4 = v143;
    v3 = v142;
  }

  else
  {
    if (((v5 ^ a1) & 1) == 0 && ((a2 ^ ((v5 & 0x100) >> 8)) & 1) == 0)
    {
      return;
    }

    v145 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_learnMoreButton];
    [v145 removeFromSuperview];
    v146 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_seeMoreButton];
    [v146 removeFromSuperview];
  }

  v66 = v7[150];
  if (v3)
  {
    [v2 v66];
    v67 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_20C14FE90;
    v69 = [v146 topAnchor];
    v70 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_buttonLayoutGuide];
    v71 = [v70 topAnchor];
    v72 = [v69 constraintEqualToAnchor_];

    *(v68 + 32) = v72;
    v73 = [v146 widthAnchor];
    v74 = [v70 widthAnchor];
    v75 = [v73 constraintLessThanOrEqualToAnchor_];

    *(v68 + 40) = v75;
    v76 = [v146 centerXAnchor];
    v77 = [v70 centerXAnchor];
    v78 = [v76 constraintEqualToAnchor_];

    *(v68 + 48) = v78;
    v79 = [v146 bottomAnchor];
    v80 = [v70 bottomAnchor];
    v81 = [v79 constraintEqualToAnchor_];

    *(v68 + 56) = v81;
    sub_20B5E29D0();
    v147 = sub_20C13CC54();

    [v67 activateConstraints_];
  }

  else
  {
    [v2 v66];
    [v2 v7[150]];
    v144 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    if (v4)
    {
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_20C14FF90;
      v83 = [v146 heightAnchor];
      v84 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_buttonLayoutGuide];
      v85 = [v84 heightAnchor];
      v86 = [v83 constraintLessThanOrEqualToAnchor_];

      *(v82 + 32) = v86;
      v87 = [v146 heightAnchor];
      v88 = [v84 heightAnchor];
      v89 = [v87 constraintEqualToAnchor_];

      type metadata accessor for UILayoutPriority(0);
      sub_20B60B184();
      sub_20C13BBA4();
      LODWORD(v90) = v148;
      [v89 setPriority_];
      *(v82 + 40) = v89;
      v91 = [v146 centerYAnchor];
      v92 = [v84 &selRef_setNumberOfTapsRequired_];
      v93 = [v91 &selRef:v92 alertControllerReleasedDictationButton:? + 5];

      *(v82 + 48) = v93;
      v94 = [v146 leadingAnchor];
      v95 = [v84 leadingAnchor];
      v96 = [v94 &selRef:v95 alertControllerReleasedDictationButton:? + 5];

      *(v82 + 56) = v96;
      v97 = [v146 widthAnchor];
      v98 = [v84 widthAnchor];
      v99 = [v97 constraintLessThanOrEqualToAnchor:v98 multiplier:0.5 constant:-10.0];

      *(v82 + 64) = v99;
      v100 = [v145 heightAnchor];
      v101 = [v84 heightAnchor];
      v102 = [v100 constraintLessThanOrEqualToAnchor_];

      *(v82 + 72) = v102;
      v103 = [v145 heightAnchor];
      v104 = [v84 heightAnchor];
      v105 = [v103 &selRef:v104 alertControllerReleasedDictationButton:? + 5];

      sub_20C13BBA4();
      LODWORD(v106) = v148;
      [v105 setPriority_];
      *(v82 + 80) = v105;
      v107 = [v145 centerYAnchor];
      v108 = [v84 centerYAnchor];
      v109 = [v107 &selRef:v108 alertControllerReleasedDictationButton:? + 5];

      *(v82 + 88) = v109;
      v110 = [v145 trailingAnchor];
      v111 = [v84 trailingAnchor];
      v112 = [v110 &selRef:v111 alertControllerReleasedDictationButton:? + 5];

      *(v82 + 96) = v112;
      v113 = [v145 widthAnchor];
      v114 = [v84 widthAnchor];
      v115 = [v113 constraintLessThanOrEqualToAnchor:v114 multiplier:0.5 constant:-10.0];

      *(v82 + 104) = v115;
      sub_20B5E29D0();
      v116 = sub_20C13CC54();

      [v144 activateConstraints_];

      return;
    }

    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_20C150AE0;
    v118 = [v146 topAnchor];
    v119 = *&v2[OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_buttonLayoutGuide];
    v120 = [v119 &selRef_setLineBreakMode_];
    v121 = [v118 constraintEqualToAnchor_];

    *(v117 + 32) = v121;
    v122 = [v146 widthAnchor];
    v123 = [v119 widthAnchor];
    v124 = [v122 constraintLessThanOrEqualToAnchor_];

    *(v117 + 40) = v124;
    v125 = [v146 centerXAnchor];
    v126 = [v119 centerXAnchor];
    v127 = [v125 constraintEqualToAnchor_];

    *(v117 + 48) = v127;
    v128 = [v145 topAnchor];
    v129 = [v146 bottomAnchor];
    v130 = [v128 constraintEqualToAnchor:v129 constant:10.0];

    *(v117 + 56) = v130;
    v131 = [v145 widthAnchor];
    v132 = [v119 widthAnchor];
    v133 = [v131 constraintLessThanOrEqualToAnchor_];

    *(v117 + 64) = v133;
    v134 = [v145 centerXAnchor];
    v135 = [v119 centerXAnchor];
    v136 = [v134 constraintEqualToAnchor_];

    *(v117 + 72) = v136;
    v137 = [v145 bottomAnchor];
    v138 = [v119 bottomAnchor];
    v139 = [v137 constraintEqualToAnchor_];

    *(v117 + 80) = v139;
    sub_20B5E29D0();
    v147 = sub_20C13CC54();

    [v144 activateConstraints_];
  }
}

id sub_20BBC4654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogTipSummaryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for CatalogTipSummaryView.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_20BBC4808()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v1 - 8);
  v74 = &v61 - v2;
  v70 = sub_20C13D664();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_20C13D874();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_20C13D7D4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v78 = &v61 - v7;
  MEMORY[0x28223BE20](v8);
  v77 = &v61 - v9;
  v10 = OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_buttonLayoutGuide;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v11 = OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_contentLayoutGuide;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v12 = OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_summaryCardView;
  v13 = [objc_allocWithZone(type metadata accessor for CatalogTipSummaryCardView()) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  v14 = [objc_opt_self() buttonWithType_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v14 setTintColor_];

  v16 = [objc_opt_self() preferredFontForTextStyle_];
  v17 = [v14 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setFont_];
  }

  v19 = OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_learnMoreButton;
  LODWORD(v20) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v14 setContentHuggingPriority:1 forAxis:v21];
  v22 = *MEMORY[0x277D76820];
  [v14 setMaximumContentSizeCategory_];
  v23 = sub_20C13C914();
  [v14 setAccessibilityIdentifier_];

  v75 = v0;
  *(v0 + v19) = v14;
  v65 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v64 = [objc_opt_self() blackColor];
  v24 = *MEMORY[0x277D76938];
  v63 = *MEMORY[0x277D74420];
  v90 = MEMORY[0x277D84FA0];
  v76 = v22;
  sub_20B6FF83C(v85, 1);
  v92 = 1;
  v91 = 0;
  v25 = v90;
  sub_20C13E164();
  v62 = v24;
  sub_20C13CA64();
  v26 = sub_20C13E1B4();
  v27 = -1 << v25[32];
  v28 = v26 & ~v27;
  if ((*&v25[((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v28))
  {
    v29 = ~v27;
    while (1)
    {
      v30 = *(*(v25 + 6) + v28);
      if (v30 >= 4)
      {
        goto LABEL_10;
      }

      v31 = sub_20C13DFF4();

      if (v31)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      if (((*&v25[((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v28) & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85[0] = v25;
    sub_20B706478(4, v28, isUniquelyReferenced_nonNull_native);
    v25 = v85[0];
  }

  while (1)
  {
    v66 = OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_seeMoreButton;
    v85[0] = 0;
    v85[1] = v76;
    v33 = v76;
    v34 = v62;
    v85[2] = v62;
    LODWORD(v86) = 0;
    BYTE4(v86) = v92;
    BYTE5(v86) = 9;
    v35 = v63;
    v87 = v63;
    LOBYTE(v88) = v91;
    v89 = v25;
    v36 = v86;
    v37 = v91 & 1;
    v38 = v79;
    v39 = v77;
    v40 = v80;
    (*(v79 + 104))(v77, *MEMORY[0x277D75028], v80);
    v41 = *(v38 + 16);
    v41(v78, v39, v40);
    v42 = type metadata accessor for CapsuleButton();
    v43 = objc_allocWithZone(v42);
    v44 = &v43[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_fontDescriptor];
    *v44 = 0;
    *(v44 + 1) = v33;
    *(v44 + 2) = v34;
    *(v44 + 3) = v36;
    *(v44 + 4) = v35;
    *(v44 + 5) = v37;
    *(v44 + 6) = v25;
    v45 = v65;
    *&v43[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_normalBackgroundColor] = v65;
    v46 = v64;
    *&v43[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_normalForegroundColor] = v64;
    sub_20B7B2490(v85, v84);
    v83.receiver = v43;
    v83.super_class = v42;
    v65 = v45;
    v64 = v46;
    v25 = objc_msgSendSuper2(&v83, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v47 = v71;
    sub_20C13D834();
    v48 = v78;
    v41(v67, v78, v80);
    sub_20C13D654();
    (*(v69 + 104))(v68, *MEMORY[0x277D74FD8], v70);
    sub_20C13D674();
    v49 = *&v25[OBJC_IVAR____TtC9SeymourUI13CapsuleButton_normalBackgroundColor];
    v50 = sub_20C13D634();
    sub_20C13BCD4();
    v50(v84, 0);
    v51 = v72;
    v52 = v74;
    v53 = v73;
    (*(v72 + 16))(v74, v47, v73);
    (*(v51 + 56))(v52, 0, 1, v53);
    sub_20C13D894();

    sub_20B7B24EC(v85);
    (*(v51 + 8))(v47, v53);
    v54 = *(v79 + 8);
    v55 = v80;
    v54(v48, v80);
    v54(v77, v55);
    v56 = v25;
    [v56 setTranslatesAutoresizingMaskIntoConstraints_];
    type metadata accessor for UILayoutPriority(0);
    v82 = 1144750080;
    v81 = 1065353216;
    sub_20B60B184();
    sub_20C13BB94();
    LODWORD(v57) = v84[0];
    [v56 setContentCompressionResistancePriority:0 forAxis:v57];
    LODWORD(v58) = 1148846080;
    [v56 setContentCompressionResistancePriority:1 forAxis:v58];
    [v56 setMaximumContentSizeCategory_];
    v59 = sub_20C13C914();
    [v56 setAccessibilityIdentifier_];

    v60 = v75;
    *(v75 + v66) = v56;
    *(v60 + OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_state) = 2;
    sub_20C13DE24();
    __break(1u);
LABEL_10:
  }
}

uint64_t sub_20BBC5308@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v8 = v7;
  v77 = a7;
  v78 = a6;
  v72 = a4;
  v80 = a3;
  v79 = a1;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v69 = *(v71 - 8);
  v68 = *(v69 + 64);
  v13 = MEMORY[0x28223BE20](v71);
  v65 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60);
  v75 = *(v17 - 8);
  v76 = v17;
  v74 = *(v75 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v73 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v70 = &v56 - v20;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v56 = v16;
  sub_20C1392E4();
  v66 = *(v11 + 16);
  v21 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v21;
  v22 = v8;
  v23 = a5;
  v66(v21, v22, a5);
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v59 = v24;
  v25 = (v24 + v12) & 0xFFFFFFFFFFFFFFF8;
  v26 = v24 + v12;
  v62 = v24 + v12;
  v27 = v25 + 8;
  v63 = v25 + 8;
  v64 = v25;
  v28 = swift_allocObject();
  v58 = v23;
  v29 = v78;
  *(v28 + 16) = v23;
  *(v28 + 24) = v29;
  v30 = *(v11 + 32);
  v60 = v11 + 32;
  v61 = v30;
  v30(v28 + v24, v21, v23);
  *(v28 + v26) = v79;
  v31 = (v28 + v27);
  v33 = v71;
  v32 = v72;
  *v31 = v80;
  v31[1] = v32;
  v34 = v69;
  v35 = v65;
  (*(v69 + 16))(v65, v16, v33);
  v36 = v34;
  v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v38 = (v68 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v36 + 32))(v39 + v37, v35, v33);
  v40 = (v39 + v38);
  *v40 = sub_20BBC5A60;
  v40[1] = v28;
  v68 = sub_20B65FE0C();

  v41 = v70;
  sub_20C137C94();
  (*(v36 + 8))(v56, v33);
  v42 = v57;
  v43 = v58;
  v66(v57, v67, v58);
  v44 = swift_allocObject();
  v45 = v78;
  *(v44 + 16) = v43;
  *(v44 + 24) = v45;
  v61(v44 + v59, v42, v43);
  *(v44 + v62) = v79;
  v46 = (v44 + v63);
  *v46 = v80;
  v46[1] = v32;
  v47 = v75;
  v48 = v76;
  v49 = v73;
  (*(v75 + 16))(v73, v41, v76);
  v50 = v47;
  v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v52 = (v74 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v50 + 32))(v53 + v51, v49, v48);
  v54 = (v53 + v52);
  *v54 = sub_20BBC5F5C;
  v54[1] = v44;

  sub_20C137C94();
  return (*(v50 + 8))(v41, v48);
}

uint64_t sub_20BBC5884@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_20C132E94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132E84();
  v5 = sub_20C135704();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    return sub_20C138E74();
  }

  v6 = sub_20C138A74();
  sub_20BBC6120();
  v7 = swift_allocError();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D54118], v6);
  *(swift_allocObject() + 16) = v7;
  sub_20B65FE0C();
  return sub_20C137CA4();
}

uint64_t sub_20BBC5ACC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v34 = a4;
  v35 = a5;
  v33[3] = a3;
  v36 = a2;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7662D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v33 - v13;
  v41 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  v16 = sub_20C138A74();
  v17 = swift_dynamicCast();
  v18 = *(*(v16 - 8) + 56);
  if (v17)
  {
    v19 = *(v16 - 8);
    v18(v14, 0, 1, v16);
    v20 = (*(v19 + 88))(v14, v16);
    v21 = *MEMORY[0x277D54118];
    (*(v19 + 8))(v14, v16);
    if (v20 == v21)
    {
      sub_20BBC6120();
      v22 = swift_allocError();
      (*(v19 + 104))(v23, v20, v16);
      *(swift_allocObject() + 16) = v22;
      sub_20B65FE0C();
      return sub_20C137CA4();
    }
  }

  else
  {
    v18(v14, 1, 1, v16);
    sub_20BBC60B8(v14);
  }

  sub_20C13B534();
  v25 = a1;
  v26 = sub_20C13BB74();
  v27 = sub_20C13D1D4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41 = v29;
    *v28 = 136446210;
    swift_getErrorValue();
    v30 = MEMORY[0x20F2F5850](v39, v40);
    v32 = sub_20B51E694(v30, v31, &v41);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_20B517000, v26, v27, "Unable to fetch subscription: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v28, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  return sub_20C138E74();
}

uint64_t objectdestroyTm_10()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_20BBC5FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BBC60B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7662D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20BBC6120()
{
  result = qword_27C767070;
  if (!qword_27C767070)
  {
    sub_20C138A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767070);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutPlanPreference()
{
  result = qword_27C76BA20;
  if (!qword_27C76BA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BBC61C4()
{
  result = sub_20C1333E4();
  if (v1 <= 0x3F)
  {
    result = sub_20C134E04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BBC6238()
{
  v1 = v0;
  v2 = sub_20C134E04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C1333E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutPlanPreference();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8DCE6C(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    v13 = sub_20C134DF4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v13 = sub_20C1333D4();
    (*(v7 + 8))(v9, v6);
  }

  return v13;
}

uint64_t sub_20BBC6470()
{
  v1 = sub_20C134E04();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C1333E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutPlanPreference();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8DCE6C(v0, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v11, v1);
    MEMORY[0x20F2F58E0](1);
    sub_20BBC67F4(&unk_27C764470, MEMORY[0x277D51130]);
    sub_20C13C7C4();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    MEMORY[0x20F2F58E0](0);
    sub_20BBC67F4(&qword_27C763F20, MEMORY[0x277D4FE80]);
    sub_20C13C7C4();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_20BBC6728()
{
  sub_20C13E164();
  sub_20BBC6470();
  return sub_20C13E1B4();
}

uint64_t sub_20BBC676C()
{
  sub_20C13E164();
  sub_20BBC6470();
  return sub_20C13E1B4();
}

uint64_t sub_20BBC67F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BBC683C(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = sub_20C134E04();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C1333E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutPlanPreference();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763F18);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v19 = *(v18 + 56);
  sub_20B8DCE6C(v27, &v25 - v16);
  sub_20B8DCE6C(v28, &v17[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B8DCE6C(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v26;
      (*(v2 + 32))(v4, &v17[v19], v26);
      v21 = MEMORY[0x20F2EC550](v11, v4);
      v22 = *(v2 + 8);
      v22(v4, v20);
      v22(v11, v20);
LABEL_9:
      sub_20B8DCED0(v17);
      return v21 & 1;
    }

    (*(v2 + 8))(v11, v26);
  }

  else
  {
    sub_20B8DCE6C(v17, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v17[v19], v5);
      v21 = sub_20C1333C4();
      v23 = *(v6 + 8);
      v23(v8, v5);
      v23(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  sub_20BBC6BAC(v17);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_20BBC6BAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20BBC6C44(void *a1, uint64_t (*a2)(double), void *a3)
{
  v7 = [v3 window];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v13 = [v3 traitCollection];
    v19 = v13;
    if (v10 >= 350.0)
    {
      [v13 horizontalSizeClass];
      sub_20C1380F4();
      v15 = sub_20C138104();
      v14 = 1;
      if (v15 == sub_20C138104())
      {
        v14 = a2(v10);
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = v3[*a1];
    if (v16 == 7 || v16 != v14 || ((v17 = &v3[*a3], v10 == *v17) ? (v18 = v12 == v17[1]) : (v18 = 0), !v18))
    {
      sub_20BBC6DC4(v14, a3, a1, v10, v12);
    }
  }
}

void sub_20BBC6DC4(char a1, void *a2, void *a3, double a4, double a5)
{
  v7 = &v5[*a2];
  *v7 = a4;
  v7[1] = a5;
  v5[*a3] = a1;
  sub_20BEC0B98(a1, a4, a5);
  if ((a1 & 0xFE) != 0)
  {
    v8 = 4.0;
  }

  else
  {
    v8 = 0.0;
  }

  v10 = (*&v8 - 0x10000000000000) >> 53 < 0x3FF && v8 >= 0.0;
  [v5 setClipsToBounds_];
  v11 = [v5 layer];
  [v11 setCornerRadius_];
}

char *sub_20BBC6E9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_currentContainerSize];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_currentLayout] = 7;
  v11 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_itemInfo;
  v12 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = &v5[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView];
  v14 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *v13 = v14;
  v13[1] = &off_2822B63E8;
  v15 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_vibrantShadowView;
  v16 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v15] = v16;
  *&v5[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_oldWidth] = 0;
  v5[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_supportsScrolling] = 0;
  v17 = objc_allocWithZone(type metadata accessor for ProgramBrickContentView());
  v18 = sub_20BEC02C8(0);
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_programContentView] = v18;
  v109.receiver = v5;
  v109.super_class = type metadata accessor for ProgramBrickRowCell();
  v19 = objc_msgSendSuper2(&v109, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = [v19 contentView];
  v21 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView;
  [v20 addSubview_];

  v22 = [v19 &selRef_setMaximumFractionDigits_];
  v105 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_vibrantShadowView;
  [v22 addSubview_];

  v23 = *&v19[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_programContentView];
  v24 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_programContentView;
  v107 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_programContentView;
  v25 = *&v19[v21];
  v26 = *&v23[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_recencyIconView];
  v27 = *(v26 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView);
  *(v26 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView) = v25;
  v28 = v23;
  v29 = v25;

  v30 = [v19 &selRef_setMaximumFractionDigits_];
  [v30 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1517D0;
  v31 = *&v19[v21];
  v32 = [v19 &selRef_setMaximumFractionDigits_];
  v33 = *MEMORY[0x277D768C8];
  v34 = *(MEMORY[0x277D768C8] + 8);
  v36 = *(MEMORY[0x277D768C8] + 16);
  v35 = *(MEMORY[0x277D768C8] + 24);
  v37 = [v31 leadingAnchor];
  v38 = [v32 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:v34];

  LODWORD(v40) = 1148846080;
  [v39 setPriority_];
  v41 = v39;
  v42 = [v31 trailingAnchor];
  v43 = [v32 trailingAnchor];
  v44 = -v35;
  v45 = [v42 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v46) = 1148846080;
  [v45 &selRef_meterUnit];
  v47 = v45;
  v48 = [v31 topAnchor];
  v49 = [v32 &selRef_setLineBreakMode_];
  v50 = [v48 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v51) = 1148846080;
  [v50 &selRef_meterUnit];
  v52 = [v31 bottomAnchor];
  v53 = [v32 &selRef_secondaryLabel + 5];
  v54 = -v36;
  v55 = [v52 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v56) = 1148846080;
  [v55 &selRef_meterUnit];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_20C14FE90;
  *(v57 + 32) = v41;
  *(v57 + 40) = v47;
  *(v57 + 48) = v50;
  *(v57 + 56) = v55;
  v58 = v50;

  *(inited + 32) = v57;
  v59 = *&v19[v105];
  v60 = [v19 contentView];
  v61 = [v59 leadingAnchor];
  v62 = [v60 leadingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:v34];

  LODWORD(v64) = 1148846080;
  [v63 setPriority_];
  v106 = v63;
  v65 = [v59 trailingAnchor];
  v66 = [v60 trailingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:v44];

  LODWORD(v68) = 1148846080;
  [v67 setPriority_];
  v69 = v67;
  v70 = [v59 topAnchor];
  v71 = [v60 topAnchor];
  v72 = [v70 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v73) = 1148846080;
  [v72 setPriority_];
  v74 = [v59 bottomAnchor];
  v75 = [v60 bottomAnchor];
  v76 = [v74 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v77) = 1148846080;
  [v76 setPriority_];
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_20C14FE90;
  *(v78 + 32) = v106;
  *(v78 + 40) = v69;
  *(v78 + 48) = v72;
  *(v78 + 56) = v76;
  v79 = v72;

  *(inited + 40) = v78;
  v80 = *&v19[v107];
  v81 = [v19 contentView];

  v82 = [v80 leadingAnchor];
  v83 = [v81 leadingAnchor];
  v84 = [v82 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v85) = 1148846080;
  [v84 &selRef_meterUnit];
  v86 = v84;
  v87 = [v80 trailingAnchor];
  v88 = [v81 trailingAnchor];
  v89 = [v87 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v90) = 1148846080;
  [v89 &selRef_meterUnit];
  v91 = v89;
  v92 = [v80 topAnchor];
  v93 = [v81 topAnchor];
  v94 = [v92 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v95) = 1148846080;
  [v94 &selRef_meterUnit];
  v96 = [v80 bottomAnchor];
  v97 = [v81 bottomAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:v54];

  LODWORD(v99) = 1148846080;
  [v98 &selRef_meterUnit];
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_20C14FE90;
  *(v100 + 32) = v86;
  *(v100 + 40) = v91;
  *(v100 + 48) = v94;
  *(v100 + 56) = v98;
  v101 = v94;

  *(inited + 48) = v100;
  v102 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v103 = sub_20C13CC54();

  [v102 activateConstraints_];

  return v19;
}

id sub_20BBC7A38()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_oldWidth;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_oldWidth];
  [v0 bounds];
  if (v2 != CGRectGetWidth(v5))
  {
    [v0 bounds];
    *&v0[v1] = CGRectGetWidth(v6);
    sub_20BBC6C44(&OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_currentLayout, sub_20BDF9B24, &OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_currentContainerSize);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ProgramBrickRowCell();
  return objc_msgSendSuper2(&v4, sel_layoutSubviews);
}

void sub_20BBC7CE4(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ProgramBrickRowCell();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = v3;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v3 || (sub_20B51C88C(0, &qword_27C7655A0), v5 = a1, v6 = sub_20C13D5F4(), v5, v4, (v6 & 1) == 0))
  {
LABEL_7:
    sub_20BBC6C44(&OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_currentLayout, sub_20BDF9B24, &OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_currentContainerSize);
  }
}

id sub_20BBC7E50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgramBrickRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProgramBrickRowCell()
{
  result = qword_27C76BA60;
  if (!qword_27C76BA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BBC7F68()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BBC8048(uint64_t a1)
{
  v2 = sub_20C13C4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView + 8);
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView);

    ObjectType = swift_getObjectType();
    v11 = (*(v7 + 112))(ObjectType, v7);

    if (v11)
    {
      (*(v3 + 104))(v5, *MEMORY[0x277D851C0], v2);

      sub_20BD519D8(v11, v5, sub_20BBCB064, a1);

      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_20BBC81E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_programContentView);

    v5 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_recencyIconView];
    [*&v5[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView] setImage_];
    [v5 setNeedsLayout];
  }
}

uint64_t sub_20BBC8294(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BBC82E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BBC8338(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BBC83C0(unint64_t a1)
{
  v4 = v1;
  v6 = sub_20C13BB84();
  v322 = *(v6 - 1);
  v323 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v276 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v305 = &v276 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v276 - v13;
  v304 = v15;
  MEMORY[0x28223BE20](v16);
  v306 = &v276 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v18 - 8);
  v313 = &v276 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v316 = *(v20 - 8);
  v317 = v20;
  MEMORY[0x28223BE20](v20);
  v302 = v21;
  v303 = &v276 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v314 = &v276 - v23;
  v24 = sub_20C1391C4();
  v310 = *(v24 - 8);
  v311 = v24;
  MEMORY[0x28223BE20](v24);
  v312 = &v276 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C138A64();
  v307 = *(v26 - 8);
  v308 = v26;
  MEMORY[0x28223BE20](v26);
  v315 = &v276 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v28 - 8);
  v309 = &v276 - v29;
  v330 = sub_20C13C554();
  v325 = *(v330 - 8);
  MEMORY[0x28223BE20](v330);
  v324 = &v276 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C137C24();
  v326 = *(v31 - 8);
  v327 = v31;
  MEMORY[0x28223BE20](v31);
  v318 = v32;
  v319 = &v276 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  *&v328 = &v276 - v34;
  v35 = sub_20C136CD4();
  v320 = *(v35 - 8);
  v321 = v35;
  MEMORY[0x28223BE20](v35);
  v37 = &v276 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C134E44();
  MEMORY[0x28223BE20](v38 - 8);
  *&v329 = &v276 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C134014();
  v41 = *(v40 - 8);
  *&v43 = MEMORY[0x28223BE20](v40).n128_u64[0];
  *&v331 = &v276 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v45 == 33)
  {
    v330 = v4;
    v68 = *&v4[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_programContentView];
    v69 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_titleLabel;
    v70 = &off_277D9A000;
    [*(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_titleLabel) setAttributedText_];
    v71 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentLayout;
    v72 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentLayout);
    if (v72 == 7)
    {
      goto LABEL_115;
    }

    *&v331 = [v68 traitCollection];
    v73 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_isMinFontPreferred);
    v74 = *(v68 + v71);
    v75 = 0.0;
    Height = 0.0;
    if (v74 != 7)
    {
      if (v74 > 1)
      {
        [v68 bounds];
        Width = CGRectGetWidth(v394);
      }

      else
      {
        Width = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentContainerSize);
      }

      v75 = Width * *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_styleProvider + 48);
      [v68 bounds];
      Height = CGRectGetHeight(v395);
    }

    v97 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_supportsScrolling);
    if (qword_27C760B28 != -1)
    {
      swift_once();
    }

    v352[1] = xmmword_27C76D998;
    v352[2] = unk_27C76D9A8;
    v349 = xmmword_27C76D958;
    v350 = *&qword_27C76D968;
    v351 = xmmword_27C76D978;
    v352[0] = *&qword_27C76D988;
    v355 = xmmword_27C76D9D8;
    v356 = *&qword_27C76D9E8;
    v353 = xmmword_27C76D9B8;
    v354 = unk_27C76D9C8;
    v357[2] = xmmword_27C76DA18;
    v358 = unk_27C76DA28;
    v357[0] = xmmword_27C76D9F8;
    v357[1] = unk_27C76DA08;
    v359 = xmmword_27C76DA38;
    v360 = unk_27C76DA48;
    v362[1] = *(&xmmword_27C76DA70 + 8);
    v362[2] = unk_27C76DA88;
    v361 = xmmword_27C76DA58;
    v362[0] = *&qword_27C76DA68;
    v365 = xmmword_27C76DAB8;
    v366 = *&qword_27C76DAC8;
    v363 = xmmword_27C76DA98;
    v364 = unk_27C76DAA8;
    v367[2] = xmmword_27C76DAF8;
    v368 = *&qword_27C76DB08;
    v367[0] = xmmword_27C76DAD8;
    v367[1] = *&qword_27C76DAE8;
    v369 = xmmword_27C76DB18;
    v370 = *&qword_27C76DB28;
    v372[2] = xmmword_27C76DB68;
    v373 = xmmword_27C76DB78;
    v372[0] = *&qword_27C76DB48;
    v372[1] = *(&xmmword_27C76DB50 + 8);
    v371 = xmmword_27C76DB38;
    v321 = v71;
    LODWORD(v318) = v72;
    LODWORD(v320) = v73;
    v319 = v69;
    if (v72 <= 2)
    {
      if (!v72)
      {
LABEL_102:
        v328 = *(v362 + 8);
        v329 = *(&v362[1] + 8);
        v326 = *(&v363 + 1);
        v327 = v363;
        v324 = *&v362[0];
        v325 = *(&v362[2] + 1);
        v323 = v361;
        v98 = BYTE8(v361);
        LODWORD(v322) = BYTE13(v360);
        v99 = DWORD2(v360);
        v100 = BYTE12(v360);
        v101 = v360;
        v102 = *(&v359 + 1);
        v103 = v359;
        v104 = &v359;
LABEL_103:
        sub_20B7B07E8(v104, &v335);
        LOBYTE(v332) = v100;
        v334 = v98;
        v383 = v103;
        v384 = v102;
        v385 = v101;
        v386 = v99;
        v387 = v100;
        v388 = v322;
        v389 = v323;
        v390 = v98;
        v391 = v324;
        v335 = v103;
        v336 = v102;
        v337 = v101;
        v338 = v99;
        v339 = v100;
        v340 = v322;
        v341 = v323;
        v342 = v98;
        v343 = v324;
        v344 = v328;
        v345 = v329;
        v346 = v325;
        v347 = v327;
        v348 = v326;
        v206 = v331;
        v207 = sub_20B7C6A74(v331);
        sub_20B7B0844(&v335);
        v208 = [*&v319[v68] attributedText];
        if (v208)
        {
          v209 = v208;
          v210 = sub_20B914D2C(v207, 4, v75, Height);

          v71 = v321;
          if (v320 & 1 | !v210)
          {
            v211 = v320 & v210;
            goto LABEL_108;
          }
        }

        else
        {

          v71 = v321;
          if (v320)
          {
            v211 = 1;
LABEL_108:
            v212 = sub_20BE8BF3C(&unk_282287010);
            sub_20B7ACB68(v318, v331, 0);
            v213 = sub_20BE8BF3C(&unk_282286F98);
            if (*(v212 + 16) <= *(v213 + 16) >> 3)
            {
              v374 = v213;
              sub_20B6CE640(v212);

              v214 = v374;
              if (!v211)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v214 = sub_20B6CFA4C(v212, v213);

              if (!v211)
              {
LABEL_110:
                v215 = 1;
                v216 = v318;
                v217 = v331;
LABEL_114:
                sub_20B7ACB68(v216, v217, v215 & 1);

LABEL_115:
                v218 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_subtitleLabel;
                [*(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_subtitleLabel) setAttributedText_];
                v219 = *(v68 + v71);
                if (v219 == 7)
                {
                  goto LABEL_147;
                }

                v323 = [v68 traitCollection];
                v220 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_isMinFontPreferred);
                v221 = *(v68 + v71);
                v222 = 0.0;
                v223 = 0.0;
                if (v221 != 7)
                {
                  if (v221 > 1)
                  {
                    [v68 bounds];
                    v224 = CGRectGetWidth(v398);
                  }

                  else
                  {
                    v224 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentContainerSize);
                  }

                  v222 = v224 * *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_styleProvider + 48);
                  [v68 bounds];
                  v223 = CGRectGetHeight(v399);
                }

                v225 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_supportsScrolling);
                if (qword_27C760B20 != -1)
                {
                  swift_once();
                }

                v352[1] = xmmword_27C76D768;
                v352[2] = unk_27C76D778;
                v349 = xmmword_27C76D728;
                v350 = *&qword_27C76D738;
                v351 = xmmword_27C76D748;
                v352[0] = *&qword_27C76D758;
                v355 = xmmword_27C76D7A8;
                v356 = *&qword_27C76D7B8;
                v353 = xmmword_27C76D788;
                v354 = unk_27C76D798;
                v357[2] = xmmword_27C76D7E8;
                v358 = unk_27C76D7F8;
                v357[0] = xmmword_27C76D7C8;
                v357[1] = unk_27C76D7D8;
                v359 = xmmword_27C76D808;
                v360 = unk_27C76D818;
                v362[1] = *(&xmmword_27C76D840 + 8);
                v362[2] = unk_27C76D858;
                v361 = xmmword_27C76D828;
                v362[0] = *&qword_27C76D838;
                v365 = xmmword_27C76D888;
                v366 = *&qword_27C76D898;
                v363 = xmmword_27C76D868;
                v364 = unk_27C76D878;
                v367[2] = xmmword_27C76D8C8;
                v368 = *&qword_27C76D8D8;
                v367[0] = xmmword_27C76D8A8;
                v367[1] = *&qword_27C76D8B8;
                v369 = xmmword_27C76D8E8;
                v370 = *&qword_27C76D8F8;
                v372[2] = xmmword_27C76D938;
                v373 = xmmword_27C76D948;
                v372[0] = *&qword_27C76D918;
                v372[1] = *(&xmmword_27C76D920 + 8);
                v371 = xmmword_27C76D908;
                LODWORD(v322) = v220;
                v320 = v218;
                if (v219 <= 2)
                {
                  if (!v219)
                  {
                    goto LABEL_134;
                  }

                  if (v219 == 1)
                  {
                    v331 = *(&v367[1] + 8);
                    v329 = *(v367 + 8);
                    v327 = *(&v368 + 1);
                    *&v328 = v368;
                    v325 = *&v367[0];
                    v326 = *(&v367[2] + 1);
                    v324 = v366;
                    v226 = BYTE8(v366);
                    v227 = BYTE13(v365);
                    v228 = DWORD2(v365);
                    v229 = BYTE12(v365);
                    v230 = v365;
                    v231 = *(&v364 + 1);
                    v232 = v364;
                    v233 = &v364;
                    goto LABEL_135;
                  }
                }

                else
                {
                  if (v219 <= 4)
                  {
                    if (v219 != 3)
                    {
                      v331 = *(&v352[1] + 8);
                      v329 = *(v352 + 8);
                      v327 = *(&v353 + 1);
                      *&v328 = v353;
                      v325 = *&v352[0];
                      v326 = *(&v352[2] + 1);
                      v324 = v351;
                      v226 = BYTE8(v351);
                      v227 = BYTE13(v350);
                      v228 = DWORD2(v350);
                      v229 = BYTE12(v350);
                      v230 = v350;
                      v231 = *(&v349 + 1);
                      v232 = v349;
                      v233 = &v349;
LABEL_135:
                      sub_20B7B07E8(v233, &v335);
                      v334 = v229;
                      v333 = v226;
                      v374 = v232;
                      v375 = v231;
                      v376 = v230;
                      v377 = v228;
                      v378 = v229;
                      v379 = v227;
                      v380 = v324;
                      v381 = v226;
                      v382 = v325;
                      v335 = v232;
                      v336 = v231;
                      v337 = v230;
                      v338 = v228;
                      v339 = v229;
                      v340 = v227;
                      v341 = v324;
                      v342 = v226;
                      v343 = v325;
                      v344 = v329;
                      v345 = v331;
                      v346 = v326;
                      v347 = v328;
                      v348 = v327;
                      v234 = v323;
                      v235 = sub_20B7C6A74(v323);
                      sub_20B7B0844(&v335);
                      v236 = [*(v68 + v320) attributedText];
                      if (v236)
                      {
                        v237 = v236;
                        v238 = sub_20B914D2C(v235, 3, v222, v223);

                        v70 = &off_277D9A000;
                        if (v322 & 1 | !v238)
                        {
                          v239 = v322 & v238;
                          goto LABEL_140;
                        }
                      }

                      else
                      {

                        v70 = &off_277D9A000;
                        if (v322)
                        {
                          v239 = 1;
LABEL_140:
                          v240 = sub_20BE8BF3C(&unk_282287038);
                          sub_20B7ACB68(v219, v234, 0);
                          v241 = sub_20BE8BF3C(&unk_282286F98);
                          if (*(v240 + 16) <= *(v241 + 16) >> 3)
                          {
                            v332 = v241;
                            sub_20B6CE640(v240);

                            v242 = v332;
                            if (!v239)
                            {
                              goto LABEL_142;
                            }
                          }

                          else
                          {
                            v242 = sub_20B6CFA4C(v240, v241);

                            if (!v239)
                            {
LABEL_142:
                              v243 = 1;
LABEL_146:
                              sub_20B7ACB68(v219, v234, v243 & 1);

                              goto LABEL_147;
                            }
                          }

                          v243 = sub_20B7AC284(v242, v219, v234);
                          goto LABEL_146;
                        }
                      }

LABEL_147:
                      [*(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_footnoteLabel) v70[196]];
                      [*(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_recencyIconView) setHidden_];
                      sub_20BEC0F64(MEMORY[0x277D84F90]);
                      v4 = v330;
                      sub_20BA1D9C8();
                      return [v4 setNeedsLayout];
                    }

LABEL_132:
                    v331 = *(&v372[1] + 8);
                    v329 = *(v372 + 8);
                    v327 = *(&v373 + 1);
                    *&v328 = v373;
                    v325 = *&v372[0];
                    v326 = *(&v372[2] + 1);
                    v324 = v371;
                    v226 = BYTE8(v371);
                    v227 = BYTE13(v370);
                    v228 = DWORD2(v370);
                    v229 = BYTE12(v370);
                    v230 = v370;
                    v231 = *(&v369 + 1);
                    v232 = v369;
                    v233 = &v369;
                    goto LABEL_135;
                  }

                  if (v219 == 5)
                  {
                    if (v225)
                    {
                      goto LABEL_132;
                    }

LABEL_134:
                    v331 = *(&v362[1] + 8);
                    v329 = *(v362 + 8);
                    v327 = *(&v363 + 1);
                    *&v328 = v363;
                    v325 = *&v362[0];
                    v326 = *(&v362[2] + 1);
                    v324 = v361;
                    v226 = BYTE8(v361);
                    v227 = BYTE13(v360);
                    v228 = DWORD2(v360);
                    v229 = BYTE12(v360);
                    v230 = v360;
                    v231 = *(&v359 + 1);
                    v232 = v359;
                    v233 = &v359;
                    goto LABEL_135;
                  }
                }

                v331 = *(&v357[1] + 8);
                v329 = *(v357 + 8);
                v327 = *(&v358 + 1);
                *&v328 = v358;
                v325 = *&v357[0];
                v326 = *(&v357[2] + 1);
                v324 = v356;
                v226 = BYTE8(v356);
                v227 = BYTE13(v355);
                v228 = DWORD2(v355);
                v229 = BYTE12(v355);
                v230 = v355;
                v231 = *(&v354 + 1);
                v232 = v354;
                v233 = &v354;
                goto LABEL_135;
              }
            }

            v216 = v318;
            v217 = v331;
            v215 = sub_20B7AC284(v214, v318, v331);
            goto LABEL_114;
          }
        }

        goto LABEL_115;
      }

      if (v72 == 1)
      {
        v328 = *(v367 + 8);
        v329 = *(&v367[1] + 8);
        v326 = *(&v368 + 1);
        v327 = v368;
        v324 = *&v367[0];
        v325 = *(&v367[2] + 1);
        v323 = v366;
        v98 = BYTE8(v366);
        LODWORD(v322) = BYTE13(v365);
        v99 = DWORD2(v365);
        v100 = BYTE12(v365);
        v101 = v365;
        v102 = *(&v364 + 1);
        v103 = v364;
        v104 = &v364;
        goto LABEL_103;
      }
    }

    else
    {
      if (v72 <= 4)
      {
        if (v72 != 3)
        {
          v328 = *(v352 + 8);
          v329 = *(&v352[1] + 8);
          v326 = *(&v353 + 1);
          v327 = v353;
          v324 = *&v352[0];
          v325 = *(&v352[2] + 1);
          v323 = v351;
          v98 = BYTE8(v351);
          LODWORD(v322) = BYTE13(v350);
          v99 = DWORD2(v350);
          v100 = BYTE12(v350);
          v101 = v350;
          v102 = *(&v349 + 1);
          v103 = v349;
          v104 = &v349;
          goto LABEL_103;
        }

        goto LABEL_41;
      }

      if (v72 == 5)
      {
        if (v97)
        {
LABEL_41:
          v328 = *(v372 + 8);
          v329 = *(&v372[1] + 8);
          v326 = *(&v373 + 1);
          v327 = v373;
          v324 = *&v372[0];
          v325 = *(&v372[2] + 1);
          v323 = v371;
          v98 = BYTE8(v371);
          LODWORD(v322) = BYTE13(v370);
          v99 = DWORD2(v370);
          v100 = BYTE12(v370);
          v101 = v370;
          v102 = *(&v369 + 1);
          v103 = v369;
          v104 = &v369;
          goto LABEL_103;
        }

        goto LABEL_102;
      }
    }

    v328 = *(v357 + 8);
    v329 = *(&v357[1] + 8);
    v326 = *(&v358 + 1);
    v327 = v358;
    v324 = *&v357[0];
    v325 = *(&v357[2] + 1);
    v323 = v356;
    v98 = BYTE8(v356);
    LODWORD(v322) = BYTE13(v355);
    v99 = DWORD2(v355);
    v100 = BYTE12(v355);
    v101 = v355;
    v102 = *(&v354 + 1);
    v103 = v354;
    v104 = &v354;
    goto LABEL_103;
  }

  if (v45 != 32)
  {
    sub_20C13B534();

    v330 = v4;
    v78 = v4;
    v79 = sub_20C13BB74();
    v80 = sub_20C13D1D4();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v369 = v83;
      *v81 = 138543618;
      *(v81 + 4) = v78;
      *v82 = v78;
      *(v81 + 12) = 2082;
      *&v364 = a1;
      v84 = sub_20B5F66D0();
      v85 = v78;
      v86 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v84);
      v88 = sub_20B51E694(v86, v87, &v369);

      *(v81 + 14) = v88;
      _os_log_impl(&dword_20B517000, v79, v80, "Attempted to configure %{public}@ with item: %{public}s", v81, 0x16u);
      sub_20B520158(v82, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v82, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x20F2F6A40](v83, -1, -1);
      MEMORY[0x20F2F6A40](v81, -1, -1);
    }

    v322[1](v8, v323);
    v4 = v330;
    return [v4 setNeedsLayout];
  }

  v286 = v14;
  v287 = v10;
  v288 = v9;
  v46 = v42;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  v48 = swift_projectBox();
  v49 = v48 + *(v47 + 64);
  v50 = *v49;
  v51 = *(v49 + 8);
  v53 = *(v49 + 16);
  v52 = *(v49 + 24);
  v323 = v37;
  v54 = *(v49 + 32);
  v55 = *(v49 + 40);
  v295 = v41;
  v296 = v46;
  v56 = *(v41 + 16);
  v57 = v52;
  v56(v331, v48, v46);
  v58 = *&v4[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_programContentView];
  v299 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_titleLabel;
  v59 = *&v58[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_titleLabel];
  v64 = v50;
  v322 = v51;
  v300 = v53;
  v294 = v57;

  v297 = v54;
  v60 = v323;

  v292 = v55;
  v61 = v58;

  v62 = &off_277D9A000;
  v293 = v64;
  [v59 setAttributedText_];
  v63 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentLayout;
  LODWORD(v64) = v58[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentLayout];
  v301 = v58;
  if (v64 == 7)
  {
    goto LABEL_57;
  }

  v65 = [v58 traitCollection];
  LODWORD(v279) = v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_isMinFontPreferred];
  v66 = v61[v63];
  v2 = 0.0;
  v3 = 0.0;
  if (v66 != 7)
  {
    if (v66 > 1)
    {
      [v61 bounds];
      v67 = CGRectGetWidth(v392);
    }

    else
    {
      v67 = *&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentContainerSize];
    }

    v2 = v67 * *&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_styleProvider + 48];
    [v61 bounds];
    v3 = CGRectGetHeight(v393);
  }

  v89 = v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_supportsScrolling];
  if (qword_27C760B28 != -1)
  {
    goto LABEL_151;
  }

  while (1)
  {
    v352[1] = xmmword_27C76D998;
    v352[2] = unk_27C76D9A8;
    v349 = xmmword_27C76D958;
    v350 = *&qword_27C76D968;
    v351 = xmmword_27C76D978;
    v352[0] = *&qword_27C76D988;
    v355 = xmmword_27C76D9D8;
    v356 = *&qword_27C76D9E8;
    v353 = xmmword_27C76D9B8;
    v354 = unk_27C76D9C8;
    v357[2] = xmmword_27C76DA18;
    v358 = unk_27C76DA28;
    v357[0] = xmmword_27C76D9F8;
    v357[1] = unk_27C76DA08;
    v359 = xmmword_27C76DA38;
    v360 = unk_27C76DA48;
    v362[2] = unk_27C76DA88;
    v363 = xmmword_27C76DA98;
    v362[0] = *&qword_27C76DA68;
    v362[1] = *(&xmmword_27C76DA70 + 8);
    v361 = xmmword_27C76DA58;
    v364 = unk_27C76DAA8;
    v365 = xmmword_27C76DAB8;
    v367[1] = *&qword_27C76DAE8;
    v367[2] = xmmword_27C76DAF8;
    v366 = *&qword_27C76DAC8;
    v367[0] = xmmword_27C76DAD8;
    v370 = *&qword_27C76DB28;
    v371 = xmmword_27C76DB38;
    v368 = *&qword_27C76DB08;
    v369 = xmmword_27C76DB18;
    v372[2] = xmmword_27C76DB68;
    v373 = xmmword_27C76DB78;
    v372[0] = *&qword_27C76DB48;
    v372[1] = *(&xmmword_27C76DB50 + 8);
    v280 = v63;
    LODWORD(v278) = v64;
    *&v298 = v65;
    if (v64 <= 2)
    {
      if (v64)
      {
        if (v64 == 1)
        {
          v290 = *(v367 + 8);
          v291 = *(&v367[1] + 8);
          v289 = v368;
          v284 = *(&v367[2] + 1);
          v285 = *(&v368 + 1);
          v282 = v366;
          v283 = *&v367[0];
          v90 = BYTE8(v366);
          LODWORD(v281) = BYTE13(v365);
          v91 = DWORD2(v365);
          v92 = BYTE12(v365);
          v93 = v365;
          v94 = *(&v364 + 1);
          v95 = v364;
          v96 = &v364;
          goto LABEL_44;
        }

LABEL_27:
        v290 = *(v357 + 8);
        v291 = *(&v357[1] + 8);
        v289 = v358;
        v284 = *(&v357[2] + 1);
        v285 = *(&v358 + 1);
        v282 = v356;
        v283 = *&v357[0];
        v90 = BYTE8(v356);
        LODWORD(v281) = BYTE13(v355);
        v91 = DWORD2(v355);
        v92 = BYTE12(v355);
        v93 = v355;
        v94 = *(&v354 + 1);
        v95 = v354;
        v96 = &v354;
        goto LABEL_44;
      }
    }

    else
    {
      if (v64 <= 4)
      {
        if (v64 != 3)
        {
          v290 = *(v352 + 8);
          v291 = *(&v352[1] + 8);
          v289 = v353;
          v284 = *(&v352[2] + 1);
          v285 = *(&v353 + 1);
          v282 = v351;
          v283 = *&v352[0];
          v90 = BYTE8(v351);
          LODWORD(v281) = BYTE13(v350);
          v91 = DWORD2(v350);
          v92 = BYTE12(v350);
          v93 = v350;
          v94 = *(&v349 + 1);
          v95 = v349;
          v96 = &v349;
          goto LABEL_44;
        }

LABEL_26:
        v290 = *(v372 + 8);
        v291 = *(&v372[1] + 8);
        v289 = v373;
        v284 = *(&v372[2] + 1);
        v285 = *(&v373 + 1);
        v282 = v371;
        v283 = *&v372[0];
        v90 = BYTE8(v371);
        LODWORD(v281) = BYTE13(v370);
        v91 = DWORD2(v370);
        v92 = BYTE12(v370);
        v93 = v370;
        v94 = *(&v369 + 1);
        v95 = v369;
        v96 = &v369;
        goto LABEL_44;
      }

      if (v64 != 5)
      {
        goto LABEL_27;
      }

      if (v89)
      {
        goto LABEL_26;
      }
    }

    v290 = *(v362 + 8);
    v291 = *(&v362[1] + 8);
    v289 = v363;
    v284 = *(&v362[2] + 1);
    v285 = *(&v363 + 1);
    v282 = v361;
    v283 = *&v362[0];
    v90 = BYTE8(v361);
    LODWORD(v281) = BYTE13(v360);
    v91 = DWORD2(v360);
    v92 = BYTE12(v360);
    v93 = v360;
    v94 = *(&v359 + 1);
    v95 = v359;
    v96 = &v359;
LABEL_44:
    sub_20B7B07E8(v96, &v335);
    LOBYTE(v332) = v92;
    v334 = v90;
    v383 = v95;
    v384 = v94;
    v385 = v93;
    v386 = v91;
    v387 = v92;
    v388 = v281;
    v389 = v282;
    v390 = v90;
    v391 = v283;
    v335 = v95;
    v336 = v94;
    v337 = v93;
    v338 = v91;
    v339 = v92;
    v340 = v281;
    v341 = v282;
    v342 = v90;
    v343 = v283;
    v344 = v290;
    v345 = v291;
    v346 = v284;
    v347 = v289;
    v348 = v285;
    v105 = sub_20B7C6A74(v298);
    sub_20B7B0844(&v335);
    v61 = v301;
    v106 = [*&v299[v301] attributedText];
    if (v106)
    {
      v107 = v106;
      v108 = sub_20B914D2C(v105, 4, v2, v3);

      if (v279 & 1 | !v108)
      {
        v109 = v279 & v108;
        goto LABEL_49;
      }
    }

    else
    {

      if (v279)
      {
        v109 = 1;
LABEL_49:
        v110 = v298;
        v111 = sub_20BE8BF3C(&unk_282286FC0);
        sub_20B7ACB68(v278, v110, 0);
        v112 = sub_20BE8BF3C(&unk_282286F98);
        if (*(v111 + 16) <= *(v112 + 16) >> 3)
        {
          v374 = v112;
          sub_20B6CE640(v111);

          v113 = v374;
          if (!v109)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v113 = sub_20B6CFA4C(v111, v112);

          if (!v109)
          {
LABEL_51:
            v114 = 1;
            v115 = v278;
LABEL_55:
            sub_20B7ACB68(v115, v110, v114 & 1);

            goto LABEL_56;
          }
        }

        v115 = v278;
        v114 = sub_20B7AC284(v113, v278, v110);
        goto LABEL_55;
      }
    }

LABEL_56:
    v63 = v280;
LABEL_57:
    v116 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_subtitleLabel;
    [*&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_subtitleLabel] v62[196]];
    v117 = v61[v63];
    if (v117 != 7)
    {
      v118 = [v61 traitCollection];
      LODWORD(v282) = v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_isMinFontPreferred];
      v119 = v61[v63];
      v2 = 0.0;
      v3 = 0.0;
      if (v119 != 7)
      {
        if (v119 > 1)
        {
          [v61 bounds];
          v120 = CGRectGetWidth(v396);
        }

        else
        {
          v120 = *&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentContainerSize];
        }

        v2 = v120 * *&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_styleProvider + 48];
        [v61 bounds];
        v3 = CGRectGetHeight(v397);
      }

      v121 = v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_supportsScrolling];
      if (qword_27C760B20 != -1)
      {
        swift_once();
      }

      v352[1] = xmmword_27C76D768;
      v352[2] = unk_27C76D778;
      v349 = xmmword_27C76D728;
      v350 = *&qword_27C76D738;
      v351 = xmmword_27C76D748;
      v352[0] = *&qword_27C76D758;
      v355 = xmmword_27C76D7A8;
      v356 = *&qword_27C76D7B8;
      v353 = xmmword_27C76D788;
      v354 = unk_27C76D798;
      v357[2] = xmmword_27C76D7E8;
      v358 = unk_27C76D7F8;
      v357[0] = xmmword_27C76D7C8;
      v357[1] = unk_27C76D7D8;
      v359 = xmmword_27C76D808;
      v360 = unk_27C76D818;
      v362[1] = *(&xmmword_27C76D840 + 8);
      v362[2] = unk_27C76D858;
      v361 = xmmword_27C76D828;
      v362[0] = *&qword_27C76D838;
      v365 = xmmword_27C76D888;
      v366 = *&qword_27C76D898;
      v363 = xmmword_27C76D868;
      v364 = unk_27C76D878;
      v367[2] = xmmword_27C76D8C8;
      v368 = *&qword_27C76D8D8;
      v367[0] = xmmword_27C76D8A8;
      v367[1] = *&qword_27C76D8B8;
      v369 = xmmword_27C76D8E8;
      v370 = *&qword_27C76D8F8;
      v372[2] = xmmword_27C76D938;
      v373 = xmmword_27C76D948;
      v372[0] = *&qword_27C76D918;
      v372[1] = *(&xmmword_27C76D920 + 8);
      v371 = xmmword_27C76D908;
      v299 = v118;
      v281 = v116;
      if (v117 <= 2)
      {
        if (!v117)
        {
LABEL_76:
          v298 = *(&v362[1] + 8);
          v291 = *(v362 + 8);
          v289 = *(&v363 + 1);
          *&v290 = v363;
          v284 = *&v362[0];
          v285 = *(&v362[2] + 1);
          v283 = v361;
          v122 = BYTE8(v361);
          v123 = BYTE13(v360);
          v124 = DWORD2(v360);
          v125 = BYTE12(v360);
          v126 = v360;
          v127 = *(&v359 + 1);
          v128 = v359;
          v129 = &v359;
          goto LABEL_77;
        }

        if (v117 == 1)
        {
          v298 = *(&v367[1] + 8);
          v291 = *(v367 + 8);
          v289 = *(&v368 + 1);
          *&v290 = v368;
          v284 = *&v367[0];
          v285 = *(&v367[2] + 1);
          v283 = v366;
          v122 = BYTE8(v366);
          v123 = BYTE13(v365);
          v124 = DWORD2(v365);
          v125 = BYTE12(v365);
          v126 = v365;
          v127 = *(&v364 + 1);
          v128 = v364;
          v129 = &v364;
          goto LABEL_77;
        }
      }

      else
      {
        if (v117 <= 4)
        {
          if (v117 != 3)
          {
            v298 = *(&v352[1] + 8);
            v291 = *(v352 + 8);
            v289 = *(&v353 + 1);
            *&v290 = v353;
            v284 = *&v352[0];
            v285 = *(&v352[2] + 1);
            v283 = v351;
            v122 = BYTE8(v351);
            v123 = BYTE13(v350);
            v124 = DWORD2(v350);
            v125 = BYTE12(v350);
            v126 = v350;
            v127 = *(&v349 + 1);
            v128 = v349;
            v129 = &v349;
            goto LABEL_77;
          }

LABEL_74:
          v298 = *(&v372[1] + 8);
          v291 = *(v372 + 8);
          v289 = *(&v373 + 1);
          *&v290 = v373;
          v284 = *&v372[0];
          v285 = *(&v372[2] + 1);
          v283 = v371;
          v122 = BYTE8(v371);
          v123 = BYTE13(v370);
          v124 = DWORD2(v370);
          v125 = BYTE12(v370);
          v126 = v370;
          v127 = *(&v369 + 1);
          v128 = v369;
          v129 = &v369;
LABEL_77:
          sub_20B7B07E8(v129, &v335);
          v334 = v125;
          v333 = v122;
          v374 = v128;
          v375 = v127;
          v376 = v126;
          v377 = v124;
          v378 = v125;
          v379 = v123;
          v380 = v283;
          v381 = v122;
          v382 = v284;
          v335 = v128;
          v336 = v127;
          v337 = v126;
          v338 = v124;
          v339 = v125;
          v340 = v123;
          v341 = v283;
          v342 = v122;
          v343 = v284;
          v344 = v291;
          v345 = v298;
          v346 = v285;
          v347 = v290;
          v348 = v289;
          v130 = v299;
          v131 = sub_20B7C6A74(v299);
          sub_20B7B0844(&v335);
          v61 = v301;
          v132 = [*&v301[v281] attributedText];
          if (v132)
          {
            v133 = v132;
            v134 = sub_20B914D2C(v131, 3, v2, v3);

            v62 = &off_277D9A000;
            if (!(v282 & 1 | !v134))
            {
              goto LABEL_85;
            }

            v135 = v282 & v134;
          }

          else
          {

            v62 = &off_277D9A000;
            if ((v282 & 1) == 0)
            {
LABEL_85:

              v60 = v323;
              goto LABEL_89;
            }

            v135 = 1;
          }

          v136 = sub_20BE8BF3C(&unk_282286FE8);
          sub_20B7ACB68(v117, v299, 0);
          v137 = sub_20BE8BF3C(&unk_282286F98);
          if (*(v136 + 16) <= *(v137 + 16) >> 3)
          {
            v332 = v137;
            sub_20B6CE640(v136);

            v138 = v332;
            if (v135)
            {
              goto LABEL_87;
            }

LABEL_84:
            v139 = 1;
            v140 = v299;
          }

          else
          {
            v138 = sub_20B6CFA4C(v136, v137);

            if (!v135)
            {
              goto LABEL_84;
            }

LABEL_87:
            v140 = v299;
            v139 = sub_20B7AC284(v138, v117, v299);
          }

          sub_20B7ACB68(v117, v140, v139 & 1);

          v60 = v323;
          goto LABEL_89;
        }

        if (v117 == 5)
        {
          if (v121)
          {
            goto LABEL_74;
          }

          goto LABEL_76;
        }
      }

      v298 = *(&v357[1] + 8);
      v291 = *(v357 + 8);
      v289 = *(&v358 + 1);
      *&v290 = v358;
      v284 = *&v357[0];
      v285 = *(&v357[2] + 1);
      v283 = v356;
      v122 = BYTE8(v356);
      v123 = BYTE13(v355);
      v124 = DWORD2(v355);
      v125 = BYTE12(v355);
      v126 = v355;
      v127 = *(&v354 + 1);
      v128 = v354;
      v129 = &v354;
      goto LABEL_77;
    }

LABEL_89:
    [*&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_footnoteLabel] v62[196]];
    sub_20C133F04();
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_retain_n();
    *&v291 = sub_20C138054();
    v299 = v141;
    sub_20C134E34();
    v64 = v328;
    sub_20C136CB4();
    *&v290 = sub_20C136CC4();
    *&v298 = v142;
    sub_20B51C88C(0, &qword_281100530);
    v143 = sub_20C13D374();
    v145 = v324;
    v144 = v325;
    *v324 = v143;
    v63 = v330;
    (*(v144 + 104))(v145, *MEMORY[0x277D85200], v330);
    v89 = sub_20C13C584();
    v146 = *(v144 + 8);
    v65 = (v144 + 8);
    v146(v145, v63);
    if (v89)
    {
      break;
    }

    __break(1u);
LABEL_151:
    swift_once();
  }

  v148 = *&v4[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView];
  v147 = *&v4[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  [v148 setContentMode_];
  if (sub_20BA66C54(v64, v148, v147, 0))
  {
    v325 = swift_allocObject();
    v330 = v4;
    swift_unknownObjectWeakInit();
    v289 = v62;
    v150 = v326;
    v151 = v319;
    v152 = v64;
    v153 = v327;
    v280 = *(v326 + 16);
    v281 = v326 + 16;
    v280(v319, v152, v327);
    v154 = *(v150 + 80);
    v155 = (v154 + 24) & ~v154;
    v277 = v318 + 7;
    v156 = (v318 + 7 + v155) & 0xFFFFFFFFFFFFFFF8;
    v284 = ObjectType;
    v285 = v148;
    v157 = (v156 + 23) & 0xFFFFFFFFFFFFFFF8;
    v324 = v147;
    v158 = (v157 + 23) & 0xFFFFFFFFFFFFFFF8;
    v282 = v154;
    v283 = (v158 + 15) & 0xFFFFFFFFFFFFFFF8;
    v159 = (v158 + 31) & 0xFFFFFFFFFFFFFFF8;
    v160 = swift_allocObject();
    *(v160 + 16) = v325;
    v278 = *(v150 + 32);
    v279 = v150 + 32;
    v278(v160 + v155, v151, v153);
    v161 = (v160 + v156);
    v162 = v298;
    *v161 = v290;
    v161[1] = v162;
    v163 = (v160 + v157);
    v164 = v299;
    *v163 = v291;
    v163[1] = v164;
    *(v160 + v158) = 2;
    v165 = v324;
    v166 = v160 + v283;
    *v166 = MEMORY[0x277D84F90];
    *(v166 + 8) = 0;
    v167 = (v160 + v159);
    v168 = v285;
    v169 = v289;
    *v167 = sub_20BBCAE14;
    v167[1] = v169;
    v170 = *(v165 + 19);

    v171 = v284;

    v170(sub_20BBCAE1C, v160, v171, v165);

    [v168 bounds];
    if (v172 <= 0.0 || (v174 = v173, v173 <= 0.0))
    {

      v4 = v330;
      v196 = v321;
      v64 = v328;
      v60 = v323;
LABEL_97:
      v197 = v327;
    }

    else
    {
      v175 = v172;
      v283 = ~v282;
      (*(v165 + 15))(0, v171, v165);
      v176 = v309;
      v178 = v327;
      v177 = v328;
      v179 = v280;
      v280(v309, v328, v327);
      (*(v326 + 56))(v176, 0, 1, v178);
      (*(v165 + 2))(v176, v171, v165);
      sub_20B51C88C(0, &qword_27C762070);
      sub_20C137BC4();
      v180 = sub_20C13D5A4();
      [v168 setBackgroundColor_];

      (*(v165 + 22))(COERCE_DOUBLE(*&v175), COERCE_DOUBLE(*&v174), 0, v171, v165);
      v325 = swift_allocObject();
      v181 = v330;
      swift_unknownObjectWeakInit();
      v182 = v319;
      v179(v319, v177, v178);
      v183 = (v282 + 16) & v283;
      v184 = (v277 + v183) & 0xFFFFFFFFFFFFFFF8;
      v185 = (v184 + 15) & 0xFFFFFFFFFFFFFFF8;
      v186 = swift_allocObject();
      v187 = v186 + v183;
      v4 = v181;
      v278(v187, v182, v178);
      *(v186 + v184) = v325;
      v188 = (v186 + v185);
      *v188 = v175;
      v188[1] = v174;
      v325 = v186;
      v189 = (v186 + ((v185 + 23) & 0xFFFFFFFFFFFFFFF8));
      v190 = v280;
      v191 = v289;
      *v189 = sub_20BBCAE14;
      v189[1] = v191;
      v190(v182, v328, v178);
      (*(v310 + 104))(v312, *MEMORY[0x277D542A8], v311);

      v192 = v315;
      sub_20C138A54();
      v193 = v313;
      sub_20B5F1938(v192, v313);
      v194 = v316;
      v195 = v317;
      if ((*(v316 + 48))(v193, 1) == 1)
      {
        sub_20B520158(v193, &unk_27C766670);
        sub_20BA1D9C8();
        sub_20BBC8048(v289);

        (*(v307 + 8))(v192, v308);
        v196 = v321;
        v64 = v328;
        v60 = v323;
        goto LABEL_97;
      }

      v324 = *(v194 + 32);
      (v324)(v314, v193, v195);
      v245 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v190(v182, v328, v327);
      v246 = (v282 + 40) & v283;
      v247 = v246 + v318;
      v248 = (v246 + v318) & 0xFFFFFFFFFFFFFFF8;
      v249 = swift_allocObject();
      *(v249 + 2) = v245;
      v249[3] = v175;
      v249[4] = v174;
      v278(v249 + v246, v182, v327);
      *(v249 + v247) = 0;
      v250 = v249 + v248;
      v251 = v289;
      *(v250 + 1) = sub_20BBCAE14;
      *(v250 + 2) = v251;
      v252 = swift_allocObject();
      *(v252 + 16) = sub_20BBCAFB0;
      *(v252 + 24) = v249;
      v253 = v316;
      v254 = v317;
      v255 = v303;
      (*(v316 + 16))(v303, v314, v317);
      v256 = (*(v253 + 80) + 16) & ~*(v253 + 80);
      v257 = (v302 + v256 + 7) & 0xFFFFFFFFFFFFFFF8;
      v258 = swift_allocObject();
      (v324)(v258 + v256, v255, v254);
      v259 = (v258 + v257);
      *v259 = sub_20B5F67A4;
      v259[1] = v252;

      v260 = v286;
      sub_20C137C94();
      v261 = swift_allocObject();
      v262 = v325;
      *(v261 + 16) = sub_20BBCAEF4;
      *(v261 + 24) = v262;
      v263 = swift_allocObject();
      *(v263 + 16) = sub_20B5F67D4;
      *(v263 + 24) = v261;
      v265 = v287;
      v264 = v288;
      v266 = v305;
      (*(v287 + 16))(v305, v260, v288);
      v267 = (*(v265 + 80) + 16) & ~*(v265 + 80);
      v268 = (v304 + v267 + 7) & 0xFFFFFFFFFFFFFFF8;
      v269 = swift_allocObject();
      (*(v265 + 32))(v269 + v267, v266, v264);
      v270 = (v269 + v268);
      *v270 = sub_20B5DF204;
      v270[1] = v263;

      v271 = v306;
      sub_20C137C94();
      v272 = *(v265 + 8);
      v272(v260, v264);
      v273 = sub_20C137CB4();
      v274 = swift_allocObject();
      *(v274 + 16) = 0;
      *(v274 + 24) = 0;
      v273(sub_20B52347C, v274);

      v272(v271, v264);
      v275 = v327;
      v4 = v330;
      (*(v316 + 8))(v314, v317);
      (*(v307 + 8))(v315, v308);
      v197 = v275;
      v196 = v321;
      v64 = v328;
      v60 = v323;
    }
  }

  else
  {

    v197 = v327;
    v196 = v321;
  }

  (*(v326 + 8))(v64, v197);
  (*(v320 + 8))(v60, v196);

  sub_20B62A2AC(v329);

  v198 = v331;
  v199 = sub_20C133E54();
  if (v200)
  {
    v201 = v199;
    v202 = v200;
    v203 = v301;
    [*&v301[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_recencyIconView] setHidden_];
    sub_20BEC1388(v201, v202);
  }

  else
  {
    v203 = v301;
    [*&v301[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_recencyIconView] setHidden_];
  }

  v204 = v293;
  v205 = sub_20C133F74();
  sub_20BEC0F64(v205);

  sub_20B86E3F4(v203);

  (*(v295 + 8))(v198, v296);
  return [v4 setNeedsLayout];
}

void sub_20BBCAE1C()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA3A9E4(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BBCAEF4(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63000(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BBCAFB0(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2708(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

double sub_20BBCB06C(void *a1)
{
  [objc_msgSend(a1 container)];
  v3 = v2;
  swift_unknownObjectRelease();
  v4 = [a1 traitCollection];
  if (v3 >= 350.0)
  {
    v7 = v4;
    [v4 horizontalSizeClass];
    sub_20C1380F4();
    v8 = sub_20C138104();
    v6 = 1;
    v9 = sub_20C138104();

    if (v8 == v9)
    {
      v10 = sub_20BDF9B24(v3);
      v6 = qword_20C171DB8[v10];
      if ((v10 & 0xFE) != 0)
      {
        v5 = 0.5625;
      }

      else
      {
        v5 = 1.25;
      }
    }

    else
    {
      v5 = 1.25;
    }
  }

  else
  {

    v5 = 1.25;
    v6 = 1;
  }

  sub_20BCD805C(a1, 0);
  v12 = v11;
  v14 = v13;
  sub_20BCD81F8(a1, 0);
  v15 = v12 + v14;
  v17 = v16 * (v6 - 1);
  [objc_msgSend(a1 container)];
  v19 = v18;
  swift_unknownObjectRelease();
  return v5 * ((v19 - v15 - v17) / v6);
}

void sub_20BBCB1F8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_currentContainerSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_currentLayout) = 7;
  v2 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView);
  v5 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *v4 = v5;
  v4[1] = &off_2822B63E8;
  v6 = OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_vibrantShadowView;
  v7 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_oldWidth) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BBCB380()
{
  sub_20B583E6C(v0 + 16);

  v1 = OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_metricPageCategory;
  v2 = sub_20C1352F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_metricPage;
  v4 = sub_20C1333A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_archivedSessionClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_assetClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_configurationClient);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_subscriptionCache);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_upNextQueueClient);

  sub_20B58CFC4(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_configuration);

  return v0;
}

uint64_t sub_20BBCB558()
{
  sub_20BBCB380();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditorialGalleryDataProvider()
{
  result = qword_27C76BA70;
  if (!qword_27C76BA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BBCB604()
{
  sub_20C1352F4();
  if (v0 <= 0x3F)
  {
    sub_20C1333A4();
    if (v1 <= 0x3F)
    {
      sub_20B524ACC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20BBCB78C()
{
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_activationState) = 1;
    sub_20BBCB89C();
    swift_getObjectType();
    sub_20C13AEC4();
    swift_allocObject();
    swift_weakInit();

    sub_20C13A7A4();

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  return result;
}

uint64_t sub_20BBCB89C()
{
  v1 = v0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771DA0);
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v35 - v9;
  MEMORY[0x28223BE20](v10);
  v42 = &v35 - v11;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_catalogClient), *(v0 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_catalogClient + 24));
  v36 = v6;
  sub_20C13A064();
  v12 = *(v0 + 56);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20BBCD790;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B8FD76C;
  *(v14 + 24) = v13;
  v15 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v37;
  (*(v2 + 16))(v15, v6, v37);
  v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v18 = (v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v2 + 32))(v19 + v17, v15, v16);
  v20 = (v19 + v18);
  *v20 = sub_20B63EED8;
  v20[1] = v14;

  v21 = v38;
  sub_20C137C94();
  (*(v2 + 8))(v36, v16);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20BBCD794;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20B5F67D4;
  *(v23 + 24) = v22;
  v24 = v39;
  v25 = v40;
  v26 = v41;
  (*(v39 + 16))(v40, v21, v41);
  v27 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v28 = swift_allocObject();
  (*(v24 + 32))(v28 + v27, v25, v26);
  v29 = (v28 + ((v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = sub_20B5DF204;
  v29[1] = v23;

  v30 = v42;
  sub_20C137C94();
  v31 = *(v24 + 8);
  v31(v21, v26);
  v32 = sub_20C137CB4();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v32(sub_20B52347C, v33);

  return (v31)(v30, v26);
}

uint64_t sub_20BBCBD7C()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "[EditorialGalleryDataProvider] archived sessions updated, refreshing gallery", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BBCB89C();
  }

  return result;
}

uint64_t sub_20BBCBEF0(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v14(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    sub_20BB5D394((v15 > 1), v8, 1);
    v38 = v87[0];
    goto LABEL_6;
  }

  sub_20C13B534();
  v16 = a1;
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v77 = v4;
    v21 = v20;
    v90[0] = v20;
    *v19 = 136446210;
    swift_getErrorValue();
    v22 = MEMORY[0x20F2F5850](v78, v79);
    v24 = sub_20B51E694(v22, v23, v90);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20B517000, v17, v18, "EditorialGalleryDataProvider failed to fetch remote content with %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x20F2F6A40](v21, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v5 + 8))(v7, v77);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for LoadingErrorShelf();
  swift_allocObject();

  v11 = sub_20BEFE8F4(v25, 0, 0);

  v26 = v2[5];
  v76 = v2[4];
  v77 = OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_page;
  v27 = *(v2 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_page);
  v28 = *(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v90);
  v75 = v26;

  v73 = v28;
  v72 = sub_20C1380F4();
  v13 = type metadata accessor for MetricLocationStore();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F98];
  *(v29 + 16) = MEMORY[0x277D84F90];
  *(v29 + 24) = v31;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v74 = v71;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = *v35;
  v4 = type metadata accessor for CatalogPageImpressionTracker();
  v89[3] = v4;
  v7 = sub_20B63EE48();
  v89[4] = v7;
  v89[0] = v37;
  v88[3] = v13;
  v88[4] = &off_2822B6968;
  v88[0] = v29;
  v87[0] = v30;
  sub_20BB5D394(0, 1, 0);
  v38 = v87[0];
  v5 = *(v87[0] + 16);
  v15 = *(v87[0] + 24);
  v8 = v5 + 1;
  if (v5 >= v15 >> 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  *(v38 + 16) = v8;
  v39 = v38 + 24 * v5;
  *(v39 + 32) = v11;
  *(v39 + 40) = &off_2822F4EF0;
  *(v39 + 48) = 0;
  sub_20B51CC64(v89, v87);
  sub_20B51CC64(v88, v86);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v87, v87[3]);
  v71[0] = v71;
  v41 = MEMORY[0x28223BE20](v40);
  v71[1] = v11;
  v43 = (v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v86, v86[3]);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = *v43;
  v51 = *v48;
  v84 = v4;
  v85 = v7;
  v83[0] = v50;
  v81 = v13;
  v82 = &off_2822B6968;
  v80[0] = v51;
  v52 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (v71 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56, v54);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v71 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = sub_20BE3AA74(v76, v75, v38, v72, v73, *v56, *v61, 2, v52);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  v64 = v77;
  v65 = *(v2 + v77);
  *(v2 + v77) = v63;

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v66 = v2[3];
  ObjectType = swift_getObjectType();
  v91 = type metadata accessor for EditorialGalleryDataProvider();
  v92 = &off_2822D2AD0;
  v90[0] = v2;
  v68 = *(v2 + v64);

  v69 = v68;
  sub_20B76FFF8(v90, v69, ObjectType, v66);

  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(v90);
}

uint64_t sub_20BBCC7B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BBCC9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_configuration;
  swift_beginAccess();
  return sub_20B58C2DC(v1 + v3, a1);
}

uint64_t sub_20BBCCA34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v93 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v15 - 8);
  v90 = v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = v81 - v18;
  v89 = sub_20C1333A4();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v20 - 8);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v21 = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_bookmarks) = v21;
  *(v5 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_playlists) = v21;
  *(v5 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_resumableSessions) = v21;
  *(v5 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_configuration;
  v23 = sub_20C134104();
  (*(*(v23 - 8) + 56))(v6 + v22, 1, 1, v23);
  *(v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_activationState) = 0;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a2;
  *(v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(&v104, v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(&v104, v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v104, v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v104, v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v104, v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_eventHub) = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v104, v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v104, v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v104, v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_upNextQueueClient);
  type metadata accessor for EditorialGalleryShelf();
  swift_allocObject();

  v84 = a3;
  v85 = a4;
  v25 = sub_20BDCAA18(v24, a2, a3, a4);

  *(v6 + 56) = v25;

  v83 = sub_20C1380F4();
  v26 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v82 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v26 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v27 = sub_20C13C724();
  v28 = type metadata accessor for CatalogPageImpressionTracker();
  v29 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v30 = MEMORY[0x277D221C0];
  v29[2] = sub_20C13C6D4();
  v29[3] = v27;
  v29[4] = v30;
  v105 = v28;
  v31 = sub_20B63EE48();
  v106 = v31;
  *&v104 = v29;
  v32 = type metadata accessor for MetricLocationStore();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F90];
  *(v33 + 16) = MEMORY[0x277D84F90];
  *(v33 + 24) = v34;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v28);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = (v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = *v39;
  v103[3] = v28;
  v103[4] = v31;
  v103[0] = v41;
  v102[3] = v32;
  v102[4] = &off_2822B6968;
  v102[0] = v33;
  v101[0] = v35;
  sub_20BB5D394(0, 1, 0);
  v42 = v101[0];
  v44 = *(v101[0] + 16);
  v43 = *(v101[0] + 24);
  if (v44 >= v43 >> 1)
  {
    sub_20BB5D394((v43 > 1), v44 + 1, 1);
    v42 = v101[0];
  }

  *(v42 + 16) = v44 + 1;
  v45 = v42 + 24 * v44;
  *(v45 + 32) = v25;
  *(v45 + 40) = &off_2822E7080;
  *(v45 + 48) = 0;
  sub_20B51CC64(v103, v101);
  sub_20B51CC64(v102, v100);
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v101, v101[3]);
  v81[1] = v81;
  v47 = MEMORY[0x28223BE20](v46);
  v49 = (v81 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49, v47);
  v51 = __swift_mutable_project_boxed_opaque_existential_1(v100, v100[3]);
  v52 = MEMORY[0x28223BE20](v51);
  v54 = (v81 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54, v52);
  v56 = *v49;
  v57 = *v54;
  v98 = v28;
  v99 = v31;
  v97[0] = v56;
  v95 = v32;
  v96 = &off_2822B6968;
  v94[0] = v57;
  v58 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v97, v98);
  v60 = MEMORY[0x28223BE20](v59);
  v62 = (v81 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62, v60);
  v64 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  v65 = MEMORY[0x28223BE20](v64);
  v67 = (v81 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67, v65);
  v69 = sub_20BE3AA74(v84, v85, v42, v83, v82, *v62, *v67, 2, v58);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v94);
  __swift_destroy_boxed_opaque_existential_1(v97);
  __swift_destroy_boxed_opaque_existential_1(v100);
  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(&v104);
  *(v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_page) = v69;
  v70 = OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_metricPageCategory;
  v71 = sub_20C1352F4();
  v72 = *(v71 - 8);
  v73 = *(v72 + 16);
  v74 = v93;
  v73(v6 + v70, v93, v71);
  v85 = *(v69 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v75 = v88;
  v73(v88, v74, v71);
  (*(v72 + 56))(v75, 0, 1, v71);
  v76 = sub_20C132C14();
  (*(*(v76 - 8) + 56))(v90, 1, 1, v76);
  v77 = sub_20C135ED4();
  (*(*(v77 - 8) + 56))(v91, 1, 1, v77);
  v78 = sub_20C136914();
  (*(*(v78 - 8) + 56))(v92, 1, 1, v78);

  v79 = v86;
  sub_20C133384();
  (*(v87 + 32))(v6 + OBJC_IVAR____TtC9SeymourUI28EditorialGalleryDataProvider_metricPage, v79, v89);
  sub_20BE13F70();
  (*(v72 + 8))(v74, v71);
  return v6;
}